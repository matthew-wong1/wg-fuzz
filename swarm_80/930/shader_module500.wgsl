struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -3828f;

var<private> global1: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-956f, 667f, -1000f), vec3<f32>(-441f, 498f, 1060f), vec3<f32>(-811f, 1000f, -302f), vec3<f32>(1509f, -1000f, 371f), vec3<f32>(1622f, 883f, 604f), vec3<f32>(137f, 516f, -999f), vec3<f32>(-705f, -108f, -584f), vec3<f32>(841f, -1432f, -501f), vec3<f32>(-1000f, -801f, 1000f), vec3<f32>(-1178f, 294f, -349f), vec3<f32>(1318f, -400f, -1000f), vec3<f32>(891f, -380f, 141f), vec3<f32>(1923f, -1254f, -135f), vec3<f32>(1233f, -1120f, -2212f), vec3<f32>(698f, 996f, 1070f), vec3<f32>(-742f, 1710f, -1012f), vec3<f32>(-1001f, -256f, -410f), vec3<f32>(-829f, 224f, 2299f), vec3<f32>(1006f, 920f, -1000f), vec3<f32>(-510f, -561f, -562f), vec3<f32>(-1456f, -624f, -442f), vec3<f32>(-241f, -1266f, -1679f), vec3<f32>(1311f, 953f, 558f), vec3<f32>(1506f, -313f, 891f), vec3<f32>(532f, 2059f, 2340f), vec3<f32>(1065f, -823f, -3177f), vec3<f32>(-330f, -957f, -1000f), vec3<f32>(-862f, 453f, -1297f), vec3<f32>(-305f, 742f, 458f), vec3<f32>(576f, -227f, -409f), vec3<f32>(-301f, 1125f, 451f), vec3<f32>(-590f, -199f, -367f));

var<private> global2: array<vec2<u32>, 4>;

