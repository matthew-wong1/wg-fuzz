struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37935u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~(u_input.b << (24585u % 32u))), ~u_input.b, ~firstTrailingBit(1u), 4294967295u), vec4<u32>(u_input.b | firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34530u, 802u), vec3<u32>(u_input.b, u_input.b, 29218u))), ~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~4294967295u), ~(~(~4294967295u)), ~(~_wgslsmith_div_u32(u_input.b, 1u))));
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, ~16423i, u_input.a), select(vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-575i, 1i, -1i), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, false, false), true))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, 2147483647i) >> (~18737u % 32u), ~u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 2147483647i), vec3<i32>(u_input.a, 0i, u_input.a))), (~vec4<i32>(2147483647i, -20866i, 1650i, u_input.a) | (vec4<i32>(31288i, 2145i, -2147483647i, u_input.a) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(11431u, u_input.b, 1u, 0u), abs(vec4<u32>(1u, u_input.b, 47175u, u_input.b))) % vec4<u32>(32u))), ~(~vec4<i32>(u_input.a, 30940i, u_input.a, u_input.a) << (select(vec4<u32>(12313u, u_input.b, u_input.b, u_input.b), vec4<u32>(2775u, u_input.b, u_input.b, 43161u), false) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a, u_input.a ^ _wgslsmith_div_i32(2147483647i, -1316i), -u_input.a, 11191i), Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(abs(vec3<i32>(u_input.a, -5754i, u_input.a))), firstTrailingBit(reverseBits(vec3<i32>(2147483647i, 11222i, -1i)))), vec3<i32>(-u_input.a, 1i & (-12556i >> (u_input.b % 32u)), u_input.a), vec4<i32>(u_input.a, 5064i, _wgslsmith_sub_i32(u_input.a | u_input.a, 0i), i32(-1i) * -2147483647i)));
    var var_1 = select(vec4<bool>(any(vec2<bool>(all(vec3<bool>(true, false, arg_0)), all(vec2<bool>(true, arg_0)))), arg_0, any(!vec3<bool>(arg_0, true, false)), any(vec2<bool>(any(vec2<bool>(arg_0, arg_0)), any(vec2<bool>(true, false))))), vec4<bool>(arg_0, arg_0, !arg_0, all(select(!vec4<bool>(true, arg_0, false, true), !vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, false, false)))), false);
    var var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1218f, -2549f, 1060f, -396f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, -173f, -1526f, 327f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(368f, -930f, -2295f, 337f) + vec4<f32>(694f, -1354f, -400f, 443f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1496f, -1176f, 738f, -164f), vec4<f32>(-2123f, -1046f, -679f, 500f))), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, arg_0, var_1.x, arg_0), var_1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(step(-236f, _wgslsmith_f_op_f32(floor(1f)))), 1075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 790f), -232f));
    return vec3<i32>(var_0.b.x, 9466i, 149i);
}

