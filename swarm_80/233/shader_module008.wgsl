struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31342u;

var<private> global1: array<bool, 29> = array<bool, 29>(false, false, false, false, true, false, true, true, true, true, true, true, false, false, false, false, false, true, false, true, true, true, true, true, true, true, false, true, true);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(-2038f, 177f)), vec2<f32>(-491f, 150f), 2054f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = array<bool, 29>();
    var var_0 = (firstTrailingBit(54368u) ^ ~(~u_input.b)) != u_input.b;
    var var_1 = global2.a;
    var var_2 = Struct_2(global2.a, vec2<f32>(-1932f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) * _wgslsmith_f_op_f32(select(-242f, _wgslsmith_f_op_f32(select(var_1.a.x, global2.b.x, global1[_wgslsmith_index_u32(0u, 29u)])), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)])))))), _wgslsmith_div_f32(-682f, -785f));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c, 1228f), vec2<f32>(-636f, global2.b.x), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(299f, -1023f), global2.a.a) + vec2<f32>(643f, _wgslsmith_f_op_f32(select(-1000f, var_1.a.x, global1[_wgslsmith_index_u32(70480u, 29u)]))))));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = -vec2<i32>(u_input.a.x, u_input.a.x);
    let var_1 = global2.a;
    var var_2 = vec2<bool>(true, select(any(!select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<bool>(false, true), true)), false | (_wgslsmith_f_op_f32(f32(-1f) * -715f) < _wgslsmith_f_op_f32(select(755f, global2.a.a.x, false))), !func_3()));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(ceil(global2.a.a.x)))) * _wgslsmith_f_op_f32(round(var_1.a.x))), _wgslsmith_f_op_f32(1000f - var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - global2.c), !all(vec4<bool>(true, false, false, var_2.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, -1048f, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -1403f, 507f, var_1.a.x))))))));
    global1 = array<bool, 29>();
    return global2.a;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<f32>) -> f32 {
    global2 = Struct_2(func_2(), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-890f)), 2435f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 1578f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(step(-764f, -686f)), true)), any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(4532u, 29u)])) | all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)])))))));
    let var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(~36146u, 29u)], func_2().a.x != global2.c, global1[_wgslsmith_index_u32(~u_input.b, 29u)]);
    global2 = Struct_2(func_2(), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-190f, 1412f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) * vec2<f32>(global2.a.a.x, global2.b.x))) * arg_2.zz), vec2<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(356f + -1553f)))))), _wgslsmith_f_op_f32(select(func_2().a.x, -1000f, select(false, false, (arg_2.x >= 1394f) != true))));
    global0 = abs(u_input.b);
    var var_1 = 1071f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -556f))), _wgslsmith_f_op_f32(floor(1694f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_u32(1u, 67968u);
    let var_0 = Struct_2(Struct_1(vec2<f32>(-464f, global2.a.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(742f, global2.c)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-279f + global2.a.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1623f, global2.a.a.x, 1631f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.x, 177f, global2.a.a.x, global2.a.a.x), vec4<f32>(1015f, global2.c, global2.c, global2.b.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], true, false)))))), global2.a.a), global2.a.a.x);
    global2 = Struct_2(Struct_1(var_0.b), var_0.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(551f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(var_0.c, vec3<f32>(764f, global2.a.a.x, global2.b.x), vec4<f32>(global2.b.x, -630f, global2.c, -1014f))), global2.a.a.x, false))))));
    let var_1 = var_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_div_f32(global2.a.a.x, global2.c)), vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), -971f)))), global2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -311f));
    var var_3 = select(vec4<bool>(any(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], false, false), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(74098u, u_input.b), 29u)])), true, !(!(u_input.b >= 0u)), false), select(!vec4<bool>(true, func_3(), global1[_wgslsmith_index_u32(u_input.b, 29u)], all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], true))), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(554u, 29u)], false, global1[_wgslsmith_index_u32(2547u, 29u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]))), !global1[_wgslsmith_index_u32(~(u_input.b & 15988u), 29u)]), !(!global1[_wgslsmith_index_u32(u_input.b, 29u)]));
    let var_4 = var_2;
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, abs(~(~(vec2<u32>(22418u, u_input.b) & vec2<u32>(1u, u_input.b)))));
}

