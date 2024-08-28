struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-245f, -465f, 126f, 1500f, -364f, -1706f, 514f, 1000f, 1543f, 1608f, -1088f, 116f, 1146f, 647f, 378f, 1847f, 776f, 706f);

var<private> global1: bool;

var<private> global2: f32;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(~select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(arg_0.a.x, arg_0.a.x, 4294967295u)), ~vec3<u32>(1u, arg_0.a.x, arg_0.a.x), !vec3<bool>(false, arg_0.b, arg_2.x)), vec3<u32>(firstTrailingBit(~global3.a.x), ~arg_0.a.x, abs(arg_0.a.x << (global3.a.x % 32u))), ~(~vec3<u32>(17106u, 42796u, global3.a.x)) | ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.a.x, 1u), vec3<u32>(4294967295u, 8190u, global3.a.x)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.x, 18u)]));
    var var_1 = arg_0;
    global3 = arg_0;
    var_1 = Struct_1(vec2<u32>(arg_0.a.x & var_1.a.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_0.x), vec2<u32>(var_0.x, var_1.a.x)), min(arg_0.a.x, var_0.x))), any(!vec3<bool>(var_1.b, any(vec3<bool>(false, global3.b, false)), false)));
    return vec2<i32>(-abs(-71071i), max(-17039i, -2534i));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global2 = global0[_wgslsmith_index_u32(firstTrailingBit(arg_0 | abs(arg_0)), 18u)];
    global0 = array<f32, 18>();
    let var_0 = func_3(Struct_1(global3.a, any(vec2<bool>(-552f == global0[_wgslsmith_index_u32(6528u, 18u)], -4327i > u_input.b))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a.x, arg_0 << (56911u % 32u)), 18u)], _wgslsmith_f_op_f32(abs(2118f))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, global3.b), vec2<bool>(global3.b, global3.b), true), vec2<bool>(global3.b, global3.b))));
    global0 = array<f32, 18>();
    var var_1 = vec2<i32>(abs(var_0.x), u_input.a.x);
    return !select(!vec2<bool>(global3.a.x <= 4294967295u, all(vec4<bool>(false, global3.b, global3.b, global3.b))), !vec2<bool>(true, all(vec3<bool>(global3.b, true, false))), -568f <= global0[_wgslsmith_index_u32(min(~global3.a.x, global3.a.x), 18u)]);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = global3.b;
    var var_0 = select(select(!func_2(14931u), select(select(vec2<bool>(false, global3.b), vec2<bool>(global3.b, false), true), !select(vec2<bool>(true, global3.b), vec2<bool>(global3.b, global3.b), vec2<bool>(true, global3.b)), vec2<bool>(-1000f <= global0[_wgslsmith_index_u32(global3.a.x, 18u)], true)), true), !select(!select(vec2<bool>(false, global3.b), vec2<bool>(false, true), vec2<bool>(global3.b, global3.b)), select(!vec2<bool>(global3.b, true), select(vec2<bool>(global3.b, global3.b), vec2<bool>(true, global3.b), vec2<bool>(true, true)), vec2<bool>(global3.b, false)), select(vec2<bool>(true, true), select(vec2<bool>(global3.b, global3.b), vec2<bool>(global3.b, global3.b), global3.b), func_2(4294967295u))), global3.b);
    global2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(global3.a, abs(vec2<u32>(38155u, global3.a.x))), vec2<u32>(global3.a.x, global3.a.x)), 18u)] + -429f);
    global0 = array<f32, 18>();
    global1 = true;
    return Struct_1(~(~_wgslsmith_mod_vec2_u32(global3.a, vec2<u32>(global3.a.x, 4841u))) ^ vec2<u32>(~(~21094u), _wgslsmith_mod_u32(countOneBits(44855u), global3.a.x)), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = Struct_1(~countOneBits(~global3.a | _wgslsmith_sub_vec2_u32(global3.a, global3.a)), true);
    let var_2 = func_1(abs(~firstTrailingBit(0i)));
    let var_3 = ~_wgslsmith_add_vec3_u32(select(abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.x, 16689u, 29827u), vec3<u32>(global3.a.x, global3.a.x, 0u))), (vec3<u32>(var_1.a.x, 0u, 4294967295u) ^ vec3<u32>(var_0, 4294967295u, 1u)) >> (~vec3<u32>(1u, 1u, var_0) % vec3<u32>(32u)), !vec3<bool>(false, global3.b, true)), vec3<u32>(var_0 & ~4294967295u, var_2.a.x, ~18644u));
    global2 = 296f;
    global3 = var_1;
    var var_4 = !(u_input.b < 2147483647i);
    let var_5 = ~vec4<u32>(abs(~32936u), 1u, _wgslsmith_add_u32(_wgslsmith_add_u32(max(global3.a.x, 1u), var_2.a.x), firstTrailingBit(44550u)), ~0u);
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1036f, 619f)) + 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-712f)), ~vec3<u32>(reverseBits(0u), 1u, _wgslsmith_div_u32(var_0, 1u)) & _wgslsmith_clamp_vec3_u32(~select(var_5.yww, var_5.xxw, true), ~vec3<u32>(18518u, 78012u, 0u), vec3<u32>(var_1.a.x, 4294967295u, 24576u) & vec3<u32>(2832u, global3.a.x, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 18u)])) * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_1.a.x, 18u)], _wgslsmith_f_op_f32(f32(-1f) * -557f), true))) + 331f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1146f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_5.x, 18u)], -2024f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(767f, global0[_wgslsmith_index_u32(global3.a.x, 18u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1204f, 494f))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_5.x, 18u)], -1656f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(902f, global0[_wgslsmith_index_u32(0u, 18u)]) * vec2<f32>(-148f, global0[_wgslsmith_index_u32(var_1.a.x, 18u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(var_2.a.x, 18u)])) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(var_3.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec2<f32>(global0[_wgslsmith_index_u32(51140u, 18u)], global0[_wgslsmith_index_u32(var_5.x, 18u)]))))))));
}

