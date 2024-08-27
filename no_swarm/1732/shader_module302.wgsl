struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -388f;

var<private> global1: array<vec2<i32>, 11>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> bool {
    global1 = array<vec2<i32>, 11>();
    let var_0 = arg_1.x;
    var var_1 = vec2<bool>(any(select(!vec2<bool>(arg_1.x, arg_1.x), arg_1, true)) && select(all(vec4<bool>(true, false, arg_1.x, var_0)), true, any(arg_1)), true);
    let var_2 = -reverseBits(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.e, -2147483647i), _wgslsmith_sub_i32(5823i, u_input.e)), reverseBits(-1i), 44517i));
    let var_3 = !(!vec3<bool>(false, -8942i < _wgslsmith_mult_i32(u_input.e, -2147483647i), any(vec3<bool>(false, true, true))));
    return !var_3.x;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = -1i >= (-9744i ^ _wgslsmith_mod_i32(-31253i, u_input.e));
    var var_1 = 37391u;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(round(887f)));
    return select(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_f32(-arg_0), vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, func_3(arg_0, vec2<bool>(false, true)), false, true), true & any(vec4<bool>(false, false, true, false))), !select(vec4<bool>(-1896f >= arg_1.b.x, u_input.e >= u_input.e, true, false), vec4<bool>(-2147483647i > u_input.e, all(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true))), select(false, func_3(arg_0, vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_1;
    global1 = array<vec2<i32>, 11>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.b, _wgslsmith_f_op_vec4_f32(abs(var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(arg_1.b.x + var_0.b.x), _wgslsmith_f_op_f32(step(arg_2.x, var_0.b.x)), arg_1.b.x)))), arg_0.x, ~(0u | (6449u << (~u_input.d.x % 32u))), ~reverseBits(vec3<i32>(arg_1.a, max(var_0.a, var_0.a), arg_3)), -_wgslsmith_div_i32(~firstTrailingBit(2147483647i), 1i));
    global1 = array<vec2<i32>, 11>();
    return vec2<bool>(false, select(false, true, false));
}

fn func_1() -> StorageBuffer {
    var var_0 = !(!(!vec2<bool>(true, all(vec2<bool>(true, true)))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = func_4(vec4<bool>(false, all(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x))), any(!func_2(-931f, Struct_2(u_input.e, vec4<f32>(927f, 986f, -1511f, -1554f), vec3<u32>(42380u, 0u, 0u)), vec4<u32>(8689u, u_input.b, u_input.a, u_input.a))), !all(select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.x))), Struct_2(-20064i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, -1290f, -1092f, -492f)))), (vec3<u32>(u_input.c, u_input.c, u_input.c) ^ reverseBits(vec3<u32>(1u, u_input.c, 77474u))) ^ ~(~vec3<u32>(u_input.a, 64500u, 12838u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1102f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-884f)), 904f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-447f))), 751f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1292f, -1116f, -1770f, 1993f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -433f, 1427f, 520f), vec4<f32>(234f, 528f, 1324f, 1365f))))), vec4<f32>(936f, _wgslsmith_f_op_f32(round(988f)), _wgslsmith_f_op_f32(834f * -1000f), _wgslsmith_f_op_f32(round(-2060f)))))), u_input.e);
    let var_1 = reverseBits(vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 127913u, u_input.c, u_input.d.x), vec4<u32>(u_input.a, 4294967295u, u_input.d.x, u_input.d.x)), u_input.d.x >> (41924u % 32u), u_input.d.x)), reverseBits(~0u), u_input.d.x, _wgslsmith_div_u32(u_input.a, ~max(u_input.b, 12876u))));
    let var_2 = vec2<bool>(var_0.x, true);
    return StorageBuffer(_wgslsmith_mult_vec2_u32(~(~var_1.xw >> (vec2<u32>(var_1.x, 43368u) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(u_input.d, u_input.d) ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u))), ~42770i, 18571u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

