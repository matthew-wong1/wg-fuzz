struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(25987u, 1u, 0u, 4294967295u), vec4<u32>(0u, 0u, 93294u, 3247u), vec4<u32>(15970u, 52406u, 4294967295u, 72390u), vec4<u32>(22028u, 0u, 23844u, 34975u), vec4<u32>(12304u, 22081u, 84250u, 3312u), vec4<u32>(52913u, 1u, 1u, 18739u), vec4<u32>(19219u, 41270u, 79754u, 968u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(5015u, 41295u, 4294967295u, 18035u), vec4<u32>(1u, 1u, 42612u, 0u), vec4<u32>(4294967295u, 4294967295u, 39106u, 34744u), vec4<u32>(4294967295u, 1u, 79895u, 0u), vec4<u32>(61636u, 571u, 7414u, 84779u), vec4<u32>(30393u, 1u, 1u, 28285u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    var var_0 = vec2<i32>(-21818i, arg_0);
    var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(0i, arg_0)), vec2<i32>(i32(-1i) * -11604i, _wgslsmith_sub_i32(var_0.x, arg_0)), firstTrailingBit(reverseBits(vec2<i32>(2147483647i, var_0.x)))), firstTrailingBit(abs(select(vec2<i32>(var_0.x, arg_0), vec2<i32>(-34074i, arg_0), arg_1.a))), ~min(~vec2<i32>(var_0.x, 2147483647i), -vec2<i32>(arg_0, var_0.x))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(i32(-1i) * -35704i, _wgslsmith_div_i32(18442i, var_0.x))) & vec2<i32>(~var_0.x, 0i));
    let var_1 = true;
    let var_2 = arg_1;
    var_0 = firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(-var_0.x, 2147483647i, ~arg_0), ~1i << ((u_input.a ^ u_input.a) % 32u)));
    return _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0, 1i, var_0.x, var_0.x), vec4<i32>(1i, 21320i, var_0.x, arg_0), select(vec4<bool>(arg_1.a.x, false, var_1, false), vec4<bool>(false, var_1, arg_1.a.x, arg_2.x), var_2.a.x)), select(vec4<i32>(-3665i, arg_0, -2147483647i, 0i) >> (vec4<u32>(u_input.a, u_input.a, 682u, u_input.a) % vec4<u32>(32u)), min(vec4<i32>(arg_0, -2147483647i, 33382i, var_0.x), vec4<i32>(arg_0, 0i, -31772i, arg_0)), select(vec4<bool>(false, var_2.a.x, var_1, arg_1.a.x), vec4<bool>(false, var_2.a.x, false, true), true)))), countOneBits((i32(-1i) * -1i) << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)) >> (_wgslsmith_clamp_u32(select(~u_input.a, 1u, select(false, var_1, true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 29737u, u_input.a), abs(vec3<u32>(u_input.a, 4294967295u, 4294967295u))), 51172u) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-750f))))), reverseBits(1u), _wgslsmith_sub_i32(-(arg_0.c << (~1u % 32u)), -6811i), ~arg_0.d);
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(31919i, _wgslsmith_clamp_i32(var_0.c, 0i, -16739i)), vec2<i32>(~(-func_3(var_0.c, Struct_1(vec2<bool>(false, false)), vec3<bool>(false, arg_1, false))), -(arg_0.c ^ 0i)), reverseBits(select(vec2<i32>(1i, -60946i), vec2<i32>(~var_0.c, ~0i), true & (arg_1 | arg_1))));
    let var_2 = vec4<f32>(-955f, -1596f, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-arg_0.a)))));
    let var_3 = global0[_wgslsmith_index_u32(arg_0.b, 14u)];
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(826f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) + _wgslsmith_f_op_f32(-var_2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(470f, -1087f)))))), 1175f);
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))) | func_2(Struct_2(_wgslsmith_div_f32(825f, -212f), ~4294967295u, 1i, ~u_input.a), true), select(!any(vec2<bool>(true, true)), true, false) & (-1i != _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 0i), vec3<i32>(2147483647i, 2147483647i, 25525i)), -2147483647i)), any(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true))), true);
    let var_1 = Struct_1(var_0.yx);
    global0 = array<vec4<u32>, 14>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f * 781f) + _wgslsmith_f_op_f32(floor(-267f)))))), _wgslsmith_mult_u32(1u ^ ((u_input.a & 78139u) ^ ~9341u), ~_wgslsmith_mod_u32(abs(u_input.a), ~u_input.a)), ~(-1i), ~14807u);
    var var_3 = var_1;
    return Struct_1(select(select(select(vec2<bool>(var_1.a.x, var_3.a.x), vec2<bool>(var_3.a.x, true), !var_1.a.x), vec2<bool>(all(vec4<bool>(var_0.x, true, true, var_0.x)), all(var_0.xxw)), select(select(vec2<bool>(false, true), var_3.a, vec2<bool>(false, false)), !var_3.a, var_3.a.x)), select(var_0.wy, !select(vec2<bool>(var_3.a.x, var_3.a.x), vec2<bool>(true, false), var_3.a.x), !var_3.a), var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 3239u;
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(4294967295u, u_input.a)) | ~(~vec2<u32>(32875u, u_input.a)), _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(25646u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 23017u))), ~abs(vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, 811f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(936f, 936f))))), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(min(~u_input.a | u_input.a, u_input.a), 14u)], global0[_wgslsmith_index_u32(firstTrailingBit(1u), 14u)]));
}

