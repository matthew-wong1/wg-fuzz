struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 20>;

var<private> global3: array<f32, 24> = array<f32, 24>(623f, -1976f, -472f, -1720f, 373f, 1700f, -253f, 338f, 418f, 1000f, 1077f, 134f, -822f, -597f, -1266f, -701f, 1502f, -1865f, 491f, -874f, 574f, 587f, -1276f, 184f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-643f + -1321f), 1000f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_div_f32(-361f, _wgslsmith_f_op_f32(step(-110f, -966f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-956f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(7180u, 24u)]), arg_3.x, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1193f, 1269f, global3[_wgslsmith_index_u32(u_input.b.x, 24u)], global3[_wgslsmith_index_u32(85999u, 24u)]), vec4<f32>(-597f, global3[_wgslsmith_index_u32(0u, 24u)], 603f, global3[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec4<bool>(true, true, true, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(673f, arg_3.x, 366f, 234f) * vec4<f32>(arg_3.x, 1788f, -475f, 391f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(757f, arg_3.x, 709f, global3[_wgslsmith_index_u32(arg_0.x, 24u)]), vec4<f32>(arg_3.x, global3[_wgslsmith_index_u32(arg_2, 24u)], arg_3.x, -104f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 24u)] + arg_3.x))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 0u, 32478u), 24u)], global3[_wgslsmith_index_u32(firstLeadingBit(42225u), 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - global3[_wgslsmith_index_u32(arg_2, 24u)])), -1000f)));
    return vec3<i32>(~reverseBits(80631i), min(arg_1.x, 1i), firstTrailingBit(max(_wgslsmith_add_i32(1i, -10478i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1, vec2<i32>(0i, arg_1.x), u_input.a), vec2<i32>(arg_1.x, u_input.a.x)))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_1(24347u, -_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, -u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~u_input.a.x)));
    let var_1 = Struct_1(arg_0, var_0.b);
    global3 = array<f32, 24>();
    let var_2 = Struct_1(~reverseBits(var_1.a), var_0.b);
    let var_3 = min(_wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(var_0.b), _wgslsmith_mult_i32(-25699i, 35259i), ~0i), ~func_3(u_input.b, vec2<i32>(var_0.b, -1i), var_1.a, vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 24u)], -279f, 1000f))) >> (select(~_wgslsmith_add_vec3_u32(u_input.b.wxw, u_input.b.xyz), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.a, var_2.a, 8266u), _wgslsmith_mod_vec3_u32(u_input.b.yxx, u_input.b.zwx)), global1.a.x) % vec3<u32>(32u)), -_wgslsmith_mult_vec3_i32(-firstTrailingBit(vec3<i32>(-1i, var_0.b, -14562i)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -23898i, u_input.a.x), ~vec3<i32>(52020i, var_0.b, var_0.b))));
    return false;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = global2[_wgslsmith_index_u32(0u, 20u)];
    let var_1 = global0.x;
    global0 = vec4<bool>(func_2(1u), true, global1.b.x, global0.x);
    var var_2 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(~51958u, 4294967295u, arg_0 ^ 1u), 1u), ~u_input.a.x);
    let var_3 = 22115u;
    return vec4<bool>(~(~_wgslsmith_clamp_i32(9403i, -8338i, var_0.a.b)) >= _wgslsmith_dot_vec3_i32(min(~var_0.c, vec3<i32>(var_2.b, var_0.d, arg_1.b.b)), abs(vec3<i32>(0i, arg_1.c.b, 1i))), all(select(select(!vec4<bool>(global1.a.x, false, global1.a.x, false), !vec4<bool>(arg_2.a.x, arg_2.a.x, global0.x, true), !arg_2.a.x), vec4<bool>(all(vec3<bool>(arg_2.a.x, global1.a.x, arg_2.b.x)), true, false, u_input.b.x != 1u), true)), !global1.a.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.wy;
    global0 = vec4<bool>(true, true, false, global0.x);
    var var_1 = vec4<u32>(~(u_input.b.x ^ ~1u), var_0.x, _wgslsmith_sub_u32(var_0.x, 0u << ((abs(u_input.b.x) & 37504u) % 32u)), 4294967295u >> (select(u_input.b.x, u_input.b.x << (~40599u % 32u), any(func_1(u_input.b.x, Struct_3(global3[_wgslsmith_index_u32(26651u, 24u)], Struct_1(u_input.b.x, -1i), Struct_1(u_input.b.x, -1i)), Struct_4(global1.a, global0.wy)))) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(967f, global3[_wgslsmith_index_u32(22077u, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<f32>(global3[_wgslsmith_index_u32(0u, 24u)], 946f, global3[_wgslsmith_index_u32(u_input.b.x, 24u)])))) * vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 24u)]), global3[_wgslsmith_index_u32(~u_input.b.x, 24u)], -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -335f), 351f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.x, 24u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1154f, global3[_wgslsmith_index_u32(1u, 24u)], 1145f) * vec3<f32>(829f, global3[_wgslsmith_index_u32(1u, 24u)], 1021f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 24u)], -1524f, -1016f)), all(global0.xw))) - vec3<f32>(461f, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, var_0.x), 24u)], _wgslsmith_f_op_f32(-681f * global3[_wgslsmith_index_u32(0u, 24u)]))))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -249f)))), Struct_1(~countOneBits(var_1.x << (u_input.b.x % 32u)), -2147483647i), Struct_1(~(~firstTrailingBit(59164u)), min(u_input.a.x, 1i)));
    let var_4 = func_3(u_input.b, vec2<i32>(-13130i, _wgslsmith_dot_vec2_i32(~(u_input.a ^ u_input.a), u_input.a)), ~countOneBits(countOneBits(~8352u)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(903f, _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1845u, 24u)])) * -1457f)))));
    let var_5 = global0.xyy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(~(~4294967295u), u_input.b.x), ~var_1.wx), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.a, global3[_wgslsmith_index_u32(var_3.c.a, 24u)], global3[_wgslsmith_index_u32(0u, 24u)], -171f))), vec4<f32>(global3[_wgslsmith_index_u32(var_3.b.a, 24u)], global3[_wgslsmith_index_u32(var_1.x, 24u)], var_3.a, var_2.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_2.x, -2089f, global3[_wgslsmith_index_u32(4294967295u, 24u)]))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(871f, -1422f, 1000f, var_2.x), vec4<f32>(-376f, 398f, 437f, 232f), false)))))), 36028u, func_3(abs(vec4<u32>(4542u, ~u_input.b.x, var_1.x | 1u, ~var_3.b.a)), vec2<i32>(-95966i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(5935i, -3424i), min(u_input.a.x, var_4.x))), ~_wgslsmith_div_u32(~5246u, countOneBits(10516u)), var_2).x);
}

