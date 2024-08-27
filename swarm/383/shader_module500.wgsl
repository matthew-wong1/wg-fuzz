struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 11>;

var<private> global2: f32 = 938f;

var<private> global3: array<f32, 22>;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~reverseBits(vec2<u32>(1u, 0u))), ~(~vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(24648u, 12104u, u_input.c.x)))), 11u)];
    let var_1 = countOneBits(_wgslsmith_sub_i32((1i >> (abs(u_input.b.x) % 32u)) >> (u_input.a.x % 32u), 1i));
    let var_2 = Struct_1(u_input.a, !select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), select(vec2<bool>(all(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)))));
    var var_3 = Struct_2(select(var_0.a, arg_0.a, vec4<bool>(var_2.c.x & true, any(select(var_2.b.zz, var_2.c, false)), any(!vec3<bool>(false, var_2.b.x, var_2.c.x)), any(!vec4<bool>(var_2.b.x, var_2.c.x, true, var_2.c.x)))));
    let var_4 = var_0.a.wzx;
    return -823f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1664f * 831f)), _wgslsmith_div_f32(arg_2, global3[_wgslsmith_index_u32(firstLeadingBit(40264u), 22u)]));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -1155f, -2251f, global3[_wgslsmith_index_u32(6537u, 22u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(arg_3.x, 22u)], arg_2, -1739f, -179f), vec4<f32>(var_0.x, arg_2, arg_2, 351f))), select(vec4<bool>(arg_0.b.x, arg_1.c.x, true, false), vec4<bool>(arg_0.c.x, true, true, true), arg_1.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -125f, 1000f)), vec4<f32>(-747f, var_0.x, global3[_wgslsmith_index_u32(53650u, 22u)], global3[_wgslsmith_index_u32(arg_0.a.x, 22u)]))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global3[_wgslsmith_index_u32(26503u, 22u)], var_0.x, var_0.x)), vec4<f32>(-1146f, var_0.x, global3[_wgslsmith_index_u32(arg_3.x, 22u)], global3[_wgslsmith_index_u32(1u, 22u)])), vec4<f32>(var_0.x, -111f, _wgslsmith_f_op_f32(-var_0.x), global3[_wgslsmith_index_u32(max(u_input.c.x, arg_1.a.x), 22u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1512f, var_0.x, false)), 764f, _wgslsmith_f_op_f32(step(369f, -432f)), _wgslsmith_f_op_f32(-2379f - arg_2)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-998f, var_0.x, 1235f, 1000f))) - vec4<f32>(732f, 1000f, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], 179f)))));
    let var_2 = global1[_wgslsmith_index_u32(select(~(~arg_1.a.x), ~67406u, arg_1.c.x) >> (max(1u, 1u) % 32u), 11u)];
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], arg_2, -143f, -1401f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_1.x, 458f, var_1.x) + vec4<f32>(-1933f, 1135f, 593f, -1718f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, -1543f, _wgslsmith_f_op_f32(579f - 1000f), global3[_wgslsmith_index_u32(1u, 22u)])))));
    let var_3 = global1[_wgslsmith_index_u32(max(arg_0.a.x, arg_0.a.x), 11u)];
    return ~(-_wgslsmith_add_i32(-reverseBits(var_3.a.x), firstTrailingBit(20560i)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> i32 {
    var var_0 = abs(2147483647i & _wgslsmith_sub_i32(arg_0, arg_0));
    global2 = _wgslsmith_f_op_f32(trunc(-292f));
    var var_1 = Struct_1(~(~u_input.a), vec3<bool>(true, true, true), select(vec2<bool>(true, false != any(vec4<bool>(false, false, false, false))), vec2<bool>(select(true, arg_0 <= 1518i, true), true), true));
    let var_2 = Struct_2(~((vec4<i32>(arg_0, arg_0, 2147483647i, -22118i) & vec4<i32>(0i, 0i, 29430i, arg_0)) << (~vec4<u32>(1u, var_1.a.x, u_input.a.x, 0u) % vec4<u32>(32u))));
    let var_3 = -1i & func_4(Struct_1(_wgslsmith_mult_vec4_u32(abs(u_input.a), vec4<u32>(4294967295u, 19308u, arg_3.x, 0u)), var_1.b, select(var_1.b.yy, !var_1.c, global3[_wgslsmith_index_u32(33646u, 22u)] != global3[_wgslsmith_index_u32(4294967295u, 22u)])), Struct_1(~(~vec4<u32>(1u, var_1.a.x, u_input.a.x, 1u)), select(vec3<bool>(var_1.c.x, var_1.c.x, true), var_1.b, vec3<bool>(var_1.c.x, false, true)), !vec2<bool>(var_1.c.x, false)), _wgslsmith_f_op_f32(func_3(var_2)), _wgslsmith_sub_vec4_u32(~var_1.a, select(u_input.a, vec4<u32>(arg_3.x, u_input.a.x, 0u, 1u), false)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.x, arg_3.x, var_1.a.x, 4294967295u), u_input.a) % vec4<u32>(32u)));
    return 24806i;
}

