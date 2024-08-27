struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(2147483647i, 42064i), vec2<i32>(-38877i, 8006i), vec2<i32>(-1i, 0i), vec2<i32>(13602i, i32(-2147483648)), vec2<i32>(1i, -63057i), vec2<i32>(0i, 2738i), vec2<i32>(0i, 4089i), vec2<i32>(i32(-2147483648), 1703i), vec2<i32>(6778i, -19992i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, -17614i), vec2<i32>(2147483647i, -44028i), vec2<i32>(-10014i, -5988i), vec2<i32>(2147483647i, -30782i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-2002i, 0i), vec2<i32>(2147483647i, -1645i), vec2<i32>(-5486i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 0i));

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global1 = array<Struct_2, 22>();
    global0 = array<vec2<i32>, 20>();
    global0 = array<vec2<i32>, 20>();
    let var_0 = _wgslsmith_mult_u32(u_input.c.x, countOneBits(u_input.c.x));
    var var_1 = global1[_wgslsmith_index_u32(1u, 22u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1298f, 1287f) - -1706f) * 1f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1119f, 1000f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1650f - -372f))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x))))), arg_2.x, any(!vec3<bool>(true, true | arg_1.b.a.x, false))));
    var_0 = _wgslsmith_f_op_f32(-275f - _wgslsmith_f_op_f32(-arg_2.x));
    let var_1 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(977f)));
    let var_2 = Struct_1(select(arg_1.b.a, vec2<bool>(arg_2.x < -101f, false), vec2<bool>(true == (arg_2.x > arg_2.x), !arg_1.b.a.x)));
    var var_3 = vec4<bool>(all(var_2.a), all(vec2<bool>(!all(vec4<bool>(arg_1.a, var_2.a.x, arg_1.a, arg_1.b.a.x)), arg_1.a)), !(-1517f == _wgslsmith_f_op_f32(var_1.x + arg_2.x)), arg_1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))));
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 22u)];
    var_0 = Struct_2(true, Struct_1(var_0.b.a));
    let var_1 = _wgslsmith_f_op_f32(func_2(u_input.c.x, Struct_2(true, var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1758f, 1011f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(401f, -666f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(-629f, 1129f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1, -2558f, var_1)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1, 185f, var_1)), vec4<f32>(-810f, -1342f, 148f, var_1)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)), var_1), var_1, _wgslsmith_f_op_f32(var_1 * 370f)));
    let var_3 = Struct_2(var_0.a, var_0.b);
    return var_3.b;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(!(false & arg_0.a.x), !(!func_1().a.x), arg_0.a.x);
    var_0 = !(!(!vec3<bool>(true, !var_0.x, arg_0.a.x)));
    let var_1 = global1[_wgslsmith_index_u32(1u, 22u)];
    var var_2 = u_input.c.x;
    var_2 = 1u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    let var_0 = func_4(func_1());
    let var_1 = _wgslsmith_add_u32(4294967295u, ~u_input.c.x);
    var var_2 = !vec3<bool>(!(!(!var_0.a.x)), any(func_1().a), var_0.a.x);
    var var_3 = global1[_wgslsmith_index_u32(abs(4294967295u), 22u)];
    var_2 = select(vec3<bool>(any(!select(vec4<bool>(false, var_3.a, true, var_2.x), vec4<bool>(true, var_3.a, false, true), var_3.b.a.x)), false, true), select(vec3<bool>(true, var_0.a.x, var_2.x), vec3<bool>(false, true, !var_0.a.x), all(select(vec3<bool>(var_2.x, var_3.b.a.x, true), select(vec3<bool>(var_3.b.a.x, true, var_3.b.a.x), vec3<bool>(var_3.a, var_2.x, true), true), true))), !(u_input.b.x == ~20152i));
    var var_4 = _wgslsmith_mult_u32(var_1, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, u_input.c.x, var_1, u_input.c.x & 30660u), ~(~vec4<u32>(u_input.c.x, var_1, 96861u, var_1))), _wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.c.x, 4294967295u, var_1), vec4<u32>(39447u, var_1, 15662u, 0u)), var_1 | u_input.c.x) | (u_input.c.x ^ abs(9785u))));
    var var_5 = vec4<i32>(1i, max(~_wgslsmith_add_i32(1i, min(u_input.a, u_input.b.x)), ~0i), _wgslsmith_sub_i32(_wgslsmith_add_i32(min(u_input.b.x, u_input.b.x), _wgslsmith_sub_i32(1i, 2147483647i) & _wgslsmith_div_i32(u_input.b.x, u_input.a)), _wgslsmith_sub_i32(u_input.a ^ (u_input.a >> (63765u % 32u)), -1i)), reverseBits(0i));
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.zyw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-460f, 170f), -568f, true)), 780f)));
}

