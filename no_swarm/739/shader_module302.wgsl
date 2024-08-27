struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-853f, -427f, -983f, 601f, -882f, 1070f, -802f, -616f, 738f, 1692f, -532f, 1326f, -143f, -106f, 1620f, 1000f, 901f, 723f, 364f, -3688f, 226f, -386f, 166f, 152f, -1015f, -1255f, -1000f, 1030f, -2112f, 1124f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<bool>) -> f32 {
    global0 = array<f32, 30>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(select(-259f, _wgslsmith_f_op_f32(abs(-627f)), all(select(!vec3<bool>(false, false, arg_2.x), !arg_2.zzw, any(vec2<bool>(arg_1.c.x, arg_2.x)))))));
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(var_0.a, arg_1.d, arg_1.a.x, 1059f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a, arg_1.a.x, arg_1.a.x, 309f), vec4<f32>(-331f, arg_1.d, arg_0, -1000f))))) - _wgslsmith_f_op_vec4_f32(-arg_1.a)) * arg_1.a);
    return _wgslsmith_f_op_f32(1000f + -942f);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(20671u, arg_1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(44832u, arg_1.x), arg_1.wx)), arg_1.xy), arg_1.xw);
    global0 = array<f32, 30>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1288f - 620f), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)]), arg_0.x, arg_0.xz, global0[_wgslsmith_index_u32(28678u, 30u)], vec3<f32>(global0[_wgslsmith_index_u32(63722u, 30u)], 688f, 916f)), vec4<bool>(true, arg_0.x, arg_0.x, true), vec3<bool>(true, arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(407f, Struct_1(vec4<f32>(916f, 607f, -1091f, 1993f), arg_0.x, arg_0.xy, -970f, vec3<f32>(1372f, 1000f, 595f)), vec4<bool>(false, arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, true))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(34405u, 30u)])))), _wgslsmith_div_f32(897f, -282f));
    let var_2 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.yyz, min(vec3<u32>(var_0.x, arg_1.x, 8544u), vec3<u32>(1u, var_0.x, 4294967295u))), ~arg_1.wxw << (arg_1.wyz % vec3<u32>(32u)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1547f - global0[_wgslsmith_index_u32(arg_1.x, 30u)]) - _wgslsmith_f_op_f32(f32(-1f) * -512f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 30u)] - global0[_wgslsmith_index_u32(var_0.x, 30u)]), _wgslsmith_f_op_f32(-557f + global0[_wgslsmith_index_u32(arg_1.x, 30u)]))))), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 30u)], global0[_wgslsmith_index_u32(~firstTrailingBit(var_2.x), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 30u)]))), 898f), arg_0.x || (-u_input.b <= abs(u_input.b)), arg_0.yw, global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2.x, var_0.x), var_2.x)), 30u)], vec3<f32>(_wgslsmith_div_f32(2024f, global0[_wgslsmith_index_u32(arg_1.x, 30u)]), _wgslsmith_f_op_f32(f32(-1f) * -1523f), _wgslsmith_f_op_f32(f32(-1f) * -641f))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 515f, 1000f, -937f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(arg_1.x, 30u)], -314f, global0[_wgslsmith_index_u32(79050u, 30u)]) * vec4<f32>(-399f, global0[_wgslsmith_index_u32(4294967295u, 30u)], -1435f, 568f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 30u)], 749f, global0[_wgslsmith_index_u32(var_0.x, 30u)], global0[_wgslsmith_index_u32(4850u, 30u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], -146f, global0[_wgslsmith_index_u32(28558u, 30u)])))), true, select(vec2<bool>(arg_0.x == true, !arg_0.x), arg_0.xy, vec2<bool>(any(vec3<bool>(true, arg_0.x, true)), all(vec4<bool>(true, false, false, arg_0.x)))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, 1u, arg_1.x), ~vec3<u32>(14554u, var_0.x, var_2.x)), 30u)])), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(17843u, 30u)]) - vec3<f32>(847f, global0[_wgslsmith_index_u32(arg_1.x, 30u)], -1000f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 30u)], global0[_wgslsmith_index_u32(101268u, 30u)], global0[_wgslsmith_index_u32(arg_1.x, 30u)]))))))));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<f32, 30>();
    var var_0 = arg_1.d.a;
    var var_1 = true;
    global0 = array<f32, 30>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.d.d))));
    return arg_1.d.c;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = -vec4<i32>(reverseBits(1i), -u_input.a.x, ~u_input.b, firstLeadingBit(u_input.b));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0, 30u)], -1223f))), global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0), vec3<u32>(3408u, arg_0, 0u) ^ vec3<u32>(arg_0, arg_0, arg_0)), 4294967295u), 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)]), true, vec2<bool>(all(func_4(func_2(vec4<bool>(false, true, false, false), vec4<u32>(59305u, arg_0, arg_0, 38239u)), Struct_2(global0[_wgslsmith_index_u32(arg_0, 30u)], 1594f, Struct_1(vec4<f32>(arg_1.x, -2614f, arg_1.x, 862f), true, vec2<bool>(false, false), arg_1.x, arg_1), Struct_1(vec4<f32>(206f, global0[_wgslsmith_index_u32(27395u, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)], -830f), false, vec2<bool>(false, true), 243f, arg_1)), Struct_2(694f, arg_1.x, Struct_1(vec4<f32>(2557f, global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(67454u, 30u)]), false, vec2<bool>(false, false), global0[_wgslsmith_index_u32(4294967295u, 30u)], vec3<f32>(arg_1.x, arg_1.x, 105f)), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)], arg_1.x, arg_1.x), false, vec2<bool>(false, true), 2446f, arg_1)))), max(~arg_0, ~4294967295u) >= (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), vec4<u32>(arg_0, 10159u, arg_0, arg_0)) & (arg_0 >> (1u % 32u)))), -709f, _wgslsmith_f_op_vec3_f32(func_2(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0) | vec4<u32>(arg_0, arg_0, 0u, arg_0), vec4<u32>(arg_0, 0u, arg_0, 59432u))).d.e - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1335f, global0[_wgslsmith_index_u32(0u, 30u)])))) * _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-969f, global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(13380u, 30u)]), arg_1))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(var_1.a, vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(floor(-327f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1.x)))), 510f))), true, !var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-var_1.e.x))) - _wgslsmith_f_op_f32(step(arg_1.x, 167f))), var_1.a.xxz);
    var_2 = func_2(select(vec4<bool>(true, func_2(vec4<bool>(var_1.c.x, var_1.b, var_1.c.x, var_1.b), reverseBits(vec4<u32>(arg_0, 0u, arg_0, arg_0))).c.c.x, var_1.b, var_1.b), select(!vec4<bool>(var_1.c.x, false, var_1.c.x, true), vec4<bool>(var_2.b, arg_0 < 1u, var_1.c.x, any(vec4<bool>(var_1.b, var_1.b, true, true))), vec4<bool>(false, all(vec3<bool>(true, var_2.c.x, false)), !var_1.b, var_2.c.x)), !vec4<bool>(var_1.c.x, true, var_1.e.x < -1000f, false)), firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(arg_0, arg_0) & arg_0, countOneBits(min(arg_0, arg_0)), arg_0, ~58641u))).c;
    var_2 = func_2(select(select(vec4<bool>(var_1.b, var_1.c.x, true, var_1.c.x), !(!vec4<bool>(var_2.b, var_2.b, var_1.b, var_2.b)), arg_0 == _wgslsmith_div_u32(arg_0, 5892u)), select(!select(vec4<bool>(false, var_1.c.x, true, var_2.c.x), vec4<bool>(false, var_1.b, false, true), vec4<bool>(false, true, false, var_2.c.x)), vec4<bool>(true, var_2.b, !var_2.b, var_2.c.x), !select(vec4<bool>(var_2.c.x, true, var_2.b, var_1.b), vec4<bool>(false, var_2.b, true, var_2.c.x), var_2.c.x)), any(!var_2.c) | all(select(vec3<bool>(var_1.b, true, true), vec3<bool>(true, var_1.b, false), vec3<bool>(true, true, true)))), vec4<u32>(~arg_0, ~(~0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(25569u, 3184u)), select(arg_0, 74943u, u_input.a.x <= 22856i)) | vec4<u32>(51841u, arg_0, ~firstTrailingBit(arg_0), _wgslsmith_add_u32(~4294967295u, arg_0))).d;
    return !(!vec2<bool>(false, any(!vec4<bool>(var_1.b, false, false, true))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>) -> StorageBuffer {
    var var_0 = ~u_input.b;
    let var_1 = vec2<i32>(1i, ~1i);
    let var_2 = Struct_3(_wgslsmith_div_f32(arg_0.a, -1507f));
    let var_3 = abs(_wgslsmith_mod_i32(u_input.b, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 2147483647i, u_input.b), -vec3<i32>(-17589i, 39891i, u_input.b)), ~_wgslsmith_mult_i32(-9280i, u_input.a.x))));
    let var_4 = 2147483647i;
    return StorageBuffer(reverseBits(30840i), -341f, -vec3<i32>(~min(-56636i, u_input.a.x), 1i, -_wgslsmith_mult_i32(1i, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 30>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(1725f)));
    let x = u_input.a;
    s_output = func_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 30u)]))))), vec2<bool>(true, any(func_1(min(1u, 0u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(62960u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], -1658f)))))));
}

