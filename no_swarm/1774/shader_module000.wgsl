struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(1i, 26205i, 1i, 2147483647i)), Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(-1i, i32(-2147483648), 33665i, 1i)), Struct_2(vec4<bool>(false, true, true, true), vec4<i32>(2147483647i, -1i, -1i, -68779i)), Struct_2(vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), -23915i, -40672i, i32(-2147483648))), Struct_2(vec4<bool>(true, true, false, false), vec4<i32>(0i, -60781i, -41716i, 2147483647i)), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(1i, i32(-2147483648), 76762i, -17891i)), Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(13991i, 4250i, 0i, 2273i)), Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(i32(-2147483648), -31260i, 2072i, 6472i)), Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(0i, 2147483647i, -10855i, 62526i)), Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(0i, i32(-2147483648), -61771i, -1i)), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(6889i, 72938i, -33115i, -26481i)), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(-4256i, -1i, 6011i, i32(-2147483648))), Struct_2(vec4<bool>(false, true, false, true), vec4<i32>(38211i, 0i, 0i, -1i)), Struct_2(vec4<bool>(false, true, false, true), vec4<i32>(-11302i, -1i, -48998i, 7928i)), Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(-32329i, 2147483647i, -1i, -1i)), Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(29131i, 2147483647i, 0i, -28757i)), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(i32(-2147483648), 21733i, 17675i, 2147483647i)), Struct_2(vec4<bool>(true, false, false, false), vec4<i32>(32231i, 0i, i32(-2147483648), -50779i)), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(-17089i, -20353i, -2910i, i32(-2147483648))), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(-2563i, 1i, 96775i, -1340i)), Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(1i, 1i, 1i, -1i)), Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(2147483647i, 1i, -59622i, 2147483647i)), Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(39550i, -1i, 1i, 1i)), Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(31972i, 2147483647i, 0i, -8302i)), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(78132i, 12744i, 47452i, -31014i)), Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(i32(-2147483648), i32(-2147483648), -606i, -39460i)), Struct_2(vec4<bool>(true, true, false, false), vec4<i32>(i32(-2147483648), -22552i, 0i, 0i)), Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(3148i, -24929i, 12437i, 10006i)), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(i32(-2147483648), 12751i, -9838i, 0i)));

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, vec3<i32>(57409i, 0i, 41345i), 134f, vec4<i32>(-4465i, -19488i, 0i, 40413i)), Struct_1(false, vec3<i32>(i32(-2147483648), i32(-2147483648), -2028i), -1471f, vec4<i32>(-1i, 1i, -1958i, 1i)), Struct_1(true, vec3<i32>(3150i, 9197i, 1i), 1699f, vec4<i32>(-1i, -1i, 0i, -50896i)), Struct_1(true, vec3<i32>(1i, 2147483647i, -20086i), -613f, vec4<i32>(24471i, 2147483647i, i32(-2147483648), -1i)), Struct_1(true, vec3<i32>(2147483647i, -18921i, 0i), -1569f, vec4<i32>(i32(-2147483648), 4789i, 0i, 0i)), Struct_1(false, vec3<i32>(2147483647i, -50712i, -2976i), 2306f, vec4<i32>(i32(-2147483648), -25620i, 1i, -18008i)), Struct_1(true, vec3<i32>(-1i, 0i, 48499i), 542f, vec4<i32>(1i, i32(-2147483648), 12615i, 30070i)), Struct_1(false, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), -168f, vec4<i32>(2147483647i, 0i, -1i, 2147483647i)), Struct_1(false, vec3<i32>(49235i, 17738i, 1i), 661f, vec4<i32>(-1i, i32(-2147483648), 29879i, 1i)), Struct_1(true, vec3<i32>(0i, 2147483647i, 0i), 157f, vec4<i32>(2147483647i, -30985i, 0i, 0i)), Struct_1(false, vec3<i32>(i32(-2147483648), 0i, 11465i), -1171f, vec4<i32>(1i, 4531i, -1i, -47434i)), Struct_1(true, vec3<i32>(6068i, 1i, -40699i), 460f, vec4<i32>(-10543i, 6819i, 7319i, 61743i)), Struct_1(true, vec3<i32>(-3301i, 2509i, -1i), 1195f, vec4<i32>(0i, 25804i, -45041i, 27307i)), Struct_1(false, vec3<i32>(0i, 22704i, 0i), -560f, vec4<i32>(i32(-2147483648), -1i, 0i, 1i)), Struct_1(true, vec3<i32>(0i, -13943i, 2147483647i), 985f, vec4<i32>(0i, 35304i, -3599i, 2147483647i)));

var<private> global3: array<bool, 7>;

