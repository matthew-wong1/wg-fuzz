struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 78780u, 199u), vec3<u32>(16651u, 18910u, 90560u), vec3<u32>(86866u, 20980u, 1u), vec3<u32>(16424u, 4294967295u, 1u), vec3<u32>(35476u, 0u, 12215u), vec3<u32>(1u, 44826u, 0u), vec3<u32>(1u, 71232u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 32690u, 1u), vec3<u32>(1u, 0u, 9260u), vec3<u32>(44635u, 4294967295u, 0u), vec3<u32>(0u, 26733u, 19983u), vec3<u32>(91765u, 72607u, 7958u), vec3<u32>(64226u, 5015u, 1u), vec3<u32>(14155u, 1u, 12620u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(11568u, 1u, 1u), vec3<u32>(0u, 1u, 11383u), vec3<u32>(1u, 18653u, 0u), vec3<u32>(1u, 33849u, 77933u), vec3<u32>(18475u, 5117u, 34965u), vec3<u32>(26462u, 25454u, 466u), vec3<u32>(27663u, 2007u, 0u), vec3<u32>(5119u, 17040u, 1u), vec3<u32>(77155u, 4294967295u, 18797u), vec3<u32>(45700u, 4294967295u, 32873u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(arg_0.a, _wgslsmith_div_u32(u_input.e.x, 1u), _wgslsmith_mult_u32(arg_0.d.x, 21938u), _wgslsmith_sub_u32(7880u, _wgslsmith_div_u32(abs(u_input.d), u_input.d << (17786u % 32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(arg_0.b.yy));
    let var_2 = Struct_2(~(~(~vec2<u32>(4294967295u, var_0))) << (~abs(vec2<u32>(u_input.e.x, 0u)) % vec2<u32>(32u)), Struct_1(~0u, _wgslsmith_f_op_vec4_f32(-arg_0.b), _wgslsmith_f_op_f32(arg_0.c + arg_0.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.d, arg_0.d), ~24406u), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.e.x, 28841u)), vec2<u32>(arg_0.a, var_0)))), arg_0);
    var var_3 = Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0.b), arg_0.b)) + _wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-509f, arg_0.c, false)))))), countOneBits(select(vec2<u32>(48082u | var_0, ~var_0), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.d.x, 4294967295u), arg_0.d, vec2<u32>(var_2.b.d.x, u_input.d)), all(vec3<bool>(true, true, true)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b.xx));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_2.c.b)) - var_3.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b.b * var_3.b) + _wgslsmith_f_op_vec4_f32(round(var_2.b.b))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = u_input.d == 67267u;
    let var_1 = Struct_2(u_input.e.yz, Struct_1(u_input.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, 1034f, arg_1.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -265f), vec4<f32>(257f, 1558f, arg_1.x, arg_1.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -335f, 1421f, -583f) - vec4<f32>(-1543f, -837f, -1942f, arg_1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + -349f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))), u_input.e.xw), Struct_1(u_input.e.x, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.d, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -500f, 783f, -1062f), vec4<f32>(1642f, arg_1.x, 2386f, arg_1.x)), arg_1.x, ~vec2<u32>(4294967295u, 25420u)))), _wgslsmith_f_op_f32(-754f * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(step(arg_1.x, -1000f)))), (vec2<u32>(1u, 27667u) >> (~vec2<u32>(20451u, u_input.e.x) % vec2<u32>(32u))) >> (vec2<u32>(firstTrailingBit(4294967295u), u_input.e.x & u_input.d) % vec2<u32>(32u))));
    global0 = array<vec3<u32>, 26>();
    let var_2 = firstLeadingBit(1u);
    let var_3 = select(!var_0, var_0, false);
    return var_1.b.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = firstTrailingBit(1u);
    var var_1 = u_input.d;
    let var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(arg_0.zy, min(~(~arg_0.xx), vec2<u32>(~arg_0.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, u_input.e.x, 23753u, u_input.d)))), vec2<u32>(u_input.d, ~(~0u))), Struct_1(firstLeadingBit(~40102u | func_2(arg_1.x, vec3<f32>(2808f, -429f, -427f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2402f, 301f, -403f, 820f))), -116f, max(u_input.e.wy, firstLeadingBit(~arg_0.zy))), Struct_1(~_wgslsmith_div_u32(40909u >> (1u % 32u), arg_0.x), vec4<f32>(-1000f, -1191f, -1730f, 1000f), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(reverseBits(4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, 1606f, -298f, 1053f)), _wgslsmith_f_op_f32(floor(-989f)), u_input.e.wx))).x, firstTrailingBit(arg_0.zw)));
    var var_3 = var_2;
    var_0 = 56855u;
    return Struct_1(_wgslsmith_mod_u32(~firstLeadingBit(var_2.a.x), ~4666u), vec4<f32>(_wgslsmith_f_op_f32(-921f + _wgslsmith_f_op_f32(1025f + _wgslsmith_f_op_f32(round(var_3.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-372f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.b.c))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-255f, var_2.b.c))))), _wgslsmith_f_op_f32(-var_3.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.c, _wgslsmith_f_op_f32(-1464f * _wgslsmith_f_op_vec4_f32(func_3(var_2.b)).x)))), reverseBits(~(~(~vec2<u32>(var_3.a.x, u_input.e.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: bool) -> vec4<u32> {
    let var_0 = ~reverseBits(_wgslsmith_div_i32(arg_2, _wgslsmith_div_i32(arg_2, ~(-1i))));
    global0 = array<vec3<u32>, 26>();
    global0 = array<vec3<u32>, 26>();
    global0 = array<vec3<u32>, 26>();
    var var_1 = Struct_2(vec2<u32>(18755u, abs(arg_0.a)), func_1(~abs(u_input.e | vec4<u32>(0u, arg_0.a, arg_0.d.x, 1u)), u_input.b, !vec3<bool>(any(vec4<bool>(arg_3, false, arg_3, arg_3)), select(false, arg_1.x, true), arg_1.x)), arg_0);
    return ~(~(~(~firstLeadingBit(vec4<u32>(1u, 0u, 90946u, 50729u)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = !select(!vec3<bool>(select(false, true, false), true, all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)));
    let var_1 = vec3<u32>(29895u, 4088u, ~(~(~(0u >> (arg_1.d.x % 32u)))));
    global0 = array<vec3<u32>, 26>();
    let var_2 = func_1(vec4<u32>(var_1.x, ~var_1.x, _wgslsmith_sub_u32(~(~u_input.d), ~4294967295u ^ u_input.d), 0u), abs(u_input.b), var_0);
    global0 = array<vec3<u32>, 26>();
    return Struct_2(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(55242u, var_2.a), vec2<u32>(u_input.d, arg_2.x) << (var_2.d % vec2<u32>(32u))), vec2<u32>(~u_input.e.x, ~u_input.d << (~var_2.a % 32u))), Struct_1(_wgslsmith_dot_vec2_u32(var_1.yy, ~vec2<u32>(0u, 49974u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(arg_1.b, var_2.b))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * var_2.c))), vec2<u32>(75395u, arg_2.x)), func_1(_wgslsmith_sub_vec4_u32(~arg_0, u_input.e | vec4<u32>(59256u, 4294967295u, 104981u, 4294967295u)), ~u_input.a, vec3<bool>(!var_0.x, select(true, !var_0.x, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(~vec4<u32>(u_input.d, 4294967295u, u_input.e.x, u_input.e.x), vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.c, u_input.b.x, u_input.a.x)), _wgslsmith_mult_i32(u_input.c, 2147483647i)), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true)), select(vec2<bool>(u_input.d > u_input.e.x, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), max(4294967295u, u_input.e.x) >= ~2363u), max(~_wgslsmith_sub_i32(-17384i, 71381i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -16502i), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x)), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false))), func_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), u_input.a, vec3<bool>(true, true, true)), vec3<u32>(1u, u_input.d, u_input.e.x), u_input.e.x);
    var var_1 = vec2<i32>(select(~u_input.c, ~_wgslsmith_sub_i32(u_input.b.x, -1i), true), 2147483647i);
    var var_2 = func_5(~_wgslsmith_sub_vec4_u32(u_input.e, u_input.e), Struct_1(_wgslsmith_add_u32(1u, ~abs(u_input.d)), var_0.b.b, _wgslsmith_f_op_f32(565f - var_0.b.b.x), ~u_input.e.yy), vec3<u32>(~(_wgslsmith_dot_vec2_u32(u_input.e.yz, var_0.b.d) | 37308u), _wgslsmith_clamp_u32(firstTrailingBit(func_4(Struct_1(1u, var_0.c.b, -678f, var_0.a), vec2<bool>(true, false), 2328i, false).x), u_input.d, var_0.b.d.x), ~1u), ~0u << (var_0.a.x % 32u)).c;
    let var_3 = true;
    global0 = array<vec3<u32>, 26>();
    var_1 = u_input.b.zy;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, var_2.b.yww, -(~_wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.a.zy), _wgslsmith_mod_vec2_i32(vec2<i32>(78340i, -1i), u_input.a.zx))), -2147483647i);
}

