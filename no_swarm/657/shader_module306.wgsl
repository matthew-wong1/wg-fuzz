struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(4294967295u, 35149u, 13648u, 88352u, 33840u, 20121u, 45104u, 72397u, 90914u, 39290u, 65220u, 1u, 0u, 1u, 4294967295u, 1u, 8454u, 0u, 8411u, 8435u, 1u, 141498u, 19465u, 4294967295u, 23522u, 1u, 1u, 4294967295u, 33478u);

var<private> global1: array<i32, 15> = array<i32, 15>(4530i, 2147483647i, 1543i, 2147483647i, -1i, 20983i, -29633i, -1i, 1i, i32(-2147483648), i32(-2147483648), 2147483647i, 27157i, -1i, 0i);

var<private> global2: u32;

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-799f)), 1462f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + arg_1.c.x))))));
    var var_1 = _wgslsmith_div_f32(-364f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2249f)) - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-226f, 1158f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2267f - _wgslsmith_div_f32(arg_1.c.x, var_0.x)) + -169f)));
    global1 = array<i32, 15>();
    let var_2 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false))));
    global3 = array<Struct_1, 4>();
    return ~global0[_wgslsmith_index_u32(4294967295u, 29u)];
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = ~min(vec4<u32>(reverseBits(u_input.b), abs(1u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74233u, 29u)], 29u)], 29u)], ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)])), ~(~(vec4<u32>(26283u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22242u, 29u)], 29u)], 0u, 10858u) ^ vec4<u32>(0u, 4294967295u, u_input.b, 1u))));
    global2 = ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1141f))), Struct_1(0i, (vec2<i32>(global1[_wgslsmith_index_u32(var_1.x, 15u)], u_input.a) & vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 39971i)) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-431f, -414f) - vec2<f32>(-145f, -253f)))), vec3<i32>(27775i, 1i, 56723i ^ global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51015u, 29u)], 15u)])));
    let var_2 = _wgslsmith_mod_i32(u_input.a, ~(-2147483647i));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-936f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1995f * -2303f) + -1095f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f) - -843f), _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1327f, -777f, true)), -856f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-336f, 565f) + vec2<f32>(-1218f, 811f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(853f, 1592f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(277f, 440f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    return Struct_1(-8898i >> (func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x), var_3.x), Struct_1(u_input.a, -vec2<i32>(var_2, 1148i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 414f)), reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], 23503i, 44147i)))) % 32u), -vec2<i32>(u_input.a, max(-2147483647i, 0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(710f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1002f))))) - vec2<f32>(var_3.x, var_3.x)), vec3<i32>(_wgslsmith_mult_i32(12751i, ~(~var_2)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_2), vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25573u, 29u)], 15u)], -18901i), vec2<i32>(var_2, 57460i)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_2), vec2<i32>(-14924i, 0i)))), _wgslsmith_sub_i32(max(-1i, u_input.a) & _wgslsmith_mult_i32(var_2, -80962i), 53053i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = firstLeadingBit(firstLeadingBit(~(vec2<u32>(6800u, global0[_wgslsmith_index_u32(55559u, 29u)]) | ~vec2<u32>(global0[_wgslsmith_index_u32(30855u, 29u)], 1u))));
    let var_1 = vec4<i32>(-1i) * -countOneBits(arg_0);
    global1 = array<i32, 15>();
    let var_2 = var_1.x > abs(u_input.a);
    let var_3 = 20578u;
    return Struct_1(10636i, arg_0.wy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.c.x)))), arg_3.c.x), firstTrailingBit(arg_0.zwx));
}

fn func_1() -> f32 {
    global0 = array<u32, 29>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = func_4(select(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 76405i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 15u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 15u)]), vec4<i32>(global1[_wgslsmith_index_u32(0u, 15u)], 2147483647i, 2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 29u)], 15u)]))) & ~vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 15u)], -15414i, -1i), vec4<i32>(global1[_wgslsmith_index_u32(31387u, 15u)], 0i << (0u % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, global1[_wgslsmith_index_u32(12023u, 15u)]), u_input.a), -18902i), var_0.x), true, !vec4<bool>(true, true, all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, false, false))), !all(vec4<bool>(true, true, var_0.x, var_0.x))), func_2());
    let var_2 = ~((_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 29u)], 23869u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45820u, 29u)], 29u)], 29u)]), vec4<u32>(30604u, global0[_wgslsmith_index_u32(u_input.b, 29u)], 11548u, u_input.b))) << (u_input.b % 32u)) | ~_wgslsmith_add_u32(~31754u, firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)])));
    var var_3 = -14753i;
    return -357f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 15>();
    var var_0 = global3[_wgslsmith_index_u32(~(~4294967295u), 4u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(func_2().c.x, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -2093f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1528f - _wgslsmith_f_op_f32(-443f * -221f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_1), var_0.d, _wgslsmith_sub_vec2_u32(vec2<u32>(~abs(70545u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(20624u, 29u)], u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), countOneBits(1u), all(vec2<bool>(false, true)))), countOneBits(~(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], u_input.b)))), var_1.yyz, -709f);
}