var<private> global4: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(false, -15413i, i32(-2147483648)), Struct_3(false, 62441i, 2147483647i), Struct_3(false, -33021i, 0i), Struct_3(true, 1i, 56648i), Struct_3(false, 1i, 1i), Struct_3(true, 13303i, 1387i), Struct_3(false, 1i, -33974i), Struct_3(false, i32(-2147483648), 2147483647i), Struct_3(false, 14071i, 1i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    let var_0 = -994f;
    global3 = array<bool, 7>();
    let var_1 = u_input.a;
    global0 = array<Struct_2, 29>();
    var var_2 = ~firstTrailingBit(max(abs(~vec4<u32>(0u, 0u, 28223u, 0u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(1u, var_1, var_1, var_1), vec4<u32>(10770u, 0u, 4294967295u, u_input.a)), ~vec4<u32>(1u, u_input.a, var_1, u_input.a))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x + arg_3.x), arg_3.x);
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_add_i32(u_input.b, _wgslsmith_div_i32(-28292i, u_input.b)) | -(~(u_input.b | u_input.b)), u_input.b);
    return ~vec2<u32>(4294967295u, 5347u) & ~(~_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(abs(u_input.a), 13u)], vec2<u32>(u_input.a, 16627u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> bool {
    let var_0 = arg_2;
    var var_1 = Struct_3(all(!(!vec3<bool>(true, arg_0.a, true))), _wgslsmith_clamp_i32(abs(abs(_wgslsmith_add_i32(var_0, -68080i))), -15632i, (_wgslsmith_mod_i32(var_0, arg_0.d.x) & arg_0.b.x) & _wgslsmith_clamp_i32(2147483647i, -33660i, _wgslsmith_clamp_i32(-28173i, 38778i, 2147483647i))), ~(-38527i));
    var var_2 = -arg_0.d;
    let var_3 = vec2<i32>(0i, _wgslsmith_mod_i32(~var_2.x, ~var_2.x << (104123u % 32u)) | u_input.b);
    let var_4 = _wgslsmith_sub_i32(arg_0.d.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(arg_2), var_3.x << (57510u % 32u), 1i), _wgslsmith_add_vec3_i32(firstLeadingBit(arg_0.d.wzz), vec3<i32>(0i, 8873i, u_input.b))));
    return any(vec2<bool>(false, arg_0.a));
}

fn func_2() -> Struct_3 {
    var var_0 = select(~u_input.b, u_input.b << (_wgslsmith_mod_u32(u_input.a & ~0u, _wgslsmith_add_u32(27073u, u_input.a)) % 32u), select(true, func_4(global2[_wgslsmith_index_u32(~(~u_input.a), 15u)], func_3(_wgslsmith_f_op_f32(ceil(-575f))), 0i), true));
    var var_1 = Struct_3(-(58772i << (~4294967295u % 32u)) >= -u_input.b, -u_input.b, ~(-select(~u_input.b, u_input.b >> (32612u % 32u), global3[_wgslsmith_index_u32(~u_input.a, 7u)])));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1003f, -1067f), vec2<f32>(-880f, -169f))))))));
    global2 = array<Struct_1, 15>();
    return Struct_3(true, ~var_1.b, select(-var_1.c, var_1.c, all(select(!vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 7u)], false), vec3<bool>(var_2, true, var_1.a), vec3<bool>(false, false, false)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    var var_0 = ~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-2990i), _wgslsmith_mod_i32(-2147483647i, arg_2.b.x), 11627i), ~vec3<i32>(-1i, arg_2.b.x, 2147483647i) | (arg_1.b << (arg_0.zyw % vec3<u32>(32u)))), arg_1.b);
    global0 = array<Struct_2, 29>();
    var var_1 = arg_3;
    let var_2 = ~(reverseBits(i32(-1i) * -1i) << (reverseBits(u_input.a) % 32u));
    global1 = array<vec2<u32>, 13>();
    return max(arg_0.x, u_input.a);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> StorageBuffer {
    var var_0 = Struct_2(vec4<bool>(!(!global3[_wgslsmith_index_u32(u_input.a, 7u)]), ((arg_1.b & u_input.b) & -u_input.b) <= (abs(-2147483647i) & _wgslsmith_mod_i32(arg_1.b, arg_1.c)), arg_2, arg_3 > arg_3), ~(-vec4<i32>(arg_1.b, abs(0i), u_input.b, max(u_input.b, u_input.b))));
    global4 = array<Struct_3, 9>();
    global1 = array<vec2<u32>, 13>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - arg_3))), 1683f, -1319f, arg_3);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3, 482f, 1310f, 1619f)))))));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1991f) * _wgslsmith_f_op_f32(trunc(567f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.zzw)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-123f, -472f, arg_3))))), arg_1.b | 2147483647i, 4294967295u << (~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.a, 4294967295u, 1u), vec3<bool>(arg_0.x, var_0.a.x, true)), select(vec3<u32>(1u, 4294967295u, 33845u), vec3<u32>(u_input.a, 1u, 20873u), var_0.a.xyy)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(41562u, 29u)];
    global1 = array<vec2<u32>, 13>();
    var var_1 = false;
    let var_2 = u_input.b;
    var_1 = !(_wgslsmith_f_op_f32(f32(-1f) * -1223f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2692f + _wgslsmith_f_op_f32(func_1(var_0.b, global4[_wgslsmith_index_u32(18657u, 9u)], 1i, vec2<f32>(1276f, 1150f))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -750f);
    let x = u_input.a;
    s_output = func_6(vec2<bool>(all(select(select(var_0.a.xzz, var_0.a.wxx, var_0.a.yxy), var_0.a.xwz, select(var_0.a.zww, var_0.a.zzz, vec3<bool>(false, var_0.a.x, global3[_wgslsmith_index_u32(u_input.a, 7u)])))), select(~u_input.a, 23143u, any(var_0.a.yyy)) != func_5(~vec4<u32>(13823u, u_input.a, u_input.a, u_input.a), Struct_1(true, vec3<i32>(21319i, 1i, u_input.b), 1000f, vec4<i32>(0i, var_2, 4112i, var_0.b.x)), global0[_wgslsmith_index_u32(6961u, 29u)], func_2())), func_2(), !all(select(vec2<bool>(global3[_wgslsmith_index_u32(67060u, 7u)], true), select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 7u)], false), var_0.a.yw), global3[_wgslsmith_index_u32(~1u, 7u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -254f) + var_3)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1f))))));
}

