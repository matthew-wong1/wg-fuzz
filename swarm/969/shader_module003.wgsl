struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(468f, 4217u), vec4<bool>(true, true, true, true), -816f), Struct_3(Struct_1(-214f, 33791u), vec4<bool>(true, true, true, false), -613f), Struct_3(Struct_1(234f, 36449u), vec4<bool>(false, true, true, true), -701f), Struct_3(Struct_1(761f, 4294967295u), vec4<bool>(true, false, false, false), -133f), Struct_3(Struct_1(-106f, 29786u), vec4<bool>(true, false, true, false), -1826f), Struct_3(Struct_1(656f, 1u), vec4<bool>(false, true, false, false), -162f), Struct_3(Struct_1(855f, 1u), vec4<bool>(true, false, false, true), 1384f), Struct_3(Struct_1(-769f, 0u), vec4<bool>(false, false, false, true), -1334f), Struct_3(Struct_1(-437f, 0u), vec4<bool>(false, true, true, false), -1794f), Struct_3(Struct_1(325f, 27715u), vec4<bool>(false, true, true, false), -195f), Struct_3(Struct_1(-1331f, 1u), vec4<bool>(true, false, false, false), 606f), Struct_3(Struct_1(-802f, 1u), vec4<bool>(true, true, true, true), 184f), Struct_3(Struct_1(-119f, 0u), vec4<bool>(true, true, false, true), -558f), Struct_3(Struct_1(532f, 1u), vec4<bool>(false, true, true, true), -2625f), Struct_3(Struct_1(878f, 4294967295u), vec4<bool>(false, false, true, false), -243f), Struct_3(Struct_1(-773f, 0u), vec4<bool>(true, true, false, true), 529f), Struct_3(Struct_1(257f, 57371u), vec4<bool>(true, false, false, false), 1055f), Struct_3(Struct_1(-1343f, 4294967295u), vec4<bool>(false, false, false, true), -771f), Struct_3(Struct_1(1395f, 4294967295u), vec4<bool>(false, true, false, true), -1064f), Struct_3(Struct_1(-1068f, 6918u), vec4<bool>(false, false, true, true), -1474f), Struct_3(Struct_1(1092f, 83692u), vec4<bool>(false, true, true, true), 930f), Struct_3(Struct_1(-1546f, 0u), vec4<bool>(false, true, false, false), -940f), Struct_3(Struct_1(736f, 2977u), vec4<bool>(false, true, false, false), -2348f));

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(692f, 50804u), vec4<bool>(false, true, true, true), -634f));

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 24> = array<f32, 24>(-649f, 935f, -1426f, -782f, -260f, 191f, 631f, 787f, -1406f, 305f, 744f, -347f, 1615f, 533f, 665f, -1346f, 1726f, -1383f, -2151f, 1954f, -426f, 533f, -348f, -239f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = -(~_wgslsmith_div_vec2_i32(-u_input.e, u_input.e));
    global0 = array<Struct_3, 23>();
    var var_1 = vec2<i32>(~63003i, -(9784i ^ u_input.e.x));
    global3 = array<f32, 24>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(220f))), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(arg_0.b, 59025u), _wgslsmith_add_u32(var_2.b, 4294967295u) | ~0u), 24u)] + arg_0.a) - -277f);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> u32 {
    global2 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(global2.x, global2.x) << (vec2<u32>(arg_1.d.b, 18699u) % vec2<u32>(32u)), u_input.e, select(vec2<bool>(false, true), vec2<bool>(false, false), false)), ~(~vec2<i32>(arg_1.e, global2.x))), u_input.e);
    global2 = abs(u_input.e);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(4294967295u, 24u)])), global3[_wgslsmith_index_u32(~70169u, 24u)], -412f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 24u)], arg_1.d.a), -1000f), global3[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(325f)) + _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.d.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(62288u, 24u)] - 1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(1u, 24u)], arg_1.d.a, 1450f, -160f) * vec4<f32>(-1615f, global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(u_input.b, 24u)], -1276f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, global3[_wgslsmith_index_u32(0u, 24u)], arg_1.d.a, 1842f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(60547u, 24u)], -683f, arg_1.b.x, 166f), vec4<f32>(arg_1.d.a, arg_1.d.a, 647f, global3[_wgslsmith_index_u32(u_input.b, 24u)])) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 315f, -2724f, -1000f), vec4<f32>(318f, -359f, global3[_wgslsmith_index_u32(u_input.b, 24u)], 1131f)))))));
    let var_1 = Struct_4(arg_1, Struct_1(-2805f, select(countOneBits(1u), u_input.b << (11197u % 32u), false)), arg_1, 1i);
    global1 = array<Struct_3, 1>();
    return _wgslsmith_dot_vec4_u32(~(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(arg_1.c, var_1.b.b, u_input.a, var_1.b.b), vec4<u32>(u_input.a, var_1.a.d.b, var_1.c.d.b, u_input.b)), ~vec4<u32>(arg_1.d.b, 37061u, 20369u, 1u), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, var_1.c.c, u_input.b))) >> (vec4<u32>(~u_input.a, reverseBits(0u), ~u_input.b, var_1.a.c) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_add_u32(~arg_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.c.c), vec2<u32>(u_input.b, var_1.a.d.b))), abs(~(arg_1.d.b << (u_input.b % 32u))), var_1.a.d.b, ~27013u));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec3<f32> {
    let var_0 = ~vec3<u32>(106502u, ~4294967295u, arg_2);
    global3 = array<f32, 24>();
    let var_1 = ~(~vec4<u32>(_wgslsmith_add_u32(~8435u, arg_0.b), _wgslsmith_mult_u32(41613u, arg_0.b), func_2(arg_0.a < arg_0.a, Struct_2(108f, vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], arg_0.a, global3[_wgslsmith_index_u32(4294967295u, 24u)]), 92447u, Struct_1(global3[_wgslsmith_index_u32(u_input.b, 24u)], var_0.x), global2.x)), _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(1u, arg_2))));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.b, 24u)] + arg_0.a)) - _wgslsmith_f_op_f32(ceil(-158f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1596f, global3[_wgslsmith_index_u32(var_1.x, 24u)], -2320f) * vec3<f32>(108f, global3[_wgslsmith_index_u32(var_1.x, 24u)], 1360f)))), ~(~arg_0.b), arg_0, -28985i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 24u)]))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.x, arg_2, arg_0.b, 25434u)), var_1)), Struct_2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~var_1.x, 24u)] * 289f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1039f)), global3[_wgslsmith_index_u32(min(1u, 1u), 24u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, u_input.b), 24u)] + 1f), global3[_wgslsmith_index_u32(0u, 24u)]), ~1u, arg_0, arg_1), min(countOneBits(global2.x), u_input.c));
    var_2 = Struct_4(Struct_2(1352f, vec3<f32>(-1153f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.a), -1291f), arg_0.a), 0u, arg_0, 22415i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.c.d.a)))), reverseBits(~(~u_input.a))), Struct_2(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b.x)))), vec3<f32>(arg_0.a, var_2.c.a, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(19804u, 24u)])), select(abs(u_input.b) ^ 0u, var_2.c.d.b, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), var_2.a.d, _wgslsmith_mult_i32(abs(2147483647i), 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-2147483647i), var_2.c.e, _wgslsmith_dot_vec2_i32(u_input.e, abs(u_input.e)), -30446i), _wgslsmith_mult_vec4_i32(vec4<i32>(-arg_1, 0i | arg_1, ~global2.x, -1i), vec4<i32>(~(-44712i), ~global2.x, firstTrailingBit(65742i), abs(u_input.c)))));
    return _wgslsmith_f_op_vec3_f32(var_2.a.b - var_2.c.b);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(441f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(753f, func_2(false, Struct_2(arg_0, vec3<f32>(-304f, 670f, -229f), arg_1.x, Struct_1(arg_0, u_input.b), u_input.c))), 88508i, firstLeadingBit(~4294967295u)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2, u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 4294967295u, arg_2), vec4<u32>(arg_2, arg_2, arg_1.x, 1u))), arg_1.x, arg_2), Struct_1(1146f, (1u << (1u % 32u)) | _wgslsmith_sub_u32(u_input.a, ~6127u)), ~(-1i) ^ (reverseBits(global2.x) >> (~66889u % 32u)));
    global3 = array<f32, 24>();
    let var_1 = Struct_2(-1262f, var_0.b, var_0.d.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1f))), arg_2), global2.x);
    global2 = vec2<i32>(0i, -global2.x);
    var var_2 = !any(select(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), vec3<bool>(11332u >= var_0.c, false, true), arg_2 > (0u << (0u % 32u))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 1>();
    global3 = array<f32, 24>();
    let var_0 = Struct_1(-140f, _wgslsmith_div_u32(min(firstLeadingBit(~u_input.a), u_input.a), 45494u));
    var var_1 = Struct_4(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-397f, -932f)), -295f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b, 24u)]) + -798f))), (select(vec3<u32>(0u, 4294967295u, 47880u), vec3<u32>(10688u, 8175u, var_0.b), true) ^ ~vec3<u32>(4294967295u, var_0.b, u_input.a)) ^ vec3<u32>(~0u, ~var_0.b, firstTrailingBit(109397u)), _wgslsmith_div_u32(var_0.b, ~u_input.a)), var_0, Struct_2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~1u, 24u)] * -493f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, -762f, -1431f)), _wgslsmith_mult_u32(u_input.a, abs(var_0.b) & u_input.b), func_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(var_0.b, 24u)]))), max(vec3<u32>(var_0.b, 30094u, u_input.b), abs(vec3<u32>(0u, 0u, 84230u))), 107919u).d, _wgslsmith_mod_i32(~firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.c, u_input.d, 25486i), ~vec4<i32>(2147483647i, 2147483647i, global2.x, global2.x)))), 1i);
    var var_2 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), all(vec2<bool>(true, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), true)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_0.a) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec3<bool>(select(false, all(vec2<bool>(false, false)), false), select(all(vec4<bool>(false, true, false, true)), select(true, true, false), true), true)));
    var var_3 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 0u, u_input.b, ~var_1.a.d.b) << (select(countOneBits(vec4<u32>(21245u, var_0.b, 1u, 25016u)), vec4<u32>(var_0.b, 72860u, var_0.b, var_1.b.b), true) % vec4<u32>(32u)), select(~abs(vec4<u32>(4512u, 4294967295u, var_1.c.c, 79061u)), abs(vec4<u32>(21946u, 4294967295u, u_input.a, 0u)), !var_2.x)), var_0.b ^ (func_1(675f, ~vec3<u32>(4294967295u, 4294967295u, 14290u), var_1.a.d.b).c >> (~var_0.b % 32u)));
    var_1 = Struct_4(var_1.c, Struct_1(-1000f, firstTrailingBit(1u)), Struct_2(global3[_wgslsmith_index_u32(36526u, 24u)], var_1.a.b, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1849f), vec3<u32>(~var_0.b, 4294967295u, _wgslsmith_add_u32(var_1.b.b, var_1.b.b)), 0u).d.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 24u)], 1000f)), abs(u_input.a)), -u_input.e.x), _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.d, 65886i, u_input.c, 1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.c.e, global2.x, var_1.d, var_1.d), vec4<i32>(u_input.c, u_input.c, 2147483647i, 27982i) | vec4<i32>(-2733i, global2.x, global2.x, var_1.d)))));
    let var_4 = func_1(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(func_2(var_2.x, Struct_2(_wgslsmith_f_op_f32(min(1218f, global3[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(5602u, 24u)], 1156f), vec3<f32>(-2003f, var_0.a, -1000f))), 1u, var_0, 0i)), 24u)])), vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(select(16014u, u_input.a, false), var_3.x << (1u % 32u))), 1u, 4595u | select(1u ^ u_input.a, _wgslsmith_div_u32(u_input.b, 62108u), var_1.d != -49404i)), 4294967295u | ~(~_wgslsmith_div_u32(u_input.b, var_0.b))).e;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(~reverseBits(33678i))), firstTrailingBit(vec4<i32>(firstTrailingBit(i32(-1i) * -1i), ~min(9115i, 1i), u_input.e.x, _wgslsmith_add_i32(var_4, 0i << (0u % 32u)))));
}

