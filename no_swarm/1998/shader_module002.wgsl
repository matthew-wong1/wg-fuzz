struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = all(vec2<bool>(true, false));
    var var_1 = Struct_2(Struct_1(firstLeadingBit(u_input.c.x), select(min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), u_input.a), 98882u == ~u_input.a.x), _wgslsmith_f_op_f32(select(-348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-601f + 653f) * _wgslsmith_f_op_f32(sign(235f))), all(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0))))), _wgslsmith_div_u32(~_wgslsmith_mod_u32(47935u, 4294967295u), ~abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(322f, 865f, -1000f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-227f, 793f, -392f))), vec3<bool>(var_0, var_0, var_0))))), Struct_1(_wgslsmith_dot_vec4_i32(-u_input.c, ~_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.b, u_input.c.x, 32152i, u_input.c.x))), max(~(~4294967295u), _wgslsmith_dot_vec4_u32(max(u_input.a, vec4<u32>(u_input.a.x, 34137u, 61846u, 1u)), firstLeadingBit(u_input.a))), -482f, firstTrailingBit(~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, -1193f, -422f)) * _wgslsmith_div_vec3_f32(vec3<f32>(300f, -844f, -1233f), vec3<f32>(611f, -144f, 125f))))), Struct_1(u_input.b, abs(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1825f)), select(~max(0u, 79641u), 4294967295u, any(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(true, var_0, false, true), var_0))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1758f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2006f, 862f))))), Struct_1(~25233i, ~u_input.a.x, _wgslsmith_f_op_f32(min(-775f, -1777f)), ~(~0u) ^ abs(u_input.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, -334f, -886f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(398f, 161f, -276f) - vec3<f32>(1372f, -1934f, 2062f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, -1293f, -1206f) + vec3<f32>(1946f, 978f, 579f))))));
    var var_2 = var_1.c.b;
    global0 = _wgslsmith_mod_vec2_i32(min(~vec2<i32>(53966i, -1i) << (firstTrailingBit(~vec2<u32>(24569u, 4294967295u)) % vec2<u32>(32u)), select(vec2<i32>(0i, u_input.b), min(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.a, 32145i), vec2<i32>(-46063i, 56422i)), u_input.c.xw), select(select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), var_0), vec2<bool>(true, true), false))), u_input.c.zy);
    var_1 = Struct_2(Struct_1(-2147483647i, 1u, _wgslsmith_f_op_f32(var_1.d.c + _wgslsmith_div_f32(_wgslsmith_div_f32(-1258f, var_1.c.e.x), _wgslsmith_f_op_f32(floor(var_1.d.c)))), ~reverseBits(~u_input.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_1.d.e, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.e.x, -1021f, 304f), var_1.a.e), true))))), var_1.d, var_1.d, Struct_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, 2147483647i, u_input.c.x, 25031i), -u_input.c), -vec4<i32>(global0.x, var_1.c.a, 4152i, 3561i)), ~(~max(1u, u_input.a.x)), var_1.c.e.x, 8143u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-686f, var_1.a.e.x, 1161f), vec3<f32>(var_1.b.c, -1990f, -307f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.c, var_1.c.c, var_1.c.e.x)) * var_1.c.e)))));
    return (i32(-1i) * -reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, var_1.c.a), vec2<i32>(-8432i, 1i)))) < -33493i;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> bool {
    global0 = _wgslsmith_sub_vec2_i32(u_input.c.xy, u_input.c.zz);
    global0 = vec2<i32>(~(24976i ^ global0.x), global0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.a.x, 18237u), arg_1.xx) % 32u)) | countOneBits(u_input.c.xw);
    var var_0 = any(vec4<bool>(!(!func_3()), !func_3(), (any(vec4<bool>(false, true, false, false)) | (global0.x <= -1i)) == (_wgslsmith_clamp_u32(arg_1.x, 1u, arg_1.x) == max(arg_1.x, u_input.a.x)), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, true, true)))));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global0.x & global0.x, firstLeadingBit(-1i), reverseBits(4649i)) ^ _wgslsmith_div_i32(global0.x, -u_input.c.x), ~((global0.x ^ u_input.b) ^ u_input.c.x), ~global0.x), vec3<i32>(-global0.x, ~(-2147483647i), 57087i));
    let var_2 = -39647i;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<bool>(true, arg_1.x, true, arg_2);
    var_0 = !(!vec4<bool>(reverseBits(arg_0.d) < select(arg_0.b, u_input.a.x, false), all(vec3<bool>(var_0.x, var_0.x, var_0.x)), arg_1.x, arg_1.x));
    var_0 = vec4<bool>(!(arg_1.x | true), arg_1.x, all(select(vec2<bool>(arg_2 & false, func_2(-428f, u_input.a.xzz)), arg_1.xy, vec2<bool>(false, -525f <= arg_0.c))), arg_1.x);
    var var_1 = u_input.c.wx;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, -1743f, 468f, 405f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(321f, arg_0.c, arg_0.e.x, arg_0.e.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1623f, arg_0.c, 2213f, -2158f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c, arg_0.e.x, 222f, 346f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.e.x, arg_0.c, arg_0.e.x, 614f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.e.x, 561f, -919f, arg_0.e.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, 406f, -326f, arg_0.e.x), vec4<f32>(-709f, arg_0.e.x, -413f, 187f), true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c, -401f, arg_0.e.x, -344f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2077f, -309f, -601f, 431f) * vec4<f32>(arg_0.c, arg_0.e.x, -393f, 665f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, arg_0.c, -419f, arg_0.e.x))))))));
    return Struct_1(-2147483647i, 1u, var_2.x, firstLeadingBit(reverseBits(arg_0.b)), _wgslsmith_f_op_vec3_f32(var_2.zxx + var_2.yzx));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    return func_1(func_1(Struct_1(arg_0.d.a, 9520u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)), ~_wgslsmith_sub_u32(20455u, u_input.a.x), arg_1.e), select(vec3<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), true), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), func_2(arg_1.e.x, vec3<u32>(59728u, arg_0.c.b, 1u))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_2.e.xx;
    let var_1 = !vec2<bool>(!all(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, true)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(613f, arg_2.c))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c, -891f) - _wgslsmith_f_op_f32(-arg_2.e.x))))));
    var var_2 = select(vec2<bool>(any(vec3<bool>(true, arg_2.d > 0u, !var_1.x)), var_0.x < _wgslsmith_f_op_f32(-arg_2.e.x)), vec2<bool>(!var_1.x, var_1.x), var_1.x);
    let var_3 = -2147483647i;
    return ~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a.yz, ~(-reverseBits(vec4<i32>(-2147483647i, 2205i, 2147483647i, 1i))), func_4(Struct_2(Struct_1(i32(-1i) * -22957i, u_input.a.x, -392f, u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, 776f, -2956f))), Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(56057i, u_input.b)), u_input.a.x, 312f, _wgslsmith_div_u32(u_input.a.x, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-920f, 1108f, 363f))), Struct_1(global0.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_f_op_f32(-650f + 354f), u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2199f, 2035f) * vec3<f32>(105f, 571f, -438f))), func_1(Struct_1(-14090i, 70593u, 891f, 1u, vec3<f32>(-1081f, 739f, 908f)), vec3<bool>(true, true, true), false)), Struct_1(_wgslsmith_mod_i32(-66719i, -11006i), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1348f))), ~u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(ceil(-734f)), _wgslsmith_f_op_f32(max(-940f, 780f)))), 0i));
    var_0 = firstTrailingBit(_wgslsmith_sub_vec2_u32(~(u_input.a.yz ^ vec2<u32>(var_0.x, 4294967295u)) << (func_5(u_input.a.yx, vec4<i32>(0i, u_input.b, -46376i, 26680i), func_1(Struct_1(13254i, 125168u, -604f, u_input.a.x, vec3<f32>(1095f, -286f, -461f)), vec3<bool>(false, true, false), false)) % vec2<u32>(32u)), abs(~(~u_input.a.xz))));
    let var_1 = func_1(func_4(Struct_2(Struct_1(_wgslsmith_div_i32(global0.x, 17414i), _wgslsmith_add_u32(u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(1225f * -354f), 1u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(210f, 1432f, -771f)))), Struct_1(-1i, var_0.x << (var_0.x % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1251f), 10414u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1691f, -648f, -847f))), func_4(Struct_2(Struct_1(global0.x, var_0.x, -171f, 38983u, vec3<f32>(-786f, 182f, 739f)), Struct_1(15259i, 42849u, -251f, u_input.a.x, vec3<f32>(1153f, 2242f, 430f)), Struct_1(u_input.c.x, 1u, 654f, 42371u, vec3<f32>(-1000f, 1924f, 2160f)), Struct_1(u_input.c.x, 75853u, -1224f, 0u, vec3<f32>(624f, -2167f, 496f))), Struct_1(42810i, var_0.x, -641f, var_0.x, vec3<f32>(-136f, -1235f, -105f)), -1i), func_4(Struct_2(Struct_1(global0.x, 33387u, -1186f, 35096u, vec3<f32>(1909f, 914f, -630f)), Struct_1(0i, 37300u, 1434f, var_0.x, vec3<f32>(-707f, -273f, 443f)), Struct_1(global0.x, u_input.a.x, 1630f, 4294967295u, vec3<f32>(1810f, -1000f, 1237f)), Struct_1(u_input.b, 14323u, 1000f, u_input.a.x, vec3<f32>(797f, 199f, -328f))), Struct_1(73892i, u_input.a.x, 794f, var_0.x, vec3<f32>(-1556f, 167f, -271f)), _wgslsmith_dot_vec4_i32(vec4<i32>(-51511i, -4683i, 0i, 2147483647i), u_input.c))), Struct_1(u_input.b, ~1u, -403f, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-293f, 432f, 1093f), vec3<f32>(-1037f, 3077f, 1123f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1401f, 1620f, -1000f)), func_2(-787f, vec3<u32>(4294967295u, 1u, var_0.x))))), min(u_input.b, u_input.b & -u_input.b)), !vec3<bool>(!all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true)), select(true, true, true)), true);
    let var_2 = global0.x;
    var var_3 = vec4<f32>(3791f, 364f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) * var_1.c), var_1.c);
    global0 = u_input.c.ww;
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, _wgslsmith_add_vec2_i32(-(~vec2<i32>(u_input.c.x, u_input.c.x)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(56502u, var_0.x), u_input.a.yw), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -1i, global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-func_4(Struct_2(var_1, var_1, Struct_1(var_1.a, 1u, var_1.c, var_4, vec3<f32>(1492f, var_1.e.x, var_3.x)), var_1), Struct_1(u_input.c.x, var_0.x, var_3.x, 6269u, vec3<f32>(813f, var_1.c, 1000f)), _wgslsmith_sub_i32(1i, var_1.a)).c), var_3.x, var_3.x), abs(18521i));
}

