struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec3<f32>, 20>;

var<private> global2: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-1871f, 1685f, 916f), vec3<f32>(109f, 815f, 851f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(666f, arg_0, 509f, arg_0) + vec4<f32>(arg_0, 927f, arg_0, 2418f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(814f, -1970f, arg_0, arg_0)), vec4<bool>(true, true, true, true))), vec4<f32>(714f, _wgslsmith_f_op_f32(min(298f, arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_0)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1569f * arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 1000f)) - vec4<f32>(arg_0, -826f, -371f, arg_0)) + vec4<f32>(_wgslsmith_f_op_f32(round(-974f)), -1164f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 372f, arg_0), vec4<f32>(arg_0, -531f, 967f, -533f), vec4<bool>(true, false, false, true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(886f, -1374f, arg_0, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-402f, 479f, 588f, arg_0) * vec4<f32>(102f, -522f, arg_0, 567f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -898f, arg_0, 149f))), true)))), !any(vec2<bool>(true, true)) & !(true != (u_input.a.x != u_input.a.x))));
    global2 = array<vec3<f32>, 2>();
    global1 = array<vec3<f32>, 20>();
    global1 = array<vec3<f32>, 20>();
    global2 = array<vec3<f32>, 2>();
    return true;
}

fn func_2() -> i32 {
    global1 = array<vec3<f32>, 20>();
    var var_0 = 27861u;
    let var_1 = !select(any(vec2<bool>(false, u_input.a.x <= 2147483647i)), true, true);
    let var_2 = Struct_1(func_3(-338f), _wgslsmith_f_op_f32(1052f * -1000f), -firstLeadingBit(-vec4<i32>(u_input.a.x, 19426i, -26293i, u_input.a.x)), var_1, !select(!vec3<bool>(true, false, var_1), !vec3<bool>(var_1, true, false), all(!vec3<bool>(var_1, var_1, false))));
    var var_3 = 1u;
    return var_2.c.x;
}

fn func_1() -> StorageBuffer {
    global2 = array<vec3<f32>, 2>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, reverseBits(0u)), 21u)];
    global2 = array<vec3<f32>, 2>();
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(floor(var_0.b)), countOneBits(firstTrailingBit(vec4<i32>(2147483647i, 35821i, u_input.a.x, -2147483647i)) << (min(vec4<u32>(0u, 85487u, 1u, 6534u), vec4<u32>(22275u, 1168u, 106185u, 17798u)) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, 33395i) << (1u % 32u), _wgslsmith_mult_i32(func_2(), -1i), u_input.a.x, _wgslsmith_mod_i32(max(u_input.a.x, u_input.a.x), min(var_0.c.x, u_input.a.x))), any(var_0.e) == !(!any(var_0.e.zy)), select(var_0.e, select(vec3<bool>(var_0.e.x || false, var_0.a, var_0.d), select(var_0.e, !var_0.e, var_0.e), true), true));
    var var_2 = _wgslsmith_mult_u32(1u, 1u);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), -1167f, -1441f, 2034f) - vec4<f32>(-915f, -209f, -1000f, -1115f))), -304f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 2>();
    global2 = array<vec3<f32>, 2>();
    global1 = array<vec3<f32>, 20>();
    var var_0 = 1u;
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = func_1();
}

