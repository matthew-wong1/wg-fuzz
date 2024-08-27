struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<vec3<bool>, 1>;

var<private> global2: array<vec2<i32>, 15>;

var<private> global3: array<bool, 30> = array<bool, 30>(false, true, true, true, true, false, false, false, true, false, true, false, true, false, false, false, true, false, false, false, false, true, true, true, true, false, false, false, true, false);

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(941f, vec2<bool>(false, true), vec3<f32>(1000f, 176f, -1000f), -1068f, vec4<u32>(25702u, 4294967295u, 81550u, 1u)), Struct_1(-1577f, vec2<bool>(false, true), vec3<f32>(267f, -1265f, -481f), 385f, vec4<u32>(2262u, 4913u, 0u, 3434u)), Struct_1(2232f, vec2<bool>(true, true), vec3<f32>(-139f, 1572f, -812f), 176f, vec4<u32>(8613u, 1u, 0u, 1u)), Struct_1(1000f, vec2<bool>(true, true), vec3<f32>(-978f, -596f, 828f), 989f, vec4<u32>(4294967295u, 1u, 32548u, 38123u)), Struct_1(-1299f, vec2<bool>(true, true), vec3<f32>(-326f, -483f, -1507f), -328f, vec4<u32>(39892u, 0u, 1u, 3557u)), Struct_1(-1000f, vec2<bool>(true, true), vec3<f32>(-1697f, 839f, 686f), -380f, vec4<u32>(0u, 1u, 1057u, 1u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_2(arg_0, u_input.a, select(vec4<bool>(false, all(arg_0.b), true, all(!vec2<bool>(global3[_wgslsmith_index_u32(81162u, 30u)], false))), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], true, arg_0.b.x, global3[_wgslsmith_index_u32(arg_0.e.x, 30u)]))), false), arg_0.e.x, Struct_1(1988f, arg_0.b, _wgslsmith_f_op_vec3_f32(step(arg_0.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-681f, 725f, 301f) + arg_1))))), 368f, ~vec4<u32>(4294967295u, 24567u, arg_0.e.x, u_input.a)));
    let var_1 = arg_0;
    let var_2 = ~vec3<u32>(0u, ~(~var_0.e.e.x), ~1u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), !select(vec2<bool>(true, true), var_0.e.b, any(var_0.e.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)] - 256f))), var_1.d, true)))), (var_0.a.e ^ var_0.a.e) << (var_1.e % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f * arg_1.x) * _wgslsmith_f_op_f32(step(var_0.e.a, var_1.c.x)))), vec2<f32>(590f, 889f), true | any(!arg_0.b)));
    return true;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(0u, 6u)], u_input.a, !select(vec4<bool>(all(vec2<bool>(arg_0.x, true)), func_3(global4[_wgslsmith_index_u32(u_input.a, 6u)], vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], -585f, global0[_wgslsmith_index_u32(u_input.a, 11u)])), true, !arg_0.x), select(arg_0, select(arg_0, vec4<bool>(global3[_wgslsmith_index_u32(53259u, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)], arg_0.x, arg_0.x), vec4<bool>(global3[_wgslsmith_index_u32(83638u, 30u)], true, false, true)), global0[_wgslsmith_index_u32(41668u, 11u)] < -1000f), !(arg_0.x && global3[_wgslsmith_index_u32(u_input.a, 30u)])), ~u_input.a, global4[_wgslsmith_index_u32(~u_input.a, 6u)]);
    var var_1 = _wgslsmith_sub_i32(~2147483647i & ~(reverseBits(u_input.b) & -u_input.b), -26419i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(419f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.e.a, _wgslsmith_f_op_f32(var_0.a.d * 342f), true)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a, 11u)]))), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(26145u, 30u)], arg_0.x), !(!var_0.e.b), arg_0.yw), var_0.a.b, select(vec2<bool>(!arg_0.x, arg_0.x), !arg_0.xw, arg_0.x)), vec3<f32>(522f, var_0.e.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.e.e.x ^ u_input.a, 11u)], global0[_wgslsmith_index_u32(25309u, 11u)]))), 215f, ~(~vec4<u32>(71410u, var_0.b << (u_input.a % 32u), 4294967295u, 4294967295u)));
    var var_3 = Struct_2(var_2, u_input.a ^ var_2.e.x, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1698f * 2534f) + -489f) == var_2.a, select(func_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 11u)], arg_0.yx, var_2.c, -143f, vec4<u32>(14245u, u_input.a, 96154u, 4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(var_0.e.c))), all(!vec4<bool>(true, var_0.a.b.x, true, true)), true && !arg_0.x), !any(arg_0.zz) & select(true, any(vec3<bool>(false, true, false)), true), false | (func_3(Struct_1(var_2.d, var_0.a.b, var_2.c, var_0.e.c.x, vec4<u32>(var_2.e.x, var_0.b, var_0.b, 122029u)), vec3<f32>(289f, 516f, var_0.e.a)) && (u_input.b == -28224i))), ~var_2.e.x, var_2);
    global0 = array<f32, 11>();
    return Struct_2(var_0.a, max(4294967295u, _wgslsmith_div_u32(4294967295u, 1u) >> (_wgslsmith_mod_u32(14266u, _wgslsmith_div_u32(48349u, var_0.d)) % 32u)), !arg_0, ~u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1614f - _wgslsmith_f_op_f32(793f + var_0.a.d)) * _wgslsmith_f_op_f32(max(479f, var_0.a.d))), select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.e.e.x, 11u)] == var_2.a), !select(var_3.e.b, vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x)), select(!arg_0.ww, vec2<bool>(false, var_3.c.x), select(var_0.c.wx, vec2<bool>(global3[_wgslsmith_index_u32(var_3.a.e.x, 30u)], var_3.c.x), var_0.c.yw))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1663f, 1f, -1179f)), _wgslsmith_f_op_f32(1021f - global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(42847u, var_2.e.x)), 11u)]), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 45105u), var_2.e.xyz) << (4294967295u % 32u), 1u, 4294967295u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> vec4<u32> {
    let var_0 = -_wgslsmith_div_vec3_i32(firstLeadingBit(abs(select(vec3<i32>(-79102i, -42129i, u_input.b), vec3<i32>(arg_3, u_input.b, 0i), false))), vec3<i32>(arg_3, u_input.b, select(-2147483647i, 56599i, all(vec3<bool>(false, false, arg_0.e.b.x)))));
    global2 = array<vec2<i32>, 15>();
    var var_1 = arg_0;
    let var_2 = func_2(!(!select(vec4<bool>(false, arg_0.e.b.x, global3[_wgslsmith_index_u32(arg_1.x, 30u)], false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 30u)], var_1.c.x, arg_2, var_1.a.b.x), select(var_1.c, vec4<bool>(true, false, arg_0.a.b.x, true), true))));
    global4 = array<Struct_1, 6>();
    return func_2(arg_0.c).e.e ^ arg_0.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1u, reverseBits(u_input.a)), ~(~(~u_input.a)), ~1u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~u_input.a), u_input.a | 1u)), func_1(Struct_2(Struct_1(-625f, select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], false), global3[_wgslsmith_index_u32(61844u, 30u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], 1292f) - vec3<f32>(-749f, global0[_wgslsmith_index_u32(4294967295u, 11u)], -1458f)), global0[_wgslsmith_index_u32(~1u, 11u)], vec4<u32>(u_input.a, 31966u, u_input.a, 7343u)), firstLeadingBit(8122u), vec4<bool>(1i <= u_input.b, true, global3[_wgslsmith_index_u32(46624u, 30u)], any(global1[_wgslsmith_index_u32(3777u, 1u)])), 1846u, global4[_wgslsmith_index_u32(1u, 6u)]), vec4<u32>(select(4294967295u << (u_input.a % 32u), 31252u, true), ~0u >> (firstTrailingBit(61942u) % 32u), ~u_input.a, 71234u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 51607u), reverseBits(vec2<u32>(u_input.a, u_input.a))) > (1u ^ _wgslsmith_mult_u32(1u, u_input.a)), u_input.b ^ _wgslsmith_mod_i32(abs(u_input.b), u_input.b)));
    let var_1 = Struct_2(Struct_1(1f, !func_2(vec4<bool>(true, global3[_wgslsmith_index_u32(8877u, 30u)], false, global3[_wgslsmith_index_u32(var_0.x, 30u)])).a.b, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 11u)] * -1063f))), -115f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 11u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), ~var_0), vec4<u32>(u_input.a, 1u, u_input.a, 112380u))), var_0.x, vec4<bool>(true, true, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_0.x, 11u)])) < _wgslsmith_f_op_f32(select(1967f, global0[_wgslsmith_index_u32(~var_0.x, 11u)], true)), abs(~30632u) == u_input.a), max(func_1(func_2(vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 30u)], global3[_wgslsmith_index_u32(5687u, 30u)], global3[_wgslsmith_index_u32(236u, 30u)], false)), ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, 9684u)), all(func_2(vec4<bool>(global3[_wgslsmith_index_u32(10113u, 30u)], true, false, true)).c), _wgslsmith_sub_i32(u_input.b, 2147483647i)).x, firstTrailingBit(4294967295u)), func_2(!(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 30u)], false, false)))).a);
    let var_2 = Struct_1(var_1.a.a, vec2<bool>(select(var_1.a.b.x, false, true), !var_1.e.b.x || all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(var_1.a.c + var_1.a.c), 1850f, var_1.a.e);
    global4 = array<Struct_1, 6>();
    global4 = array<Struct_1, 6>();
    var var_3 = Struct_2(func_2(select(vec4<bool>(all(var_2.b), true, global3[_wgslsmith_index_u32(var_1.b, 30u)] && global3[_wgslsmith_index_u32(1u, 30u)], false), select(!var_1.c, var_1.c, vec4<bool>(var_1.a.b.x, global3[_wgslsmith_index_u32(1u, 30u)], true, false)), false)).e, 26347u, select(vec4<bool>(true, !var_2.b.x, true, ~(-2147483647i) < abs(u_input.b)), var_1.c, false), (u_input.a | _wgslsmith_sub_u32(~0u, ~u_input.a)) ^ ~(_wgslsmith_add_u32(32193u, u_input.a) >> (abs(4294967295u) % 32u)), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -1135f), -211f)))), -2349f, abs(vec2<u32>(u_input.a, ~(~10923u))));
}

