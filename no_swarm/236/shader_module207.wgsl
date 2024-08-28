struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: array<i32, 15> = array<i32, 15>(-41538i, 2147483647i, 7504i, 26843i, -54454i, 1i, 19021i, -47104i, 2147483647i, 2147483647i, 0i, 44207i, 2147483647i, -8566i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-118f, -807f, -108f))) - vec3<f32>(-662f, -1510f, -1722f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-764f, 186f, -1297f) * vec3<f32>(871f, -797f, -1000f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-855f, 1000f, -213f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 994f, 352f)))))));
    let var_1 = global1[_wgslsmith_index_u32(~(max(~u_input.b, u_input.b) >> (u_input.b % 32u)), 15u)];
    var var_2 = reverseBits(countOneBits(u_input.b));
    let var_3 = 1i;
    var var_4 = Struct_5(Struct_3(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -578f, 430f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(583f, var_0.x, var_0.x) - vec3<f32>(655f, var_0.x, var_0.x))), vec3<f32>(567f, 128f, -1724f), vec3<bool>(true, any(vec2<bool>(true, false)), true))), 381f, 1u, 13806u > u_input.b), _wgslsmith_dot_vec3_i32(u_input.c, ~(-vec3<i32>(-41528i, global1[_wgslsmith_index_u32(47813u, 15u)], 13412i) ^ ~u_input.c)), vec2<u32>(u_input.b, 27117u) >> (vec2<u32>(_wgslsmith_sub_u32(1440u, u_input.b), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, 1u, 29808u), 30576u >> (1u % 32u))) % vec2<u32>(32u)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, 657f), vec3<f32>(688f, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1125f, -346f), vec3<f32>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(175f, var_0.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x)), u_input.b, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    return vec3<bool>(true, var_4.a.e & all(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_4.a.d, u_input.b), 13u)], vec3<bool>(false, var_4.d.e, false), !vec3<bool>(var_4.d.e, var_4.d.e, var_4.a.e))), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_2.a.e;
    var var_1 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(53865u, arg_2.d.d), 0u, ~arg_2.d.d, arg_2.d.d), vec4<u32>(arg_2.c.x, countOneBits(u_input.b), reverseBits(73295u), 1u), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(43150u, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 0u, 1021u, arg_2.a.d)), vec4<u32>(u_input.b, 4294967295u, arg_2.a.d, arg_2.d.d))), -32236i), (vec3<i32>(firstLeadingBit(2172i), _wgslsmith_mult_i32(0i, 2508i), global1[_wgslsmith_index_u32(u_input.b, 15u)] | u_input.c.x) & (vec3<i32>(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.d, 74562u, 0u), vec3<u32>(arg_2.d.d, arg_2.c.x, 80481u), vec3<u32>(40620u, 4000u, 0u)) % vec3<u32>(32u)))) ^ u_input.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-993f))), arg_3.x)));
    global1 = array<i32, 15>();
    var_1 = Struct_4(var_1.a, var_1.b);
    return arg_2.d.e;
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<bool>, 13>();
    let var_0 = select(global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(35577u, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, 724u, 423u) & vec4<u32>(59571u, u_input.b, u_input.b, u_input.b))), 13u)], !select(global0[_wgslsmith_index_u32(31078u, 13u)], vec3<bool>(true, false, false), (u_input.b != u_input.b) && true), func_4(abs(u_input.c), func_3(), Struct_5(Struct_3(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-454f, 1262f, -322f), vec3<f32>(-446f, -120f, 1000f), global0[_wgslsmith_index_u32(15397u, 13u)])), 342f, 6568u, select(true, false, true)), ~(i32(-1i) * -1i), vec2<u32>(u_input.b & 43625u, 1u), Struct_3(_wgslsmith_f_op_f32(-553f * 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -418f, -1151f)), 1255f, 4294967295u, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(339f + 312f), -778f, _wgslsmith_f_op_f32(-470f * 447f), -1000f))));
    let var_1 = Struct_3(_wgslsmith_div_f32(693f, _wgslsmith_f_op_f32(sign(1670f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1094f, -490f, _wgslsmith_f_op_f32(-599f + -1469f)), vec3<f32>(-284f, _wgslsmith_f_op_f32(f32(-1f) * -1789f), _wgslsmith_f_op_f32(f32(-1f) * -552f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -616f)))))), _wgslsmith_div_u32(u_input.b, u_input.b), func_3().x);
    let var_2 = u_input.b;
    let var_3 = Struct_5(var_1, u_input.c.x, vec2<u32>(var_1.d, 4294967295u), Struct_3(595f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.c * var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(step(479f, var_1.b.x)))), var_1.b.x, var_1.d, var_1.e));
    return Struct_4(Struct_1(vec4<u32>(1u << (var_2 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.d, 39657u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, u_input.b, var_3.a.d, 40585u), vec4<u32>(56647u, 872u, 4294967295u, var_3.a.d))), _wgslsmith_add_u32(u_input.b, var_2 ^ u_input.b), firstLeadingBit(select(var_3.d.d, var_3.c.x, var_1.e))), firstTrailingBit(min(1i, u_input.a | 13137i))), vec3<i32>(_wgslsmith_mult_i32(countOneBits(~var_3.b), reverseBits(var_3.b << (var_2 % 32u))), abs(_wgslsmith_div_i32(~global1[_wgslsmith_index_u32(var_1.d, 15u)], -5163i)), var_3.b ^ -var_3.b));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_4 {
    global1 = array<i32, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0, -1038f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), arg_2.x, arg_2.x, 1f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1008f, arg_0, arg_0) - vec4<f32>(arg_2.x, arg_0, arg_2.x, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -506f, -442f, arg_2.x), vec4<f32>(arg_0, -1178f, arg_0, 206f))))));
    let var_1 = Struct_4(arg_1.a, min(-max(vec3<i32>(0i, arg_1.b.x, 2147483647i), -u_input.c), -reverseBits(select(u_input.c, vec3<i32>(global1[_wgslsmith_index_u32(0u, 15u)], 22089i, 1i), true))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2176f, var_0.x, 551f, arg_0))) - vec4<f32>(-108f, 358f, 1376f, 1009f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(226f * arg_0), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -961f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1414f + var_0.x), -445f, _wgslsmith_f_op_f32(abs(-673f)), _wgslsmith_f_op_f32(max(-511f, var_0.x)))))));
    return Struct_4(arg_1.a, abs(-var_1.b));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> f32 {
    global1 = array<i32, 15>();
    let var_0 = arg_0.a.a.xw;
    var var_1 = !((any(vec3<bool>(true, true, true)) | arg_3.x) | arg_3.x);
    global1 = array<i32, 15>();
    var var_2 = -1345f;
    return arg_1.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1328f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1752f, -1064f, 1995f)))), _wgslsmith_f_op_f32(func_6(func_5(1258f, func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, 265f, 582f) * vec3<f32>(500f, 482f, 2457f))), vec2<f32>(1f, 1f), u_input.c, vec4<bool>(true, true, u_input.b != 30369u, select(true, true, false)))), ~select(1u, _wgslsmith_div_u32(u_input.b, u_input.b), true), true), _wgslsmith_mod_i32(~1i, min(u_input.c.x, 1i)), _wgslsmith_mult_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(4294967295u, 49126u), func_4(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 13u)], Struct_5(Struct_3(-675f, vec3<f32>(307f, 983f, 1163f), 1235f, u_input.b, true), global1[_wgslsmith_index_u32(1u, 15u)], vec2<u32>(u_input.b, u_input.b), Struct_3(848f, vec3<f32>(-242f, 1000f, 1000f), 250f, u_input.b, true)), vec4<f32>(-100f, 838f, 215f, -1000f))) & ~vec2<u32>(u_input.b, u_input.b), ~func_2().a.a.xw), Struct_3(_wgslsmith_f_op_f32(round(-756f)), _wgslsmith_div_vec3_f32(vec3<f32>(-923f, _wgslsmith_f_op_f32(f32(-1f) * -2151f), 926f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1194f, -1450f, 1264f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2424f, 383f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(394f)))), 612f, any(vec4<bool>(true, true, true, true)))), ~1u, !func_4(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), select(global0[_wgslsmith_index_u32(4294967295u, 13u)], vec3<bool>(false, false, true), vec3<bool>(false, false, false)), Struct_5(Struct_3(957f, vec3<f32>(-685f, 573f, -960f), 884f, u_input.b, false), u_input.c.x, vec2<u32>(77850u, 6411u), Struct_3(-712f, vec3<f32>(-849f, 277f, 942f), 176f, 173u, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, -502f, -225f, -991f)))));
    var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1316f)), _wgslsmith_f_op_f32(var_0.d.b.x + 504f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(round(840f)), 1923f), var_0.a.b)), -623f, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.c, var_0.c), _wgslsmith_mod_u32(~u_input.b, min(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-var_0.d.a) == -450f), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_mod_i32(var_0.b, -18776i), ~23442i, -7833i), abs(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], u_input.a, 15914i, 25996i))) ^ ((abs(var_0.b) ^ var_0.b) ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -2147483647i), u_input.c.zz)), var_0.c, var_0.d);
    var var_1 = func_2();
    var_0 = Struct_5(var_0.d, ~(-1i >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.a.x, var_1.a.a.x), countOneBits(var_0.c)) % 32u)), ~(~var_1.a.a.wy), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2443f), var_0.a.a)) + -1848f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1000f, var_0.a.a), var_0.a.c, var_0.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)), ~_wgslsmith_sub_u32(25516u, 0u), func_3().x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(-269f)), _wgslsmith_f_op_f32(ceil(422f)), -733f), vec3<f32>(_wgslsmith_f_op_f32(-1000f - 570f), var_0.d.a, _wgslsmith_f_op_f32(sign(var_0.d.c)))))));
    return Struct_1(vec4<u32>(var_0.a.d, 55298u, var_1.a.a.x, ~(~85146u)), 2147483647i);
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1146f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1232f, _wgslsmith_f_op_f32(max(arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-220f, -884f, -171f))))), -368f, ~firstLeadingBit(u_input.b) << (((~4294967295u | firstTrailingBit(47015u)) ^ u_input.b) % 32u), arg_1.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-202f)) * 150f), -543f, -620f)));
    var var_2 = ~_wgslsmith_div_i32(-arg_3.b, 2147483647i);
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    return func_2().a;
}

