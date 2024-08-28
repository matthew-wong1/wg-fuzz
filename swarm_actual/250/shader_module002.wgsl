struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<f32>, 6>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = vec4<i32>(-1i, abs(~1i), i32(-1i) * -select(0i, i32(-1i) * -10821i, true), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-10523i, countOneBits(1i), 18695i), reverseBits(_wgslsmith_mod_i32(reverseBits(60025i), 29902i))));
    global0 = select(!arg_0.xx, select(arg_0.zx, vec2<bool>(true, true), arg_0.x), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1018f);
    global0 = vec2<bool>(true, global0.x);
    let var_2 = vec4<bool>(false, -var_0.x != var_0.x, any(!select(vec4<bool>(global0.x, true, global0.x, true), !vec4<bool>(true, arg_0.x, true, global0.x), any(arg_0))), !arg_0.x);
    return vec3<i32>(var_0.x, -1i, 0i >> (_wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 84560u, !arg_0.x), ~u_input.a.x & u_input.a.x) % 32u));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = Struct_4(arg_2);
    let var_1 = Struct_3(global0.x, any(select(!vec2<bool>(false, arg_0.b.x), vec2<bool>(true, !global0.x), true)), Struct_2(select(func_3(arg_0.b.wxw), vec3<i32>(-2147483647i, 2147483647i, 2774i) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), var_0.a > -2147483647i) | (vec3<i32>(-31455i, var_0.a, var_0.a) & vec3<i32>(0i, 1i, var_0.a))), Struct_2(abs(~func_3(arg_0.b.zzw))), Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, -6467i, 1i) | vec3<i32>(var_0.a, arg_2, arg_2), vec3<i32>(arg_2, -2469i, arg_2) ^ vec3<i32>(-71014i, arg_2, -2147483647i), vec3<i32>(1i, 0i, arg_2)), min(abs(vec3<i32>(var_0.a, arg_2, var_0.a)), vec3<i32>(arg_2, 15379i, var_0.a)))));
    global0 = select(select(select(!arg_0.b.xz, select(vec2<bool>(true, false), !vec2<bool>(true, var_1.a), any(arg_0.b)), !arg_0.a.b), !(!select(vec2<bool>(false, arg_0.a.b.x), vec2<bool>(arg_0.a.b.x, arg_0.b.x), vec2<bool>(false, false))), arg_0.b.zw), arg_0.c.b, !select(vec2<bool>(false, false), select(vec2<bool>(var_1.b, false), select(arg_0.c.b, vec2<bool>(var_1.b, global0.x), arg_0.c.b), true), arg_0.a.b));
    global1 = array<vec2<f32>, 6>();
    global1 = array<vec2<f32>, 6>();
    return ~0i < (2147483647i | -_wgslsmith_add_i32(32667i, firstLeadingBit(var_1.c.a.x)));
}

