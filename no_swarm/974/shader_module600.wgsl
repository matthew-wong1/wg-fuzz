struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_2(false, Struct_1(min(countOneBits(vec3<u32>(u_input.e, 10287u, 5034u)) | ~vec3<u32>(u_input.e, u_input.a, 0u), ~vec3<u32>(1u, 61677u, 33799u))), -_wgslsmith_dot_vec2_i32(vec2<i32>(~17898i, _wgslsmith_div_i32(-1i, u_input.d.x)), firstLeadingBit(arg_0)));
    var var_1 = ~(-2147483647i);
    var var_2 = vec4<i32>(0i, -1151i, -42483i, 44645i);
    let var_3 = Struct_4(Struct_3(~var_0.b.a.zz, _wgslsmith_div_f32(arg_2.x, 1516f), ~u_input.c.x, vec3<i32>(arg_1, firstTrailingBit(-26374i), 0i), _wgslsmith_f_op_f32(f32(-1f) * -333f)), vec3<i32>(select(-36193i, _wgslsmith_mod_i32(arg_0.x, ~var_2.x), true), arg_1, var_2.x), !var_0.a, 1011f);
    let var_4 = Struct_5(firstTrailingBit(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(33594u, u_input.e, var_0.b.a.x, 4294967295u), ~vec4<u32>(u_input.e, u_input.c.x, var_0.b.a.x, 116364u)))), var_0.b, 31580u, !all(!select(vec2<bool>(false, true), vec2<bool>(var_3.c, var_0.a), true)));
    return select(select(select(select(select(vec3<bool>(true, true, var_4.d), vec3<bool>(var_0.a, var_0.a, var_4.d), false), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), vec3<bool>(!var_0.a, arg_2.x == arg_2.x, true), select(select(vec3<bool>(true, var_3.c, var_3.c), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, var_4.d, true)), select(vec3<bool>(var_0.a, true, var_4.d), vec3<bool>(var_3.c, true, true), var_4.d), vec3<bool>(var_0.a, true, var_0.a))), select(vec3<bool>(var_3.c || var_3.c, true, var_0.a), !vec3<bool>(var_0.a, true, var_4.d), any(!vec4<bool>(false, true, true, var_0.a))), vec3<bool>(!var_0.a, true, false)), vec3<bool>(false, var_0.a, var_4.d), vec3<bool>(true || var_0.a, false, !var_0.a));
}

