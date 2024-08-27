struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: u32;

var<private> global1: array<f32, 28>;

var<private> global2: array<vec4<i32>, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    global1 = array<f32, 28>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(878f, 1451f, false)), _wgslsmith_f_op_f32(f32(-1f) * -341f))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(countOneBits(50668u), 28u)])), global1[_wgslsmith_index_u32(4294967295u, 28u)])));
    global2 = array<vec4<i32>, 20>();
    let var_1 = 42736u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * global1[_wgslsmith_index_u32(1u, 28u)]), global1[_wgslsmith_index_u32(4294967295u, 28u)], 1928f, -463f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(-950f, global1[_wgslsmith_index_u32(2846u, 28u)], 912f, 1785f)), false))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.a.xw, vec2<f32>(113f, var_2.a.x))) * var_0.a.wy))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.x), -1113f, any(vec2<bool>(true, false)))))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(1i)))));
    var var_1 = u_input.b;
    let var_2 = -_wgslsmith_div_i32(12384i, var_1.x);
    global2 = array<vec4<i32>, 20>();
    return select(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false))), !vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(!select(53956u > u_input.a, any(vec2<bool>(true, false)), true), all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    var var_0 = ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) & vec4<u32>(1u, u_input.a, u_input.a, 19301u), vec4<u32>(0u, 50852u, u_input.a, 4294967295u)), 1u));
    let var_1 = abs(~(-vec4<i32>(select(6296i, 55693i, true), 10132i, select(arg_1.x, 0i, arg_3.x), i32(-1i) * -47769i)));
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    global2 = array<vec4<i32>, 20>();
    return 30667u;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1920f, -340f, -1922f, global1[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<f32>(169f, 446f, global1[_wgslsmith_index_u32(u_input.a, 28u)], 507f)))))));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~(~u_input.a)), 4294967295u), ~(~vec2<u32>(36322u, u_input.a) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(48794u, 83045u, 0u), vec3<u32>(4294967295u, u_input.a, 4294967295u)), u_input.a | u_input.a)));
    return _wgslsmith_sub_u32(func_4(u_input.b.zy, vec2<i32>(0i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 38651i, 26728i), u_input.b.wyw))), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-573f, 239f, var_0.a.x, -208f))), func_2(54868i)), _wgslsmith_add_u32(15060u, u_input.a | min(countOneBits(22086u), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec2<f32>(global1[_wgslsmith_index_u32(select(select(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)], 905f))), u_input.a, false), u_input.a, any(vec4<bool>(true, true, u_input.a >= 0u, true))), 28u)], global1[_wgslsmith_index_u32(~u_input.a | u_input.a, 28u)]);
    global1 = array<f32, 28>();
    var var_2 = ~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(-5055i, 2147483647i)), u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.c, 2147483647i, u_input.c)))), select(~u_input.b.xwy, vec3<i32>(~u_input.b.x, -629i, 2147483647i), any(vec3<bool>(false, true, true))), ~(~select(u_input.b.zwx, vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), true)));
    var var_3 = true & any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, false, true, false))), !func_2(-2147483647i).x));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], var_1.x)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, global1[_wgslsmith_index_u32(u_input.a, 28u)])))))))));
    global0 = _wgslsmith_dot_vec4_u32(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(17847u, u_input.a, 127687u, u_input.a) | vec4<u32>(u_input.a, 1955u, 11865u, 4294967295u), vec4<u32>(4294967295u, 20603u, 4294967295u, u_input.a))), vec4<u32>(1u, _wgslsmith_div_u32(~55943u, 1u), ~42838u, ~abs(~u_input.a)));
    var_0 = select(true, select(true, _wgslsmith_f_op_f32(trunc(1702f)) <= _wgslsmith_div_f32(265f, -228f), false && func_2(26700i).x), all(vec3<bool>(true, true, true))) && any(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~47905u, 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 28u)], 548f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(763f)), 1908f), vec2<f32>(_wgslsmith_f_op_f32(var_1.x + global1[_wgslsmith_index_u32(0u, 28u)]), 612f), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 165f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-692f, var_1.x), vec2<f32>(var_1.x, -382f), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(750f, -207f) + vec2<f32>(var_1.x, 1232f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

