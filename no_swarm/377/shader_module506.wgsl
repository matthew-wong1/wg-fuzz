struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1159f, -221f)), u_input.a.x, vec2<i32>(-1i) * -(u_input.a.xz ^ vec2<i32>(u_input.b, 2147483647i)), max(vec3<i32>(~(-52089i), -1i, -60643i), vec3<i32>(87169i, u_input.a.x | u_input.a.x, -2147483647i)), vec3<bool>(all(!arg_1), arg_1.x, false)));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.a * _wgslsmith_f_op_vec2_f32(exp2(var_0.a.a))), _wgslsmith_f_op_vec2_f32(var_0.a.a + _wgslsmith_f_op_vec2_f32(floor(var_0.a.a)))), -2147483647i >> (~(~(~arg_0)) % 32u), select(u_input.a.yz, _wgslsmith_div_vec2_i32(-select(vec2<i32>(u_input.a.x, -32858i), var_0.a.d.yz, vec2<bool>(arg_1.x, false)), vec2<i32>(select(2147483647i, u_input.a.x, arg_1.x), -u_input.a.x)), any(arg_1.wzw)), min(vec3<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, 2147483647i), _wgslsmith_clamp_i32(u_input.a.x, 16312i, var_0.a.b), 1i), vec3<i32>(-1i) * -u_input.a.yxy) << ((vec3<u32>(~35744u, ~928u, ~0u) >> (firstLeadingBit(abs(vec3<u32>(arg_0, 906u, arg_0))) % vec3<u32>(32u))) % vec3<u32>(32u)), select(arg_1.zyx, !(!(!arg_1.zzx)), arg_1.x));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1298f, _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec2_f32(-var_0.a.a))))), ~(-2147483647i), -var_1.c, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(var_1.b, var_0.a.b, var_0.a.d.x), vec3<i32>(-2147483647i, u_input.b, u_input.a.x)), var_0.a.d), ~vec3<i32>(-1i, _wgslsmith_sub_i32(var_0.a.c.x, var_1.d.x), ~38664i)), !vec3<bool>(arg_1.x, arg_1.x, var_0.a.e.x));
    let var_2 = select(!var_1.e, var_0.a.e, !vec3<bool>(var_1.e.x, false, any(!arg_1)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2482f, 1367f)) - _wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(var_1.a.x, -837f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, 212f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, _wgslsmith_f_op_f32(var_1.a.x + 194f))))), var_0.a.c.x, var_1.c, ~abs(select(u_input.a.xzz, -var_0.a.d, var_2.x)), vec3<bool>(!var_2.x, -firstTrailingBit(77760i) >= -2785i, true));
    return arg_0;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(max(_wgslsmith_add_u32(abs(1u), 0u), abs(_wgslsmith_div_u32(24084u, 43972u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 44279u, 1u), vec4<u32>(1u, 1u, 1u, 0u))), ~(~abs(_wgslsmith_div_u32(41850u, 4294967295u))), _wgslsmith_add_u32(min(max(abs(4294967295u), reverseBits(4294967295u)), 1u), func_3(1u, vec4<bool>(true, false, arg_2.e.x, arg_1))));
    let var_1 = Struct_3(arg_2);
    var_0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(62501u, ~42712u, var_0.x)), max(countOneBits(vec3<u32>(var_0.x, 0u, 1u)) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(13711u, var_0.x, 4294967295u), vec3<u32>(16713u, 7265u, var_0.x)), vec3<u32>(var_0.x, 1u, 4294967295u)), ~min(vec3<u32>(4294967295u, var_0.x, 62792u) >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)), vec3<u32>(1u, var_0.x, var_0.x))));
    var var_2 = select(select(vec4<bool>(var_1.a.e.x, !(arg_2.e.x == var_1.a.e.x), any(vec4<bool>(false, true, true, false)), any(var_1.a.e)), vec4<bool>(!all(vec3<bool>(false, false, arg_2.e.x)), 52973u > ~var_0.x, var_1.a.e.x, true), select(!(!vec4<bool>(arg_1, true, arg_1, false)), vec4<bool>(true, !arg_1, arg_1 && var_1.a.e.x, true), select(!vec4<bool>(arg_2.e.x, arg_2.e.x, true, arg_2.e.x), select(vec4<bool>(false, arg_2.e.x, true, false), vec4<bool>(var_1.a.e.x, false, var_1.a.e.x, false), vec4<bool>(false, arg_2.e.x, var_1.a.e.x, arg_2.e.x)), !vec4<bool>(true, arg_1, false, false)))), select(vec4<bool>(arg_2.e.x, any(vec2<bool>(false, arg_1)), all(select(vec4<bool>(false, arg_2.e.x, false, false), vec4<bool>(arg_1, arg_2.e.x, arg_1, arg_2.e.x), false)), all(var_1.a.e)), select(vec4<bool>(true, var_1.a.e.x, var_0.x <= var_0.x, var_0.x >= var_0.x), select(vec4<bool>(false, arg_2.e.x, var_1.a.e.x, arg_2.e.x), select(vec4<bool>(false, false, true, var_1.a.e.x), vec4<bool>(true, arg_2.e.x, arg_1, false), false), !vec4<bool>(arg_1, false, arg_2.e.x, true)), select(select(vec4<bool>(arg_2.e.x, true, false, arg_2.e.x), vec4<bool>(arg_2.e.x, false, var_1.a.e.x, arg_2.e.x), vec4<bool>(var_1.a.e.x, var_1.a.e.x, false, true)), vec4<bool>(true, arg_1, arg_2.e.x, false), 1087f == arg_2.a.x)), false), any(vec4<bool>(any(vec4<bool>(false, true, false, arg_2.e.x)) != (var_0.x < 4294967295u), true, any(!var_1.a.e), arg_1)));
    var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~var_0.x, abs(_wgslsmith_add_u32(var_0.x, 6753u)), _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(1u, 45787u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 0u, 0u), ~vec4<u32>(var_0.x, var_0.x, 60799u, 4054u)), ~(~1u), var_0.x, var_0.x)), 48717u, 0u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x), _wgslsmith_div_f32(arg_0.x, 1656f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, arg_2.a.x, 840f) * arg_0.xzx))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2227f, 246f), vec2<f32>(-1199f, -1763f)), var_1.a.a)), ~(-189i), vec2<i32>(arg_2.b, 46137i), u_input.a.wyz, vec3<bool>(var_1.a.e.x, !(var_1.a.e.x | var_1.a.e.x), !var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(var_1.a.a.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.x * 795f), var_1.a.a.x))), _wgslsmith_f_op_f32(-arg_0.x), -156f), arg_2);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.d;
    let var_1 = ~(~(~min(vec4<u32>(67476u, 51556u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 0u, 26406u))) << (abs(vec4<u32>(0u, _wgslsmith_mod_u32(arg_0, arg_0), 4294967295u, min(arg_0, 66408u))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_mult_vec4_i32(~firstTrailingBit(~vec4<i32>(u_input.b, -62115i, var_0.c.x, -2147483647i) >> (vec4<u32>(arg_0, var_1.x, var_1.x, 62525u) % vec4<u32>(32u))), u_input.a);
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.a + vec2<f32>(751f, 506f))))), arg_1.d.c.x, var_0.d.yy, vec3<i32>(-1i, -(~20322i), arg_1.b.d.x), vec3<bool>(all(vec4<bool>(true, arg_1.b.e.x, true, var_0.e.x)), true, !(!arg_1.b.e.x))));
    var var_4 = firstTrailingBit(vec2<i32>(2147483647i, 6463i));
    return -1343f;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(1u, func_2(vec4<f32>(-584f, 1000f, 183f, 2360f), false, Struct_1(vec2<f32>(742f, -795f), -2147483647i, u_input.a.zw, vec3<i32>(-1i, -19388i, u_input.a.x), vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(f32(-1f) * -392f)), _wgslsmith_add_i32(~_wgslsmith_mod_i32(u_input.b, u_input.a.x), firstTrailingBit(i32(-1i) * -2862i)), u_input.a.xw, vec3<i32>(u_input.b, -31881i, u_input.a.x), vec3<bool>(true, true, false)));
    let var_1 = var_0;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)))))), var_0.a.e.x, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.a.x - var_0.a.a.x), var_1.a.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.a + var_0.a.a)), true)), 0i, u_input.a.xx, vec3<i32>(var_1.a.d.x, max(1i, -var_0.a.b), _wgslsmith_div_i32(~var_1.a.b, 2147483647i)), var_0.a.e));
    var_2 = func_2(var_2.c, false, var_2.d);
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(-var_2.a.x)))), -995f, var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-442f)) + -842f)), false, Struct_1(var_0.a.a, ~var_0.a.b, vec2<i32>(-_wgslsmith_div_i32(2147483647i, var_0.a.b), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-322f, var_0.a.a.x, var_0.a.a.x, 1970f), vec4<f32>(var_1.a.a.x, -762f, var_2.c.x, var_2.a.x), false)), var_0.a.e.x, func_2(vec4<f32>(1713f, var_1.a.a.x, var_0.a.a.x, -528f), false, var_0.a).b).d.b), var_1.a.d, func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_2.c, var_2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(681f, var_1.a.a.x, var_0.a.a.x, var_2.d.a.x) - vec4<f32>(var_0.a.a.x, var_0.a.a.x, 1364f, -1135f)), all(vec3<bool>(true, var_1.a.e.x, var_1.a.e.x)))), true, var_1.a).d.e)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !vec2<bool>(var_0.e.x, func_1().e.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - -1099f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-882f, 661f, 1130f), vec3<f32>(var_0.a.x, var_0.a.x, -1146f), var_0.e.x)))))), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -1970f, 1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-868f, 686f, -3284f, var_0.a.x), vec4<f32>(-400f, var_0.a.x, -718f, var_0.a.x), vec4<bool>(var_0.e.x, true, true, var_1.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.a.x, -647f, 611f), vec4<f32>(1110f, var_0.a.x, var_0.a.x, var_0.a.x), true))))), func_1());
    var var_3 = Struct_3(Struct_1(var_2.a.zy, _wgslsmith_mod_i32(_wgslsmith_div_i32(~var_0.c.x, var_0.b ^ -2147483647i), ~_wgslsmith_add_i32(var_0.c.x, var_2.d.d.x)), var_2.b.d.xz, ~(vec3<i32>(u_input.a.x, 1i, var_0.c.x) << (~vec3<u32>(1u, 4294967295u, 28473u) % vec3<u32>(32u))), select(vec3<bool>(!var_2.d.e.x, var_0.a.x < var_0.a.x, true), select(select(vec3<bool>(var_2.d.e.x, true, true), vec3<bool>(var_2.b.e.x, true, var_1.x), var_1.x), var_0.e, !var_0.e), select(select(var_0.e, vec3<bool>(false, var_2.b.e.x, var_0.e.x), var_2.d.e.x), !vec3<bool>(true, var_0.e.x, var_1.x), !var_2.b.e))));
    var_3 = Struct_3(var_0);
    let var_4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_3.a.a.x) - _wgslsmith_f_op_vec2_f32(var_2.a.xz - vec2<f32>(540f, -1000f))))), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.a.x, var_2.c.x), var_3.a.a)), ~(~var_0.c.x), select(func_1().d.zy, -u_input.a.yy, vec2<bool>(any(vec4<bool>(var_0.e.x, var_0.e.x, var_1.x, true)), true)) ^ ~var_3.a.c, ~var_0.d, !func_1().e);
    var var_5 = _wgslsmith_dot_vec3_i32(vec3<i32>(-41172i, ~var_2.b.b, min(var_0.c.x | 0i, var_4.c.x)), select(~max(vec3<i32>(var_0.d.x, -26444i, var_0.d.x), vec3<i32>(u_input.a.x, var_3.a.c.x, var_0.d.x)), ~abs(var_3.a.d), !var_3.a.e)) >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(53835u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-func_1().a.x), 2149f, var_0.a.x, -1095f))), func_1().b, 10003u);
}

