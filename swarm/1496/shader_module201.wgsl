struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(vec3<bool>(select(!all(vec4<bool>(false, false, true, true)), true, all(vec4<bool>(true, true, false, true))), -346f != arg_2, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), 1027f, _wgslsmith_div_f32(467f, _wgslsmith_f_op_f32(ceil(-256f))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2, -465f))))), arg_2, arg_2);
    let var_1 = select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(80812u, 18084u, abs(u_input.b.x), 4294967295u), vec4<u32>(_wgslsmith_sub_u32(86085u, ~arg_3.a), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_3.a, 45500u), ~24918u), arg_1.a, u_input.b.x), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a, arg_3.a), arg_3.a), 33396u, ~(u_input.b.x & arg_0.a), ~u_input.b.x)), ~(vec4<u32>(arg_0.a, min(20290u, 1u), arg_1.a, arg_0.a) & ~vec4<u32>(arg_0.a, 0u, arg_0.a, u_input.b.x)), select(!(!vec4<bool>(var_0.c, var_0.c, true, false)), vec4<bool>(all(select(var_0.a, vec3<bool>(false, true, var_0.a.x), false)), true, all(!vec4<bool>(var_0.a.x, true, true, false)), !(var_0.c && var_0.a.x)), vec4<bool>(var_0.c, false, any(vec3<bool>(var_0.a.x, var_0.c, var_0.c)), false)));
    var_0 = Struct_1(vec3<bool>(_wgslsmith_mod_u32(~5825u, arg_1.a) > ~1u, var_0.a.x, select(!(var_0.c || var_0.a.x), select(true, var_0.c, var_0.a.x), true & var_0.a.x)), -1060f, false, _wgslsmith_div_f32(-1414f, _wgslsmith_f_op_f32(845f - -1425f)), arg_2);
    var_0 = Struct_1(!select(select(var_0.a, vec3<bool>(false, true, true), select(var_0.a, vec3<bool>(false, true, false), false)), !select(vec3<bool>(var_0.c, true, var_0.a.x), vec3<bool>(var_0.c, var_0.a.x, true), vec3<bool>(var_0.a.x, false, false)), !(var_0.a.x != true)), -1814f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-241f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -111f), -335f, var_0.c)), all(var_0.a.zz))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, 1539f)))))), 1990f);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f) - _wgslsmith_f_op_f32(step(var_0.e, -2151f)))))), var_0.c, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2060f - 2162f)), !var_0.a.x)), true)), _wgslsmith_f_op_f32(-var_0.e));
    return arg_3.a;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(~(u_input.b.x | func_3(Struct_2(u_input.b.x), Struct_2(39089u), -1337f, Struct_2(4294967295u))));
    var var_1 = Struct_1(!vec3<bool>(select(false, 38365i > u_input.a, true), true, !any(vec2<bool>(false, false))), -105f, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec4<bool>(false, false, true, false))), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f + _wgslsmith_f_op_f32(step(499f, -1000f)))))), _wgslsmith_f_op_f32(295f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(974f - 183f)) * -483f)));
    var var_2 = max(1i, -min(-1i, u_input.a));
    var var_3 = vec4<bool>(605f == var_1.e, true, any(var_1.a), false);
    let var_4 = Struct_1(select(var_3.wwy, !vec3<bool>(true & var_1.a.x, var_3.x, true), _wgslsmith_f_op_f32(var_1.d + var_1.b) >= _wgslsmith_f_op_f32(sign(-835f))), 901f, var_3.x, var_1.d, var_1.d);
    return Struct_2(var_0.a | u_input.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec4<f32> {
    let var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(751f, -578f, 2076f, -638f) + vec4<f32>(-590f, -183f, -355f, 2183f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -1000f, 1000f, 1361f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, -465f, 896f, -239f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(353f, 662f, -1761f, 340f) - vec4<f32>(-208f, 1480f, -550f, 488f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(291f, 400f, 481f, 1039f), vec4<f32>(-1277f, -414f, -207f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, 1742f, 613f, 1547f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(474f, 191f, _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1259f, 1533f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-730f)), 874f, _wgslsmith_f_op_f32(762f - 781f), 1f), vec4<f32>(_wgslsmith_f_op_f32(150f - 842f), _wgslsmith_f_op_f32(-1804f + -670f), 462f, _wgslsmith_f_op_f32(max(988f, 1000f)))), select(!vec4<bool>(var_0, true, true, var_0), select(!vec4<bool>(var_0, false, false, var_0), select(vec4<bool>(false, true, true, true), vec4<bool>(var_0, false, false, var_0), var_0), var_0), !vec4<bool>(var_0, true, var_0, var_0))))));
    let var_2 = _wgslsmith_f_op_f32(trunc(var_1.x));
    let var_3 = arg_2;
    var var_4 = func_2();
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(144f)), _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-1010f + _wgslsmith_f_op_f32(round(-172f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2, -222f), 1331f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - var_1.x)), vec4<f32>(990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f * _wgslsmith_f_op_f32(var_2 - var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(floor(1139f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-164f)) + _wgslsmith_div_f32(269f, var_2))), var_1.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(), Struct_2(func_3(Struct_2(u_input.b.x), arg_1, _wgslsmith_f_op_f32(min(187f, -1291f)), arg_1)), 1i)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-799f * -1765f), -171f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 1428f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1403f * -1257f), _wgslsmith_f_op_vec4_f32(func_4(arg_1, arg_1, arg_2.x)).x))));
    var var_1 = var_0.xxy;
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1424f - _wgslsmith_f_op_f32(var_0.x * var_1.x))), var_0.x));
    let var_2 = Struct_2(arg_1.a);
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.yyy, var_0.xxx, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))))), _wgslsmith_div_vec3_f32(var_0.xxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1491f, var_1.x), _wgslsmith_f_op_f32(abs(-279f)), -631f))), false));
    return Struct_2(arg_1.a);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    var var_0 = 67842u;
    return vec3<bool>(arg_2, true, select(true, true, arg_2));
}

