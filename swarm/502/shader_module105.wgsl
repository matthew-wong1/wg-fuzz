struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: u32 = 0u;

var<private> global2: vec2<u32>;

var<private> global3: array<u32, 9> = array<u32, 9>(12245u, 0u, 17376u, 47213u, 106601u, 11858u, 51509u, 81927u, 13670u);

var<private> global4: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(362f, 415f, 2415f, 1217f), vec4<f32>(741f, 1307f, -128f, 235f), vec4<f32>(-917f, 743f, 298f, 1000f), vec4<f32>(-2095f, -621f, 1391f, -1141f), vec4<f32>(957f, 149f, 488f, 1501f), vec4<f32>(372f, 234f, -1371f, -2479f), vec4<f32>(160f, 335f, -1710f, -1000f), vec4<f32>(1144f, 550f, -164f, -421f), vec4<f32>(-355f, -758f, 579f, 1669f), vec4<f32>(758f, 1306f, -198f, -2471f), vec4<f32>(363f, 470f, -705f, 1495f), vec4<f32>(-514f, 993f, 102f, 1000f), vec4<f32>(-1071f, 1573f, -962f, 892f), vec4<f32>(-913f, -312f, -1983f, 635f), vec4<f32>(-1000f, 963f, 284f, 545f), vec4<f32>(1818f, -351f, -566f, -281f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    global0 = array<i32, 11>();
    var var_0 = vec3<u32>(~(~min(u_input.b, global3[_wgslsmith_index_u32(0u, 9u)]) | u_input.a.x), ~_wgslsmith_mult_u32(1u, min(~u_input.b, ~global3[_wgslsmith_index_u32(95300u, 9u)])), _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(min(10412u, global3[_wgslsmith_index_u32(0u, 9u)]), 9u)], 0u));
    let var_1 = !arg_2.a.zz;
    global3 = array<u32, 9>();
    let var_2 = arg_1.b;
    return global2.x;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(min(func_3(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 11u)], Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(global2.x, 11u)], global0[_wgslsmith_index_u32(43253u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<f32>(-2443f, 873f, -446f), vec4<f32>(-1461f, -1128f, -119f, -1564f)), Struct_2(vec3<bool>(false, false, false), vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 11u)], global0[_wgslsmith_index_u32(17791u, 11u)], global0[_wgslsmith_index_u32(global2.x, 11u)])), vec2<i32>(global0[_wgslsmith_index_u32(global2.x, 11u)], -53900i)), 1u << (u_input.b % 32u)), global2.x | func_3(-1i, Struct_1(vec4<i32>(0i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 9u)], 11u)], -2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 9u)], 11u)]), vec3<f32>(854f, 253f, -1000f), vec4<f32>(-456f, -279f, 1000f, 431f)), Struct_2(vec3<bool>(false, false, false), vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33591u, 9u)], 11u)])), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 9u)], 11u)]))) << (4294967295u % 32u), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, global2.x)), vec2<u32>(41986u, global2.x))), 9u)], 4294967295u);
    var var_1 = false;
    return Struct_2(vec3<bool>(true, !(!(4294967295u == u_input.a.x)), true), ~_wgslsmith_sub_vec3_i32((vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(global2.x, 11u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 9u)], 11u)]) << (u_input.a % vec3<u32>(32u))) << (~u_input.a % vec3<u32>(32u)), -firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], 1i, -2147483647i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec3_u32(~reverseBits(u_input.a | vec3<u32>(global2.x, u_input.b, 33501u)), u_input.a);
    var var_1 = arg_0.b.zx;
    let var_2 = Struct_2(arg_1.a, ~arg_1.b);
    let var_3 = 4294967295u;
    let var_4 = arg_1;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    global0 = array<i32, 11>();
    let var_0 = arg_0.c.x;
    let var_1 = arg_1;
    let var_2 = Struct_1(-vec4<i32>(-abs(-34806i), arg_0.a.x, global0[_wgslsmith_index_u32(45508u, 11u)], -_wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 11u)], arg_3.x)), vec3<f32>(578f, arg_1.b.x, _wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1269f), _wgslsmith_f_op_f32(min(var_0, -176f)), 707f, _wgslsmith_f_op_f32(-arg_1.c.x)))) - vec4<f32>(_wgslsmith_f_op_f32(func_4(var_1, Struct_2(vec3<bool>(false, false, false), var_1.a.wzz), false).c.x - -527f), arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) * _wgslsmith_f_op_f32(847f + var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c.x, 410f))))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> vec3<bool> {
    var var_0 = arg_0;
    global0 = array<i32, 11>();
    global3 = array<u32, 9>();
    let var_1 = !(!func_5(func_4(arg_0, func_2(), !arg_1.x), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], var_0.a.x, -2965i, -5082i) << (vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.x, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -562f, 1108f), vec3<f32>(1000f, -931f, 1228f)), vec4<f32>(-1000f, arg_0.c.x, -913f, arg_3)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_0.a.x, -1476i, arg_0.a.x), vec4<i32>(2147483647i, 42592i, var_0.a.x, arg_2), vec4<i32>(-1i, 13999i, 0i, arg_2))), vec2<i32>(arg_0.a.x, 10500i)));
    var var_2 = _wgslsmith_sub_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, 4294967295u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)]), ~firstTrailingBit(u_input.a)) & ~(u_input.a & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, global2.x, 0u), vec3<u32>(4294967295u, 36640u, 4294967295u))));
    return vec3<bool>(_wgslsmith_div_u32(u_input.b, ~global3[_wgslsmith_index_u32(var_2.x, 9u)] & ~global3[_wgslsmith_index_u32(u_input.a.x, 9u)]) != (abs(global2.x << (28533u % 32u)) & 44090u), (4294967295u & _wgslsmith_dot_vec4_u32(~vec4<u32>(49573u, 1u, global3[_wgslsmith_index_u32(u_input.b, 9u)], global3[_wgslsmith_index_u32(global2.x, 9u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.x, 0u, u_input.b), vec4<u32>(global3[_wgslsmith_index_u32(global2.x, 9u)], global2.x, 4294967295u, var_2.x)))) < select(0u, 1u, true), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(70718i, arg_0.a.x, 0i, arg_2)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_0.a.x, global0[_wgslsmith_index_u32(44451u, 11u)], 1i, arg_2)), abs(vec4<i32>(0i, arg_2, 0i, arg_2)))) == (((arg_0.a.x >> (1u % 32u)) ^ func_2().b.x) >> (_wgslsmith_mod_u32(0u, ~global3[_wgslsmith_index_u32(u_input.b, 9u)]) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!func_1(Struct_1(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 9u)], 11u)], 6623i, -29540i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1391f, -1000f, 210f)), global4[_wgslsmith_index_u32(~4294967295u, 16u)]), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), 2147483647i, 1018f), vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 11u)], global0[_wgslsmith_index_u32(19545u, 11u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global2.x, 9u)], 11u)]));
    global0 = array<i32, 11>();
    var var_1 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58886u, 9u)], 11u)];
    let var_2 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -8798i, var_0.b.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 11u)])), ~vec4<i32>(0i, var_0.b.x, -2147483647i, 488i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-150f, _wgslsmith_div_f32(-822f, 1127f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(294f, 984f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(482f)) + 1f))), vec4<f32>(-688f, 671f, _wgslsmith_div_f32(1164f, 732f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1122f, -602f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -448f))))));
    var_1 = _wgslsmith_clamp_i32(-20827i, select(i32(-1i) * -global0[_wgslsmith_index_u32(~53919u, 11u)], firstLeadingBit(0i << (global3[_wgslsmith_index_u32(89287u, 9u)] % 32u)), func_5(var_2, Struct_1(~var_2.a, _wgslsmith_div_vec3_f32(vec3<f32>(1961f, var_2.b.x, -692f), var_2.c.xzx), vec4<f32>(-590f, var_2.b.x, -138f, -279f)), vec4<i32>(-1i) * -vec4<i32>(var_2.a.x, 1i, var_0.b.x, 29006i), vec2<i32>(-27125i, -var_0.b.x))), -12471i);
    let var_3 = min(var_0.b, vec3<i32>(countOneBits(24219i), -(-28686i >> ((global2.x << (134552u % 32u)) % 32u)), _wgslsmith_add_i32(abs(countOneBits(global0[_wgslsmith_index_u32(10466u, 11u)])), ~(i32(-1i) * -2147483647i))));
    global4 = array<vec4<f32>, 16>();
    let var_4 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.a.yz, var_0.b.zz), select(-24039i, 67292i, true) ^ ~(42281i >> (u_input.b % 32u)), var_3.x, var_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.zwz) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-333f, -1170f, var_2.c.x)))))), _wgslsmith_f_op_vec4_f32(exp2(var_2.c)));
    let var_5 = select(_wgslsmith_dot_vec3_u32(u_input.a << (min(u_input.a, ~vec3<u32>(global2.x, u_input.a.x, global3[_wgslsmith_index_u32(56299u, 9u)])) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(~25272u, _wgslsmith_clamp_u32(global2.x, 1u, global3[_wgslsmith_index_u32(global2.x, 9u)])), 49947u, 6558u)), u_input.b & _wgslsmith_sub_u32(select(32671u, global2.x, var_0.a.x), 8092u), !(var_0.a.x || func_1(var_4, func_1(Struct_1(var_4.a, vec3<f32>(var_2.c.x, -639f, var_4.c.x), var_4.c), var_0.a.zy, var_3.x, var_4.c.x).xx, func_4(var_2, Struct_2(var_0.a, var_0.b), false).a.x, _wgslsmith_f_op_f32(var_4.b.x + var_4.c.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(-12186i, var_0.b.x)), 18426u, abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.b.x, -18302i << (global2.x % 32u)), _wgslsmith_mod_i32(3852i, global0[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global2.x, 9u)]), 11u)]))), 4294967295u);
}

