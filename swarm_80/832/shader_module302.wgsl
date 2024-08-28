struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3>;

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(1i, 1387i, i32(-2147483648), 0i), vec4<i32>(-16951i, -54195i, 0i, 58956i), vec4<i32>(i32(-2147483648), 36560i, 2147483647i, 2147483647i), vec4<i32>(19922i, -8968i, 0i, 0i), vec4<i32>(28124i, -1383i, i32(-2147483648), 61649i), vec4<i32>(2147483647i, 2147483647i, -35235i, 40582i), vec4<i32>(0i, 16178i, 13711i, -64089i), vec4<i32>(1i, 1i, 37793i, -8952i), vec4<i32>(0i, -1i, 8560i, 3428i), vec4<i32>(5448i, -1i, 2147483647i, -1i), vec4<i32>(588i, 1i, i32(-2147483648), 0i), vec4<i32>(-68966i, 2147483647i, -5912i, 6036i), vec4<i32>(-22953i, 1i, -5922i, -27546i));

var<private> global2: array<i32, 18> = array<i32, 18>(-8026i, 2147483647i, 17755i, 50826i, -47476i, 2147483647i, i32(-2147483648), i32(-2147483648), 0i, 5547i, i32(-2147483648), -1i, 1i, -7450i, -49787i, 0i, -18395i, -1i);

