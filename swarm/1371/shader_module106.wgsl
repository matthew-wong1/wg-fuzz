struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 29>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    return _wgslsmith_mod_i32(reverseBits(u_input.b.x) >> (max(global1[_wgslsmith_index_u32(4294967295u, 29u)], ~1u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(min(-1i, 0i), -7484i, u_input.c.x, -u_input.c.x) & min(u_input.c, max(vec4<i32>(2147483647i, u_input.b.x, u_input.c.x, -2147483647i), u_input.c)), u_input.c));
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = u_input.a;
    var var_1 = -_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, _wgslsmith_div_i32(u_input.b.x, 0i)), func_3()) & _wgslsmith_clamp_i32(-58335i >> (_wgslsmith_mod_u32(1u, var_0.x) % 32u), min(-u_input.c.x, _wgslsmith_div_i32(1i, u_input.c.x)) ^ min(u_input.b.x, ~2147483647i), _wgslsmith_dot_vec3_i32(u_input.c.zyx, vec3<i32>(-18661i, u_input.b.x | u_input.c.x, ~(-46766i))));
    let var_2 = !vec4<bool>(true, false, !(u_input.a.x != ~arg_0), u_input.b.x >= ~(u_input.b.x << (arg_0 % 32u)));
    var var_3 = -1162f;
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-161f, -1265f, 264f))))), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2273f - -453f))) - 241f), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(-10231i, u_input.c.x, 100408i)), vec3<i32>(u_input.b.x, -20487i, -1i)), u_input.b.x, 7077i)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1805f, -210f)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(select(-621f, 2193f, true)))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(floor(-250f)))), -u_input.c.zxw), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-322f, -1214f, -469f), vec3<f32>(-768f, 1025f, -394f), vec3<bool>(false, var_2.x, var_2.x))))), arg_1, -376f, u_input.c.xxz), ~u_input.c.xw, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-223f - 737f)), 880f, true)), -1506f));
    return _wgslsmith_f_op_f32(f32(-1f) * -168f);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(99013u, global1[_wgslsmith_index_u32(0u, 29u)])))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-106f - 412f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(332f + 156f), -346f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2129f + -609f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -1767f, 315f, var_0.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, 1017f, -582f)))))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(func_2(countOneBits(~16059u), ~94897u)), 1234f, 1f));
    var var_1 = firstLeadingBit(_wgslsmith_add_vec2_i32(~(~min(u_input.b, u_input.c.zz)), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)) & u_input.c.wz));
    global0 = 4294967295u;
    var var_2 = true;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, var_0.x)), _wgslsmith_f_op_f32(floor(168f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), -1088f)), _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, ~u_input.a.wz), 29u)], 15023u), -216f, select(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, -10329i, -3131i), -var_1.x, u_input.c.x), select(~u_input.c.wyz, _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, -8557i, -1i), u_input.c.xxy), any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)) ^ u_input.c.yxx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    global2 = arg_0.b.b;
    global0 = 4294967295u;
    global2 = func_1(reverseBits(~(~10399u))).b >> (countOneBits(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.a.x, arg_1.b), 68892u)) % 32u);
    var var_0 = Struct_3(arg_1, Struct_2(arg_0.b.a, 62862u, -510f, countOneBits(u_input.c.yzx)), arg_1, u_input.c.wz >> (select(min(~vec2<u32>(global1[_wgslsmith_index_u32(70773u, 29u)], 15224u), select(vec2<u32>(global1[_wgslsmith_index_u32(197u, 29u)], arg_0.c.b), vec2<u32>(0u, 4294967295u), vec2<bool>(false, true))), u_input.a.yw, true) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(158f, arg_0.b.c), arg_0.c.a.yx)) + _wgslsmith_f_op_vec2_f32(arg_1.a.xz - vec2<f32>(2184f, 2134f))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1017f, -463f))))));
    var var_1 = _wgslsmith_div_vec2_u32(~firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a.xx, vec2<u32>(8816u, 4294967295u))), countOneBits(_wgslsmith_sub_vec2_u32(u_input.a.zx, firstLeadingBit(~u_input.a.xw))));
    return -47039i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, func_4(Struct_3(Struct_2(vec3<f32>(-533f, -1465f, -1223f), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], -1047f, vec3<i32>(-27024i, u_input.b.x, u_input.b.x)), func_1(u_input.a.x), Struct_2(vec3<f32>(-432f, -185f, 1616f), 39084u, -1799f, u_input.c.xxx), u_input.b ^ vec2<i32>(u_input.c.x, u_input.b.x), vec2<f32>(1312f, 1376f)), func_1(45808u))), u_input.c);
    let var_1 = all(vec2<bool>(false, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)))) && ((_wgslsmith_sub_u32(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 29u)], 29u)]) > func_1(_wgslsmith_dot_vec3_u32(u_input.a.zzy, u_input.a.wzz)).b) && select(true, false, global1[_wgslsmith_index_u32(1u, 29u)] > global1[_wgslsmith_index_u32(1u, 29u)]));
    global1 = array<u32, 29>();
    global2 = 10474u;
    let var_2 = u_input.a.zww;
    let var_3 = select(var_1, var_1, var_1);
    global0 = 0u;
    var var_4 = ~_wgslsmith_mod_u32(u_input.a.x, global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 0u), 29u)] >> (0u % 32u)), 29u)]);
    var_4 = select(~global1[_wgslsmith_index_u32(~(var_2.x | (var_2.x << (var_2.x % 32u))), 29u)], _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(var_2, select(u_input.a.xxx, vec3<u32>(global1[_wgslsmith_index_u32(var_2.x, 29u)], var_2.x, u_input.a.x), var_1)), u_input.a.zyy), !any(!select(vec4<bool>(false, false, true, var_3), vec4<bool>(false, false, var_3, var_3), vec4<bool>(var_1, var_3, var_1, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(countOneBits(~2773u), abs(global1[_wgslsmith_index_u32(1u, 29u)] & 7222u)), var_0.x);
}

