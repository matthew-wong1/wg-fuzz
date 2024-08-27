struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<bool, 18>;

var<private> global2: u32;

var<private> global3: i32;

var<private> global4: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    return global4.x;
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    var var_0 = Struct_1(select(vec4<bool>(arg_1, !arg_1, (u_input.a.x == 7737i) && !arg_1, true), vec4<bool>(!(u_input.c > 22270u), arg_1, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(arg_1, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29915u, 32u)], 18u)]))), -u_input.b < abs(2147483647i)), all(select(vec4<bool>(true, false, false, arg_0), select(vec4<bool>(arg_0, arg_1, arg_0, global1[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], true), vec4<bool>(global1[_wgslsmith_index_u32(53461u, 18u)], false, true, global1[_wgslsmith_index_u32(u_input.d.x, 18u)])), true))));
    global1 = array<bool, 18>();
    let var_1 = Struct_1(vec4<bool>(arg_0, any(var_0.a), false | select(!arg_0, !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21913u, 32u)], 18u)], var_0.a.x), !any(!var_0.a)));
    return -2147483647i;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global2 = ~4294967295u;
    var var_0 = 33440i;
    global0 = array<u32, 32>();
    var_0 = -23171i;
    let var_1 = firstTrailingBit(-vec2<i32>(1i, func_3(all(vec3<bool>(global1[_wgslsmith_index_u32(38173u, 18u)], global1[_wgslsmith_index_u32(33891u, 18u)], true)), arg_3)));
    return global4.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<f32> {
    global3 = -18084i;
    global2 = ~global0[_wgslsmith_index_u32(min(~(~min(global0[_wgslsmith_index_u32(9429u, 32u)], global0[_wgslsmith_index_u32(79553u, 32u)])), ~(~39381u)), 32u)];
    var var_0 = Struct_1(select(!vec4<bool>(!arg_0.a.x, true, true, u_input.c >= u_input.c), arg_0.a, select(arg_0.a, select(arg_0.a, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], true, false, global1[_wgslsmith_index_u32(47555u, 18u)]), !arg_0.a.x), global1[_wgslsmith_index_u32(1u, 18u)])));
    global0 = array<u32, 32>();
    global2 = _wgslsmith_div_u32(58044u, u_input.d.x);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + 519f), _wgslsmith_f_op_f32(abs(210f)), -725f) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1729f, -1226f, 310f))), _wgslsmith_f_op_vec3_f32(arg_1.wyw * arg_1.zzw)))) - _wgslsmith_f_op_vec3_f32(arg_1.xww * vec3<f32>(-106f, _wgslsmith_f_op_f32(round(559f)), 1145f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-863f, global4.x, global4.x), arg_1.yxw))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.www * vec3<f32>(1356f, 1616f, -710f)), _wgslsmith_f_op_vec3_f32(arg_1.yxx + vec3<f32>(global4.x, -950f, arg_1.x)), -1i < u_input.a.x))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(612f, arg_1.x, global4.x)), arg_1.yyy))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -941f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -451f), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44011u, 32u)], 18u)], global1[_wgslsmith_index_u32(33065u, 18u)]), false))))), global4.x));
    var var_0 = global4.x;
    global3 = 0i;
    global4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(987f, _wgslsmith_f_op_f32(-global4.x)), -1430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global4.x) * global4.x))), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(!vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 18u)], true, true)), vec4<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(func_2(global4.x, vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 32u)], 18u)], false), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(27320u, 18u)], global1[_wgslsmith_index_u32(547u, 18u)], global1[_wgslsmith_index_u32(18964u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)])), global1[_wgslsmith_index_u32(1u, 18u)]))))))));
    var var_1 = 0u;
    var var_2 = !(!vec3<bool>(select(false, true, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.c, 18u)]))), global1[_wgslsmith_index_u32(1u, 18u)], all(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 18u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2043f - 201f))))));
}

