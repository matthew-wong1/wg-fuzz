struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = (countOneBits(~(~vec4<i32>(u_input.c, -57896i, 19179i, u_input.a))) | (vec4<i32>(_wgslsmith_sub_i32(7088i, 0i), 2147483647i, abs(u_input.c), 0i) >> (~max(vec4<u32>(2902u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b)) % vec4<u32>(32u)))) ^ select(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -25482i, -27581i), -2147483647i ^ _wgslsmith_mult_i32(u_input.a, u_input.c), 0i, -57168i), abs(reverseBits(vec4<i32>(u_input.c, u_input.c, 27400i, -69054i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.c, u_input.a), vec4<i32>(36681i, u_input.c, 1i, 1i) >> (vec4<u32>(u_input.d, u_input.d, 62597u, u_input.b) % vec4<u32>(32u))), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, u_input.a == 0i, true), false));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.xyy), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-840f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(793f)) - 540f)))), !select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(false, false))), 0u, select(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), all(vec2<bool>(true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -121f) == _wgslsmith_f_op_f32(-638f - arg_0.x), true)));
    global0 = array<f32, 3>();
    return ~_wgslsmith_sub_vec4_i32(select(~select(vec4<i32>(u_input.c, var_0.x, var_0.x, -1i), vec4<i32>(var_0.x, -19095i, 19721i, u_input.c), var_1.e), vec4<i32>(abs(var_0.x), var_0.x, 2147483647i, -44018i), true), ~(-abs(vec4<i32>(-29600i, 1i, u_input.c, var_0.x))));
}

fn func_2() -> vec4<i32> {
    let var_0 = ~(min(func_3(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], -760f)), countOneBits(firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a)))) & vec4<i32>(u_input.c, ~0i, _wgslsmith_mult_i32(~25424i, 26532i), func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)], -1000f)))).x));
    global0 = array<f32, 3>();
    let var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(1u), 1u, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 91510u, u_input.d, u_input.b), vec4<u32>(u_input.b, 23086u, u_input.b, u_input.b)), _wgslsmith_mult_u32(u_input.b, 1u), true)), 3u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(~firstTrailingBit(u_input.b)), 3u)]));
    let var_2 = i32(-1i) * -11136i;
    global0 = array<f32, 3>();
    return var_0;
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_3(vec3<bool>(true, (38546u << (min(5939u, u_input.d) % 32u)) != u_input.d, any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)] == -1307f, true, all(vec4<bool>(false, true, false, false)), any(vec3<bool>(true, false, true))))), Struct_2(Struct_1(vec3<f32>(-180f, -886f, 438f), vec2<f32>(global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21623u, 3u)])), vec2<bool>(u_input.a < arg_0.x, u_input.d <= 0u), ~31724u, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), !vec4<bool>(global0[_wgslsmith_index_u32(62120u, 3u)] > 1220f, true, true, true), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-918f, -827f, 494f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)], 373f) - vec3<f32>(-100f, global0[_wgslsmith_index_u32(31963u, 3u)], -265f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], -724f))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), ~u_input.b, !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))), select(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), u_input.c != arg_0.x), vec4<bool>(true, select(true, true, false), true, all(vec2<bool>(true, false))), vec4<bool>(any(vec3<bool>(false, true, false)), 2147483647i != u_input.a, true, true)), vec4<bool>(!(global0[_wgslsmith_index_u32(u_input.b, 3u)] != global0[_wgslsmith_index_u32(4294967295u, 3u)]), true, true, false), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(var_0.b.c.d, 3u)], 1000f, global0[_wgslsmith_index_u32(u_input.d, 3u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.a.a) * var_0.b.a.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0.b.c.d, 3u)], -200f)), _wgslsmith_f_op_f32(-var_0.b.a.a.x), global0[_wgslsmith_index_u32(46669u, 3u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.a.x, var_0.b.c.a.x, var_0.b.c.a.x) + vec3<f32>(549f, global0[_wgslsmith_index_u32(var_0.b.a.d, 3u)], 394f))))), vec2<f32>(-1250f, _wgslsmith_f_op_f32(514f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.d, 3u)])) - -1641f))), !vec2<bool>(select(var_0.a.x | var_0.a.x, all(var_0.b.c.e.xx), select(var_0.b.b.x, var_0.c.x, false)), var_0.c.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(22798u, 1u), ~(1u | _wgslsmith_sub_u32(var_0.b.a.d, 68152u))), var_0.b.c.e);
}