fn func_1() -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) << (vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u) | select(1u, u_input.a.x, true), u_input.a.x) % vec3<u32>(32u)));
    var var_1 = vec2<i32>(-17657i, _wgslsmith_mult_i32(~(i32(-1i) * -8221i) >> ((_wgslsmith_mod_u32(var_0.x, u_input.a.x) << (6893u % 32u)) % 32u), min(-1i, ~(~49349i))));
    global0 = select(vec2<bool>(!(!func_2(Struct_5(Struct_1(108f, vec2<bool>(global0.x, global0.x), vec4<f32>(-226f, 753f, 709f, 1871f), 1041f), vec4<bool>(false, true, true, true), Struct_1(179f, vec2<bool>(global0.x, true), vec4<f32>(-335f, -462f, 725f, -2373f), 668f), vec2<f32>(-996f, 448f)), 1000f, var_1.x)), func_2(Struct_5(Struct_1(-1351f, vec2<bool>(false, true), vec4<f32>(-2583f, -364f, -879f, -1382f), -995f), vec4<bool>(false, false, false, global0.x), Struct_1(-985f, vec2<bool>(global0.x, global0.x), vec4<f32>(-1201f, 204f, 399f, -1114f), 242f), vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(abs(-111f)), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, var_1.x)))), select(select(!vec2<bool>(false, global0.x), !(!vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), true)), select(select(vec2<bool>(true, true), !vec2<bool>(false, global0.x), true), vec2<bool>(var_0.x != 62606u, func_2(Struct_5(Struct_1(-1850f, vec2<bool>(true, true), vec4<f32>(1000f, -1000f, -1970f, 882f), -1000f), vec4<bool>(true, global0.x, global0.x, global0.x), Struct_1(-121f, vec2<bool>(global0.x, false), vec4<f32>(308f, 719f, -227f, -287f), -236f), vec2<f32>(-837f, 1344f)), 851f, var_1.x)), vec2<bool>(global0.x, true)), var_1.x <= -1i), !select(vec2<bool>(true, any(vec2<bool>(true, global0.x))), vec2<bool>(!global0.x, true), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), false), select(vec2<bool>(true, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, true)), true)));
    global1 = array<vec2<f32>, 6>();
    var var_2 = u_input.a;
    return !(!(true || (all(vec2<bool>(true, false)) && true)));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(~arg_2, 6u)], _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, u_input.a.x) & u_input.a, vec3<u32>(0u, arg_0, arg_0)), 6u)])) - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(reverseBits(countOneBits(vec3<u32>(69421u, 4294967295u, arg_2))), firstTrailingBit(u_input.a), false), vec3<u32>(0u, _wgslsmith_mod_u32(arg_2 ^ 89720u, 4294967295u), ~(~0u))), 6u)]);
    let var_1 = any(!select(!vec3<bool>(global0.x, arg_3.a, true), vec3<bool>(true, global0.x, var_0.x != -253f), !select(vec3<bool>(true, global0.x, false), vec3<bool>(false, arg_3.a, true), true)));
    var var_2 = -select(~12531i, -14417i, any(select(select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(false, true, false, var_1), false), !vec4<bool>(false, true, global0.x, arg_3.a), func_2(Struct_5(Struct_1(592f, vec2<bool>(global0.x, arg_3.b), vec4<f32>(1336f, var_0.x, var_0.x, 1436f), 803f), vec4<bool>(true, global0.x, var_1, false), Struct_1(var_0.x, vec2<bool>(true, true), vec4<f32>(608f, 1677f, -758f, -1327f), var_0.x), vec2<f32>(var_0.x, var_0.x)), 1031f, arg_3.e.a.x))));
    return Struct_4(select(firstTrailingBit(-1700i), arg_3.e.a.x, _wgslsmith_clamp_u32(0u << (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_0, u_input.a.x), u_input.a), reverseBits(arg_0)) == _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, 1u), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global1 = array<vec2<f32>, 6>();
    let var_1 = func_4(u_input.a.x, min(~select(vec3<i32>(var_0, 1i, var_0) | vec3<i32>(1i, var_0, var_0), ~vec3<i32>(var_0, -2147483647i, var_0), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, global0.x), true)), vec3<i32>(-1i) * -(~vec3<i32>(-2147483647i, var_0, var_0))), abs(abs(0u)), Struct_3(func_1(), all(vec2<bool>(true, any(vec4<bool>(false, true, false, global0.x)))), Struct_2(-(~vec3<i32>(39220i, 9879i, -84573i))), Struct_2(vec3<i32>(2147483647i, var_0, 41758i) >> (max(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 63981u, u_input.a.x)) % vec3<u32>(32u))), Struct_2(~(-vec3<i32>(var_0, 2147483647i, var_0)))));
    let var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-205f, _wgslsmith_f_op_f32(867f * 823f))), _wgslsmith_f_op_f32(select(1207f, _wgslsmith_f_op_f32(ceil(-136f)), !global0.x)))), vec2<bool>(global0.x, all(!vec2<bool>(true, global0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(244f, 1000f, _wgslsmith_f_op_f32(-468f - -936f), _wgslsmith_f_op_f32(919f + 1457f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2001f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-759f + 943f) * _wgslsmith_div_f32(-533f, -622f)))), vec4<bool>(true, !global0.x, true, !global0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-127f, -272f)) * _wgslsmith_f_op_f32(select(138f, 1002f, true)))), vec2<bool>(!any(vec3<bool>(global0.x, false, true)), true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(456f, 246f, _wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(ceil(743f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1081f, -249f, 933f, -312f), vec4<f32>(-536f, 850f, -1962f, -824f))))))), -589f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), vec2<f32>(953f, -2177f)) * _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 6u)])));
    global0 = select(!vec2<bool>(true, (var_2.d.x <= var_2.c.a) & !var_2.c.b.x), var_2.a.b, !vec2<bool>(!global0.x | true, 52052u >= u_input.a.x));
    var var_3 = vec4<u32>(max(~u_input.a.x, _wgslsmith_add_u32(~(~u_input.a.x), ~firstLeadingBit(0u))), ~13190u, ~(~u_input.a.x), u_input.a.x);
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_i32(abs(vec3<i32>(2147483647i, var_0, var_1.a)) & vec3<i32>(var_1.a, 1i, var_0), vec3<i32>(func_3(var_2.b.xxy).x, -8464i, -var_0)), vec3<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-10719i, 1i, var_0, var_0), vec4<i32>(2147483647i, var_0, var_0, var_1.a)), firstLeadingBit(countOneBits(vec4<i32>(-2147483647i, 0i, var_1.a, var_0)))), var_1.a, var_1.a));
}

