struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(1205f, 1056f, -1501f, 121f, 511f, 700f, 263f, 2324f, 1000f, -104f, 224f, -730f, -731f, -604f, 1062f, 1215f, -251f, -2411f, -1022f, 778f, -2575f, -975f, 633f, 959f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<f32, 24>();
    var var_0 = vec3<u32>(reverseBits(u_input.a.x), 0u, _wgslsmith_add_u32(4294967295u, arg_1.b));
    var_0 = vec3<u32>(arg_1.b, var_0.x, firstLeadingBit(1u));
    var var_1 = Struct_5(Struct_4(Struct_2(Struct_1(1i, _wgslsmith_mult_u32(var_0.x, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 24u)], -254f, global0[_wgslsmith_index_u32(arg_1.b, 24u)], 109f), vec4<f32>(525f, arg_1.d.x, 634f, -472f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 24u)], -1564f))), arg_1, select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(true, false, true)), arg_1, abs(u_input.a.xwz)), vec3<bool>(!(126f > arg_1.c.x), true, all(vec4<bool>(true, true, true, true))), Struct_2(arg_1, arg_1, vec4<bool>(true, true, true, true), Struct_1(1i, 1u, _wgslsmith_div_vec4_f32(arg_1.c, vec4<f32>(-2422f, 712f, -857f, arg_1.d.x)), arg_1.c.ww), reverseBits(u_input.a.wxx >> (u_input.a.wyx % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) * _wgslsmith_f_op_f32(ceil(218f)))), Struct_3(true));
    let var_2 = any(var_1.a.b.xx);
    return (vec3<i32>(1i, 1i, 1i) & _wgslsmith_add_vec3_i32(-select(vec3<i32>(var_1.a.a.a.a, -1i, arg_1.a), vec3<i32>(66377i, 24613i, arg_1.a), false), (vec3<i32>(-39915i, 46009i, arg_1.a) & vec3<i32>(arg_1.a, -35964i, -2147483647i)) & vec3<i32>(arg_1.a, arg_1.a, var_1.a.a.b.a))) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(var_1.a.a.a.a, 1i, arg_1.a) & vec3<i32>(64843i, 0i, 11573i)), ~(~vec3<i32>(var_1.a.c.a.a, arg_1.a, 0i))), vec3<i32>(firstTrailingBit(1i), max(_wgslsmith_sub_i32(arg_1.a, var_1.a.c.b.a), 0i), -32944i));
}

fn func_2(arg_0: i32, arg_1: Struct_5, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = !select(!arg_1.a.c.c.xwz, arg_1.a.c.c.ywx, arg_1.b.a);
    let var_1 = any(select(arg_1.a.c.c, !vec4<bool>(var_0.x, true, true, true), true));
    let var_2 = arg_1.a.c.a.a;
    var var_3 = func_3(_wgslsmith_mod_vec2_u32(~u_input.a.wz, arg_1.a.a.e.xz) & vec2<u32>(~firstTrailingBit(u_input.a.x), 0u), Struct_1(42852i, _wgslsmith_mod_u32(u_input.a.x, 86902u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.d, global0[_wgslsmith_index_u32(4876u, 24u)], global0[_wgslsmith_index_u32(34003u, 24u)], -981f), vec4<f32>(global0[_wgslsmith_index_u32(103054u, 24u)], arg_1.a.a.b.c.x, global0[_wgslsmith_index_u32(arg_1.a.c.b.b, 24u)], -1391f), false)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(77698u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -587f, arg_1.a.a.d.c.x)))), arg_1.a.c.d.c)), arg_1.a.c.a.d));
    global0 = array<f32, 24>();
    return i32(-1i) * -27484i;
}