fn func_6(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = -(~vec3<i32>(firstTrailingBit(1i), -13980i, u_input.a));
    var_0 = vec3<i32>(abs(1i), u_input.a, -_wgslsmith_dot_vec2_i32(var_0.yz, var_0.xz));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_4(func_1(1i, func_2(), ~vec3<i32>(u_input.a, var_0.x, -2147483647i)), func_2(), -(i32(-1i) * -25238i))).x, _wgslsmith_f_op_vec4_f32(func_4(Struct_2(u_input.b.x & 4294967295u), func_2(), countOneBits(-u_input.a))).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-131f, -594f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1646f, 1219f), vec2<f32>(1476f, -598f), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1236f), _wgslsmith_f_op_f32(round(-1000f))), arg_0.x))));
    var var_2 = ~(-_wgslsmith_div_vec2_i32(countOneBits(min(vec2<i32>(u_input.a, -11833i), var_0.xz)), -_wgslsmith_clamp_vec2_i32(var_0.xx, vec2<i32>(u_input.a, var_0.x), vec2<i32>(u_input.a, u_input.a))));
    var_2 = -vec2<i32>(-19774i << (firstTrailingBit(~u_input.b.x) % 32u), ~countOneBits(-1i & var_0.x));
    return vec4<u32>(~(0u >> (u_input.b.x % 32u)), _wgslsmith_mod_u32(u_input.b.x, min(_wgslsmith_sub_u32(4294967295u, max(35629u, u_input.b.x)), _wgslsmith_div_u32(~1u, u_input.b.x))), 4294967295u, ~_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(0u, u_input.b.x) << (27552u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!(~u_input.a == _wgslsmith_mod_i32(76880i, u_input.a)), true, any(vec3<bool>(any(vec2<bool>(false, false)), false, true))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1094f, _wgslsmith_f_op_f32(-746f + -646f)))));
    var var_2 = Struct_2(u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x)), vec3<f32>(1360f, 1444f, -1334f), var_0.x))))));
    var var_4 = func_6(select(func_5(-1i, func_1(-49668i, Struct_2(var_2.a), ~vec3<i32>(u_input.a, u_input.a, 2147483647i)), var_0.x), !(!vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(var_0.x, var_0.x, (var_2.a >> (0u % 32u)) != ~u_input.b.x)));
    var var_5 = var_0.x | var_0.x;
    let var_6 = func_2();
    var var_7 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_i32(u_input.a, -(_wgslsmith_sub_i32(u_input.a, u_input.a) << (_wgslsmith_sub_u32(19572u, var_6.a) % 32u))), vec3<i32>(-1i) * -countOneBits(select(vec3<i32>(u_input.a, u_input.a, 37405i), vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<bool>(true, false, false))));
}

