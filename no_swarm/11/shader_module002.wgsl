struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-2266f, 1273f), vec2<f32>(105f, -1256f), vec2<f32>(-966f, 167f), vec2<f32>(-1967f, -379f));

var<private> global1: array<i32, 22> = array<i32, 22>(1i, 2147483647i, 28200i, 36534i, 2147483647i, 48527i, 2147483647i, -204i, -40843i, -38710i, 0i, -48374i, 23527i, 1i, i32(-2147483648), -1i, 0i, 8205i, 671i, 27276i, 1i, -31029i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = ~vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.a.x, 1u), _wgslsmith_add_u32(30436u, firstTrailingBit(_wgslsmith_mult_u32(arg_0, arg_0))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-964f))))) - _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(339f, -846f)) - _wgslsmith_div_f32(-1265f, _wgslsmith_div_f32(1049f, -1412f))))), Struct_1(!any(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-498f, -210f, 1000f, 710f), vec4<f32>(261f, 331f, 1622f, -461f))))))), ~arg_0, ~(~(~var_0.x)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(-var_1.b), Struct_1(var_1.c.a, vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f)), _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(var_1.c.b.x * -2273f)))), 1u, _wgslsmith_dot_vec3_u32(~u_input.a.yxz, ~(~vec3<u32>(arg_0, var_0.x, 0u))) | ~67239u);
    var var_3 = var_2.c.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-439f, -420f) + vec2<f32>(_wgslsmith_f_op_f32(sign(355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-327f)))));
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global0 = array<vec2<f32>, 4>();
    global0 = array<vec2<f32>, 4>();
    let var_0 = countOneBits(vec2<u32>(_wgslsmith_sub_u32(~1u, arg_3), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_3, arg_3, 60490u), ~u_input.a), ~u_input.a.x, false)));
    global0 = array<vec2<f32>, 4>();
    var var_1 = Struct_3(arg_2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(~1u))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1679f)))), arg_2.a, reverseBits(u_input.a.x), 1u);
    return Struct_1(arg_0, vec4<f32>(-121f, arg_1.x, _wgslsmith_f_op_f32(609f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(359f, -2581f, arg_2.a.a)) - arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, arg_2.a.b.x) + 1000f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-628f, -1002f, arg_0.x <= arg_1.x)) * -330f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -688f) * _wgslsmith_f_op_f32(select(1290f, -991f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1680f * -1307f)))), _wgslsmith_f_op_f32(floor(-1035f)), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(225f)), _wgslsmith_f_op_f32(152f + 1000f))) >= -1228f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1170f, 1266f, 1f)), Struct_2(Struct_1(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 909f, 1312f, 637f)))), firstLeadingBit(arg_1.x)), min(~1u, _wgslsmith_clamp_u32(1u, arg_0.x, reverseBits(arg_1.x)) & arg_1.x), arg_0.x);
    global1 = array<i32, 22>();
    var var_1 = ~(~abs(vec2<u32>(1u, arg_0.x)));
    global1 = array<i32, 22>();
    let var_2 = var_0.a;
    return abs(-global1[_wgslsmith_index_u32(0u, 22u)] | 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, u_input.a.x <= u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 22u)] > (-global1[_wgslsmith_index_u32(~31761u, 22u)] ^ func_1(~vec3<u32>(0u, u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x))));
    let var_1 = -2147483647i ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyz, vec3<u32>(u_input.a.x, u_input.a.x, 0u)), u_input.a.x), u_input.a.wz), 22u)];
    global0 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-806f, 234f)), _wgslsmith_f_op_f32(func_3(41869u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x)) - _wgslsmith_f_op_f32(select(1431f, 1938f, var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, -249f, -1000f, 1291f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1433f, 366f, -1449f, -708f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_f_op_f32(f32(-1f) * -115f), _wgslsmith_f_op_f32(f32(-1f) * -254f), 392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(788f)), -767f))), 0i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~((56701u ^ u_input.a.x) >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u)), u_input.a.x, u_input.a.x), 22u)]);
}

