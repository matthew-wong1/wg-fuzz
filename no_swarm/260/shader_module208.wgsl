struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(-44596i, i32(-2147483648), 15111i, i32(-2147483648)), vec4<i32>(11117i, -48079i, 40975i, 1i), vec4<i32>(-5266i, 1352i, -23528i, 40358i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 65634i), vec4<i32>(31565i, 2147483647i, 1i, 0i), vec4<i32>(-35744i, 1i, -46388i, 35680i), vec4<i32>(69978i, 64932i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 19619i), vec4<i32>(-21652i, -32985i, 0i, -9387i), vec4<i32>(-25843i, 23905i, 61772i, 0i), vec4<i32>(-66423i, 12376i, 0i, 0i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = ~min(vec3<i32>(firstLeadingBit(-2147483647i), u_input.c.x, 11922i), -vec3<i32>(1i, -675i, -27584i));
    global0 = array<vec4<i32>, 12>();
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(u_input.e ^ vec3<i32>(17117i, -7376i, var_0.x), _wgslsmith_div_vec3_i32(arg_3.b.d, countOneBits(u_input.c)), arg_3.b.d) >> (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_0, u_input.d.x, arg_0)), vec3<u32>(4294967295u, ~4294967295u, ~37577u)) % vec3<u32>(32u)), vec2<u32>(firstTrailingBit(~u_input.d.x), 16073u), Struct_1(select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, 4294967295u) >> (vec4<u32>(0u, u_input.d.x, 1u, u_input.d.x) % vec4<u32>(32u)), countOneBits(vec4<u32>(arg_0, 2238u, 0u, arg_0))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.d.x, 57995u, 1u)), vec4<u32>(u_input.d.x, u_input.d.x, 37803u, 1u) ^ vec4<u32>(arg_0, u_input.d.x, arg_0, arg_0)), vec4<bool>(true & arg_1.a.x, false, any(vec2<bool>(true, false)), select(true, true, false)))), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(5216u, firstLeadingBit(0u), ~arg_0, arg_0), firstTrailingBit(vec4<u32>(u_input.d.x, arg_0, u_input.d.x, 1u)) & min(vec4<u32>(58848u, 1u, u_input.d.x, arg_0), vec4<u32>(6183u, arg_0, u_input.d.x, 4294967295u)))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) * -707f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-288f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.x)), 1f, true))))), vec2<f32>(381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(498f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.b.x + arg_1.b.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1534f + 238f) + -1222f)), 1f), _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(-2147483647i, var_1.a.x), -arg_1.c.x, abs(u_input.b)), vec3<i32>(_wgslsmith_mod_i32(-u_input.b, 2147483647i), ~_wgslsmith_div_i32(var_0.x, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_3.c.x, -1i), abs(1i), arg_3.c.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) * 480f);
    return vec4<u32>(24254u | arg_0, select(u_input.d.x, arg_0, firstTrailingBit(~0u) == firstLeadingBit(_wgslsmith_sub_u32(arg_0, 1u))), 0u, _wgslsmith_dot_vec3_u32(var_1.c.a.wyz >> (vec3<u32>(min(arg_0, 4294967295u), _wgslsmith_sub_u32(11374u, var_1.b.x), _wgslsmith_sub_u32(u_input.d.x, arg_0)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_1.c.a.yzz, var_1.c.a.zzw, vec3<u32>(0u, u_input.d.x, 3049u)), ~firstLeadingBit(vec3<u32>(1u, arg_0, 36584u)))));
}