var<private> global3: vec3<u32> = vec3<u32>(9690u, 1u, 1u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(global3.yy, vec3<i32>(_wgslsmith_add_i32(abs(12180i << (u_input.a % 32u)), 1i), 1i, _wgslsmith_div_i32(firstLeadingBit(firstTrailingBit(3716i)), -94065i)), global3.x, 1i, any(vec3<bool>(false, any(vec2<bool>(true, true)), false)));
    var var_1 = Struct_1(vec2<u32>(global3.x, u_input.a), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, -2147483647i, var_0.d), var_0.b, abs(var_0.b))), 4294967295u, var_0.b.x, true);
    global0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(-483f))) * _wgslsmith_div_f32(1000f, 2580f)));
    let var_2 = _wgslsmith_mod_i32(var_0.b.x, -2147483647i);
    global3 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, u_input.a), ~u_input.a), min(0u, var_0.c), 7374u), ~vec3<u32>(~global3.x, 13985u << (global3.x % 32u), 30277u));
    return ~0u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-293f)) - _wgslsmith_f_op_f32(549f + -1039f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1436f - 159f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-232f - -1000f), -1007f))));
    var var_1 = Struct_1(vec2<u32>(4294967295u, u_input.a), vec3<i32>(-3827i, 20738i, firstTrailingBit(arg_0)), reverseBits(~27612u), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), ~vec2<i32>(arg_0, arg_0)) ^ _wgslsmith_dot_vec4_i32(select(vec4<i32>(-14399i, arg_0, arg_0, -1i), vec4<i32>(arg_0, 0i, arg_0, 37385i), true), ~vec4<i32>(7532i, -21576i, arg_0, 9078i)), ~firstLeadingBit(38155i)), true);
    var var_2 = Struct_1(vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, u_input.a) ^ 4294967295u) & countOneBits(~(vec2<u32>(13748u, var_1.a.x) | vec2<u32>(var_1.a.x, global3.x))), var_1.b, u_input.a, -min(~arg_0, ~_wgslsmith_dot_vec2_i32(var_1.b.yy, vec2<i32>(arg_0, 2147483647i))), true);
    var var_3 = Struct_1(_wgslsmith_mod_vec2_u32((global3.zx | ~global3.xx) << (global3.yx % vec2<u32>(32u)), ~(~(var_2.a | var_2.a))), var_2.b, firstTrailingBit(abs(var_1.a.x ^ ~u_input.a)), max(arg_0, _wgslsmith_div_i32(-_wgslsmith_mod_i32(var_1.b.x, 1i), var_1.b.x ^ var_1.d)), var_1.e);
    let var_4 = func_3();
    return select(select(!select(!vec4<bool>(false, false, var_1.e, false), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(true, var_3.e, true, false), vec4<bool>(var_3.e, false, false, false)), !var_2.e), select(vec4<bool>(select(var_1.e, false, true), all(vec4<bool>(arg_2, false, true, var_2.e)), -292f > var_0.x, var_3.e && false), vec4<bool>(var_2.e, !arg_1, select(false, var_1.e, var_2.e), false), any(!vec4<bool>(arg_2, var_2.e, true, false))), false), vec4<bool>(!var_3.e, !(_wgslsmith_div_u32(var_2.a.x, 14477u) > _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(0u, 4u)], var_1.a)), ~var_2.c == (~var_1.c & u_input.a), 1i <= arg_0), true);
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(global3.zx, -vec3<i32>(~(-4254i), -1i, _wgslsmith_sub_i32(firstLeadingBit(0i), 12981i)), ~(~(~_wgslsmith_mod_u32(u_input.a, 0u))), -(0i >> (global3.x % 32u)) >> (firstLeadingBit(abs(global3.x)) % 32u), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = var_0.d;
    let var_2 = var_0;
    let var_3 = select(select(vec4<bool>(arg_0.x <= arg_0.x, func_2(var_2.d, true, any(vec3<bool>(true, false, true))).x, all(!vec4<bool>(true, var_0.e, var_0.e, var_0.e)), true), func_2(var_0.b.x, !(true | var_2.e), var_2.e), var_2.e), vec4<bool>(var_2.e, true | !(var_2.e || var_2.e), var_0.e, var_0.e), select(vec4<bool>(true, !var_2.e, false != var_0.e, var_0.e), select(!select(vec4<bool>(var_0.e, var_2.e, false, var_0.e), vec4<bool>(false, var_0.e, false, var_2.e), var_0.e), vec4<bool>(any(vec2<bool>(true, true)), var_2.e, false, var_2.e), var_0.e), var_2.e));
    global3 = vec3<u32>(0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(18279u, 53328u, 64324u), vec3<u32>(global3.x, 9972u, var_2.c), var_3.yzw), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 0u, 6099u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 0u, 1u), vec3<u32>(global3.x, 60652u, var_0.a.x))))), min(27101u >> (var_0.a.x % 32u), ~(~(global3.x >> (4294967295u % 32u)))));
    return Struct_1(~(_wgslsmith_div_vec2_u32(vec2<u32>(global3.x, 4294967295u) | var_2.a, vec2<u32>(92214u, 1u)) & vec2<u32>(~27119u, global3.x)), _wgslsmith_div_vec3_i32(min(firstLeadingBit(abs(vec3<i32>(-1i, 2166i, 40153i))), max(var_0.b, var_2.b) << (min(vec3<u32>(u_input.a, 24944u, var_0.a.x), vec3<u32>(u_input.a, 78333u, 10743u)) % vec3<u32>(32u))), vec3<i32>(~var_0.b.x, ~(~var_2.b.x), -9370i)), _wgslsmith_dot_vec2_u32(~(~global3.zx) | max(firstLeadingBit(vec2<u32>(1u, u_input.a)), vec2<u32>(33489u, global3.x)), global3.xx), reverseBits(var_0.d), true);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(608f, 1890f, -728f, -554f), vec4<f32>(1000f, 1284f, -110f, -1774f)), vec4<f32>(-217f, 1272f, -143f, 2879f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-417f, -174f, 435f, 184f) * vec4<f32>(508f, 454f, -288f, -204f)))), select(vec4<bool>(false, true, false, true), func_2(0i, false, true), vec4<bool>(true, false, true, false))))));
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f + -1000f) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1542f, 263f)))), -220f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-445f * _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1901f * -647f))))));
    var var_2 = Struct_1(var_1.a, firstTrailingBit(vec3<i32>(~var_1.d ^ _wgslsmith_div_i32(-12120i, -1i), max(var_0.b.x, var_0.d), abs(15352i))), var_0.c, 12979i, 73628u < u_input.a);
    let var_3 = ~(~global3.zy);
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1203f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-204f)) + 571f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-267f * -955f))) + 1828f))));
    return vec3<bool>(var_2.e != all(vec4<bool>(var_2.e, 33163u == var_1.c, var_3.x < 4294967295u, true)), !(any(vec2<bool>(var_2.e, var_0.e)) & true), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: u32) -> vec3<i32> {
    var var_0 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1841f, 1681f, -1193f, _wgslsmith_f_op_f32(-503f * _wgslsmith_f_op_f32(320f + -278f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-466f, -318f, 1000f, 236f), vec4<f32>(259f, 2414f, -314f, 285f), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1567f, 419f, 621f, -1144f) * vec4<f32>(-1453f, 2500f, -1048f, -139f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(216f, -2426f, -340f, 761f), vec4<f32>(-502f, 430f, 1602f, -317f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, 557f, -1541f, -229f))))));
    global3 = _wgslsmith_add_vec3_u32(vec3<u32>(~0u, _wgslsmith_mod_u32(u_input.a, 1u), 88275u), _wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(70210u, var_0.c, 1u)) & abs(~vec3<u32>(global3.x, global3.x, var_0.c)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4707u) & vec3<u32>(global3.x, 1467u, 26493u), _wgslsmith_div_vec3_u32(vec3<u32>(24386u, 1u, 48225u), vec3<u32>(0u, 0u, u_input.a)), select(vec3<u32>(var_0.c, 54542u, u_input.a), vec3<u32>(u_input.a, 10161u, 13758u), arg_0.x)), ~abs(vec3<u32>(var_0.c, var_0.c, 23571u)))));
    let var_1 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-688f, -645f, 294f, 355f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2141f)), 372f, 609f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(474f, 496f))))));
    global2 = array<vec2<u32>, 4>();
    let var_2 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, -1515f, 1725f, -101f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, -1463f, 801f, -407f))))));
    return _wgslsmith_add_vec3_i32(-var_0.b, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 32>();
    let var_0 = vec2<u32>(1u, ~16862u);
    let var_1 = ~vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global3.x, var_0.x, 0u), vec4<u32>(67681u, var_0.x, 0u, var_0.x)), countOneBits(select(30342u, global3.x, true)), u_input.a, ~(~global3.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_1.x, 32u)]), global1[_wgslsmith_index_u32(var_0.x, 32u)]))));
    let var_3 = Struct_1(vec2<u32>(1u, var_1.x), func_5(vec2<bool>(true, all(func_1())), (~49142u | global3.x) | (1u & ~u_input.a)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.zyy, vec3<u32>(1u, var_0.x, var_0.x)), var_1.yzw), 13669u), func_4(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(862f * var_2.x), _wgslsmith_f_op_f32(var_2.x - -785f), _wgslsmith_f_op_f32(round(var_2.x)))).c), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, select(9596i, -2147483647i, false), func_5(vec2<bool>(false, true), global3.x).x), _wgslsmith_mult_i32(1i, i32(-1i) * -9024i), 22435i) ^ ~(-2147483647i), select(var_2.x > var_2.x, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !any(vec3<bool>(true, false, false))) && func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(553f, -510f, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_2.x, -111f, var_2.x), vec4<f32>(var_2.x, -1654f, var_2.x, var_2.x), false)), vec4<bool>(false, true, true, false)))).e);
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(0u, 32u)]) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(var_0.x, 32u)] * vec3<f32>(841f, var_2.x, var_2.x)), global1[_wgslsmith_index_u32(var_1.x, 32u)])), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 32u)] + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 2281f, -702f))))))));
    let var_4 = func_5(!vec2<bool>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(805f, var_2.x, var_2.x, -1000f))).e, false), _wgslsmith_mod_u32(~min(var_0.x, ~var_1.x), 4294967295u)).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~1i, _wgslsmith_mult_i32(-(i32(-1i) * -33634i), abs(~0i))));
}

