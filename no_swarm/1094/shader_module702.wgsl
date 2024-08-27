struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<i32, 24> = array<i32, 24>(9359i, 2147483647i, -1i, -17038i, 1i, 1i, 2147483647i, -14641i, 1i, 1i, -1i, -26814i, 9201i, i32(-2147483648), 0i, 39091i, -53383i, -11474i, 36416i, 2147483647i, 56484i, -72737i, -1i, -19788i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(50839u, 1u ^ firstTrailingBit(~1u), _wgslsmith_div_u32(arg_1.c.x, 1u)), abs(firstLeadingBit(5420u)), 66346u, ~(~_wgslsmith_mult_u32(~46734u, arg_1.c.x)));
    var var_1 = Struct_1(arg_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, _wgslsmith_div_f32(835f, arg_1.b.x), -1419f, -1139f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x)), 359f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-193f - 355f))), -901f)), _wgslsmith_add_vec2_u32(arg_1.c, max(firstLeadingBit(reverseBits(vec2<u32>(12865u, 0u))), ~(arg_0.c | var_0.zy))), -26201i);
    let var_2 = Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(countOneBits(~abs(arg_0.c.x)), 24u)], var_1.a.x), var_1.b, countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mult_u32(arg_1.c.x, var_1.c.x)), var_0.zw | var_0.yz)), arg_0.d);
    var var_3 = var_0.zw;
    var var_4 = arg_1;
    return arg_0.b.x;
}

fn func_4(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(~vec2<i32>(~u_input.a ^ u_input.b, u_input.b | _wgslsmith_mult_i32(54548i, u_input.a)), vec4<f32>(605f, arg_0, arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -736f))), firstLeadingBit(~(~vec2<u32>(4294967295u, 13937u))), global1[_wgslsmith_index_u32(~(~(~(~4294967295u))), 24u)]);
    global1 = array<i32, 24>();
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 3552i), abs(vec2<i32>(2147483647i, -1i))) ^ select(vec2<i32>(2987i, u_input.a), vec2<i32>(var_0.a.x, -32132i) << (var_0.c % vec2<u32>(32u)), true), select(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0.d), vec2<i32>(global1[_wgslsmith_index_u32(1u, 24u)], u_input.a))), var_0.a, select(vec2<bool>(false, arg_1), !vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.c.x, 19u)]), select(vec2<bool>(arg_1, global0[_wgslsmith_index_u32(52103u, 19u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.c.x, 19u)]), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, _wgslsmith_div_f32(230f, arg_0), _wgslsmith_f_op_f32(-1285f - var_0.b.x), _wgslsmith_f_op_f32(-arg_0)))), vec2<u32>(var_0.c.x, ~var_0.c.x & abs(~1u)), var_0.d);
    let var_2 = true;
    var var_3 = ~vec3<u32>(~_wgslsmith_dot_vec2_u32(~var_0.c, vec2<u32>(0u, var_0.c.x)), _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_clamp_u32(0u, 21839u, 13656u), _wgslsmith_clamp_u32(13019u, 0u, 0u) | _wgslsmith_clamp_u32(36860u, var_0.c.x, 4294967295u)), 26668u);
    return ~33211u;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> vec3<u32> {
    let var_0 = select(vec4<bool>(arg_0.x, !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(arg_1), 1u), 19u)], true, true), select(vec4<bool>(any(arg_0.xz), true, true, select(false, true, true)), vec4<bool>(!select(false, false, arg_0.x), u_input.a < _wgslsmith_div_i32(u_input.b, 0i), true, 25478i == max(global1[_wgslsmith_index_u32(1u, 24u)], 0i)), arg_0.x), all(vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 19u)], false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(272f, -1614f, 1000f, -1094f) - vec4<f32>(-1268f, -1910f, 456f, -1124f))) + vec4<f32>(976f, -1107f, -151f, 614f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(792f, -258f, 928f, -3703f) + vec4<f32>(-277f, -1244f, 1593f, 679f))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-906f)))));
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    return _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 24078u, ~max(arg_1, 40837u)), ~vec3<u32>(4294967295u, 4294967295u, arg_1)), vec3<u32>(_wgslsmith_div_u32(func_4(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(-2147483647i, 28919i), vec4<f32>(var_1.x, 541f, var_2, var_1.x), vec2<u32>(arg_1, 0u), 0i), Struct_1(vec2<i32>(u_input.a, u_input.b), var_1, vec2<u32>(43156u, 31435u), 30194i))), true), 0u), 0u, 43057u));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(min(min(func_2(vec4<bool>(true, global0[_wgslsmith_index_u32(45982u, 19u)], false, global0[_wgslsmith_index_u32(4294967295u, 19u)]), 0u) & select(vec3<u32>(18105u, 4294967295u, 53699u), vec3<u32>(1554u, 4294967295u, 0u), true), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 22050u, 14555u), vec3<u32>(80870u, 78825u, 0u), vec3<u32>(1u, 1u, 37324u)), ~vec3<u32>(39291u, 4294967295u, 51006u), vec3<bool>(false, false, false))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 5544u, 29482u)), vec3<u32>(10950u, 1u, func_2(vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], false, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(7299u, 19u)]), 4294967295u).x), reverseBits(vec3<u32>(4294967295u, 4294967295u, 24082u)))), _wgslsmith_add_vec3_u32(select(vec3<u32>(1u, 1u, reverseBits(4294967295u)), func_2(!vec4<bool>(global0[_wgslsmith_index_u32(45631u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], true, true), abs(33962u)), global0[_wgslsmith_index_u32(~(~1u), 19u)]), (firstTrailingBit(vec3<u32>(7619u, 5415u, 4294967295u)) ^ vec3<u32>(4294967295u, 970u, 58770u)) << (~vec3<u32>(8116u, 14958u, 4294967295u) % vec3<u32>(32u))));
    var var_1 = func_2(!vec4<bool>(all(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_0, 19u)], global0[_wgslsmith_index_u32(65354u, 19u)])), global0[_wgslsmith_index_u32(var_0, 19u)], false, ~4294967295u < (0u & var_0)), min(~countOneBits(987u), 66952u) | var_0);
    var var_2 = _wgslsmith_clamp_i32(arg_1 >> (~(~1u) % 32u), 66641i, arg_1);
    var var_3 = Struct_1(max(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(16367i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(var_1.x, 24u)]))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-27265i, 0i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 24u)], u_input.b)))) >> (func_2(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(31923u, 19u)], global0[_wgslsmith_index_u32(42662u, 19u)], global0[_wgslsmith_index_u32(var_0, 19u)]), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(1u, 19u)])), 1u).zx % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + 1000f), _wgslsmith_f_op_f32(-arg_0), arg_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1008f, -443f) * vec4<f32>(arg_0, arg_0, 397f, arg_0))))), firstTrailingBit(~firstLeadingBit(var_1.yy ^ vec2<u32>(var_1.x, 13290u))), _wgslsmith_div_i32(u_input.b, u_input.b));
    let var_4 = vec3<u32>(0u, ~0u, var_0);
    return Struct_1(_wgslsmith_sub_vec2_i32(var_3.a, var_3.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-129f, _wgslsmith_f_op_f32(arg_0 - -748f), _wgslsmith_f_op_f32(arg_0 + var_3.b.x), 1000f) + var_3.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1361f + -102f)), 218f, -1295f), global0[_wgslsmith_index_u32(4294967295u, 19u)])), ~var_3.c, 7733i);
}

