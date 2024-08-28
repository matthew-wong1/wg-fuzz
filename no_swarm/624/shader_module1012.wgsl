struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, 1464f), vec3<f32>(arg_0, 995f, arg_0))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1519f, 1868f, arg_0))))), vec3<f32>(1888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(arg_0 * -1163f))))));
    let var_1 = false;
    let var_2 = ~firstTrailingBit(_wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.d, 112923u)), vec2<u32>(1u, 1u) >> (~vec2<u32>(u_input.d, u_input.c) % vec2<u32>(32u))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(211f, var_0.x, arg_0))))), vec3<f32>(1000f, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_div_f32(1313f, -985f)))), _wgslsmith_dot_vec2_u32(~(~var_2), ~vec2<u32>(var_2.x, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), 1203f, -319f)), var_1);
    var var_4 = u_input.e.x;
    return var_3.a.a;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = firstLeadingBit(-1i);
    let var_1 = ~0u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -706f))) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(round(1658f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1034f, 228f, -1104f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(196f, 143f, -378f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-888f, -1574f, -679f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true))), ~1u, vec3<f32>(-338f, 1238f, -241f));
    let var_3 = max(_wgslsmith_add_u32(~firstLeadingBit(17144u), _wgslsmith_add_u32(arg_0, abs(1u))), 70894u) << (~(~12756u) % 32u);
    var var_4 = true;
    return ~(u_input.c ^ 0u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    let var_0 = arg_1.a.a;
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(countOneBits(arg_1.a.b), arg_0.a.b), u_input.c, func_2(1u), ~1u);
    let var_2 = arg_0.a.a.yz;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2057f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-493f + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x - -469f)))))));
    var var_4 = -vec3<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.b, u_input.e.x), u_input.e), -(-u_input.b & -u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x) ^ -vec2<i32>(u_input.b, 0i), -(~vec2<i32>(64081i, 2320i))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), 257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1302f)))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = arg_2;
    let var_1 = arg_2;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, arg_3, arg_3))))), arg_1, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-815f, -1308f) - 101f), -1444f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1350f - arg_2.a.x), _wgslsmith_f_op_f32(arg_3 + -1000f)))), arg_1 <= u_input.c);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-257f)))), _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_div_f32(-299f, var_2.a.a.x))), _wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(-arg_2.a.x)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, arg_2.a.x, var_1.a.x) * _wgslsmith_f_op_vec3_f32(var_2.a.c * vec3<f32>(1000f, 424f, var_1.a.x)))))), arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-1181f + 1066f)))), _wgslsmith_f_op_vec3_f32(func_3(-826f)).x, var_2.a.c.x));
    var_2 = Struct_2(Struct_1(var_0.a.ywz, var_3.b, arg_2.a.wyy), select(select(var_2.b, var_2.b, true), !(-1i != ~arg_0), true));
    return -370f;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1006f, _wgslsmith_f_op_f32(f32(-1f) * -2103f), _wgslsmith_f_op_f32(abs(645f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-480f, 542f, -304f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) - vec3<f32>(arg_2, arg_2, arg_2)))), ~abs(43445u) ^ arg_0, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2 + 1696f), arg_2, -1368f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_2, 128f), vec3<f32>(-1221f, 570f, arg_2)))))), true);
    var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(-751f)).x), 286f, _wgslsmith_f_op_f32(-var_0.a.c.x)), var_0.a.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a.c, vec3<f32>(-957f, -510f, arg_2)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(898f, arg_2, arg_2)))))), u_input.e.x == u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -877f)))) <= _wgslsmith_f_op_f32(-arg_2);
    var var_2 = all(vec3<bool>(!(var_0.b || (var_0.a.a.x > var_0.a.a.x)), false | var_1, !var_1));
    var_2 = ~u_input.b != 9972i;
    return select(select(vec4<u32>(_wgslsmith_sub_u32(23196u, ~arg_0), ~arg_1.x << (firstTrailingBit(u_input.c) % 32u), 19362u, countOneBits(arg_0)), firstLeadingBit(arg_1 << (vec4<u32>(u_input.c, 10856u, 59180u, 1u) % vec4<u32>(32u))), !select(!vec4<bool>(false, var_1, false, var_1), vec4<bool>(var_0.b, var_1, var_0.b, var_0.b), any(vec2<bool>(true, false)))), arg_1, true);
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, 894f, -314f))))), firstTrailingBit(_wgslsmith_mult_u32(0u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(555f, 1235f, 1343f) + vec3<f32>(-962f, -1000f, 2391f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(431f, 828f, 641f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<f32>(653f, var_0.a.x, var_0.a.x), arg_0.x, vec3<f32>(1457f, 1972f, var_0.a.x)), false), Struct_2(Struct_1(var_0.c, 25589u, var_0.c), u_input.a < 0i), -1034f).a.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x)))));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_4(~(-19800i | u_input.a), _wgslsmith_add_u32(1u, arg_2.x), Struct_3(vec4<f32>(var_1, var_0.c.x, var_0.a.x, var_0.c.x)), 546f)), _wgslsmith_f_op_f32(abs(-435f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-449f, var_0.a.x)))), u_input.c, _wgslsmith_f_op_vec3_f32(-var_0.c));
    var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(ceil(var_0.c.x)), var_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), -2453f, -2417f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(var_1, 891f, -786f), arg_1.x)) + var_0.a))), func_5(0u, select(arg_0, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_2.x, u_input.d, arg_0.x), vec4<u32>(58537u, arg_2.x, var_0.b, arg_0.x)), !any(arg_1)), 337f).x, var_0.a);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -704f);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2)), var_0.a.x, _wgslsmith_f_op_f32(-var_2)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.c), _wgslsmith_f_op_vec3_f32(max(var_0.c, var_0.c))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_0.a.x) * var_0.c), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(sign(757f)), _wgslsmith_f_op_f32(f32(-1f) * -353f)))), ~func_5(~0u, vec4<u32>(4294967295u, 0u, ~1u, ~arg_0.x), var_2).x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_1, var_2)), vec3<f32>(var_2, var_0.c.x, var_0.c.x)) + var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_2)), var_0.a.x, _wgslsmith_f_op_f32(var_2 - var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(23069u, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.d, 4294967295u, 7448u), vec4<u32>(38126u, u_input.d, 33829u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(abs(-40849i), 1u, func_1(Struct_2(Struct_1(vec3<f32>(199f, 1042f, -394f), u_input.d, vec3<f32>(119f, 1574f, -389f)), true), Struct_2(Struct_1(vec3<f32>(-185f, 914f, 110f), 35460u, vec3<f32>(-1035f, 894f, -2331f)), false), -379f), -224f)) + _wgslsmith_f_op_f32(-458f * 1f))), vec2<bool>(true | ((u_input.c != u_input.d) && true), true), ~(~(~(~vec3<u32>(u_input.c, 0u, u_input.d)))));
    let var_1 = vec4<i32>(u_input.a, _wgslsmith_mult_i32(46739i, 21456i), _wgslsmith_div_i32(~7017i, i32(-1i) * -10483i), -1i);
    var var_2 = -632f;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c), ~4294967295u, var_0.c);
    var_0 = func_6(~abs(func_5(0u, ~vec4<u32>(0u, 0u, var_0.b, u_input.c), var_0.c.x)), select(vec2<bool>(all(vec2<bool>(true, true)), true), !vec2<bool>(all(vec4<bool>(true, true, false, false)), true), u_input.e.x <= -var_1.x), func_5(_wgslsmith_mod_u32(~(~4294967295u), 1u), func_5(1u >> (u_input.d % 32u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 44788u, 7004u, 4294967295u), vec4<u32>(u_input.c, u_input.d, var_0.b, 0u)), _wgslsmith_f_op_f32(min(var_0.a.x, var_0.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x - -1078f)))))).yxy);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1153f, 380f, 549f, var_0.c.x)), vec4<f32>(-1150f, 848f, var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - -627f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.a.x, -456f, 638f)))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x - -1065f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.c.x) * _wgslsmith_f_op_f32(var_0.a.x + var_0.c.x)) * _wgslsmith_f_op_f32(-var_0.c.x)), var_0.a.x, _wgslsmith_f_op_f32(-var_0.c.x)));
    let var_4 = func_6(vec4<u32>(func_6(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, var_0.b, 4294967295u, 17771u) ^ vec4<u32>(0u, u_input.c, 1u, var_0.b), ~vec4<u32>(6323u, 36406u, var_0.b, var_0.b)), vec2<bool>(true, true), ~vec3<u32>(u_input.d, u_input.d, 20346u)).b, max(var_0.b, firstTrailingBit(_wgslsmith_mult_u32(u_input.c, u_input.c))), max(var_0.b, ~42858u), firstTrailingBit(0u)), !vec2<bool>(_wgslsmith_div_f32(var_3.x, 596f) < _wgslsmith_f_op_f32(trunc(var_3.x)), false), vec3<u32>(abs(1u), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, u_input.d)), abs(var_0.b)), 1u), ~u_input.d));
    var_2 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_i32(0i, u_input.a)), func_6(abs(select(vec4<u32>(var_0.b, u_input.d, 4294967295u, 0u), vec4<u32>(1616u, 4242u, var_4.b, 9515u), all(vec4<bool>(false, false, true, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_0.a.x >= var_0.c.x, var_3.x > 967f)), func_5(var_4.b & var_0.b, select(_wgslsmith_add_vec4_u32(vec4<u32>(var_4.b, var_0.b, 0u, 4294967295u), vec4<u32>(1u, var_0.b, 103213u, 2805u)), vec4<u32>(var_4.b, u_input.d, 18283u, var_0.b), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.a.x, 302f)))).zyw).c.x, _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.d, 0u, 75587u), vec4<u32>(85318u, u_input.d, u_input.d, 18743u)), ~u_input.c, ~u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(var_4.b, 4294967295u, 0u, u_input.c), vec4<u32>(13900u, var_4.b, 0u, 2272u) << (vec4<u32>(8116u, 1u, var_0.b, var_0.b) % vec4<u32>(32u))) ^ vec4<u32>(25032u, 67922u, countOneBits(0u), 28732u)), var_0.b, vec3<u32>(var_4.b ^ ~49871u, var_4.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, var_4.b, 8308u, 0u) << (vec4<u32>(34066u, 27927u, u_input.d, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.d, 42632u, 20458u, 1014u) << (~vec4<u32>(var_4.b, 73818u, 5836u, 0u) % vec4<u32>(32u)))));
}

