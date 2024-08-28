struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -759f;

var<private> global1: array<bool, 7> = array<bool, 7>(false, true, false, true, true, true, false);

var<private> global2: vec3<f32> = vec3<f32>(-677f, 770f, -2645f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<i32> {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(1317f - _wgslsmith_f_op_f32(149f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x * global2.x))))), -672f);
    let var_0 = vec4<f32>(-475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.x)))) * global2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))), global2.x);
    var var_1 = Struct_5(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(-1i, 1i, u_input.a), vec3<i32>(u_input.a, 47348i, u_input.a) << (vec3<u32>(28107u, u_input.b, 1u) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(u_input.b, 7u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 7u)], true, false))), -vec3<i32>(_wgslsmith_mod_i32(31080i, -42441i), max(u_input.a, u_input.a), _wgslsmith_sub_i32(-19204i, u_input.a))), Struct_2(~reverseBits(u_input.a) ^ 2147483647i, vec4<i32>(-reverseBits(u_input.a), -u_input.a ^ u_input.a, -29136i, u_input.a ^ (i32(-1i) * -1i))));
    global1 = array<bool, 7>();
    let var_2 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, -1i)), min(var_1.b.b.zy, vec2<i32>(u_input.a, var_1.a)), _wgslsmith_div_vec2_i32(vec2<i32>(6120i, var_1.a), var_1.b.b.zz)), var_1.b.b.yy), _wgslsmith_clamp_i32(countOneBits(var_1.a), -38337i, abs(-1i)));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-1i, var_2, 30670i, var_2)), min(vec4<i32>(-2147483647i, 1i, 13581i, 0i), vec4<i32>(-2147483647i, -29864i, 1i, var_2) ^ vec4<i32>(2147483647i, 1i, 1i, 42965i)), ~vec4<i32>(var_1.b.a, var_1.a, 60098i, -1021i)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, 0u, u_input.b), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 47903u, u_input.b))) % vec4<u32>(32u)), var_1.b.b);
}

