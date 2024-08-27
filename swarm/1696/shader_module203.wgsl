struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-767f, 588f, 1428f), vec3<f32>(-1859f, -1510f, -1632f), vec3<f32>(887f, -1000f, -1004f), vec3<f32>(-2225f, 569f, -1020f), vec3<f32>(-1498f, 925f, -1123f), vec3<f32>(-600f, 639f, -664f), vec3<f32>(1038f, -1242f, 2762f), vec3<f32>(-1290f, 549f, 935f), vec3<f32>(255f, 522f, -277f), vec3<f32>(185f, 2592f, -350f), vec3<f32>(1000f, 186f, -143f), vec3<f32>(257f, 614f, -1102f), vec3<f32>(-380f, 1424f, -645f), vec3<f32>(-742f, -400f, 1331f), vec3<f32>(599f, -158f, 115f), vec3<f32>(1000f, 1314f, -202f), vec3<f32>(-544f, -1000f, 446f), vec3<f32>(-1000f, -227f, -2744f), vec3<f32>(-1207f, 120f, -169f), vec3<f32>(-1095f, 607f, 1454f), vec3<f32>(110f, 1062f, -870f), vec3<f32>(-1211f, -307f, -356f), vec3<f32>(297f, -1874f, 300f), vec3<f32>(-410f, -259f, 1000f), vec3<f32>(180f, 637f, -169f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    global0 = array<vec3<f32>, 25>();
    var var_0 = 1u;
    var var_1 = _wgslsmith_div_vec2_i32(~select(vec2<i32>(-10362i >> (0u % 32u), ~arg_3.x), -_wgslsmith_div_vec2_i32(arg_3, vec2<i32>(arg_1, -85981i)), select(select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), arg_2.b), select(vec2<bool>(true, true), vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, false)), true)), ~(~(~abs(vec2<i32>(arg_1, 6631i)))));
    global0 = array<vec3<f32>, 25>();
    let var_2 = !(!(!(!vec4<bool>(arg_2.b, true, true, arg_2.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1547f))) * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -247f))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(1f, any(vec4<bool>(!any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false)), true, arg_0.b, select(arg_0.b, true, !arg_0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -467f, arg_0.c.x, 177f)), arg_0.c, true)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2222f), 277f, _wgslsmith_f_op_f32(-arg_0.a), -656f))), arg_0.c));
    var var_1 = var_0.c.wz;
    var_0 = Struct_1(-1452f, true, vec4<f32>(622f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2103f * 3202f))), _wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(var_0.c.x, 0i, arg_0, countOneBits(vec2<i32>(32867i, -93492i)))), arg_0.c.x, (u_input.b.x <= u_input.a) & !arg_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -969f), -196f)), _wgslsmith_f_op_f32(-arg_0.a))));
    var var_2 = ~(~(~vec4<u32>(1u, _wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_sub_u32(13145u, 6741u), u_input.a)));
    global0 = array<vec3<f32>, 25>();
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = !vec4<bool>(!(!(!arg_1.b)), false, any(select(vec3<bool>(true, true, arg_1.b), !vec3<bool>(arg_1.b, false, false), false)), arg_1.b);
    var var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.c.x, -1000f)))))), true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)), var_1.c)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.c.x, 595f, var_1.b)), var_1.a) + _wgslsmith_f_op_f32(func_3(751f, _wgslsmith_sub_i32(-2147483647i, -26706i), Struct_1(var_2.c.x, true, vec4<f32>(var_2.a, -1000f, -264f, arg_1.c.x)), select(vec2<i32>(-64148i, 1i), vec2<i32>(-1i, 17683i), false)))) * -219f), true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.c * vec4<f32>(var_2.c.x, var_2.a, var_2.c.x, var_1.a)), vec4<f32>(var_2.c.x, var_1.a, 480f, 165f), !vec4<bool>(true, true, true, arg_1.b)))))));
    let var_4 = abs(~(select(2147483647i, -1i, var_1.b) & max(34499i, 1i))) | _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, ~select(4158i, 39340i, var_1.b)), max(37783i, abs(0i)));
    return any(!(!vec3<bool>(any(vec2<bool>(false, true)), true, all(var_0.zy))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<i32> {
    let var_0 = reverseBits(vec3<i32>(abs(-1i), 1i, 16165i)) | min(vec3<i32>(firstTrailingBit(-26302i), -15456i, 1i), (_wgslsmith_add_vec3_i32(vec3<i32>(-41812i, 6068i, -1i), vec3<i32>(30331i, -2147483647i, -24857i)) << (max(u_input.b, vec3<u32>(u_input.b.x, 2319u, u_input.a)) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 1u), select(u_input.b, vec3<u32>(1u, u_input.b.x, 48306u), arg_2)) % vec3<u32>(32u)));
    var var_1 = vec4<i32>(-_wgslsmith_dot_vec3_i32(-firstLeadingBit(var_0), ~vec3<i32>(16432i, 1i, var_0.x) >> (u_input.b % vec3<u32>(32u))), var_0.x, 2147483647i >> (~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u << (0u % 32u)) % 32u), _wgslsmith_sub_i32(-(i32(-1i) * -18518i), countOneBits(~(~1i))));
    let var_2 = firstTrailingBit(firstLeadingBit(~vec4<i32>(var_0.x, var_0.x, 2147483647i, -15372i)) ^ _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(var_1.x, var_1.x, -2147483647i, -1i)), -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -36802i, var_0.x, var_0.x), vec4<i32>(7915i, var_0.x, var_0.x, var_1.x))));
    let var_3 = -910i;
    let var_4 = arg_1.c.x;
    return vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1810i, -7521i)) & max(vec2<i32>(var_2.x, -3823i), var_2.yz), var_1.xz), -select(var_2.x, var_3, false)), 1i);
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_add_vec2_i32(func_5(vec2<bool>(true, func_4(~u_input.b.zy, func_2(Struct_1(-985f, false, vec4<f32>(521f, 1246f, 1798f, -652f))))), Struct_1(_wgslsmith_f_op_f32(step(1843f, -758f)), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-451f, -1244f, -703f, 568f))))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)), vec2<i32>(-11535i, min(_wgslsmith_add_i32(1i, -1i), 2147483647i)));
    let var_1 = func_2(func_2(Struct_1(375f, true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), -472f, _wgslsmith_f_op_f32(min(788f, 1251f)), _wgslsmith_f_op_f32(select(1601f, 589f, false))))));
    global0 = array<vec3<f32>, 25>();
    global0 = array<vec3<f32>, 25>();
    var var_2 = select(vec2<bool>(false, func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 0u), ~vec2<u32>(31753u, 0u)), var_1)), vec2<bool>(!var_1.b | (all(vec4<bool>(false, var_1.b, true, true)) & true), !var_1.b), vec2<bool>(!any(vec4<bool>(false, var_1.b, false, var_1.b)), var_0.x > select(_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), var_0.x, all(vec3<bool>(var_1.b, var_1.b, var_1.b)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1859f, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(-954f, -1692f, _wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(select(191f, 1499f, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(372f, -1732f, -1006f, 413f), vec4<f32>(1261f, -183f, -170f, 1342f)) - vec4<f32>(-2482f, -1800f, -1000f, -160f)))));
    let var_1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(9241i, -2147483647i, -41852i), vec3<i32>(10846i, 29424i, -32885i)), vec3<i32>(2147483647i, 2147483647i, 25059i)), -104878i), _wgslsmith_add_vec2_i32(min(vec2<i32>(1i, 1i) ^ func_1(), vec2<i32>(min(1i, -35964i), _wgslsmith_dot_vec2_i32(vec2<i32>(-29347i, -1i), vec2<i32>(-24951i, -1i)))), vec2<i32>(abs(_wgslsmith_add_i32(-1i, 70473i)), ~(~(-37618i)))));
    let var_2 = (var_1.x & ~(-_wgslsmith_mod_i32(644i, var_1.x))) << (min(25449u, ~27773u | _wgslsmith_dot_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, 0u))) % 32u);
    var var_3 = firstLeadingBit(select(vec4<i32>(-1i, -44831i, -2147483647i, 0i), vec4<i32>(1i, 14620i, -591i, var_2 ^ var_2), !(!(!vec4<bool>(false, var_0.b, var_0.b, var_0.b)))));
    let var_4 = var_3.zxy;
    let var_5 = select(vec4<bool>(var_0.b, !(var_0.b || var_0.b) && func_4(vec2<u32>(46611u, 1u), var_0), !all(!vec2<bool>(true, var_0.b)), select(!any(vec3<bool>(false, false, var_0.b)), true, true)), vec4<bool>(func_2(func_2(Struct_1(1177f, true, vec4<f32>(226f, var_0.a, var_0.a, var_0.c.x)))).b, true, select(var_0.b, 4294967295u >= abs(u_input.b.x), all(select(vec3<bool>(true, var_0.b, false), vec3<bool>(true, false, var_0.b), var_0.b))), true), vec4<bool>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), _wgslsmith_mod_u32(u_input.a, 0u), u_input.a) > u_input.a, var_0.b, var_0.b || all(!vec4<bool>(false, true, true, var_0.b)), false));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(348f, 381f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -715f)), _wgslsmith_f_op_f32(trunc(var_0.a))), ~_wgslsmith_div_i32(var_1.x, _wgslsmith_mult_i32(abs(var_1.x), var_2)), vec3<f32>(-456f, _wgslsmith_f_op_f32(-var_0.a), -1188f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(270f, var_0.a, 460f, 627f), var_0.c)), var_0.c)) - var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(var_0).a, _wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_div_f32(191f, -1000f), var_0.a) * var_0.c))), var_3.x);
}

