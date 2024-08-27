struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 15>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(vec2<bool>(true, true), u_input.d.yx, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, firstTrailingBit(arg_0)), 15u)], Struct_1(!all(vec4<bool>(false, global2.a, global2.a, global2.a)), vec4<f32>(_wgslsmith_f_op_f32(select(-538f, 120f, global2.a)), _wgslsmith_f_op_f32(exp2(global2.b.x)), _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-1213f * 929f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global2.b.x))), Struct_1(global2.a && all(vec4<bool>(true, global2.a, global2.a, global2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_f_op_f32(-119f + -1140f), _wgslsmith_f_op_f32(trunc(global2.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2585f), -629f));
    var var_1 = var_0.a.b.x;
    var_1 = 0i;
    let var_2 = Struct_3(var_0.a, Struct_1(!(!global2.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-197f, global2.b.x)) + -1723f), _wgslsmith_div_f32(global2.b.x, var_0.b.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -251f))), -1000f)), _wgslsmith_f_op_f32(ceil(320f)));
    var var_3 = Struct_3(Struct_2(select(vec2<bool>(57517u >= global1[_wgslsmith_index_u32(1u, 15u)], var_2.a.d.a), vec2<bool>(any(var_0.a.a), true), !var_2.b.a || !global2.a), var_0.a.b, abs(62425u), var_2.b, _wgslsmith_div_vec2_f32(global2.b.yy, vec2<f32>(_wgslsmith_f_op_f32(-670f + var_0.b.b.x), var_2.a.e.x))), var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.x))));
    return ~_wgslsmith_div_vec3_u32(~arg_0, ~_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(var_3.a.c, 81682u, 1u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = ~func_3(vec3<u32>(_wgslsmith_sub_u32(45936u, ~u_input.e), ~_wgslsmith_dot_vec4_u32(vec4<u32>(36255u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 1u, u_input.a, 0u)), 1u));
    global2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(global2.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 442f, -493f, 214f)), vec4<f32>(arg_0.x, arg_0.x, 1152f, arg_0.x))))));
    let var_1 = ~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(32033u, 15u)], var_0.x), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], 1u)), min(78143u, ~20495u)));
    var var_2 = ~(~countOneBits(vec3<u32>(var_0.x, max(0u, 14977u), ~u_input.b)));
    let var_3 = Struct_3(Struct_2(select(!vec2<bool>(false, arg_1), select(!vec2<bool>(arg_1, global2.a), vec2<bool>(true, global2.a), true), !select(vec2<bool>(true, false), vec2<bool>(false, arg_1), vec2<bool>(arg_1, true))), ~(-firstLeadingBit(u_input.c.wz)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 15u)], 4294967295u, var_0.x, var_2.x) << (vec4<u32>(0u, var_2.x, 25473u, 4295u) % vec4<u32>(32u)), ~vec4<u32>(26069u, 8252u, 49336u, var_2.x)), Struct_1(arg_1, global2.b), _wgslsmith_f_op_vec2_f32(step(arg_0.yz, _wgslsmith_f_op_vec2_f32(-arg_0.yx)))), Struct_1(any(vec2<bool>(arg_1, !global2.a)), global2.b), _wgslsmith_f_op_f32(-995f + -141f));
    return Struct_1(all(select(vec4<bool>(global2.a, 1u <= var_1, any(vec3<bool>(true, true, arg_1)), true & arg_1), vec4<bool>(true, 1u >= global1[_wgslsmith_index_u32(u_input.b, 15u)], var_1 != u_input.b, arg_1), arg_1)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-487f)) - _wgslsmith_f_op_f32(step(global2.b.x, 1000f)))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-441f + 971f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - var_3.a.d.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1119f, var_3.b.b.x)))), 861f)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global2.a, vec4<f32>(func_2(_wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(global2.b - arg_0.b)), !global2.a).b.x, 371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-122f - arg_0.b.x)))), -1000f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))));
    let var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(select(225f, _wgslsmith_f_op_f32(round(649f)), global2.a | var_0.a)), -183f, var_0.b.x, global2.b.x), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) >= _wgslsmith_f_op_f32(sign(-455f))) == var_0.a);
    var var_3 = 13736i;
    var var_4 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(36135u, 15u)], 34155u, u_input.a, u_input.b), vec4<u32>(u_input.b, abs(u_input.b), u_input.e & u_input.a, ~global1[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_mult_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.e, u_input.b, 30771u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59263u, 15u)], 15u)], 46599u, 14140u, 4294967295u)) | (vec4<u32>(54316u, 54323u, u_input.e, 4294967295u) ^ vec4<u32>(14936u, 106895u, 4294967295u, 0u)), vec4<u32>(~u_input.e, ~global1[_wgslsmith_index_u32(1u, 15u)], 1u, ~23993u), u_input.d.x < u_input.c.x), select(reverseBits(vec4<u32>(54127u, 1u, 0u, 1u) >> (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 15u)], 45241u, u_input.b) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(60389u, u_input.e, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]) | vec4<u32>(51287u, 33768u, u_input.b, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 32687u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 4294967295u), vec4<u32>(u_input.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 15u)], 15u)], 1839u, u_input.e))), select(select(vec4<bool>(arg_0.a, var_0.a, arg_0.a, var_0.a), vec4<bool>(false, false, true, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, true)), !vec4<bool>(global2.a, var_2.a, true, arg_0.a), select(vec4<bool>(global2.a, true, global2.a, arg_0.a), vec4<bool>(var_2.a, true, arg_0.a, var_2.a), vec4<bool>(arg_0.a, global2.a, arg_0.a, var_0.a))))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(~vec4<u32>(1u, 1u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 15u)]), ~vec4<u32>(4294967295u, 32651u, global1[_wgslsmith_index_u32(u_input.e, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), false), abs(vec4<u32>(u_input.a, 47341u, 62518u, global1[_wgslsmith_index_u32(0u, 15u)])) | (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 11546u, global1[_wgslsmith_index_u32(u_input.b, 15u)], u_input.a) << (vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 15u)], u_input.e, 0u) % vec4<u32>(32u)))), ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(34058u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9249u, 15u)], 15u)], 0u, u_input.e), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28494u, 15u)], 15u)], 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]), vec4<u32>(4294967295u, u_input.b, u_input.e, 1u)), ~vec4<u32>(1u, 1u, 1u, u_input.a))));
    return func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(570f * -366f), _wgslsmith_div_f32(215f, var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1162f))), var_0.b.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1700f, -1000f, 564f, var_2.b.x)))))))), select(true, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1000f, -756f, -820f) - vec4<f32>(var_0.b.x, -430f, var_1, -799f)), any(!vec4<bool>(false, var_0.a, var_0.a, false))).a, !global2.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = 32453i;
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.e, u_input.b), arg_1.a.a) | _wgslsmith_mult_vec2_u32(vec2<u32>(62002u, 1u), vec2<u32>(4294967295u, arg_0.c)), select(~vec2<u32>(u_input.b, 7281u), vec2<u32>(u_input.e, global1[_wgslsmith_index_u32(23377u, 15u)]), vec2<bool>(false, true))) << (firstTrailingBit(~vec2<u32>(0u, u_input.e) | ~vec2<u32>(u_input.a, u_input.b)) % vec2<u32>(32u)), vec2<u32>(func_3(~abs(vec3<u32>(arg_1.a.c, 47516u, arg_0.c))).x, _wgslsmith_mult_u32(max(1u, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(17091u, 38929u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a))))));
    let var_2 = _wgslsmith_mult_i32(arg_0.b.x, ~reverseBits(_wgslsmith_div_i32(0i, arg_1.a.b.x)));
    let var_3 = Struct_2(arg_0.a, ~firstLeadingBit(~arg_0.b), 4294967295u, Struct_1(any(!select(vec3<bool>(false, true, arg_0.a.x), vec3<bool>(arg_1.a.a.x, global2.a, true), global2.a)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.e.x), arg_0.d.b.x, true)), 464f, global2.b.x, -1218f)), vec2<f32>(arg_0.d.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-838f + arg_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c)))))));
    let var_4 = func_4(var_3.d);
    return !arg_0.a;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global2.b.wyy);
    var var_1 = Struct_2(func_5(Struct_2(select(vec2<bool>(global2.a, global2.a), select(vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, false), global2.a), all(vec2<bool>(global2.a, global2.a))), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, -4727i), -vec2<i32>(arg_1, 2147483647i)), ~arg_0, func_4(func_2(global2.b, global2.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.b.x, global2.b.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1115f, 851f), vec2<f32>(var_0.x, 298f), global2.a)), vec2<bool>(global2.a, global2.a)))), Struct_3(Struct_2(vec2<bool>(global2.a, global2.a), u_input.c.yw, 24207u, Struct_1(global2.a, vec4<f32>(724f, global2.b.x, global2.b.x, global2.b.x)), var_0.xx), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1870f, 241f, global2.b.x, 197f) - vec4<f32>(var_0.x, global2.b.x, 365f, var_0.x)), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.x), 761f)))), vec2<i32>(abs(-2147483647i) >> (select(abs(90605u), abs(1u), !global2.a) % 32u), ~abs(_wgslsmith_mod_i32(-1i, -2147483647i))), ~u_input.a, Struct_1(_wgslsmith_f_op_f32(max(494f, -269f)) < global2.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b * global2.b), vec4<f32>(415f, global2.b.x, -644f, var_0.x))), _wgslsmith_f_op_vec2_f32(global2.b.zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.xy), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(317f, global2.b.x))), select(vec2<bool>(true, false), vec2<bool>(global2.a, true), global2.a))))));
    let var_2 = !vec2<bool>(true, true & !(-1i == arg_1));
    var var_3 = arg_0 ^ ~41838u;
    global1 = array<u32, 15>();
    return var_1.d;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = any(vec2<bool>(true, !(750f < arg_0.d.b.x)));
    var var_1 = ~0u;
    var_0 = global2.a;
    let var_2 = Struct_2(vec2<bool>(arg_2.a, true), -(~(select(u_input.d.zy, u_input.d.zx, arg_2.a) | u_input.c.xx)), ~_wgslsmith_clamp_u32(41064u, min(1u, arg_0.c | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.c, 15u)], 15u)]), 7283u), func_2(_wgslsmith_div_vec4_f32(arg_2.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1302f, 170f, -205f, arg_1.b.x))), vec4<f32>(arg_1.b.x, arg_2.b.x, 1121f, global2.b.x)))), select(!arg_0.d.a, arg_1.a | (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)] > 4294967295u), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.x))), _wgslsmith_div_f32(450f, _wgslsmith_f_op_f32(f32(-1f) * -279f))));
    let var_3 = 0u;
    return vec2<bool>(global2.a, true);
}