fn func_2() -> Struct_3 {
    var var_0 = !vec2<bool>(-u_input.a < -9329i, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    var var_1 = ~u_input.b;
    global0 = ~select(~select(52024u << (u_input.b % 32u), 34833u, var_0.x && false), firstLeadingBit(17116u), true);
    var var_2 = Struct_1(firstLeadingBit(countOneBits(func_3(any(vec3<bool>(false, var_0.x, true))))), vec3<i32>(1i, ~select(-48126i, 1i, false), u_input.a | u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(~(i32(-1i) * -27635i), u_input.a, -firstLeadingBit(10451i), 0i), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, u_input.a, -61467i, u_input.a)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -40921i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -78980i, 1i)), vec4<i32>(~2147483647i, _wgslsmith_mod_i32(2147483647i, u_input.a), -2147483647i, u_input.a << (u_input.b % 32u)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-707f - -258f), 432f, 122f, _wgslsmith_div_f32(-1000f, 485f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(662f, -1102f, 351f, -1000f), vec4<f32>(1172f, -1000f, 820f, 1295f), vec4<bool>(true, var_0.x, false, var_0.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1421f, -1167f, 604f, -560f), vec4<f32>(1000f, -397f, 704f, -826f), false)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-378f)) + -291f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -1287f)) * _wgslsmith_f_op_f32(sign(-1033f))), _wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1997f, -702f)) + -1198f)))));
    return Struct_3(Struct_1(_wgslsmith_div_vec3_i32(var_2.b, abs(vec3<i32>(var_2.a.x, u_input.a, var_2.a.x))), -(vec3<i32>(-20775i, -37098i, -1i) >> (~vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u))), vec4<i32>(abs(u_input.a << (u_input.b % 32u)), ~_wgslsmith_div_i32(var_2.a.x, -2147483647i), max(_wgslsmith_clamp_i32(-69275i, var_2.a.x, -21242i), _wgslsmith_clamp_i32(2147483647i, u_input.a, 18732i)), -20510i)), vec4<i32>((-5052i ^ u_input.a) ^ u_input.a, u_input.a, firstLeadingBit(_wgslsmith_mod_i32(4238i, 5114i)), min(-27339i, _wgslsmith_sub_i32(-63046i << (1u % 32u), max(u_input.a, u_input.a)))), Struct_1(-(~_wgslsmith_add_vec3_i32(var_2.a, var_2.a)), var_2.c.xwx, firstLeadingBit(-(~vec4<i32>(0i, var_2.c.x, var_2.c.x, 10852i)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec4<i32> {
    global0 = ~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.a, u_input.b, arg_3.a), vec3<u32>(10721u, u_input.b, u_input.b)) | (vec3<u32>(38236u, 15963u, u_input.b) & vec3<u32>(arg_3.b, 74171u, 0u))), reverseBits(vec3<u32>(15364u, ~1u, 4294967295u)));
    var var_0 = arg_3;
    var_0 = arg_3;
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, -1i), reverseBits(2147483647i | _wgslsmith_add_i32(var_0.d, arg_1.c.a.x)), countOneBits(-(~arg_2.a.a.x))), var_0.c.b, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a.a.x, arg_3.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), ~arg_2.c.b), _wgslsmith_dot_vec4_i32(arg_1.b << (vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b) % vec4<u32>(32u)), arg_1.b)), abs(vec4<i32>(abs(24897i), arg_2.a.c.x, 3812i, func_2().b.x))));
    var var_2 = var_1;
    return var_1.c;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-753f, _wgslsmith_f_op_f32(select(arg_0, arg_0, arg_1.e)), _wgslsmith_f_op_f32(-626f + -761f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, -1970f, arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, -567f, -1526f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_0, vec3<f32>(1000f, _wgslsmith_f_op_f32(round(var_0.x)), var_0.x), true)))), var_0, select(vec3<bool>(all(!vec4<bool>(false, false, true, arg_3.e)), (u_input.a ^ u_input.a) >= _wgslsmith_mod_i32(arg_1.d, arg_2), arg_1.e), vec3<bool>(any(vec4<bool>(true, false, arg_1.e, true)), any(!vec3<bool>(arg_1.e, false, arg_3.e)), false), all(select(vec2<bool>(true, arg_1.e), !vec2<bool>(false, arg_3.e), arg_1.e)))));
    var var_2 = arg_3.a;
    var var_3 = ~(~(func_4(true, func_2(), Struct_3(arg_3.c, arg_1.c.c, arg_1.c), Struct_2(u_input.b, arg_3.a, arg_1.c, arg_2, arg_1.e)) | min(select(arg_1.c.c, vec4<i32>(arg_1.c.b.x, -27150i, u_input.a, 2147483647i), false), ~vec4<i32>(arg_2, arg_1.d, -1i, 937i))));
    let var_4 = arg_3.b;
    return ~(-_wgslsmith_add_i32(-46581i & arg_3.c.c.x, firstTrailingBit(arg_1.d)) ^ arg_3.c.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, -473f, -130f)), vec3<f32>(-1213f, -760f, -577f))) * vec3<f32>(1f, 1f, 1f)))) + vec3<f32>(1f, 1f, 1f));
    let var_1 = 14403i;
    return ~(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(vec3<i32>(1i, 50314i, -u_input.a) << (vec3<u32>(firstLeadingBit(4294967295u), ~5491u, u_input.b) % vec3<u32>(32u)), ~abs(vec3<i32>(u_input.a, u_input.a, u_input.a)) | vec3<i32>(1i, abs(52709i), func_1(1000f, Struct_2(u_input.b, u_input.b, Struct_1(vec3<i32>(u_input.a, 33431i, -80488i), vec3<i32>(0i, u_input.a, -1i), vec4<i32>(u_input.a, -23208i, 18913i, -31365i)), u_input.a, true), 18824i, Struct_2(u_input.b, u_input.b, Struct_1(vec3<i32>(u_input.a, 41899i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 26982i)), u_input.a, true))), vec4<i32>(1i, u_input.a, 1i, 0i)), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true))), select(false, all(vec2<bool>(true, true)), true)), any(select(vec3<bool>(true, any(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true)), abs(~vec4<i32>(1i, u_input.a, -13327i, min(u_input.a, 0i))));
    global0 = u_input.b;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1215f, 436f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-403f, -255f, 183f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(177f + 477f) + _wgslsmith_f_op_f32(min(838f, -173f))), _wgslsmith_f_op_f32(2207f + _wgslsmith_f_op_f32(631f - -199f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-241f)), _wgslsmith_div_f32(-673f, 850f)))));
    var var_1 = var_0.yx;
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(round(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-125f))), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 0u), abs(u_input.b)), 4294967295u), vec3<u32>(max(~_wgslsmith_sub_u32(3592u, 0u), ~1u), u_input.b, ~0u), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), 196f, _wgslsmith_f_op_f32(trunc(var_0.x))));
}

