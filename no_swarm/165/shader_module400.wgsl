struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<Struct_3, 14>;

var<private> global2: Struct_3 = Struct_3(vec2<i32>(24168i, 458i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global2 = global1[_wgslsmith_index_u32(8875u, 14u)];
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(388f - -126f))), _wgslsmith_f_op_f32(-544f - -1814f)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1060f, _wgslsmith_f_op_f32(-188f + 230f), all(vec3<bool>(true, false, false)))), _wgslsmith_div_f32(712f, _wgslsmith_f_op_f32(floor(1027f)))), _wgslsmith_f_op_f32(f32(-1f) * -1443f))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, var_0.x))) + var_0.x), -137f);
    global0 = array<i32, 11>();
    let var_2 = _wgslsmith_f_op_f32(trunc(var_0.x));
    return 1u;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(abs(arg_1), ~5111u, abs(firstTrailingBit(36953u))), ~(~firstLeadingBit(vec3<u32>(74575u, 0u, arg_2))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), vec3<u32>(arg_1, func_3(), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, arg_1, arg_2) ^ (vec3<u32>(303u, 53742u, arg_1) << (vec3<u32>(arg_1, arg_1, arg_2) % vec3<u32>(32u))), select(vec3<u32>(116031u, 38221u, arg_1), vec3<u32>(arg_2, 4294967295u, arg_1), vec3<bool>(true, false, false)) | select(vec3<u32>(1u, 0u, arg_2), vec3<u32>(arg_2, arg_2, arg_1), vec3<bool>(true, false, true)))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a.xz, _wgslsmith_mod_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 11u)], global2.a.x), vec2<i32>(arg_3.a.x, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(7114i, -26846i), u_input.a.xy, vec2<i32>(arg_3.a.x, -2147483647i)), vec2<bool>(true, true)), abs(-global2.a)) >> ((_wgslsmith_mod_vec2_u32(var_0.zz, vec2<u32>(4294967295u, var_0.x)) ^ vec2<u32>(1u, arg_2)) % vec2<u32>(32u)));
    var_0 = vec3<u32>(arg_1, _wgslsmith_mult_u32(select(abs(arg_1) & _wgslsmith_mult_u32(var_0.x, arg_1), var_0.x, false), reverseBits(2938u | _wgslsmith_sub_u32(var_0.x, 16666u))), 62790u);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1169f, _wgslsmith_div_f32(arg_0.x, 994f)))) * _wgslsmith_f_op_f32(-arg_0.x)), ~(-(-2147483647i << (arg_2 % 32u))) <= (~(-15199i) >> (var_0.x % 32u))));
    global0 = array<i32, 11>();
    return -961f;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(2103f, 406f) - vec2<f32>(1000f, 719f)), 1u, 90023u, global1[_wgslsmith_index_u32(func_3(), 14u)])), _wgslsmith_f_op_f32(f32(-1f) * -637f)) * -105f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-144f - -349f) + _wgslsmith_f_op_f32(f32(-1f) * -593f))))));
    let var_1 = vec2<i32>(-1i, (global2.a.x | abs(u_input.a.x)) ^ ~(-30718i));
    let var_2 = vec4<u32>(4294967295u, ~select(select(~0u, 8579u, false), max(_wgslsmith_dot_vec3_u32(vec3<u32>(28651u, 1u, 41766u), vec3<u32>(44076u, 16809u, 2348u)), 1u), true || any(vec2<bool>(false, true))), firstLeadingBit(0u), select(_wgslsmith_div_u32(~(~1u), ~1u), 1u, (false & all(vec2<bool>(true, true))) & all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    global1 = array<Struct_3, 14>();
    var var_3 = _wgslsmith_add_i32(var_1.x, var_1.x);
    return 1i;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    let var_0 = reverseBits(countOneBits(func_2()));
    let var_1 = Struct_2(Struct_1(vec2<bool>(all(vec2<bool>(true, true)), true), arg_1, _wgslsmith_mult_i32(0i >> (func_3() % 32u), var_0)));
    global0 = array<i32, 11>();
    let var_2 = var_1;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-511f + -946f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1374f, 1f)))), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -705f) * -682f) * _wgslsmith_f_op_f32(abs(var_2.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.b, _wgslsmith_f_op_f32(select(-303f, var_1.a.b, true))) * _wgslsmith_f_op_f32(func_4(vec2<f32>(arg_1, 1428f), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 62495u, arg_0, arg_0), vec4<u32>(arg_0, 12946u, arg_0, arg_0)), global1[_wgslsmith_index_u32(16878u, 14u)]))) - _wgslsmith_f_op_f32(step(var_2.a.b, _wgslsmith_f_op_f32(arg_1 * arg_1)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~abs(60903u)), 4294967295u), vec2<u32>(countOneBits(func_1(~2559u, _wgslsmith_f_op_f32(sign(128f)), countOneBits(u_input.a.zz))), 32582u));
    let var_2 = Struct_3(~(~firstLeadingBit(global2.a) ^ _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, -39504i), vec2<i32>(-2147483647i, -2147483647i) & global2.a)));
    let var_3 = _wgslsmith_mod_i32(-(i32(-1i) * -772i), firstTrailingBit(u_input.a.x) | abs(-u_input.a.x));
    global0 = array<i32, 11>();
    var_1 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(~25627u, 1u, ~(~41985u)), vec3<u32>(countOneBits(func_1(4294967295u, -404f, u_input.a.zz)), 4294967295u, 0u), any(vec4<bool>(true, true, true, true))), abs(countOneBits(vec3<u32>(1u, 1u, 1u))));
    var var_4 = ~(~vec4<u32>(_wgslsmith_add_u32(1u, 0u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(43847u, 0u, 12707u), vec3<u32>(54254u, 59810u, 0u), vec3<bool>(true, false, false)), vec3<u32>(1u, 1u, 1u)), abs(_wgslsmith_div_u32(0u, 4294967295u)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.yz | var_4.zw, var_4.x);
}

