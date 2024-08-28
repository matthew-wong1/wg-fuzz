struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<f32, 6> = array<f32, 6>(979f, 659f, -327f, 1160f, -476f, 309f);

var<private> global2: array<f32, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = all(select(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0), select(arg_0, arg_0, arg_0)), vec2<bool>(true, !arg_0), select(vec2<bool>(true, all(vec4<bool>(arg_0, arg_0, arg_0, false))), !(!vec2<bool>(arg_0, arg_0)), arg_0)));
    var_0 = true;
    var_0 = true;
    var var_1 = arg_1;
    global1 = array<f32, 6>();
    return select(vec3<bool>(false, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(127264u, 6u)])))), !select(vec3<bool>(arg_0, false || arg_0, !arg_0), select(select(vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, true), false), !vec3<bool>(false, arg_0, true), true), any(!vec4<bool>(true, arg_0, true, false))), select(select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, true), vec3<bool>(arg_0, arg_0, true)), !select(vec3<bool>(true, false, false), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0)), !arg_0 & true), vec3<bool>(arg_0, true, !arg_0), vec3<bool>(arg_0, (-1000f != arg_1.a.x) || all(vec3<bool>(true, arg_0, false)), arg_0)));
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.a, vec2<f32>(-1000f, -452f)))) + _wgslsmith_f_op_vec2_f32(-global0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -814f)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~63281u, 6u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - global2[_wgslsmith_index_u32(4294967295u, 6u)])), global0.a.x)))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(-426f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a));
    return all(vec3<bool>(1000f > _wgslsmith_f_op_f32(min(global0.a.x, var_1.x)), all(func_3(u_input.a.x >= 2147483647i, Struct_1(vec2<f32>(475f, -426f)))), all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(select(0u, abs(4294967295u), func_2(global0.a.x, 497f)), 6u)], _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(17365u, 6u)])), global0.a.x), global0.a), func_2(global1[_wgslsmith_index_u32(86445u, 6u)], global2[_wgslsmith_index_u32(~1u, 6u)])));
    var var_1 = vec3<i32>(max(-8316i ^ (abs(u_input.a.x) | ~u_input.a.x), u_input.a.x), -u_input.a.x, abs(u_input.a.x) & u_input.a.x);
    global2 = array<f32, 6>();
    global2 = array<f32, 6>();
    let var_2 = 2147483647i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(2207f * -764f), _wgslsmith_f_op_f32(min(-224f, 1000f))), var_0, vec2<bool>(any(vec2<bool>(true, true)), true))) * _wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_div_vec2_f32(global0.a, var_0))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = ~(~firstTrailingBit(_wgslsmith_div_u32(4294967295u, 4294967295u)));
    var var_1 = ~vec4<u32>(~(min(1u, 1u) | ~var_0), var_0, 46735u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(46169u, var_0), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, var_0))));
    return vec2<f32>(-289f, 528f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<f32>(global0.a.x, 589f)), func_1()))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(~1u, 6u)], -1000f))));
    global1 = array<f32, 6>();
    global2 = array<f32, 6>();
    var var_1 = func_1();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), func_1().a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-670f, global1[_wgslsmith_index_u32(9736u, 6u)], false))), _wgslsmith_f_op_f32(-func_1().a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2, var_0.a.x) + vec3<f32>(var_2, global2[_wgslsmith_index_u32(34458u, 6u)], -585f)), vec3<f32>(-417f, global2[_wgslsmith_index_u32(37989u, 6u)], global0.a.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, global1[_wgslsmith_index_u32(6354u, 6u)], 934f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-236f, 1119f, global2[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(907f, -1072f, -2193f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(370f, -835f, -1792f), vec3<f32>(295f, -156f, -1263f), vec3<bool>(true, true, false))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2, -203f, 692f), vec3<f32>(442f, global2[_wgslsmith_index_u32(0u, 6u)], 273f)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(43366i << (0u % 32u));
}

