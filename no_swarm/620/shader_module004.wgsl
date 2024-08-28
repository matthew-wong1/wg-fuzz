struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, false, true, true, false, true, true, true, true, false, true, true, false, true, true, false, false, true, true, false, true, false, true, false, false, true);

var<private> global1: array<bool, 8>;

var<private> global2: array<i32, 15> = array<i32, 15>(-1976i, 6006i, 0i, 5903i, -53328i, -29165i, 74821i, 29957i, 49851i, -13353i, 1i, 22416i, 0i, -5493i, 1464i);

var<private> global3: array<f32, 27> = array<f32, 27>(-1389f, -1200f, 151f, -1462f, 1770f, -2338f, -1497f, 1177f, -1391f, -681f, -1138f, 1089f, -1365f, 1000f, -518f, -967f, 564f, 887f, 1806f, -373f, -250f, -679f, -334f, -694f, 588f, 371f, 1024f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(u_input.d.x, 27u)], -1958f) + vec4<f32>(arg_0.b, -1000f, -1242f, global3[_wgslsmith_index_u32(arg_2, 27u)])) + vec4<f32>(355f, 1165f, 1091f, -665f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(1u, 27u)], -209f, 216f, arg_0.b), vec4<f32>(-1586f, -1020f, arg_0.b, -373f), global1[_wgslsmith_index_u32(23044u, 8u)]))))) - vec4<f32>(239f, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d.x, 1u), 27u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.b, 1000f, arg_1.b.x)))), _wgslsmith_f_op_f32(min(arg_0.b, 1000f)))), _wgslsmith_mult_vec3_i32(select(-(~vec3<i32>(arg_0.a.x, 2147483647i, 2147483647i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, global2[_wgslsmith_index_u32(68377u, 15u)], u_input.a), vec3<i32>(arg_0.a.x, 1i, global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<i32>(u_input.b, -2147483647i, global2[_wgslsmith_index_u32(18549u, 15u)])), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 27u)] > -921f, any(arg_1.b.yyy), global1[_wgslsmith_index_u32(~0u, 8u)])), vec3<i32>(u_input.a, u_input.b, _wgslsmith_mod_i32(15682i, -8193i))));
    var var_1 = -select(min(vec2<i32>(u_input.b & 5353i, arg_0.a.x), vec2<i32>(u_input.b | -2147483647i, ~31470i)), vec2<i32>(-1855i, _wgslsmith_dot_vec3_i32(var_0.c, var_0.c) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, u_input.a, -2147483647i, -21473i), vec4<i32>(-2147483647i, arg_1.a, u_input.b, arg_1.a))), vec2<bool>(1006f <= _wgslsmith_f_op_f32(floor(1767f)), false));
    global0 = array<bool, 26>();
    let var_2 = all(!arg_1.b);
    var var_3 = arg_2;
    return ~1i;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = firstTrailingBit(~firstLeadingBit(vec2<u32>(0u, u_input.d.x) | vec2<u32>(u_input.d.x, 0u)));
    var var_1 = -67937i;
    global3 = array<f32, 27>();
    global2 = array<i32, 15>();
    let var_2 = Struct_2(abs(_wgslsmith_mult_i32(func_3(Struct_4(vec2<i32>(-12941i, -17915i), global3[_wgslsmith_index_u32(u_input.d.x, 27u)]), Struct_2(arg_0.x, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], true, true)), ~var_0.x), -(970i & u_input.b))), vec4<bool>(all(select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.x, 26u)]), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(u_input.d.x, 26u)])), true, global0[_wgslsmith_index_u32(0u, 26u)], !select(select(false, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], false), !global0[_wgslsmith_index_u32(u_input.d.x, 26u)], true)));
    return Struct_1(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 59244u), 27u)], _wgslsmith_div_f32(-214f, global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), global3[_wgslsmith_index_u32(33610u, 27u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(21038u, 27u)] - global3[_wgslsmith_index_u32(var_0.x, 27u)])) * vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 27u)] + global3[_wgslsmith_index_u32(0u, 27u)]), 316f, global3[_wgslsmith_index_u32(~var_0.x, 27u)], -1614f))), ~vec3<i32>(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -6502i), arg_0), abs(firstTrailingBit(u_input.b))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    global1 = array<bool, 8>();
    global3 = array<f32, 27>();
    let var_0 = func_2(arg_1.a.c.xy);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f), -1089f);
    var var_2 = Struct_3(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(~1i, _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a)), -(~var_0.c.yz))));
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    var var_0 = func_2(_wgslsmith_sub_vec2_i32(~vec2<i32>(37799i, global2[_wgslsmith_index_u32(arg_0.x, 15u)]), -vec2<i32>(1i, u_input.a) ^ countOneBits(vec2<i32>(u_input.b, 0i))) | vec2<i32>(select(arg_3.a.c.x, arg_1.a, true), ~func_2(arg_3.a.c.xy).c.x));
    var var_1 = arg_3;
    let var_2 = ~countOneBits(vec3<i32>(firstLeadingBit(-30592i), ~(~var_1.a.c.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(38367i, var_0.c.x), ~u_input.a)));
    global0 = array<bool, 26>();
    let var_3 = func_1(arg_1, arg_3);
    return var_0.a;
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(556f, -178f, global3[_wgslsmith_index_u32(u_input.c.x, 27u)], global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 27u)], -170f, 1194f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, 590f, global3[_wgslsmith_index_u32(u_input.c.x, 27u)], global3[_wgslsmith_index_u32(u_input.d.x, 27u)]))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 27u)], -268f, global3[_wgslsmith_index_u32(1u, 27u)]) - vec3<f32>(-308f, global3[_wgslsmith_index_u32(u_input.d.x, 27u)], global3[_wgslsmith_index_u32(u_input.c.x, 27u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], -2064f) - vec3<f32>(global3[_wgslsmith_index_u32(37226u, 27u)], -2231f, 282f)))))), vec2<f32>(243f, global3[_wgslsmith_index_u32(8749u, 27u)]), _wgslsmith_f_op_f32(473f * global3[_wgslsmith_index_u32(64862u, 27u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2038f, _wgslsmith_f_op_f32(trunc(-235f))) * vec2<f32>(-448f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), _wgslsmith_div_f32(-1151f, 738f), any(vec2<bool>(false, global1[_wgslsmith_index_u32(41157u, 8u)]))))))));
    let x = u_input.a;
    s_output = func_5(true, vec4<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.d.x, 15u)], -38523i, 2720i), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 15u)], 1823i, global2[_wgslsmith_index_u32(u_input.c.x, 15u)])), countOneBits(vec4<i32>(u_input.b, u_input.a, 0i, -31880i))), ~global2[_wgslsmith_index_u32(17619u, 15u)], global2[_wgslsmith_index_u32(37600u, 15u)], global2[_wgslsmith_index_u32(firstTrailingBit(func_4(~u_input.d.yxz, Struct_2(-32441i, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(47578u, 8u)])), func_1(Struct_2(1i, vec4<bool>(true, global0[_wgslsmith_index_u32(121701u, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)])), Struct_3(Struct_1(1u, vec4<f32>(var_0.x, global3[_wgslsmith_index_u32(1u, 27u)], -1000f, global3[_wgslsmith_index_u32(33785u, 27u)]), vec3<i32>(-15336i, 1i, -37349i)))), Struct_3(Struct_1(u_input.d.x, vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 27u)], 481f, global3[_wgslsmith_index_u32(u_input.d.x, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<i32>(global2[_wgslsmith_index_u32(57721u, 15u)], u_input.b, global2[_wgslsmith_index_u32(50831u, 15u)]))))), 15u)]));
}