fn func_1() -> Struct_3 {
    var var_0 = max(-26625i, reverseBits(-1i)) & _wgslsmith_add_i32(~min(firstTrailingBit(1i), 1i), abs(func_2(-1i, Struct_5(Struct_4(Struct_2(Struct_1(-23602i, 23163u, vec4<f32>(303f, -616f, -1403f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<f32>(global0[_wgslsmith_index_u32(0u, 24u)], -1631f)), Struct_1(2147483647i, u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -999f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -1266f), vec2<f32>(-154f, -715f)), vec4<bool>(true, false, false, true), Struct_1(27308i, u_input.a.x, vec4<f32>(-849f, -296f, -655f, -1836f), vec2<f32>(143f, 559f)), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec3<bool>(true, true, false), Struct_2(Struct_1(-3569i, u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 1621f, 3613f, 556f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(24787u, 24u)])), Struct_1(70850i, 15876u, vec4<f32>(global0[_wgslsmith_index_u32(86015u, 24u)], global0[_wgslsmith_index_u32(44679u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 635f), vec2<f32>(1000f, 574f)), vec4<bool>(true, true, false, false), Struct_1(2147483647i, u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 974f), vec2<f32>(250f, -548f)), vec3<u32>(u_input.a.x, u_input.a.x, 52760u)), global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), Struct_3(false)), _wgslsmith_mult_i32(-40497i, 29819i), false)));
    global0 = array<f32, 24>();
    var_0 = -1i;
    let var_1 = Struct_2(Struct_1(~(~20315i), ~0u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1533f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], 255f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -2102f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 867f)))))), vec2<f32>(745f, -590f)), Struct_1(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -43288i, -2147483647i, 22255i), vec4<i32>(12014i, -48867i, -15613i, -2147483647i)))), ~u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) - _wgslsmith_f_op_f32(ceil(-479f))), global0[_wgslsmith_index_u32(25048u, 24u)], -1467f, -860f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(410f, -1769f) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 370f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(30132u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-116f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), true)))))), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), false), Struct_1(~(17409i << (u_input.a.x % 32u)) | ~(~20157i), _wgslsmith_dot_vec4_u32(max(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 96933u, u_input.a.x)), ~countOneBits(vec4<u32>(u_input.a.x, 68259u, 26433u, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 24u)]) + -371f), global0[_wgslsmith_index_u32(min(2916u, u_input.a.x), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(9485u, ~u_input.a.x), 24u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(6578u, 24u)], -2855f) - vec2<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 24u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(79474u, 24u)]) * vec2<f32>(635f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))))), countOneBits(u_input.a.zyw));
    var var_2 = vec3<u32>(select(~abs(u_input.a.x) & _wgslsmith_add_u32(~u_input.a.x, 39013u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.wz ^ vec2<u32>(var_1.a.b, 23396u), var_1.e.xy ^ u_input.a.xx), reverseBits(vec2<u32>(4294967295u, 1u))), var_1.d.a >= max(~(-1i), countOneBits(var_1.d.a))), countOneBits(14425u), var_1.b.b);
    return Struct_3(var_1.c.x);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = abs(18170i) << (_wgslsmith_clamp_u32(abs(~min(4294967295u, u_input.a.x)), 22614u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 7770u)), u_input.a.x) % 32u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~(~4294967295u), 24u)])) - _wgslsmith_f_op_f32(937f * _wgslsmith_f_op_f32(f32(-1f) * -474f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 24u)] + 1f)))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), max(0u, 40413u & u_input.a.x)), 24u)])), 497f);
    var var_2 = ~18158u;
    let var_3 = Struct_4(Struct_2(Struct_1(var_0, ~u_input.a.x << (~32547u % 32u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 361f, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1727f, var_1.x, 519f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) - vec4<f32>(894f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], var_1.x, 371f)))), vec2<f32>(var_1.x, 1828f)), Struct_1(~max(0i, var_0), u_input.a.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -948f, global0[_wgslsmith_index_u32(93868u, 24u)], 789f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, 543f, global0[_wgslsmith_index_u32(12204u, 24u)]))))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-553f * -1000f))), vec4<bool>(true | !arg_0.a, -1i < _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -7602i), vec3<i32>(-46511i, 25407i, 1i)), false, !func_1().a), Struct_1(0i, ~_wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 756f, -273f, -152f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 914f)) - var_1.yz)), abs(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), select(vec3<bool>(func_1().a, arg_0.a, true), select(!select(vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_0.a, true, arg_0.a)), !vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, true, any(vec2<bool>(arg_0.a, arg_0.a)))), !any(!vec3<bool>(arg_0.a, true, arg_0.a))), Struct_2(Struct_1(101i, 21151u | _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-973f, 257f, global0[_wgslsmith_index_u32(34149u, 24u)], 1206f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.zy)))), Struct_1(~(-46719i >> (u_input.a.x % 32u)), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1304f, -1127f, 853f, -620f), vec4<f32>(826f, -1136f, 518f, var_1.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_1.wy, var_1.zx, true))))), !vec4<bool>(arg_0.a | arg_0.a, arg_0.a, any(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), any(vec2<bool>(true, false))), Struct_1(var_0, firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(504f, -119f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 529f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-153f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], var_1.x, 1801f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 404f)))), vec3<u32>(firstTrailingBit(u_input.a.x << (1u % 32u)), u_input.a.x, ~firstLeadingBit(u_input.a.x))), var_1.x);
    var_2 = ~(~(~u_input.a.x));
    return var_3.a.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 24u)])))) - -825f);
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_1 = Struct_4(arg_1.c, select(select(!(!vec3<bool>(arg_2, false, arg_1.b.x)), arg_1.c.c.zzz, (21228u > arg_0.b) && !arg_1.b.x), vec3<bool>(true, all(arg_1.b.zy), arg_2), !select(select(arg_1.c.c.zww, arg_1.b, vec3<bool>(true, arg_1.b.x, arg_2)), !vec3<bool>(false, false, arg_2), arg_1.a.c.x)), Struct_2(arg_0, func_4(Struct_3(true)), arg_1.c.c, func_4(Struct_3(!arg_2)), ~vec3<u32>(62093u, arg_1.a.b.b, 0u)), arg_1.d);
    global0 = array<f32, 24>();
    return _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.d.a, _wgslsmith_sub_i32(arg_1.a.a.a, arg_1.c.a.a), -17626i), abs(~vec3<i32>(arg_0.a, arg_1.c.d.a, 0i) >> (vec3<u32>(55673u, var_1.c.a.b, 4294967295u) % vec3<u32>(32u)))) & arg_1.c.a.a;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = countOneBits(vec3<i32>(arg_2.x, -_wgslsmith_mod_i32(arg_2.x, 1i) & 1i, arg_2.x));
    let var_1 = abs(_wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(-2147483647i, arg_2.x, 48729i))) << (max(~vec3<u32>(75219u, 110776u, 13993u), _wgslsmith_mod_vec3_u32(u_input.a.xzx, vec3<u32>(1u, u_input.a.x, arg_0))) % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_div_i32(-9972i, -1i), arg_2.x), -(arg_2.x & arg_2.x))));
    let var_2 = !vec4<bool>(func_1().a, !arg_1.a, any(!(!vec4<bool>(arg_1.a, false, arg_1.a, true))), select(all(!vec2<bool>(arg_1.a, true)), true, abs(arg_3.x) < ~arg_3.x));
    var var_3 = vec2<u32>(3989u << (u_input.a.x % 32u), abs(arg_3.x));
    var var_4 = Struct_1((min(var_0.x, -arg_2.x) | _wgslsmith_add_i32(firstTrailingBit(var_1), -arg_2.x)) >> (reverseBits(7413u) % 32u), _wgslsmith_dot_vec4_u32(u_input.a, abs(~vec4<u32>(51042u, 4294967295u, arg_3.x, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, 1371f, global0[_wgslsmith_index_u32(0u, 24u)], 1102f) * vec4<f32>(global0[_wgslsmith_index_u32(14794u, 24u)], global0[_wgslsmith_index_u32(arg_3.x, 24u)], -1754f, global0[_wgslsmith_index_u32(36572u, 24u)])))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_3.x, 24u)], global0[_wgslsmith_index_u32(arg_3.x, 24u)], global0[_wgslsmith_index_u32(48351u, 24u)], global0[_wgslsmith_index_u32(25722u, 24u)]) - vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 24u)], -1000f, -606f, 896f)), vec4<f32>(global0[_wgslsmith_index_u32(17847u, 24u)], global0[_wgslsmith_index_u32(arg_0, 24u)], -642f, 2289f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 839f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_3.x, 24u)], -415f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2231f, -844f), vec2<f32>(-960f, -1000f)))))))));
    return _wgslsmith_mod_vec2_u32(abs(vec2<u32>(arg_0, _wgslsmith_add_u32(1u, arg_0))), min(vec2<u32>(1u, 103546u), ~_wgslsmith_mult_vec2_u32(~arg_3.yy, vec2<u32>(var_4.b, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(1u, 1u | u_input.a.x) << ((~(_wgslsmith_dot_vec3_u32(u_input.a.xzz, vec3<u32>(0u, 15729u, 13934u)) & ~15324u) >> (9770u % 32u)) % 32u);
    var var_1 = func_6(~1u, Struct_3(true), vec3<i32>(abs(~(~(-8833i))), func_5(func_4(func_1()), Struct_4(Struct_2(Struct_1(-92099i, 48437u, vec4<f32>(-1196f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<f32>(global0[_wgslsmith_index_u32(73861u, 24u)], 362f)), Struct_1(2147483647i, 17913u, vec4<f32>(490f, 1000f, 297f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<f32>(global0[_wgslsmith_index_u32(72319u, 24u)], -2800f)), vec4<bool>(true, true, true, false), Struct_1(33509i, u_input.a.x, vec4<f32>(1751f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -519f, -210f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -1000f)), vec3<u32>(20531u, 5477u, 0u)), vec3<bool>(true, false, true), Struct_2(Struct_1(1i, u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(45782u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<f32>(global0[_wgslsmith_index_u32(62776u, 24u)], -1000f)), Struct_1(-6697i, u_input.a.x, vec4<f32>(-476f, -746f, 531f, 1087f), vec2<f32>(-685f, 390f)), vec4<bool>(true, false, true, true), Struct_1(3221i, u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], 195f, -168f), vec2<f32>(global0[_wgslsmith_index_u32(3129u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec3<u32>(1u, u_input.a.x, 4294967295u)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(39407u, 24u)], 231f))), true), 380i >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(39739u, 1u, 1u, u_input.a.x)) % 32u)), u_input.a.zzy);
    let var_2 = abs(vec4<i32>(-3398i, 1i >> (_wgslsmith_div_u32(~var_1.x, var_1.x >> (var_1.x % 32u)) % 32u), func_3(select(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(u_input.a.x, 1284u), true), func_4(Struct_3(true))).x ^ (-1i >> (~var_1.x % 32u)), 4525i));
    var_0 = var_1.x;
    global0 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -1043f, vec4<i32>(-(~13561i), -var_2.x, _wgslsmith_div_i32(54342i, var_2.x ^ var_2.x), countOneBits(_wgslsmith_div_i32(var_2.x, -1i))), global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 24u)]);
}

