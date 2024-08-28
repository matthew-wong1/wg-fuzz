// {"0:0":[144,169,6,164,76,119,188,187,39,12,10,255,159,138,47,94,0,250,175,200,77,36,123,113,204,96,186,101,200,76,67,232,104,209,86,86,112,129,3,57,175,155,222,251,121,205,144,186,100,197,138,252,90,183,100,226,246,174,195,173,0,44,134,4]}
// Seed: 1826523598621832742

struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn func_1(arg_0: vec4<bool>) -> vec2<f32> {
    return -ceil(-(-vec2<f32>(237f, 704f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    global0 = func_1(!(!select(select(vec4<bool>(true, arg_0.d, arg_2.x, false), vec4<bool>(false, true, false, true), arg_2.x), !vec4<bool>(arg_0.d, arg_2.x, arg_1, arg_1), select(vec4<bool>(arg_2.x, arg_1, arg_0.d, arg_0.d), vec4<bool>(arg_2.x, true, arg_2.x, true), true)))).x;
    global0 = -(-round(712f) - (1107f * ((927f - -500f) + (1591f * 1163f))));
    var var_0 = Struct_3((u_input.c.x + abs(~u_input.a)) % ~dot(vec4<u32>(0u, u_input.a, 1u, u_input.c.x) >> vec4<u32>(u_input.e.x, u_input.a, 4294967295u, 58780u), ~vec4<u32>(u_input.a, 16529u, 1u, u_input.c.x)), vec3<u32>(0u, 1u, 1u % u_input.c.x) * abs((vec3<u32>(u_input.c.x, u_input.c.x, 1u) >> u_input.e) >> u_input.e), ~(~min(5240u - 0u, u_input.e.x << 0u)), vec4<bool>(!false, (-1406f / max(-512f, -618f)) > (step(310f, 1000f) / 2012f), !(true || arg_1) == arg_2.x, !(!arg_0.d)), true);
    let var_1 = Struct_3((u_input.a ^ 22472u) / 1u, ~var_0.b & vec3<u32>(52126u, 4294967295u, (0u % 4294967295u) % u_input.c.x), 11532u, var_0.d, (ceil(899f * -355f) * 588f) >= (-375f / 1000f));
    var var_2 = arg_0;
    return arg_0.c;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = all(vec4<bool>(!select(false, true, true && true), any(!select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), arg_0)), any(!vec4<bool>(arg_2.d, arg_2.d, arg_0, arg_0)), true));
    global0 = -(-(arg_1.x - func_1(vec4<bool>(false, var_0, false, true)).x));
    global0 = arg_1.x;
    let var_1 = Struct_3(4294967295u, max(vec3<u32>(67508u, 49362u, u_input.c.x) / min(vec3<u32>(u_input.e.x, u_input.c.x, u_input.e.x), vec3<u32>(5934u, u_input.c.x, u_input.e.x)), ~vec3<u32>(u_input.c.x, 9147u, u_input.e.x)) ^ abs(vec3<u32>(~u_input.a, 0u ^ 4294967295u, 48604u >> 4294967295u)), ~(u_input.c.x / 28812u) + abs(~(~u_input.e.x)), !vec4<bool>(arg_0, any(!vec4<bool>(arg_2.d, true, true, arg_2.d)), any(select(vec4<bool>(false, false, var_0, false), vec4<bool>(arg_2.d, arg_0, true, var_0), vec4<bool>(var_0, arg_2.d, true, arg_2.d))), !(-338f <= -365f)), firstTrailingBit(~1u + dot(vec4<u32>(61502u, 676u, 5411u, u_input.a), vec4<u32>(u_input.a, 1u, 1u, u_input.c.x))) == 1u);
    let var_2 = false;
    return arg_0 || all(var_1.d);
}

fn func_2() -> Struct_1 {
    var var_0 = 1i;
    let var_1 = vec3<bool>(firstLeadingBit(~countOneBits(u_input.e.x)) >= 14471u, true, func_4(!select(false, true, false) | !(false || true), abs(vec3<f32>(-1375f, -108f, -1000f)) / min(exp2(vec3<f32>(1000f, -497f, -511f)), vec3<f32>(-1000f, -440f, 326f) / vec3<f32>(1762f, 2678f, 1000f)), Struct_1(u_input.b.xz, (u_input.b.yww - u_input.b.xzy) % vec3<i32>(-1i, u_input.b.x, u_input.d), -func_3(Struct_1(u_input.b.zz, u_input.b.wwx, 25482i, true), false, vec3<bool>(true, false, false)), false)));
    var var_2 = func_3(Struct_1(u_input.b.xw, countOneBits(max(vec3<i32>(2147483647i, 0i, 0i), u_input.b.xyx)) * abs(u_input.b.xwx), -(-countOneBits(u_input.b.x)), any(!select(var_1.xx, vec2<bool>(var_1.x, var_1.x), var_1.zz))), any(select(select(!var_1.zy, !vec2<bool>(false, true), !vec2<bool>(false, var_1.x)), vec2<bool>(var_1.x & var_1.x, !var_1.x), true)), vec3<bool>(((314f / -253f) * 1539f) >= -1808f, false, all(var_1.xy)));
    var var_3 = Struct_2(Struct_1(u_input.b.wz, firstTrailingBit(max(~vec3<i32>(0i, u_input.b.x, u_input.b.x), -u_input.b.wzw)), -u_input.d / ~(-4580i), var_1.x), step(-(770f * -1187f), 294f));
    let var_4 = vec4<u32>(5973u, ~(~u_input.a) | 90150u, u_input.e.x, ~dot(max(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.a, 0u, 0u)), vec3<u32>(97u, 57953u, u_input.a) ^ u_input.e) / max(u_input.c.x, ~clamp(24716u, u_input.c.x, u_input.e.x)));
    return Struct_1(-((abs(vec2<i32>(u_input.d, 1050i)) - (u_input.b.zw | vec2<i32>(u_input.d, u_input.d))) % var_3.a.b.yy), reverseBits(~u_input.b.wwz), -(((u_input.d + u_input.d) >> (var_4.x % 0u)) << 17915u), var_3.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.e.zx / (u_input.c / u_input.e.xx)) & ~(~vec2<u32>(~u_input.c.x, ~u_input.a));
    var var_1 = -vec2<f32>(2236f, -337f) / min(vec2<f32>(-1573f, -382f) + -(vec2<f32>(-466f, 415f) - vec2<f32>(-157f, -1500f)), (-vec2<f32>(296f, -716f) * -vec2<f32>(1842f, 1461f)) - ((vec2<f32>(-1489f, -1000f) / vec2<f32>(1724f, -209f)) * func_1(vec4<bool>(true, true, false, true))));
    let var_2 = var_0.x;
    var var_3 = func_2();
    var_3 = Struct_1(vec2<i32>(i32(-2147483648), clamp(~var_3.a.x, var_3.c, countOneBits(u_input.b.x << u_input.a))), -(var_3.b + (u_input.b.xxw + -u_input.b.zyy)), var_3.c, any(!vec3<bool>(var_3.d, all(vec3<bool>(var_3.d, var_3.d, var_3.d)), !var_3.d)));
    var var_4 = !func_2().d;
    var_4 = false;
    var var_5 = -604f;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, var_3.b, floor(vec2<f32>((-1489f / var_1.x) / -(-1121f), -1000f - ceil(var_1.x))));
}

