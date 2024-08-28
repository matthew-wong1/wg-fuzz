struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1541f, -955f, 334f), vec3<f32>(844f, 1081f, 780f), vec3<f32>(410f, 1648f, -508f), vec3<f32>(883f, 486f, -1100f), vec3<f32>(-437f, -699f, 636f), vec3<f32>(113f, 1587f, 218f), vec3<f32>(-668f, -174f, 1329f), vec3<f32>(-1720f, 1000f, 227f), vec3<f32>(147f, -201f, -743f), vec3<f32>(-101f, 1000f, -309f), vec3<f32>(434f, 252f, -1842f), vec3<f32>(-1265f, 1000f, 1014f), vec3<f32>(-779f, -1615f, -374f), vec3<f32>(-1000f, -503f, -3688f), vec3<f32>(2019f, -192f, 326f), vec3<f32>(501f, 764f, -803f), vec3<f32>(-772f, -1216f, 290f), vec3<f32>(-564f, -815f, -1263f), vec3<f32>(-1000f, 445f, -123f), vec3<f32>(-771f, 262f, -1074f), vec3<f32>(323f, 213f, 470f), vec3<f32>(-2281f, 1094f, 495f), vec3<f32>(-1258f, 1000f, 620f), vec3<f32>(1320f, 1381f, -976f));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(0u, 19943u, 1u), -7697i), Struct_1(vec3<u32>(1u, 0u, 39396u), -32829i), Struct_1(vec3<u32>(22300u, 4294967295u, 29157u), 2039i), Struct_1(vec3<u32>(32092u, 62157u, 1u), 11027i), Struct_1(vec3<u32>(47570u, 1u, 0u), 6689i), Struct_1(vec3<u32>(62009u, 1u, 15854u), 2147483647i), Struct_1(vec3<u32>(1u, 1u, 0u), -32657i), Struct_1(vec3<u32>(0u, 2140u, 1u), 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(vec3<u32>(~35167u, ~u_input.b, 4382u), max(_wgslsmith_clamp_i32(u_input.a, abs(12015i) | (u_input.a | -45025i), abs(u_input.a) >> (u_input.b % 32u)), ~(-26754i)));
    var var_1 = 51327i;
    var_1 = countOneBits(abs(-1i));
    global0 = array<vec3<f32>, 24>();
    var var_2 = global1[_wgslsmith_index_u32(select(~(~firstLeadingBit(var_0.a.x) ^ ~(~var_0.a.x)), var_0.a.x, (min(30780u << (var_0.a.x % 32u), 53185u) >= 1u) | (all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)) || true)), 8u)];
    return firstLeadingBit(vec3<u32>(4294967295u & _wgslsmith_div_u32(u_input.b, abs(var_0.a.x)), 806u, 1u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = array<vec3<f32>, 24>();
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_mod_u32(43624u, _wgslsmith_add_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(507u, 87348u), abs(arg_0.a.x)), 114459u));
    global1 = array<Struct_1, 8>();
    let var_2 = func_3();
    return false;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    let var_0 = select(vec4<bool>(any(vec2<bool>(false, true)) || true, firstLeadingBit(~u_input.a) >= arg_0, true, true), !vec4<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true, true), vec4<bool>(!all(vec2<bool>(true, true)), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), (2147483647i | _wgslsmith_mod_i32(u_input.a, 17700i)) != ~_wgslsmith_dot_vec3_i32(arg_1.xyz, vec3<i32>(u_input.a, arg_0, 1i)), !(!func_2(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]))));
    global1 = array<Struct_1, 8>();
    let var_1 = all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x || all(var_0.yww)), !(!select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), var_0)), var_0.x || var_0.x));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, ~_wgslsmith_sub_u32(4294967295u, u_input.b), 73432u, 76758u), ~abs(vec4<u32>(0u, u_input.b, u_input.b, 0u))), ~(firstLeadingBit(~vec4<u32>(79490u, 1u, u_input.b, 4294967295u)) ^ firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.b, 4294967295u) & vec4<u32>(u_input.b, 72271u, 375u, u_input.b))));
    return 852f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    let var_0 = global1[_wgslsmith_index_u32(min(56138u, u_input.b | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 1u)))), 8u)];
    var var_1 = -1189f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f - _wgslsmith_f_op_f32(func_1(u_input.a, vec4<i32>(-2147483647i, -47252i, -4227i, -1i))))), 535f));
    var var_2 = Struct_1(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(48065u, var_0.a.x, 4294967295u), vec3<u32>(11736u, 96529u, 62760u)), var_0.a), u_input.a);
    let var_3 = 0i;
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(896f, 809f), 1f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-192f + 1000f))))))));
    let var_5 = 1i;
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-44405i, _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, var_0.b), ~(-vec2<i32>(1i, var_3) | -vec2<i32>(-9635i, var_0.b))), vec2<i32>(-2147483647i, u_input.a), var_0.a.x & ~(~(1u >> (0u % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-385f, 649f, var_4, 158f), vec4<f32>(var_4, 1000f, -346f, var_4))) * vec4<f32>(var_4, -233f, -1078f, var_4)))));
}

