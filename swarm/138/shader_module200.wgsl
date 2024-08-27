struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 32>;

var<private> global3: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = any(select(select(vec3<bool>(global3.x == true, false, true), !select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, false, global3.x)), false), select(!(!vec3<bool>(false, false, global3.x)), select(vec3<bool>(true, global3.x, true), !vec3<bool>(global3.x, true, global3.x), global3.x), global3.x), false));
    global1 = arg_2;
    let var_0 = ~((max(vec3<i32>(0i, -190i, 0i) >> (vec3<u32>(1u, 48732u, u_input.b.x) % vec3<u32>(32u)), select(vec3<i32>(-24925i, u_input.a, arg_0), vec3<i32>(24439i, u_input.a, u_input.a), vec3<bool>(global3.x, true, true))) ^ (vec3<i32>(0i, 0i, 2147483647i) | -vec3<i32>(6876i, 11886i, arg_0))) | vec3<i32>(_wgslsmith_add_i32(0i, u_input.a) << (~91441u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) & vec2<i32>(u_input.a, arg_0), -vec2<i32>(-1i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(26132i, 0i, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, 59578u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))));
    let var_1 = vec2<i32>(arg_0, -2147483647i);
    global1 = arg_2;
    return !(~(~5108u) == (u_input.b.x >> ((_wgslsmith_mod_u32(13663u, u_input.b.x) >> (1444u % 32u)) % 32u)));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<bool> {
    global3 = select(!select(vec2<bool>(any(vec3<bool>(global3.x, false, global3.x)), global3.x), vec2<bool>(true, u_input.a > u_input.a), true), select(vec2<bool>(any(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, false), global3.x)), func_3(_wgslsmith_mod_i32(u_input.a, u_input.a), Struct_1(global1.a), Struct_1(vec2<f32>(global1.a.x, 927f)))), !(!select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, false), vec2<bool>(true, global3.x))), global3.x), !(!select(vec2<bool>(true, true), !vec2<bool>(true, global3.x), !vec2<bool>(true, global3.x))));
    var var_0 = _wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(~arg_0, 32u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.x - global1.a.x), 588f)), 278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1050f))))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(2526f, -226f, global3.x)), _wgslsmith_div_f32(269f, -331f))), 1356f))));
    var var_2 = _wgslsmith_add_u32(arg_1, ~30304u);
    global2 = array<vec3<f32>, 32>();
    return !(!vec2<bool>(true, -1088f < _wgslsmith_f_op_f32(sign(387f))));
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    global2 = array<vec3<f32>, 32>();
    let var_0 = !vec2<bool>(true, arg_1);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1079f, global1.a.x)) + global1.a), global1.a) - vec2<f32>(-355f, _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-global1.a.x)))));
    global3 = func_2(20781u, select(24326u, ~(~u_input.b.x), all(!(!vec3<bool>(arg_1, true, false)))));
    let var_2 = -1117f;
    return _wgslsmith_f_op_f32(f32(-1f) * -461f);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = vec3<bool>(true, all(!vec3<bool>(false || global3.x, any(vec4<bool>(true, true, global3.x, false)), all(vec2<bool>(global3.x, global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * -1743f) - _wgslsmith_f_op_f32(-arg_0.x)) * -875f) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, -1595f))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))));
    global3 = vec2<bool>(func_2(135199u, 0u).x, all(!select(vec2<bool>(var_0.x, var_0.x), var_0.yy, vec2<bool>(true, true))));
    let var_1 = Struct_1(global1.a);
    let var_2 = -u_input.a;
    let var_3 = var_1;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b.x, u_input.a <= 78153i))), -1148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), firstTrailingBit(u_input.a));
    global2 = array<vec3<f32>, 32>();
    var var_0 = true;
    let var_1 = false;
    let var_2 = !any(select(select(vec4<bool>(var_1, global3.x, var_1, global3.x), select(vec4<bool>(var_1, var_1, global3.x, var_1), vec4<bool>(true, global3.x, true, var_1), true), global3.x && true), !(!vec4<bool>(true, global3.x, global3.x, false)), any(func_2(u_input.b.x, u_input.b.x))));
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(abs(global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(4294967295u, 59555u)), 32u)])), -523i);
    global3 = vec2<bool>(select(all(!vec3<bool>(false, var_1, var_2)), var_1, !(!(-2147483647i != u_input.a))), !(!all(vec3<bool>(false, true, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(global2[_wgslsmith_index_u32(~24446u, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)])), -2147483647i, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 17555u), vec3<u32>(u_input.b.x, 0u, 1100u)), abs(12728u), firstTrailingBit(u_input.b.x)), ~countOneBits(vec3<u32>(34679u, u_input.b.x, u_input.b.x))), reverseBits(select(~vec3<u32>(u_input.b.x, 22113u, 18860u), firstTrailingBit(vec3<u32>(0u, 4294967295u, u_input.b.x)), select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(var_1, global3.x, false), false)))));
}

