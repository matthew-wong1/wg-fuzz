struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 38540u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_mod_u32(~min(countOneBits(~9100u), 74088u), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 15459u, 0u), vec3<u32>(0u, 31508u, 10804u), vec3<bool>(true, true, true)), ~vec3<u32>(1u, 19280u, 0u)));
    let var_1 = abs(abs(~var_0));
    global0 = 0u << (_wgslsmith_mult_u32(var_0, ~var_1) % 32u);
    var var_2 = any(!(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), true)));
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_div_f32(-810f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(409f, -1301f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(188f)) + -1131f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f - -917f)) - 375f), _wgslsmith_f_op_f32(step(206f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - 1125f), _wgslsmith_f_op_f32(f32(-1f) * -1282f)))))));
    return select(vec3<bool>((_wgslsmith_div_f32(var_3.a.x, var_3.a.x) < var_3.a.x) != (_wgslsmith_f_op_f32(-var_3.a.x) >= -963f), !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true && (_wgslsmith_f_op_f32(min(-1150f, -610f)) == _wgslsmith_f_op_f32(-var_3.a.x))), !vec3<bool>(var_0 >= _wgslsmith_mult_u32(4294967295u, var_1), (0u & var_0) > 32027u, all(vec4<bool>(true, true, true, true))), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true)));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = true;
    global0 = (arg_0 ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, arg_0), ~arg_0), ~_wgslsmith_mod_u32(4956u, arg_0))) & 34929u;
    var var_1 = !select(select(select(!vec3<bool>(arg_1, false, false), func_3(), !arg_1), select(func_3(), func_3(), !vec3<bool>(arg_1, arg_1, arg_1)), select(!vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(true, arg_1, true), vec3<bool>(true, arg_1, true), vec3<bool>(false, arg_1, arg_1)), select(true, false, true))), vec3<bool>(any(vec3<bool>(arg_1, arg_1, arg_1)), any(!vec2<bool>(arg_1, arg_1)), any(vec3<bool>(true, true, true))), any(vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(arg_1, arg_1)), func_3().x, arg_1 && arg_1)));
    var_0 = var_1.x;
    global0 = 0u;
    return 3526f;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_3 {
    global0 = countOneBits(8488u);
    var var_0 = -vec2<i32>(_wgslsmith_mod_i32(0i, u_input.a), abs(_wgslsmith_sub_i32(arg_2.x, arg_2.x)) << (1u % 32u));
    global0 = ~select(~4294967295u, 31884u & _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(21971u, 39280u)), select(0u, 60003u, arg_3.d), ~4294967295u), select(arg_3.a, true, _wgslsmith_f_op_f32(abs(959f)) >= _wgslsmith_f_op_f32(-arg_3.c.a.x)));
    global0 = _wgslsmith_dot_vec4_u32(min(~vec4<u32>(~48591u, ~0u, 0u, 1u), max(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(~vec4<u32>(1236u, 1u, 1u, 4294967295u)))), ~vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = 702f;
    return Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-21180i, 1i, arg_2.x, 12111i), vec4<i32>(-2147483647i, 0i, 0i, arg_2.x) & vec4<i32>(-24074i, arg_2.x, 2147483647i, 0i)), -select(vec4<i32>(arg_2.x, u_input.a, arg_2.x, arg_2.x), vec4<i32>(u_input.a, 1i, u_input.a, 0i), vec4<bool>(arg_3.a, true, true, true))), vec2<i32>(u_input.a, -select(u_input.a, 38443i, arg_3.d)), arg_3.c.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = !all(vec3<bool>(false, false, true));
    var var_1 = arg_0.a.a != arg_1.a.b.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.a.c * arg_0.a.c));
    let var_3 = func_4(-629f, arg_1.a.b, vec2<i32>(-1i) * -(arg_1.a.b >> (~vec2<u32>(80714u, 64989u) % vec2<u32>(32u))), Struct_4(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, -1026f, arg_1.a.c.x, 926f) - var_2.a))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.c + arg_1.a.c) * arg_0.a.c)), true, true | select(true, true, all(vec3<bool>(true, true, false))))).a;
    var var_4 = any(!(!vec4<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, true)), false, true)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(386f, _wgslsmith_f_op_f32(-arg_1.a.c.x))), _wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_div_f32(1216f, _wgslsmith_f_op_f32(round(var_3.c.x))), -3016f)));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, -2147483647i, -2147483647i)), vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-3356i, -11440i), u_input.a)), -2147483647i, _wgslsmith_mod_i32(-23808i, u_input.a), u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a >> (arg_0 % 32u), _wgslsmith_mod_i32(-2147483647i, min(u_input.a, 1i)), 67947i, ~(i32(-1i) * -2689i)), vec4<i32>(8587i, _wgslsmith_div_i32(-2147483647i, u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -32779i), vec2<i32>(u_input.a, -8654i), vec2<i32>(-1i, -23058i)), vec2<i32>(u_input.a, -2837i)), u_input.a)));
    global0 = ~(~5069u);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(82417u, _wgslsmith_mult_u32(firstLeadingBit(~arg_0), arg_0 ^ 1u)), vec2<u32>(~arg_0, arg_0));
    global0 = ~arg_0;
    let var_2 = vec2<bool>(false, arg_2.e);
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(4294967295u, arg_0)), ~vec2<u32>(48507u, var_1)), vec2<u32>(abs(arg_0), _wgslsmith_clamp_u32(4294967295u, var_1, arg_0)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, var_1), abs(vec2<u32>(4068u, var_1)), select(vec2<u32>(arg_0, var_1), vec2<u32>(arg_0, arg_0), var_2)) % vec2<u32>(32u))), ~1u);
}

