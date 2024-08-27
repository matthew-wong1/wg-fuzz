struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = arg_2.a.x;
    var_1 = arg_1.a.x;
    var_1 = _wgslsmith_clamp_i32(0i, firstTrailingBit(abs(arg_1.a.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, var_0.a.x, _wgslsmith_div_i32(-42480i, arg_2.a.x)), countOneBits(50166i) >> (_wgslsmith_mult_u32(var_0.d, ~4294967295u) % 32u)));
    let var_2 = arg_2;
    return !(!arg_1.b.x);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = !(!select(vec3<bool>(func_3(42866u, Struct_1(vec2<i32>(-1i, u_input.a), vec4<bool>(true, true, true, false), vec4<f32>(512f, -350f, -420f, 432f), 25750u), Struct_1(vec2<i32>(-36748i, arg_0), vec4<bool>(true, true, false, false), vec4<f32>(-1022f, -1185f, -156f, 1578f), 22498u)), true, all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = 1u;
    var var_2 = -1569f;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(885f)))), 1991f, true));
    var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f))));
    return ~1u;
}

fn func_1() -> Struct_1 {
    let var_0 = !all(!vec2<bool>(true, select(false, false, false)));
    var var_1 = reverseBits(min(_wgslsmith_div_vec2_i32(-vec2<i32>(-9897i, -2147483647i), vec2<i32>(47523i, u_input.a)), vec2<i32>(~(-1i), countOneBits(1i)))) << (vec2<u32>(~(~1u), func_2(~(u_input.a << (4294967295u % 32u)))) % vec2<u32>(32u));
    var_1 = ~((-vec2<i32>(u_input.a, u_input.a) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (vec2<u32>(0u, 37934u) % vec2<u32>(32u)));
    var_1 = select(vec2<i32>(-_wgslsmith_div_i32(min(var_1.x, var_1.x), -2147483647i), abs(-(0i | var_1.x))), vec2<i32>(1i, u_input.a) >> (vec2<u32>(37312u, select(reverseBits(1u), ~6491u, true)) % vec2<u32>(32u)), true);
    return Struct_1(vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, -23250i)), select(select(vec4<bool>(!var_0, !var_0, false, var_0 | false), vec4<bool>(true, var_0, 7707i > var_1.x, true), vec4<bool>(true, !var_0, var_0, true)), !(!vec4<bool>(var_0, var_0, var_0, false)), vec4<bool>(!var_0, !var_0, true, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-343f, 1183f, -558f, 1995f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, 753f, -1712f, 300f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-473f, 897f, 1049f, 1752f)))))), reverseBits(~44075u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = abs(vec3<i32>(_wgslsmith_clamp_i32(-1040i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a.x), arg_0.a) ^ (arg_2 | 1i)), arg_2, -2147483647i));
    var var_1 = vec3<i32>(-25054i, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a.x, -2147483647i, arg_1.a.x, 39703i) & vec4<i32>(-2147483647i, -41641i, 0i, var_0.x)), (vec4<i32>(arg_2, arg_1.a.x, 8760i, u_input.a) ^ reverseBits(vec4<i32>(u_input.a, arg_2, 1i, 0i))) << (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(36410u, arg_0.d, arg_1.d, 4294967295u), vec4<u32>(9428u, 0u, 51731u, 7380u), vec4<u32>(59301u, 4294967295u, 27311u, arg_0.d))) % vec4<u32>(32u))));
    var var_2 = vec2<bool>(true, func_3(arg_1.d, Struct_1(~_wgslsmith_mod_vec2_i32(arg_0.a, var_1.yx), vec4<bool>(all(arg_1.b), false, !arg_0.b.x, arg_1.b.x), arg_1.c, ~_wgslsmith_mod_u32(10457u, arg_1.d)), arg_1));
    var_1 = countOneBits(~select(~_wgslsmith_sub_vec3_i32(vec3<i32>(28167i, arg_1.a.x, arg_0.a.x), vec3<i32>(22799i, var_1.x, 45205i)), -(vec3<i32>(2147483647i, var_0.x, -27466i) << (vec3<u32>(arg_0.d, arg_0.d, arg_1.d) % vec3<u32>(32u))), func_1().b.xyx));
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, ~arg_1.d, ~16724u, _wgslsmith_mod_u32(4399u, arg_0.d)), select(countOneBits(abs(vec4<u32>(4294967295u, arg_0.d, arg_1.d, arg_0.d))), abs(abs(vec4<u32>(arg_0.d, arg_1.d, arg_1.d, arg_0.d))), func_1().b.x)));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(-vec2<i32>(arg_0.a.x, firstTrailingBit(2147483647i)) & _wgslsmith_add_vec2_i32(abs(vec2<i32>(arg_0.a.x, -1i)), -min(vec2<i32>(-30085i, u_input.a), vec2<i32>(-1i, 1i))), func_1().b, arg_1.c, firstLeadingBit(arg_1.d));
    var_0 = func_1();
    let var_1 = !(!(!((arg_0.d ^ 57029u) < firstTrailingBit(1u))));
    var_0 = Struct_1(arg_1.a, select(!func_1().b, arg_1.b, select(false, false, _wgslsmith_f_op_f32(arg_1.c.x - var_0.c.x) != _wgslsmith_f_op_f32(585f * arg_0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f)) - _wgslsmith_f_op_f32(trunc(-2076f))), _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(floor(-2393f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1276f - func_4(arg_1, Struct_1(vec2<i32>(u_input.a, 1i), vec4<bool>(var_0.b.x, true, var_1, true), var_0.c, var_0.d), -6613i, arg_0.c.xy).c.x) * arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(round(1528f))))), ~func_1().d);
    var_0 = arg_1;
    return 1095f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1374f;
    var_0 = _wgslsmith_f_op_f32(func_5(func_4(Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, u_input.a), ~vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(u_input.a, -22235i))), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, -221f, -400f, -772f))), ~27906u), func_1(), select(u_input.a, u_input.a, true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-197f - -564f), -1529f)))), Struct_1(~_wgslsmith_sub_vec2_i32(max(vec2<i32>(1i, u_input.a), vec2<i32>(9997i, 13498i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -21016i), vec2<i32>(u_input.a, -482i))), func_4(Struct_1(firstLeadingBit(vec2<i32>(u_input.a, -2147483647i)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-435f, -965f, -767f, 386f) - vec4<f32>(664f, 500f, -842f, -1227f)), reverseBits(124234u)), func_4(Struct_1(vec2<i32>(53561i, 1i), vec4<bool>(true, true, true, false), vec4<f32>(167f, -985f, 1347f, 473f), 4294967295u), func_1(), 1i, _wgslsmith_div_vec2_f32(vec2<f32>(448f, 263f), vec2<f32>(1760f, -599f))), -20627i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, 593f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1785f, 1145f))))).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1620f)), _wgslsmith_f_op_f32(1140f * 534f), 289f, _wgslsmith_f_op_f32(select(671f, 1506f, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-284f, 933f, 1153f, 144f))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(84654u, 115229u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(0u, 4294967295u))))));
    var var_1 = ~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(7968u, 4294967295u), vec2<u32>(5948u, 13199u))) >> (((vec2<u32>(1u, 1u) & select(vec2<u32>(42480u, 15068u), vec2<u32>(58060u, 71247u), vec2<bool>(false, false))) << (~(~vec2<u32>(0u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = 1u;
    var_2 = firstTrailingBit(68133u);
    let var_3 = ~max(vec2<i32>(u_input.a, -u_input.a), ~vec2<i32>(-1i, 43222i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(0i, ~(-2147483647i)), 405f, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, -120f) * vec3<f32>(-1255f, 331f, 861f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1193f, 1079f, 856f) * vec3<f32>(355f, 922f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-865f, 414f, -768f) + vec3<f32>(-557f, -1081f, -108f)))), vec3<f32>(-318f, -791f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1843f + -1597f), 1f))), _wgslsmith_f_op_f32(1f - 1366f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1105f, 1655f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-709f + 570f) * _wgslsmith_f_op_f32(sign(-1365f))))));
}

