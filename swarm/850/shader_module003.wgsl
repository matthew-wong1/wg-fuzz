struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(468f, _wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(490f - 2049f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -924f)))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-536f, _wgslsmith_f_op_f32(-1050f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(min(-1146f, -326f)))))));
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - -1297f))) <= _wgslsmith_f_op_f32(select(-1110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1463f, -254f)) - _wgslsmith_f_op_f32(-var_0.x)), var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-350f, var_0.x, var_0.x), vec3<f32>(-1136f, var_0.x, -962f), vec3<bool>(true, true, false)))))), select(!(!select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), true)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), var_1), vec2<bool>(all(vec2<bool>(var_1, false)), var_1), !(true & var_1)), !select(select(vec2<bool>(true, var_1), vec2<bool>(true, false), vec2<bool>(true, var_1)), vec2<bool>(true, true), select(vec2<bool>(var_1, false), vec2<bool>(var_1, false), true))), reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.b.x, -34548i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i)) >> (select(vec4<u32>(26066u, 0u, 10710u, u_input.a), vec4<u32>(16347u, u_input.a, u_input.a, 1u), vec4<bool>(false, false, true, var_1)) % vec4<u32>(32u)), vec4<i32>(~(-2147483647i), ~u_input.b.x, u_input.b.x, i32(-1i) * -15195i))));
    let var_3 = Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -467f), var_2.b.x, var_0.x), !vec2<bool>(all(vec2<bool>(true, true)), true), vec4<i32>(0i, -(u_input.b.x & firstLeadingBit(u_input.b.x)), abs(_wgslsmith_add_i32(2147483647i, -58024i)), 1i));
    var var_4 = -u_input.b;
    return vec3<bool>(true, var_2.a, _wgslsmith_div_f32(var_2.b.x, var_3.b.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x))))));
}

fn func_2() -> Struct_1 {
    let var_0 = func_3();
    var var_1 = Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-541f, 1385f, -597f))))))), vec2<bool>(any(select(vec3<bool>(false, false, true), var_0, u_input.b.x == u_input.b.x)), !any(var_0)), _wgslsmith_sub_vec4_i32(~vec4<i32>(firstLeadingBit(1i), u_input.b.x, _wgslsmith_add_i32(1i, u_input.b.x), abs(-2147483647i)), vec4<i32>(u_input.b.x, _wgslsmith_add_i32(-u_input.b.x, 19190i), _wgslsmith_mult_i32(u_input.b.x, -21158i >> (u_input.a % 32u)), 0i)));
    let var_2 = vec3<u32>(u_input.a, ~u_input.a, _wgslsmith_clamp_u32(48537u, 11290u << (u_input.a % 32u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(10105u, 42600u, 4294967295u))));
    let var_3 = vec2<i32>(-firstLeadingBit(~u_input.b.x) | (i32(-1i) * -3783i), -33875i);
    global0 = var_0.x;
    return Struct_1(!all(vec4<bool>(81145i != var_1.d.x, !var_1.a, func_3().x, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.b, var_1.b) * _wgslsmith_f_op_vec3_f32(var_1.b + var_1.b))) + var_1.b), select(!select(vec2<bool>(true, var_1.a), var_0.yx, !var_1.c), var_1.c, !all(select(vec3<bool>(false, var_1.c.x, false), var_0, vec3<bool>(true, false, false)))), abs(~(-vec4<i32>(var_3.x, var_3.x, u_input.b.x, -1i))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = true;
    let var_1 = arg_0.b.yz;
    let var_2 = firstLeadingBit(select(min(min(min(vec4<u32>(u_input.a, u_input.a, u_input.a, 47934u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 38572u)), vec4<u32>(96393u, 60606u, 55070u, 35272u) & vec4<u32>(u_input.a, 1u, 0u, 57765u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, u_input.a), vec4<u32>(25103u, 4294967295u, 22533u, 0u), vec4<u32>(u_input.a, u_input.a, 58768u, u_input.a)), reverseBits(vec4<u32>(u_input.a, 18959u, u_input.a, u_input.a)))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 46218u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 40077u)), vec4<u32>(~u_input.a, u_input.a >> (19u % 32u), u_input.a, ~u_input.a), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, true, arg_0.a), select(vec4<bool>(true, true, false, false), vec4<bool>(true, arg_0.a, true, arg_0.a), false))), all(select(vec4<bool>(true, true, var_0, var_0), select(vec4<bool>(arg_0.c.x, var_0, true, arg_0.c.x), vec4<bool>(var_0, arg_0.a, var_0, var_0), vec4<bool>(true, false, arg_0.a, false)), !vec4<bool>(var_0, var_0, false, var_0)))));
    global0 = !any(!vec3<bool>(true, true, !arg_0.c.x));
    global0 = var_0 == arg_0.a;
    return func_2().d.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<u32> {
    global0 = arg_1.c.x;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -147f);
    var_0 = arg_1.b.x;
    let var_1 = _wgslsmith_sub_i32(~(-countOneBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), -(~arg_1.d.x));
    let var_2 = func_4(func_2(), abs(var_1));
    return ~select(vec3<u32>(~u_input.a, 4294967295u, 1u), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(11932u, 0u, 0u), vec3<u32>(4294967295u, u_input.a, u_input.a)), arg_0.x || any(select(vec4<bool>(arg_0.x, true, arg_1.c.x, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, false, false), vec4<bool>(true, arg_0.x, true, arg_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(~_wgslsmith_mod_u32(min(u_input.a, u_input.a), _wgslsmith_mult_u32(73550u, u_input.a)) >= ~u_input.a, (~u_input.b.x < -40420i) != select(all(vec2<bool>(false, false)) || (u_input.b.x == -2147483647i), true, all(vec4<bool>(false, false, true, false))), any(vec4<bool>(true, true, true, true)), false);
    var_0 = vec4<bool>(true, any(vec2<bool>(var_0.x, !(!var_0.x))), false, !var_0.x);
    let var_1 = countOneBits(65510u);
    global0 = false;
    var var_2 = _wgslsmith_add_vec3_u32(~min(vec3<u32>(u_input.a, ~56355u, u_input.a), func_1(vec2<bool>(var_0.x, var_0.x), Struct_1(false, vec3<f32>(-1117f, 1320f, 390f), vec2<bool>(false, true), vec4<i32>(0i, -2147483647i, -2147483647i, -61842i)))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(var_1, var_1, u_input.a)) & ~vec3<u32>(0u, 1u, 0u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(39654u, 45308u)), 1u, _wgslsmith_clamp_u32(var_1, var_1, u_input.a))), reverseBits(~vec3<u32>(u_input.a, u_input.a, var_1) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(-func_2().b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, -1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(0i, u_input.b.x, 1i, 0i)), min(vec4<i32>(u_input.b.x, u_input.b.x, -27698i, 2147483647i) | vec4<i32>(40526i, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<i32>(-2147483647i, u_input.b.x, -27325i, u_input.b.x)))), var_2.x >> (9628u % 32u), -2147483647i, _wgslsmith_clamp_vec4_u32(~(firstLeadingBit(vec4<u32>(0u, var_2.x, 35424u, var_2.x)) & ~vec4<u32>(14260u, u_input.a, 11557u, 41731u)), vec4<u32>(0u, u_input.a ^ var_1, ~(~var_2.x), ~(~var_2.x)), vec4<u32>(var_1, var_2.x, firstLeadingBit(54082u), var_1)));
}

