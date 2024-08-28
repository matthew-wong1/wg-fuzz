struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(558f - 808f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global0 = array<i32, 8>();
    let var_1 = ~(~abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 21521u), vec3<u32>(42131u, 68093u, 16017u))));
    global0 = array<i32, 8>();
    let var_2 = abs(-_wgslsmith_sub_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 8u)], -3441i, 0i, 15271i) >> (~vec4<u32>(u_input.b, u_input.b, 4294967295u, 32319u) % vec4<u32>(32u)), -(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], 72018i, global0[_wgslsmith_index_u32(26669u, 8u)], -2147483647i))));
    return all(select(!select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0)), select(!vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, false, false, false), arg_0), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, true, true), arg_0))) || true;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = abs(vec4<i32>(0i, ~(-_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(79951u, 8u)], 0i)), select(global0[_wgslsmith_index_u32(~u_input.b, 8u)] >> (0u % 32u), min(arg_0.d.x, _wgslsmith_dot_vec2_i32(arg_0.d, vec2<i32>(20412i, arg_0.d.x))), true), -1i));
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_1.b.a)) < 2049f;
    var var_2 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(-u_input.a.x, -5805i), 33766i, arg_0.d.x), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -12322i, var_0.x, 0i)), vec4<i32>(u_input.a.x, 21708i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 8u)]) | vec4<i32>(1i, 0i, -1i, global0[_wgslsmith_index_u32(u_input.b, 8u)]))), var_0.yzx, Struct_2(arg_1.b, arg_1.a), arg_1, func_3(arg_0.a.x));
    var var_3 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(22622i, arg_0.d.x), vec2<i32>(arg_0.d.x, var_2.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-84962i, global0[_wgslsmith_index_u32(18u, 8u)], var_2.b.x, -15205i), -vec4<i32>(var_2.b.x, var_2.a, var_0.x, global0[_wgslsmith_index_u32(u_input.b, 8u)])), ~u_input.a.x, -26745i), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, -2147483647i, u_input.a.x, 1i)) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], -40940i, global0[_wgslsmith_index_u32(14396u, 8u)], -11206i), select(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a, u_input.a.x, arg_0.d.x, 2147483647i), vec4<i32>(-1i, u_input.a.x, -37320i, var_0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_2.a, global0[_wgslsmith_index_u32(u_input.b, 8u)], -45604i), vec4<i32>(-23090i, 43858i, -1i, global0[_wgslsmith_index_u32(u_input.b, 8u)])), true)));
    var_2 = Struct_4(var_0.x, _wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, -2147483647i) | -select(var_2.b, var_0.www, true), _wgslsmith_mult_vec3_i32(var_3.wzz, var_3.ywx | var_3.yyz)), Struct_2(Struct_1(arg_0.e, vec4<bool>(8817u > u_input.b, arg_2.x, true, true)), Struct_1(arg_0.b, select(arg_1.b.b, vec4<bool>(arg_1.b.b.x, arg_1.a.b.x, arg_1.b.b.x, var_1), var_2.d.a.b))), arg_1, !(((0u == u_input.b) && any(arg_1.a.b)) | arg_2.x));
    return vec3<i32>(i32(-1i) * -49148i, ~firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(30076u, 8u)]), 38848i)), i32(-1i) * -u_input.a.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<bool>) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, arg_2.d.a.a)), _wgslsmith_f_op_f32(-924f * arg_2.c.b.a))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.a * 1146f))))), arg_2.c.a.a, _wgslsmith_div_f32(arg_2.d.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f + 2256f) - arg_2.c.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.a))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + -716f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(arg_2.c.b.a * arg_2.c.b.a))))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, countOneBits(29532u), _wgslsmith_add_u32(u_input.b, 1u)), vec3<u32>(1u, 4294967295u, u_input.b) | (vec3<u32>(8378u, 0u, 42175u) | firstLeadingBit(~vec3<u32>(0u, 32161u, u_input.b))));
    return ~(~u_input.b) >= ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_add_u32(~var_1.x, 4294967295u));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(1451f - -825f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_f_op_f32(-137f - 1439f))))));
    var_0 = func_4(vec3<i32>(countOneBits(global0[_wgslsmith_index_u32(~4294967295u, 8u)] ^ global0[_wgslsmith_index_u32(~u_input.b, 8u)]), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, -69796i), reverseBits(global0[_wgslsmith_index_u32(4294967295u, 8u)])), max(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 67577i)), vec3<i32>(u_input.a.x, -1704i, 43523i)), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 8u)] ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 8u)], u_input.a.x, 1i, global0[_wgslsmith_index_u32(u_input.b, 8u)]), vec4<i32>(u_input.a.x, u_input.a.x, 28392i, -1i)))), Struct_4(_wgslsmith_add_i32(select(~0i, countOneBits(52313i), false), 36161i), -firstLeadingBit(func_2(Struct_5(vec2<bool>(false, true), 1000f, 559f, vec2<i32>(25108i, 2147483647i), 1733f), Struct_2(Struct_1(1509f, vec4<bool>(false, false, false, false)), Struct_1(345f, vec4<bool>(false, true, false, true))), vec3<bool>(true, false, false))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-524f + 868f), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_f32(max(-520f, -660f)), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(_wgslsmith_div_f32(187f, -1160f), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), Struct_1(1309f, vec4<bool>(true, true, true, true))), true), Struct_4(-2147483647i, -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], -2147483647i, 20176i)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(25642u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])), Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(-2258f)), vec4<bool>(true, false, false, true)), Struct_1(-756f, vec4<bool>(true, true, false, true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-729f)), vec4<bool>(true, false, true, false)), Struct_1(_wgslsmith_f_op_f32(-448f + -702f), vec4<bool>(false, true, false, false))), -9115i >= ~_wgslsmith_mod_i32(u_input.a.x, 2147483647i)), !select(vec2<bool>(any(vec2<bool>(true, false)), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(379f))))))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f * -604f) + _wgslsmith_f_op_f32(342f * 114f)))));
    var var_1 = ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(40033i, -19216i, 56751i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], 6067i, u_input.a.x)), vec4<i32>(global0[_wgslsmith_index_u32(7185u, 8u)], -46691i, global0[_wgslsmith_index_u32(u_input.b, 8u)], u_input.a.x) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 19767u) % vec4<u32>(32u))), -vec4<i32>(23609i, u_input.a.x, 0i, -2147483647i)), min(-countOneBits(vec4<i32>(9669i, 26499i, global0[_wgslsmith_index_u32(0u, 8u)], -72773i)), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-30025i, 60962i, -40776i, -9981i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(-22597i, global0[_wgslsmith_index_u32(54308u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], -2134i)), firstTrailingBit(vec4<i32>(-15875i, u_input.a.x, u_input.a.x, 20027i)))));
    global0 = array<i32, 8>();
    return select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), true), vec4<bool>(true, func_4(vec3<i32>(u_input.a.x, var_1.x, 0i), Struct_4(u_input.a.x, var_1.zzx, Struct_2(Struct_1(2219f, vec4<bool>(true, false, false, true)), Struct_1(1091f, vec4<bool>(false, true, true, false))), Struct_2(Struct_1(-669f, vec4<bool>(false, true, true, false)), Struct_1(-1000f, vec4<bool>(false, true, false, true))), false), Struct_4(-16666i, var_1.zzx, Struct_2(Struct_1(-343f, vec4<bool>(false, false, false, false)), Struct_1(811f, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(-443f, vec4<bool>(false, true, false, false)), Struct_1(-449f, vec4<bool>(true, false, true, false))), false), vec2<bool>(true, true)) && any(vec2<bool>(false, true)), false, func_4(~vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(0u, 8u)], -1i), Struct_4(var_1.x, var_1.zxz, Struct_2(Struct_1(-315f, vec4<bool>(false, true, true, true)), Struct_1(-379f, vec4<bool>(true, false, false, true))), Struct_2(Struct_1(-172f, vec4<bool>(true, false, false, false)), Struct_1(249f, vec4<bool>(true, true, false, true))), false), Struct_4(var_1.x, vec3<i32>(2147483647i, u_input.a.x, 25519i), Struct_2(Struct_1(-514f, vec4<bool>(true, false, false, true)), Struct_1(117f, vec4<bool>(true, false, true, true))), Struct_2(Struct_1(-1743f, vec4<bool>(true, true, true, true)), Struct_1(1047f, vec4<bool>(true, true, false, true))), true), vec2<bool>(false, true)))), vec4<bool>(true, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.x, 0i), u_input.a.x ^ var_1.x) <= var_1.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1891f, -711f, true)), _wgslsmith_div_f32(-509f, 396f)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-932f)), -113f));
    global0 = array<i32, 8>();
    let var_1 = abs(vec2<i32>(u_input.a.x, 63076i));
    let var_2 = true;
    var var_3 = !(select(true, true, !(!var_2)) & false);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(round(var_0.x)), !func_1());
    var var_5 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b, ~u_input.b >> (~27978u % 32u)), _wgslsmith_mult_u32(76681u, 1u)), firstLeadingBit(~_wgslsmith_mult_vec2_u32(~vec2<u32>(34868u, 594u), min(vec2<u32>(u_input.b, 51810u), vec2<u32>(u_input.b, u_input.b)))));
    var_5 = ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 69164u), vec2<u32>(1u, 3225u))) << (~(~max(vec2<u32>(var_5.x, 1u), vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(52722u, reverseBits(~(vec3<u32>(59813u, var_5.x, 14599u) & min(vec3<u32>(36202u, var_5.x, u_input.b), vec3<u32>(32157u, var_5.x, 4294967295u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1143f, 245f), var_0))) * vec2<f32>(var_4.a, var_0.x)) * var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.a, var_0.x, _wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(ceil(var_0.x)))))));
}

