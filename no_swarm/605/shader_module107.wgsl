struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = select(!select(vec4<bool>(true, all(vec4<bool>(true, false, false, true)), false, true), vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), true, true, all(vec4<bool>(false, true, false, false)))), vec4<bool>(all(vec4<bool>(false, false, false, false)), true, select(min(u_input.c.x, arg_0) <= arg_0, all(vec4<bool>(true, true, true, false)) | true, !any(vec2<bool>(true, true))), false), select(select(vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), false), vec4<bool>(true, false, true, any(vec4<bool>(false, false, true, false))), true), select(vec4<bool>(select(false, true, true), true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), !any(vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(min(4294967295u, 77183u), u_input.d.x)) << (vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 21745u) ^ u_input.b, u_input.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.d.x, u_input.b)) ^ vec2<u32>(~0u, _wgslsmith_mod_u32(u_input.a.x, 21006u)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(61131u, 1u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1902f + -322f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-726f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(518f + 200f)) + -1430f))));
    var_0 = select(select(vec4<bool>(false, var_0.x, true & (812f == var_2.x), !(u_input.a.x == var_1.x)), select(!(!vec4<bool>(true, var_0.x, var_0.x, true)), select(!vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), select(var_0.x, var_0.x, var_0.x)), true), select(true, !var_0.x, true)), select(vec4<bool>(true, true, ~4509i > (-47942i | arg_0), false), vec4<bool>(var_0.x, var_0.x, !(!var_0.x), true), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, true, true, true), var_0.x)), var_1.x != 27784u);
    var_1 = u_input.d;
    return ~1u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = countOneBits(reverseBits(vec4<u32>(_wgslsmith_add_u32(17536u, 0u), 8616u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.a.x, 1u, 70036u), arg_0), ~arg_0.x)) ^ ~u_input.a);
    let var_1 = ~abs(u_input.a.x);
    var var_2 = !(u_input.c.x >= 0i);
    var var_3 = ~((_wgslsmith_add_u32(func_3(u_input.c.x), 41032u) | u_input.a.x) << (4294967295u % 32u));
    var var_4 = ~arg_0;
    return Struct_2(Struct_1(vec2<bool>(true, true), u_input.c, vec3<i32>(~1i, 5941i, ~0i), ~(~_wgslsmith_div_vec2_u32(arg_0.yz, vec2<u32>(arg_0.x, 36530u)))), max(~(~countOneBits(vec4<i32>(u_input.c.x, -92270i, -2147483647i, u_input.c.x))), vec4<i32>(u_input.c.x, countOneBits(u_input.c.x) & u_input.c.x, u_input.c.x, countOneBits(countOneBits(1i)))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x ^ 1u, 1u, ~30765u, u_input.d.x), vec4<u32>(~u_input.a.x, u_input.b | u_input.a.x, 4294967295u, firstTrailingBit(u_input.d.x)))));
    var var_1 = -345f;
    var_1 = -359f;
    var var_2 = func_2(~(select(u_input.a, ~vec4<u32>(var_0.a.d.x, var_0.a.d.x, u_input.b, 0u), var_0.a.a.x) | vec4<u32>(max(u_input.a.x, 69736u), ~var_0.a.d.x, firstLeadingBit(u_input.a.x), 3516u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(232f, -946f, -632f, 226f))), true)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-560f, -324f, _wgslsmith_f_op_f32(f32(-1f) * -1776f), 566f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1112f, -1000f, 891f, 2112f), vec4<f32>(1533f, -1000f, -2833f, 686f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f + 707f)), -140f, _wgslsmith_f_op_f32(ceil(605f)))));
    return func_2(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b ^ var_0.a.d.x, _wgslsmith_add_u32(0u, 54121u), var_2.a.d.x, _wgslsmith_add_u32(1u, 1u))), ~(~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c;
    let var_1 = true;
    var var_2 = ~vec3<u32>(1u ^ select(u_input.d.x, 1u, true), u_input.a.x, _wgslsmith_mult_u32(26472u, u_input.a.x));
    var var_3 = func_1();
    var var_4 = Struct_3(Struct_2(func_1().a, var_3.b), func_1().a, Struct_1(vec2<bool>(true, var_1), ~vec3<i32>(-2147483647i, -1i, ~(-13930i)), reverseBits(vec3<i32>(-1i, u_input.c.x, ~(-63035i))), ~func_2(u_input.a).a.d << (~_wgslsmith_div_vec2_u32(var_3.a.d, var_2.zx) % vec2<u32>(32u))), select(var_3.a.a, func_2(u_input.a & ~vec4<u32>(var_2.x, u_input.a.x, u_input.d.x, 12543u)).a.a, func_2((u_input.a ^ vec4<u32>(var_3.a.d.x, var_3.a.d.x, 19773u, var_3.a.d.x)) << (vec4<u32>(var_3.a.d.x, 4294967295u, 61256u, 0u) % vec4<u32>(32u))).a.a));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b, func_1().a.d >> (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_3.a.d.x), vec2<u32>(72756u, var_3.a.d.x))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1718f, -1000f) * vec2<f32>(-400f, 1388f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1148f, -2181f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1041f, -1242f))))))), _wgslsmith_f_op_f32(max(-1547f, 1379f)), var_4.c.b);
}

