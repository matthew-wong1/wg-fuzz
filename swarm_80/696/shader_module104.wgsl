struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(3166u, 9817u, 4294967295u, 116065u);

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -19531i, 0i), Struct_1(i32(-2147483648), vec2<f32>(1606f, -758f), 423f, vec2<u32>(61975u, 0u), vec3<bool>(false, true, false)), vec2<f32>(-1652f, -1780f)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(-18839i, -10006i, -23723i), Struct_1(2147483647i, vec2<f32>(1355f, 588f), -1000f, vec2<u32>(0u, 25287u), vec3<bool>(false, true, false)), vec2<f32>(1221f, 1330f)), Struct_3(vec3<bool>(false, true, true), vec3<i32>(1i, i32(-2147483648), -74062i), Struct_1(1i, vec2<f32>(-1327f, 542f), -276f, vec2<u32>(0u, 29249u), vec3<bool>(false, false, true)), vec2<f32>(1183f, -655f)), Struct_3(vec3<bool>(false, false, false), vec3<i32>(0i, -161i, -1i), Struct_1(22459i, vec2<f32>(-358f, 1865f), 1541f, vec2<u32>(16144u, 4294967295u), vec3<bool>(true, true, false)), vec2<f32>(-1268f, -462f)), Struct_3(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), -16038i, -11019i), Struct_1(110552i, vec2<f32>(223f, 506f), -1000f, vec2<u32>(4294967295u, 72656u), vec3<bool>(false, false, false)), vec2<f32>(441f, 1288f)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(17061i, 24037i, -1i), Struct_1(1i, vec2<f32>(303f, -713f), -1000f, vec2<u32>(40744u, 45629u), vec3<bool>(false, true, false)), vec2<f32>(-1176f, 1356f)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(1i, -63116i, -43699i), Struct_1(i32(-2147483648), vec2<f32>(1144f, -830f), -425f, vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, true)), vec2<f32>(1810f, -880f)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(1i, -20539i, -1032i), Struct_1(0i, vec2<f32>(-719f, -142f), -523f, vec2<u32>(1u, 4294967295u), vec3<bool>(false, false, false)), vec2<f32>(441f, -1393f)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(2147483647i, 2147483647i, 5462i), Struct_1(2147483647i, vec2<f32>(-1104f, 489f), -796f, vec2<u32>(0u, 4294967295u), vec3<bool>(true, true, false)), vec2<f32>(1469f, 310f)), Struct_3(vec3<bool>(false, true, true), vec3<i32>(2147483647i, -12118i, 1i), Struct_1(-20834i, vec2<f32>(1072f, -1000f), -100f, vec2<u32>(1u, 99537u), vec3<bool>(false, false, true)), vec2<f32>(-1245f, 451f)), Struct_3(vec3<bool>(true, false, true), vec3<i32>(1i, 16906i, i32(-2147483648)), Struct_1(-1i, vec2<f32>(512f, 378f), 1922f, vec2<u32>(8424u, 49999u), vec3<bool>(true, false, false)), vec2<f32>(1000f, -332f)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(0i, i32(-2147483648), -7795i), Struct_1(2147483647i, vec2<f32>(473f, 1316f), 1916f, vec2<u32>(4294967295u, 0u), vec3<bool>(false, true, false)), vec2<f32>(1999f, 1071f)), Struct_3(vec3<bool>(true, false, false), vec3<i32>(-1i, 2147483647i, 22892i), Struct_1(i32(-2147483648), vec2<f32>(1437f, 1000f), -1750f, vec2<u32>(52549u, 0u), vec3<bool>(false, true, false)), vec2<f32>(2478f, 580f)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(2147483647i, -1i, 1i), Struct_1(-19522i, vec2<f32>(704f, -667f), 1749f, vec2<u32>(4294967295u, 1u), vec3<bool>(true, true, false)), vec2<f32>(736f, 1000f)), Struct_3(vec3<bool>(false, false, false), vec3<i32>(-52783i, 98494i, 2147483647i), Struct_1(1i, vec2<f32>(1645f, 1083f), -433f, vec2<u32>(1u, 0u), vec3<bool>(false, true, false)), vec2<f32>(-531f, 709f)), Struct_3(vec3<bool>(false, true, false), vec3<i32>(-57501i, 2147483647i, 0i), Struct_1(-20075i, vec2<f32>(885f, -214f), 287f, vec2<u32>(29159u, 0u), vec3<bool>(true, true, true)), vec2<f32>(1049f, 933f)), Struct_3(vec3<bool>(true, false, false), vec3<i32>(-6660i, -32542i, -14179i), Struct_1(-29410i, vec2<f32>(1211f, 575f), 703f, vec2<u32>(1u, 0u), vec3<bool>(false, false, false)), vec2<f32>(528f, -238f)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(2147483647i, 0i, 1i), Struct_1(10540i, vec2<f32>(1385f, -1804f), -1000f, vec2<u32>(12410u, 4294967295u), vec3<bool>(true, false, false)), vec2<f32>(994f, 2068f)), Struct_3(vec3<bool>(true, false, false), vec3<i32>(-1381i, 1i, i32(-2147483648)), Struct_1(-36392i, vec2<f32>(-635f, -424f), 237f, vec2<u32>(17060u, 0u), vec3<bool>(true, false, false)), vec2<f32>(-1432f, 475f)), Struct_3(vec3<bool>(true, true, false), vec3<i32>(0i, 0i, -32191i), Struct_1(29876i, vec2<f32>(-619f, 636f), -522f, vec2<u32>(19767u, 2001u), vec3<bool>(false, false, false)), vec2<f32>(-755f, -1228f)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(17103u, 20u)];
    global1 = array<Struct_3, 20>();
    global0 = array<u32, 4>();
    var_0 = global1[_wgslsmith_index_u32(0u, 20u)];
    let var_1 = _wgslsmith_f_op_f32(var_0.c.b.x * 276f);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 4294967295u, 88926u, u_input.b.x)), vec4<u32>(firstTrailingBit(47959u), 0u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)], abs(67836u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_0.c.d.x, 1u, global0[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(0u, var_0.c.d.x, 0u, 5236u)), max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 39741u, 61971u, 62388u), vec4<u32>(u_input.b.x, 25729u, 46002u, 25544u)), ~vec4<u32>(43609u, var_0.c.d.x, 9298u, 10820u)) & ~(~vec4<u32>(global0[_wgslsmith_index_u32(var_0.c.d.x, 4u)], var_0.c.d.x, var_0.c.d.x, var_0.c.d.x))), countOneBits(vec4<u32>(~_wgslsmith_mod_u32(17915u, global0[_wgslsmith_index_u32(11840u, 4u)]), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(3865u, 4u)], global0[_wgslsmith_index_u32(var_0.c.d.x, 4u)]) ^ 28416u, 0u, ~(~u_input.b.x)))), 4u)];
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~(~u_input.b.x), 4u)];
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f * -157f) * _wgslsmith_f_op_f32(min(454f, -1000f)))) - 580f)));
    let var_2 = ~(~u_input.b.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), -1102f);
    var var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(abs(4294967295u)), u_input.b.x, func_3(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 4u)] & 0u, 4u)] << (global0[_wgslsmith_index_u32(~25050u, 4u)] % 32u)), vec4<u32>(abs(var_2), ~16488u, 5115u, func_3(vec3<bool>(true, false, true))), firstLeadingBit(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 4294967295u, var_2, global0[_wgslsmith_index_u32(4294967295u, 4u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52561u, 4u)], 4u)], global0[_wgslsmith_index_u32(var_2, 4u)], 51180u, 37665u)))) | abs(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)) >> (~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(var_2, 4u)], 5017u, var_2) % vec4<u32>(32u)), select(vec4<u32>(var_2, u_input.b.x, 1u, u_input.b.x) ^ vec4<u32>(u_input.b.x, 41604u, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 95307u), ~vec4<u32>(4294967295u, 4294967295u, 0u, global0[_wgslsmith_index_u32(var_2, 4u)]), true)));
    return Struct_1(~(i32(-1i) * -29863i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-365f, 425f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 2030f))))))), 569f, u_input.b, select(select(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), false, func_3(vec3<bool>(false, false, true)) > global0[_wgslsmith_index_u32(u_input.b.x, 4u)])));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2(~vec4<i32>(countOneBits(1i), -2147483647i, -1i, u_input.d.x), ~(~max(vec3<i32>(u_input.a.x, u_input.c.x, -20190i), vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x))) ^ select(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 1i, 2147483647i), u_input.c.yzw)), abs(vec3<i32>(u_input.c.x, u_input.d.x, u_input.a.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, 21506u) % vec3<u32>(32u))), all(vec3<bool>(true, true, false)) | select(false, true, false)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f + -1000f) - var_0.c))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -1093f, var_0.c, -975f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 407f, var_1, var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec2<bool>(true, any(vec2<bool>(true, true))));
    var_0 = !((any(vec4<bool>(true, true, true, true)) | true) != false);
    let var_1 = vec2<f32>(-780f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 582f));
    global0 = array<u32, 4>();
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_3 = select(abs(~min(max(u_input.c.zyy, vec3<i32>(u_input.d.x, -2147483647i, u_input.c.x)), vec3<i32>(32757i, u_input.c.x, 1i))), vec3<i32>(u_input.a.x, countOneBits(u_input.a.x), ~abs(select(u_input.c.x, u_input.d.x, true))), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), all(vec4<bool>(all(vec2<bool>(false, false)), true, false, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(~(1u << (~(~global0[_wgslsmith_index_u32(u_input.b.x, 4u)]) % 32u)), vec2<u32>(~19855u, 70u), abs(max(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.yy, var_3.zz), vec2<i32>(2560i, u_input.c.x)), var_3.yy)));
}

