struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> f32 {
    var var_0 = firstTrailingBit(u_input.c ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 9117u, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 15323u), vec4<u32>(0u, 1u, u_input.c, u_input.c))));
    var_0 = 0u;
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, u_input.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(21387u, u_input.c), vec2<u32>(u_input.c, 15144u))) >> (55540u % 32u), reverseBits(firstLeadingBit(~u_input.c))), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) - -824f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(f32(-1f) * -704f)))));
    var_1 = Struct_1(~(~vec3<u32>(var_1.a.x, u_input.c, _wgslsmith_div_u32(u_input.c, 1u))), 4294967295u, var_1.c);
    let var_2 = u_input.a;
    return var_1.c.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    var var_0 = Struct_1(firstTrailingBit(vec3<u32>(u_input.c << (select(0u, u_input.c, true) % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 0u)), ~vec2<u32>(u_input.c, 24658u)), _wgslsmith_mult_u32(abs(u_input.c), u_input.c))), u_input.c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~countOneBits(abs(vec2<u32>(27993u, u_input.c))), vec2<u32>(var_0.a.x, select(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(70327u, u_input.c), vec2<u32>(var_0.a.x, u_input.c)), true))), 46497u);
    var var_2 = true;
    let var_3 = Struct_1(var_0.a, u_input.c, var_0.c);
    let var_4 = vec4<bool>(any(select(select(vec4<bool>(false, arg_2, false, arg_2), !vec4<bool>(true, arg_2, arg_2, arg_2), var_1.x >= 2242u), !vec4<bool>(true, false, false, arg_2), vec4<bool>(31208i == u_input.b.x, arg_2, 36699i != u_input.b.x, any(vec4<bool>(false, arg_2, false, false))))), !all(!select(vec4<bool>(arg_2, false, false, false), vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, arg_2))), arg_2, !all(select(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)), vec2<bool>(true, arg_2), vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(step(365f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-797f * var_0.c.x)))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1674f)) + -1000f)) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1069f, -2107f, 393f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, _wgslsmith_f_op_f32(1466f - -418f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, -627f))), arg_0.x)));
    let var_1 = _wgslsmith_sub_vec3_i32(abs(u_input.b), u_input.b) >> (~vec3<u32>(2134u, u_input.c, ~u_input.c) % vec3<u32>(32u));
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.yy), ~select(vec2<i32>(_wgslsmith_mod_i32(-4029i, -3213i), ~u_input.b.x), vec2<i32>(104263i, var_1.x >> (u_input.c % 32u)), arg_0.x));
    var var_3 = abs(~firstTrailingBit(select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), true) ^ vec4<u32>(1461u, 14807u, u_input.c, u_input.c)));
    var_2 = _wgslsmith_div_i32(var_1.x, countOneBits(-1i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) - _wgslsmith_f_op_f32(-var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~(~abs(vec3<u32>(u_input.c, u_input.c, 60267u)))), reverseBits(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(4294967295u, 45226u, u_input.c)), vec3<u32>(u_input.c & 2553u, 1u, abs(u_input.c)))), vec3<u32>(min(countOneBits(~u_input.c), 0u), ~(~1u), u_input.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-230f, 366f, true)) * _wgslsmith_f_op_f32(func_1())))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-344f, -1000f))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(select(!(!vec4<bool>(true, false, true, var_1)), !(!vec4<bool>(true, var_1, true, var_1)), any(select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(true, true, var_1, false), vec4<bool>(true, true, false, var_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, true, false))))));
    var var_3 = select(!vec3<bool>(true, var_1, true), select(!vec3<bool>(!var_1, !var_1, var_1), select(vec3<bool>(true, var_1, true), select(vec3<bool>(var_1, false, var_1), vec3<bool>(true, true, true), !var_1), vec3<bool>(any(vec2<bool>(true, var_1)), false & var_1, var_1)), vec3<bool>(!any(vec2<bool>(true, false)), true, !(u_input.b.x < u_input.b.x))), false);
    var_3 = vec3<bool>(false, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -509f), 1571f, -677f) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-500f - 401f))), _wgslsmith_f_op_f32(step(-280f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1127f - -655f) - _wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, -1316f, 298f), vec2<f32>(-107f, 1638f), false))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(798f, -794f, -1000f), vec3<f32>(1200f, -960f, 129f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 772f, -837f)))))), vec2<f32>(152f, _wgslsmith_f_op_f32(-107f - -532f)), true)));
}

