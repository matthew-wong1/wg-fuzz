struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32) -> f32 {
    global1 = array<Struct_1, 20>();
    global0 = Struct_1(u_input.a.yy);
    global0 = global1[_wgslsmith_index_u32(~arg_1, 20u)];
    let var_0 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-707f * 520f), 769f, false))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(559f * -261f), -1000f)), -594f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<f32> {
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    global0 = global1[_wgslsmith_index_u32(~(~global0.a.x), 20u)];
    let var_0 = _wgslsmith_f_op_f32(func_3(abs(u_input.b), ~global0.a.x, _wgslsmith_clamp_i32(~u_input.b, -24058i, u_input.b)));
    global0 = arg_2;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-568f, 138f, -1774f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -746f, -1088f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), 608f) * vec3<f32>(_wgslsmith_f_op_f32(func_3(-8568i, u_input.c, u_input.b)), -613f, _wgslsmith_f_op_f32(floor(var_0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(149f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(302f, -1124f))))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = arg_0.wx;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_f32(1563f, 1448f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(458f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(918f * -969f)), -433f, -260f)), global1[_wgslsmith_index_u32(84250u, 20u)]));
    global1 = array<Struct_1, 20>();
    var var_2 = _wgslsmith_f_op_f32(623f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true || arg_0.x))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)));
    return vec4<u32>(_wgslsmith_sub_u32(~abs(~u_input.c), _wgslsmith_add_u32(global0.a.x, 4294967295u)), ~_wgslsmith_mod_u32(~(~u_input.c), reverseBits(u_input.a.x)), firstTrailingBit(1u) & _wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.a), ~(~u_input.a)), _wgslsmith_sub_u32(~global0.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a ^ u_input.a, select(u_input.a, u_input.a, arg_0.zzw)), abs(vec3<u32>(global0.a.x, 4294967295u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, global0.a.x)), vec4<u32>(0u, 1u, select(u_input.c, u_input.a.x, false), ~52359u) & select(func_1(vec4<bool>(false, false, true, false)), vec4<u32>(global0.a.x, global0.a.x, 92778u, u_input.a.x) << (vec4<u32>(u_input.c, u_input.a.x, 0u, global0.a.x) % vec4<u32>(32u)), true)) | ~(~global0.a.x), 20u)];
    var var_0 = countOneBits(~_wgslsmith_mult_vec3_u32(u_input.a, ~u_input.a));
    let var_1 = false;
    let var_2 = select(1u, _wgslsmith_sub_u32(~global0.a.x, min(u_input.a.x, global0.a.x)), all(select(!select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, false, var_1, var_1)), select(select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, var_1, true), var_1), select(vec4<bool>(true, true, false, true), vec4<bool>(var_1, var_1, true, true), vec4<bool>(false, true, false, false)), !var_1), true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-665f, -1255f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(964f, -706f)), 1421f), -449f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-237f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1297f)))))));
    var var_4 = Struct_1(~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, var_2), vec2<u32>(var_0.x, 6874u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b, abs(abs(0i)), -14423i), vec3<i32>(-u_input.b, _wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, 2181i), ~1i), i32(-1i) * -16357i), ~var_4.a, u_input.b);
}

