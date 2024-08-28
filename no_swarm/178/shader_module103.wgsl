struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<f32, 16> = array<f32, 16>(-209f, 974f, 939f, 971f, 1113f, -197f, 145f, 1714f, -220f, 1513f, 857f, 1290f, 146f, 695f, -530f, -926f);

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<f32>, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1189f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b.x), arg_3), min(arg_3.x, 22042u)), 16u)]), global2.x, -364f)));
    var var_0 = Struct_4(Struct_3(0i, true));
    let var_1 = min(max(~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(28576u, arg_3.x), u_input.b, vec2<u32>(7095u, 4294967295u))), _wgslsmith_mult_vec2_u32(select(_wgslsmith_add_vec2_u32(arg_3.zy, u_input.b), arg_3.yy, true & arg_0), vec2<u32>(~arg_3.x, 36670u))), ~_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(32118u, u_input.b.x), arg_3.yx), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b.x), arg_3.yz) | ~vec2<u32>(31591u, 8517u)));
    let var_2 = !select(!select(select(vec4<bool>(true, var_0.a.b, true, arg_0), vec4<bool>(arg_0, var_0.a.b, true, false), false), select(vec4<bool>(true, var_0.a.b, false, var_0.a.b), vec4<bool>(false, arg_0, true, arg_0), arg_0), vec4<bool>(arg_0, var_0.a.b, arg_0, arg_0)), !(!vec4<bool>(true, true, false, arg_0)), select(vec4<bool>(var_0.a.b, u_input.a.x >= -17975i, true & arg_0, !var_0.a.b), vec4<bool>(all(vec4<bool>(true, var_0.a.b, true, false)), arg_0, !arg_0, any(vec3<bool>(false, true, var_0.a.b))), !vec4<bool>(arg_0, arg_0, var_0.a.b, false)));
    let var_3 = ~_wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(56152u, var_1.x)) << (select(79629u, select(0u, 0u, false), true) % 32u);
    return 418f;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-848f * _wgslsmith_f_op_f32(-609f - 1140f)), -277f) - _wgslsmith_f_op_f32(func_3(all(select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, false, arg_2.b, true), vec4<bool>(arg_2.b, false, false, false))), ~u_input.a.x & -u_input.a.x, -vec2<i32>(-2147483647i, -106494i), ~vec3<u32>(0u, 61516u, u_input.b.x)))), _wgslsmith_f_op_f32(global2.x + -665f), any(vec4<bool>(false, true, !arg_2.b, true | !arg_2.b))));
    global0 = array<vec2<bool>, 8>();
    global1 = array<f32, 16>();
    global1 = array<f32, 16>();
    var var_1 = true;
    return Struct_3(-_wgslsmith_clamp_i32(-584i, _wgslsmith_sub_i32(u_input.a.x ^ 45181i, u_input.a.x << (u_input.b.x % 32u)), u_input.a.x), any(!select(vec4<bool>(arg_2.b, arg_2.b, false, arg_2.b), vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), all(vec4<bool>(arg_2.b, arg_2.b, false, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    global0 = array<vec2<bool>, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(global2.wzw - _wgslsmith_f_op_vec3_f32(select(global2.zzx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global2.x)), -1151f), vec3<bool>(false, any(vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b)), all(vec4<bool>(arg_0.b, false, arg_0.b, true))))));
    let var_1 = Struct_2(Struct_1(0u, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(3812u, 4294967295u, 1u, arg_1.a.b.x), max(arg_1.b.b, vec4<u32>(4294967295u, u_input.b.x, 1u, 81184u)), ~arg_1.b.b), countOneBits(u_input.b.x)), arg_1.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1414f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2539f))))))));
    global0 = array<vec2<bool>, 8>();
    var var_2 = Struct_4(func_2(-1542i, _wgslsmith_f_op_vec4_f32(trunc(global3[_wgslsmith_index_u32(arg_1.b.c, 6u)])), arg_0));
    return func_2(min(min(_wgslsmith_sub_i32(arg_0.a, var_2.a.a), ~arg_0.a), ~u_input.a.x) | _wgslsmith_mult_i32(~arg_0.a ^ (var_2.a.a | arg_0.a), -6984i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.a.a, 1u, 54965u, 15844u), var_1.a.b), _wgslsmith_sub_vec4_u32(var_1.b.b, vec4<u32>(var_1.a.c, 72475u, 38523u, arg_2))), 6u)]))), func_2(320i, global3[_wgslsmith_index_u32(66373u, 6u)], func_2(abs(0i), global3[_wgslsmith_index_u32(firstTrailingBit(0u), 6u)], Struct_3(2147483647i, false))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = func_4(func_2(arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, global2.x)) * _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1168f + global2.x)), global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_f32(-arg_1.x)), Struct_3(_wgslsmith_mult_i32(arg_0.x, _wgslsmith_sub_i32(arg_0.x, arg_0.x)), true)), Struct_2(Struct_1(u_input.b.x, select(~vec4<u32>(u_input.b.x, 3014u, u_input.b.x, 37264u), vec4<u32>(u_input.b.x, u_input.b.x, 69109u, u_input.b.x), vec4<bool>(false, false, true, true)), firstTrailingBit(max(u_input.b.x, u_input.b.x))), Struct_1(_wgslsmith_mod_u32(u_input.b.x & 15734u, ~157111u), vec4<u32>(~64u, ~u_input.b.x, ~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 69859u)), _wgslsmith_mod_u32(~u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-global2.zz)), countOneBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.b.x, 10310u))), _wgslsmith_mod_vec2_u32(vec2<u32>(43327u, 33876u), u_input.b) | u_input.b)));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, var_0.a, -6145i), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, -66842i), 49648i), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(2147483647i, u_input.a.x, arg_0.x, u_input.a.x)), vec4<i32>(arg_0.x, 0i, 2147483647i, 0i)), 0i));
    let var_2 = 1i;
    global2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(480f, _wgslsmith_f_op_f32(ceil(arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1283f) + global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) << (~u_input.b.x % 32u), 16u)]), 1708f)));
    return Struct_4(Struct_3(select(_wgslsmith_div_i32(var_2, max(8965i, 1i)), 1i, var_0.b), true));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(4294967295u ^ ((arg_2.a | u_input.b.x) >> (_wgslsmith_div_u32(u_input.b.x, 17147u) % 32u)), 6u)] - vec4<f32>(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 16u)] - global2.x), _wgslsmith_f_op_f32(func_3(arg_0, 0i, u_input.a.xx, arg_2.b.wyy)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-274f, global1[_wgslsmith_index_u32(78235u, 16u)]) * _wgslsmith_f_op_f32(-1520f + 1239f)), 491f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(arg_2.b.x, 6u)]) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1267f, 1535f, 2250f, -778f), global3[_wgslsmith_index_u32(0u, 6u)], vec4<bool>(false, true, arg_0, true))) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global2.x, 500f, global1[_wgslsmith_index_u32(3497u, 16u)]))))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(0i, 0i, -18752i), vec3<i32>(arg_1.a.a, u_input.a.x, -12568i)), u_input.a.wyw) | 1i, 1i);
    let var_2 = Struct_1(15705u, vec4<u32>(arg_2.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_3.b.x, 71427u), ~u_input.b.x) | ~arg_3.b.x, arg_2.c, u_input.b.x), reverseBits(arg_2.b.x));
    global1 = array<f32, 16>();
    return Struct_2(arg_2, Struct_1(var_2.b.x, arg_2.b, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-478f, var_0.x) * vec2<f32>(global2.x, var_0.x))))));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: i32) -> vec3<u32> {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(673f)))))));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = _wgslsmith_f_op_f32(func_5(all(!var_2), func_1(_wgslsmith_mult_vec3_i32(u_input.a.wwy, u_input.a.xzz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-603f, arg_0.c.x, global1[_wgslsmith_index_u32(arg_2, 16u)]))), Struct_1(_wgslsmith_mod_u32(u_input.b.x, 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.b.x, arg_2), arg_0.a.b.wzw), 5121u, arg_0.b.a | arg_0.a.b.x, var_0.b.x), arg_2), Struct_1(4538u, _wgslsmith_mod_vec4_u32(countOneBits(arg_0.b.b), arg_0.a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(72108u, 1u, arg_2) & var_0.b.xyz, var_0.b.yzx))).c.x + 1520f);
    global1 = array<f32, 16>();
    return vec3<u32>(_wgslsmith_add_u32(~min(firstTrailingBit(6815u), ~796u), ~u_input.b.x), 4294967295u, 25891u);
}