fn func_2() -> u32 {
    var var_0 = Struct_5(_wgslsmith_dot_vec4_i32(min(func_3(), max(-vec4<i32>(u_input.a, u_input.a, -1i, 1i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a))), abs(vec4<i32>(firstTrailingBit(-1i), u_input.a, 1i, reverseBits(u_input.a)))), Struct_2(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-5623i, -52893i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), ~vec2<i32>(u_input.a, u_input.a))), vec4<i32>(u_input.a | u_input.a, _wgslsmith_add_i32(~u_input.a, ~u_input.a), max(-1732i, u_input.a) & u_input.a, 104342i)));
    var var_1 = vec3<bool>(!global1[_wgslsmith_index_u32(reverseBits(u_input.b >> (min(u_input.b, 4294967295u) % 32u)), 7u)], global1[_wgslsmith_index_u32(u_input.b, 7u)], !(!(!select(global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(95992u, 7u)], false))));
    let var_2 = 1u;
    global0 = 1015f;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f), global2.x), 333f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1012f, -383f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-486f, global2.x, global2.x), vec3<f32>(1000f, -950f, -772f), vec3<bool>(var_1.x, var_1.x, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(767f, 1343f, -507f))))));
    return select(u_input.b, 1u, false);
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = !(!vec3<bool>(!(u_input.a != -10289i), true, arg_0));
    var var_1 = vec2<u32>(countOneBits(1952u), _wgslsmith_mod_u32(u_input.b, 1u));
    var_1 = vec2<u32>(var_1.x, ~(~func_2()));
    let var_2 = select(false, all(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(82273u, 7u)], arg_0, true, global1[_wgslsmith_index_u32(var_1.x, 7u)]), vec4<bool>(true, true, arg_0, global1[_wgslsmith_index_u32(u_input.b, 7u)]), false), vec4<bool>(false, arg_0, true, true), true), !select(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(1u, 7u)], false, var_0.x), vec4<bool>(arg_0, false, false, global1[_wgslsmith_index_u32(73361u, 7u)]), vec4<bool>(arg_0, var_0.x, var_0.x, false)), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(true, false, arg_0, arg_0)))), false);
    var var_3 = Struct_4(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 6624u), var_1.x), ~(~(u_input.b << (0u % 32u))), _wgslsmith_div_u32(0u, 19821u)), Struct_1(1u, vec2<i32>(u_input.a, 1i), ~(~vec3<u32>(var_1.x, 1u, u_input.b) << (vec3<u32>(3554u, 0u, 0u) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.a, u_input.a, 11680i)), abs(firstLeadingBit(vec3<i32>(55298i, 0i, -13571i))))), Struct_2(-(u_input.a >> (~34188u % 32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, 1i, 1i, -1i), ~(vec4<i32>(-1i, 1680i, u_input.a, u_input.a) << (vec4<u32>(u_input.b, u_input.b, 1u, 1u) % vec4<u32>(32u))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-442f, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(195f, -362f)), -571f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(312f - global2.x), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_div_f32(-1113f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1548f)) + _wgslsmith_f_op_f32(-global2.x))))));
    return Struct_4(~(~var_3.b.c), var_3.b, var_3.c, var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-841f * _wgslsmith_f_op_f32(global2.x - var_3.d.x))) - var_3.e));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<f32> {
    global1 = array<bool, 7>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(344f + global2.x) * _wgslsmith_f_op_f32(step(arg_1.d.x, global2.x)))))));
    var var_2 = Struct_1(20887u, arg_1.c.b.ww, arg_2.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(max(-19630i, arg_2.d), ~23637i, 57523i), vec3<i32>(2147483647i, u_input.a, arg_2.d)));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), func_1(arg_3.x).e, _wgslsmith_f_op_f32(trunc(1225f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(46042u);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(506f)), -100f), vec3<f32>(646f, -1465f, -651f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_4(u_input.b, func_1(global1[_wgslsmith_index_u32(u_input.b, 7u)]), Struct_1(8384u, vec2<i32>(u_input.a, u_input.a), vec3<u32>(17969u, var_0, u_input.b), 1i), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(43714u, 7u)], global1[_wgslsmith_index_u32(u_input.b, 7u)]), true))), _wgslsmith_f_op_vec3_f32(-func_1(true).d)))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global2.x, 368f)), _wgslsmith_f_op_f32(floor(global2.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1474f), -878f, -428f < global2.x))) * global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    let var_1 = -((vec3<i32>(u_input.a, abs(u_input.a), -12268i) >> (~reverseBits(vec3<u32>(24670u, u_input.b, 60414u)) % vec3<u32>(32u))) | ~(~(~vec3<i32>(24821i, -39610i, u_input.a))));
    var var_2 = !select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(49084u, 7u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(var_0, 7u)], false, global1[_wgslsmith_index_u32(u_input.b, 7u)])), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(u_input.b, 7u)], true), false), true), vec4<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0, 7u)])), 1000f <= global2.x, !any(vec2<bool>(true, false)), !(true | global1[_wgslsmith_index_u32(35199u, 7u)])), true);
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)), _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(~u_input.b, func_1(true), Struct_1(var_0, vec2<i32>(var_1.x, var_1.x), vec3<u32>(u_input.b, 4294967295u, u_input.b), u_input.a), vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), global2.x, global2.x), all(select(var_2.wyw, var_2.xxw, var_2.wzz))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, var_0) << (vec3<u32>(5124u, u_input.b, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, var_0, 1u)), (~u_input.b ^ u_input.b) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 34290u, 29668u, 1u), vec4<u32>(var_0, 17793u, 1u, 10145u)) % 32u), abs(42119u)), reverseBits(vec4<i32>(-1i, var_1.x, 2147483647i, u_input.a) | func_1(false).c.b) >> (vec4<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b >> (79583u % 32u), 1u, ~u_input.b), u_input.b, select(u_input.b, max(var_0, 4294967295u), false)) % vec4<u32>(32u)), vec2<u32>(~(~var_0 | var_0), ~var_0));
}