fn func_7(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_2(!arg_0.a, countOneBits(vec2<i32>(~(~25274i), firstLeadingBit(arg_0.b.x << (u_input.b % 32u)))), _wgslsmith_mult_u32(u_input.e, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 27106u, 0u, global1[_wgslsmith_index_u32(6803u, 15u)]), vec4<u32>(12068u, 24394u, global1[_wgslsmith_index_u32(6174u, 15u)], 39561u)))), func_4(Struct_1(arg_0.a.x, arg_0.d.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1623f + arg_0.e.x)), _wgslsmith_f_op_f32(min(1703f, _wgslsmith_f_op_f32(ceil(-3022f))))))));
    let var_1 = _wgslsmith_mod_vec3_i32(~select(~vec3<i32>(-27525i, -21930i, u_input.c.x), -vec3<i32>(1i, arg_0.b.x, var_0.b.x), 21657u >= ~var_0.c), -(vec3<i32>(-1i) * -u_input.d));
    global2 = Struct_1(global2.a && global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, 1173f, arg_0.e.x, -1628f)) - func_2(vec4<f32>(1659f, arg_0.d.b.x, -1187f, arg_0.e.x), true).b)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b.x - global2.b.x)), _wgslsmith_f_op_f32(ceil(func_2(vec4<f32>(221f, -119f, var_0.e.x, arg_0.d.b.x), true).b.x)), _wgslsmith_f_op_f32(-func_4(var_0.d).b.x), 1329f)));
    let var_2 = _wgslsmith_mod_u32(var_0.c, 18996u);
    let var_3 = Struct_3(arg_0, var_0.d, _wgslsmith_f_op_f32(761f - _wgslsmith_f_op_f32(1082f + -1134f)));
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(var_3.a.c, u_input.b), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-830f, global2.b.x, 757f)));
    global1 = array<u32, 15>();
    let var_1 = Struct_2(select(!(!vec2<bool>(global2.a, false)), vec2<bool>(true, select(false, all(vec4<bool>(true, true, true, global2.a)), any(vec2<bool>(true, true)))), any(vec2<bool>(true, true))), vec2<i32>(_wgslsmith_div_i32(u_input.c.x << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), ~u_input.c.x >> (~1u % 32u)), u_input.c.x), func_7(Struct_2(func_6(Struct_2(vec2<bool>(true, global2.a), u_input.d.zy, 73888u, Struct_1(global2.a, vec4<f32>(global2.b.x, var_0.x, global2.b.x, 472f)), global2.b.yx), func_1(4294967295u, u_input.c.x), Struct_1(false, vec4<f32>(-210f, var_0.x, global2.b.x, 1000f))), vec2<i32>(~u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.c.x)), 18490u, Struct_1(all(vec3<bool>(false, false, true)), _wgslsmith_div_vec4_f32(vec4<f32>(-1092f, 1063f, global2.b.x, 103f), global2.b)), vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), -242f))), func_2(_wgslsmith_f_op_vec4_f32(global2.b + global2.b), !(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42535u, 15u)], 15u)] > 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), -133f) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-611f + var_0.x)))));
    let var_2 = vec4<u32>(~(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 5498u), 15u)] | (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, var_1.c), 15u)] | ~0u)), select(27610u & u_input.a, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_1.c, 15u)], 15u)], false), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(60921u, global1[_wgslsmith_index_u32(u_input.e, 15u)], 1u, global1[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 15u)], 0u, 45006u, 19985u), ~vec4<u32>(var_1.c, 10075u, 36380u, var_1.c))), vec4<u32>(~8874u, 38718u, ~reverseBits(var_1.c), min(abs(53278u), var_1.c))), 15u)], _wgslsmith_mult_u32(~(reverseBits(global1[_wgslsmith_index_u32(u_input.e, 15u)]) | (global1[_wgslsmith_index_u32(var_1.c, 15u)] ^ var_1.c)), 1u));
    var var_3 = -_wgslsmith_mult_i32(2147483647i, 1i);
    var var_4 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-30710i, 26580i), min(vec2<i32>(-12635i, -2082i), vec2<i32>(var_1.b.x, -21214i))), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global2.b.zx), 0u, vec3<i32>(-2147483647i, var_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, -2147483647i, -u_input.d.x), ~vec3<i32>(u_input.c.x, var_1.b.x, var_1.b.x))), -(u_input.c >> (var_2 % vec4<u32>(32u))));
}

