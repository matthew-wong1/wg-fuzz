struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1u, vec4<i32>(0i, 46955i, -11627i, 2147483647i), vec2<f32>(1393f, -1478f), -7355i), Struct_1(0u, vec4<i32>(5755i, 3769i, -67784i, -10195i), vec2<f32>(-1803f, 522f), 34200i), Struct_1(17928u, vec4<i32>(0i, 14403i, 0i, 2147483647i), vec2<f32>(1286f, -521f), 49396i), Struct_1(9516u, vec4<i32>(2147483647i, i32(-2147483648), -1i, 2012i), vec2<f32>(280f, 2032f), 19817i), Struct_1(0u, vec4<i32>(-37105i, 0i, i32(-2147483648), 33991i), vec2<f32>(-1106f, 308f), -5577i), Struct_1(1u, vec4<i32>(0i, 4908i, 46613i, i32(-2147483648)), vec2<f32>(111f, -1336f), 19263i), Struct_1(51891u, vec4<i32>(-30873i, -785i, 1i, 2147483647i), vec2<f32>(1000f, -744f), 4679i), Struct_1(5911u, vec4<i32>(-7841i, -6052i, 702i, -9302i), vec2<f32>(-1000f, 530f), -42005i), Struct_1(4294967295u, vec4<i32>(-1i, -58829i, 2147483647i, -10129i), vec2<f32>(-1825f, 1825f), 0i), Struct_1(61010u, vec4<i32>(16493i, 2147483647i, 19546i, 2147483647i), vec2<f32>(-994f, 1017f), 55756i), Struct_1(4294967295u, vec4<i32>(1i, 0i, 2147483647i, 2147483647i), vec2<f32>(2358f, -839f), -1i), Struct_1(4294967295u, vec4<i32>(0i, -53757i, -1455i, -34190i), vec2<f32>(-351f, 2169f), 3831i), Struct_1(20949u, vec4<i32>(0i, 2147483647i, 2147483647i, 8314i), vec2<f32>(-1362f, 1000f), 21766i), Struct_1(4294967295u, vec4<i32>(5304i, 21840i, 0i, 0i), vec2<f32>(-1059f, 1000f), 7168i), Struct_1(26345u, vec4<i32>(i32(-2147483648), 2147483647i, 14888i, 12969i), vec2<f32>(-1582f, 181f), i32(-2147483648)), Struct_1(0u, vec4<i32>(44726i, 2147483647i, -5762i, 23505i), vec2<f32>(815f, 1287f), 2147483647i));

var<private> global1: i32;

var<private> global2: array<u32, 30> = array<u32, 30>(23316u, 0u, 23977u, 1u, 0u, 8280u, 7754u, 44454u, 0u, 68308u, 73885u, 36755u, 0u, 8472u, 4294967295u, 0u, 1u, 1u, 0u, 59463u, 1u, 4294967295u, 62073u, 1u, 4964u, 398u, 12746u, 36244u, 1u, 56699u);

var<private> global3: array<vec2<i32>, 29>;