fn func_2() -> Struct_4 {
    let var_0 = !vec4<bool>(false, true, true, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -2147483647i), u_input.d.zw & u_input.d.wy) <= (select(-4789i, u_input.b, false) ^ -1256i));
    let var_1 = Struct_1(select(~(~vec3<u32>(1u, u_input.a, 54373u)), ~(~vec3<u32>(u_input.a, 1u, 4294967295u) & min(vec3<u32>(u_input.a, u_input.e, u_input.c.x), vec3<u32>(u_input.c.x, u_input.a, u_input.e))), !func_3(u_input.d.zw, 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, -338f, 802f, -635f)), 2147483647i)));
    var var_2 = Struct_1(firstLeadingBit(~(_wgslsmith_div_vec3_u32(var_1.a, var_1.a) >> (vec3<u32>(var_1.a.x, 4294967295u, var_1.a.x) % vec3<u32>(32u)))));
    var_2 = Struct_1(select(vec3<u32>(5263u, abs(u_input.c.x), ~var_1.a.x) | abs(~var_2.a), _wgslsmith_clamp_vec3_u32(~var_2.a, ~(~vec3<u32>(var_2.a.x, 0u, 0u)), ~var_2.a), var_0.zxx));
    var var_3 = vec3<bool>(true, ~0u != (38888u >> (u_input.c.x % 32u)), var_0.x);
    return Struct_4(Struct_3(var_1.a.zx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(760f, -160f, false))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.a.x, var_2.a.x, 52053u), vec4<u32>(var_2.a.x, var_1.a.x, 53754u, var_2.a.x)) << (~u_input.e % 32u), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b, u_input.d.x), u_input.d.wyx, u_input.d.wxy), vec3<i32>(-104624i, -8240i, u_input.d.x), -u_input.d.xyx) ^ select(vec3<i32>(-19150i, u_input.b, u_input.b), u_input.d.yzw, vec3<bool>(var_0.x, false, var_0.x)), _wgslsmith_f_op_f32(sign(1843f))), abs(min(~(~vec3<i32>(u_input.b, 29312i, 9014i)), vec3<i32>(u_input.d.x, reverseBits(-65754i), u_input.d.x))), false, 1f);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    var var_1 = Struct_4(func_2().a, (vec3<i32>(0i, var_0.a.d.x, i32(-1i) * -1i) ^ vec3<i32>(u_input.b, select(-1i, var_0.a.d.x, var_0.c), i32(-1i) * -35080i)) | ((_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -22226i, var_0.b.x), vec3<i32>(0i, var_0.a.d.x, var_0.b.x)) >> (~vec3<u32>(var_0.a.a.x, 3830u, var_0.a.a.x) % vec3<u32>(32u))) << (min(~vec3<u32>(1u, 0u, 4294967295u), select(vec3<u32>(var_0.a.a.x, 23950u, var_0.a.a.x), vec3<u32>(63872u, 22551u, 16481u), var_0.c)) % vec3<u32>(32u))), (!(u_input.c.x > u_input.c.x) || var_0.c) || true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) - 618f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(603f)), 1000f))));
    var_0 = func_2();
    let var_2 = !(var_0.a.e >= 177f);
    var_1 = func_2();
    return Struct_2(true | (true == var_1.c), Struct_1(select(vec3<u32>(49633u, 1u, u_input.e), vec3<u32>(var_0.a.a.x, var_0.a.c, 10228u) ^ reverseBits(vec3<u32>(u_input.e, 83920u, var_0.a.c)), vec3<bool>(true, true, true))), 45895i);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_4(Struct_3(firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(arg_3.a.xy, vec2<u32>(68727u, u_input.e)), arg_2.a.zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -597f)), ~abs(1u), ~_wgslsmith_clamp_vec3_i32(countOneBits(u_input.d.xzw), abs(vec3<i32>(arg_1.c, u_input.b, 0i)), vec3<i32>(-2147483647i, u_input.b, 2147483647i)), _wgslsmith_div_f32(func_2().d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2681f) - _wgslsmith_f_op_f32(f32(-1f) * -381f)))), vec3<i32>(_wgslsmith_mod_i32(arg_1.c, 1i), -2147483647i, 1i), !(!arg_1.a), -806f);
    let var_1 = func_2();
    let var_2 = Struct_5(_wgslsmith_mult_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.c, 4294967295u, 4294967295u, arg_1.b.a.x), vec4<u32>(14675u, arg_0, var_1.a.a.x, 82413u))), ~(~vec4<u32>(17120u, arg_2.a.x, 1u, 45660u))), Struct_1(arg_1.b.a), 0u, all(vec3<bool>(true, var_0.c, all(vec2<bool>(false, false)))));
    var var_3 = abs(u_input.d.x | countOneBits(u_input.d.x << (~var_0.a.c % 32u)));
    var var_4 = -arg_1.c;
    return _wgslsmith_sub_u32(1u | u_input.e, var_1.a.a.x) >= 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(~u_input.a), func_1(), Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(31473u, u_input.e, 37082u), ~vec3<u32>(31604u, u_input.a, u_input.a))), Struct_1(~vec3<u32>(func_1().b.a.x, ~0u, 19350u)));
    var var_1 = u_input.a;
    var_1 = _wgslsmith_sub_u32(func_1().b.a.x, ~u_input.e);
    let var_2 = func_3(select(func_2().b.xy, _wgslsmith_mod_vec2_i32(u_input.d.ww, firstLeadingBit(u_input.d.zx)), !(!vec2<bool>(var_0, true))), u_input.d.x ^ u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1144f, 1862f, 441f, 1237f), vec4<f32>(-604f, 689f, 211f, 980f), var_0))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1178f, -335f, 1412f, 1088f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, 328f, -256f, 3063f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(495f, 269f, 463f, -1171f), vec4<f32>(-1008f, 432f, -1137f, 235f), var_0)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1342f, 2033f, -1000f, 1711f), vec4<f32>(755f, 1901f, -1192f, 1046f)))))), -u_input.b).yx;
    var_1 = u_input.c.x;
    let var_3 = func_1();
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1042f)), _wgslsmith_f_op_f32(f32(-1f) * -576f)))));
    let var_5 = Struct_4(Struct_3(~(~var_3.b.a.yy << ((var_3.b.a.xx ^ u_input.c) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-452f - func_2().d), 1u, _wgslsmith_mod_vec3_i32(u_input.d.yxw, ~(vec3<i32>(-6291i, var_3.c, u_input.d.x) << (vec3<u32>(27297u, 21437u, 19740u) % vec3<u32>(32u)))), func_2().a.e), -reverseBits(vec3<i32>(~u_input.d.x, reverseBits(var_3.c), 42672i)), !func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1701f - -175f) - 1000f)));
    let var_6 = vec2<bool>(false, (all(select(vec3<bool>(false, false, var_0), vec3<bool>(true, false, var_3.a), true)) | !var_0) || func_3(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-17219i, 2560i))), var_5.a.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.d, 250f, 593f, var_5.a.e) + vec4<f32>(var_5.d, var_5.a.b, var_5.a.b, var_5.d)) - vec4<f32>(1751f, -1677f, var_5.d, var_5.d)), firstTrailingBit(-var_5.a.d.x)).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1024f, _wgslsmith_f_op_f32(abs(750f)))))));
}

