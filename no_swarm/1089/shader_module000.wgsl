struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = array<f32, 5>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4005u | u_input.c.x, 5u)])));
    var var_1 = vec4<u32>(abs(92372u), 4294967295u, _wgslsmith_sub_u32(min(~u_input.d.x, u_input.c.x), ~u_input.c.x), _wgslsmith_div_u32(~4294967295u, u_input.d.x)) | vec4<u32>(_wgslsmith_mult_u32(1u, 20149u) >> ((~u_input.c.x ^ 1u) % 32u), u_input.c.x, u_input.d.x, u_input.d.x);
    let var_2 = -vec3<i32>(0i, _wgslsmith_clamp_i32(-1i, ~(-63231i), u_input.e) >> (max(reverseBits(579u), ~4294967295u) % 32u), u_input.e);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 5u)], 1648f, false)) - 1507f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1347f) + _wgslsmith_f_op_f32(f32(-1f) * -1106f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(2437u, 5u)])))))));
    return 50629u;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(vec4<u32>(1u, u_input.d.x << (30485u % 32u), abs(u_input.c.x), 0u), firstTrailingBit(max(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, 1i, -11903i, -19039i), vec4<i32>(46090i, 20326i, 0i, 33330i)), vec4<i32>(-40239i, u_input.e, -5501i, 0i) ^ vec4<i32>(80263i, -34920i, -29243i, u_input.a))));
    global0 = array<f32, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)])), -978f))), _wgslsmith_f_op_f32(-1382f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), global0[_wgslsmith_index_u32(func_3(), 5u)]))), global0[_wgslsmith_index_u32(~var_0.a.x, 5u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 5u)]) + -1186f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.zzz, vec3<u32>(20780u, u_input.d.x, 9707u)), 5u)], _wgslsmith_f_op_f32(abs(547f)), _wgslsmith_f_op_f32(-820f * global0[_wgslsmith_index_u32(var_0.a.x, 5u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2582f, -308f, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], 2934f) - vec4<f32>(global0[_wgslsmith_index_u32(6950u, 5u)], global0[_wgslsmith_index_u32(u_input.d.x, 5u)], -1000f, global0[_wgslsmith_index_u32(1u, 5u)])))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(15292u, 5u)], 2384f, 252f, 2274f))), vec4<f32>(_wgslsmith_f_op_f32(1226f * -1459f), -533f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 5u)]))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_1 * var_1), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(916f, global0[_wgslsmith_index_u32(64122u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], var_1.x), var_1)))), var_1))))));
    var var_3 = countOneBits(_wgslsmith_mod_vec3_i32(-(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(9589i, 2147483647i, var_0.b.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 19298u), var_0.a.wyx) % vec3<u32>(32u))), var_0.b.zzz));
    return select(!vec3<bool>(false, !any(vec2<bool>(false, true)), true), vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true))), any(vec2<bool>(19563u == var_0.a.x, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(31808u, ~(~u_input.d.x)), 21260u) >= u_input.d.x;
    global0 = array<f32, 5>();
    var var_1 = -_wgslsmith_sub_vec4_i32(~vec4<i32>(min(u_input.b.x, 38041i), arg_1 & u_input.b.x, firstLeadingBit(u_input.b.x), arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, -2147483647i), u_input.b.x, i32(-1i) * -44863i, -1i), vec4<i32>(-1i, u_input.b.x, -14581i, u_input.a) | vec4<i32>(1i, u_input.e, arg_1, u_input.a)));
    var var_2 = Struct_1(u_input.c, vec4<i32>(-2147483647i, u_input.a, u_input.b.x, ~(-reverseBits(var_1.x))));
    var var_3 = _wgslsmith_div_f32(-1562f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return Struct_1(_wgslsmith_mod_vec4_u32(var_2.a, abs(~min(var_2.a, u_input.d))), countOneBits(vec4<i32>(_wgslsmith_div_i32(42667i, arg_1), _wgslsmith_dot_vec3_i32(var_2.b.zyz, vec3<i32>(arg_1, u_input.e, var_2.b.x)), _wgslsmith_div_i32(var_1.x, 3479i), firstTrailingBit(u_input.b.x)) | -var_2.b));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = vec3<bool>(all(select(vec4<bool>(true, !arg_0, all(vec4<bool>(arg_0, arg_0, true, false)), !arg_0), vec4<bool>(true, true, !arg_0, true), select(!vec4<bool>(false, false, arg_0, true), !vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, false, arg_0, true)))), all(!select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), true)), arg_0);
    let var_1 = arg_1.x;
    let var_2 = func_4(!(!vec2<bool>(true, !var_0.x)), ~(~(~var_1) >> (~(~7029u) % 32u)));
    global0 = array<f32, 5>();
    var var_3 = arg_3.b.zz;
    return StorageBuffer(~arg_3.a.x, func_3(), u_input.b.zy, u_input.a);
}

fn func_1() -> StorageBuffer {
    global0 = array<f32, 5>();
    var var_0 = 2147483647i;
    var_0 = 1i;
    var var_1 = _wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 0i, 2147483647i), abs(u_input.b), u_input.b)));
    let var_2 = max(u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x >> (abs(u_input.c.x) % 32u), select(u_input.c.x, u_input.d.x, true), max(~4294967295u | _wgslsmith_add_u32(8805u, u_input.c.x), 0u)));
    return func_5(true, vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(u_input.b.x, 1i), u_input.e), func_4(vec2<bool>(select(u_input.e == 310i, true, true), any(func_2())), abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, var_1.x, 38105i, -1i), vec4<i32>(1i, 5715i, var_1.x, -1i) & vec4<i32>(var_1.x, -27420i, u_input.b.x, -23655i)))), Struct_1(reverseBits(vec4<u32>(0u, ~4294967295u, max(var_2, u_input.c.x), 0u)), vec4<i32>(-1i, ~func_4(vec2<bool>(false, true), -2147483647i).b.x, var_1.x, min(-var_1.x, -u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(all(vec2<bool>(false, u_input.c.x <= 1u)), !(u_input.b.x < u_input.b.x) & (~u_input.c.x >= _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.d.x, 1u, u_input.d.x, 0u))), true, false);
    let var_1 = -1810i;
    let x = u_input.a;
    s_output = func_1();
}

