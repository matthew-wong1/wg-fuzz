struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-290f, 1000f, 1264f), vec3<f32>(-1000f, -787f, 731f), vec3<f32>(1024f, 453f, 1225f), vec3<f32>(1647f, 128f, -885f), vec3<f32>(881f, 990f, -1307f), vec3<f32>(-616f, 1469f, 485f), vec3<f32>(1183f, 1000f, 1376f), vec3<f32>(616f, 1566f, -1663f), vec3<f32>(1000f, -146f, 567f), vec3<f32>(180f, 1000f, -1000f), vec3<f32>(-1583f, 284f, -1210f), vec3<f32>(-184f, 230f, 1242f), vec3<f32>(-339f, -105f, 1187f), vec3<f32>(617f, -1303f, -618f), vec3<f32>(-155f, 1374f, 681f), vec3<f32>(-1537f, -1000f, 767f), vec3<f32>(222f, -341f, -1500f), vec3<f32>(1645f, 478f, 1578f), vec3<f32>(-997f, 616f, -694f), vec3<f32>(141f, -693f, 521f), vec3<f32>(1278f, 1594f, 603f), vec3<f32>(1737f, -1541f, -205f), vec3<f32>(-1000f, -739f, -1535f), vec3<f32>(-1921f, -2183f, -975f), vec3<f32>(231f, 1000f, -229f), vec3<f32>(-850f, 1297f, 691f), vec3<f32>(602f, 620f, 438f), vec3<f32>(-2536f, -2258f, -727f));

var<private> global2: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-761f, 2619f), vec2<f32>(303f, -1319f));

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(!global3.x, u_input.e <= 13817i, true), !(!vec3<bool>(global3.x, false, false))), select(select(select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, true, true), global3.x), select(vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, global3.x, global3.x), global3.x), select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, false, global3.x), vec3<bool>(false, global3.x, false))), !vec3<bool>(global3.x, global3.x, false), select(vec3<bool>(global3.x, global3.x, global3.x), !vec3<bool>(global3.x, global3.x, false), select(global3.x, true, true))), any(!vec4<bool>(global3.x, global3.x, global3.x, global3.x))), Struct_1(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(4294967295u, u_input.d), countOneBits(abs(u_input.a)), max(42662u, 1u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(44639u, u_input.c.x, 0u, 4661u), reverseBits(u_input.c))), arg_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, 648f, -779f, arg_1.x))))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(floor(arg_1.x)), 721f, -393f), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -325f, arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-1000f - arg_1.x)))))));
    global0 = global3.x;
    global1 = array<vec3<f32>, 28>();
    return u_input.e;
}