fn func_1() -> u32 {
    let var_0 = Struct_2(func_4(_wgslsmith_mult_vec4_i32(select(func_2(), vec4<i32>(-2147483647i, 0i, u_input.c, u_input.c), vec4<bool>(true, true, true, true)), ~max(vec4<i32>(u_input.c, u_input.c, u_input.c, 22427i), vec4<i32>(u_input.c, u_input.a, 1i, 1i)))), !func_4(vec4<i32>(3851i, _wgslsmith_div_i32(u_input.c, -31801i), u_input.a | 28631i, u_input.c)).e, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(1u, 3u)], -903f, global0[_wgslsmith_index_u32(u_input.b, 3u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], -127f, global0[_wgslsmith_index_u32(u_input.d, 3u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(7828u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], 461f)))), vec2<f32>(_wgslsmith_f_op_f32(min(-604f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 3u)]))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~u_input.d, 3u)]))), select(vec2<bool>(true, true), vec2<bool>(select(false, false, false), true), !(u_input.a != -77388i)), abs(_wgslsmith_add_u32(countOneBits(4294967295u), u_input.d)), vec4<bool>(true, true, true, true)));
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_1 = Struct_2(func_4(vec4<i32>(~(~(-55793i)), firstLeadingBit(u_input.c), 860i, _wgslsmith_mult_i32(16970i, u_input.c))), func_4(vec4<i32>(1i, 1i, u_input.a, _wgslsmith_mult_i32(func_2().x, u_input.c))).e, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c.b.x, _wgslsmith_div_f32(var_0.c.a.x, global0[_wgslsmith_index_u32(u_input.b, 3u)]))), _wgslsmith_f_op_f32(-var_0.a.b.x), global0[_wgslsmith_index_u32(u_input.d, 3u)]), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(21564u, 3u)], -2600f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.c.d, 3u)] + -431f), !var_0.a.e.x)), var_0.c.a.x), var_0.b.ww, _wgslsmith_mult_u32(select(countOneBits(4294967295u), ~10084u, var_0.c.c.x), ~u_input.d), vec4<bool>(true, true, var_0.a.c.x, func_4(vec4<i32>(u_input.a, u_input.a, -11419i, 0i)).c.x | select(false, var_0.b.x, var_0.a.e.x))));
    let var_2 = var_1.a;
    return var_1.a.d;
}

