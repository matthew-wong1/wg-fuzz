struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(5317u, 1u), vec2<u32>(3786u, 0u), vec2<u32>(24167u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(33559u, 1u), vec2<u32>(10954u, 49068u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 3938u), vec2<u32>(19397u, 4294967295u), vec2<u32>(1u, 30184u), vec2<u32>(14319u, 91640u), vec2<u32>(1u, 16844u), vec2<u32>(47366u, 1u), vec2<u32>(48959u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(68375u, 4294967295u), vec2<u32>(45449u, 83869u), vec2<u32>(83949u, 35053u), vec2<u32>(4294967295u, 0u), vec2<u32>(4080u, 16214u));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(561f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(398f))));
    let var_1 = vec3<bool>(false, any(select(vec3<bool>(all(vec4<bool>(var_0, var_0, true, var_0)), var_0, true), select(!vec3<bool>(true, var_0, var_0), !vec3<bool>(true, true, var_0), !var_0), vec3<bool>(true || var_0, true, false))), !any(vec2<bool>(var_0, var_0)));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(abs(u_input.e.x), 21u)] ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.e.x) ^ u_input.e, vec3<u32>(0u, 23151u, 15566u) ^ vec3<u32>(4294967295u, 3966u, u_input.e.x)), u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), u_input.e.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, 25486u, u_input.e.x), vec4<u32>(u_input.d, u_input.d, u_input.d, 64905u)), ~14747u), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, 7660u, 1u, 4294967295u), vec4<u32>(u_input.d, u_input.e.x, 1u, 27424u)), (vec4<u32>(u_input.d, u_input.d, 26028u, u_input.d) | ~vec4<u32>(0u, u_input.e.x, 43030u, u_input.e.x)) >> (min(~vec4<u32>(1u, 17405u, 15793u, 37124u), max(vec4<u32>(16807u, 54815u, 4294967295u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 11292u))) % vec4<u32>(32u))));
    global1 = array<vec2<u32>, 21>();
    var var_3 = min(var_2.a.x, _wgslsmith_mult_u32(abs(~u_input.e.x), var_2.a.x)) ^ 0u;
    return ~(~_wgslsmith_add_u32(7404u >> (0u % 32u), firstLeadingBit(30404u)) | abs(~var_2.b.x));
}