fn func_7(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_sub_u32(~arg_1.x, arg_1.x), ~vec4<u32>(51885u, 4294967295u, arg_1.x, 1u) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 16673u)), reverseBits(vec4<u32>(51703u, 0u, 73926u, 7795u))), (vec4<u32>(u_input.b.x, arg_1.x, u_input.b.x, 27598u) & vec4<u32>(0u, arg_1.x, 4294967295u, arg_1.x)) & (vec4<u32>(4294967295u, 16218u, u_input.b.x, 67559u) | vec4<u32>(0u, u_input.b.x, arg_1.x, arg_1.x)), vec4<u32>(abs(arg_1.x), reverseBits(4294967295u), ~arg_1.x, _wgslsmith_div_u32(82809u, arg_1.x))) % vec4<u32>(32u)), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.xxw))), _wgslsmith_div_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(42911u, u_input.b.x, 31457u) | vec3<u32>(7961u, 1u, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(50462u, 1u, 4294967295u)))), func_6(func_5(true, func_1(u_input.a.wyw, vec3<f32>(-574f, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)])), Struct_1(125303u, vec4<u32>(1u, u_input.b.x, 4294967295u, 4294967295u), u_input.b.x), Struct_1(37u, vec4<u32>(22538u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x)), -(~0i), _wgslsmith_dot_vec4_u32(vec4<u32>(52817u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 31021u, 0u, 50955u)), i32(-1i) * -2147483647i)));
    var var_1 = abs(abs(-(u_input.a >> (vec4<u32>(var_0.a, var_0.a, u_input.b.x, 4294967295u) % vec4<u32>(32u)))) & vec4<i32>(~firstLeadingBit(-2147483647i), u_input.a.x, select(21633i, -41376i, all(vec3<bool>(true, true, false))), func_4(Struct_3(-11620i, true), Struct_2(var_0, Struct_1(u_input.b.x, vec4<u32>(u_input.b.x, 1u, 10161u, var_0.b.x), u_input.b.x), vec2<f32>(global1[_wgslsmith_index_u32(24578u, 16u)], global2.x)), ~u_input.b.x).a));
    global1 = array<f32, 16>();
    global0 = array<vec2<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_add_u32(var_0.b.x << (~u_input.b.x % 32u), 41019u));
}