fn func_5(arg_0: f32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = !(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))) & all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)));
    let var_1 = var_0;
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1255f, 1504f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1760f, arg_0) * vec3<f32>(548f, global0[_wgslsmith_index_u32(arg_1.x, 3u)], 327f)))))) - vec3<f32>(global0[_wgslsmith_index_u32(arg_1.x, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(min(arg_0, -230f))) - arg_0), -1000f));
    return Struct_2(func_4(reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, u_input.a), vec4<i32>(2147483647i, -22131i, u_input.a, u_input.a)), vec4<i32>(u_input.a, 0i, -1i, -10442i) >> (vec4<u32>(arg_1.x, 19139u, 0u, arg_1.x) % vec4<u32>(32u))))), !vec4<bool>(var_0, true, !var_1, select(arg_0 != var_2.x, all(vec3<bool>(var_1, true, false)), var_1)), func_4(firstTrailingBit(-func_3(vec4<f32>(var_2.x, 1717f, global0[_wgslsmith_index_u32(27642u, 3u)], var_2.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global0 = array<f32, 3>();
    let var_0 = arg_1;
    let var_1 = arg_1.b;
    let var_2 = var_0.a.x;
    let var_3 = var_0.b;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1520f)), firstLeadingBit(~vec3<u32>(24898u, 1u, u_input.d)) | vec3<u32>(func_1(), ~u_input.b, 1u)), Struct_3(vec3<bool>(true, select(false, true, select(true, false, false)), !func_4(vec4<i32>(-6026i, u_input.a, u_input.a, 41413i)).e.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1007f, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]) - vec3<f32>(global0[_wgslsmith_index_u32(32327u, 3u)], global0[_wgslsmith_index_u32(37272u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)])), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 3u)], -1012f))), vec2<bool>(true, true), 1u, vec4<bool>(false, false, false, true)), func_4(vec4<i32>(-33656i, -12794i, u_input.a, -11760i)).e, func_5(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(77832u, 3u)] * global0[_wgslsmith_index_u32(5466u, 3u)]), vec3<u32>(0u, u_input.b, u_input.b)).a), func_4(~vec4<i32>(u_input.c, u_input.c, u_input.a, -2147483647i)).e));
    var var_1 = !func_4(~vec4<i32>(u_input.a, -7550i, u_input.c, func_2().x)).e;
    global0 = array<f32, 3>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-698f, var_0.a.x, _wgslsmith_div_f32(-406f, global0[_wgslsmith_index_u32(func_5(var_0.b.x, vec3<u32>(1u, var_0.d, 8952u)).a.d, 3u)])), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.a, var_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], -608f), vec3<f32>(var_0.b.x, var_0.a.x, global0[_wgslsmith_index_u32(var_0.d, 3u)])), any(var_0.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.d, 3u)], global0[_wgslsmith_index_u32(var_0.d, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)])) + var_0.a))), func_4(vec4<i32>(u_input.a, -1i, 1i, -25452i) | firstLeadingBit(vec4<i32>(u_input.c, u_input.a, -27144i, u_input.c))).e.wyx)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, u_input.b), vec2<u32>(var_0.d, 2551u)), 3u)])), global0[_wgslsmith_index_u32(var_0.d | (28772u & u_input.d), 3u)]))), var_0.c, 0u, vec4<bool>(true, true, func_5(_wgslsmith_f_op_f32(func_5(var_0.a.x, vec3<u32>(u_input.d, u_input.d, 43884u)).c.b.x - var_0.a.x), vec3<u32>(_wgslsmith_div_u32(u_input.d, var_0.d), ~var_0.d, 76979u)).a.e.x, false | (true | !var_1.x)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a)) + vec3<f32>(394f, _wgslsmith_f_op_f32(959f + var_0.a.x), 666f)), _wgslsmith_f_op_vec2_f32(-var_0.b), vec2<bool>(true, !(var_1.x && false)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, _wgslsmith_mult_u32(var_0.d, var_0.d), ~1u), ~vec3<u32>(var_0.d, u_input.b, 7319u)), vec4<bool>(u_input.d <= ~var_0.d, true, any(var_0.e), var_1.x)), func_6(func_5(var_0.a.x, max(vec3<u32>(u_input.d, var_0.d, var_0.d) << (vec3<u32>(var_0.d, 4432u, var_0.d) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(42253u, var_0.d, var_0.d), vec3<u32>(55589u, 8646u, 24116u), vec3<u32>(0u, u_input.d, var_0.d)))), Struct_3(var_1.www, Struct_2(func_6(Struct_2(Struct_1(vec3<f32>(var_0.b.x, 945f, 849f), var_0.a.yz, var_1.xx, 1u, var_0.e), vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(1162f, -659f, -1417f), vec2<f32>(var_0.b.x, global0[_wgslsmith_index_u32(19736u, 3u)]), var_1.wx, u_input.b, vec4<bool>(var_0.e.x, true, var_0.c.x, var_0.c.x))), Struct_3(vec3<bool>(true, var_0.c.x, var_0.e.x), Struct_2(Struct_1(var_0.a, var_0.b, var_0.e.xz, u_input.b, var_0.e), vec4<bool>(var_1.x, false, var_0.c.x, var_1.x), Struct_1(vec3<f32>(var_0.b.x, -770f, -226f), vec2<f32>(var_0.a.x, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(var_0.c.x, false), u_input.b, var_0.e)), vec4<bool>(var_1.x, true, true, true))), !var_0.e, Struct_1(vec3<f32>(var_0.a.x, global0[_wgslsmith_index_u32(23943u, 3u)], -110f), vec2<f32>(1019f, var_0.a.x), var_0.c, u_input.b, vec4<bool>(var_1.x, false, var_1.x, true))), vec4<bool>(any(var_0.e), all(vec2<bool>(var_0.c.x, true)), true, true))).e, func_4(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 19222i, 1i, 1i), vec4<i32>(-2147483647i, u_input.a, u_input.c, u_input.c)), i32(-1i) * -u_input.a, 5182i, u_input.a)));
    var_0 = var_2.c;
    let var_3 = u_input.c;
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(67824u, 3u)], func_1() | _wgslsmith_add_u32(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 43965u, 8193u), vec3<u32>(1u, 4294967295u, 19596u)), var_0.d)), 1u, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_3, -u_input.c), var_3));
}

