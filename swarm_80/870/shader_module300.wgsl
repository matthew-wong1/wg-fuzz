struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: u32 = 32459u;

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(0u, 17100u, 26689u, 93974u), vec4<u32>(4294967295u, 49489u, 93605u, 21848u), vec4<u32>(49542u, 35581u, 1u, 4294967295u), vec4<u32>(4294967295u, 5097u, 63527u, 1u), vec4<u32>(1u, 33102u, 0u, 6262u), vec4<u32>(16610u, 39924u, 4294967295u, 58040u), vec4<u32>(1u, 21305u, 0u, 8884u), vec4<u32>(33699u, 0u, 1u, 4294967295u), vec4<u32>(8206u, 5598u, 59776u, 4294967295u), vec4<u32>(64047u, 1u, 4294967295u, 29106u), vec4<u32>(63530u, 15119u, 51511u, 20128u), vec4<u32>(4294967295u, 24890u, 22650u, 24540u), vec4<u32>(90089u, 66281u, 41397u, 0u), vec4<u32>(4294967295u, 1u, 48881u, 20390u), vec4<u32>(18343u, 4294967295u, 1u, 64470u), vec4<u32>(4294967295u, 17514u, 8874u, 1u));

var<private> global3: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.c.zz | vec2<u32>(6374u, 6438u);
    let var_1 = any(select(global0[_wgslsmith_index_u32(reverseBits(4294967295u ^ u_input.d) & 0u, 24u)], global0[_wgslsmith_index_u32(~81876u, 24u)], select(!global3[_wgslsmith_index_u32(~var_0.x, 24u)], vec4<bool>(any(vec3<bool>(false, true, true)), true, true, all(vec3<bool>(true, false, true))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 24u)])));
    var var_2 = u_input.c;
    var var_3 = var_1;
    var_2 = vec3<u32>(~(~_wgslsmith_add_u32(u_input.d, 1u)), _wgslsmith_clamp_u32(33108u | (_wgslsmith_dot_vec4_u32(vec4<u32>(79854u, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.c.x, 17894u, var_2.x, var_0.x)) << (var_2.x % 32u)), var_2.x, select(4294967295u, 11240u, true) >> (1u % 32u)), 4294967295u);
    return select(vec3<bool>(true, any(select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), true)), !any(select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, false, var_1), vec3<bool>(true, false, false)))), select(!vec3<bool>(true, var_1, false), vec3<bool>(select(false, any(vec3<bool>(false, var_1, true)), select(var_1, var_1, var_1)), var_1, true), select(vec3<bool>(true, true, any(vec3<bool>(var_1, var_1, true))), select(vec3<bool>(true, var_1, var_1), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(var_1, true, true)), vec3<bool>(var_1, var_1, var_1)), vec3<bool>(true, true, true))), !select(select(select(vec3<bool>(true, var_1, var_1), vec3<bool>(true, true, var_1), var_1), select(vec3<bool>(false, true, true), vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, var_1)), true), select(!vec3<bool>(false, true, var_1), vec3<bool>(true, true, var_1), !var_1), select(vec3<bool>(false, var_1, var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, true, var_1), vec3<bool>(var_1, false, false)), 1u >= var_2.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> vec4<f32> {
    global2 = array<vec4<u32>, 16>();
    global1 = arg_1.x;
    let var_0 = !select(!func_3(), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    global2 = array<vec4<u32>, 16>();
    let var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 24u)];
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, arg_3, arg_3, 141f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, arg_3, arg_3, 612f) + vec4<f32>(-855f, arg_3, arg_3, 1055f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, arg_3), vec4<f32>(arg_3, arg_3, -664f, 576f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -190f, arg_3, 1048f) - vec4<f32>(arg_3, arg_3, 1000f, 1542f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec4<bool>, 24>();
    global2 = array<vec4<u32>, 16>();
    var var_0 = _wgslsmith_div_u32(u_input.d, u_input.c.x);
    global2 = array<vec4<u32>, 16>();
    var var_1 = vec2<bool>(!any(vec4<bool>(any(vec2<bool>(false, false)), true, arg_1.e, arg_2.e)), !arg_1.e);
    return Struct_1(!select(vec3<bool>(arg_1.a.x, arg_2.a.x, 13786u >= u_input.c.x), arg_2.a, arg_1.a), u_input.c.x, arg_2.c, arg_1.d, any(global0[_wgslsmith_index_u32(arg_1.b, 24u)]));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(u_input.e.zxx, ~(global2[_wgslsmith_index_u32(u_input.d, 16u)] & vec4<u32>(arg_0.x, 4294967295u, u_input.c.x, arg_0.x)), u_input.a.x, _wgslsmith_f_op_f32(138f - -219f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, 738f, -619f, -937f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-670f, 225f, -583f, 758f), vec4<f32>(-107f, 523f, 1000f, -2165f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(641f, -504f, -808f, 962f)) * vec4<f32>(-2438f, 2036f, -358f, 1944f)))), Struct_1(vec3<bool>((4294967295u < arg_0.x) && false, false, true), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, 1u, 0u), global2[_wgslsmith_index_u32(arg_0.x, 16u)])), global2[_wgslsmith_index_u32(1u, 16u)]), vec3<i32>(~abs(u_input.b.x), abs(1i), _wgslsmith_add_i32(u_input.a.x, 0i) | u_input.e.x), 0i, false), Struct_1(vec3<bool>(true, true, true), ~(~countOneBits(u_input.c.x)), select(u_input.b.wyw, abs(vec3<i32>(-1i, u_input.e.x, u_input.b.x)) ^ (vec3<i32>(u_input.b.x, u_input.e.x, u_input.a.x) >> (u_input.c % vec3<u32>(32u))), true), 0i, arg_0.x >= u_input.d));
    var var_1 = all(!global0[_wgslsmith_index_u32(arg_0.x & _wgslsmith_mod_u32(34600u, ~60898u), 24u)]);
    let var_2 = ~u_input.c.xy;
    var var_3 = -25124i;
    let var_4 = select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c ^ abs(_wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), firstTrailingBit(~vec3<u32>(arg_0.x, arg_0.x, 1u))), 16u)], (~reverseBits(vec4<u32>(3407u, arg_0.x, 64298u, 1u)) << (((global2[_wgslsmith_index_u32(0u, 16u)] >> (vec4<u32>(58149u, u_input.d, 1876u, arg_0.x) % vec4<u32>(32u))) << (vec4<u32>(var_2.x, arg_0.x, 22563u, var_0.b) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<u32>(u_input.c.x, var_2.x, ~firstTrailingBit(arg_0.x), 1329u), vec4<bool>(any(!func_4(vec4<f32>(-2144f, -244f, 708f, -114f), Struct_1(vec3<bool>(var_0.e, false, var_0.a.x), arg_0.x, u_input.b.yxy, 2147483647i, var_0.e), Struct_1(var_0.a, 4294967295u, var_0.c, var_0.c.x, false)).a), true, all(func_3()), any(func_4(vec4<f32>(-1950f, -110f, -194f, 1000f), Struct_1(var_0.a, u_input.c.x, vec3<i32>(u_input.e.x, var_0.c.x, -2147483647i), -2147483647i, true), Struct_1(vec3<bool>(false, false, var_0.e), var_0.b, var_0.c, -37642i, var_0.a.x)).a.xy) || !all(var_0.a)));
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1308f + _wgslsmith_f_op_f32(select(-918f, -141f, true))))), -1053f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-592f)), -188f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-619f, -220f)), -617f)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(var_0.c, var_4, 32817i, -275f)).x, _wgslsmith_f_op_f32(720f * -1760f), _wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(trunc(361f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1408f, 836f, -1467f, -957f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1672f, -431f, 233f, -580f), vec4<f32>(534f, 623f, -1126f, 2106f))), global3[_wgslsmith_index_u32(0u, 24u)]))), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(935f, 157f, -204f, -1177f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-792f, -132f, -1916f, 302f))), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.e))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-184f, 211f, 2407f, -1244f) + vec4<f32>(-2859f, 247f, -661f, -936f)), Struct_1(var_0.a, 4294967295u, u_input.e.wzy, var_0.c.x, true), Struct_1(var_0.a, 1u, u_input.b.yxx, u_input.a.x, true)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1299f, -461f, 1376f, -255f) + vec4<f32>(1841f, -805f, 1330f, 747f)), Struct_1(vec3<bool>(var_0.a.x, true, var_0.e), 4294967295u, vec3<i32>(5580i, -19459i, 33308i), -2147483647i, var_0.a.x), Struct_1(var_0.a, 4294967295u, u_input.b.xzx, 59974i, true))), func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, 460f, 1599f, -635f)))), Struct_1(select(vec3<bool>(false, true, var_0.e), vec3<bool>(var_0.e, true, var_0.a.x), false), ~33397u, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, -17127i, -32045i), var_0.c, u_input.e.xyz), ~(-35553i), var_0.e), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(183f, -1124f, 773f, -681f) + vec4<f32>(-1101f, 377f, 258f, 981f)), func_4(vec4<f32>(-857f, -460f, 412f, 634f), Struct_1(var_0.a, var_0.b, var_0.c, u_input.e.x, var_0.a.x), Struct_1(vec3<bool>(false, true, var_0.e), arg_0.x, vec3<i32>(var_0.d, -2147483647i, 1915i), -2147483647i, var_0.e)), func_4(vec4<f32>(-152f, -2096f, 329f, -413f), Struct_1(var_0.a, u_input.d, vec3<i32>(20495i, u_input.b.x, 2147483647i), u_input.a.x, var_0.e), Struct_1(vec3<bool>(false, false, false), 82223u, vec3<i32>(32787i, -21117i, 24990i), 9523i, true))))), func_4(vec4<f32>(1f, -204f, _wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-957f * -438f))), Struct_1(vec3<bool>(true, true, true), reverseBits(arg_0.x) & 52912u, reverseBits(~vec3<i32>(-23812i, u_input.a.x, u_input.e.x)), _wgslsmith_div_i32(max(u_input.e.x, var_0.d), u_input.a.x), var_0.e), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(func_3(), 4294967295u, -var_0.c, ~u_input.b.x, -6243i <= u_input.e.x), func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1116f, 518f, -1245f, 1000f), vec4<f32>(586f, -540f, 2003f, -602f))), func_4(vec4<f32>(1081f, -378f, -748f, -563f), Struct_1(var_0.a, 4294967295u, vec3<i32>(u_input.e.x, 7496i, u_input.e.x), u_input.b.x, var_0.e), Struct_1(var_0.a, arg_0.x, var_0.c, u_input.e.x, var_0.e)), func_4(vec4<f32>(582f, 449f, 153f, 341f), Struct_1(var_0.a, 4294967295u, vec3<i32>(var_0.c.x, 18827i, -13073i), -1i, var_0.e), Struct_1(var_0.a, var_0.b, vec3<i32>(36897i, u_input.b.x, var_0.d), 1i, var_0.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec2<u32>(32589u, u_input.d));
    global2 = array<vec4<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<u32>(func_1(vec2<u32>(_wgslsmith_mult_u32(var_0.b, 1u), ~var_0.b)).b, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1630f, -243f, -286f, -381f) + _wgslsmith_div_vec4_f32(vec4<f32>(524f, -490f, -160f, 380f), vec4<f32>(560f, -428f, 227f, -347f))), Struct_1(vec3<bool>(true, var_0.e, true), 0u, _wgslsmith_mult_vec3_i32(u_input.e.zxy, var_0.c), var_0.c.x, true), func_4(vec4<f32>(1f, 1f, 1f, 1f), var_0, Struct_1(var_0.a, u_input.c.x, u_input.e.wxw, 2420i, true))).b, 13696u & var_0.b));
}

