struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = any(!vec3<bool>(true, any(vec4<bool>(false, true, true, false)), true));
    var_0 = false;
    var var_1 = vec4<u32>(41645u, 3729u, 4294967295u, ~4294967295u);
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(34718u, var_1.x), var_1.yx)), var_1.x, reverseBits(4294967295u) & ~(~var_1.x)), _wgslsmith_clamp_vec3_u32(max(var_1.ywz, ~var_1.zyy), vec3<u32>(min(1u, var_1.x), 90627u, 23210u), var_1.zxx) | var_1.yxw);
    var_0 = true;
    return -max(~arg_0.x, ~0i);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = -(~(~vec3<i32>(u_input.a.x, -var_0.x, 1i << (0u % 32u))));
    var var_1 = func_3(~(~vec4<i32>(var_0.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(6154i, 13685i, -55632i, 38436i), vec4<i32>(var_0.x, 22806i, 2147483647i, 16402i)), ~var_0.x)));
    var_1 = var_0.x;
    var_1 = -1i;
    return Struct_1(select(countOneBits(abs(vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 30604u), vec2<u32>(36996u, 7760u), vec2<u32>(3640u, 4294967295u)), vec2<u32>(1u, 0u)), !vec2<bool>(true, any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(244f, -389f) - vec2<f32>(1215f, -1241f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2116f, -169f) - vec2<f32>(-929f, -934f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(step(-477f, -360f))) * vec2<f32>(-461f, _wgslsmith_f_op_f32(310f * -1831f)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_5, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = arg_2;
    let var_1 = abs(~arg_3.x);
    var var_2 = var_0.b.b;
    let var_3 = arg_2.b.b;
    var_0 = arg_2;
    return Struct_5(var_3.b.b, arg_2.b);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(-152f, _wgslsmith_f_op_f32(f32(-1f) * -1601f))), arg_0.a);
    let var_1 = func_4(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !(u_input.a.x >= 0i), Struct_5(func_2(), Struct_4(func_2(), arg_0, (arg_0.d.x >> (arg_0.b.b.a.x % 32u)) >> (1u % 32u), ~arg_0.d)), ~(~abs(arg_0.d.xz) ^ vec2<u32>(arg_0.b.b.a.x, abs(arg_0.d.x))));
    let var_2 = ~vec2<u32>(~(~(var_1.b.d.x | 1u)), ~max(1u, 75218u));
    let var_3 = vec2<bool>(0u <= ~(~(~arg_0.b.b.a.x)), !(true && any(vec3<bool>(true, true, false))));
    var var_4 = vec4<u32>(func_2().a.x, firstTrailingBit(_wgslsmith_div_u32(~var_1.b.d.x, 30848u)), reverseBits(var_2.x), _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(arg_0.d.x, 28685u)), vec2<u32>(~0u, ~(arg_0.b.b.a.x << (var_1.b.d.x % 32u)))));
    return Struct_1(var_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, 867f) - _wgslsmith_f_op_vec2_f32(sign(arg_0.b.b.b)))), arg_1.yz));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), any(vec3<bool>(true, true, false)))));
    return arg_0.a;
}

fn func_6(arg_0: f32) -> vec2<f32> {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(~(~(1u << (0u % 32u))), ~select(~4294967295u, 1u, true)), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(42242u, 72385u, 42070u)), ~5318u), select(27417u, 56218u, true), _wgslsmith_add_u32(1u, ~1u) ^ func_1(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1522f), func_4(vec2<bool>(false, true), true, Struct_5(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1088f, arg_0)), Struct_4(Struct_1(vec2<u32>(19146u, 36499u), vec2<f32>(1592f, arg_0)), Struct_3(arg_0, Struct_2(arg_0, Struct_1(vec2<u32>(3502u, 3747u), vec2<f32>(arg_0, 686f))), -496f, vec3<u32>(61639u, 42988u, 4294967295u)), 4294967295u, vec3<u32>(0u, 25638u, 1u))), vec2<u32>(4294967295u, 19528u)).b.b.b, _wgslsmith_f_op_f32(arg_0 + arg_0), vec3<u32>(31683u, 1u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -621f) * vec3<f32>(arg_0, arg_0, arg_0)))).a.x);
    var var_1 = vec2<i32>(-7451i, 1i);
    var var_2 = func_4(vec2<bool>(select(true, any(vec4<bool>(true, false, false, true)), true) & false, true), !(!any(vec4<bool>(true, false, false, false)) & ((var_1.x >> (var_0.x % 32u)) > ~u_input.a.x)), func_4(select(vec2<bool>(false, false), vec2<bool>(all(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, false, true, false))), vec2<bool>(true, true)), 33590i > var_1.x, Struct_5(Struct_1(~var_0.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, -1075f))), Struct_4(Struct_1(var_0.xw, vec2<f32>(904f, 256f)), Struct_3(arg_0, Struct_2(196f, Struct_1(vec2<u32>(var_0.x, var_0.x), vec2<f32>(954f, -483f))), arg_0, var_0.yzz), var_0.x, vec3<u32>(var_0.x, var_0.x, var_0.x))), vec2<u32>(~select(5465u, var_0.x, false), var_0.x)), var_0.yy).b.b.b;
    var var_3 = 53073u;
    var_3 = ~(~_wgslsmith_clamp_u32(var_2.b.a.x, _wgslsmith_mod_u32(var_2.b.a.x, var_2.b.a.x), var_2.b.a.x >> (73914u % 32u)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.a - 243f)))), -202f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 1i), u_input.a.x) | u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1552f))))), -1214f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(Struct_2(_wgslsmith_f_op_f32(var_1.x * -890f), func_1(Struct_3(var_1.x, Struct_2(1422f, Struct_1(vec2<u32>(15835u, 70974u), vec2<f32>(-1000f, 485f))), 1228f, vec3<u32>(4294967295u, 16670u, 4294967295u)), vec3<f32>(var_1.x, var_1.x, var_1.x))), func_4(vec2<bool>(true, true), all(vec3<bool>(false, true, true)), func_4(vec2<bool>(true, false), true, Struct_5(Struct_1(vec2<u32>(1u, 15900u), vec2<f32>(var_1.x, -220f)), Struct_4(Struct_1(vec2<u32>(4294967295u, 81953u), vec2<f32>(var_1.x, var_1.x)), Struct_3(var_1.x, Struct_2(var_1.x, Struct_1(vec2<u32>(18817u, 13908u), vec2<f32>(var_1.x, -652f))), 1089f, vec3<u32>(1u, 1301u, 55288u)), 32683u, vec3<u32>(1u, 1u, 4294967295u))), vec2<u32>(98997u, 0u)), ~vec2<u32>(8709u, 27499u)).b.b)), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = 35394u;
    var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 11518u, 46970u), vec3<u32>(76806u, 1u, 0u))), firstLeadingBit(min(abs(vec3<u32>(18377u, 26469u, 53872u)), select(vec3<u32>(26464u, 33196u, 105354u), vec3<u32>(52879u, 0u, 16810u), vec3<bool>(true, true, false))))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -var_0);
}

