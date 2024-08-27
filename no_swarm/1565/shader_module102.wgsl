struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_2)))))), _wgslsmith_f_op_f32(exp2(arg_0.a.b))), Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1347f, 310f) - arg_2)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(576f, arg_0.a.b)))), (true && (arg_0.a.a.x < _wgslsmith_dot_vec4_u32(arg_0.a.a, arg_0.a.a))) && !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(126f - arg_0.a.b), -751f)), arg_0.a.b))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(var_0.a));
    var var_2 = _wgslsmith_f_op_f32(-arg_2);
    let var_3 = u_input.a.x;
    global0 = array<vec4<f32>, 7>();
    return ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u) << (_wgslsmith_clamp_vec2_u32(var_0.b.a.a.zz, vec2<u32>(u_input.c, 6447u), vec2<u32>(arg_0.a.a.x, 26871u)) % vec2<u32>(32u)), ~vec2<u32>(28371u, 132424u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: u32) -> bool {
    var var_0 = Struct_1(~(~vec4<u32>(firstLeadingBit(arg_3), func_3(arg_1, vec4<i32>(-10952i, 0i, 15288i, 25920i), arg_1.a.b), ~6760u, max(1u, arg_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1307f - -1179f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(728f)))))));
    var_0 = Struct_1(vec4<u32>(var_0.a.x >> (~(~arg_3) % 32u), 4294967295u, ~1u, min(max(~var_0.a.x, _wgslsmith_dot_vec4_u32(arg_1.a.a, arg_1.a.a)), func_3(Struct_3(arg_1.a), ~vec4<i32>(2103i, u_input.a.x, -1i, 51437i), var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b * -586f)));
    var_0 = Struct_1(vec4<u32>(arg_3, _wgslsmith_sub_u32(min(1u, _wgslsmith_mod_u32(1u, 21754u)), func_3(Struct_3(arg_1.a), vec4<i32>(u_input.a.x, -5755i, u_input.a.x, -800i), -735f)), min(39026u, ~1u), 68416u), arg_0.x);
    global0 = array<vec4<f32>, 7>();
    var_0 = arg_1.a;
    return !(!any(vec3<bool>(false, all(vec3<bool>(false, arg_2.x, false)), !arg_2.x)));
}

fn func_1() -> vec4<bool> {
    var var_0 = select(!vec4<bool>(!func_2(global0[_wgslsmith_index_u32(u_input.d, 7u)], Struct_3(Struct_1(vec4<u32>(u_input.d, 2641u, 9253u, u_input.b), -1138f)), vec2<bool>(false, true), u_input.d), true, false, true), vec4<bool>(false, true, func_2(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(17084u, u_input.d), 7u)], Struct_3(Struct_1(vec4<u32>(1u, 1u, u_input.d, 28964u), -1230f)), vec2<bool>(true, true), _wgslsmith_mult_u32(func_3(Struct_3(Struct_1(vec4<u32>(14537u, u_input.b, u_input.d, 84748u), 1000f)), u_input.a, 2542f), _wgslsmith_mult_u32(u_input.b, 1u))), false), ~1i <= (reverseBits(u_input.a.x) ^ -29808i));
    let var_1 = u_input.a.yzy ^ ~(u_input.a.xyx >> (reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 52478u), vec3<u32>(4294967295u, u_input.c, u_input.d))) % vec3<u32>(32u)));
    let var_2 = abs(vec4<i32>(_wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(54419i, 0i, -11996i, u_input.a.x), u_input.a) ^ -8724i), -11775i, -(~_wgslsmith_div_i32(-2147483647i, var_1.x)), -1850i));
    global0 = array<vec4<f32>, 7>();
    return select(!select(!select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, false, true, false), true), select(!vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), all(vec2<bool>(var_0.x, var_0.x))), true), vec4<bool>(all(select(vec4<bool>(false, true, true, var_0.x), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !vec4<bool>(var_0.x, true, var_0.x, false))), var_0.x, var_0.x, !all(var_0.yy)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(19417u, 1u, 2784u)), reverseBits(vec3<u32>(u_input.b, 1u, 1u))) > u_input.c);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = func_1().x;
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    let var_1 = func_1().zz;
    let var_2 = select(select(select(arg_0 <= 16338u, true, arg_1.x), !(_wgslsmith_dot_vec4_u32(vec4<u32>(4802u, u_input.c, arg_0, u_input.c), vec4<u32>(u_input.c, u_input.b, arg_0, arg_0)) > ~arg_0), u_input.a.x < 2147483647i), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-4400i, -32563i), -u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(19629i, -2147483647i, 1i))) != select(min(u_input.a.x ^ u_input.a.x, -u_input.a.x), u_input.a.x, true), false);
    return Struct_2(Struct_1(firstTrailingBit(abs(vec4<u32>(u_input.d, 4294967295u, 38867u, 29762u))) | vec4<u32>(u_input.b, ~arg_0, _wgslsmith_add_u32(arg_0, u_input.c), u_input.c << (0u % 32u)), arg_2.x), Struct_1(max(~(~vec4<u32>(1u, 4294967295u, 47729u, 0u)), select(firstTrailingBit(vec4<u32>(u_input.c, 1u, 0u, 4294967295u)), vec4<u32>(arg_0, arg_0, arg_0, 190u), vec4<bool>(true, true, false, var_0))), 1931f), _wgslsmith_f_op_f32(-arg_2.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = vec2<u32>(~(~reverseBits(~arg_1.a.a.x)), ~13111u);
    var var_1 = vec3<f32>(_wgslsmith_div_f32(arg_0.a.b, -264f), arg_0.a.b, -387f);
    var var_2 = ~vec3<i32>(max(2147483647i, u_input.a.x), ~_wgslsmith_mult_i32(select(u_input.a.x, arg_2, false), -1i), -(u_input.a.x >> (_wgslsmith_mod_u32(arg_0.a.a.x, 1u) % 32u)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(var_1.yy)), func_4(4294967295u, vec4<bool>(select(true, all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))), all(vec2<bool>(false, false)), true, (-40664i ^ var_2.x) < -10097i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zz + var_1.zz)), _wgslsmith_f_op_vec2_f32(var_1.zz + var_1.yx))), !(func_1().x & false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1685f)), _wgslsmith_f_op_f32(2215f - 204f))))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.a, vec2<f32>(1000f, arg_1.c))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -496f) * vec2<f32>(arg_0.a.b, var_1.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.c, var_3.b.a.b))))))), Struct_2(func_4(33899u, vec4<bool>(var_3.c & var_3.c, var_3.c, false || var_3.c, !var_3.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -644f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(900f, var_3.a.x))))).b, func_4(var_3.b.a.a.x, !vec4<bool>(true, var_3.c, var_3.c, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1000f), var_3.a))).a, -1784f), var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))));
    return -1890f;
}

