struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global1: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 1u), vec2<u32>(1u, 72171u), vec2<u32>(0u, 21155u), vec2<u32>(26825u, 1u), vec2<u32>(53573u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_5) -> f32 {
    global0 = array<Struct_1, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(trunc(927f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(962f)) - _wgslsmith_f_op_f32(step(arg_1.x, 378f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2622f - -729f))) + -327f);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> bool {
    global1 = array<vec2<u32>, 5>();
    global1 = array<vec2<u32>, 5>();
    let var_0 = 2825i;
    let var_1 = ~_wgslsmith_mod_vec4_u32(u_input.a | (vec4<u32>(24865u, u_input.a.x, u_input.a.x, 45247u) ^ vec4<u32>(47450u, 2343u, 45837u, arg_1)), _wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, u_input.a.x)))) << (~reverseBits(abs(u_input.a)) % vec4<u32>(32u));
    var var_2 = arg_0.x;
    return all(vec3<bool>(!any(vec3<bool>(true, true, false)) & select(true, any(vec2<bool>(false, false)), true), true, false));
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_1(false);
    let var_1 = Struct_1(var_0.a);
    var var_2 = func_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1000f, 1353f, false)), 899f, var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(274f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2778f + -454f), -684f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(745f, 337f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-359f, 687f, var_0.a)) - _wgslsmith_f_op_f32(536f - 584f)), _wgslsmith_f_op_f32(func_2(vec3<f32>(360f, -458f, -1462f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(290f, -1298f)), Struct_5(vec2<bool>(var_0.a, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -369f))), 931u);
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-79381i, _wgslsmith_mod_i32(1i, ~(-10913i))), select(-select(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -4621i), vec2<i32>(2147483647i, 333i)), vec2<i32>(-2147483647i, -2147483647i), select(var_1.a, true, true)), -_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, -2147483647i), -vec2<i32>(2147483647i, 0i)), any(select(select(vec3<bool>(var_1.a, var_0.a, false), vec3<bool>(var_1.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true)), vec3<bool>(var_1.a, true, var_1.a), select(vec3<bool>(var_0.a, var_1.a, var_1.a), vec3<bool>(true, true, var_0.a), false)))), ~(~(~abs(vec2<i32>(2147483647i, 7287i)))));
    let var_4 = vec4<i32>(1484i, abs(_wgslsmith_clamp_i32(abs(var_3.x), _wgslsmith_div_i32(1i, firstTrailingBit(var_3.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 17884i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-2147483647i, -1i) | var_3))), var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(var_3.x), var_3.x, 1i), ~firstTrailingBit(vec3<i32>(var_3.x, var_3.x, var_3.x))));
    return abs(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), 51460u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = Struct_5(arg_3.b.yx);
    var var_2 = -_wgslsmith_mult_vec4_i32(~max(~vec4<i32>(-1i, 2147483647i, 1i, -1i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(-2106i, 46129i, -2844i, 1728i)), vec4<i32>(-1i) * -vec4<i32>(-10310i, -4691i, -14043i, 0i)));
    let var_3 = -var_2.yz;
    let var_4 = -select(max(~(-1i), firstTrailingBit(var_2.x)), firstLeadingBit(~_wgslsmith_div_i32(var_3.x, 1i)), false);
    return _wgslsmith_dot_vec3_u32(u_input.a.zwy, ~(~(arg_3.a.zyx | _wgslsmith_clamp_vec3_u32(u_input.a.yww, arg_3.a.yzz, u_input.a.wzz))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_5 {
    global0 = array<Struct_1, 3>();
    global1 = array<vec2<u32>, 5>();
    global1 = array<vec2<u32>, 5>();
    global0 = array<Struct_1, 3>();
    let var_0 = arg_0.x;
    return Struct_5(vec2<bool>(!(func_3(vec4<f32>(-1125f, 294f, 1402f, 594f), u_input.a.x) == true), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<u32>(func_4(_wgslsmith_mod_vec2_u32(func_1(), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 4352u), global1[_wgslsmith_index_u32(85717u, 5u)])), vec2<f32>(_wgslsmith_f_op_f32(-1274f + 1675f), _wgslsmith_div_f32(823f, -305f)), Struct_5(vec2<bool>(true, true)), Struct_3(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), Struct_1(false), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 3u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 5691u), 3u)])), func_1().x, 1u), _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(17612i, 9045i), ~vec2<i32>(0i, 9250i), ~vec2<i32>(-2147483647i, 2147483647i))), ~firstTrailingBit(vec2<i32>(-44370i, -39385i)) | vec2<i32>(firstLeadingBit(-40319i), _wgslsmith_sub_i32(-1i, 1i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1132f)), _wgslsmith_f_op_f32(559f * -791f)))), 836f, 197f), 1628f);
    let var_1 = ~(~abs(u_input.a.x));
    let var_2 = Struct_3(u_input.a, select(select(!(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, var_0.a.x, var_0.a.x), !vec3<bool>(var_0.a.x, true, var_0.a.x)), vec3<bool>(true, false, true)), vec3<bool>(var_0.a.x, true, !var_0.a.x), vec3<bool>(func_3(vec4<f32>(1000f, -645f, 456f, -960f), abs(var_1)), true, true)), global0[_wgslsmith_index_u32(67824u, 3u)], Struct_1(select(var_0.a.x, var_0.a.x && false, !(var_0.a.x | var_0.a.x))), global0[_wgslsmith_index_u32(31803u, 3u)]);
    var var_3 = Struct_1(true);
    let var_4 = global1[_wgslsmith_index_u32(var_2.a.x, 5u)];
    let var_5 = Struct_5(vec2<bool>(var_2.c.a, !func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(886f, 1310f, 2105f, 689f), vec4<f32>(-1418f, 398f, -684f, 1000f), var_3.a)), _wgslsmith_div_u32(var_4.x, u_input.a.x))));
    let var_6 = func_5(_wgslsmith_mult_vec3_u32(~vec3<u32>(9314u, 1u, var_1), select(vec3<u32>(var_4.x, 73453u, var_2.a.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.x, var_1, 12383u), var_2.a.wxx) % vec3<u32>(32u)), abs(firstTrailingBit(u_input.a.wzz)), false && any(var_2.b))), reverseBits(firstTrailingBit(_wgslsmith_sub_vec2_i32(~vec2<i32>(-20814i, -102465i), -vec2<i32>(0i, -3278i)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-446f + 1000f))), 1273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-455f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-561f, -808f, true))))), -2658f);
    var var_7 = vec2<bool>(any(var_0.a), true);
    let var_8 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_8, ~(~var_8), abs(~(-56030i)), -1i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(229f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-582f - -641f), _wgslsmith_f_op_f32(ceil(735f)))))), _wgslsmith_f_op_f32(abs(-1367f)), var_1);
}

