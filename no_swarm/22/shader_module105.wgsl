struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(Struct_3(Struct_2(vec2<i32>(0i, 42174i))), vec3<u32>(6768u, 55561u, 0u), vec4<u32>(53646u, 32250u, 50082u, 1u), vec4<f32>(561f, 304f, -219f, -1462f), 0u), Struct_5(Struct_3(Struct_2(vec2<i32>(0i, -28754i))), vec3<u32>(4294967295u, 6091u, 4294967295u), vec4<u32>(32240u, 41498u, 35667u, 38362u), vec4<f32>(-820f, 392f, -2019f, -308f), 1u), Struct_5(Struct_3(Struct_2(vec2<i32>(36061i, 68281i))), vec3<u32>(0u, 20111u, 42008u), vec4<u32>(50515u, 82658u, 4294967295u, 4294967295u), vec4<f32>(-676f, -211f, 941f, 589f), 1u), Struct_5(Struct_3(Struct_2(vec2<i32>(16473i, 970i))), vec3<u32>(24007u, 20024u, 4294967295u), vec4<u32>(1u, 1u, 32806u, 1u), vec4<f32>(837f, -679f, -291f, 1923f), 4294967295u), Struct_5(Struct_3(Struct_2(vec2<i32>(5716i, 37873i))), vec3<u32>(4294967295u, 31471u, 24265u), vec4<u32>(4294967295u, 13436u, 0u, 14561u), vec4<f32>(-923f, 473f, 568f, 1000f), 0u), Struct_5(Struct_3(Struct_2(vec2<i32>(-63828i, 340i))), vec3<u32>(4294967295u, 0u, 0u), vec4<u32>(16327u, 1u, 1u, 50289u), vec4<f32>(998f, -214f, -1457f, 503f), 11149u), Struct_5(Struct_3(Struct_2(vec2<i32>(-82930i, 2147483647i))), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 7046u, 24110u, 0u), vec4<f32>(-363f, -1073f, -2903f, 180f), 2976u), Struct_5(Struct_3(Struct_2(vec2<i32>(14192i, 18823i))), vec3<u32>(0u, 4294967295u, 4708u), vec4<u32>(5464u, 95373u, 4294967295u, 1u), vec4<f32>(170f, 623f, -947f, -2059f), 47706u), Struct_5(Struct_3(Struct_2(vec2<i32>(-63844i, 7028i))), vec3<u32>(4294967295u, 4294967295u, 0u), vec4<u32>(29839u, 63056u, 0u, 25019u), vec4<f32>(-1692f, 1000f, 1194f, -332f), 5997u), Struct_5(Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 2917i))), vec3<u32>(9004u, 0u, 0u), vec4<u32>(4294967295u, 1u, 52172u, 1u), vec4<f32>(516f, 350f, 1000f, -225f), 4294967295u), Struct_5(Struct_3(Struct_2(vec2<i32>(6643i, 2147483647i))), vec3<u32>(9614u, 0u, 35951u), vec4<u32>(1u, 506u, 0u, 0u), vec4<f32>(-1412f, -1245f, 356f, 909f), 1u), Struct_5(Struct_3(Struct_2(vec2<i32>(47287i, -53367i))), vec3<u32>(0u, 33159u, 108769u), vec4<u32>(40885u, 0u, 44474u, 0u), vec4<f32>(-706f, -702f, -1000f, -1391f), 38170u), Struct_5(Struct_3(Struct_2(vec2<i32>(2147483647i, -42982i))), vec3<u32>(4294967295u, 14986u, 1u), vec4<u32>(0u, 4294967295u, 30022u, 15933u), vec4<f32>(1234f, 325f, -127f, 678f), 44020u), Struct_5(Struct_3(Struct_2(vec2<i32>(-2828i, 2147483647i))), vec3<u32>(48842u, 1u, 0u), vec4<u32>(0u, 95410u, 4294967295u, 4294967295u), vec4<f32>(-174f, -593f, 389f, 1643f), 4294967295u), Struct_5(Struct_3(Struct_2(vec2<i32>(27256i, -24659i))), vec3<u32>(4294967295u, 0u, 62402u), vec4<u32>(63853u, 4294967295u, 27611u, 59152u), vec4<f32>(685f, -1283f, 374f, 888f), 15801u), Struct_5(Struct_3(Struct_2(vec2<i32>(2147483647i, 55458i))), vec3<u32>(24111u, 47894u, 42310u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<f32>(979f, 497f, -921f, 354f), 63934u), Struct_5(Struct_3(Struct_2(vec2<i32>(41712i, i32(-2147483648)))), vec3<u32>(4294967295u, 585u, 1u), vec4<u32>(97122u, 4294967295u, 3081u, 0u), vec4<f32>(-454f, -509f, 186f, 1027f), 4294967295u), Struct_5(Struct_3(Struct_2(vec2<i32>(-43614i, 18596i))), vec3<u32>(10130u, 57873u, 65644u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<f32>(-149f, 1454f, 1000f, 406f), 79814u), Struct_5(Struct_3(Struct_2(vec2<i32>(-1i, 38636i))), vec3<u32>(11705u, 3840u, 0u), vec4<u32>(1u, 4294967295u, 1u, 51750u), vec4<f32>(531f, 2168f, 134f, -1000f), 47120u), Struct_5(Struct_3(Struct_2(vec2<i32>(2147483647i, -431i))), vec3<u32>(77418u, 4386u, 4294967295u), vec4<u32>(78891u, 0u, 0u, 3876u), vec4<f32>(389f, 935f, 1000f, 629f), 1u), Struct_5(Struct_3(Struct_2(vec2<i32>(-32455i, 2147483647i))), vec3<u32>(570u, 89624u, 103666u), vec4<u32>(28339u, 4294967295u, 1u, 1u), vec4<f32>(-1894f, 1198f, 509f, -1000f), 4294967295u), Struct_5(Struct_3(Struct_2(vec2<i32>(7968i, -1i))), vec3<u32>(4294967295u, 64236u, 22978u), vec4<u32>(7449u, 24752u, 1u, 0u), vec4<f32>(142f, -450f, 795f, -1857f), 51348u), Struct_5(Struct_3(Struct_2(vec2<i32>(63802i, -11829i))), vec3<u32>(0u, 44955u, 0u), vec4<u32>(4294967295u, 20804u, 0u, 119653u), vec4<f32>(128f, -201f, 110f, -136f), 96778u), Struct_5(Struct_3(Struct_2(vec2<i32>(-1i, 10698i))), vec3<u32>(16588u, 21859u, 1u), vec4<u32>(4294967295u, 13691u, 43571u, 60147u), vec4<f32>(-1161f, -1077f, -2011f, -405f), 0u), Struct_5(Struct_3(Struct_2(vec2<i32>(-26743i, 2147483647i))), vec3<u32>(37832u, 41329u, 4294967295u), vec4<u32>(56527u, 4294967295u, 4294967295u, 4294967295u), vec4<f32>(731f, -2045f, -230f, 1607f), 22981u), Struct_5(Struct_3(Struct_2(vec2<i32>(-59803i, -17610i))), vec3<u32>(1u, 1u, 79225u), vec4<u32>(1u, 0u, 15932u, 34669u), vec4<f32>(-469f, 1000f, 504f, -980f), 4294967295u), Struct_5(Struct_3(Struct_2(vec2<i32>(11276i, 2147483647i))), vec3<u32>(18689u, 0u, 16949u), vec4<u32>(13730u, 0u, 0u, 4294967295u), vec4<f32>(-1000f, 1000f, 270f, 1083f), 4294967295u), Struct_5(Struct_3(Struct_2(vec2<i32>(54388i, 7726i))), vec3<u32>(4503u, 36504u, 11543u), vec4<u32>(130993u, 4294967295u, 4294967295u, 0u), vec4<f32>(485f, -1712f, -2435f, -1093f), 5188u), Struct_5(Struct_3(Struct_2(vec2<i32>(-6631i, -1i))), vec3<u32>(0u, 13260u, 37758u), vec4<u32>(1u, 1u, 2227u, 0u), vec4<f32>(-872f, -120f, 741f, -450f), 13319u));

var<private> global1: array<f32, 20> = array<f32, 20>(289f, 1271f, -536f, -1000f, -197f, 1555f, -178f, -1180f, -1000f, 1910f, 1013f, -940f, -929f, -421f, 1552f, -970f, -228f, -156f, -463f, 453f);

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -countOneBits(-(~2147483647i)));
}

