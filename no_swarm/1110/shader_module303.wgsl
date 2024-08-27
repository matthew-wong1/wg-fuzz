struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32;

var<private> global2: f32;

var<private> global3: u32 = 57109u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_2(arg_0, u_input.d, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1511f, 1073f)))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, _wgslsmith_clamp_u32(global0.x >> (u_input.b % 32u), 5546u, global0.x), ~4294967295u) & vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, 1u)), reverseBits(u_input.c.x), min(countOneBits(45956u), select(u_input.c.x, 1u, var_0.c))), max(select(_wgslsmith_mod_vec3_u32(u_input.a.xzz, ~vec3<u32>(1u, 79442u, u_input.c.x)), ~select(vec3<u32>(u_input.a.x, 32021u, global0.x), vec3<u32>(global0.x, global0.x, 1u), var_0.c), select(vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(true, false, var_0.c), vec3<bool>(var_0.c, true, false))), vec3<u32>(u_input.b, 16433u, u_input.b)));
    var var_2 = Struct_2(arg_0, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.d, -2147483647i) | (vec3<i32>(arg_0.a, -41468i, -35107i) | vec3<i32>(25386i, -5443i, var_0.a.a)), vec3<i32>(-2283i << (global0.x % 32u), max(var_0.a.a, -42422i), -63644i >> (u_input.b % 32u))), var_0.c && any(!(!vec4<bool>(var_0.c, false, var_0.c, true))), _wgslsmith_f_op_f32(f32(-1f) * -1226f));
    var_2 = Struct_2(Struct_1(var_2.a.a), -1i, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, countOneBits(vec4<u32>(1u, 4294967295u, 67166u, 42412u))), u_input.b | global0.x) < select(min(4294967295u, ~0u), ~0u, (var_0.c != true) | false), -863f);
    let var_3 = Struct_2(arg_0, _wgslsmith_div_i32(_wgslsmith_mod_i32(68805i, arg_0.a) >> (_wgslsmith_mod_u32(global0.x, global0.x) % 32u), -(~9684i)) & (var_2.a.a << (~(~u_input.b) % 32u)), any(vec2<bool>(u_input.b < _wgslsmith_mod_u32(11652u, global0.x), !var_0.c | var_0.c)), _wgslsmith_f_op_f32(abs(var_0.d)));
    return vec4<i32>(var_0.a.a, -25060i, u_input.d, abs(~_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0.a, var_2.a.a), -19460i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + 451f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(311f)) * _wgslsmith_f_op_f32(max(252f, -156f)))))));
    var var_1 = firstTrailingBit(-27993i);
    var var_2 = ~max(~(~0u), 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1257f, var_0) + vec2<f32>(var_0, var_0)) + vec2<f32>(var_0, 822f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(round(1469f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), false)) + vec2<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))))));
    var var_4 = abs(func_3(Struct_1(-47865i ^ u_input.d)));
    return firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(10932u, 39711u), min(u_input.a.x, 0u << (u_input.b % 32u)) | ~global0.x));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<bool>(true, false);
    global3 = firstLeadingBit(func_2(Struct_1(u_input.d), ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.d), vec2<i32>(-15883i, u_input.d)))) << ((_wgslsmith_mod_u32((global0.x | u_input.b) >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global0.x, 1u, u_input.b, u_input.c.x)) % 32u), u_input.c.x) | (~u_input.c.x ^ ~(85585u | global0.x))) % 32u);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(1662f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2039f, 1650f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1043f, _wgslsmith_f_op_f32(max(-185f, -1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1837f, 284f)))));
    return StorageBuffer(u_input.c, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, global0.x), abs(global0.x)), _wgslsmith_add_u32(global0.x, global0.x), ~_wgslsmith_div_u32(10109u, 53855u), abs(global0.x << (36813u % 32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, min(u_input.b, 4294967295u), 0u, 1u), u_input.a), u_input.a.wz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(754f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-623f - -619f) - _wgslsmith_f_op_f32(638f + -1495f)) + 1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(751f - 228f)) - 419f) + -1042f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2149f) - 1f), 161f)) + 1140f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(331f)), _wgslsmith_div_f32(1016f, -851f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - -412f))));
    let x = u_input.a;
    s_output = func_1();
}

