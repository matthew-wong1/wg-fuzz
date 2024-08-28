struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, false, false, true, false, false, false, false, false, false, false, false, false, false, true, true, true, true, false, true, true, false, true, true, true, false);

var<private> global1: array<f32, 26>;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global3 = array<Struct_1, 10>();
    global3 = array<Struct_1, 10>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 10u)];
    global1 = array<f32, 26>();
    var var_1 = vec4<i32>(~u_input.a, 1363i, u_input.a >> (_wgslsmith_div_u32(2287u, 1u) % 32u), firstTrailingBit(_wgslsmith_add_i32(-16228i, 25500i)));
    return vec2<bool>(global0[_wgslsmith_index_u32(~(~1u), 26u)], false);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    return u_input.b;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = !select(select(select(arg_1.wy, !vec2<bool>(arg_1.x, global0[_wgslsmith_index_u32(1u, 26u)]), any(arg_1)), select(arg_1.xw, !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), false), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false, false))), !arg_1.yw, func_2(global3[_wgslsmith_index_u32(0u | ~u_input.b.x, 10u)]));
    let var_1 = !arg_1.x;
    var var_2 = select(arg_1, !select(select(select(arg_1, vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, false, false)), select(arg_1, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false, var_1, true), arg_1), !vec4<bool>(true, arg_1.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(firstLeadingBit(25386u), 26u)], u_input.b.x > 48890u, arg_1.x & global0[_wgslsmith_index_u32(25976u, 26u)]), any(select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_1), vec2<bool>(var_0.x, false)))), arg_1);
    global0 = array<bool, 26>();
    return _wgslsmith_dot_vec4_u32(func_3(var_2.x), ~(_wgslsmith_div_vec4_u32(select(u_input.b, vec4<u32>(u_input.b.x, 0u, 38488u, u_input.b.x), arg_1), u_input.b) ^ select(~vec4<u32>(0u, 44048u, 94211u, u_input.b.x), u_input.b, true)));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = array<bool, 26>();
    global2 = vec2<f32>(893f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f - _wgslsmith_f_op_f32(ceil(-721f)))), -311f)));
    global1 = array<f32, 26>();
    global2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-706f, 437f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(869f, -547f) + vec2<f32>(global2.x, global1[_wgslsmith_index_u32(4294967295u, 26u)])), vec2<bool>(true, true))))), vec2<f32>(535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-248f)))) + _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 26u)])))))));
    var var_0 = global2.x;
    return -3211f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 10>();
    let var_0 = Struct_1(vec3<bool>(!(u_input.b.x > ~u_input.b.x), true, true));
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -996f))) * -108f), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), !select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true, true, false), true))), 10u)]));
    global1 = array<f32, 26>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, -268f, global2.x, -1000f))))))));
    let var_4 = var_0;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~(-1i))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~4294967295u, 26u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1349f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(var_3.yy)), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(40669u, 26u)])), -1132f)))), var_3, u_input.b);
}

