struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(1u, 4294967295u, 16655u, 2485u, 15243u, 1u, 39068u, 1u, 16239u, 1u, 110318u, 1u, 1u, 22732u, 99275u, 57741u, 39542u, 61637u, 43831u, 30323u, 0u, 26602u, 0u, 0u, 1u, 0u, 44713u, 4294967295u, 85569u, 4294967295u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.a, true);
    var var_1 = min(~(-vec3<i32>(_wgslsmith_add_i32(-2147483647i, -1i), u_input.e, -u_input.b)), ~vec3<i32>(countOneBits(2147483647i), -u_input.b, firstTrailingBit(1i)));
    var var_2 = min(vec2<u32>(~0u, ~4294967295u), firstLeadingBit(select(~(~vec2<u32>(4294967295u, 4294967295u)), ~(~vec2<u32>(u_input.c.x, 42782u)), !(!arg_0.a))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(708f, -1968f)), _wgslsmith_f_op_f32(-1545f + 972f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1858f, -646f)), _wgslsmith_f_op_f32(step(-2191f, 1517f))))));
    var var_4 = select(vec3<i32>(-1i, countOneBits(var_1.x), var_1.x), abs(~(-vec3<i32>(2147483647i, u_input.e, var_1.x))), !(!select(select(vec3<bool>(arg_0.b, var_0.a, var_0.b), vec3<bool>(false, false, true), vec3<bool>(arg_0.b, false, var_0.b)), !vec3<bool>(arg_0.b, true, false), vec3<bool>(false, arg_0.a, var_0.b))));
    return vec4<bool>(all(select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, arg_0.b), !vec4<bool>(false, true, arg_0.a, false), all(vec3<bool>(var_0.a, arg_0.b, var_0.a))), !vec4<bool>(true, arg_0.a, true, var_0.a), !any(vec3<bool>(false, arg_0.b, false)))), !var_0.a, all(vec4<bool>(any(vec4<bool>(arg_0.a, arg_0.b, true, false)), true, all(select(vec3<bool>(var_0.b, true, var_0.a), vec3<bool>(true, false, false), vec3<bool>(false, var_0.b, arg_0.a))), arg_0.a)), any(select(select(vec3<bool>(arg_0.a, false, arg_0.b), vec3<bool>(var_0.b, true, true), vec3<bool>(var_0.a, false, arg_0.a)), !vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.b, var_0.a, true))) | (var_2.x < 1u));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_1(any(vec3<bool>(arg_1, !arg_1, false)) && select(~u_input.a > _wgslsmith_dot_vec4_u32(vec4<u32>(4200u, arg_2.x, 0u, global0[_wgslsmith_index_u32(36575u, 31u)]), vec4<u32>(3509u, u_input.c.x, 4294967295u, u_input.c.x)), false, false), all(select(!(!vec4<bool>(arg_1, false, arg_1, false)), select(func_3(Struct_1(arg_1, arg_1)), !vec4<bool>(true, arg_1, false, false), func_3(Struct_1(false, true))), vec4<bool>(select(arg_1, true, arg_1), true, !arg_1, !arg_1))));
    global0 = array<u32, 31>();
    let var_1 = var_0;
    var var_2 = Struct_1(false, true);
    var var_3 = Struct_1(var_0.b, (u_input.b > -2147483647i) || arg_1);
    return vec4<f32>(_wgslsmith_f_op_f32(972f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1168f - -2876f), -1000f)))), -376f, _wgslsmith_f_op_f32(step(-1000f, -1197f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1485f)), 2287f))));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-vec3<i32>(arg_0.x, 1i, -1i), true, u_input.c))));
    let var_2 = _wgslsmith_add_i32(u_input.b, -(~(-6560i | (-1i ^ u_input.e))));
    return (countOneBits(_wgslsmith_dot_vec2_i32(~u_input.d, ~arg_0)) << (min(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 34356u, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<u32>(global0[_wgslsmith_index_u32(7747u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], 9927u, 62157u)), ~4294967295u & u_input.a) % 32u)) > _wgslsmith_clamp_i32(-6672i, ~_wgslsmith_div_i32(select(48738i, var_2, true), arg_0.x << (1u % 32u)), firstLeadingBit(countOneBits(arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(0i, -11502i & u_input.d.x);
    global0 = array<u32, 31>();
    var var_1 = Struct_1((-12356i << (global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(52586u, 31u)], 94179u, false) & ~u_input.a, 31u)] % 32u)) >= 1i, !any(vec2<bool>(func_1(vec2<i32>(u_input.b, -35097i)), true)));
    global0 = array<u32, 31>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1304f, _wgslsmith_f_op_f32(step(636f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -941f)), 1416f)))))));
    let var_3 = vec4<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -798f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(u_input.b, var_0.x, u_input.b), var_1.b, vec3<u32>(59205u, 4294967295u, 1u))).x)) - -896f)), _wgslsmith_f_op_f32(-1115f + -870f), _wgslsmith_div_f32(731f, _wgslsmith_f_op_f32(max(548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2188f * var_2))))));
    global0 = array<u32, 31>();
    let var_4 = Struct_1(!var_1.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