var<private> global4: array<Struct_1, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = true;
    global0 = array<Struct_1, 16>();
    var var_1 = _wgslsmith_dot_vec2_u32(select(~(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(33939u, 30u)]) >> (vec2<u32>(global2[_wgslsmith_index_u32(6606u, 30u)], 5543u) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(18256u, 30u)], 0u)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), _wgslsmith_clamp_vec2_u32(~firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)])), vec2<u32>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3360u, 30u)], 30u)], 30u)]) >> (~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], global2[_wgslsmith_index_u32(0u, 30u)]) % vec2<u32>(32u)), abs(~vec2<u32>(29023u, global2[_wgslsmith_index_u32(1u, 30u)])))) >= (firstTrailingBit(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]) ^ global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 1u), 30u)]) | ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(40282u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), vec3<u32>(31639u, 0u, global2[_wgslsmith_index_u32(91483u, 30u)]), vec3<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(0u, 30u)])), vec3<u32>(1u, 1u, 4294967295u) >> (vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62090u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)]) % vec3<u32>(32u))));
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(13382u, 30u)], ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, 2147483647i, 1i, u_input.b)) & vec4<i32>(-45532i, 12870i, u_input.b, -7509i), vec4<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.c, 71703i, 30769i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2184f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1008f, -710f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, _wgslsmith_f_op_f32(max(1934f, -1386f)))))), 1i);
    var var_3 = _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(f32(-1f) * -742f));
    return ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(2505u, var_2.a, global2[_wgslsmith_index_u32(var_2.a, 30u)]), vec3<u32>(var_2.a, 1u, global2[_wgslsmith_index_u32(39536u, 30u)]) & vec3<u32>(4294967295u, var_2.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a, 30u)], 30u)])), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], 88801u), vec3<u32>(global2[_wgslsmith_index_u32(var_2.a, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52241u, 30u)], 30u)], 900u))));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global2 = array<u32, 30>();
    let var_0 = ~global2[_wgslsmith_index_u32(func_3(), 30u)];
    let var_1 = u_input.a.xy;
    global1 = min(var_1.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, 0i, -19040i, 34686i), vec4<i32>(u_input.c, 7149i, u_input.a.x, var_1.x)), ~vec4<i32>(-1107i, -6407i, u_input.a.x, u_input.b)), -2147483647i, countOneBits(u_input.c))) ^ var_1.x;
    return vec2<bool>(true, true);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = 4294967295u;
    global2 = array<u32, 30>();
    global4 = array<Struct_1, 27>();
    var var_1 = u_input.a.x;
    var var_2 = global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_0, 30u)] ^ abs(min(global2[_wgslsmith_index_u32(~arg_0, 30u)], 1u)), 27u)];
    return Struct_1(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0, 16741u), _wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(arg_0, 30u)]), arg_0), 30u)], 30u)], 30u)], 30u)], 30u)], _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i ^ _wgslsmith_sub_i32(43259i, u_input.a.x), -var_2.b.x, ~u_input.b ^ u_input.a.x, ~(-4079i)), max(var_2.b, vec4<i32>(u_input.c, -30250i, -17396i, u_input.a.x))), var_2.c, 1i);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = func_4(4294967295u, select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(0u < global2[_wgslsmith_index_u32(51887u, 30u)], true), true && all(vec2<bool>(false, false))), select(func_2(abs(51969u)), vec2<bool>(true, true), !all(vec2<bool>(false, false)))));
    let var_1 = vec3<u32>(93856u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 30u)], 0u), reverseBits(arg_0.xz)), ~(~arg_0.zz)), arg_0.zz), reverseBits(0u));
    let var_2 = select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false))), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_2), var_0.c, var_2.zz)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x))))));
    let var_4 = 4294967295u;
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 30u)] & _wgslsmith_mod_u32(_wgslsmith_mod_u32(36573u, global2[_wgslsmith_index_u32(0u, 30u)]), abs(~firstTrailingBit(1u))), 30u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    global2 = array<u32, 30>();
    let var_0 = Struct_1(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(18470u, 76176u, 52639u)) << (vec3<u32>(arg_1.a, arg_3.a, 1u) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(arg_3.a, 78319u, arg_3.a))), func_4(select(6534u, 1u, select(false, true, true) && true), func_2(7151u)).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(284f)) - -954f), arg_2)), i32(-1i) * -2147483647i);
    return -(~vec2<i32>(64113i, var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(select(~_wgslsmith_mod_u32(~55110u, 39690u | ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(128922u, 30u)], 30u)]), 24781u, false), 27u)];
    var var_1 = abs(~vec3<u32>(1u, ~(var_0.a | global2[_wgslsmith_index_u32(4294967295u, 30u)]), ~(~global2[_wgslsmith_index_u32(12661u, 30u)])));
    let var_2 = _wgslsmith_f_op_f32(122f * _wgslsmith_f_op_f32(f32(-1f) * -869f));
    global3 = array<vec2<i32>, 29>();
    global3 = array<vec2<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1416f, 1487f))))), var_2, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + -1593f), _wgslsmith_f_op_f32(-var_2))))), func_5(-var_0.d, Struct_1(func_1(~vec3<u32>(var_0.a, global2[_wgslsmith_index_u32(1494u, 30u)], var_1.x), ~var_0.b.x, var_2), vec4<i32>(u_input.c, i32(-1i) * -2147483647i, _wgslsmith_add_i32(-23425i, var_0.d), u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.x, -366f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, -1386f))), var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 201f)) - _wgslsmith_f_op_f32(sign(-141f))), Struct_1(~abs(1u), var_0.b, var_0.c, -2147483647i)));
}

