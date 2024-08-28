struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<f32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: array<f32, 27>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<f32> {
    var var_0 = select(vec2<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, arg_2, arg_2)), vec3<bool>(arg_2, arg_2, false), any(vec2<bool>(true, arg_2)))), arg_2), vec2<bool>(_wgslsmith_f_op_f32(sign(1f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(u_input.a, 27u)]), global1[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 27u)]), all(vec2<bool>(any(vec4<bool>(true, false, arg_2, false)), false))), vec2<bool>(arg_2, all(vec4<bool>(false, arg_2, !arg_2, false))));
    global1 = array<f32, 27>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~39972u), 27u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 27u)])), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(858u, 36906u, arg_1.x, u_input.c), vec4<u32>(30211u, 1u, arg_1.x, u_input.a)) | _wgslsmith_add_u32(52497u, arg_1.x), 27u)])))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 239f, global1[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(u_input.c, 27u)])) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1241f, -2016f, -481f, var_1.x), vec4<f32>(700f, var_1.x, 118f, -592f), vec4<bool>(arg_2, arg_2, true, true))) * vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], -772f, global1[_wgslsmith_index_u32(20392u, 27u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-425f, -1532f, var_1.x, 806f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -1338f, -929f, 366f), arg_2)) - vec4<f32>(1561f, var_1.x, global1[_wgslsmith_index_u32(0u, 27u)], -1000f)) - vec4<f32>(805f, var_1.x, global1[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_f_op_f32(var_1.x * var_1.x)))) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], var_1.x, global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(exp2(var_1.x))));
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    global0 = array<vec2<f32>, 7>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(func_3(~u_input.b, _wgslsmith_mult_vec3_u32(max(abs(vec3<u32>(4294967295u, u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(29161u, 7042u, u_input.c), vec3<u32>(1u, 0u, 4294967295u))), vec3<u32>(u_input.a, 103030u, max(12393u, 0u))), !(true & arg_0.b))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(45103u, 27u)], -1508f))))))), arg_0.d);
    var var_1 = _wgslsmith_f_op_f32(abs(arg_0.d.a));
    let var_2 = var_0.d;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(294f, _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(1i, arg_0.d.c), vec3<u32>(u_input.c, 1u, u_input.a), false)).x, var_0.d.a, var_2.b) - _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1304f, 227f, -2207f, var_2.a)))), _wgslsmith_f_op_vec4_f32(exp2(var_0.a)))), !var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -616f), var_2);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.d.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, reverseBits(var_0.d.c), -16070i, select(36257i, -11222i, true)), -vec4<i32>(-13801i, var_3.d.c, arg_0.d.c, 58472i) << (vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.c) % vec4<u32>(32u))), ~u_input.d.x), firstTrailingBit(vec3<i32>(var_2.c, var_2.c, -2147483647i)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~(~vec3<i32>(-1i, u_input.d.x, 46766i)), _wgslsmith_add_vec3_i32(max(firstTrailingBit(vec3<i32>(u_input.b.x, -2147483647i, 38142i)), ~vec3<i32>(u_input.b.x, 2147483647i, -13122i)), func_2(Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 27u)], global1[_wgslsmith_index_u32(71448u, 27u)], -262f, global1[_wgslsmith_index_u32(4294967295u, 27u)]), true, global1[_wgslsmith_index_u32(u_input.a, 27u)], Struct_1(715f, global1[_wgslsmith_index_u32(arg_0, 27u)], -5879i))) << (select(vec3<u32>(46368u, 7995u, 8241u), vec3<u32>(arg_0, 11837u, 0u), true) % vec3<u32>(32u)))), select(vec3<i32>(-1i) * -vec3<i32>(-1i, -2147483647i, u_input.b.x), reverseBits(vec3<i32>(1i, 19620i, -43388i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(25075u, u_input.c, u_input.c), vec3<u32>(u_input.a, arg_0, 1u)) % vec3<u32>(32u)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true))) >> (vec3<u32>(firstTrailingBit(~4294967295u), arg_0, ~(arg_0 << (u_input.c % 32u))) % vec3<u32>(32u)));
    global1 = array<f32, 27>();
    global0 = array<vec2<f32>, 7>();
    var var_1 = Struct_1(-444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 346f)), -2147483647i);
    var var_2 = reverseBits(~vec2<u32>(4294967295u, ~14458u) & _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, ~u_input.a), abs(vec2<u32>(u_input.c, 4294967295u)) >> (~vec2<u32>(arg_0, 35134u) % vec2<u32>(32u))));
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1063f, -868f, -1005f, 725f), vec4<f32>(var_1.b, global1[_wgslsmith_index_u32(4294967295u, 27u)], 479f, var_1.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], var_1.a, global1[_wgslsmith_index_u32(30334u, 27u)], var_1.a)))), _wgslsmith_f_op_vec4_f32(func_3(u_input.b, firstLeadingBit(vec3<u32>(var_2.x, 39366u, u_input.c)) ^ (vec3<u32>(var_2.x, var_2.x, 4294967295u) >> (vec3<u32>(28437u, 31976u, arg_0) % vec3<u32>(32u))), false))), all(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, false, false, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c << (var_2.x % 32u), 27u)] * global1[_wgslsmith_index_u32(u_input.c, 27u)]))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1596f, 130f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(870f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * 451f))), 3364i));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = array<vec2<f32>, 7>();
    var var_0 = 2147483647i;
    var var_1 = vec2<u32>(95455u, abs(abs(~firstTrailingBit(u_input.a))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-696f, _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(arg_0.a.x - -1523f), arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c)))), _wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(arg_0.d.c, arg_0.d.c), vec2<bool>(true, arg_0.b)), (vec2<i32>(48417i, -1i) | vec2<i32>(2147483647i, arg_0.d.c)) & u_input.b)), u_input.d, vec4<bool>(arg_0.b, all(vec2<bool>(any(vec2<bool>(arg_0.b, arg_0.b)), arg_0.b)), !arg_0.b, arg_0.b), false);
    let var_3 = ~(~vec3<u32>(u_input.a | var_1.x, ~4294967295u, ~2838u) ^ abs(vec3<u32>(11507u, u_input.a, u_input.a) | ~vec3<u32>(var_1.x, u_input.c, u_input.a)));
    return func_1(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, 1u), ~var_3.yy, !arg_0.b), ~firstLeadingBit(countOneBits(vec2<u32>(var_1.x, var_1.x))))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i), -6273i, -2147483647i), vec3<i32>(0i, abs(_wgslsmith_dot_vec2_i32(u_input.d, u_input.b)), 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-29439i, u_input.b.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x))), -u_input.b.x, 0i, 1i), vec4<i32>(~0i, _wgslsmith_mult_i32(-1i, u_input.d.x) & _wgslsmith_mod_i32(2147483647i, 12093i), u_input.b.x, u_input.b.x)), u_input.b.x, ~min(~(-1i), -u_input.b.x));
    let var_1 = true;
    var var_2 = _wgslsmith_add_vec4_i32(firstTrailingBit(select(select(~vec4<i32>(-1i, -11732i, u_input.b.x, u_input.d.x), -vec4<i32>(-2147483647i, 1i, u_input.b.x, u_input.d.x), select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, false, var_1, var_1))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, u_input.d.x, 13320i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x))), select(vec4<bool>(false, var_1, var_1, var_1), !vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, var_1, false, var_1), vec4<bool>(true, var_1, false, var_1))))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-7048i, u_input.b.x, -26297i, u_input.b.x), -vec4<i32>(0i, -8828i, var_0.x, var_0.x)) ^ vec4<i32>(var_0.x, ~(~(-35018i)), 0i, -2147483647i));
    let var_3 = _wgslsmith_f_op_f32(ceil(-708f));
    global1 = array<f32, 27>();
    let var_4 = Struct_2(func_4(func_1(abs(1u))), -(~(-countOneBits(var_2.xy))), !select(vec4<bool>(true, true, var_2.x != 2147483647i, var_1), !(!vec4<bool>(var_1, var_1, var_1, true)), vec4<bool>(any(vec3<bool>(true, false, var_1)), any(vec2<bool>(false, var_1)), var_1, all(vec3<bool>(true, true, var_1)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(Struct_3(vec4<f32>(var_4.a.b, 836f, 606f, 930f), true, -1224f, Struct_1(global1[_wgslsmith_index_u32(48183u, 27u)], 476f, var_2.x))).a, -749f, -974f) * vec3<f32>(-330f, _wgslsmith_f_op_f32(478f + 1253f), 554f)))));
}

