struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(39703u, 30780u), Struct_4(15446u, 4294967295u), Struct_4(4294967295u, 26947u), Struct_4(19957u, 108919u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> vec2<i32> {
    global2 = array<Struct_4, 4>();
    global2 = array<Struct_4, 4>();
    global2 = array<Struct_4, 4>();
    var var_0 = arg_2;
    var var_1 = Struct_4(4294967295u, firstTrailingBit(0u) | ~(~29079u));
    return u_input.c.yw;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_dot_vec2_i32(min(countOneBits(func_3(6923u, true, vec2<bool>(false, true))), vec2<i32>(1i, ~(-55978i)) ^ max(abs(u_input.c.wx), countOneBits(vec2<i32>(u_input.b.x, u_input.c.x)))), vec2<i32>(countOneBits(u_input.c.x), -43590i));
    let var_2 = 1u;
    return Struct_1(global1.a, (firstTrailingBit(vec3<u32>(arg_1.a, u_input.d.x, arg_1.b)) ^ select(firstLeadingBit(vec3<u32>(global1.b.x, 74732u, 0u)), vec3<u32>(arg_1.a, arg_0, arg_0), any(vec4<bool>(true, true, true, true)))) & u_input.d);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<i32>) -> f32 {
    var var_0 = 1u;
    var_0 = ~(~arg_1.b.x ^ 31293u);
    let var_1 = arg_2;
    global2 = array<Struct_4, 4>();
    global1 = arg_2.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -564f);
}

fn func_1() -> Struct_2 {
    var var_0 = any(vec3<bool>(true, true, true));
    var var_1 = 1f;
    var_0 = true;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-202f, 1052f), vec2<f32>(-1572f, -455f))), func_2(0u, Struct_4(49299u, 82776u), true, vec4<f32>(1028f, -354f, 557f, -475f)), Struct_3(Struct_2(4294967295u, Struct_1(6149i, vec3<u32>(7023u, global1.b.x, global1.b.x)), u_input.d.x), Struct_1(-2147483647i, u_input.d), Struct_1(-2147483647i, global1.b), vec3<f32>(-1405f, -140f, -1000f), false), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, global1.a), vec2<i32>(-36543i, 1i), vec2<i32>(global1.a, u_input.b.x)))) - 924f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(995f)) - -2403f), -405f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f * _wgslsmith_f_op_f32(f32(-1f) * -761f)))));
    let var_3 = Struct_2(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, global1.b.x), vec4<u32>(u_input.a, global1.b.x, 4294967295u, global1.b.x)))), func_2(0u, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], u_input.d.x <= firstLeadingBit(global1.b.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-331f, var_2.x)), -101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_2, Struct_1(1i, u_input.d), Struct_3(Struct_2(global1.b.x, Struct_1(u_input.c.x, vec3<u32>(global1.b.x, u_input.a, 17866u)), global1.b.x), Struct_1(global1.a, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(u_input.b.x, u_input.d), vec3<f32>(998f, -381f, -1383f), false), u_input.b.xz)) - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2502f))))), 1u);
    return Struct_2(~global1.b.x, func_2(68013u, Struct_4(abs(var_3.a) & abs(global1.b.x), var_3.b.b.x), reverseBits(max(global1.a, -2147483647i)) == ~var_3.b.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_2.x, -1820f, var_2.x) + vec4<f32>(-1274f, -1000f, -1679f, 432f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, -319f, var_2.x, var_2.x))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, true, true))))), 82706u);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_3(func_1(), func_2(arg_0.c, global2[_wgslsmith_index_u32(47069u, 4u)], !(_wgslsmith_div_u32(arg_0.b.b.x, 8064u) > u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(711f, 1197f, -610f, arg_2), vec4<f32>(1000f, arg_2, -1000f, -286f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(588f, arg_2, 929f, arg_2)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1040f, 1929f, arg_1, arg_1)))))), arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, -1586f, -2083f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, arg_2, arg_1))))), any(vec4<bool>(true, true, true, true)));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-101f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(223f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)))));
    var var_1 = func_5(func_1(), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -704f), -40692i);
    var_1 = Struct_1(1i, func_5(Struct_2(countOneBits(1u), Struct_1(i32(-1i) * -49795i, ~vec3<u32>(4294967295u, 27843u, 909u)), global1.b.x ^ ~0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(var_0.x * 401f))), -1071f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(var_0.x, var_0.x))), func_1().b, Struct_3(Struct_2(70340u, Struct_1(var_1.a, var_1.b), global1.b.x), Struct_1(-1i, var_1.b), Struct_1(var_1.a, global1.b), vec3<f32>(-901f, -1711f, var_0.x), true), vec2<i32>(func_2(4294967295u, global2[_wgslsmith_index_u32(23778u, 4u)], true, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)).a, -40643i))), 40639i).b);
    global2 = array<Struct_4, 4>();
    global2 = array<Struct_4, 4>();
    let var_2 = ~(~_wgslsmith_mult_u32(u_input.a, func_1().a));
    global2 = array<Struct_4, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x)))), ~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), ~(~(~u_input.d >> (_wgslsmith_clamp_vec3_u32(global1.b, global1.b, global1.b) % vec3<u32>(32u)))));
}

