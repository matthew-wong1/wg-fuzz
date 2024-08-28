// {"0:0":[93,137,82,110,51,1,23,153,211,152,253,175,178,85,181,42,158,98,118,240,11,102,190,138,189,13,152,10,246,169,59,242,183,116,118,92,242,198,176,55,122,193,81,235,180,243,203,8]}
// Seed: 7847578547046718129

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-437f, 123f, 703f, -592f), vec4<f32>(-716f, -2159f, 1024f, 939f), vec4<f32>(-353f, -229f, -1336f, 996f), vec4<f32>(201f, -1551f, -1000f, 311f), vec4<f32>(1115f, -1472f, 822f, 1000f), vec4<f32>(1621f, 2120f, 296f, 685f), vec4<f32>(-382f, -305f, 1505f, 2380f), vec4<f32>(2371f, 690f, 246f, 1302f), vec4<f32>(799f, -103f, 1398f, 441f), vec4<f32>(1275f, -958f, -905f, 1000f), vec4<f32>(-206f, -426f, 1087f, -1044f), vec4<f32>(397f, 1841f, -1000f, -462f), vec4<f32>(1698f, 1655f, 1022f, 1699f), vec4<f32>(1918f, 495f, -679f, -1544f), vec4<f32>(-388f, 316f, 656f, -449f), vec4<f32>(1635f, -1309f, -1299f, 2900f), vec4<f32>(-1000f, 2107f, 1144f, 670f), vec4<f32>(168f, 1129f, -2007f, 1000f), vec4<f32>(2657f, -1230f, 785f, 1145f), vec4<f32>(617f, 1330f, 734f, -734f), vec4<f32>(857f, 1000f, 487f, -1000f), vec4<f32>(-118f, -2495f, -1121f, -508f), vec4<f32>(-985f, 977f, 750f, -359f), vec4<f32>(-1561f, 549f, 105f, -485f), vec4<f32>(1000f, 1064f, 400f, -1005f), vec4<f32>(-200f, 1336f, -809f, -202f));

var<private> global2: Struct_2;

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = global2.c;
    global1 = array<vec4<f32>, 26>();
    let var_1 = -(-(-select(-1407f, -446f, global2.a))) * (691f / abs(step(-970f, -1032f)));
    var var_2 = -(-1000f);
    return global2.c;
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(~(~u_input.d.x));
    var var_1 = (var_0.a + ((~global2.c.a | global2.c.a) ^ var_0.a)) + ~min(~1u * u_input.c.x, 35717u);
    let var_2 = u_input.d.yxx * (vec3<u32>(0u, 0u, max(global2.c.a ^ u_input.c.x, global2.c.a)) & (vec3<u32>(func_1(u_input.c.yw).a, ~25101u, ~var_0.a) % max(u_input.d.xyx | vec3<u32>(var_0.a, 18675u, 0u), ~vec3<u32>(global2.c.a, 31708u, 11061u))));
    var var_3 = Struct_2(any(select(vec4<bool>(!true, global2.a, !true, false), !select(vec4<bool>(global2.a, global2.a, true, false), vec4<bool>(false, true, global2.a, false), vec4<bool>(global2.a, true, global2.a, true)), any(select(vec4<bool>(global2.a, true, global2.a, false), vec4<bool>(true, global2.a, global2.a, global2.a), global2.a)))), global2.b, func_1(vec2<u32>(4294967295u, ~global2.c.a) << abs(max(var_2.yz, vec2<u32>(1u, u_input.b)))));
    let var_4 = arg_0.x;
    return abs(countOneBits(22509i));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = u_input.a;
    var var_1 = 1498f;
    var var_2 = (459f / -342f) - -605f;
    let var_3 = ceil(421f) + (-(-240f) * 109f);
    var var_4 = u_input.b;
    return -27133i;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(global2.a, func_4(Struct_2(~27260i >= func_3(vec4<f32>(751f, -760f, 363f, 321f)), select(-44716i, i32(-2147483648) * u_input.a, true || true), global2.c), !(!(true | true))), Struct_1(~arg_0.a));
    global1 = array<vec4<f32>, 26>();
    global2 = var_0;
    global0 = array<vec3<bool>, 18>();
    global1 = array<vec4<f32>, 26>();
    return arg_0.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(false || !(!(!false)), u_input.a, Struct_1(abs(select(23738u, func_1(u_input.d.xw).a, !arg_1.a))));
    var_0 = Struct_2(any(arg_0), -56631i, func_1(firstTrailingBit(u_input.c.xw) % (~vec2<u32>(global2.c.a, arg_2.c.a) - ~vec2<u32>(arg_2.c.a, var_0.c.a))));
    global1 = array<vec4<f32>, 26>();
    var var_1 = ~(min(global2.b, u_input.a) + select(u_input.a * arg_1.b, ~u_input.a, arg_0.x)) >= reverseBits(min(firstLeadingBit(u_input.a), arg_1.b) / 62019i);
    var var_2 = ceil(arg_3) / (441f - floor(-min(-100f, arg_3)));
    return Struct_2(!true, reverseBits(u_input.a), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c.wz);
    var_0 = global2.c;
    let var_1 = func_5(vec3<bool>(true, global2.a, false), Struct_2(func_2(Struct_1(u_input.d.x)) >= 1u, global2.b, Struct_1(0u)), Struct_2(global2.a, dot(vec3<i32>(~global2.b, func_3(global1[u_input.c.x]), firstLeadingBit(-1i)), ~(~vec3<i32>(global2.b, global2.b, 8958i))), global2.c), -333f);
    var var_2 = global2.b;
    let var_3 = any(select(vec3<bool>(false, any(vec2<bool>(false, var_1.a)) || true, all(!vec3<bool>(global2.a, false, var_1.a))), global0[var_0.a], all(vec4<bool>(all(vec2<bool>(global2.a, var_1.a)), all(vec4<bool>(true, var_1.a, var_1.a, global2.a)), var_1.a, -1000f > -143f))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, select(u_input.d, vec4<u32>(global2.c.a / 0u, u_input.c.x, min(6456u, 0u), 4294967295u), vec4<bool>(!global2.a, var_3 || var_1.a, all(vec2<bool>(global2.a, var_1.a)), all(vec2<bool>(var_3, var_3)))) ^ u_input.c, global1[90446u], -((-1277f * -112f) - (min(-308f, 727f) / (-350f + -515f))));
}

