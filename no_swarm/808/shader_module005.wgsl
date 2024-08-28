struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(1414f, -1313f, 178f), vec3<f32>(-327f, 1025f, 904f), vec3<f32>(120f, 510f, -672f), vec3<f32>(-487f, -143f, 1603f), vec3<f32>(-103f, -950f, 1087f), vec3<f32>(-871f, 1809f, 470f), vec3<f32>(953f, 889f, 669f), vec3<f32>(956f, 699f, 1075f), vec3<f32>(-359f, 919f, -1012f), vec3<f32>(-397f, -233f, 1182f), vec3<f32>(-1695f, 324f, 524f), vec3<f32>(-576f, 1070f, 1128f), vec3<f32>(-1197f, -759f, 1179f), vec3<f32>(895f, 1137f, 1400f), vec3<f32>(351f, -1000f, -977f));

var<private> global1: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<vec3<f32>, 15>();
    global1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), vec3<i32>(u_input.a.x, 2147483647i, (0i & u_input.a.x) ^ _wgslsmith_sub_i32(1i, u_input.a.x)) & min(~vec3<i32>(u_input.a.x, 0i, -2147483647i), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 33339i), max(u_input.a.x, 7037i), -u_input.a.x)));
    global1 = -max(-abs(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 44184i)), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x));
    return reverseBits(firstTrailingBit(reverseBits(~min(u_input.a.x, -27952i))));
}

fn func_2() -> i32 {
    var var_0 = 12224i;
    let var_1 = ~vec4<u32>(4294967295u, 2076u, 5067u, ~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 77660u)));
    var_0 = firstLeadingBit(func_3()) | _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    var var_2 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = array<vec3<f32>, 15>();
    return i32(-1i) * -39349i;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = u_input.a;
    var_0 = vec3<i32>(_wgslsmith_add_i32(~abs(func_2()), var_0.x), _wgslsmith_dot_vec3_i32(abs(~u_input.a), u_input.a), 7393i);
    let var_1 = Struct_3(_wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(countOneBits(vec4<u32>(arg_1.b.x, 0u, 4294967295u, arg_1.b.x)))), vec4<u32>(0u, _wgslsmith_add_u32(~arg_1.a, arg_1.b.x), _wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_1.a), vec3<u32>(arg_1.b.x, 1u, arg_1.b.x))), 1u)), _wgslsmith_sub_u32(~arg_1.a, 4294967295u), Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1433i, u_input.a.x, 16021i), vec4<i32>(u_input.a.x, var_0.x, 0i, var_0.x)), countOneBits(vec4<i32>(var_0.x, 22379i, 8456i, var_0.x))), var_0.x, countOneBits(-78689i), select(~1i, 3025i, false))));
    let var_2 = arg_0;
    var var_3 = !var_2.x;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~_wgslsmith_clamp_u32(1u, ~func_1(vec4<bool>(true, false, true, true), Struct_1(49338u, vec2<u32>(57867u, 9450u), -443f)), 1u));
    let var_1 = -firstTrailingBit(vec3<i32>(-(~(-2147483647i)), i32(-1i) * -2147483647i, func_3()));
    var var_2 = Struct_2(firstLeadingBit(vec4<i32>(u_input.a.x, 15137i, 20122i & _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -1i), u_input.a.yy), countOneBits(var_1.x) ^ _wgslsmith_mod_i32(2147483647i, u_input.a.x))));
    var var_3 = -(~vec2<i32>(_wgslsmith_dot_vec4_i32(select(var_2.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 76411i), vec4<bool>(true, true, true, false)), -var_2.a), 1i));
    let var_4 = Struct_1(1u, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(13319u, 3847u), vec2<u32>(1u, 1u)) >> (abs(firstLeadingBit(vec2<u32>(2905u, 1u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1417f - var_4.c)), _wgslsmith_f_op_f32(trunc(-406f))), -_wgslsmith_sub_i32(-var_1.x >> (min(var_4.b.x, var_4.b.x) % 32u), _wgslsmith_clamp_i32(~var_3.x, 1i, -1832i << (var_4.a % 32u))), reverseBits(var_4.b), ~(abs(func_1(vec4<bool>(true, true, false, true), Struct_1(1u, var_4.b, var_4.c))) & _wgslsmith_clamp_u32(var_4.b.x >> (var_4.a % 32u), var_4.a, ~var_4.a)));
}