fn func_1() -> Struct_1 {
    global0 = ~abs(~1u);
    var var_0 = -(u_input.a & u_input.a);
    global0 = func_6(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 14288u), vec2<u32>(1u, 50669u)))) ^ reverseBits(~reverseBits(0u)), func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(0u, false)) * _wgslsmith_f_op_f32(197f - 331f)), ~vec2<i32>(-1i, u_input.a) >> (~vec2<u32>(28202u, 0u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(2147483647i, u_input.a)), Struct_4(select(false, false, true), Struct_2(vec4<f32>(713f, -1169f, 1185f, 1080f)), Struct_2(vec4<f32>(1634f, -1648f, -739f, 481f)), u_input.a > -2785i, true)), func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(451f, 1658f) - -1000f), vec2<i32>(min(u_input.a, 2147483647i), -u_input.a), select(vec2<i32>(-50269i, u_input.a), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(20369i, u_input.a), vec2<bool>(false, false)), vec2<bool>(true, false)), Struct_4(func_3().x, Struct_2(vec4<f32>(746f, -1136f, 1307f, 764f)), Struct_2(vec4<f32>(-1271f, 1529f, 1100f, 306f)), true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-122f + 972f), _wgslsmith_f_op_f32(step(1028f, -1236f)), 264f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1118f, 1000f, 604f)))), Struct_4(true, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(386f, 284f, -1000f, -1000f), vec4<f32>(-571f, -1000f, 848f, 270f))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(774f, 113f, -1697f, 1125f)))), all(vec4<bool>(true, true, true, true)), false));
    var_0 = -(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -22923i), vec2<i32>(1i, u_input.a)) & vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-34612i, -1908i, u_input.a, u_input.a), vec4<i32>(7976i, 4160i, -1i, u_input.a)))) >> (13037u % 32u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-740f, _wgslsmith_f_op_f32(ceil(683f))), _wgslsmith_f_op_f32(-859f * _wgslsmith_f_op_f32(f32(-1f) * -712f)))), _wgslsmith_f_op_f32(1000f * func_4(_wgslsmith_f_op_f32(f32(-1f) * -485f), vec2<i32>(-2147483647i, i32(-1i) * -9853i), vec2<i32>(1i, 1i), Struct_4(true, Struct_2(vec4<f32>(-501f, 195f, -168f, -1806f)), func_5(Struct_3(Struct_1(10572i, vec2<i32>(-1i, -11900i), vec4<f32>(182f, 204f, 1216f, -1000f))), Struct_3(Struct_1(21347i, vec2<i32>(0i, u_input.a), vec4<f32>(1216f, -759f, 2214f, 490f))), vec3<f32>(-825f, 116f, 815f)), true, any(vec2<bool>(true, true)))).a.c.x));
    return func_4(201f, _wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-6167i, u_input.a), vec2<i32>(2147483647i, u_input.a)), ~vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(~vec2<i32>(u_input.a, 31046i)) >> (abs(firstTrailingBit(vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u))), -(~(~vec2<i32>(u_input.a, 690i) ^ (vec2<i32>(u_input.a, 16556i) << (vec2<u32>(78828u, 1u) % vec2<u32>(32u))))), Struct_4(all(select(vec2<bool>(true, true), vec2<bool>(false, false), func_3().xz)), Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(465f, var_1.x, var_1.x, 365f), vec4<f32>(706f, var_1.x, var_1.x, var_1.x)))), func_5(Struct_3(Struct_1(u_input.a, vec2<i32>(u_input.a, 0i), vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x))), func_4(_wgslsmith_f_op_f32(var_1.x - var_1.x), -vec2<i32>(-2147483647i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(-17534i, -26580i), vec2<i32>(22021i, u_input.a)), Struct_4(false, Struct_2(vec4<f32>(-442f, 1110f, 283f, var_1.x)), Struct_2(vec4<f32>(-741f, -1107f, var_1.x, -521f)), false, false)), func_5(Struct_3(Struct_1(5691i, vec2<i32>(-2147483647i, -9126i), vec4<f32>(781f, 1672f, 925f, var_1.x))), func_4(var_1.x, vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -9528i), Struct_4(true, Struct_2(vec4<f32>(803f, var_1.x, var_1.x, var_1.x)), Struct_2(vec4<f32>(var_1.x, var_1.x, 185f, var_1.x)), true, true)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 2326f), vec3<f32>(var_1.x, var_1.x, var_1.x))).a.xzy), !(_wgslsmith_f_op_f32(round(var_1.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1575f)), !any(vec2<bool>(true, true)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    let var_0 = 57515i;
    global0 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(1u, 5565u), ~1u), 70336u);
    let var_1 = func_1();
    global0 = abs(~(~select(~4294967295u, ~4294967295u, false)));
    global0 = reverseBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(828u, _wgslsmith_div_u32(abs(76529u), 7907u))), -(~_wgslsmith_add_vec3_i32(-vec3<i32>(var_0, var_0, 43964i), select(vec3<i32>(var_0, 0i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, var_1.b.x), false))), firstLeadingBit(62666u), ~21584u);
}

