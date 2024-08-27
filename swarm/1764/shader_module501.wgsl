struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = Struct_2(arg_1.a, -455f);
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_0.b));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b));
    var var_2 = u_input.a.zy;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.b, arg_0.a.a.x))), arg_0, u_input.a.zy, var_0.a, vec2<u32>(arg_1.a.e, ~(~54968u)) ^ select(vec2<u32>(~arg_1.a.d, 62750u), firstTrailingBit(vec2<u32>(arg_1.a.e, arg_1.a.e)), !vec2<bool>(false, var_0.a.b.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.d.a * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_3.d.a))))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(true, i32(-1i) * -_wgslsmith_sub_i32(~70222i, u_input.a.x));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec2<f32>(-505f, 512f), vec2<bool>(var_0.a, true), -53147i, 4294967295u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -2447f)), Struct_2(Struct_1(vec2<f32>(275f, -1000f), vec2<bool>(var_0.a, var_0.a), -1077i, 4294967295u, 4294967295u), _wgslsmith_f_op_f32(abs(1410f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1903f, 520f), vec2<f32>(1000f, 985f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(336f, 178f))))), vec2<bool>(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(4294967295u, 1u), ~20280u) <= 17302u, true | var_0.a), _wgslsmith_add_i32(abs(2147483647i), var_0.b), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, ~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 1u, 4294967295u))), 21880u), ~35857u);
    let var_2 = var_1.d;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, var_1.a.x)), var_1.a.x))), select(vec2<bool>(true, true), !vec2<bool>(var_1.b.x, var_1.b.x), all(vec2<bool>(false, true))), var_0.b, 50933u, var_1.d), _wgslsmith_f_op_f32(-1635f + -1334f));
    var_1 = var_3.a;
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-627f, var_1.a.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(var_1.a.x, var_1.a.x))))), !vec2<bool>(var_1.b.x, var_3.a.b.x), _wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(var_1.c, ~_wgslsmith_mod_i32(325i, u_input.a.x), var_3.a.c)), _wgslsmith_clamp_u32(abs(select(32558u, 53033u, false)), var_1.e, var_1.e), ~countOneBits(abs(var_3.a.e)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(func_2(), _wgslsmith_f_op_f32(abs(-1478f)));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1570f));
    let var_1 = 824f < _wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_0.a, -1793f), Struct_2(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -899f))))).x;
    var var_2 = (select(_wgslsmith_mod_i32(var_0.a.c, 16032i), u_input.a.x, true) << (~57775u % 32u)) << (select(var_0.a.e, 28899u ^ var_0.a.e, false) % 32u);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.a.x - 243f))));
    return Struct_3(var_0.a.a.x, Struct_2(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + 982f), -1372f))), u_input.a.wz, Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a.a - _wgslsmith_f_op_vec2_f32(-var_0.a.a)), select(vec2<bool>(var_1 && var_1, var_1), vec2<bool>(4294967295u > arg_0, -2147483647i >= var_0.a.c), var_0.a.b), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-6289i, 0i, var_0.a.c, u_input.a.x), reverseBits(u_input.a))), var_0.a.d, 4294967295u), ~(~min(min(vec2<u32>(84338u, 53942u), vec2<u32>(50876u, arg_0)), vec2<u32>(var_0.a.e, arg_0))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    let var_0 = arg_0.d.b.x;
    let var_1 = max(_wgslsmith_add_u32(~(~4294967295u), arg_0.b.a.d) >> (~(~1u) % 32u), _wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.x, arg_1.x, 4294967295u), vec3<u32>(1u, 53527u, arg_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, arg_0.d.d, 93821u, arg_0.e.x), vec4<u32>(1u, 10710u, arg_0.d.e, arg_1.x)), ~0u, func_1(arg_0.d.d).b.a.d), min(vec4<u32>(arg_1.x, arg_0.d.e, arg_1.x, 37644u), vec4<u32>(arg_1.x, 4294967295u, arg_0.d.d, 74053u)) >> (vec4<u32>(91534u, arg_1.x, 0u, arg_1.x) % vec4<u32>(32u)))));
    var var_2 = Struct_5(arg_0.d.b.x, select(~(~max(u_input.a.x, 30392i)), arg_0.d.c, !all(vec4<bool>(false, var_0, false, true))));
    var var_3 = arg_1.x;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.a.x - _wgslsmith_f_op_f32(min(arg_0.d.a.x, _wgslsmith_f_op_f32(abs(-324f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1960f * 1000f))) + _wgslsmith_f_op_f32(sign(arg_0.a))) * -353f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f), arg_0.a), -1000f);
    return arg_0.b.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(min(~vec3<u32>(4294967295u, 93965u, 0u), vec3<u32>(1u, ~4294967295u, 1u))) & ~firstTrailingBit(reverseBits(vec3<u32>(1u, 1u, 1u)));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(-842f)), -1682f), vec2<bool>(((u_input.a.x > 6656i) & true) != (_wgslsmith_add_u32(var_0.x, var_0.x) == 4294967295u), func_4(func_1(26036u), ~var_0) || !any(vec4<bool>(false, false, true, false))), -37636i, countOneBits(_wgslsmith_mult_u32(var_0.x ^ ~var_0.x, var_0.x)), var_0.x);
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))));
    var var_4 = var_1.b;
    let var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

