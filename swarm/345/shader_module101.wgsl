struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_1(vec4<u32>(1u, 23121u, 1u, 1u), -1488f), vec2<bool>(true, true), Struct_2(vec3<u32>(25969u, 4232u, 4225u), 1629f, -67495i, vec4<i32>(-34455i, 31118i, -16993i, -1i)), false), Struct_3(Struct_1(vec4<u32>(19716u, 1u, 11407u, 9978u), -564f), vec2<bool>(true, false), Struct_2(vec3<u32>(38805u, 4294967295u, 13048u), -1319f, 14254i, vec4<i32>(-77163i, 52968i, 1i, 34945i)), false), Struct_3(Struct_1(vec4<u32>(1u, 45295u, 0u, 4294967295u), 782f), vec2<bool>(false, false), Struct_2(vec3<u32>(93875u, 16367u, 0u), -2181f, 1i, vec4<i32>(-32715i, i32(-2147483648), 43194i, i32(-2147483648))), true), Struct_3(Struct_1(vec4<u32>(4294967295u, 21714u, 4294967295u, 4294967295u), -941f), vec2<bool>(true, false), Struct_2(vec3<u32>(4294967295u, 0u, 39803u), 283f, -37553i, vec4<i32>(-1i, 1i, 0i, -1i)), false), Struct_3(Struct_1(vec4<u32>(84176u, 0u, 4294967295u, 29086u), 465f), vec2<bool>(true, true), Struct_2(vec3<u32>(29484u, 1u, 111961u), -379f, 2147483647i, vec4<i32>(-4051i, -64856i, -3447i, -3283i)), true), Struct_3(Struct_1(vec4<u32>(1u, 1u, 11154u, 14544u), 823f), vec2<bool>(false, false), Struct_2(vec3<u32>(4294967295u, 39957u, 21939u), -1294f, 1i, vec4<i32>(1i, -19162i, -2115i, 35511i)), true), Struct_3(Struct_1(vec4<u32>(45958u, 0u, 0u, 74889u), -481f), vec2<bool>(false, false), Struct_2(vec3<u32>(13270u, 0u, 4294967295u), -383f, -1i, vec4<i32>(-3508i, i32(-2147483648), -8094i, 49003i)), true), Struct_3(Struct_1(vec4<u32>(50762u, 37177u, 4294967295u, 31840u), -983f), vec2<bool>(false, false), Struct_2(vec3<u32>(4294967295u, 0u, 91621u), 652f, 0i, vec4<i32>(-1i, -42911i, -46495i, 2147483647i)), false), Struct_3(Struct_1(vec4<u32>(953u, 91325u, 2407u, 0u), 319f), vec2<bool>(true, true), Struct_2(vec3<u32>(34248u, 56155u, 0u), 1000f, 0i, vec4<i32>(-13981i, -55223i, -50640i, -1i)), false), Struct_3(Struct_1(vec4<u32>(54095u, 42574u, 2277u, 1u), -150f), vec2<bool>(true, false), Struct_2(vec3<u32>(43568u, 1u, 10103u), -820f, 55987i, vec4<i32>(-8098i, i32(-2147483648), i32(-2147483648), 26020i)), false), Struct_3(Struct_1(vec4<u32>(4294967295u, 85054u, 11161u, 4294967295u), 101f), vec2<bool>(false, true), Struct_2(vec3<u32>(31632u, 12326u, 1u), 2056f, 0i, vec4<i32>(23179i, -15295i, -1i, 10216i)), true), Struct_3(Struct_1(vec4<u32>(20512u, 71817u, 4294967295u, 45358u), 565f), vec2<bool>(true, false), Struct_2(vec3<u32>(68433u, 1u, 9997u), -770f, 1i, vec4<i32>(i32(-2147483648), -29228i, -35498i, -2909i)), false), Struct_3(Struct_1(vec4<u32>(0u, 9196u, 1u, 62684u), 1000f), vec2<bool>(false, true), Struct_2(vec3<u32>(48721u, 4294967295u, 19581u), 938f, 1i, vec4<i32>(-33402i, 7252i, 2147483647i, 2147483647i)), true), Struct_3(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), -192f), vec2<bool>(false, true), Struct_2(vec3<u32>(33091u, 9137u, 0u), -1246f, 1i, vec4<i32>(i32(-2147483648), 17741i, i32(-2147483648), 18211i)), false), Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 604u), -291f), vec2<bool>(false, true), Struct_2(vec3<u32>(52674u, 4294967295u, 56717u), -504f, -1i, vec4<i32>(i32(-2147483648), 2147483647i, 21604i, -25935i)), true), Struct_3(Struct_1(vec4<u32>(73680u, 0u, 0u, 0u), 1217f), vec2<bool>(false, false), Struct_2(vec3<u32>(1u, 1u, 38166u), 194f, -61898i, vec4<i32>(2147483647i, -29666i, i32(-2147483648), 41301i)), true), Struct_3(Struct_1(vec4<u32>(64029u, 4294967295u, 0u, 18209u), -685f), vec2<bool>(false, true), Struct_2(vec3<u32>(24722u, 9925u, 46072u), 617f, 71784i, vec4<i32>(1i, -1i, -28644i, -18443i)), false));

