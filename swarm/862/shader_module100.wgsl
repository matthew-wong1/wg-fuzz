struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = ~_wgslsmith_sub_i32(min(_wgslsmith_sub_i32(11242i, u_input.a.x), 0i & u_input.a.x) >> (_wgslsmith_mod_u32(0u << (u_input.b % 32u), arg_0.c.x) % 32u), u_input.a.x);
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~u_input.b, _wgslsmith_clamp_u32(u_input.b & u_input.b, arg_0.c.x << (arg_0.c.x % 32u), 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17441u, 51000u, 4294967295u), ~vec4<u32>(4294967295u, 57704u, 0u, 4294967295u))), arg_0.c);
    let var_2 = arg_0.c.x;
    var_1 = min(~firstLeadingBit(vec2<u32>(u_input.b, var_1.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(var_2), 40646u), vec2<u32>(u_input.b & var_2, u_input.b)) & countOneBits(_wgslsmith_mult_vec2_u32(arg_0.c, ~arg_0.c)));
    var_1 = arg_0.c;
    return -139f;
}

fn func_3() -> f32 {
    let var_0 = Struct_2(~firstLeadingBit(~abs(vec2<u32>(u_input.b, 49933u))), -_wgslsmith_add_i32(u_input.a.x, u_input.a.x), Struct_1((4294967295u == ~u_input.b) | (all(vec4<bool>(true, true, true, true)) & true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, -349f, -1171f, -1198f) * vec4<f32>(1000f, 369f, -309f, -708f))))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 53676u), ~vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(u_input.b, u_input.b) & _wgslsmith_clamp_vec2_u32(vec2<u32>(13434u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 19245u))), vec3<bool>(true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), false, select(false, false, true)), all(vec4<bool>(true, true, true, true)))), vec4<f32>(2367f, -466f, 592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = Struct_2(_wgslsmith_mult_vec2_u32(var_0.a, abs(~(~vec2<u32>(4294967295u, u_input.b)))), _wgslsmith_sub_i32(var_0.b, _wgslsmith_mod_i32(var_0.b, -2147483647i)), var_0.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-764f + var_0.d.x), var_0.c.b.x, 1190f, 220f), vec4<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_0.c.b.x), -483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) * 1000f))));
    var var_2 = var_0.c;
    var var_3 = Struct_2(var_1.c.c, -1i, Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1049f, var_0.c.b.x, -1525f, -1000f)))), ~firstLeadingBit(var_2.c), select(select(vec3<bool>(false, var_0.c.a, var_2.d.x), !var_2.e.wzw, !var_0.c.d.x), !(!var_0.c.e.yyz), true), vec4<bool>(!var_1.c.d.x, !(!var_1.c.a), any(vec3<bool>(var_2.d.x, var_2.a, false)) | false, false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.b, vec4<f32>(-570f, -806f, var_0.d.x, var_1.d.x), var_2.e))))), vec4<f32>(341f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, var_2.b.x, var_2.a)), _wgslsmith_f_op_f32(trunc(507f))), _wgslsmith_f_op_f32(step(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(abs(-1460f)))));
    var var_4 = var_1.a.x <= _wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(1u, 4294967295u, 59792u, var_0.c.c.x))), ~vec4<u32>(var_1.a.x, 4294967295u, var_0.a.x, _wgslsmith_mult_u32(var_3.c.c.x, 40727u)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1422f * var_3.d.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1247f), var_0.c.b.x))), true));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-544f * arg_1.b.x), -1010f, true))) + _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.b.x)), _wgslsmith_f_op_f32(func_3())))), -1387f));
    let var_1 = Struct_2(arg_1.c, 5976i, Struct_1(arg_1.e.x, _wgslsmith_f_op_vec4_f32(-arg_1.b), vec2<u32>(abs(arg_1.c.x), ~19655u), select(!select(vec3<bool>(arg_1.a, true, arg_1.a), arg_1.e.xzy, vec3<bool>(arg_1.d.x, false, true)), arg_1.d, arg_1.d), vec4<bool>(true, _wgslsmith_f_op_f32(func_1(Struct_1(false, arg_1.b, arg_1.c, arg_1.e.zxw, arg_1.e))) >= 2719f, true, false)), arg_1.b);
    let var_2 = _wgslsmith_mod_u32(21646u, arg_0.x);
    let var_3 = -u_input.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(var_1.c.b.x + var_1.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f)))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(545f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(false, vec4<f32>(-642f, -1653f, -1715f, -1093f), vec2<u32>(62673u, u_input.b), vec3<bool>(true, true, false), vec4<bool>(false, false, true, false))))), -2173f, 473f), ~abs(vec2<u32>(_wgslsmith_div_u32(u_input.b, 21126u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 8084u, u_input.b, 22604u), vec4<u32>(4294967295u, 0u, u_input.b, 54359u)))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true), true & (u_input.a.x == 64367i)), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, true, true)), !vec3<bool>(u_input.b < 14281u, true, true)), select(vec4<bool>(true, 24507i == -u_input.a.x, all(vec4<bool>(true, true, true, true)), select(true, true, true)), vec4<bool>(true, true, true, true), true || all(vec4<bool>(true, true, true, true))));
    let var_1 = !func_2(firstLeadingBit(abs(vec4<u32>(2565u, 0u, u_input.b, var_0.c.x) << (vec4<u32>(273u, 40521u, 50386u, 0u) % vec4<u32>(32u)))), var_0);
    var var_2 = vec3<bool>((true && var_1) && var_0.d.x, true || var_1, any(!select(select(var_0.e, vec4<bool>(var_1, var_1, var_1, false), var_0.e.x), vec4<bool>(var_0.e.x, var_1, false, false), select(vec4<bool>(var_0.e.x, var_1, var_0.a, false), vec4<bool>(true, true, true, false), var_0.e))));
    var_2 = var_0.e.xxy;
    var_2 = !(!var_0.d);
    var_2 = !vec3<bool>(!var_2.x, all(vec2<bool>(var_1, var_0.c.x > var_0.c.x)), var_0.d.x);
    var var_3 = ~((vec4<u32>(var_0.c.x, 7506u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 27432u, 49483u, u_input.b), vec4<u32>(55472u, 1u, var_0.c.x, u_input.b)), ~0u) ^ vec4<u32>(countOneBits(44506u), ~20993u, 30246u << (u_input.b % 32u), ~1u)) ^ vec4<u32>(firstTrailingBit(0u), var_0.c.x, 1u, _wgslsmith_sub_u32(var_0.c.x, ~var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.b.x, 1673f), _wgslsmith_f_op_f32(-1000f + var_0.b.x), var_0.b.x) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, 804f, var_0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1279f, 1000f, -714f)))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), -1700f, 243f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(var_0.b.wxw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, var_0.b.x, var_0.b.x) * vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), vec3<bool>(var_0.a, var_1, var_1)))))), u_input.a, var_0.b);
}