var<private> global3: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1329f, 1470f, 683f, 1000f), vec4<f32>(-1208f, -516f, 160f, 829f), vec4<f32>(481f, -509f, -768f, 538f), vec4<f32>(504f, 197f, -1363f, 152f), vec4<f32>(-1475f, -709f, 1471f, -1295f), vec4<f32>(-290f, 1912f, -2000f, 2040f), vec4<f32>(660f, -1339f, 179f, 1752f), vec4<f32>(352f, -477f, 899f, -3167f), vec4<f32>(-677f, -470f, -370f, -201f), vec4<f32>(120f, -788f, -204f, 628f), vec4<f32>(876f, -127f, -864f, -2457f), vec4<f32>(1234f, -438f, -130f, 901f), vec4<f32>(-1368f, -214f, 1722f, 1051f), vec4<f32>(-318f, 1056f, -1392f, 906f), vec4<f32>(748f, 353f, -380f, 1000f), vec4<f32>(-521f, -882f, -130f, 1806f), vec4<f32>(-1664f, -1000f, 1686f, -328f), vec4<f32>(-1000f, 147f, -526f, -100f), vec4<f32>(-1577f, -521f, -1131f, 1250f), vec4<f32>(-641f, 957f, -510f, 1000f), vec4<f32>(654f, 1821f, 1000f, 1337f), vec4<f32>(1149f, -1132f, 312f, 1063f), vec4<f32>(-1199f, -2364f, -1398f, -206f), vec4<f32>(322f, 587f, 646f, -514f), vec4<f32>(1284f, -2569f, 1820f, 598f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = all(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(vec3<bool>(true, false, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false)), false), vec3<bool>(true, true, true)), _wgslsmith_sub_i32(1i >> (u_input.b % 32u), abs(global2[_wgslsmith_index_u32(35693u, 18u)])) == -1i));
    let var_1 = ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(~firstTrailingBit(1i), -_wgslsmith_mod_i32(-2147483647i, u_input.c.x)), 1i);
    global1 = array<vec4<i32>, 13>();
    global1 = array<vec4<i32>, 13>();
    global1 = array<vec4<i32>, 13>();
    return countOneBits(abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 46849u, u_input.d), vec4<u32>(0u, 4294967295u, 0u, u_input.b)), ~1u)));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    global0 = array<vec2<bool>, 3>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 81854u), vec4<u32>(u_input.b, 26226u, u_input.b, u_input.d)), 25u)])), _wgslsmith_f_op_vec4_f32(max(global3[_wgslsmith_index_u32(~5705u, 25u)], global3[_wgslsmith_index_u32(7927u, 25u)]))), u_input.a.wyx);
    global2 = array<i32, 18>();
    global3 = array<vec4<f32>, 25>();
    let var_1 = vec2<i32>(-(~var_0.b.x), var_0.b.x);
    return _wgslsmith_sub_vec2_u32(firstTrailingBit(func_3() | _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b, 8746u)), _wgslsmith_sub_vec2_u32(vec2<u32>(46348u, 0u), vec2<u32>(0u, u_input.b)))), ~firstLeadingBit(func_3()) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.d, _wgslsmith_mult_u32(u_input.d, 60432u)), abs(vec2<u32>(475u, 82707u))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<bool>, 3>();
    global0 = array<vec2<bool>, 3>();
    global0 = array<vec2<bool>, 3>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f + 235f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576f + _wgslsmith_f_op_f32(235f + 1907f)) + 1f), true)));
    var var_1 = ~select(~vec2<u32>(u_input.b, select(u_input.d, 46205u, false)), ~func_2(var_0 > 199f), select(false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)), true));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-147f, var_0, var_0, 665f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(-1267f)), _wgslsmith_f_op_f32(-var_0), -709f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(1u, 25u)] * vec4<f32>(695f, var_0, var_0, -386f)))), vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec3_i32(~reverseBits(~u_input.a.wwy), max(-u_input.a.wwy & -u_input.c, vec3<i32>(_wgslsmith_add_i32(-2147483647i, 17338i), 8586i, -2434i << (1u % 32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    global3 = array<vec4<f32>, 25>();
    let var_0 = func_1();
    var var_1 = arg_0.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~arg_1.x, 25u)]), ~select(~vec3<i32>(0i, arg_0.b.x, -43842i), _wgslsmith_clamp_vec3_i32(~arg_0.b, _wgslsmith_clamp_vec3_i32(var_0.b, vec3<i32>(global2[_wgslsmith_index_u32(13222u, 18u)], u_input.a.x, -1i), vec3<i32>(global2[_wgslsmith_index_u32(arg_1.x, 18u)], arg_0.b.x, global2[_wgslsmith_index_u32(27375u, 18u)])), vec3<i32>(10039i, global2[_wgslsmith_index_u32(53216u, 18u)], u_input.e.x) & vec3<i32>(u_input.c.x, var_0.b.x, arg_0.b.x)), vec3<bool>(true, true, true)));
    var var_3 = vec2<bool>(true, !(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(13585u, 13u)], u_input.e) > 1i) & all(vec3<bool>(true, true, true)));
    return _wgslsmith_add_u32(max(u_input.d, ~1u), abs(max(arg_1.x, select(~u_input.d, ~arg_1.x, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 13>();
    let var_0 = global2[_wgslsmith_index_u32(~func_4(func_1(), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 89784u, u_input.b), ~vec3<u32>(0u, 15957u, u_input.d)) << (~(vec3<u32>(u_input.d, u_input.b, 38368u) ^ vec3<u32>(1u, u_input.b, u_input.b)) % vec3<u32>(32u))), 18u)];
    let var_1 = vec4<bool>(!any(vec3<bool>(true, true, true)), true, !all(vec3<bool>(false, any(vec2<bool>(true, false)), false)), false);
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-813f)), -528f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2101f, -571f) - 1167f), -3185f), func_1().b);
    var var_3 = var_2.a.x >= _wgslsmith_f_op_f32(-var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.b, u_input.d), vec2<u32>(u_input.b, 24631u)), vec2<u32>(u_input.d, u_input.d) ^ vec2<u32>(u_input.b, 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(26112u, 1u), vec2<u32>(u_input.b, u_input.d))), _wgslsmith_add_u32(select(0u, 4294967295u, false) | abs(16505u), ~25828u & _wgslsmith_mult_u32(u_input.d, 1u)), 744u, 1u));
}

