struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = ~min(1i, u_input.b);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -2117f))), Struct_2(Struct_1(_wgslsmith_mod_i32(var_0, -2147483647i) ^ var_0, -17290i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1959i, 1258i, var_0, u_input.b), select(vec4<i32>(2147483647i, u_input.c.x, var_0, var_0), vec4<i32>(u_input.c.x, var_0, u_input.c.x, 61409i), vec4<bool>(true, true, false, true))), u_input.c, Struct_1(u_input.c.x, -(var_0 >> (1u % 32u))), 35206u));
    var_1 = Struct_4(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(267f, _wgslsmith_f_op_f32(exp2(var_1.a)))))), Struct_2(Struct_1(u_input.c.x, _wgslsmith_sub_i32(-1i, u_input.c.x)), abs(var_1.b.b), abs(firstTrailingBit(vec3<i32>(-2147483647i, var_0, var_0))), var_1.b.a, _wgslsmith_mod_u32(~u_input.a, reverseBits(8138u)) | firstLeadingBit(u_input.a & u_input.a)));
    var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -643f)), var_1.b);
    let var_2 = ~var_1.b.e ^ u_input.a;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-337f, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(var_1.a * arg_0.x))))), Struct_2(Struct_1(var_1.b.c.x, _wgslsmith_div_i32(u_input.c.x, var_0)), vec4<i32>(-1i) * -var_1.b.b, abs(u_input.c), var_1.b.d, ~var_1.b.e));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> u32 {
    var var_0 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, all(vec3<bool>(true, true, false))), any(vec4<bool>(true, false, true, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), false), vec3<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)), true));
    var_0 = !vec3<bool>(!all(var_0.yx), any(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true)), true);
    var var_1 = arg_0.x;
    var var_2 = Struct_3(true, func_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(round(arg_1.a))), 1251f, arg_1.a, _wgslsmith_f_op_f32(ceil(-1083f)))).b, arg_1.b);
    var var_3 = Struct_3(var_0.x | !var_2.a, Struct_2(var_2.c.a, vec4<i32>(1i, ~countOneBits(u_input.b), 0i, 2147483647i), vec3<i32>(_wgslsmith_div_i32(arg_1.b.b.x, -2147483647i), min(-u_input.b, _wgslsmith_add_i32(arg_1.b.c.x, -39534i)), var_2.b.c.x), Struct_1(-2147483647i, ~404i >> (~u_input.a % 32u)), ~1u), Struct_2(arg_1.b.d, arg_1.b.b << (min(vec4<u32>(var_2.c.e, 0u, arg_1.b.e, 12995u), vec4<u32>(14159u, 13312u, 37570u, u_input.a) >> (vec4<u32>(var_2.c.e, 1u, 4294967295u, 61163u) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec3<i32>(~(-2147483647i), -1i, ~1i), arg_1.b.a, 0u));
    return 43466u;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = ~(~arg_2);
    var var_1 = max(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(3559u, u_input.a) << (var_0.xz % vec2<u32>(32u)), arg_2.zy >> (arg_2.yx % vec2<u32>(32u))), vec2<u32>(min(1u, arg_3), arg_2.x)), 4294967295u);
    var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(1u, arg_3, ~(~78251u))), select(~arg_2.x, ~9944u, -260f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-251f, arg_1.x))));
    var var_2 = Struct_1(_wgslsmith_clamp_i32(-u_input.b, 2147483647i, firstLeadingBit(_wgslsmith_div_i32(u_input.c.x, u_input.c.x)) >> (arg_2.x % 32u)), ~u_input.b);
    let var_3 = -u_input.c.x;
    return Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, _wgslsmith_f_op_f32(select(arg_1.x, -700f, arg_0)), arg_1.x, arg_1.x))).b.a, vec4<i32>(0i, 2977i & func_2(vec4<f32>(-542f, arg_1.x, arg_1.x, 302f)).b.b.x, i32(-1i) * -var_2.b, var_2.b), _wgslsmith_sub_vec3_i32(-vec3<i32>(~u_input.b, reverseBits(var_2.a), var_2.a | 2147483647i), u_input.c), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 543f, arg_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1117f))))).b.a, ~(~firstTrailingBit(var_0.x << (arg_2.x % 32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    let var_1 = Struct_4(-1027f, func_4(!((u_input.a > 1u) && true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1100f, 534f), vec2<f32>(var_0.x, var_0.x)))), vec3<u32>(func_3(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 2147483647i), u_input.c.zy), func_2(vec4<f32>(-728f, var_0.x, -694f, 1000f))), 130235u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(14256u, 1u, u_input.a, u_input.a), vec4<u32>(2095u, 19413u, u_input.a, u_input.a)))), u_input.a));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-1074f, var_0.x), 347f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1402f, -572f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, 467f, 311f), vec3<f32>(-766f, -271f, -1000f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-699f, var_1.a, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(1369f - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_1.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1555f, -387f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 303f, -2468f) + vec3<f32>(-324f, var_1.a, -165f))))));
    var var_3 = var_0;
    var var_4 = func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(785f, -710f, -1467f, -1166f) * vec4<f32>(var_3.x, -487f, var_3.x, var_2.x)))), vec4<f32>(475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), var_2.x, _wgslsmith_f_op_f32(-1093f * _wgslsmith_f_op_f32(var_3.x + var_2.x))))));
    return var_4.b;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = ~arg_1.b | ~(-min(~arg_1.b, arg_1.b));
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_div_f32(1152f, 996f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-304f - -1581f) * _wgslsmith_f_op_f32(ceil(560f))) - -827f), _wgslsmith_f_op_f32(max(-763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1150f, -233f))))))).b.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(947f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f - -1451f)), -260f))));
    let var_3 = max(vec4<i32>(var_1.a, _wgslsmith_dot_vec3_i32(~arg_1.c, -arg_1.c), u_input.c.x, 1i) ^ -(~vec4<i32>(var_0.x, u_input.c.x, var_1.a, 1i)), var_0);
    let var_4 = func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, var_2.x), var_2.x, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(var_2.x * -699f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2392f, -874f, -397f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1567f, -1638f, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) - vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<bool>(false, arg_0.x, false, true))))))).b;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), func_1())) * -1940f) - 1f), 1f);
    var var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), Struct_2(Struct_1(u_input.b, u_input.c.x), vec4<i32>(u_input.c.x, 38192i, -2147483647i, -52150i), vec3<i32>(-2147483647i, u_input.c.x, u_input.b), Struct_1(3638i, u_input.b), u_input.a))) * var_0.x)));
    var var_2 = -vec3<i32>(-10666i, var_1.b.d.b, ~u_input.c.x);
    let var_3 = -var_2.xy;
    var_2 = ~(-u_input.c >> (_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 0u, u_input.a)), countOneBits(vec3<u32>(u_input.a, var_1.b.e, var_1.b.e)) & vec3<u32>(var_1.b.e, var_1.b.e, 34998u)) % vec3<u32>(32u)));
    var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 687f, -1526f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-375f, -1998f, var_1.a, 1092f), vec4<f32>(-369f, var_0.x, 861f, 1443f), vec4<bool>(false, true, true, false))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), -2187f)), _wgslsmith_div_f32(-1244f, -606f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) - var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1111f))))));
    var var_4 = func_2(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 1353f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1859f, -777f) * _wgslsmith_f_op_f32(trunc(var_0.x))))), var_1.a, -267f)).b.d;
    let var_5 = var_1.b.d;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1061f, 508f) + vec2<f32>(1150f, var_0.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(var_0.x + 116f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 1000f), vec2<f32>(var_0.x, var_1.a), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -161f) + vec2<f32>(1594f, 2206f)), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1254f, 354f, _wgslsmith_f_op_f32(var_0.x * -873f), var_0.x) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(680f, 927f, var_0.x, var_1.a), vec4<f32>(var_0.x, 403f, var_1.a, 273f)), vec4<f32>(var_1.a, var_0.x, 462f, -105f)))), -1000f);
}