fn func_8(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1024f * -2060f), _wgslsmith_f_op_f32(-702f * -982f)), _wgslsmith_f_op_f32(1946f + _wgslsmith_f_op_f32(floor(840f))), 1f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(611f, -2115f, -704f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, -515f, 481f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-335f + -166f), _wgslsmith_f_op_f32(min(-1000f, -854f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(317f, 634f, -2315f) - vec3<f32>(-1000f, -2177f, -1202f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1390f, 1135f, 1964f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1196f, -108f) + vec3<f32>(2382f, 1834f, 928f))))));
    var var_1 = ~26449u;
    var var_2 = Struct_3(421f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-758f, 2201f, -1000f), vec3<f32>(var_0.x, 2212f, 640f), global0[_wgslsmith_index_u32(4294967295u, 13u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1000f, var_0.x) * vec3<f32>(var_0.x, -310f, -684f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -969f)), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, arg_0.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.b.a.ww << (arg_0.b.a.wy % vec2<u32>(32u)), abs(vec2<u32>(arg_0.b.a.x, u_input.b))), 13u)], all(vec2<bool>(false, arg_0.a)) | false))), var_0.x, u_input.b, arg_0.a);
    let var_3 = 1803f;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(var_0.x * -535f), _wgslsmith_f_op_f32(ceil(var_0.x)), -2552f);
    return Struct_2(var_2.e, Struct_1(vec4<u32>(u_input.b, _wgslsmith_add_u32(var_2.d, arg_0.b.a.x), 4175u, u_input.b ^ arg_0.b.a.x) >> (~(vec4<u32>(var_2.d, 4294967295u, 13840u, u_input.b) | vec4<u32>(1u, 1u, u_input.b, 32689u)) % vec4<u32>(32u)), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(Struct_2(true, func_7(153f, Struct_2(false, func_1()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), func_2().a)));
    var var_1 = var_0.b.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2718f, 1234f)))) + 369f) + _wgslsmith_f_op_f32(func_6(Struct_4(var_0.b, ~u_input.c), vec2<f32>(1f, 1f), vec3<i32>(var_0.b.b, -16877i, func_2().b.x), vec4<bool>(_wgslsmith_f_op_f32(min(1446f, 1303f)) < _wgslsmith_f_op_f32(trunc(1000f)), any(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false))), false, !(false || var_0.a)))));
    var_2 = -744f;
    let var_3 = ~firstLeadingBit(var_0.b.a.yxz);
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    var_2 = -487f;
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.xww);
}

