struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(74131u, 40806u, 30864u, 3820u, 5477u, 1u, 4294967295u, 19850u, 11389u, 5057u, 61185u, 4294967295u, 1u, 0u, 0u, 1u, 49840u, 0u, 10115u, 49955u, 48672u, 4283u, 18043u);

var<private> global1: i32;

var<private> global2: array<i32, 30>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_1(arg_2.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f * _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -697f)))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(795f + 763f), -1488f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-896f, -275f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1127f, -425f) - vec2<f32>(530f, -356f)), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, 2117f)) + vec2<f32>(1192f, 1167f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) - vec2<f32>(-1283f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, -405f, 820f, var_0.x)))), -u_input.a | u_input.a, Struct_3(vec4<bool>(false, false, true, true), true)))));
    let var_2 = Struct_2(!vec3<bool>(false, all(vec2<bool>(false, false)) || true, true));
    global0 = array<u32, 23>();
    let var_3 = -483f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - var_0.x) * -1000f);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> i32 {
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    var var_0 = _wgslsmith_f_op_f32(abs(-1000f));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(floor(-1179f)), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, 2039f, arg_0, arg_1))) * vec4<f32>(arg_1, arg_0, _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.b.x, u_input.b.x, 1u))), _wgslsmith_f_op_f32(ceil(420f))))));
    var var_2 = Struct_4(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, -u_input.a.x, -97525i)), vec3<i32>(_wgslsmith_mult_i32(23133i, -20457i), 0i >> (u_input.b.x % 32u), 1i) >> (~(~vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 23u)], 57506u)) % vec3<u32>(32u))));
    return _wgslsmith_add_i32(global2[_wgslsmith_index_u32(8150u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(0u, 23u)], 4294967295u, _wgslsmith_clamp_u32(4294967295u, 18335u, u_input.b.x)), 23u)], 23u)], 23u)], 30u)], _wgslsmith_clamp_i32(var_2.a.x, u_input.c.x, ~(max(-1i, u_input.a.x) >> (global0[_wgslsmith_index_u32(abs(u_input.b.x), 23u)] % 32u))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    global2 = array<i32, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(942f, 275f, false))), -1323f, ~arg_1.x <= global0[_wgslsmith_index_u32(~1u, 23u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-886f * -479f) * _wgslsmith_div_f32(-229f, -1000f)))), _wgslsmith_f_op_f32(min(-804f, _wgslsmith_f_op_f32(func_2(~arg_1.xxw))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(287f - -1000f))), 520f, -941f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) + _wgslsmith_f_op_f32(abs(-637f))) - _wgslsmith_f_op_f32(425f - -2338f))), arg_2.a));
    global0 = array<u32, 23>();
    var var_1 = Struct_2(vec3<bool>(true, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, u_input.b.x, 4294967295u)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.b.x, 42397u)) <= _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x & 0u, ~35433u), !(!arg_2.b) && (abs(arg_3.a.x) < (global2[_wgslsmith_index_u32(u_input.b.x, 30u)] | arg_0))));
    var var_2 = Struct_1(arg_2.a);
    return arg_3;
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<bool>(arg_3, true);
    var var_1 = _wgslsmith_add_u32(0u | global0[_wgslsmith_index_u32(min(~(~85064u), ~(~32631u)), 23u)], u_input.b.x);
    var var_2 = Struct_4(vec3<i32>(-reverseBits(-49663i), abs(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 30u)], arg_0.a.x)) >> (u_input.b.x % 32u), ~(~(-2147483647i))));
    global1 = _wgslsmith_mod_i32(u_input.c.x, -32768i);
    var var_3 = Struct_2(vec3<bool>(!arg_3, any(vec3<bool>(arg_3, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true)), true));
    return Struct_1(!vec4<bool>(true, any(vec4<bool>(false, var_3.a.x, false, false)) && true, !select(var_0.x, var_0.x, arg_3), !(!var_0.x)));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = arg_0;
    global2 = array<i32, 30>();
    var var_1 = any(arg_0.a);
    let var_2 = func_4(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(65713u, 30u)], global2[_wgslsmith_index_u32(u_input.b.x >> ((reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)]) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)) % 32u), 30u)]), ~_wgslsmith_add_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(66826u, 23u)], 63677u, _wgslsmith_dot_vec4_u32(vec4<u32>(63012u, global0[_wgslsmith_index_u32(6149u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 23u)], 23u)], 38723u, u_input.b.x)), global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(42887u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16473u, 23u)], 23u)]), 23u)]), select(u_input.b, u_input.b, vec4<bool>(arg_1, arg_3, arg_3, true))), Struct_3(select(arg_0.a, var_0.a, false), arg_3), func_4(_wgslsmith_mult_i32(countOneBits(1i), _wgslsmith_sub_i32(~(-1i), -u_input.c.x)), max(~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u, 1u, 4294967295u)), vec4<u32>(~global0[_wgslsmith_index_u32(35311u, 23u)], u_input.b.x, u_input.b.x, 1u)), Struct_3(vec4<bool>(arg_1, arg_3 & arg_0.a.x, arg_0.a.x, true), !(arg_1 | arg_0.a.x)), func_4(_wgslsmith_mult_i32(5856i, 1i) << (global0[_wgslsmith_index_u32(u_input.b.x, 23u)] % 32u), (vec4<u32>(u_input.b.x, 4294967295u, 0u, 15211u) & vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 23u)], 22331u, global0[_wgslsmith_index_u32(u_input.b.x, 23u)])) >> (u_input.b % vec4<u32>(32u)), Struct_3(vec4<bool>(arg_3, true, true, arg_3), arg_3), Struct_4(u_input.a))));
    var var_3 = _wgslsmith_mod_vec3_u32(u_input.b.xxz, vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(18211u, 23u)] ^ global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_mod_u32(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20468u, 23u)], 23u)]), 1u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)] % 32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)]), vec3<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)])), _wgslsmith_add_vec3_u32(u_input.b.xwy, vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 0u)))), 23u)], 4637u, global0[_wgslsmith_index_u32(0u, 23u)]));
    return Struct_2(select(!var_0.a.yxy, !arg_0.a.wzw, func_5(Struct_4(var_2.a), _wgslsmith_f_op_f32(1122f - -675f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-165f, -521f))), false).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(func_1(-368f, _wgslsmith_f_op_f32(max(272f, 909f)), Struct_2(vec3<bool>(false, false, true))), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], u_input.b.x, 66185u, 12729u), Struct_3(vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), Struct_4(u_input.a >> (u_input.b.ywy % vec3<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(682f, -459f), vec2<f32>(-601f, 1513f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(422f, 1188f))), true))), all(vec2<bool>(true, true)) && !any(vec2<bool>(true, false))), true, -383f, true);
    let var_1 = ~_wgslsmith_sub_i32(0i, firstTrailingBit(17965i));
    let var_2 = Struct_3(!func_5(Struct_4(abs(vec3<i32>(var_1, -1i, global2[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1829f, -679f) + vec2<f32>(1493f, 634f))), any(func_5(Struct_4(vec3<i32>(-1i, u_input.a.x, var_1)), 2128f, vec2<f32>(-1000f, 1737f), true).a.wy)).a, all(select(select(func_5(Struct_4(u_input.a), 121f, vec2<f32>(715f, 227f), var_0.a.x).a, select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), vec4<bool>(var_0.a.x, true, true, true)), select(select(vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(var_0.a.x, false, true, false), vec4<bool>(var_0.a.x, false, var_0.a.x, true)), !vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), select(vec4<bool>(false, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), false)), !var_0.a.x && all(var_0.a))));
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 30u)], global2[_wgslsmith_index_u32(~u_input.b.x, 30u)]), 21547i, _wgslsmith_clamp_i32(-20925i, var_1, var_1) ^ abs(-7774i)), vec3<i32>(25167i, var_1, 0i)), reverseBits(u_input.a));
    var_0 = Struct_2(select(func_6(Struct_1(var_2.a), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-454f, 1763f)), select(var_2.a.x, var_0.a.x, var_2.b) == true).a, var_2.a.www, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f + -386f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(872f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f)), 1u, abs(55398u), 278f, 24240i);
}