fn func_4(arg_0: i32) -> u32 {
    var var_0 = Struct_2(select(vec3<bool>(select(true, any(vec3<bool>(global3.x, global3.x, global3.x)), true), true, !global3.x), vec3<bool>(true, true, true), select(!vec3<bool>(global3.x, true, global3.x), vec3<bool>(u_input.e < arg_0, any(vec3<bool>(false, global3.x, global3.x)), true), vec3<bool>(16810i >= arg_0, !global3.x, u_input.b.x >= 47861u))), Struct_1(firstLeadingBit(~_wgslsmith_sub_u32(u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_add_u32(u_input.d, min(u_input.d, u_input.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 16317u, 60171u), u_input.c.zwy), ~vec3<u32>(u_input.d, 2985u, u_input.a)), 2u)] + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-639f, -1481f))))))), vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1515f) + -1197f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-116f)) + _wgslsmith_f_op_f32(1000f - -510f))), -212f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -202f))), _wgslsmith_f_op_f32(sign(617f)), 653f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1637f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(422f, -1354f, 358f, 1704f) - vec4<f32>(-281f, 119f, 260f, 2242f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, 342f, 1985f, -465f))))))));
    global3 = var_0.a;
    var var_1 = _wgslsmith_sub_vec3_i32(-(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 1i, u_input.e)), vec3<i32>(0i, arg_0, arg_0)) ^ select(-vec3<i32>(-16782i, arg_0, -71785i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, arg_0), vec3<i32>(46371i, arg_0, 6773i)), vec3<bool>(false, global3.x, global3.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 14109i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, arg_0, u_input.e), vec3<i32>(u_input.e, -17185i, 1391i))), vec3<i32>(-1i) * -vec3<i32>(u_input.e, 18334i, 25039i)), -abs(-34497i << (u_input.d % 32u)), 28926i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(-1913f - var_0.c.x)));
    var var_3 = firstTrailingBit(var_0.b.a);
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, ~(4294967295u >> (1u % 32u)), 158510u)), vec3<u32>(~u_input.c.x, 61971u, ~var_0.b.a));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(0u ^ func_4(func_3(vec2<i32>(u_input.e, u_input.e), global2[_wgslsmith_index_u32(countOneBits(u_input.d), 2u)])), 0u);
    global2 = array<vec2<f32>, 2>();
    global2 = array<vec2<f32>, 2>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -468f);
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(max(select(vec2<i32>(u_input.e, -17931i), vec2<i32>(-1i, -74955i), global3.xz), vec2<i32>(73673i, u_input.e) & vec2<i32>(u_input.e, 1i)) & vec2<i32>(~u_input.e, u_input.e), -(select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.e, -2147483647i), global3.xy) | -vec2<i32>(u_input.e, u_input.e))), ~vec2<i32>(-1i, u_input.e) & vec2<i32>(1i, u_input.e));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = vec3<bool>(global3.x, any(!vec3<bool>(!global3.x, true, 0i != u_input.e)), all(select(arg_1.a, arg_1.a, !(!vec3<bool>(true, arg_1.a.x, global3.x)))));
    let var_1 = Struct_1(_wgslsmith_div_u32(0u, ~_wgslsmith_div_u32(u_input.d, _wgslsmith_mod_u32(arg_1.b.b, arg_1.b.b))), _wgslsmith_div_u32(52574u, abs(arg_0.a)));
    global1 = array<vec3<f32>, 28>();
    let var_2 = ~arg_1.b.a;
    global4 = any(!(!var_0)) & any(!select(select(vec4<bool>(true, global3.x, var_0.x, true), vec4<bool>(arg_1.a.x, true, arg_1.a.x, false), true), !vec4<bool>(false, var_0.x, arg_1.a.x, true), any(vec4<bool>(false, true, true, arg_1.a.x))));
    return vec3<i32>(-1i, -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.e, 18744i, u_input.e)), vec3<i32>(0i, u_input.e, u_input.e)), 51664i), ~max(u_input.e, -firstTrailingBit(-34958i)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<u32>(~0u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.wz), u_input.c.x, ~0u) << (abs((arg_1 >> (arg_2 % 32u)) >> (3377u % 32u)) % 32u), arg_1, ~arg_2);
    let var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(func_5(func_2(global3.x), Struct_2(vec3<bool>(arg_0, arg_0, global3.x), Struct_1(arg_2, arg_1), vec2<f32>(-276f, -777f), vec4<f32>(-1414f, 251f, -243f, 1000f), vec4<f32>(1199f, -615f, 1165f, 1702f))), vec3<i32>(1i, 70112i, 51652i))), _wgslsmith_sub_vec3_i32(func_5(Struct_1(~1u, 151936u), Struct_2(select(vec3<bool>(false, false, false), vec3<bool>(arg_0, false, false), vec3<bool>(false, global3.x, true)), func_2(true), global2[_wgslsmith_index_u32(var_0.x, 2u)], vec4<f32>(1000f, -1084f, -109f, -422f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1354f, -1432f, -244f, -2445f)))), _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, u_input.e, -2147483647i), vec3<i32>(u_input.e, u_input.e, u_input.e)), countOneBits(-vec3<i32>(u_input.e, 0i, u_input.e)))));
    var var_2 = var_1;
    var_2 = firstTrailingBit(_wgslsmith_sub_i32(var_1, 0i)) & _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -60254i), vec2<i32>(2147483647i, 2147483647i) ^ vec2<i32>(1i, var_1)), -1i);
    let var_3 = func_2(global3.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, ~(_wgslsmith_mult_u32(u_input.c.x, 14647u) & u_input.b.x), ~u_input.c.x);
    var var_1 = select(select(vec4<bool>(any(!vec2<bool>(true, global3.x)), ~u_input.e < ~16393i, global3.x, true), vec4<bool>(true, true, global3.x, true), firstTrailingBit(u_input.e) <= 2147483647i), select(!vec4<bool>(all(vec4<bool>(global3.x, global3.x, global3.x, false)), global3.x, global3.x, global3.x), vec4<bool>(true, true, !(true || global3.x), !(false != global3.x)), func_4(-2147483647i) < (var_0.a ^ func_2(global3.x).a)), !all(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, global3.x, true), vec3<bool>(global3.x, global3.x, true))) != !all(vec2<bool>(false, true)));
    let var_2 = Struct_2(!select(vec3<bool>(true, false, global3.x), vec3<bool>(false | global3.x, var_1.x || global3.x, false), var_1.xwz), func_1(!var_1.x, ~u_input.c.x, u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(1u, 2u)] + global2[_wgslsmith_index_u32(var_0.a, 2u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(927f, 119f), vec2<f32>(-815f, -717f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1167f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-312f, 698f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1039f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1262f), 287f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1321f))), 181f));
    var var_3 = var_2.d.ww;
    var var_4 = vec3<f32>(252f, var_3.x, 582f);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.d.x, 1327f)), _wgslsmith_f_op_vec4_f32(exp2(var_2.d)))), var_4.x, ~_wgslsmith_sub_u32(var_0.b, 38975u));
}

