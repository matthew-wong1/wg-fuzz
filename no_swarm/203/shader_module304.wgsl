struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)), _wgslsmith_f_op_vec2_f32(arg_2.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c.b.a, arg_0.x))))));
    return _wgslsmith_add_u32(abs(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(4294967295u, arg_3.c.a)), ~arg_3.b)), ~4294967295u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_4(false, countOneBits(firstLeadingBit(~47528u)) >> (~arg_0.a % 32u), arg_0, false, select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), true), vec4<bool>(_wgslsmith_mult_i32(u_input.a, u_input.a) != ~9754i, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true)), firstLeadingBit(62379u) == arg_0.a, true)));
    return max(var_0.c.a, var_0.b);
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(17995u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 71397u)), vec3<u32>(func_2(vec2<f32>(arg_1, 743f), 87172i, Struct_1(arg_1, vec2<f32>(arg_1, arg_1)), Struct_4(arg_0, 1u, Struct_2(4294967295u, Struct_1(1915f, vec2<f32>(2257f, 915f))), true, vec4<bool>(arg_0, false, arg_0, true))), 4344u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 16681u), vec2<u32>(16132u, 0u)))), ~func_3(Struct_2(8315u, Struct_1(arg_1, vec2<f32>(arg_1, 140f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, 367f))))) & abs(firstTrailingBit(~vec2<u32>(4294967295u, 1u)));
    var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_div_u32(var_0.x, var_0.x), abs(var_0.x)), _wgslsmith_div_u32(~62724u, var_0.x)), _wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(var_0.x, var_0.x)), select(abs(vec2<u32>(var_0.x, var_0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u)), vec2<bool>(false, arg_0)), ~(~vec2<u32>(var_0.x, 1u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(countOneBits(var_0.x), var_0.x), 1u, 36502u, max(func_3(Struct_2(var_0.x, Struct_1(-855f, vec2<f32>(arg_1, arg_1))), vec3<f32>(1702f, 1010f, arg_1)), var_0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, var_0.x, var_0.x, 0u)), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) << (vec4<u32>(4294967295u, 1u, var_0.x, 0u) % vec4<u32>(32u))), ~vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u))));
    let var_1 = Struct_2(abs(firstTrailingBit(var_0.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-987f, -1726f) - vec2<f32>(arg_1, 1000f)), vec2<f32>(-288f, 662f), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), vec2<bool>(false, true))))))));
    var var_2 = Struct_3(vec2<u32>(abs(firstTrailingBit(~var_0.x)), 857u));
    return abs(~func_3(Struct_2(~90893u, Struct_1(var_1.b.a, var_1.b.b)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(553f, var_1.b.b.x, 1704f), vec3<f32>(-2707f, var_1.b.a, var_1.b.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, var_1.b.b.x, 135f) + vec3<f32>(-139f, var_1.b.b.x, 317f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~firstTrailingBit(~4294967295u), ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 1u, 4294967295u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(~19978u, func_1(true, -1000f), 20696u)));
    var var_1 = Struct_2(~65662u, Struct_1(_wgslsmith_f_op_f32(floor(-527f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-360f, -530f) + vec2<f32>(-742f, 683f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, 515f))) - vec2<f32>(-1532f, _wgslsmith_f_op_f32(-729f + 2345f)))));
    var var_2 = 5534u;
    var var_3 = var_1.b;
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(41356u, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(21995u, var_1.a, 28178u), vec3<u32>(var_1.a, var_0.x, var_0.x))), 1u, ~var_1.a >> (var_0.x % 32u)), vec4<u32>(38408u, var_0.x, ~var_0.x, ~(~var_1.a)));
    var var_5 = _wgslsmith_mod_u32(func_3(Struct_2(21608u, Struct_1(var_3.a, vec2<f32>(1722f, -1009f))), vec3<f32>(var_1.b.a, 600f, _wgslsmith_f_op_f32(trunc(-800f)))), 0u) & var_4.x;
    var var_6 = select(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(~10763u, ~var_1.a), min(func_3(Struct_2(var_4.x, var_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.x, var_1.b.a, -463f))), var_4.x)), ~(_wgslsmith_mult_vec3_u32(~var_4.xyy, ~vec3<u32>(var_1.a, 49481u, 24288u)) << (~vec3<u32>(var_0.x, 0u, 4294967295u) % vec3<u32>(32u))), !(((-8906i > u_input.a) | true) != false));
    let var_7 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_7.a)), _wgslsmith_f_op_f32(f32(-1f) * -1825f)))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a & u_input.a, u_input.a | u_input.a, _wgslsmith_clamp_i32(9233i, -26466i, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 1i, 56559i)), vec3<i32>(_wgslsmith_add_i32(u_input.a, countOneBits(u_input.a)), -(u_input.a | u_input.a), countOneBits(i32(-1i) * -27081i))));
}

