struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(select(-515f, 105f, any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true)))));
    let var_1 = Struct_3(Struct_1(vec4<bool>(false, any(vec3<bool>(true, false, true)) == true, true, false), 1u, arg_1.zww), -2147483647i, _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.a, -_wgslsmith_div_i32(-15790i, -46564i))), vec2<i32>(-u_input.b.x, min(max(u_input.b.x, u_input.a), ~41049i) << (0u % 32u)));
    var var_2 = var_1;
    let var_3 = 715u;
    let var_4 = ~(vec2<u32>(firstTrailingBit(var_2.a.b), var_2.a.b) >> (~countOneBits(vec2<u32>(6662u, var_2.a.b)) % vec2<u32>(32u)));
    return !(var_1.a.c.x == arg_0) != (false & (_wgslsmith_div_u32(_wgslsmith_clamp_u32(52380u, var_3, var_2.a.b), ~0u) >= ~4294967295u));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>) -> vec4<i32> {
    var var_0 = Struct_1(vec4<bool>(!(u_input.b.x >= u_input.b.x), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1206f * -214f) * _wgslsmith_f_op_f32(ceil(1170f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, -668f, -1391f, -1642f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, 471f, 257f, -912f) * vec4<f32>(-929f, 1794f, 984f, -746f)))), true, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, -258f, 1348f, -286f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1327f, 233f, -656f, 632f)))))), ~arg_2.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) * -2133f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f + -184f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1196f + -531f) + 1f), 1694f), -2676f));
    let var_1 = var_0.c.x;
    var_0 = Struct_1(vec4<bool>(!(any(vec3<bool>(var_0.a.x, var_0.a.x, true)) || arg_1), !(!arg_1), true, all(!var_0.a.xw)), 9670u, _wgslsmith_f_op_vec3_f32(-var_0.c));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~arg_0, _wgslsmith_clamp_vec3_u32(arg_0, reverseBits(vec3<u32>(29333u, 20447u, 0u)), arg_2.zwy)), 13635u, 71363u), ~(~(~arg_2.wwx)));
    var_0 = Struct_1(vec4<bool>(arg_1, !(countOneBits(u_input.a) < (20160i & u_input.b.x)), !(!(!arg_1)), (21882u ^ arg_0.x) == var_2.x), 1871u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-888f, _wgslsmith_f_op_f32(abs(-1174f))) * 259f), var_0.c.x, var_0.c.x));
    return min(~vec4<i32>(~u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, 42438i), reverseBits(u_input.a)), u_input.a, reverseBits(u_input.b.x)), vec4<i32>(u_input.a, u_input.b.x, -19800i & (i32(-1i) * -u_input.b.x), 1i));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> Struct_3 {
    var var_0 = -(~_wgslsmith_mod_vec4_i32(func_2(vec3<u32>(1u, 0u, arg_0.a.b), arg_0.a.a.x, vec4<u32>(arg_0.a.b, arg_0.a.b, 1u, 4294967295u)), -vec4<i32>(-20593i, arg_1, 13419i, arg_1)) << (~countOneBits(vec4<u32>(arg_0.a.b, 1u, arg_0.a.b, arg_0.a.b)) % vec4<u32>(32u)));
    let var_1 = Struct_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(849f, -1000f) - -427f))), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(func_2(vec3<u32>(arg_0.a.b, arg_0.a.b, 0u), arg_0.a.a.x, vec4<u32>(1u, arg_0.a.b, 4294967295u, 0u)).x >> (~1u % 32u), _wgslsmith_add_i32(1i, -1i) | u_input.b.x, arg_1), func_2(vec3<u32>(38564u, 1u, 38093u) | ~vec3<u32>(12054u, arg_0.a.b, arg_0.a.b), true, ~vec4<u32>(arg_0.a.b, arg_0.a.b, 42124u, 0u)).x, -1i), ~(~abs(vec3<u32>(arg_0.a.b, 67784u, arg_0.a.b))), abs(~(~abs(vec4<u32>(37762u, arg_0.a.b, 28075u, 0u)))));
    var_0 = var_1.b;
    var var_2 = Struct_1(arg_0.a.a, ~_wgslsmith_mod_u32(~(7001u >> (var_1.c.x % 32u)), reverseBits(var_1.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_0.a.c, vec3<f32>(616f, arg_2, 1000f), arg_0.a.a.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.a.c, arg_0.a.c)), vec3<f32>(-689f, arg_0.a.c.x, _wgslsmith_f_op_f32(arg_2 + arg_0.a.c.x)))));
    var_0 = vec4<i32>(0i, abs(i32(-1i) * -2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(select(14861i, var_0.x, arg_0.a.a.x), abs(u_input.b.x)), var_1.b.wz), u_input.a);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_3(Struct_1(vec4<bool>(arg_0.a.a.x, false, arg_1, true), 4294967295u, arg_2), 1i, vec2<i32>(-11364i, 18098i), u_input.b), arg_0.d.x, -452f).a.c.x)))));
    var var_1 = func_1(func_1(arg_0, -2147483647i, arg_0.a.c.x), 0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.x - 496f) - _wgslsmith_f_op_f32(f32(-1f) * -740f))), arg_0.a.c.x)).a.c.yx;
    let var_2 = func_1(Struct_3(arg_0.a, countOneBits(abs(-2147483647i)), func_2(vec3<u32>(arg_0.a.b, ~arg_0.a.b, 0u), any(vec2<bool>(false, true)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, arg_0.a.b, 20363u, arg_0.a.b), ~vec4<u32>(arg_0.a.b, arg_0.a.b, 0u, arg_0.a.b))).wz, firstLeadingBit(arg_0.d)), arg_0.d.x, arg_2.x);
    let var_3 = vec3<bool>(-1i >= arg_0.c.x, all(var_2.a.a.xy) | false, all(!arg_0.a.a.yyx));
    var var_4 = !arg_1;
    return func_1(arg_0, firstTrailingBit(abs(-arg_0.b | 1i)), var_1.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    return all(arg_1.a.xyw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(u_input.b.x <= _wgslsmith_mod_i32(-1i, 2147483647i), any(vec2<bool>(true, true)), !any(vec4<bool>(false, false, false, false)), true), vec4<bool>(func_5(func_4(func_1(Struct_3(Struct_1(vec4<bool>(true, false, false, false), 37900u, vec3<f32>(-1040f, 768f, 519f)), u_input.b.x, u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), 6839i, 118f), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-426f, 702f, 265f), vec3<f32>(-178f, 1129f, -405f), vec3<bool>(true, true, true)))), Struct_1(vec4<bool>(true, false, false, true), _wgslsmith_dot_vec3_u32(vec3<u32>(20319u, 26491u, 13768u), vec3<u32>(16487u, 15624u, 4294967295u)), vec3<f32>(833f, 2047f, -1061f))), false, !func_1(Struct_3(Struct_1(vec4<bool>(true, false, false, true), 4294967295u, vec3<f32>(-2323f, 630f, -1061f)), u_input.b.x, u_input.b, u_input.b), abs(-12534i), _wgslsmith_div_f32(-968f, -541f)).a.a.x, func_1(Struct_3(Struct_1(vec4<bool>(false, true, false, false), 28807u, vec3<f32>(427f, 415f, 873f)), ~u_input.b.x, u_input.b, _wgslsmith_add_vec2_i32(vec2<i32>(33728i, u_input.b.x), u_input.b)), ~_wgslsmith_add_i32(-32017i, u_input.b.x), 388f).a.a.x), true);
    let var_1 = ~min(vec2<i32>(u_input.b.x, -2147483647i), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(-50997i, u_input.a)) & (u_input.b & u_input.b)) | u_input.b;
    var_0 = !select(!select(vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(true, false, var_0.x, false), var_0.x)), func_4(func_1(func_1(Struct_3(Struct_1(vec4<bool>(var_0.x, false, var_0.x, false), 627u, vec3<f32>(-513f, 2052f, -1111f)), -1i, vec2<i32>(var_1.x, u_input.b.x), vec2<i32>(0i, u_input.a)), 1i, 1000f), -6480i, 735f), all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1587f, -662f, 1330f) - vec3<f32>(-1687f, -1225f, -939f)), _wgslsmith_div_vec3_f32(vec3<f32>(-747f, -176f, 1000f), vec3<f32>(-728f, 1000f, -219f)), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true))))).a.a, vec4<bool>(true, !all(var_0.wyx), false, func_5(Struct_3(Struct_1(vec4<bool>(var_0.x, true, false, var_0.x), 14195u, vec3<f32>(-586f, -395f, 514f)), u_input.a, vec2<i32>(u_input.b.x, 2147483647i), var_1), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), 51225u, vec3<f32>(1617f, -1611f, 253f)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1113f)), 1f), -1401f, var_0.x)));
    var_0 = !select(func_1(func_4(func_4(Struct_3(Struct_1(vec4<bool>(false, var_0.x, true, false), 28381u, vec3<f32>(-353f, -1465f, var_2.a)), -2147483647i, var_1, var_1), true, vec3<f32>(var_2.a, 1000f, 1000f)), var_0.x && false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(724f, -1079f, 812f))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(311f, -2237f))).a.a, vec4<bool>(!var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, !all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, !(var_0.x || true)));
    var_0 = func_4(Struct_3(func_4(Struct_3(func_1(Struct_3(Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), 35452u, vec3<f32>(-1245f, var_2.a, 640f)), var_1.x, vec2<i32>(-1i, 57129i), vec2<i32>(13646i, u_input.b.x)), var_1.x, -1060f).a, -10645i, vec2<i32>(u_input.b.x, var_1.x), select(var_1, u_input.b, vec2<bool>(var_0.x, var_0.x))), !(var_0.x || true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2516f, var_2.a, -649f))).a, var_1.x, _wgslsmith_mod_vec2_i32(vec2<i32>(-60204i, _wgslsmith_sub_i32(-25385i, var_1.x)), var_1), vec2<i32>(countOneBits(-5321i), -(1i & u_input.a))), true || var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, var_2.a)), vec3<f32>(1000f, var_2.a, 1030f)))))).a.a;
    var var_3 = reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 46843u), ~vec4<u32>(1u, 56940u, 46600u, 4294967295u), !var_0.x), ~vec4<u32>(1u, 18238u, 0u, 4294967295u)), countOneBits(firstLeadingBit(1u))));
    var var_4 = !(!func_4(func_1(Struct_3(Struct_1(vec4<bool>(var_0.x, true, var_0.x, var_0.x), 23042u, vec3<f32>(var_2.a, var_2.a, var_2.a)), u_input.b.x, vec2<i32>(-35408i, var_1.x), vec2<i32>(35271i, u_input.a)), 25624i | u_input.a, _wgslsmith_f_op_f32(var_2.a * var_2.a)), var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a, 686f, -1060f), vec3<f32>(var_2.a, var_2.a, 1000f))) - vec3<f32>(300f, var_2.a, var_2.a))).a.a.xz);
    var var_5 = func_1(Struct_3(func_4(func_1(func_1(Struct_3(Struct_1(vec4<bool>(false, false, false, var_4.x), 4294967295u, vec3<f32>(var_2.a, -888f, 1045f)), 0i, u_input.b, u_input.b), -52336i, var_2.a), func_4(Struct_3(Struct_1(vec4<bool>(true, var_0.x, false, true), 0u, vec3<f32>(225f, -614f, -185f)), 26621i, vec2<i32>(var_1.x, 56453i), vec2<i32>(u_input.a, var_1.x)), true, vec3<f32>(var_2.a, var_2.a, 496f)).d.x, func_1(Struct_3(Struct_1(vec4<bool>(var_0.x, var_4.x, false, false), 2084u, vec3<f32>(var_2.a, var_2.a, -1384f)), var_1.x, vec2<i32>(31720i, var_1.x), u_input.b), 2147483647i, -562f).a.c.x), !var_0.x, vec3<f32>(var_2.a, _wgslsmith_div_f32(211f, 1066f), _wgslsmith_div_f32(-151f, 280f))).a, ~(~u_input.b.x) ^ _wgslsmith_div_i32(45395i, var_1.x), countOneBits(abs(var_1)), var_1), func_2(reverseBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(34892u, 4294967295u, 1u), reverseBits(vec3<u32>(44114u, 42455u, 41766u)), vec3<u32>(40968u, 39047u, 1993u))), _wgslsmith_add_i32(9332i, -var_1.x) >= -var_1.x, vec4<u32>(firstTrailingBit(~0u), 24950u, 0u, _wgslsmith_add_u32(96497u, 32547u))).x, 1712f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-18910i, ~(var_5.b & var_1.x)) << (var_5.a.b % 32u));
}