var<private> global2: array<vec2<bool>, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = -40030i;
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    global2 = array<vec2<bool>, 30>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(537f, _wgslsmith_f_op_f32(-1124f - 811f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(927f, _wgslsmith_f_op_f32(552f + -1731f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(921f, 542f) - vec2<f32>(168f, -1324f))))));
    return 12529u;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = Struct_1(firstLeadingBit(vec4<u32>(~global0[_wgslsmith_index_u32(63885u, 10u)], min(1u, func_3()), ~u_input.c, ~_wgslsmith_div_u32(u_input.c, arg_0.a.x))), 1303f);
    let var_1 = -268f;
    let var_2 = min(_wgslsmith_clamp_vec3_u32(var_0.a.zyw, _wgslsmith_mult_vec3_u32(abs(arg_0.a) | vec3<u32>(4294967295u, var_0.a.x, 1u), ~(~var_0.a.xwy)), vec3<u32>(u_input.c, countOneBits(~0u), min(~13115u, abs(4294967295u)))), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(~var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, u_input.c), global0[_wgslsmith_index_u32(79526u | u_input.c, 10u)])), ~max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), var_0.a.zwy), ~var_0.a.xyx)));
    let var_3 = arg_0;
    global1 = array<Struct_3, 17>();
    return var_3.d.x & (~(~(i32(-1i) * -9779i)) >> ((var_2.x ^ u_input.c) % 32u));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_2(~arg_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), func_2(Struct_2(_wgslsmith_add_vec3_u32(arg_0.a.a.yxx, vec3<u32>(4294967295u, 1u, 4294967295u)) & vec3<u32>(1u, arg_0.a.a.x, global0[_wgslsmith_index_u32(u_input.c, 10u)]), arg_0.a.b, ~(~u_input.a.x), ~vec4<i32>(-24788i, -2147483647i, u_input.b, 0i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(593f, 1525f, arg_0.d))))))), min(arg_0.c.d, vec4<i32>(_wgslsmith_div_i32(~(-39078i), i32(-1i) * -2147483647i), 26762i, 0i, -arg_0.c.c)));
    global2 = array<vec2<bool>, 30>();
    let var_1 = !vec4<bool>(true, true, !arg_0.b.x, !arg_0.b.x);
    var var_2 = -427f;
    let var_3 = var_0.d.x;
    return global0[_wgslsmith_index_u32(~func_3(), 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_0 = arg_0.b;
    let var_1 = func_3();
    var_0 = _wgslsmith_f_op_f32(max(arg_1.x, 101f));
    return Struct_1(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-264f + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(954f - arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(~(~(~vec4<u32>(55942u, global0[_wgslsmith_index_u32(u_input.c, 10u)], 21615u, 1u))), _wgslsmith_div_f32(-1000f, 2132f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2353f, 865f, -1664f, -1000f) - vec4<f32>(-427f, -757f, -684f, 1265f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -723f, 309f, -1946f)))))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(1u, 10u)] | _wgslsmith_add_u32(16067u, 0u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(12032u, 10u)] & 0u, ~4294967295u), 0u >> (func_1(Struct_3(Struct_1(vec4<u32>(u_input.c, 40565u, global0[_wgslsmith_index_u32(u_input.c, 10u)], 1u), 145f), vec2<bool>(false, false), Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(34057u, 10u)], global0[_wgslsmith_index_u32(27332u, 10u)], u_input.c), 557f, -1i, vec4<i32>(u_input.a.x, -33311i, u_input.b, -3127i)), true)) % 32u)), ~select(firstTrailingBit(vec4<u32>(u_input.c, 61687u, 1u, 4294967295u)), ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, u_input.c > 0u, true), vec4<bool>(false, false, true, true), select(true, true, true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, u_input.b > u_input.b)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, true, false), true)));
    var var_1 = func_4(func_4(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 148f, var_0.b, var_0.b) + vec4<f32>(273f, -1000f, 1110f, 1071f))), _wgslsmith_add_vec4_u32(var_0.a, var_0.a), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 719f, var_0.b, var_0.b), vec4<f32>(-1000f, var_0.b, var_0.b, 855f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)] <= 0u)))))), abs(var_0.a), select(!vec4<bool>(var_0.b <= var_0.b, true, var_0.b <= -371f, true), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, true, false)), select(vec4<bool>(var_0.b < 1000f, false, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))));
    var var_2 = var_1.a.yz;
    let var_3 = var_1.b;
    let var_4 = any(!vec4<bool>(all(!global2[_wgslsmith_index_u32(var_0.a.x, 30u)]), false, true, all(!global2[_wgslsmith_index_u32(var_0.a.x, 30u)])));
    var_1 = Struct_1(var_0.a, 1088f);
    var var_5 = Struct_1(_wgslsmith_sub_vec4_u32(var_1.a, vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_0.a.x, 10u)], var_2.x), var_0.a.yy)), ~(global0[_wgslsmith_index_u32(4294967295u, 10u)] >> (1u % 32u)), _wgslsmith_add_u32(16825u, 0u), ~var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + 144f)), func_4(var_0, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, var_1.b, -807f, var_1.b), vec4<f32>(var_0.b, var_0.b, var_1.b, var_0.b))), countOneBits(var_1.a), select(vec4<bool>(var_4, true, var_4, true), vec4<bool>(false, var_4, true, var_4), false)).b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_6 = Struct_2(firstLeadingBit(select(var_1.a.xxw, firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], 4294967295u, 2448u)), vec3<bool>(all(vec2<bool>(var_4, var_4)), false, any(vec4<bool>(true, false, false, var_4))))), _wgslsmith_f_op_f32(-var_0.b), 1i, ~firstLeadingBit(_wgslsmith_sub_vec4_i32(~u_input.a, select(u_input.a, u_input.a, var_4))));
    var var_7 = _wgslsmith_f_op_f32(-func_4(func_4(func_4(var_0, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_6.b, -671f, -650f, var_6.b))), countOneBits(var_0.a), !vec4<bool>(false, var_4, var_4, var_4)), vec4<f32>(_wgslsmith_f_op_f32(var_5.b + var_5.b), func_4(Struct_1(vec4<u32>(45880u, var_5.a.x, u_input.c, 1u), -291f), vec4<f32>(var_1.b, var_5.b, -1000f, var_6.b), var_5.a, vec4<bool>(false, var_4, var_4, var_4)).b, 443f, _wgslsmith_f_op_f32(var_0.b + 331f)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(u_input.c, var_1.a.x, 1u, 24548u)), select(var_1.a, vec4<u32>(0u, var_5.a.x, 0u, var_2.x), false), vec4<u32>(var_5.a.x, var_0.a.x, 59662u, var_5.a.x)), select(!vec4<bool>(true, true, var_4, false), !vec4<bool>(var_4, false, var_4, true), !vec4<bool>(var_4, false, false, var_4))), vec4<f32>(var_6.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-784f * var_6.b)), -296f, _wgslsmith_div_f32(var_0.b, var_1.b)), countOneBits(select(var_1.a, var_0.a, var_4)) >> (~vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(0u, 10u)], var_5.a.x) % vec4<u32>(32u)), select(vec4<bool>(false, all(vec4<bool>(false, false, var_4, true)), true, false), select(!vec4<bool>(false, var_4, false, var_4), vec4<bool>(false, var_4, false, false), global0[_wgslsmith_index_u32(49971u, 10u)] == 4294967295u), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, var_4, true), vec4<bool>(var_4, var_4, true, true)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(min(var_6.a, _wgslsmith_sub_vec3_u32(var_0.a.yxy, vec3<u32>(4294967295u, 1019u, u_input.c))) << (_wgslsmith_div_vec3_u32(var_1.a.xyw, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_2.x, u_input.c), var_1.a.yxy)) % vec3<u32>(32u)), ~abs(vec3<u32>(43995u, 1u, u_input.c) & vec3<u32>(3456u, 4294967295u, var_6.a.x))), ~(var_6.d.yww ^ (-var_6.d.yyw >> (reverseBits(var_1.a.xwx) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_1.b) - vec2<f32>(var_1.b, 208f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(134f, var_6.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(174f, var_5.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, -391f), vec2<f32>(703f, 394f), global2[_wgslsmith_index_u32(var_6.a.x, 30u)])), vec2<f32>(-1122f, var_1.b)), vec2<f32>(_wgslsmith_f_op_f32(1319f - 647f), 115f)))));
}

