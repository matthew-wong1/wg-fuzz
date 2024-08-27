struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    var var_0 = -7304i;
    var var_1 = vec3<bool>(!all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)), true & all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), true)), true);
    var_1 = !vec3<bool>(false, any(vec2<bool>(!var_1.x, false)), select(!var_1.x, _wgslsmith_sub_u32(u_input.a, 25444u) <= min(u_input.a, 52069u), true));
    let var_2 = any(vec3<bool>(!any(!vec4<bool>(true, false, true, var_1.x)), var_1.x, var_1.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f + -1142f));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = Struct_3(var_0.a, 0i, vec2<bool>(any(!select(vec3<bool>(arg_0.c.x, false, false), vec3<bool>(var_0.c.x, true, arg_0.c.x), vec3<bool>(var_0.c.x, false, var_0.c.x))), true));
    var var_2 = Struct_3(var_1.a, var_0.b, var_0.c);
    let var_3 = !(!var_0.c);
    var_2 = Struct_3(Struct_1(~arg_0.a.a), func_3(), select(vec2<bool>(false || var_2.c.x, _wgslsmith_f_op_f32(abs(273f)) >= _wgslsmith_f_op_f32(trunc(-830f))), vec2<bool>(all(select(vec3<bool>(arg_0.c.x, true, var_0.c.x), vec3<bool>(false, var_2.c.x, false), false)), true), var_0.c));
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = -872f;
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1708f, _wgslsmith_f_op_f32(-1000f + 663f), true)))), -1555f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - var_0)));
    let var_2 = arg_3.x;
    var var_3 = u_input.a;
    var var_4 = !func_2(func_2(func_2(arg_2))).c;
    return Struct_3(Struct_1(arg_2.a.a), -1026i, func_2(arg_2).c);
}

fn func_5(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-4860i, arg_0.b), arg_0.b), vec2<i32>(u_input.b.x, arg_0.b));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, -1i), firstLeadingBit(-37317i));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(457f, -1013f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-949f, -1571f), vec2<f32>(1982f, 727f))))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-619f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-894f))))))) + -521f);
    var var_1 = vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -860f));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(~u_input.b, _wgslsmith_mult_i32(-1i, 1i), func_2(Struct_3(Struct_1(0u), u_input.b.x, vec2<bool>(true, false))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-282f, 1511f) * vec2<f32>(var_0, var_1.x)) - vec2<f32>(var_0, var_0))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_1.x))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2730f, var_1.x))), 669f)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(u_input.b, func_4(u_input.b, u_input.b.x >> (u_input.a % 32u), func_4(u_input.b, u_input.b.x, Struct_3(Struct_1(44749u), u_input.b.x, vec2<bool>(false, false)), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))).b, func_2(Struct_3(Struct_1(u_input.a), -1i, vec2<bool>(false, true))), vec4<bool>(any(vec3<bool>(false, false, false)), select(false, false, true), true, func_2(Struct_3(Struct_1(u_input.a), 54416i, vec2<bool>(false, false))).c.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(797f * var_1.x), _wgslsmith_f_op_f32(718f + var_1.x)), var_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0) * vec2<f32>(1782f, 1965f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_1.x)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1682f, -170f), vec2<f32>(var_0, var_0))) + vec2<f32>(-1382f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.x))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-314f, 1225f)), -616f, -2610f) + vec3<f32>(_wgslsmith_f_op_f32(2393f + 104f), -1292f, -1392f)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1653f, 913f)) + 1727f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(415f * 1000f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -434f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2430f + _wgslsmith_f_op_f32(floor(1956f)))))));
    let var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(-60i & u_input.b.x, func_1() >> (func_4(u_input.b, u_input.b.x, Struct_3(Struct_1(1u), u_input.b.x, vec2<bool>(false, true)), vec4<bool>(false, false, true, true)).a.a % 32u), _wgslsmith_div_i32(u_input.b.x, countOneBits(0i))), vec3<i32>(func_3(), i32(-1i) * -u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -36046i) >> (28495u % 32u)) & u_input.b);
    let var_2 = Struct_1(~0u);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1000f, var_0.x, 1094f), vec4<f32>(1054f, -566f, 260f, -636f), false)) + _wgslsmith_div_vec4_f32(vec4<f32>(223f, -814f, 253f, var_0.x), vec4<f32>(331f, var_0.x, var_0.x, var_0.x)))) + vec4<f32>(991f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(147f)), _wgslsmith_f_op_f32(var_0.x * 200f))), 186f, _wgslsmith_f_op_f32(abs(813f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 568f, var_0.x) - vec4<f32>(var_0.x, -298f, var_0.x, 1201f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -457f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, var_0.x, var_0.x))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))));
    let var_4 = Struct_3(Struct_1((18850u | _wgslsmith_mult_u32(4294967295u, var_2.a)) << (func_4(vec3<i32>(u_input.b.x, -2147483647i, 6688i), select(u_input.b.x, 12216i, false), func_2(Struct_3(Struct_1(u_input.a), -27368i, vec2<bool>(true, true))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)).a.a % 32u)), u_input.b.x, func_4(u_input.b, var_1, func_4(vec3<i32>(1i, -46761i, u_input.b.x), u_input.b.x, Struct_3(func_4(u_input.b, 53056i, Struct_3(var_2, -1i, vec2<bool>(false, true)), vec4<bool>(true, false, true, true)).a, _wgslsmith_sub_i32(-1i, -1i), vec2<bool>(true, true)), vec4<bool>(true, all(vec3<bool>(true, true, false)), var_3.x <= 495f, all(vec4<bool>(true, false, false, false)))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false))).c);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_3.x)))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 54626u, 74378u, u_input.a)), vec4<u32>(0u, 0u, var_2.a, var_2.a) ^ vec4<u32>(u_input.a, u_input.a, var_4.a.a, var_4.a.a)), vec4<u32>(max(var_2.a << (var_4.a.a % 32u), var_4.a.a), var_4.a.a, var_4.a.a, ~(~1u))), min(~vec4<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 0u, var_2.a, var_4.a.a), vec4<u32>(var_4.a.a, var_4.a.a, var_2.a, 0u)), 0u, 28739u), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.a, u_input.a, var_2.a, u_input.a), reverseBits(vec4<u32>(2951u, 1u, var_2.a, 4294967295u)))));
}

