struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(350f, 237f, 621f, 1425f, 1000f, -370f, -464f, -800f, 780f, 704f, 124f, -1241f, -2639f, -175f, -327f, 534f, -749f, -2305f, -2047f, 955f, 1154f, 1000f, 299f);

var<private> global1: array<bool, 28>;

var<private> global2: f32 = 167f;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global2 = global0[_wgslsmith_index_u32(~1u, 23u)];
    global0 = array<f32, 23>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(511f, -2054f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.d, 23u)])) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_1.a) - _wgslsmith_f_op_f32(-arg_1.c))))), -1694f, arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1578f * 1f)));
    global0 = array<f32, 23>();
    var_0 = vec4<f32>(-1338f, _wgslsmith_div_f32(356f, _wgslsmith_f_op_f32(1000f - 871f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-125f, global0[_wgslsmith_index_u32(76262u, 23u)]))), var_0.x);
    return Struct_1(arg_1.a, u_input.b, 1975f, _wgslsmith_add_u32(82738u, 1u));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    global2 = 1060f;
    global1 = array<bool, 28>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1214f, arg_0.b.c, !all(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b.d, 28u)], global1[_wgslsmith_index_u32(14023u, 28u)], true))))));
    var var_1 = global1[_wgslsmith_index_u32(arg_0.b.b.x, 28u)];
    global1 = array<bool, 28>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1075f))), -794f);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<f32>) -> u32 {
    global1 = array<bool, 28>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-280f)) - global0[_wgslsmith_index_u32(arg_1.b.x, 23u)]), arg_2.x, _wgslsmith_f_op_f32(-arg_1.a), global0[_wgslsmith_index_u32(17970u, 23u)]);
    global0 = array<f32, 23>();
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~24023i, u_input.a.x, abs(-20569i), ~956i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -59590i, u_input.c.x, -2147483647i) & vec4<i32>(-1i, 33236i, -2147483647i, -49350i), vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x) & vec4<i32>(7088i, u_input.a.x, u_input.c.x, 7910i))) ^ max(reverseBits(vec4<i32>(u_input.a.x, u_input.c.x, 0i, u_input.a.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 1761i, 1i, 27269i), vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, 0i))), -(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -13804i, u_input.c.x, -16803i), vec4<i32>(1i, -1i, u_input.c.x, u_input.a.x)) >> (vec4<u32>(~arg_0, arg_0, arg_1.b.x, _wgslsmith_sub_u32(u_input.d, u_input.b.x)) % vec4<u32>(32u))));
    var var_2 = Struct_1(func_2(vec4<i32>(_wgslsmith_div_i32(39421i, -1i), 0i ^ var_1.x, reverseBits(2147483647i), 15462i) ^ ~vec4<i32>(-37050i, var_1.x, 2147483647i, u_input.a.x), func_2((vec4<i32>(u_input.a.x, -2147483647i, u_input.c.x, u_input.a.x) ^ vec4<i32>(-5199i, u_input.c.x, -1i, var_1.x)) << (vec4<u32>(arg_1.d, arg_0, 4294967295u, arg_0) % vec4<u32>(32u)), arg_1)).c, _wgslsmith_clamp_vec2_u32(~(vec2<u32>(arg_0, arg_1.d) & u_input.b), u_input.b, func_2(vec4<i32>(8946i, 13152i, var_1.x, -20260i), func_2(vec4<i32>(-1i, var_1.x, -2147483647i, -2147483647i), Struct_1(arg_3.x, u_input.b, arg_2.x, u_input.d))).b) >> (arg_1.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(1351f * 594f)))), ~(~reverseBits(1u)));
    return _wgslsmith_sub_u32(~4294967295u, 0u);
}

fn func_1() -> f32 {
    let var_0 = func_2(-vec4<i32>(-2147483647i, u_input.a.x, ~(-u_input.c.x), -firstTrailingBit(1i)), Struct_1(-706f, vec2<u32>(u_input.d, min(_wgslsmith_sub_u32(13502u, u_input.b.x), 41957u)), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d, ~u_input.b.x), 23u)], 2816u));
    global1 = array<bool, 28>();
    global2 = _wgslsmith_f_op_f32(min(var_0.a, var_0.c));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2948f) + global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~75128u, countOneBits(u_input.d))), 23u)]);
    global0 = array<f32, 23>();
    return _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(func_4(var_0.b.x, Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.d, u_input.d ^ 1u), 23u)], var_0.b, -460f, firstTrailingBit(~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 23u)], Struct_1(var_0.a, vec2<u32>(4294967295u, 25822u), 1624f, var_0.d), vec4<i32>(-2147483647i, u_input.a.x, u_input.c.x, 1i)), 62929i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1050f, -311f))))), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-103f, 393f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1569f, -336f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], -1044f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(34898u, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]) - vec2<f32>(404f, 557f))))));
    global2 = _wgslsmith_f_op_f32(func_1());
    let var_1 = any(select(vec4<bool>(true & global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.d), 28u)], global1[_wgslsmith_index_u32(17637u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], !global1[_wgslsmith_index_u32(u_input.d, 28u)] && false), !vec4<bool>(u_input.a.x >= u_input.a.x, global1[_wgslsmith_index_u32(~u_input.d, 28u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.d, 33870u, u_input.d, 48206u)), 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)]), select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(26025u, 28u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 28u)], true, global1[_wgslsmith_index_u32(4294967295u, 28u)])), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(62202u, 28u)], true), false), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 28u)]), vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(35498u, 28u)])), true, true, 14028i >= u_input.a.x), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(30447u, 28u)]))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)])) * var_0.x)))));
    global0 = array<f32, 23>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(589f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), ~u_input.b, global0[_wgslsmith_index_u32(1u, 23u)], 1u);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(941f))), var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-413f, _wgslsmith_f_op_f32(-var_0.x))), 888f)), var_3, -vec4<i32>(min(u_input.c.x, abs(-1i)), u_input.a.x, 1i, ~1i));
    var var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_4.b.b.x, 23u)], var_3.a), vec2<f32>(var_4.b.c, -1261f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(646f, 1843f), vec2<f32>(var_4.a, -264f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1298f, var_0.x)), any(vec3<bool>(global1[_wgslsmith_index_u32(var_4.b.b.x, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(-561f, var_4.b.a)))), !(!(!var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.b.x);
}

