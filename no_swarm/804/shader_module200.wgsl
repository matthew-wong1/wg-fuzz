struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: array<vec2<u32>, 24>;

var<private> global1: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(i32(-2147483648), true, vec2<f32>(451f, 892f), -500f), Struct_1(1i, true, vec2<f32>(-555f, 922f), 814f), Struct_1(7090i, false, vec2<f32>(-1402f, -694f), -683f), Struct_1(i32(-2147483648), true, vec2<f32>(-752f, 911f), 281f), Struct_1(0i, false, vec2<f32>(1000f, -1276f), -901f), Struct_1(0i, true, vec2<f32>(-743f, -875f), 1202f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<vec2<bool>, 6>();
    global0 = array<vec2<u32>, 24>();
    var var_0 = Struct_1(~(~(-42670i)), arg_2.b, vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0.c)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-434f)))), arg_2.c.x, arg_3.b | true)));
    var var_1 = vec4<i32>(8014i, -2147483647i, arg_2.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.a, 2147483647i, abs(var_0.a)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_3.a, 16717i, -1i), vec3<i32>(u_input.b, var_0.a, -1i), true), -vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(-1i, arg_3.a, arg_2.a))), arg_3.a);
    global1 = array<vec2<bool>, 6>();
    return 1u;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 0i, abs(-10437i << (func_3(Struct_2(true, vec4<f32>(-232f, 783f, -643f, 1307f), 959f), vec4<bool>(true, false, true, true), global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]) % 32u))), u_input.a | (u_input.a | (firstTrailingBit(vec4<i32>(33397i, 347i, u_input.a.x, u_input.a.x)) ^ u_input.a)));
    var_0 = min(1i, -2147483647i);
    global0 = array<vec2<u32>, 24>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, -256f, 791f, -1250f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1297f, 344f, 512f, 538f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, -947f, 645f, 229f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -313f, -443f, 342f), vec4<f32>(-355f, -240f, -281f, 744f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-683f, -378f, -584f, -643f), vec4<f32>(-257f, 399f, -1162f, -960f))))), ~firstLeadingBit(~reverseBits(1u)));
    let var_2 = vec3<u32>(var_1.b, abs(firstLeadingBit(~var_1.b)), ~1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f) * var_1.a.x));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = u_input.a.x;
    global0 = array<vec2<u32>, 24>();
    global1 = array<vec2<bool>, 6>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(-1959f, _wgslsmith_f_op_f32(select(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), select(true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    var var_2 = ~firstLeadingBit(vec2<u32>(~arg_0.b | select(arg_0.b, 2462u, false), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(20255u, 24u)]) | arg_0.b));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(43223u) | ~func_1(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, -1000f, -1620f, -794f)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15516u, 0u, 21156u), vec4<u32>(60597u, 41749u, 4294967295u, 0u))));
    var var_1 = global0[_wgslsmith_index_u32(var_0, 24u)];
    let var_2 = vec2<i32>(9006i, select(_wgslsmith_sub_i32(-(u_input.b ^ u_input.a.x), -u_input.a.x), 14389i, !(!all(vec3<bool>(true, true, true)))));
    let var_3 = Struct_2(true, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1437f + -910f) - _wgslsmith_f_op_f32(floor(416f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(845f, -907f) - _wgslsmith_f_op_f32(abs(754f)))), -342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-320f)) * _wgslsmith_f_op_f32(f32(-1f) * -930f)) + -654f)), _wgslsmith_f_op_f32(423f * -1650f));
    var var_4 = var_3;
    let var_5 = select(!global1[_wgslsmith_index_u32(var_0 ^ ~var_1.x, 6u)], !select(global1[_wgslsmith_index_u32(75939u, 6u)], select(select(vec2<bool>(true, false), vec2<bool>(var_4.a, var_3.a), global1[_wgslsmith_index_u32(4294967295u, 6u)]), !global1[_wgslsmith_index_u32(var_1.x, 6u)], any(vec4<bool>(var_4.a, false, true, true))), all(select(vec2<bool>(var_4.a, false), vec2<bool>(var_4.a, var_4.a), vec2<bool>(var_3.a, true)))), !(!(!(!vec2<bool>(false, var_3.a)))));
    var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-12566i));
}

