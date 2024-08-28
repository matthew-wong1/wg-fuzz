// {"0:0":[108,252,230,216,42,109,186,126,237,204,219,64,6,242,52,60,179,201,199,165,20,76,42,205,155,206,63,36,61,188,79,140,108,230,158,102,131,5,250,204,144,101,137,72,77,230,57,183,116,58,179,39,110,132,53,148,198,166,164,240,230,178,120,186]}
// Seed: 3829376084178220560

struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 792f;

var<private> global1: array<i32, 32>;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(1u, 65484u), Struct_2(137f, vec2<i32>(i32(-2147483648), 17978i), 14998i, Struct_1(vec2<u32>(25790u, 0u), true, 59913u, true)), vec3<i32>(-1i, 32076i, -41494i), vec3<u32>(21778u, 0u, 0u));

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(max((~global2.a - (vec2<u32>(1u, 6666u) % vec2<u32>(1u, 38777u))) % (max(u_input.c, u_input.c) & (vec2<u32>(1u, 0u) << global2.d.zy)), u_input.e.xz), ((global2.b.a + (-1317f + -200f)) != -ceil(-1639f)) && select(global2.b.d.b, !global2.b.d.d, global2.b.d.d), global2.b.d.a.x, !(!true));
    let var_1 = exp2(vec2<f32>(-826f, 1000f * (1313f + (global2.b.a - global2.b.a))));
    let var_2 = vec3<bool>(false | !true, true & false, select(false, !(42083u >= ~global2.d.x), global2.b.d.b));
    var var_3 = var_1 * round(var_1);
    let var_4 = Struct_4(floor(round(-vec4<f32>(var_3.x, 319f, 1000f, 888f))));
    return !true;
}

