struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<f32>) -> i32 {
    let var_0 = ~countOneBits(u_input.a);
    var var_1 = Struct_4(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-22734i, -17844i, ~(-31273i), _wgslsmith_dot_vec4_i32(vec4<i32>(56335i, 14221i, 2147483647i, -46806i), vec4<i32>(-42260i, 27831i, 7110i, 1i)))), vec4<i32>(0i, _wgslsmith_mult_i32(1i, 1i), 0i, ~firstLeadingBit(-1i))), vec2<u32>(~(~var_0), (~u_input.a ^ 0u) ^ _wgslsmith_sub_u32(4294967295u, ~var_0)), Struct_3(select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), false), vec2<bool>(true, false)), select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), true), !select(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, false, true), arg_0), !vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, arg_0))), Struct_2(-firstTrailingBit(select(vec4<i32>(19837i, 1i, 46196i, 2402i), vec4<i32>(0i, -9938i, 1i, 62672i), vec4<bool>(arg_0, false, true, arg_0))), true, vec3<bool>(true || all(vec3<bool>(arg_0, arg_0, arg_0)), arg_0, all(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(false, false, arg_0)))), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7270u, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, var_0)), ~23148u, 33174u, 4294967295u), vec4<bool>(true, !arg_0, true, !arg_0))));
    let var_2 = var_1.c;
    var var_3 = select(!select(vec2<bool>(true, var_1.d.d.b.x), var_2.b.zx, any(!var_1.d.d.b)), var_1.d.d.b.wz, all(select(vec3<bool>(arg_0 || false, arg_0, arg_0), !var_1.d.c, var_2.b)));
    let var_4 = vec3<i32>(-2147483647i, var_1.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(countOneBits(var_1.d.a)), var_1.d.a), abs(var_1.d.a.x)));
    return reverseBits(-countOneBits(-var_4.x ^ 6429i));
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(-495i, 1i), _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(~(-2147483647i), 1i)), _wgslsmith_div_i32(-abs(-2147483647i), _wgslsmith_div_i32(2147483647i, func_3(false, -946f, vec3<f32>(990f, -936f, 288f), vec3<f32>(115f, 603f, 1109f)))), -select(i32(-1i) * -42305i, 1i, true)), all(!vec2<bool>(true, all(vec2<bool>(true, true)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(~vec4<u32>(~u_input.a, 72682u, 1u, 0u), vec4<bool>(false, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))));
    let var_2 = _wgslsmith_div_f32(187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -886f)))) + _wgslsmith_f_op_f32(f32(-1f) * -698f)));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-34902i, select(_wgslsmith_div_i32(var_1.a.x, var_1.a.x), var_1.a.x, true)) | reverseBits(abs(firstTrailingBit(1i))), -1i);
    var var_4 = 1i;
    return var_1;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + -486f));
    let var_1 = Struct_3(!(!select(func_2().c.xx, !arg_2.c.yz, arg_3.x != 154f)), vec3<bool>(-1066f < arg_3.x, any(arg_2.c.yy), false));
    var var_2 = Struct_3(!arg_2.d.b.xy, var_1.b);
    var_2 = var_1;
    var var_3 = Struct_4(_wgslsmith_add_vec4_i32(~arg_2.a, ~arg_2.a), firstTrailingBit(arg_2.d.a.zw), var_1, Struct_2(arg_2.a, !any(arg_2.c), vec3<bool>(select(var_1.b.x != true, 45347u == u_input.a, true), func_2().b || arg_2.b, var_2.a.x), Struct_1(func_2().d.a ^ arg_2.d.a, func_2().d.b)));
    return var_3.d;
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(636f, 1343f, 1717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f * 665f) + -1624f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1531f) - _wgslsmith_f_op_f32(round(-954f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -826f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 834f) - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(328f, 298f)))), 1301f));
    var var_1 = _wgslsmith_clamp_i32(-57653i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 0i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(42365i, 53314i), vec2<i32>(-12241i, -2147483647i))), abs(vec2<i32>(1i, 1i))), ~min(0i, 8125i) ^ _wgslsmith_clamp_i32(i32(-1i) * -38059i, _wgslsmith_dot_vec3_i32(~vec3<i32>(55823i, 1i, -1i), -vec3<i32>(1i, -38769i, 2147483647i)), 1i));
    var var_2 = func_4(1u, arg_0, func_2(), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x), 308f, var_0.x), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -355f), 161f, var_0.x), vec4<bool>(true, true, true, true))))));
    var_2 = Struct_2(~vec4<i32>(_wgslsmith_div_i32(countOneBits(var_2.a.x), var_2.a.x | 1i), 25011i, func_4(~55028u, vec4<u32>(75008u, 43087u, var_2.d.a.x, var_2.d.a.x), func_4(var_2.d.a.x, vec4<u32>(var_2.d.a.x, arg_0.x, 61446u, 1u), Struct_2(vec4<i32>(-2147483647i, var_2.a.x, var_2.a.x, var_2.a.x), var_2.c.x, vec3<bool>(var_2.c.x, var_2.c.x, false), var_2.d), vec4<f32>(var_0.x, -2214f, -434f, var_0.x)), vec4<f32>(1417f, var_0.x, var_0.x, 125f)).a.x, -2693i), any(vec4<bool>(!all(vec4<bool>(var_2.c.x, false, true, true)), var_2.b, func_4(1u, vec4<u32>(arg_0.x, 0u, u_input.a, 17228u), func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 2088f, var_0.x, 328f) * vec4<f32>(var_0.x, var_0.x, -1271f, var_0.x))).c.x, false)), vec3<bool>(var_2.d.b.x, var_2.b, true), func_2().d);
    var var_3 = Struct_2(~var_2.a, all(!var_2.d.b), func_4(~4294967295u, vec4<u32>(arg_0.x, ~(1u >> (var_2.d.a.x % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_0, var_2.d.a), vec4<u32>(var_2.d.a.x, arg_0.x, var_2.d.a.x, 4294967295u)), firstLeadingBit(u_input.a)), func_4(arg_0.x, vec4<u32>(_wgslsmith_div_u32(u_input.a, 41898u), _wgslsmith_mult_u32(arg_0.x, u_input.a), _wgslsmith_dot_vec3_u32(arg_0.ywx, arg_0.zwy), 17971u), Struct_2(vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, -1i), false, var_2.c, var_2.d), vec4<f32>(_wgslsmith_f_op_f32(trunc(1458f)), _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, _wgslsmith_f_op_f32(min(1416f, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x), -553f, _wgslsmith_f_op_f32(step(1876f, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -208f, var_0.x, -738f) + vec4<f32>(var_0.x, var_0.x, -1907f, var_0.x)))), var_2.d.b))).c, Struct_1(arg_0, func_2().d.b));
    return vec4<bool>(!(!(!any(vec3<bool>(true, var_2.c.x, true)))), any(select(vec2<bool>(false, var_3.c.x), !vec2<bool>(var_3.d.b.x, false), 4294967295u == var_3.d.a.x)) || (134f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), var_2.d.b.x, select(1i, select(-811i, abs(var_2.a.x), true), var_3.d.b.x) > ~(-13600i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<bool>(true, select(any(vec3<bool>(true, true, true)), false, true)), vec3<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true, any(func_1(vec4<u32>(u_input.a, 34210u, 1u, u_input.a))) && true));
    var_0 = Struct_3(!vec2<bool>(true, any(vec3<bool>(true, var_0.b.x, var_0.b.x))), func_2().c);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(756f, -1033f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-641f, -139f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(923f)))) + vec2<f32>(1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(-8759i);
}

