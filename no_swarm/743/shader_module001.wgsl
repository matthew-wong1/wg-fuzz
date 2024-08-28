struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    var var_0 = -726f;
    let var_1 = firstLeadingBit(vec3<i32>(1i, u_input.b.x | reverseBits(-2147483647i), min(u_input.b.x ^ -1i, select(u_input.a.x & u_input.a.x, firstTrailingBit(u_input.b.x), arg_0.x))));
    var var_2 = Struct_3(any(select(select(!vec4<bool>(false, true, true, arg_0.x), !vec4<bool>(false, true, arg_0.x, false), !arg_0), !vec4<bool>(false, false, true, arg_0.x), true)));
    var_0 = -218f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-256f, 713f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1613f, -130f)))) * _wgslsmith_f_op_f32(sign(1f)));
    return _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a.x, -13241i), ~_wgslsmith_mod_vec2_i32(-var_1.xz, u_input.a));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<bool>(all(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), true)), select(false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true), true);
    var var_1 = Struct_1(arg_1.a);
    let var_2 = select(true, -113f >= var_1.a, true);
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 62256u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(0u, 1609u, 4294967295u), countOneBits(3153u), 1u), max(firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 34065u)), ~vec4<u32>(13246u, 0u, 4294967295u, 57458u))));
}

fn func_2() -> vec2<bool> {
    var var_0 = -25280i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(253f, 1f));
    var_0 = -30047i;
    var var_2 = func_4(func_3(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), true)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(1257f, -1861f), _wgslsmith_f_op_f32(sign(244f))), 1174f, true))));
    var_2 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~(~max(vec4<u32>(0u, 27723u, 11951u, 74u), vec4<u32>(0u, 12705u, 82579u, 8441u)))), ~vec4<u32>(2058u, 14970u, _wgslsmith_add_u32(_wgslsmith_div_u32(19144u, 1u), 1u), max(select(32923u, 4294967295u, false), ~1u)));
    return vec2<bool>(!(!all(vec3<bool>(true, true, true))), any(vec4<bool>(any(vec2<bool>(true, false)), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_3(!var_0.x);
    var var_2 = ~6821u;
    var var_3 = all(vec2<bool>(true && (_wgslsmith_f_op_f32(-arg_1.x) >= _wgslsmith_f_op_f32(f32(-1f) * -643f)), true));
    var var_4 = ~(vec3<u32>(~51393u, func_4(vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(arg_1.x)), 1u) & vec3<u32>(_wgslsmith_mult_u32(72164u, 0u), ~38897u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 55328u, 1u), vec3<u32>(0u, 33107u, 25075u)))) ^ ~vec3<u32>(1u, 1u, _wgslsmith_div_u32(9112u, 44823u));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(1116f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = 47892u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1392f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1863f, _wgslsmith_f_op_f32(select(-1567f, -752f, false))))));
    let var_2 = Struct_2(func_1(min(min(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), firstTrailingBit(u_input.b << (vec3<u32>(6886u, 41853u, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-319f, _wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(abs(-1053f)))))), !(!(!(-24146i != u_input.b.x))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_1.a), vec2<f32>(1056f, -1267f), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-291f)), func_1(vec3<i32>(u_input.b.x, -38378i, 21237i), vec3<f32>(var_1.a, 188f, 216f)).a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-176f)))));
    var_1 = func_1(~min(u_input.b, vec3<i32>(-25201i ^ u_input.a.x, u_input.b.x, 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_div_f32(-264f, -340f), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1342f, var_2.e.x, -474f), vec3<f32>(var_1.a, var_2.a.a, var_1.a), vec3<bool>(true, false, var_2.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1391f, 747f, var_2.d.x), vec3<f32>(212f, -538f, 567f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~56149u), 24350u), -u_input.a.x);
}

