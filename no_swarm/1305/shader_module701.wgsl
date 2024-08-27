struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-2907i, 2466i, 17424i, 0i, -38471i, 8449i, -11035i, 2147483647i, 19393i, i32(-2147483648), -15919i, 0i, i32(-2147483648), 2147483647i, 0i, 2147483647i, i32(-2147483648), i32(-2147483648), 44042i, 19431i, 2147483647i, -45644i, 1i, 1i, 1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    var var_0 = 10687i;
    var_0 = u_input.b;
    global0 = array<i32, 25>();
    var_0 = 1i;
    global0 = array<i32, 25>();
    return Struct_1(~(~_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(61395u, 1u, 42870u, 25762u), vec4<u32>(17364u, 1u, 1u, 4294967295u)))), ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.c, 2147483647i, -72649i) | vec4<i32>(21643i, u_input.a, -16408i, global0[_wgslsmith_index_u32(1u, 25u)]), vec4<i32>(u_input.b, u_input.c, -1i, u_input.c)), ~countOneBits(vec4<i32>(45952i, global0[_wgslsmith_index_u32(4294967295u, 25u)], -4901i, global0[_wgslsmith_index_u32(1u, 25u)]))), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(55736u, 0u)), 25u)], -1i & (global0[_wgslsmith_index_u32(1u, 25u)] >> (1u % 32u)), u_input.a, min(global0[_wgslsmith_index_u32(~8418u, 25u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(78681u, 25u)], global0[_wgslsmith_index_u32(3230u, 25u)], global0[_wgslsmith_index_u32(48079u, 25u)]), vec4<i32>(0i, global0[_wgslsmith_index_u32(54714u, 25u)], 43756i, global0[_wgslsmith_index_u32(85170u, 25u)])))) >> (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), i32(-1i) * -firstLeadingBit(global0[_wgslsmith_index_u32(13326u, 25u)]));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    global0 = array<i32, 25>();
    var var_0 = abs(max(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 24121u, 1u), vec3<u32>(1u, 0u, 4294967295u)), reverseBits(func_1().a), 0u), firstTrailingBit(vec3<u32>(1u, 1u, 1u))));
    global0 = array<i32, 25>();
    var var_1 = Struct_1(var_0.x, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(var_0.x, 25u)])), abs(-70670i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 20463i, global0[_wgslsmith_index_u32(var_0.x, 25u)], 14443i), select(vec4<i32>(u_input.c, 7355i, 12385i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(87128u, 25u)], u_input.c, global0[_wgslsmith_index_u32(17327u, 25u)], -2147483647i), vec4<bool>(true, arg_0, true, true))), u_input.a), reverseBits(abs(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)], 3692i, global0[_wgslsmith_index_u32(var_0.x, 25u)])))), select(~abs(select(vec4<i32>(-1i, -16333i, u_input.b, u_input.c), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a), vec4<bool>(false, false, arg_0, true))), -vec4<i32>(82008i, _wgslsmith_div_i32(20740i, global0[_wgslsmith_index_u32(1u, 25u)]), -19619i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 0u), 25u)]), select(!select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_1.x), vec4<bool>(arg_0, false, arg_0, false)), select(select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(arg_0, true, arg_1.x, false), vec4<bool>(arg_1.x, true, false, false)), vec4<bool>(arg_0, arg_1.x, false, arg_0), select(vec4<bool>(arg_1.x, true, arg_1.x, arg_0), vec4<bool>(true, true, arg_0, false), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), select(all(vec3<bool>(arg_1.x, arg_0, arg_0)), true, var_0.x <= var_0.x))), reverseBits(38366i));
    let var_2 = 1028f;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2, -236f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec3<f32> {
    global0 = array<i32, 25>();
    let var_0 = -1i;
    global0 = array<i32, 25>();
    var var_1 = max(-_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~(~71166u), 25u)], firstLeadingBit(i32(-1i) * -17592i)), var_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(!arg_2.x, vec3<bool>(true, all(vec3<bool>(arg_2.x, true, arg_2.x)), !arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) + -482f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(699f, 101f, -986f) - arg_1.wyw)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_1.x, 879f))) * _wgslsmith_div_vec3_f32(arg_1.wyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1583f, var_2, 480f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    var var_0 = Struct_2(17955i, func_1(), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(708f, -1417f, 1545f)) + _wgslsmith_f_op_vec3_f32(func_2(vec2<f32>(878f, -351f), vec4<f32>(-705f, 726f, -2952f, -503f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-432f, 703f, -261f), vec3<f32>(-227f, -726f, -366f))), _wgslsmith_div_vec3_f32(vec3<f32>(1097f, -999f, 955f), vec3<f32>(1045f, 480f, -1394f)), true)))))));
    var var_1 = select(~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, -40762i), 47207i), var_0.b.b.x, global0[_wgslsmith_index_u32(firstTrailingBit(var_0.b.a | 4294967295u), 25u)]), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(var_0.b.c.zyx) ^ _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.b.x, -91356i, -43408i), var_0.b.c.xxy), ~countOneBits(var_0.b.b.zyw)), vec3<i32>(~1i, -(~u_input.b), ~(10651i << (0u % 32u)))), vec3<bool>(true, true, true));
    global0 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zx, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-191f, _wgslsmith_f_op_vec3_f32(func_2(var_0.c.zz, vec4<f32>(var_0.c.x, 1167f, 1904f, 1349f), vec2<bool>(false, false))).x))))), 4294967295u, var_0.c.x);
}

