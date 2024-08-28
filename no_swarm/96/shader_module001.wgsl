struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<i32, 4> = array<i32, 4>(68947i, -1i, 1i, 22875i);

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(-3426i, i32(-2147483648)), vec4<f32>(669f, 388f, 1599f, 808f)), Struct_1(vec2<i32>(34265i, 2147483647i), vec4<f32>(-893f, 1836f, -1248f, 1190f)), Struct_1(vec2<i32>(1i, -16705i), vec4<f32>(-838f, -1406f, -1358f, 1000f)), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<f32>(-375f, 874f, -1216f, 400f)), Struct_1(vec2<i32>(-25108i, 1i), vec4<f32>(1000f, -1351f, 578f, 1115f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-781f, -1460f, -265f, -283f)), Struct_1(vec2<i32>(0i, 1i), vec4<f32>(2109f, -1171f, 1357f, 733f)), Struct_1(vec2<i32>(-9654i, -15442i), vec4<f32>(762f, -452f, 882f, 1670f)), Struct_1(vec2<i32>(7554i, 0i), vec4<f32>(-379f, -581f, -1070f, -1213f)), Struct_1(vec2<i32>(72430i, 35355i), vec4<f32>(-421f, -384f, -1000f, 1580f)), Struct_1(vec2<i32>(-1i, -4270i), vec4<f32>(1549f, 1411f, 834f, -513f)), Struct_1(vec2<i32>(-1i, -15698i), vec4<f32>(-328f, -2021f, -370f, -2004f)), Struct_1(vec2<i32>(2147483647i, 0i), vec4<f32>(-371f, -603f, -472f, 1565f)), Struct_1(vec2<i32>(-640i, -698i), vec4<f32>(-403f, 442f, -599f, 871f)), Struct_1(vec2<i32>(i32(-2147483648), 31160i), vec4<f32>(1121f, 1856f, 838f, 349f)), Struct_1(vec2<i32>(532i, 0i), vec4<f32>(220f, -465f, -723f, -888f)));

var<private> global4: array<f32, 1> = array<f32, 1>(797f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    global4 = array<f32, 1>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(reverseBits(114831u), 1u)])))));
    global1 = array<i32, 4>();
    var var_1 = i32(-1i) * -1i;
    global3 = array<Struct_1, 16>();
    return _wgslsmith_dot_vec3_u32(abs(max(countOneBits(countOneBits(vec3<u32>(1u, 67950u, 35628u))), vec3<u32>(1u, 1u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(min(1u, 1u), 24651u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(7246u, 69731u, 1u), vec3<u32>(0u, 38801u, 0u)))));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(arg_0.x, 16u)];
    global1 = array<i32, 4>();
    global0 = _wgslsmith_sub_u32(arg_0.x, 0u);
    global0 = ~func_3(var_0.a.x);
    let var_1 = ~firstLeadingBit(~select(u_input.b, ~vec3<i32>(var_0.a.x, u_input.a, var_0.a.x), select(vec3<bool>(false, global2.x, true), vec3<bool>(true, true, global2.x), vec3<bool>(global2.x, true, global2.x))));
    return countOneBits(abs(abs(arg_0.x))) << (abs(max(~_wgslsmith_clamp_u32(0u, arg_0.x, 58816u), ~(~arg_0.x))) % 32u);
}

fn func_1() -> vec2<u32> {
    global0 = 15459u;
    global3 = array<Struct_1, 16>();
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(countOneBits(reverseBits(vec3<u32>(60157u, 36454u, 14141u))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 82518u, 1u), max(vec3<u32>(6860u, 1u, 1u), vec3<u32>(4294967295u, 16536u, 20175u))), 1u, 72312u)), 16u)];
    var var_1 = _wgslsmith_mod_vec4_u32(select(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(min(28335u, _wgslsmith_add_u32(1u, 14573u)), select(1u, 1u, false), func_2(vec3<u32>(1u, 4294967295u, 1u)) ^ (0u >> (1u % 32u)), _wgslsmith_sub_u32(firstTrailingBit(0u), ~1u)), true), vec4<u32>(~34564u, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(31220u, 1u), vec2<u32>(4294967295u, 18404u), vec2<bool>(true, global2.x)), vec2<u32>(1u, 1u)), 0u, 1u));
    let var_2 = Struct_2(select(!vec3<bool>(select(global2.x, true, false), true, !global2.x), select(select(vec3<bool>(true, false, false), vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, global2.x)), !vec3<bool>(global2.x, global2.x, true), !vec3<bool>(true, global2.x, true)), !(!global2.x)), var_1.wyw, global3[_wgslsmith_index_u32(var_1.x, 16u)], true, var_0.a.x << (~41978u % 32u));
    return var_2.b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(func_1() << (select(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(0u, 1u)), true) % vec2<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(~(~1i), global1[_wgslsmith_index_u32(~(6462u | var_0.x), 4u)]), u_input.b.xz), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1574f, -852f, global4[_wgslsmith_index_u32(7894u, 1u)], global4[_wgslsmith_index_u32(63687u, 1u)]), vec4<f32>(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)], -1412f, -973f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(257f, 153f, -1284f, -1607f))), !any(vec3<bool>(global2.x, global2.x, global2.x)))))));
    var var_2 = var_1;
    var var_3 = ~countOneBits(min(~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 44931u), vec3<u32>(36200u, var_0.x, 4294967295u))));
    var_2 = Struct_1(~firstTrailingBit(firstLeadingBit(vec2<i32>(-54154i, 12747i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b.x, 160f, -1622f, global4[_wgslsmith_index_u32(4294967295u, 1u)]))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4[_wgslsmith_index_u32(~1u, 1u)], -994f, _wgslsmith_f_op_f32(893f + var_1.b.x), -1049f)))));
    global4 = array<f32, 1>();
    global3 = array<Struct_1, 16>();
    let var_4 = Struct_2(vec3<bool>(false, !global2.x, true), select(firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_0.x, 4294967295u), ~vec3<u32>(var_0.x, 4294967295u, 4294967295u))), min(reverseBits(max(vec3<u32>(77932u, var_0.x, 1u), vec3<u32>(19118u, var_0.x, 21960u))), reverseBits(vec3<u32>(var_0.x, var_0.x, 4294967295u)) ^ vec3<u32>(1u, 6568u, 70617u)), vec3<bool>(true, any(vec3<bool>(true, true, true)), global2.x)), global3[_wgslsmith_index_u32(4294967295u, 16u)], all(select(vec2<bool>(true, global2.x), !select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, false), vec2<bool>(global2.x, false)), 225f <= var_1.b.x)), _wgslsmith_add_i32(countOneBits(u_input.b.x), -_wgslsmith_clamp_i32(-21985i, 0i, -45092i)));
    global2 = var_4.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(select(-1021f, 1978f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, var_4.b.x), 4u)] != ~var_2.a.x)))), var_0.x, var_4.b, firstTrailingBit(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, u_input.a, var_1.a.x), vec3<i32>(global1[_wgslsmith_index_u32(17050u, 4u)], var_2.a.x, var_4.e), u_input.b) | u_input.b));
}