fn func_6(arg_0: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1978f, -653f) * vec2<f32>(arg_0, arg_0)))) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_5(Struct_3(Struct_1(vec4<u32>(u_input.c, u_input.b, u_input.d, 41360u), -453f)), func_4(u_input.b, vec4<bool>(true, false, false, true), vec2<f32>(arg_0, arg_0)), reverseBits(1i))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0)));
    var var_1 = Struct_2(func_4(_wgslsmith_mod_u32(u_input.d, ~u_input.c & firstTrailingBit(u_input.d)), vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1000f), vec2<f32>(var_0.x, 250f))), vec2<f32>(_wgslsmith_f_op_f32(arg_0 - 687f), _wgslsmith_f_op_f32(-arg_0)))).a, func_4(1u, select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, any(vec3<bool>(false, false, false))), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, true), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0, 1361f)), 815f)))).a, -394f);
    let var_2 = abs(vec3<i32>(1i, ~(-u_input.a.x), select(-44687i << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(34384i, u_input.a.x, -40994i, u_input.a.x), u_input.a), false)) | (firstTrailingBit(u_input.a.yxz) ^ abs(u_input.a.xxx)));
    var var_3 = all(vec4<bool>(false | all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), false, any(vec4<bool>(true, true, true, true)), ~_wgslsmith_mult_u32(29662u, 16110u) <= abs(~var_1.b.a.x)));
    var var_4 = _wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(~4294967295u), 19078u), 1u | _wgslsmith_sub_u32(21103u, ~u_input.d)) << (func_4(u_input.c, select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -267f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-620f, -685f), vec2<f32>(arg_0, var_0.x), vec2<bool>(true, false))), true)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1118f, var_1.c), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 1168f)))))).a.a.x % 32u);
    return countOneBits(vec4<i32>(-var_2.x, -14054i, var_2.x, _wgslsmith_clamp_i32(50934i, 1i << ((var_1.a.a.x << (1u % 32u)) % 32u), var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(func_5(Struct_3(Struct_1(vec4<u32>(0u, 38078u, u_input.d, 0u), _wgslsmith_f_op_f32(f32(-1f) * -1393f))), func_4(u_input.b, !func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1647f, -838f)))), reverseBits(_wgslsmith_mult_i32(u_input.a.x, abs(u_input.a.x))))));
    let var_1 = u_input.d;
    global0 = array<vec4<f32>, 7>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-933f, 1826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f - 1018f)))));
    let var_3 = -2147483647i;
    let var_4 = vec4<u32>(_wgslsmith_mult_u32(u_input.d, min(_wgslsmith_clamp_u32(0u, 1u, 25541u), _wgslsmith_mult_u32(0u, var_1))) << (abs(var_1) % 32u), _wgslsmith_div_u32(u_input.b, 8918u) << (select(0u, u_input.b, var_1 >= var_1) % 32u), 29433u, 4294967295u);
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    let var_5 = vec4<f32>(var_2.x, -212f, _wgslsmith_div_f32(var_2.x, -438f), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_5)), vec3<i32>(-27821i, max(u_input.a.x, var_3), max(~firstTrailingBit(12295i), 0i)), global0[_wgslsmith_index_u32(var_4.x, 7u)], _wgslsmith_f_op_f32(2031f * _wgslsmith_f_op_f32(-var_2.x)));
}

