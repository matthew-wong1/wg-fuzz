struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<vec2<f32>, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    return Struct_1(~u_input.b.x, 24661i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-685f, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1452f, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(23853u, 23u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1227f, 1000f, 460f), vec3<f32>(-1028f, 234f, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-629f, 1715f, -667f) * vec3<f32>(771f, -748f, global0[_wgslsmith_index_u32(44097u, 23u)])))))), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(579f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9599u, 23u)] + -1000f)) + arg_0.c.x), arg_1.c.x));
    let var_2 = arg_1;
    let var_3 = 16890i;
    let var_4 = arg_1;
    return 34853i;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = func_1();
    global0 = array<f32, 23>();
    global1 = array<vec2<f32>, 31>();
    var var_1 = func_1();
    var var_2 = arg_0.a;
    return _wgslsmith_mult_i32(~2147483647i, var_1.b) & var_1.b;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: f32) -> i32 {
    var var_0 = vec2<i32>(~_wgslsmith_add_i32(1i, -arg_0) ^ abs(-4083i), 0i);
    let var_1 = func_1();
    var var_2 = select(select(select(vec3<bool>(all(arg_2), !var_1.d, true), !select(vec3<bool>(true, var_1.d, false), vec3<bool>(false, arg_2.x, arg_2.x), true), var_1.d), !(!vec3<bool>(false, arg_2.x, false)), all(vec3<bool>(!arg_2.x, arg_2.x, select(arg_2.x, arg_2.x, arg_2.x)))), select(vec3<bool>(func_1().d, arg_2.x, any(!arg_2)), vec3<bool>(true, true, true), vec3<bool>(arg_2.x, arg_2.x, !any(vec3<bool>(arg_2.x, false, arg_2.x)))), !vec3<bool>(var_1.d, all(select(vec4<bool>(arg_2.x, var_1.d, arg_2.x, false), vec4<bool>(true, arg_2.x, arg_2.x, var_1.d), vec4<bool>(true, arg_2.x, var_1.d, arg_2.x))), !var_1.d));
    let var_3 = !vec2<bool>(any(vec2<bool>(all(vec4<bool>(var_1.d, false, var_1.d, var_2.x)), arg_2.x)), arg_2.x);
    global0 = array<f32, 23>();
    return select(-_wgslsmith_div_i32(3719i, var_1.b), arg_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 31>();
    var var_0 = ~3855i;
    let var_1 = Struct_1(~4294967295u, func_2(func_1(), Struct_1(~u_input.a, 38733i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(31220u, 23u)])), vec3<f32>(1163f, 1771f, global0[_wgslsmith_index_u32(u_input.a, 23u)]))), false), 47071u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], -130f, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-803f, global0[_wgslsmith_index_u32(2361u, 23u)], 1341f) * vec3<f32>(1803f, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(85747u, 23u)])))))), any(select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.a, 23u)] >= 750f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, false, true)), true)));
    global0 = array<f32, 23>();
    let var_2 = var_1;
    global0 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, min(func_4(func_3(var_2, _wgslsmith_f_op_f32(exp2(var_2.c.x)), -23503i != var_2.b), ~select(vec4<i32>(-19539i, var_2.b, -2147483647i, var_2.b), vec4<i32>(var_1.b, var_2.b, var_2.b, var_1.b), vec4<bool>(var_1.d, true, false, var_2.d)), !vec2<bool>(false, var_1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f), var_2.c.x)), var_1.b));
}

