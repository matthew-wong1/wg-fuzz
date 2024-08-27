struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = 10857u;
    let var_1 = u_input.a.x;
    let var_2 = !func_2(func_2(Struct_1(all(vec2<bool>(true, false)), 1u, vec4<u32>(0u, 4175u, var_0, var_0) & arg_0.c, vec3<f32>(1262f, arg_0.d.x, -879f)))).a;
    global0 = array<Struct_1, 30>();
    var var_3 = ~(min(arg_0.b, 4294967295u) ^ 0u);
    return any(!(!vec3<bool>(any(vec3<bool>(var_2, true, true)), var_2 | true, any(vec4<bool>(true, var_2, var_2, var_2)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, -199f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(849f, 528f))))), arg_1.d.yz, false)));
    let var_1 = !vec2<bool>(!all(!vec3<bool>(true, true, arg_1.a)), !((arg_1.a | false) & arg_1.a));
    let var_2 = any(!(!vec4<bool>(true, var_1.x, arg_1.a, true))) == false;
    let var_3 = all(vec4<bool>(!all(var_1), arg_1.a, true, func_3(func_2(Struct_1(true, 64429u, vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec3<f32>(var_0.x, 104f, -146f))))));
    var var_4 = func_2(Struct_1(all(vec3<bool>(u_input.a.x < u_input.a.x, 22596i <= u_input.a.x, func_2(Struct_1(true, arg_1.b, arg_1.c, arg_1.d)).a)), 54699u, arg_1.c, vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.d.x * 187f))), _wgslsmith_div_f32(var_0.x, -740f))));
    return u_input.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: u32) -> bool {
    let var_0 = -12068i;
    global0 = array<Struct_1, 30>();
    let var_1 = ~reverseBits(~(~vec4<i32>(var_0, 1i, 46647i, var_0)));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return any(select(vec3<bool>(!all(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, true, true)) && true, abs(0u) < arg_0.x), !vec3<bool>(true, func_2(Struct_1(false, u_input.b, vec4<u32>(arg_0.x, arg_3, u_input.b, 1u), arg_1)).a, all(vec4<bool>(false, false, false, true))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(vec2<bool>(all(vec3<bool>(true, true, true)), !all(vec4<bool>(false, false, false, true)))), func_4(vec3<u32>(_wgslsmith_clamp_u32(39153u, u_input.b, u_input.b) | ~u_input.b, ~(~1u), 1u), vec3<f32>(1f, 1f, 1f), func_1(u_input.b, Struct_1(true, 4294967295u, min(vec4<u32>(4294967295u, 1u, 41752u, u_input.b), vec4<u32>(u_input.b, 31138u, u_input.b, 1u)), vec3<f32>(828f, 880f, 650f))), ~u_input.b), ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(22263u, 0u, u_input.b)) >> (u_input.b % 32u)) < ~_wgslsmith_div_u32(20024u, u_input.b)) && true);
    var var_1 = abs(vec4<u32>(~(~(~u_input.b)), 26530u, _wgslsmith_mult_u32(~14807u, ~(~u_input.b)), firstTrailingBit((u_input.b ^ u_input.b) | (u_input.b | u_input.b))));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_2(global0[_wgslsmith_index_u32(1u, 30u)]).d.xx, vec2<f32>(190f, -1732f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(func_2(Struct_1(var_0.x, 1u, vec4<u32>(38321u, var_1.x, u_input.b, u_input.b), vec3<f32>(-713f, 1412f, -1744f))).d.xz))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(608f + 513f), _wgslsmith_f_op_f32(f32(-1f) * -310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f - -984f)))));
    var var_4 = abs(~select(firstTrailingBit(firstLeadingBit(u_input.a.xxz)), ~u_input.a.zxy, var_0));
    var_4 = _wgslsmith_clamp_vec3_i32(~(-u_input.a.xzz), vec3<i32>(u_input.a.x, 21148i, -(u_input.a.x & (u_input.a.x ^ u_input.a.x))), u_input.a.xyz);
    var_2 = var_1.x;
    let var_5 = firstLeadingBit(select(~(vec4<u32>(u_input.b, 2735u, 1u, var_1.x) & vec4<u32>(u_input.b, 2165u, 8328u, 15242u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, var_1.x), ~4294967295u, ~10226u, ~1u), select(!vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), select(false, var_0.x, true))) ^ vec4<u32>(var_1.x, ~4294967295u, ~0u | ~var_1.x, 35976u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<f32>(1582f, var_3.x, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(step(-2270f, var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(811f - 411f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - -956f))), select(-min(vec4<i32>(var_4.x, u_input.a.x, 52699i, 2147483647i), u_input.a), ~_wgslsmith_add_vec4_i32(u_input.a, u_input.a), vec4<bool>(0u == u_input.b, var_3.x < -767f, all(var_0), true)) >> (vec4<u32>(abs(var_1.x), _wgslsmith_div_u32(5404u, u_input.b) | var_1.x, ~(var_5.x << (u_input.b % 32u)), 1u) % vec4<u32>(32u)), u_input.a.xyy);
}

