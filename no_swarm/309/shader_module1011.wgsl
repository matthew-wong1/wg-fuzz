struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<u32>(4294967295u, 451u), vec3<f32>(144f, -1000f, -1148f), Struct_1(21973u, vec4<f32>(549f, -827f, 619f, -361f), false, 598f), Struct_1(1u, vec4<f32>(681f, 1557f, -1199f, -1157f), false, 927f)), Struct_3(vec2<u32>(40890u, 1u), vec3<f32>(137f, -598f, 2649f), Struct_1(38633u, vec4<f32>(209f, 105f, 411f, -1000f), true, 1202f), Struct_1(76346u, vec4<f32>(-1953f, -160f, -1426f, 267f), false, 330f)), Struct_3(vec2<u32>(22189u, 40255u), vec3<f32>(-1000f, 267f, 161f), Struct_1(18567u, vec4<f32>(1082f, -190f, -1015f, -461f), true, 308f), Struct_1(42612u, vec4<f32>(802f, 1000f, -1000f, -1328f), false, -509f)), Struct_3(vec2<u32>(0u, 119946u), vec3<f32>(773f, -1216f, -318f), Struct_1(44951u, vec4<f32>(-187f, -966f, 704f, -183f), false, 2654f), Struct_1(75130u, vec4<f32>(137f, -433f, -1574f, -181f), true, -395f)), Struct_3(vec2<u32>(1u, 4294967295u), vec3<f32>(-829f, -687f, -798f), Struct_1(1u, vec4<f32>(1485f, -2617f, -334f, 360f), true, 351f), Struct_1(44800u, vec4<f32>(-2719f, -1595f, 1791f, 1533f), false, -1000f)), Struct_3(vec2<u32>(88903u, 0u), vec3<f32>(828f, 2827f, -377f), Struct_1(68049u, vec4<f32>(-858f, 286f, -159f, -235f), true, 1638f), Struct_1(1u, vec4<f32>(370f, 167f, 508f, -1800f), false, 2526f)));

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(4294967295u, vec4<f32>(1000f, 239f, -418f, -854f), false, 330f), Struct_1(13843u, vec4<f32>(2269f, 185f, 477f, 212f), true, 490f), Struct_1(11926u, vec4<f32>(147f, 1169f, -120f, 294f), false, 867f), Struct_1(4294967295u, vec4<f32>(-928f, -1044f, -1281f, -1570f), false, 519f), Struct_1(1u, vec4<f32>(-391f, -1102f, 1264f, -639f), false, 200f), Struct_1(35370u, vec4<f32>(802f, -1772f, 1222f, 2089f), false, 1120f), Struct_1(1u, vec4<f32>(-1916f, 1219f, 270f, -580f), false, 613f), Struct_1(0u, vec4<f32>(-1000f, 1146f, -357f, -579f), false, 312f), Struct_1(66260u, vec4<f32>(-941f, -559f, 1000f, 337f), false, 161f), Struct_1(34960u, vec4<f32>(-261f, 742f, 563f, 651f), true, 695f), Struct_1(36003u, vec4<f32>(106f, -168f, 1268f, -199f), false, -1000f), Struct_1(0u, vec4<f32>(598f, 1224f, 422f, 575f), false, -1930f), Struct_1(0u, vec4<f32>(258f, -1053f, 788f, -1068f), true, -1078f), Struct_1(17695u, vec4<f32>(-306f, -640f, 365f, 1000f), false, 576f), Struct_1(17646u, vec4<f32>(523f, -162f, -215f, -469f), true, 107f), Struct_1(5657u, vec4<f32>(189f, 330f, -719f, -203f), true, -690f), Struct_1(0u, vec4<f32>(-1411f, 1282f, 1044f, -263f), true, -559f), Struct_1(4294967295u, vec4<f32>(-324f, -476f, 1000f, -562f), false, 1000f), Struct_1(4294967295u, vec4<f32>(1007f, 337f, -147f, 134f), false, -307f), Struct_1(4294967295u, vec4<f32>(101f, 798f, 622f, 315f), true, -941f), Struct_1(0u, vec4<f32>(-1000f, 578f, 200f, -233f), true, -404f), Struct_1(1u, vec4<f32>(-338f, -1000f, 1974f, 927f), false, 1750f), Struct_1(4294967295u, vec4<f32>(1000f, 1000f, -169f, -918f), false, 312f), Struct_1(1u, vec4<f32>(-2213f, 417f, 1382f, 857f), false, 185f), Struct_1(0u, vec4<f32>(-393f, 1000f, -1000f, -1346f), false, 194f), Struct_1(5102u, vec4<f32>(-450f, 390f, 1400f, 1000f), true, -806f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<bool>) -> f32 {
    global0 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_add_vec2_u32(~(firstTrailingBit(~vec2<u32>(arg_1, arg_0)) << (~vec2<u32>(arg_1, 69964u) % vec2<u32>(32u))), vec2<u32>(arg_1, ~arg_1));
    var var_1 = arg_3.x;
    let var_2 = global1[_wgslsmith_index_u32(max(1u, ~_wgslsmith_add_u32(arg_0, 1u)) | arg_1, 26u)];
    let var_3 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_2.a), vec3<u32>(var_0.x, 1u, arg_0) >> (vec3<u32>(39648u, arg_1, arg_1) % vec3<u32>(32u))) << ((vec3<u32>(899u, ~1u, 39860u) >> (vec3<u32>(1u, ~10269u, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return -1000f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    var var_0 = -608f;
    global1 = array<Struct_1, 26>();
    var var_1 = Struct_1(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(6188u, 1u, arg_0.x), arg_0.wzx)) >> (arg_0.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(select(arg_2, arg_2, false)))) - arg_2), arg_2, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(floor(arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(11184u, 38528u, vec4<i32>(-10149i, 1i, arg_1.x, -1i), vec2<bool>(false, true))))))), !(!(_wgslsmith_div_u32(0u, arg_0.x) > _wgslsmith_clamp_u32(19266u, arg_0.x, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(826f))) + 1f));
    var var_2 = Struct_2(select(2147483647i < arg_1.x, any(!vec4<bool>(var_1.c, var_1.c, false, var_1.c)), all(select(select(vec4<bool>(true, false, var_1.c, var_1.c), vec4<bool>(false, var_1.c, true, var_1.c), true), vec4<bool>(true, false, false, false), true))), Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b), vec4<f32>(-603f, var_1.d, 596f, 1774f))), true, var_1.b.x), global1[_wgslsmith_index_u32(arg_0.x, 26u)]);
    let var_3 = vec4<i32>(_wgslsmith_clamp_i32(-28399i, 0i, i32(-1i) * -658i), u_input.a, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_1, -arg_1), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.x, 0i), reverseBits(arg_1.x)))), _wgslsmith_mod_i32(-28396i, ~2147483647i));
    return var_2.b.d;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_3.b))), vec4<f32>(arg_3.d, _wgslsmith_f_op_f32(f32(-1f) * -2030f), _wgslsmith_f_op_f32(-arg_3.d), arg_0.x)) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.d.d + -489f), _wgslsmith_f_op_f32(min(1000f, 355f)))), arg_0.x), -579f, _wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 56070u, 0u, 1u), min(vec4<u32>(1126u, 15613u, arg_1.d.a, arg_1.c.a), vec4<u32>(arg_3.a, arg_3.a, 1u, 110236u)), vec4<u32>(arg_1.d.a, 1u, arg_1.d.a, 1u)), -vec2<i32>(23267i, arg_2.x), -1353f)), _wgslsmith_f_op_f32(-arg_3.d)));
    var var_1 = ~(~max(~4294967295u, abs(31275u)) | (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, 42766u, arg_3.a, arg_3.a), ~vec4<u32>(arg_1.a.x, 0u, 0u, arg_1.a.x)) & ~_wgslsmith_clamp_u32(1u, 55691u, arg_3.a)));
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec4_i32(min(-vec4<i32>(1i, arg_2.x, u_input.b, 2147483647i), ~vec4<i32>(u_input.b, -15103i, 24584i, 5229i)), vec4<i32>(0i, -5023i, abs(arg_2.x), 31312i & arg_2.x)) | ((max(vec4<i32>(u_input.a, arg_2.x, -2147483647i, -1i), vec4<i32>(u_input.a, 1i, 4772i, arg_2.x)) ^ -vec4<i32>(arg_2.x, arg_2.x, 29291i, -26186i)) | vec4<i32>(arg_2.x, ~4847i, u_input.a, -81822i)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * arg_3.d))) - arg_0.x) - var_0.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))))));
    return ~firstTrailingBit(min(0u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1213f, 1000f)) * _wgslsmith_f_op_f32(floor(-156f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1274f));
    var var_1 = any(select(vec3<bool>(true, true, _wgslsmith_f_op_f32(-843f * -575f) != _wgslsmith_f_op_f32(select(var_0, -1879f, false))), select(vec3<bool>(true, true, true), vec3<bool>(1570f > var_0, any(vec4<bool>(false, true, true, false)), true), !(var_0 >= -387f)), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))));
    var var_2 = true;
    let var_3 = Struct_3(_wgslsmith_mult_vec2_u32(max(vec2<u32>(1u, ~0u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(48672u, 2172u))), vec2<u32>(~(~1u), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 1424f), vec2<f32>(665f, -1000f)), Struct_3(vec2<u32>(119073u, 1u), vec3<f32>(var_0, var_0, 1374f), global1[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(47791u, vec4<f32>(var_0, var_0, 670f, var_0), false, 499f)), vec3<i32>(0i, u_input.b, 1i) & vec3<i32>(u_input.b, u_input.a, -32297i), Struct_1(46537u, vec4<f32>(var_0, var_0, var_0, var_0), true, var_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1044f, -1130f, -1305f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(975f, -629f, -411f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0, -150f) + vec3<f32>(var_0, var_0, var_0))))), Struct_1(firstTrailingBit(_wgslsmith_sub_u32(~90875u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 3069u, 40659u), vec4<u32>(4294967295u, 1u, 67231u, 4294967295u)))), vec4<f32>(var_0, var_0, 232f, var_0), !(true == (var_0 != var_0)), var_0), Struct_1(~firstTrailingBit(abs(36771u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(floor(-396f)), _wgslsmith_f_op_f32(var_0 * 320f))), true, var_0));
    let var_4 = var_3.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -54699i), vec2<i32>(u_input.b, 0i)), select(vec2<i32>(66643i, u_input.b), vec2<i32>(2147483647i, u_input.a), vec2<bool>(false, true)))), max(~(~vec4<u32>(10286u, var_3.a.x, 0u, var_3.a.x) << (vec4<u32>(4294967295u, 0u, var_3.c.a, 13091u) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(var_3.a.x, 0u, var_3.d.a, 4294967295u)) << (vec4<u32>(_wgslsmith_clamp_u32(var_3.d.a, var_3.d.a, 0u), 4294967295u & var_3.d.a, var_3.a.x, 0u) % vec4<u32>(32u))), u_input.a, _wgslsmith_sub_u32(min(_wgslsmith_div_u32(var_3.a.x, var_3.d.a) | 106212u, ~4294967295u), ~(~(~8272u))));
}

