struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(false, -226f, vec2<f32>(-1794f, -950f));

var<private> global1: array<u32, 9> = array<u32, 9>(113385u, 4294967295u, 0u, 0u, 23643u, 5827u, 4294967295u, 4294967295u, 1u);

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<bool>(true, true), 4294967295u), Struct_2(vec2<bool>(false, true), 4294967295u), Struct_2(vec2<bool>(false, true), 68102u), Struct_2(vec2<bool>(true, true), 33542u), Struct_2(vec2<bool>(true, false), 76181u), Struct_2(vec2<bool>(true, false), 105073u), Struct_2(vec2<bool>(true, false), 4294967295u), Struct_2(vec2<bool>(true, false), 1u), Struct_2(vec2<bool>(true, true), 4294967295u), Struct_2(vec2<bool>(true, true), 73026u), Struct_2(vec2<bool>(true, true), 1u), Struct_2(vec2<bool>(true, false), 49136u), Struct_2(vec2<bool>(true, true), 1u), Struct_2(vec2<bool>(false, false), 14111u), Struct_2(vec2<bool>(true, false), 0u), Struct_2(vec2<bool>(true, false), 0u), Struct_2(vec2<bool>(false, false), 54815u), Struct_2(vec2<bool>(true, false), 2891u), Struct_2(vec2<bool>(true, true), 4294967295u), Struct_2(vec2<bool>(true, true), 29391u), Struct_2(vec2<bool>(true, false), 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec3<u32> {
    global2 = array<Struct_2, 21>();
    global2 = array<Struct_2, 21>();
    var var_0 = abs(vec2<i32>(-2147483647i, -1i));
    let var_1 = Struct_1(all(vec4<bool>(_wgslsmith_div_u32(u_input.a, u_input.c.x) < 20808u, true, false, global0.a)), 376f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-970f, -280f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0))), _wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-299f, arg_0))))))));
    var var_2 = !all(!select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, global0.a), vec2<bool>(false, true)));
    return vec3<u32>(~select(25082u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(126014u | _wgslsmith_div_u32(u_input.a, 44510u), 9u)], 9u)], all(select(vec2<bool>(true, var_1.a), vec2<bool>(true, true), global0.a))), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.c.x, 1u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)] % 32u))), 9u)], _wgslsmith_dot_vec2_u32(~(u_input.c ^ u_input.c), countOneBits(vec2<u32>(4294967295u, 15111u)) | u_input.c));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = max(reverseBits(vec3<u32>(~1u, global1[_wgslsmith_index_u32(57474u, 9u)], 0u)) & ~(~vec3<u32>(global1[_wgslsmith_index_u32(73765u, 9u)], 0u, global1[_wgslsmith_index_u32(17255u, 9u)])), ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1386f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = u_input.b;
    return Struct_1(all(select(select(vec2<bool>(false, arg_1.a), !vec2<bool>(true, arg_1.a), !vec2<bool>(global0.a, var_0.a)), !select(vec2<bool>(false, true), vec2<bool>(var_0.a, arg_1.a), global0.a), select(!vec2<bool>(true, global0.a), select(vec2<bool>(global0.a, true), vec2<bool>(global0.a, true), vec2<bool>(arg_1.a, var_0.a)), all(vec3<bool>(false, arg_1.a, var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(232f, var_0.b)) * global0.c.x))), _wgslsmith_f_op_vec2_f32(-var_0.c));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = 18980u;
    let var_1 = func_2(arg_1.b, arg_1);
    global2 = array<Struct_2, 21>();
    let var_2 = select(u_input.c, abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, u_input.a), vec2<u32>(0u, 2008u)), countOneBits(~vec2<u32>(var_0, 4294967295u)))), select(!(!select(vec2<bool>(true, true), vec2<bool>(arg_0.a.x, var_1.a), false)), select(select(arg_0.a, !arg_0.a, !global0.a), select(vec2<bool>(global0.a, var_1.a), select(vec2<bool>(arg_1.a, true), arg_0.a, arg_0.a.x), global1[_wgslsmith_index_u32(u_input.a, 9u)] > 55627u), false), all(select(select(vec3<bool>(var_1.a, true, true), vec3<bool>(true, arg_0.a.x, global0.a), var_1.a), !vec3<bool>(arg_0.a.x, true, false), vec3<bool>(global0.a, false, global0.a)))));
    var var_3 = Struct_2(arg_0.a, countOneBits(~func_3(var_1.b).x));
    return ~_wgslsmith_dot_vec2_u32(u_input.c, ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 48884u), ~var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(5034u, 21u)], Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -625f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1795f, global0.c.x))))))), 21u)];
    global0 = Struct_1(global0.a, -1341f, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global0.c.x, global0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-830f)) * 1000f)));
    global0 = Struct_1(!any(vec4<bool>(true | global0.a, false, all(vec4<bool>(true, true, true, false)), global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1748f), _wgslsmith_f_op_vec2_f32(global0.c + vec2<f32>(_wgslsmith_f_op_f32(sign(120f)), _wgslsmith_f_op_f32(-global0.c.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, global0.b, global0.b, global0.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, global0.b, -1883f, global0.b))))));
    global1 = array<u32, 9>();
    global2 = array<Struct_2, 21>();
    global1 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.c.x - global0.c.x))), _wgslsmith_f_op_f32(sign(1799f)))));
}