fn func_2() -> bool {
    let var_0 = Struct_2(u_input.e, vec2<u32>(u_input.d.x, 1u), Struct_1(select(vec4<u32>(min(u_input.d.x, 19816u), 22773u & u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), func_3(max(u_input.d.x, 1u), Struct_4(vec3<bool>(true, true, true), Struct_3(vec4<f32>(-305f, 175f, -1416f, 1097f), vec2<f32>(-1000f, 1000f), -646f, vec3<i32>(u_input.c.x, -37386i, -1i)), u_input.e.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, 1053f)), Struct_4(vec3<bool>(false, true, false), Struct_3(vec4<f32>(1168f, 929f, 1470f, 121f), vec2<f32>(-1000f, -1538f), -1000f, vec3<i32>(u_input.b, u_input.c.x, -1i)), u_input.c.xy)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))), Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 77661u, 2700u, u_input.d.x), vec4<u32>(70494u, 4294967295u, u_input.d.x, u_input.d.x) >> (vec4<u32>(4294967295u, u_input.d.x, 37071u, 0u) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 0u, 11959u), vec4<u32>(u_input.d.x, 52239u, 36198u, 0u)), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 12666u) ^ vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x), ~vec4<u32>(u_input.d.x, u_input.d.x, 31582u, u_input.d.x))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2407f, -629f, -548f, 1072f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1141f, 1000f, 1687f, -628f), vec4<f32>(-1000f, 1527f, 1667f, -1746f), false)))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-115f * _wgslsmith_f_op_f32(801f - -212f)), 182f)), 844f), -824f, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(30428i, var_0.a.x, var_0.a.x), var_0.a), vec3<i32>(var_0.a.x, u_input.c.x, var_0.a.x)), vec3<i32>(-12506i, ~var_0.a.x, u_input.b)), -u_input.e));
    let var_2 = select(vec3<u32>(min(~(~u_input.d.x), ~firstTrailingBit(54411u)), var_0.b.x >> (_wgslsmith_sub_u32(~var_0.d.a.x, 0u) % 32u), u_input.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(~8025u, u_input.d.x, 1u), var_0.c.a.wyy), any(!vec3<bool>(select(false, true, true), true, select(true, true, false))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_div_f32(-1600f, var_1.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -1277f) * -1461f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) + var_1.c)));
    let var_4 = Struct_4(vec3<bool>(true, !(select(false, false, false) | true), any(vec2<bool>(true, true))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -325f, var_1.c, var_1.c) + var_1.a) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.b.x, var_1.a.x, var_1.a.x), vec4<f32>(861f, 835f, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.a.x, -1810f, var_1.c) + vec4<f32>(var_1.a.x, var_1.b.x, 1986f, -862f)), all(vec3<bool>(false, true, true))))), var_1.b, -597f, var_1.d), countOneBits(vec2<i32>((var_0.a.x & var_0.a.x) >> (_wgslsmith_sub_u32(1u, u_input.d.x) % 32u), -42760i)));
    return !var_4.a.x;
}

fn func_1() -> Struct_1 {
    var var_0 = !any(vec3<bool>(false, func_2(), true));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, abs(u_input.d.x)), 12u)];
    return Struct_1(~vec4<u32>(_wgslsmith_add_u32(67123u, abs(4599u)), 4294967295u, func_3(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), Struct_4(vec3<bool>(false, false, true), Struct_3(vec4<f32>(873f, -286f, 1167f, -2063f), vec2<f32>(1000f, 1328f), 308f, u_input.c), u_input.e.yy), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1061f, -421f))), Struct_4(vec3<bool>(false, true, true), Struct_3(vec4<f32>(473f, -1201f, -1136f, -115f), vec2<f32>(-1314f, 805f), 587f, vec3<i32>(2147483647i, u_input.a, 8722i)), vec2<i32>(u_input.e.x, u_input.c.x))).x, reverseBits(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 12>();
    var var_0 = Struct_2(reverseBits(u_input.e) >> (~_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.d.x, u_input.d.x, 23113u), vec3<u32>(u_input.d.x, 67328u, u_input.d.x), true), select(vec3<u32>(563u, u_input.d.x, 1u), vec3<u32>(9140u, 1u, u_input.d.x), vec3<bool>(true, false, false))) % vec3<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.d, _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(50728u, u_input.d.x), vec2<u32>(u_input.d.x, u_input.d.x)), ~vec2<u32>(0u, u_input.d.x))), func_1(), func_1());
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1204f, _wgslsmith_f_op_f32(f32(-1f) * -406f), -1000f, _wgslsmith_f_op_f32(select(540f, 1000f, false)))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(f32(-1f) * -671f))), _wgslsmith_f_op_f32(-178f - _wgslsmith_f_op_f32(max(1000f, -348f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1269f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(142f, _wgslsmith_f_op_f32(-1000f + 376f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1123f)), 541f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(294f, 318f) - -642f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f)))))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, u_input.b, u_input.e.x), vec3<i32>(var_0.a.x, var_0.a.x, 0i)) << (var_0.c.a.zxx % vec3<u32>(32u)), u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(select(-1i, _wgslsmith_mult_i32(1i, -1i), true) >> ((u_input.d.x >> (7666u % 32u)) % 32u));
}