fn func_2() -> bool {
    global2 = 20040u;
    let var_0 = u_input.d;
    var var_1 = u_input.a.zxw;
    var var_2 = ~4294967295u;
    var_2 = 1u;
    return (countOneBits(func_3(-465f)) == ~u_input.e.x) || true;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> vec4<u32> {
    global0 = !arg_0.x && func_2();
    let var_0 = _wgslsmith_div_vec2_u32(~select(vec2<u32>(_wgslsmith_clamp_u32(arg_1, 68860u, 4294967295u), 12919u), _wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(u_input.e.x, 21u)], u_input.e.xy) ^ abs(vec2<u32>(arg_1, 0u)), select(select(arg_0.xz, arg_0.yx, true), vec2<bool>(false, false), !arg_0.x)), vec2<u32>(arg_1, 10744u));
    global1 = array<vec2<u32>, 21>();
    global2 = u_input.e.x;
    global0 = any(select(select(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), !(!vec4<bool>(false, false, arg_0.x, false)), any(!vec2<bool>(arg_0.x, arg_0.x))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x)), any(arg_0)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), arg_0.x));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 27540u, arg_1, 13855u), vec4<u32>(1u, var_0.x, arg_1, 0u))), ~vec4<u32>(arg_1, var_0.x, arg_1, 10476u), min(firstTrailingBit(vec4<u32>(4294967295u, 1u, 2561u, arg_1)), vec4<u32>(u_input.d, arg_1, 1u, arg_1) << (vec4<u32>(arg_1, 1u, var_0.x, 0u) % vec4<u32>(32u)))), ~select(vec4<u32>(1u, u_input.d, u_input.e.x, 49568u), vec4<u32>(0u, 9119u, 1828u, arg_1), arg_0.x) | ~vec4<u32>(18661u, 17706u, 4294967295u, 3634u), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.x), u_input.e), var_0.x), _wgslsmith_div_u32(var_0.x, 0u), abs(u_input.d), abs(8321u | u_input.e.x))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.x, 4294967295u), _wgslsmith_add_u32(func_3(-477f), _wgslsmith_sub_u32(0u, u_input.d)), ~func_3(924f), arg_1), vec4<u32>(1u | arg_1, ~_wgslsmith_mod_u32(arg_1, 14430u), 4294967295u, 1u)), select(~vec4<u32>(u_input.e.x, 4294967295u, 4294967295u, 1u) >> (firstTrailingBit(vec4<u32>(21155u, 111395u, arg_1, 4294967295u)) % vec4<u32>(32u)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1680u, 4294967295u, 4294967295u, arg_1), vec4<u32>(37697u, var_0.x, 1u, var_0.x))), vec4<bool>(true, u_input.b.x < 53641i, arg_0.x, !arg_0.x)) & vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, u_input.d), firstTrailingBit(u_input.d)), ~var_0.x, 0u, arg_1));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec4<bool>(!all(vec3<bool>(true, true, true)) & (false & any(vec3<bool>(false, true, true))), false, select(any(vec4<bool>(true, true, true, true)) & !all(vec2<bool>(false, true)), !(_wgslsmith_clamp_i32(u_input.c.x, 73301i, u_input.c.x) != 3911i), select(all(vec2<bool>(true, true)), false, true)), ~(~28428u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(46915u, u_input.d, arg_0.x, arg_0.x), arg_1.b)) >= ~arg_0.x);
    let var_1 = 2147483647i;
    var var_2 = var_0.zxx;
    var var_3 = vec2<u32>(~func_1(!var_0.wwy, 15868u).x, ~arg_0.x);
    global0 = all(select(vec4<bool>(all(vec4<bool>(var_2.x, true, false, var_2.x)) && true, any(!vec2<bool>(true, var_0.x)), all(select(var_0.yyy, vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, var_2.x))), true && (var_0.x & var_2.x)), !(!vec4<bool>(false, false, var_2.x, var_0.x)), !(!vec4<bool>(true, var_0.x, false, false))));
    return _wgslsmith_f_op_f32(f32(-1f) * -486f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))))));
    let var_0 = _wgslsmith_f_op_f32(func_4(func_1(vec3<bool>(true, true, true), u_input.d), Struct_2(~max(max(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.yx), func_1(vec3<bool>(true, true, false), 47358u).xy), ~select(firstTrailingBit(vec4<u32>(25339u, u_input.e.x, u_input.e.x, 84347u)), vec4<u32>(4294967295u, 14173u, u_input.d, 67484u), vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(689f, var_0))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, var_0))))), vec2<f32>(2083f, _wgslsmith_f_op_f32(-395f * -317f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-547f, var_0)))))) - _wgslsmith_div_vec2_f32(vec2<f32>(-467f, _wgslsmith_f_op_f32(step(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, true)), select(false, true, false)), !any(vec3<bool>(true, false, false))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true)))));
    global0 = true;
    global2 = _wgslsmith_add_u32(~1u, u_input.e.x);
    var var_2 = vec2<i32>(~abs(~u_input.c.x), 2147483647i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1312f + 1f)))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(var_1.x > 1000f, true)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 702f)))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, 405f))), 1f))), -867f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, var_1.x, var_1.x)), vec3<f32>(var_0, 431f, -753f), any(vec2<bool>(false, false)))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0)), -466f, _wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -235f), var_0, _wgslsmith_f_op_f32(-425f - -1273f)) * vec3<f32>(_wgslsmith_div_f32(1123f, -1096f), _wgslsmith_f_op_f32(abs(-599f)), var_1.x))));
    var var_4 = 2689u;
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(819f, -905f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -1158f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + var_1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - var_3.c.xx))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, var_3.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.zxy, u_input.e.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_2.x, ~reverseBits(var_2.x)), _wgslsmith_sub_vec3_i32(select(countOneBits(vec3<i32>(-18299i, var_2.x, 2147483647i)), countOneBits(u_input.c), vec3<bool>(true, false, true)), vec3<i32>(var_2.x, u_input.a.x, var_2.x))), -1i);
}

