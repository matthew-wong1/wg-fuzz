struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> i32 {
    return 1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(round(-141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1075f * -1455f), 912f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(141f, 368f, 118f) - vec3<f32>(631f, 444f, -2014f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1020f, -1290f, 708f), vec3<f32>(-729f, -1000f, 1344f)))))), arg_0.x & all(!vec4<bool>(true, true, arg_0.x, true))));
    return Struct_1(u_input.d, arg_0.x, vec2<u32>(u_input.a >> (44053u % 32u), 1u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32) -> vec2<u32> {
    let var_0 = vec3<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), all(select(vec3<bool>(all(vec2<bool>(true, true)), false, all(vec4<bool>(true, false, false, false))), vec3<bool>(false, true, true), false)), true);
    let var_1 = arg_1;
    var var_2 = Struct_2(Struct_1(vec4<i32>(arg_0.x, firstLeadingBit(_wgslsmith_add_i32(24389i, u_input.b.x)), 22080i, _wgslsmith_div_i32(-1i, min(arg_0.x, arg_0.x))), arg_2 > arg_2, vec2<u32>(54343u, ~(~arg_1.x))), abs(firstLeadingBit(vec4<i32>(u_input.d.x, -1i, u_input.b.x, u_input.d.x))) | select(max(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.d.x) | u_input.d, u_input.d), vec4<i32>(-arg_0.x, 0i, _wgslsmith_mod_i32(-2147483647i, -2147483647i), -u_input.b.x), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_0.x, var_0.x, true), var_0.x), !vec4<bool>(false, true, var_0.x, false))), Struct_1(min(~vec4<i32>(-1i, -2147483647i, u_input.b.x, arg_0.x), -min(u_input.d, u_input.d)), false, var_1));
    var_2 = Struct_2(func_2(var_0, Struct_2(func_2(!var_0, Struct_2(Struct_1(vec4<i32>(1i, 57316i, u_input.b.x, arg_0.x), false, arg_1), vec4<i32>(44694i, -14008i, var_2.c.a.x, u_input.d.x), Struct_1(vec4<i32>(var_2.c.a.x, u_input.b.x, var_2.a.a.x, -1i), false, var_1))), vec4<i32>(arg_0.x | 35722i, arg_0.x, firstTrailingBit(arg_0.x), arg_0.x), func_2(vec3<bool>(var_0.x, true, var_0.x), Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.d.x, 2147483647i, u_input.b.x), var_0.x, vec2<u32>(var_2.a.c.x, u_input.a)), vec4<i32>(2147483647i, u_input.d.x, -24176i, -23915i), Struct_1(var_2.c.a, false, arg_1))))), ~(-(-vec4<i32>(42834i, u_input.d.x, 1i, -2147483647i) << (vec4<u32>(8186u, u_input.a, 1u, var_1.x) % vec4<u32>(32u)))), var_2.a);
    var var_3 = abs(_wgslsmith_add_i32(abs(arg_0.x), u_input.b.x) << (0u % 32u)) << (var_2.a.c.x % 32u);
    return abs(~vec2<u32>(~(0u ^ var_2.c.c.x), var_2.a.c.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = !all(!select(select(arg_1, vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), arg_1), vec4<bool>(true, false, true, arg_1.x), !arg_1));
    var_0 = true;
    var_0 = arg_2.c.b;
    let var_1 = 0u;
    var_0 = true;
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-684f, -896f, -222f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-239f, 210f, 273f) - vec3<f32>(-1181f, 1000f, -790f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-727f, 1260f)), _wgslsmith_f_op_f32(f32(-1f) * -2095f), _wgslsmith_f_op_f32(-399f - 1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(449f, -1614f, 115f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1879f, -1014f, -572f)))), select(!vec3<bool>(false, arg_1.c.b, arg_1.a.b), select(vec3<bool>(arg_1.a.b, arg_2.a.b, arg_2.c.b), vec3<bool>(arg_2.c.b, false, arg_1.c.b), false), true)))));
    var var_1 = -_wgslsmith_dot_vec2_i32(-arg_1.c.a.wz, arg_1.c.a.zz);
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f), -927f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * -335f))), var_0.x)), vec3<f32>(-1507f, 1000f, var_0.x)));
    var_1 = ~_wgslsmith_dot_vec3_i32(~reverseBits(u_input.d.yxz) ^ ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, -16826i), arg_1.a.a.zyz), select(-min(u_input.b, arg_2.b.ywx), vec3<i32>(_wgslsmith_sub_i32(arg_1.b.x, arg_1.b.x), u_input.d.x, -2147483647i), select(vec3<bool>(arg_2.c.b, true, arg_2.c.b), select(vec3<bool>(false, arg_2.a.b, true), vec3<bool>(arg_1.c.b, arg_2.c.b, arg_2.c.b), vec3<bool>(false, arg_1.a.b, true)), select(vec3<bool>(true, arg_1.a.b, arg_2.c.b), vec3<bool>(false, arg_1.a.b, true), true))));
    var_1 = 1i;
    return Struct_2(arg_1.a, arg_2.a.a, func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1361f) + vec3<f32>(var_0.x, 1323f, 748f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -1663f)))))), select(!(!vec4<bool>(true, true, true, arg_1.c.b)), !vec4<bool>(false, false, arg_1.a.b, arg_2.c.b), any(vec3<bool>(false, arg_1.a.b, false)) || true), Struct_2(func_2(select(vec3<bool>(false, false, arg_1.a.b), vec3<bool>(arg_1.a.b, arg_2.a.b, arg_1.c.b), vec3<bool>(false, false, true)), Struct_2(arg_2.c, vec4<i32>(arg_0, arg_1.a.a.x, arg_0, 2147483647i), Struct_1(vec4<i32>(-10176i, arg_2.a.a.x, -21426i, arg_0), arg_1.c.b, vec2<u32>(32578u, 0u)))), vec4<i32>(-1i, 20164i, u_input.b.x, 0i) >> (countOneBits(vec4<u32>(arg_1.c.c.x, 535u, 4294967295u, arg_2.c.c.x)) % vec4<u32>(32u)), Struct_1(vec4<i32>(arg_2.c.a.x, arg_0, 1i, 2147483647i), false, _wgslsmith_div_vec2_u32(arg_2.a.c, arg_1.c.c)))).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x << (~(~u_input.a) % 32u);
    let var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), countOneBits(min(func_1(true, _wgslsmith_f_op_f32(-768f * -1243f), vec4<u32>(u_input.c.x, 0u, 69007u, 27077u) >> (vec4<u32>(u_input.c.x, u_input.a, u_input.a, 0u) % vec4<u32>(32u))), -196i)));
    var var_2 = func_5(u_input.d.x, func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1066f)) - -2059f), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(731f, -330f))))), !vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), Struct_2(func_2(vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<i32>(u_input.d.x, 2147483647i, -55785i, var_1), false, u_input.c.yx), u_input.d, Struct_1(u_input.d, false, u_input.c.zy))), vec4<i32>(-u_input.d.x, select(-41954i, -9963i, true), var_1, u_input.b.x >> (53230u % 32u)), Struct_1(-u_input.d, false, func_3(vec3<i32>(u_input.b.x, var_1, u_input.b.x), u_input.c.yx, -1384f)))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1166f, 1378f, 1000f), vec3<f32>(-2065f, 1534f, 430f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(584f, 234f, -2363f)))), vec4<bool>(true, true, true, true), Struct_2(func_2(vec3<bool>(true, true, true), Struct_2(Struct_1(u_input.d, false, u_input.c.zx), u_input.d, Struct_1(u_input.d, true, u_input.c.yz))), min(select(u_input.d, u_input.d, true), vec4<i32>(u_input.d.x, var_1, -15955i, var_1)), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, -2147483647i, u_input.d.x), vec4<i32>(var_1, u_input.d.x, -44560i, -1i)), true, vec2<u32>(0u, u_input.a)))));
    var_2 = func_5(55118i, func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -997f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(471f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-803f, -840f)), var_2.c.b))), vec4<bool>(any(!vec2<bool>(var_2.a.b, var_2.a.b)), var_2.a.b, any(vec3<bool>(false, false, false)), select(false, !var_2.c.b, var_2.c.b | true)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1442f, 909f, 1039f), vec3<f32>(-107f, -665f, -1441f))), vec4<bool>(true, any(vec4<bool>(true, false, false, var_2.a.b)), any(vec4<bool>(var_2.a.b, true, false, true)), false), Struct_2(Struct_1(var_2.c.a, var_2.c.b, u_input.c.yx), func_4(vec3<f32>(2080f, -1027f, -1000f), vec4<bool>(var_2.a.b, true, var_2.c.b, var_2.a.b), Struct_2(var_2.c, var_2.a.a, Struct_1(vec4<i32>(82769i, 7208i, u_input.d.x, -1i), false, vec2<u32>(u_input.c.x, 4294967295u)))).c.a, func_2(vec3<bool>(var_2.c.b, var_2.a.b, var_2.a.b), Struct_2(var_2.a, u_input.d, Struct_1(vec4<i32>(21657i, -40152i, u_input.b.x, 1i), true, var_2.a.c)))))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(382f, 2476f, -985f), vec3<f32>(-456f, 665f, -1190f), var_2.a.b)))) - vec3<f32>(-1255f, 1f, -1293f)), select(!select(vec4<bool>(false, var_2.c.b, var_2.a.b, var_2.a.b), vec4<bool>(var_2.c.b, var_2.c.b, true, false), vec4<bool>(var_2.a.b, true, var_2.c.b, false)), !select(vec4<bool>(var_2.c.b, var_2.c.b, var_2.c.b, var_2.c.b), vec4<bool>(true, var_2.c.b, var_2.a.b, var_2.a.b), vec4<bool>(false, true, true, var_2.c.b)), false), Struct_2(func_2(vec3<bool>(var_2.c.b, false, false), func_5(56855i, Struct_2(Struct_1(u_input.d, true, var_2.a.c), vec4<i32>(-42875i, -63766i, 0i, var_2.a.a.x), Struct_1(vec4<i32>(var_2.c.a.x, -1i, 67770i, -2147483647i), true, vec2<u32>(var_2.a.c.x, 74488u))), Struct_2(Struct_1(vec4<i32>(var_1, 49516i, var_2.a.a.x, var_1), var_2.c.b, var_2.a.c), u_input.d, Struct_1(u_input.d, var_2.c.b, vec2<u32>(27784u, 0u))))), -(~u_input.d), Struct_1(vec4<i32>(0i, -10659i, var_1, var_1), var_2.c.b, var_2.c.c >> (var_2.a.c % vec2<u32>(32u))))));
    var_2 = Struct_2(func_5(-1i, Struct_2(func_5(_wgslsmith_clamp_i32(var_2.a.a.x, -15224i, u_input.b.x), func_5(var_2.a.a.x, Struct_2(Struct_1(vec4<i32>(-22452i, -1i, 2147483647i, var_1), false, var_2.c.c), vec4<i32>(-2147483647i, 1i, var_2.c.a.x, -3430i), var_2.a), Struct_2(Struct_1(vec4<i32>(-63804i, 38422i, var_2.a.a.x, var_2.c.a.x), var_2.a.b, vec2<u32>(u_input.a, var_2.a.c.x)), var_2.a.a, Struct_1(u_input.d, false, var_2.c.c))), func_4(vec3<f32>(-129f, 1389f, -1287f), vec4<bool>(false, var_2.c.b, true, var_2.a.b), Struct_2(var_2.c, var_2.b, Struct_1(var_2.b, var_2.a.b, vec2<u32>(var_2.c.c.x, 134839u))))).a, ~(vec4<i32>(1i, -3253i, var_1, 6190i) ^ vec4<i32>(4706i, u_input.d.x, var_1, u_input.b.x)), Struct_1(reverseBits(vec4<i32>(8727i, u_input.b.x, var_1, -2147483647i)), true, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), var_2.a.c))), Struct_2(var_2.a, vec4<i32>(var_1 << (1u % 32u), -41291i << (var_2.c.c.x % 32u), abs(u_input.b.x), _wgslsmith_add_i32(13381i, var_2.c.a.x)), var_2.c)).a, vec4<i32>(~_wgslsmith_mod_i32(var_2.a.a.x, var_1) ^ 2147483647i, u_input.d.x, u_input.d.x, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1207f, -621f, -423f))), vec4<bool>(all(vec4<bool>(true, var_2.c.b, false, var_2.c.b)), all(vec4<bool>(false, false, true, var_2.a.b)), var_2.a.b, false), func_4(vec3<f32>(-227f, -425f, 1256f), select(vec4<bool>(true, false, var_2.c.b, var_2.c.b), vec4<bool>(false, true, var_2.a.b, var_2.c.b), var_2.c.b), func_5(var_1, Struct_2(var_2.a, u_input.d, Struct_1(vec4<i32>(u_input.d.x, -1i, 1i, -28914i), var_2.c.b, vec2<u32>(65993u, 19650u))), Struct_2(var_2.a, u_input.d, var_2.c)))).c.a.x), Struct_1(vec4<i32>(_wgslsmith_mod_i32(var_2.a.a.x, _wgslsmith_div_i32(2147483647i, var_2.b.x)), 22520i, 1i, _wgslsmith_add_i32(-2147483647i, 9064i)), func_2(vec3<bool>(true, true, all(vec3<bool>(var_2.a.b, var_2.c.b, var_2.c.b))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(145f, -815f, -343f) + vec3<f32>(-1934f, 1000f, -629f)), vec4<bool>(var_2.c.b, false, var_2.a.b, var_2.c.b), Struct_2(var_2.a, vec4<i32>(var_1, u_input.b.x, -46870i, -30365i), var_2.a))).b, vec2<u32>(u_input.c.x, u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-670f, -1685f) - _wgslsmith_f_op_f32(step(-267f, -1000f)))), -419f), _wgslsmith_div_vec2_i32(abs(u_input.b.zy), vec2<i32>(var_1, -1i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1124f) - _wgslsmith_div_f32(427f, 1399f))), 940f));
}