fn func_2() -> bool {
    global2 = Struct_3(u_input.b.zz, Struct_2((trunc(1026f) / global2.b.a) - -trunc(1402f), ~global2.b.b, firstLeadingBit(34176i), global2.b.d), -vec3<i32>(-1i * ~u_input.a, ~(-9211i), dot(vec4<i32>(u_input.a, global1[9597u], global1[global2.d.x], u_input.a), vec4<i32>(global1[8069u], -1i, i32(-2147483648), global2.b.b.x)) ^ 1i), reverseBits(select(~(~vec3<u32>(global2.b.d.c, u_input.d, u_input.e.x)), countOneBits(vec3<u32>(u_input.d, 1u, u_input.c.x)) / (u_input.b.yzx / global2.d), func_3(Struct_1(u_input.b.wz, false, 32640u, true)) || func_3(Struct_1(global2.a, true, 74455u, global2.b.d.b)))));
    let var_0 = vec4<u32>(104410u, min(u_input.e.x, 1u), u_input.e.x << (global2.a.x - (u_input.b.x - 1u)), reverseBits((1u >> u_input.e.x) + global2.a.x)) + u_input.b;
    global2 = Struct_3(global2.d.xy, Struct_2(-(-sign(1217f)), vec2<i32>(global1[~72230u], -1i) & ~countOneBits(global2.b.b), min(global1[(16144u >> var_0.x) * global2.d.x], global1[~u_input.e.x]), Struct_1(vec2<u32>(abs(3521u), u_input.e.x), reverseBits(u_input.a) < 2147483647i, 1u, all(!vec3<bool>(global2.b.d.d, global2.b.d.d, global2.b.d.b)))), global2.c, max(abs(~min(vec3<u32>(u_input.e.x, global2.d.x, 45988u), var_0.wwz)), var_0.zwy));
    global0 = -650f;
    let var_1 = select(vec4<bool>(!global2.b.d.d, !any(vec2<bool>(true, global2.b.d.b)), all(vec4<bool>(true, true, func_3(global2.b.d), func_3(global2.b.d))), true), vec4<bool>(true, !true, func_3(global2.b.d), global2.b.d.d), vec4<bool>(true, !global2.b.d.d, true | false, 71601u > 1u));
    return select(!any(select(vec4<bool>(global2.b.d.d, var_1.x, false, var_1.x), vec4<bool>(false, global2.b.d.b, global2.b.d.b, true), !var_1.x)), false, false);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = Struct_3(u_input.c, global2.b, ~vec3<i32>(u_input.a, dot(firstLeadingBit(vec2<i32>(1i, 31171i)), countOneBits(vec2<i32>(i32(-2147483648), u_input.a))), abs(clamp(global2.c.x, global2.c.x, global1[arg_0.x]))), global2.d);
    return global2.b.d.d;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    global0 = global2.b.a * (global2.b.a + global2.b.a);
    let var_0 = -(-27392i);
    global2 = Struct_3(arg_1, global2.b, ~(~firstTrailingBit(vec3<i32>(20921i, global2.b.b.x, 832i) + vec3<i32>(3646i, global2.b.c, var_0))), abs(~(~vec3<u32>(8853u, u_input.c.x, arg_1.x) % ~vec3<u32>(8597u, global2.d.x, arg_1.x))));
    global0 = trunc(145f) * ceil(exp2(-global2.b.a));
    var var_1 = global2.b.a;
    return round(882f * floor(-(-global2.b.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: f32) -> vec3<bool> {
    let var_0 = min(vec3<u32>(~1u / ~global2.b.d.c, global2.d.x, abs(~9216u) ^ (4294967295u ^ ~90686u)), ~vec3<u32>(global2.b.d.c + global2.d.x, 4294967295u - 4294967295u, arg_1.d.x));
    global1 = array<i32, 32>();
    global0 = func_5(func_4(~abs(vec2<u32>(4294967295u, 126693u)), vec3<bool>(!global2.b.d.d, !func_2(), !(3492i < 38876i)), -((vec4<i32>(global1[arg_1.a.x], 36097i, arg_1.c.x, -17124i) / vec4<i32>(u_input.a, global2.c.x, 1i, 16205i)) << (vec4<u32>(arg_1.b.d.c, global2.a.x, u_input.e.x, 4294967295u) + u_input.b)), false), u_input.b.zy & reverseBits(vec2<u32>(50798u % arg_1.b.d.c, arg_1.a.x)));
    var var_1 = -arg_0.yx;
    let var_2 = global2.b.d;
    return select(select(vec3<bool>(!select(arg_1.b.d.d, false, global2.b.d.b), select(!global2.b.d.b, global2.b.d.d || var_2.b, var_2.b), select(all(vec4<bool>(var_2.d, global2.b.d.d, true, true)), global2.b.d.d && arg_1.b.d.b, true)), !(!(!vec3<bool>(true, arg_1.b.d.b, false))), !(!(!vec3<bool>(true, global2.b.d.b, arg_1.b.d.d)))), vec3<bool>(global2.b.d.b, ceil(arg_0.x) < -(-arg_0.x), !true && (global2.a.x < var_0.x)), !vec3<bool>(!all(vec2<bool>(global2.b.d.b, global2.b.d.b)), global2.b.d.d, !all(vec4<bool>(global2.b.d.b, true, true, var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.a > global2.b.a;
    let var_1 = Struct_1(vec2<u32>(21973u, 1u), any(select(select(!vec3<bool>(global2.b.d.b, global2.b.d.d, global2.b.d.b), !vec3<bool>(true, global2.b.d.d, global2.b.d.b), !vec3<bool>(false, true, false)), !func_1(vec3<f32>(global2.b.a, global2.b.a, global2.b.a), Struct_3(vec2<u32>(global2.d.x, global2.b.d.c), global2.b, vec3<i32>(0i, u_input.a, 60183i), vec3<u32>(8027u, 9196u, 4294967295u)), global2.b.a), vec3<bool>(!false, all(vec3<bool>(true, false, global2.b.d.b)), global2.b.d.b))), global2.d.x / (4294967295u / 4294967295u), all(select(func_1(vec3<f32>(-611f, global2.b.a, global2.b.a), Struct_3(vec2<u32>(u_input.c.x, 24549u), global2.b, global2.c, global2.d), global2.b.a).yx, !vec2<bool>(true, true), global2.b.d.d)) & !true);
    let var_2 = vec2<bool>(var_1.d, global2.b.d.b);
    var var_3 = !(!vec2<bool>(global2.b.d.b, var_1.c < ~u_input.d));
    var var_4 = select(vec2<bool>(global2.b.d.b, var_1.d), vec2<bool>(!(!func_3(Struct_1(u_input.e.ww, var_1.b, 0u, var_1.b))), true), var_3.x);
    var var_5 = global2.b.a;
    let var_6 = Struct_4(vec4<f32>(ceil(-1798f), global2.b.a, select(global2.b.a, (-152f - -1804f) / global2.b.a, any(!vec4<bool>(false, false, var_2.x, var_3.x))), global2.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, abs(var_6.a.x + (-(-397f) / -global2.b.a)), vec3<f32>(ceil(-var_6.a.x) * global2.b.a, -(-(-216f)) + floor(-global2.b.a), var_6.a.x), ~(~select(vec4<i32>(16538i, 4962i, global1[8984u], 43662i), vec4<i32>(-44063i, global1[4294967295u], global1[global2.b.d.a.x], -14250i), true)) * countOneBits(vec4<i32>(i32(-2147483648) ^ global2.b.b.x, 10988i, u_input.a >> global2.d.x, i32(-2147483648))), var_6.a.yxw);
}

