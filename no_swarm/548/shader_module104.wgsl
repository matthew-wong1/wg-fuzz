// {"0:0":[176,163,249,103,199,99,85,197,146,70,33,205,22,53,50,90,217,157,57,3,254,245,248,81,136,255,55,90,35,103,2,100,53,45,1,117,255,23,194,95,246,114,75,180,82,167,182,75,109,10,219,40,255,3,46,152,192,20,85,1,20,62,107,94]}
// Seed: 10792450885176160023

struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
    d: vec2<bool>,
    e: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<f32>(777f, 1000f, 241f, 235f), 67615i, 8724i, Struct_1(-1000f)), Struct_2(vec4<f32>(-190f, 159f, -1695f, -151f), 21600i, -12521i, Struct_1(-1168f)), Struct_2(vec4<f32>(-489f, 2103f, -2355f, 903f), i32(-2147483648), -19887i, Struct_1(562f)), Struct_2(vec4<f32>(755f, 176f, 851f, 1003f), i32(-2147483648), -5183i, Struct_1(1129f)), Struct_2(vec4<f32>(320f, 1307f, -1000f, 557f), 0i, 2147483647i, Struct_1(-1588f)), Struct_2(vec4<f32>(-708f, -482f, 501f, -1137f), -1i, 11290i, Struct_1(424f)), Struct_2(vec4<f32>(-157f, -1204f, -986f, -1262f), 29842i, 45366i, Struct_1(968f)), Struct_2(vec4<f32>(-1699f, -474f, -1813f, -405f), 2147483647i, -9002i, Struct_1(-1830f)), Struct_2(vec4<f32>(642f, 1000f, 702f, 905f), -13465i, -49894i, Struct_1(-928f)), Struct_2(vec4<f32>(1313f, -2022f, -603f, -1000f), -38067i, 18725i, Struct_1(-1860f)), Struct_2(vec4<f32>(653f, 1000f, 357f, 820f), -15704i, 0i, Struct_1(-1347f)), Struct_2(vec4<f32>(327f, 1000f, 986f, -796f), -26271i, 36585i, Struct_1(1450f)), Struct_2(vec4<f32>(878f, -225f, -729f, -1900f), 0i, 4242i, Struct_1(1000f)), Struct_2(vec4<f32>(-885f, -274f, -1564f, -1204f), 2147483647i, 1i, Struct_1(-686f)), Struct_2(vec4<f32>(1000f, 1021f, 489f, -1523f), -24749i, 6687i, Struct_1(875f)), Struct_2(vec4<f32>(-815f, -1263f, -655f, -994f), 30037i, 0i, Struct_1(842f)), Struct_2(vec4<f32>(-1503f, 888f, 1000f, 594f), 0i, -1i, Struct_1(1121f)), Struct_2(vec4<f32>(-938f, 618f, 1324f, -2315f), 19562i, -63556i, Struct_1(-1417f)), Struct_2(vec4<f32>(807f, -428f, -1139f, -1000f), i32(-2147483648), 1i, Struct_1(-823f)), Struct_2(vec4<f32>(1993f, -1945f, 617f, 295f), 0i, -1i, Struct_1(1000f)), Struct_2(vec4<f32>(-279f, 1027f, -1150f, -1435f), -21212i, 2147483647i, Struct_1(1188f)), Struct_2(vec4<f32>(642f, -690f, -612f, -938f), 12031i, -54763i, Struct_1(392f)), Struct_2(vec4<f32>(1134f, -1590f, 493f, -1000f), -8676i, -4081i, Struct_1(-1701f)), Struct_2(vec4<f32>(-717f, 1013f, -572f, -249f), -68845i, 0i, Struct_1(-613f)), Struct_2(vec4<f32>(-861f, 3928f, 275f, 1633f), 45820i, 0i, Struct_1(1000f)), Struct_2(vec4<f32>(1000f, 1614f, 200f, 1201f), -22774i, 34696i, Struct_1(705f)), Struct_2(vec4<f32>(-736f, 841f, -909f, 186f), 1318i, 37993i, Struct_1(-1066f)), Struct_2(vec4<f32>(-170f, -1000f, 1000f, 1017f), -25510i, 1i, Struct_1(-746f)), Struct_2(vec4<f32>(1311f, 1282f, -193f, -1882f), -1i, 38424i, Struct_1(-1865f)));

fn func_3() -> vec3<f32> {
    return vec3<f32>(max(-(-664f / -(-1299f)), -(-(279f + 1000f))), floor(ceil(-1641f)), 500f);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    let var_0 = true;
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_5(sign(func_3()), Struct_1(-(-arg_0.x) * arg_1.d.a), !any(vec2<bool>(all(vec4<bool>(arg_3.x, arg_3.x, var_0, arg_3.x)), any(vec4<bool>(var_0, true, true, arg_3.x)))));
    let var_2 = Struct_3(Struct_2(-(-arg_1.a), countOneBits(1i ^ countOneBits(-1i)), -39986i, var_1.b), global1[dot(vec3<u32>(u_input.e, firstLeadingBit(1881u) - countOneBits(u_input.b.x), abs(u_input.b.x)), ~vec3<u32>(u_input.d % 1u, u_input.b.x * 31153u, 29941u))], max(~vec4<i32>(2147483647i, u_input.a.x, u_input.c.x, -39986i), abs(vec4<i32>(1i, arg_2, 1i, u_input.a.x)) & (vec4<i32>(-1i, 0i, u_input.a.x, -62136i) & vec4<i32>(arg_2, arg_1.b, arg_2, u_input.c.x))) / ~(~(vec4<i32>(arg_1.c, arg_2, 80279i, arg_1.c) & vec4<i32>(arg_1.c, -32290i, -12238i, arg_2))));
    global0 = !(all(vec2<bool>(!false, var_0)) && (arg_3.x || !(!var_1.c)));
    return var_2.a.d.a;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec2<f32>) -> vec4<f32> {
    global1 = array<Struct_2, 29>();
    var var_0 = max(((-2423f + -912f) / arg_3.x) / arg_2.b.d.a, min(arg_3.x - exp2(func_2(arg_2.a.a.zzy, global1[u_input.d], arg_1.x, vec2<bool>(false, false))), arg_3.x / (arg_2.a.d.a + 829f)));
    let var_1 = vec4<i32>(2147483647i, arg_1.x, 53934i, ~countOneBits(2147483647i));
    var var_2 = arg_2.a;
    var var_3 = global1[1u];
    return exp2(arg_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(sign(ceil(func_1(true, vec4<i32>(u_input.a.x, -92127i, 10235i, 29280i), Struct_3(global1[u_input.d], Struct_2(vec4<f32>(1993f, -922f, 1591f, 760f), 1i, i32(-2147483648), Struct_1(872f)), vec4<i32>(u_input.c.x, -36909i, 0i, -51171i)), vec2<f32>(-186f, 576f))) + (-vec4<f32>(806f, -1282f, 942f, 643f) / vec4<f32>(-785f, -729f, -556f, 191f))), u_input.a.x ^ (u_input.a.x & u_input.a.x));
}

