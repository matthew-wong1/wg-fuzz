struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<bool, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_2 {
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = select(select(vec2<bool>(arg_1 || true, !(!arg_1)), !vec2<bool>(!arg_1, false), !arg_1), select(!vec2<bool>(all(vec3<bool>(false, global3[_wgslsmith_index_u32(3409u, 22u)], true)), !global3[_wgslsmith_index_u32(88294u, 22u)]), !vec2<bool>(global3[_wgslsmith_index_u32(~42429u, 22u)], global3[_wgslsmith_index_u32(abs(1u), 22u)]), select(vec2<bool>(!arg_1, true), vec2<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(true, false))), select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(arg_2, 22u)]), vec2<bool>(true, arg_1), vec2<bool>(global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(1089u, 22u)])), !vec2<bool>(arg_1, true), vec2<bool>(true, global3[_wgslsmith_index_u32(arg_2, 22u)])))), !(!select(select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(global1.a, 22u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(global1.a, 22u)])), !vec2<bool>(false, global3[_wgslsmith_index_u32(57773u, 22u)]), false)));
    global2 = ~global1.a;
    var var_1 = Struct_1(abs(firstLeadingBit(arg_2)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1000f)) + -427f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(132f, 355f))) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(688f)))), _wgslsmith_f_op_f32(floor(-573f)), _wgslsmith_f_op_f32(sign(-1150f)));
    var_0 = !select(!vec2<bool>(any(vec2<bool>(arg_1, arg_1)), true), select(select(select(vec2<bool>(global3[_wgslsmith_index_u32(61884u, 22u)], global3[_wgslsmith_index_u32(global1.a, 22u)]), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)), select(vec2<bool>(true, var_0.x), vec2<bool>(arg_1, false), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(false, false), vec2<bool>(true, arg_1), var_0.x)), select(select(vec2<bool>(var_0.x, global3[_wgslsmith_index_u32(2585u, 22u)]), vec2<bool>(arg_1, var_0.x), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(arg_1, var_0.x), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], false)), select(vec2<bool>(true, arg_1), vec2<bool>(false, global3[_wgslsmith_index_u32(23345u, 22u)]), true)), !vec2<bool>(true, arg_1)), select(vec2<bool>(select(true, global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(0u, 22u)]), true), !(!vec2<bool>(arg_1, arg_1)), !vec2<bool>(false, var_0.x)));
    return any(!(!vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, false)), any(vec3<bool>(false, false, global3[_wgslsmith_index_u32(arg_2, 22u)])), arg_0 == 1i, true)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = select(vec2<bool>(true & (reverseBits(global1.a) > 11815u), !(true || global3[_wgslsmith_index_u32(~arg_0.a.a, 22u)])), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(true, arg_1), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, arg_1)), vec2<bool>(true, true)), arg_1), arg_1);
    let var_1 = ~global1.a;
    let var_2 = -7161i;
    return arg_0.a;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(round(-387f)), true))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1033f, arg_0) - vec2<f32>(259f, arg_0)))))));
    let var_1 = func_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1.a, 4294967295u, 4294967295u), vec3<u32>(arg_1.a, 6693u, 1u), vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a, 22u)], false, global3[_wgslsmith_index_u32(arg_1.a, 22u)])), vec3<u32>(17536u, arg_1.a, 26730u)), ~(~vec3<u32>(1u, 1u, global1.a))), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, 1185f)))) + 236f), global1.a), !func_3(u_input.a, global3[_wgslsmith_index_u32(1u, 22u)], ~firstLeadingBit(28024u)));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f)), arg_0), 201f);
    global1 = Struct_1(~(~(~abs(var_1.a))));
    global3 = array<bool, 22>();
    return select(vec2<bool>(false, all(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1.a, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], false), vec4<bool>(global3[_wgslsmith_index_u32(34958u, 22u)], global3[_wgslsmith_index_u32(26368u, 22u)], true, global3[_wgslsmith_index_u32(32247u, 22u)]), false))), vec2<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 22u)] | global3[_wgslsmith_index_u32(1u, 22u)], !global3[_wgslsmith_index_u32(var_1.a, 22u)])), true), !select(select(vec2<bool>(true, true), !vec2<bool>(true, global3[_wgslsmith_index_u32(var_1.a, 22u)]), all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(82906u, 22u)]))), select(vec2<bool>(global3[_wgslsmith_index_u32(34467u, 22u)], global3[_wgslsmith_index_u32(var_1.a, 22u)]), !vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.a, 22u)]), vec2<bool>(false, false)), all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    global3 = array<bool, 22>();
    let var_1 = select(!(!(!func_1(1610f, Struct_1(global1.a)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, global3[_wgslsmith_index_u32(global1.a, 22u)]), vec2<bool>(global3[_wgslsmith_index_u32(global1.a, 22u)], true), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global1.a), 22u)]), vec2<bool>(false, true)), !(firstLeadingBit(~global1.a) < _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, global1.a), ~vec2<u32>(global1.a, 1u))));
    global2 = 1u;
    var var_2 = ~(1u << (global1.a % 32u));
    global3 = array<bool, 22>();
    global3 = array<bool, 22>();
    var_0 = ~4294967295u;
    let var_3 = !vec4<bool>(var_1.x, true, all(!var_1), any(vec2<bool>(var_1.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(299f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1176f))))), firstLeadingBit(19036i) ^ (reverseBits(u_input.b.x | u_input.b.x) & (_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -1i, -21076i)) | (u_input.a << (51282u % 32u)))), -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1693f, 1439f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, -408f))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1646f)) + _wgslsmith_f_op_f32(max(220f, -1000f))), 301f)));
}

