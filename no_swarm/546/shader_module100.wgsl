struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(0i), Struct_1(0i), Struct_1(1i), Struct_1(-1i), Struct_1(15134i), Struct_1(-1i), Struct_1(-18979i), Struct_1(-6669i), Struct_1(0i), Struct_1(13989i), Struct_1(55085i), Struct_1(-2141i), Struct_1(-46294i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_1, 13>();
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-299f + 931f), _wgslsmith_f_op_f32(abs(408f))), global0.x, 1329f)))));
    let var_0 = global0.wy;
    global1 = array<Struct_1, 13>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.x, 189f)), global0.x)))), var_0.x, -499f, var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.c, firstTrailingBit(4294967295u), countOneBits(u_input.c), u_input.c), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 37449u, u_input.e, 83579u) ^ vec4<u32>(u_input.c, 33946u, 1u, u_input.d), vec4<u32>(13329u, 69845u, 4294967295u, u_input.d))));
    var var_1 = true;
    let var_2 = select(!(!vec2<bool>(true, arg_1 == arg_1)), vec2<bool>(all(vec2<bool>(all(vec4<bool>(true, arg_0.x, false, false)), true)), true || (_wgslsmith_f_op_f32(select(global0.x, global0.x, arg_1)) != _wgslsmith_f_op_f32(exp2(global0.x)))), !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.x))))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.x, -485f, arg_1)), _wgslsmith_f_op_f32(max(-1405f, global0.x))))));
    var_0 = u_input.e | (~(~(u_input.c >> (31555u % 32u))) ^ u_input.a);
    let var_3 = Struct_1(_wgslsmith_div_i32(u_input.b.x, max(~45258i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.b.xy), -u_input.b.x)));
    return u_input.b.x;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = !all(vec2<bool>(false, false));
    let var_1 = 1i;
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1923f, -151f, 635f, global0.x)))) + vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_1), -962f, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(744f, -1855f, -1612f, arg_2))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1429f, 1036f, -360f, -686f))))));
    var var_2 = vec2<bool>(true, true);
    let var_3 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(max(-5064i, -1i >> (arg_3 % 32u)), var_1, func_2(vec2<bool>(var_2.x, true), false)), select(-(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) & _wgslsmith_sub_i32(51418i, var_1)), -_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.yz)), var_2.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~arg_3, 13u)])) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0, -1003f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -875f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_div_f32(-568f, _wgslsmith_div_f32(global0.x, global0.x)))));
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -124f)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global0.x, global0.x, global0.x, 83068u)), 1080f)), false)), _wgslsmith_f_op_f32(abs(-133f)), global0.x, _wgslsmith_f_op_f32(min(-630f, 677f)));
    let var_0 = Struct_1(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.yyw))));
}

