
const btn=document.querySelector('#button')


btn.addEventListener('click',()=>{
    console.log('hello')
    const ele=document.createElement('div')
    ele.classList.add('alert')

    ele.innerHTML=`
    <div class="alert ">
        <span class="msg">Message Sent! Thank You for Contacting Us</span>
    </div>
    `
    setTimeout(()=>{
        ele.classList.remove('alert')
        document.body.removeChild(ele)
    },2500)
    document.body.appendChild(ele)
})
