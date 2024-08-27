struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    global0 = array<f32, 32>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(56623u, 32u)]), _wgslsmith_f_op_f32(round(1088f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 32u)], 836f)), -1547f, u_input.e.x > u_input.e.x))), _wgslsmith_div_f32(-493f, 212f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.d, 32u)]))))), u_input.c.xz, countOneBits(~4294967295u), false);
    global0 = array<f32, 32>();
    let var_1 = vec4<u32>(~0u, 38630u, ~_wgslsmith_clamp_u32(~u_input.c.x, 4294967295u, _wgslsmith_mod_u32(u_input.b, ~var_0.b.x)), 60920u);
    global0 = array<f32, 32>();
    return _wgslsmith_div_i32(1i, max(1i, abs(-1i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = i32(-1i) * -2147483647i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), arg_1.b, reverseBits(_wgslsmith_sub_u32(u_input.b, 18816u ^ arg_1.b.x)), all(vec2<bool>(all(vec4<bool>(true, false, true, arg_1.d)), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a * _wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(arg_1.a.x, var_1.a.x, 102f, 963f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - var_1.a)), vec2<u32>(~47073u, abs(_wgslsmith_mod_u32(abs(73438u), _wgslsmith_div_u32(1u, u_input.d)))), 4294967295u, !arg_1.d);
    let var_3 = arg_1;
    return Struct_2(arg_1, arg_1, u_input.e.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = abs(vec3<u32>(countOneBits(abs(24092u ^ arg_0.b.b.x)), 51326u, 22422u ^ _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, u_input.c.x, arg_0.b.b.x))));
    var_0 = abs(_wgslsmith_div_vec3_u32(countOneBits(select(~u_input.c, ~u_input.c, !vec3<bool>(arg_0.a.d, false, false))), vec3<u32>(~1u, ~countOneBits(117399u), _wgslsmith_clamp_u32(~u_input.d, ~u_input.d, arg_0.a.b.x | 0u))));
    let var_1 = _wgslsmith_mod_vec4_i32(max(-select(abs(vec4<i32>(arg_0.c, 1i, u_input.e.x, -2147483647i)), -vec4<i32>(arg_0.c, u_input.e.x, 16063i, 2147483647i), select(vec4<bool>(true, arg_0.b.d, false, true), vec4<bool>(arg_0.b.d, true, true, arg_0.b.d), arg_0.a.d)), reverseBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(63004i, u_input.a, -1i, -2147483647i), vec4<i32>(arg_0.c, -1i, -43079i, arg_0.c))))), abs(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(12708i, 27401i, 1i, u_input.e.x)), vec4<i32>(arg_0.c, -1i, arg_0.c, u_input.e.x), _wgslsmith_mult_vec4_i32(vec4<i32>(52898i, arg_0.c, -27797i, 60562i), vec4<i32>(arg_0.c, u_input.e.x, arg_0.c, u_input.e.x)))));
    var var_2 = func_3(1i, func_3(-_wgslsmith_dot_vec4_i32(select(var_1, vec4<i32>(arg_0.c, -2147483647i, -1i, u_input.e.x), vec4<bool>(arg_0.b.d, arg_0.b.d, true, arg_0.b.d)), _wgslsmith_add_vec4_i32(var_1, var_1)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-1106f)), global0[_wgslsmith_index_u32(u_input.d >> (1u % 32u), 32u)], _wgslsmith_f_op_f32(f32(-1f) * -554f), -560f), u_input.c.xy, 9252u, select(arg_0.a.d, true, arg_0.a.d)), reverseBits(~vec2<u32>(62571u, 4294967295u) >> (arg_0.b.b % vec2<u32>(32u)))).b, vec2<u32>(min(~39288u, 4294967295u >> (u_input.b % 32u)), _wgslsmith_mult_u32(1u << ((var_0.x | 31457u) % 32u), min(arg_0.a.c << (var_0.x % 32u), var_0.x)))).b.b;
    return arg_0.a;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    global0 = array<f32, 32>();
    var var_0 = -vec4<i32>((-60646i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 14682u, 61427u, 12521u), vec4<u32>(u_input.b, u_input.d, 0u, u_input.b)) % 32u)) | 0i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-44131i, arg_0.x, arg_0.x) << (vec3<u32>(u_input.d, 1u, 14214u) % vec3<u32>(32u)), firstTrailingBit(u_input.e))), -1i, _wgslsmith_add_i32(-countOneBits(u_input.e.x), 1i));
    var var_1 = func_4(func_3(func_2(), Struct_1(vec4<f32>(_wgslsmith_div_f32(-2167f, 1885f), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1489u, 32u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 32u)] - -2255f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 32u)])), max(reverseBits(u_input.c.zx), countOneBits(u_input.c.yx)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(0u, 4294967295u))), true | (global0[_wgslsmith_index_u32(u_input.c.x, 32u)] >= 442f)), vec2<u32>(86023u, ~u_input.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-636f - global0[_wgslsmith_index_u32(72582u, 32u)]), _wgslsmith_div_f32(182f, -1381f), 1f, global0[_wgslsmith_index_u32(countOneBits(u_input.b), 32u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], 1257f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1139f, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(5370u, 32u)]) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(62904u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], -210f, 283f, 577f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(23891u, 32u)], global0[_wgslsmith_index_u32(59852u, 32u)], 2305f)) * vec4<f32>(-1844f, 1000f, 279f, global0[_wgslsmith_index_u32(0u, 32u)])), any(vec4<bool>(false, false, true, false)) || true))));
    let var_2 = abs(-vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, arg_0.x, var_0.x, -1i)), vec4<i32>(u_input.a, 56086i, 2147483647i, -10949i))));
    let var_3 = vec3<bool>(var_1.d, true, (i32(-1i) * -arg_0.x) != ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_2, vec2<i32>(1i, 2147483647i)), u_input.e.zz));
    return 9738u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -42077i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 32u)]))))), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(func_1(u_input.e), 32u)])));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.d) ^ abs(14093u), 32u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1187f * 1000f), 1495f)))));
    global0 = array<f32, 32>();
    let var_3 = func_3(~countOneBits(77783i), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(4975u, 32u)], _wgslsmith_f_op_f32(select(var_1.x, 210f, true)), var_1.x))), ~(vec2<u32>(1u, 1u) << ((vec2<u32>(u_input.c.x, u_input.d) ^ u_input.c.zy) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(u_input.b, u_input.c.x, 0u, 43643u))), ~vec4<u32>(64013u, 4294967295u, 930u, u_input.b)), _wgslsmith_div_u32(u_input.c.x, 0u) > _wgslsmith_div_u32(u_input.d, abs(38357u))), ~max(~vec2<u32>(u_input.d, u_input.c.x) & u_input.c.yy, vec2<u32>(firstTrailingBit(u_input.c.x), 1u)));
    var var_4 = var_3.a;
    let var_5 = func_3(reverseBits(-(_wgslsmith_clamp_i32(var_0, u_input.a, u_input.e.x) << (~u_input.d % 32u))), Struct_1(var_3.b.a, _wgslsmith_clamp_vec2_u32(~var_3.b.b, firstTrailingBit(abs(u_input.c.xz)), u_input.c.zx), 32515u, !(true && var_4.d)), var_3.a.b ^ ~vec2<u32>(var_3.a.b.x, var_3.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.a.x, ~vec4<i32>(0i & var_3.c, 1i, 1i, var_3.c) | ~max(-vec4<i32>(-17892i, -1i, -22219i, var_5.c), -vec4<i32>(-1i, -44133i, -19481i, -3607i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-424f, _wgslsmith_f_op_f32(-1108f * -117f), -535f)), vec3<f32>(482f, _wgslsmith_f_op_f32(max(var_4.a.x, var_5.a.a.x)), -384f), vec3<bool>(var_3.a.d, all(vec4<bool>(var_3.a.d, true, false, var_4.d)), !var_3.b.d))));
}

