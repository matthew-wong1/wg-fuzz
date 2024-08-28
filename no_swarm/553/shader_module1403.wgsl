// {"0:0":[139,38,131,146,2,74,64,6,206,200,44,27,186,131,225,154,34,146,245,221,129,144,30,111,247,108,249,228,240,178,220,24,177,57,96,39,248,125,99,127,138,180,37,151,32,214,140,249,118,209,71,192,76,226,26,224,143,50,201,151,146,231,212,123]}
// Seed: 13221788517556790485

struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true));

var<private> global3: bool;

var<private> global4: array<u32, 16>;

fn func_3(arg_0: u32) -> bool {
    var var_0 = u_input.b.wz << select(~(clamp(vec2<u32>(69679u, 0u), global1.b.zz, u_input.a.wz) % ~vec2<u32>(global1.b.x, 37270u)), vec2<u32>(global1.b.x, ~abs(46862u)), any(global2[~(4294967295u ^ 22745u)]));
    let var_1 = select(vec2<bool>(true, !global0.a), !vec2<bool>(true, global1.d.a), !select(select(!vec2<bool>(true, global1.c), !vec2<bool>(global1.d.a, false), global1.a.a), vec2<bool>(true, any(vec2<bool>(false, true))), !false));
    var var_2 = -abs(i32(-2147483648));
    global2 = array<vec4<bool>, 2>();
    var var_3 = abs(global1.b.x);
    return !(false && true);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(false & arg_1.e.c), vec3<u32>(4294967295u, u_input.a.x, 4294967295u), global0.a && (global1.e.x < (~1i % (2147483647i << u_input.a.x))), Struct_1(false), global1.e);
    var var_1 = Struct_2(firstTrailingBit(global1.e.x));
    let var_2 = global1.c;
    global2 = array<vec4<bool>, 2>();
    global4 = array<u32, 16>();
    return -(vec4<f32>(-1468f, -844f / -722f, -(-2215f), sign(639f)) + vec4<f32>(-701f - -652f, 1504f, -657f, sign(229f))) * abs(vec4<f32>(1193f, (-729f / -408f) * 1000f, -2005f, sign(1826f)));
}

fn func_2() -> bool {
    let var_0 = trunc(func_4(0i, Struct_4(vec4<u32>(global4[u_input.b.x], u_input.a.x, u_input.b.x, 3809u) % u_input.a, vec3<i32>(0i, 1i, u_input.c) >> (u_input.b.wwx >> u_input.b.wzy), global1.a, vec4<u32>(22305u, global1.b.x | 81251u, 4294967295u, min(u_input.a.x, global4[1u])), Struct_3(global1.a, ~u_input.b.yxx, func_3(23848u), global1.d, ~vec4<i32>(global1.e.x, 40372i, u_input.d.x, 13198i)))));
    global3 = !global0.a;
    var var_1 = u_input.b.zzz;
    let var_2 = global1.a;
    let var_3 = Struct_3(Struct_1(!true), reverseBits(firstTrailingBit(~vec3<u32>(21522u, var_1.x, var_1.x))), all(select(global2[dot(abs(vec4<u32>(global1.b.x, 4294967295u, global1.b.x, 18371u)), min(vec4<u32>(4294967295u, 84531u, 21391u, global1.b.x), u_input.b))], select(select(vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(false, global1.d.a, false, global1.a.a), vec4<bool>(true, global0.a, false, true)), vec4<bool>(false, true, var_2.a, var_2.a), global0.a), select(false, var_2.a, true) & func_3(23035u))), global1.d, vec4<i32>(-1i, u_input.c, min(-2147483647i, u_input.d.x), u_input.c) * u_input.d);
    return false;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = select(-(-max(822f, max(-407f, -1647f))), -(-1164f) + -((821f / 589f) + trunc(-1456f)), func_3(14184u));
    let var_1 = u_input.d.x;
    var var_2 = -898f == (825f - min(-func_4(global1.e.x, Struct_4(u_input.a, vec3<i32>(arg_1.x, u_input.c, arg_1.x), global1.a, vec4<u32>(arg_0.x, 1u, global4[35384u], global4[u_input.b.x]), Struct_3(global1.d, vec3<u32>(global1.b.x, 32115u, global1.b.x), arg_2, Struct_1(true), global1.e))).x, -(306f / 342f)));
    var_2 = !all(global2[dot(vec2<u32>(u_input.b.x, ~u_input.b.x), vec2<u32>(arg_0.x, arg_0.x))]);
    var var_3 = arg_0;
    return Struct_3(Struct_1(any(vec3<bool>(any(vec3<bool>(false, false, global1.a.a)), true, all(vec2<bool>(global0.a, true))))), ~reverseBits(vec3<u32>(1u, var_3.x, arg_0.x) >> (u_input.b.yxz ^ u_input.b.zxw)), false, global1.d, ~(vec4<i32>(1i, 15009i, var_1, arg_1.x) + ~u_input.d) & max(max(~u_input.d, u_input.d >> vec4<u32>(4294967295u, 0u, u_input.b.x, 67629u)), max(global1.e, abs(vec4<i32>(i32(-2147483648), u_input.c, arg_1.x, u_input.c)))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = func_5(u_input.a.zw, abs(vec2<i32>(-(~2147483647i), -u_input.d.x * dot(vec3<i32>(u_input.c, u_input.d.x, u_input.d.x), u_input.d.xww))), func_2());
    let var_1 = -var_0.e.x;
    global4 = array<u32, 16>();
    var var_2 = ~(abs(var_0.b.x) | var_0.b.x) >> ~u_input.b.x;
    let var_3 = u_input.b.x;
    return -1416f - (-1749f + -1131f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<f32>(func_1(-(vec4<f32>(1166f, 199f, 286f, 314f) + vec4<f32>(-345f, 578f, 412f, 933f))), -trunc(809f / 872f), exp2(round(1250f)), -exp2(-195f));
    var var_1 = global1.b;
    var var_2 = select(!select(!(!vec3<bool>(false, true, true)), !select(vec3<bool>(true, global1.c, global0.a), vec3<bool>(true, false, false), global1.c), vec3<bool>(true, false, false && false)), vec3<bool>(false, !false, true & !global1.c), select(vec3<bool>(false, !(!false), func_5(vec2<u32>(var_1.x, u_input.a.x), func_5(vec2<u32>(4294967295u, 64753u), vec2<i32>(0i, 22781i), global1.d.a).e.yw, true).c), !vec3<bool>(global1.c, global1.a.a, global0.a & global0.a), all(select(!vec3<bool>(true, global1.d.a, false), !vec3<bool>(global1.c, true, true), all(vec2<bool>(true, global1.a.a))))));
    var var_3 = u_input.d.zw;
    global4 = array<u32, 16>();
    var var_4 = -30143i;
    global2 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, firstLeadingBit(u_input.b.x % 0u), ~(~(u_input.b.x * 38227u)) - func_5(~(~vec2<u32>(4294967295u, 1647u)), select(u_input.d.zw >> var_1.yz, u_input.d.wy, select(vec2<bool>(global0.a, global1.a.a), vec2<bool>(true, false), vec2<bool>(true, false))), all(select(vec2<bool>(global0.a, false), vec2<bool>(true, global0.a), true))).b.x, i32(-2147483648));
}