fn func_5(arg_0: Struct_1) -> u32 {
    global1 = array<i32, 24>();
    global0 = array<bool, 19>();
    let var_0 = arg_0.b.xxy;
    global1 = array<i32, 24>();
    var var_1 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)))), u_input.b);
    return select(_wgslsmith_mod_u32(17457u, 4294967295u), firstLeadingBit(4294967295u), any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(~var_1.c.x, 19u)], global0[_wgslsmith_index_u32(~abs(4294967295u), 19u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(!vec3<bool>(global0[_wgslsmith_index_u32(15671u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(19398u, 19u)], true, false), !global0[_wgslsmith_index_u32(19575u, 19u)]), !(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(47484u, 19u)], global0[_wgslsmith_index_u32(44545u, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(40282u, 19u)], true, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(85559u, 19u)], global0[_wgslsmith_index_u32(1800u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]))), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 94543u), vec4<u32>(40453u, 38154u, 1u, 1u)) >= ~9388u, all(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 19u)], false)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(55479u, 19u)], global0[_wgslsmith_index_u32(97896u, 19u)]))));
    var var_1 = select(func_5(func_1(_wgslsmith_f_op_f32(round(1595f)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(7423u, 24u)], u_input.b), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(13011u, 24u)])))) >> (1u % 32u), ~(~(~func_5(Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(24635u, 24u)], u_input.a), vec4<f32>(200f, 681f, -943f, -311f), vec2<u32>(0u, 38128u), global1[_wgslsmith_index_u32(1u, 24u)])))), all(select(!var_0, select(var_0, !var_0, true & global0[_wgslsmith_index_u32(0u, 19u)]), true)));
    global1 = array<i32, 24>();
    global0 = array<bool, 19>();
    let var_2 = (-(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a)) ^ ~abs(select(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, 32426i), vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(0u, 19u)])))) | (-max(vec2<i32>(global1[_wgslsmith_index_u32(65787u, 24u)], 1i), vec2<i32>(-23902i, 1i)) ^ select(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 24u)], u_input.a), vec2<i32>(0i, global1[_wgslsmith_index_u32(9495u, 24u)])) ^ vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, -u_input.b), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~(~_wgslsmith_div_u32(~0u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f * 329f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), -1030f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f)))), min(-31987i, ~global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 24u)]));
}