fn func_1() -> u32 {
    global4 = ~(i32(-1i) * -countOneBits(func_2(-2147483647i, vec3<f32>(587f, global3[_wgslsmith_index_u32(6080u, 22u)], 513f), vec2<i32>(0i, -2147483647i), u_input.a.zw)));
    global0 = _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~1u, ~u_input.c.x) >> (~14938u % 32u), 11u)]));
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(1008f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(596f * 1615f)))), -1368f, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(f32(-1f) * -334f), 697f, global3[_wgslsmith_index_u32(min(4294967295u, u_input.c.x) ^ _wgslsmith_sub_u32(u_input.a.x, 47757u), 22u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-193f, 262f, 237f, global3[_wgslsmith_index_u32(20596u, 22u)]) - vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global3[_wgslsmith_index_u32(20435u, 22u)], 1867f))))))));
    global2 = var_0.x;
    var var_1 = !select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), !all(vec3<bool>(false, true, false)));
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(~u_input.c.x >> (u_input.a.x % 32u), u_input.c.x, func_1(), u_input.b.x), !vec3<bool>(false, false, select(2147483647i, 20756i, true) < ~11024i), select(select(vec2<bool>(all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, false))), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, u_input.c.x == u_input.c.x)), vec2<bool>(true, false)));
    let var_1 = vec3<bool>(any(!select(select(vec4<bool>(true, false, var_0.c.x, var_0.b.x), vec4<bool>(true, var_0.c.x, true, false), var_0.c.x), select(vec4<bool>(var_0.b.x, var_0.c.x, true, var_0.b.x), vec4<bool>(var_0.c.x, true, false, var_0.c.x), true), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false))), any(select(var_0.b, var_0.b, var_0.c.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, func_2(-2147483647i, vec3<f32>(-1399f, global3[_wgslsmith_index_u32(u_input.b.x, 22u)], global3[_wgslsmith_index_u32(7609u, 22u)]), vec2<i32>(-32372i, 31792i), vec2<u32>(var_0.a.x, 68473u))), 11209i, 76261i) <= -_wgslsmith_dot_vec3_i32(min(vec3<i32>(-19017i, -1i, -2147483647i), vec3<i32>(-2147483647i, -13455i, 57067i)), vec3<i32>(-12266i, -2147483647i, 9790i)));
    let var_2 = Struct_1(countOneBits(((u_input.a << (vec4<u32>(95107u, 4042u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) | u_input.a) ^ (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(38672u, 1u, 4601u, 1026u)) >> (firstLeadingBit(vec4<u32>(var_0.a.x, u_input.b.x, var_0.a.x, u_input.d)) % vec4<u32>(32u)))), var_0.b, select(select(select(var_0.c, var_0.c, !var_1.x), var_1.zx, !var_1.zy), vec2<bool>(!var_0.b.x | true, all(select(vec3<bool>(true, true, true), var_0.b, false))), vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(var_2.a.x), 22u)]);
    let var_3 = ~vec3<i32>(abs(func_2(reverseBits(0i), vec3<f32>(-1593f, 1157f, global3[_wgslsmith_index_u32(19790u, 22u)]), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -3923i), vec2<i32>(34128i, 12780i)), vec2<u32>(var_0.a.x, 4294967295u) ^ var_2.a.xx)), ~countOneBits(_wgslsmith_sub_i32(0i, -2147483647i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, 21532i, -10851i), vec3<i32>(30343i, 8732i, -18026i), var_1) >> (_wgslsmith_sub_vec3_u32(var_2.a.wzw, vec3<u32>(var_2.a.x, 0u, var_0.a.x)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -7545i, -72365i) << (vec3<u32>(63367u, var_0.a.x, var_2.a.x) % vec3<u32>(32u)), vec3<i32>(-9363i, 2147483647i, 3162i))));
    global4 = 100066i;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(428u, 22u)], -174f, -1000f, vec3<f32>(-1013f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(21694u, 22u)]), 1331f), var_2.a);
}

