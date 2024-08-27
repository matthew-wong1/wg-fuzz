struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true, 1606f, vec2<u32>(0u, 0u)), Struct_1(false, -1148f, vec2<u32>(4294967295u, 3628u)), Struct_1(true, -245f, vec2<u32>(26101u, 26093u)), Struct_1(true, 964f, vec2<u32>(16512u, 0u)), Struct_1(false, 213f, vec2<u32>(33552u, 4294967295u)), Struct_1(false, 798f, vec2<u32>(42423u, 13829u)), Struct_1(false, 1093f, vec2<u32>(0u, 0u)), Struct_1(false, 153f, vec2<u32>(16647u, 54284u)), Struct_1(true, -1393f, vec2<u32>(1530u, 104988u)), Struct_1(true, -684f, vec2<u32>(17734u, 14179u)), Struct_1(true, -1236f, vec2<u32>(11484u, 0u)), Struct_1(false, 1070f, vec2<u32>(0u, 37486u)), Struct_1(false, 174f, vec2<u32>(12959u, 32087u)), Struct_1(true, -1000f, vec2<u32>(1u, 1u)), Struct_1(true, 739f, vec2<u32>(3779u, 28424u)), Struct_1(false, -650f, vec2<u32>(1961u, 0u)), Struct_1(true, -2973f, vec2<u32>(1u, 4294967295u)), Struct_1(false, 506f, vec2<u32>(6062u, 47335u)), Struct_1(true, 287f, vec2<u32>(9309u, 1u)));

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(i32(-2147483648), 304f, true, Struct_1(true, 685f, vec2<u32>(27487u, 4294967295u)), Struct_1(false, -1359f, vec2<u32>(0u, 756u))), Struct_2(1i, -916f, false, Struct_1(false, 137f, vec2<u32>(0u, 31579u)), Struct_1(true, 949f, vec2<u32>(4294967295u, 28974u))), Struct_2(9563i, 924f, false, Struct_1(true, 748f, vec2<u32>(58805u, 1u)), Struct_1(false, -849f, vec2<u32>(4294967295u, 8682u))), Struct_2(16089i, -995f, false, Struct_1(false, -707f, vec2<u32>(28371u, 4294967295u)), Struct_1(true, -1492f, vec2<u32>(51291u, 47528u))), Struct_2(0i, -680f, true, Struct_1(true, -447f, vec2<u32>(812u, 116086u)), Struct_1(false, -645f, vec2<u32>(4294967295u, 4294967295u))), Struct_2(-25519i, 327f, false, Struct_1(false, -130f, vec2<u32>(0u, 1u)), Struct_1(true, 1010f, vec2<u32>(10046u, 1u))), Struct_2(-52356i, -1156f, true, Struct_1(true, 979f, vec2<u32>(104064u, 0u)), Struct_1(false, -556f, vec2<u32>(0u, 73219u))), Struct_2(49011i, 1356f, false, Struct_1(true, 182f, vec2<u32>(4294967295u, 113710u)), Struct_1(false, 1000f, vec2<u32>(4294967295u, 10716u))), Struct_2(-3146i, 108f, true, Struct_1(true, -1133f, vec2<u32>(0u, 40056u)), Struct_1(false, -524f, vec2<u32>(1u, 25972u))), Struct_2(1i, -250f, true, Struct_1(true, 565f, vec2<u32>(0u, 22315u)), Struct_1(true, -382f, vec2<u32>(53276u, 80955u))), Struct_2(0i, -966f, false, Struct_1(false, 1159f, vec2<u32>(9521u, 1u)), Struct_1(true, 2057f, vec2<u32>(1u, 58849u))), Struct_2(i32(-2147483648), -1000f, true, Struct_1(false, 1130f, vec2<u32>(74095u, 4294967295u)), Struct_1(false, 1472f, vec2<u32>(1u, 55691u))), Struct_2(0i, 1130f, false, Struct_1(true, -1782f, vec2<u32>(81045u, 55317u)), Struct_1(false, -332f, vec2<u32>(42399u, 1u))));

var<private> global3: f32 = 930f;

var<private> global4: Struct_1 = Struct_1(true, 213f, vec2<u32>(4294967295u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-507f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1286f), global4.b)) + global4.b))));
    global2 = array<Struct_2, 13>();
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -807f))))))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b * 786f) * -1668f);
    global1 = array<Struct_1, 19>();
    return vec4<f32>(_wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.b), global4.b, select(-12080i > (-10589i >> (global4.c.x % 32u)), global4.a, all(select(vec4<bool>(false, global4.a, true, global4.a), vec4<bool>(global4.a, global4.a, true, false), false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-722f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.b))), _wgslsmith_f_op_f32(global4.b * _wgslsmith_f_op_f32(-global4.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1369f, _wgslsmith_f_op_f32(global4.b - global4.b)))))));
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_2, 13>();
    let var_0 = min(34355u, 4294967295u);
    var var_1 = any(select(select(vec4<bool>(global4.a, global4.a, global4.a, false), !vec4<bool>(false, global4.a, false, global4.a), !vec4<bool>(global4.a, false, global4.a, false)), !(!vec4<bool>(global4.a, false, global4.a, global4.a)), select(select(vec4<bool>(false, true, global4.a, global4.a), vec4<bool>(global4.a, true, global4.a, false), global4.a), select(vec4<bool>(global4.a, false, false, global4.a), vec4<bool>(global4.a, false, false, false), global4.a), false || global4.a))) && select(true, global4.a & all(!vec4<bool>(true, global4.a, global4.a, global4.a)), global4.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b, global4.b, global4.b, global4.b) * vec4<f32>(-286f, global4.b, global4.b, global4.b))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b, global4.b, 214f, -377f)))))));
    var_1 = any(!(!vec4<bool>(false, true, true, global4.a)));
    return Struct_3(18551i, !all(vec2<bool>(global4.a, true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(firstLeadingBit(global0.x), global0.x), 22657u, min(~(~u_input.a.x), global0.x)), u_input.b);
    var var_0 = ~select(countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-47353i, -52325i), vec2<i32>(arg_1.a, -1i)), ~(-1i), ~arg_1.a)), vec3<i32>(_wgslsmith_mod_i32(-20818i, _wgslsmith_div_i32(-36412i, arg_1.a)), abs(-arg_1.a), arg_1.a), !(!(global4.b >= global4.b)));
    let var_1 = func_2();
    var var_2 = -_wgslsmith_add_vec4_i32(~select(-vec4<i32>(-1i, var_1.a, 1i, -1i), -vec4<i32>(arg_1.a, var_0.x, var_1.a, arg_1.a), select(vec4<bool>(false, false, false, var_1.b), vec4<bool>(true, var_1.b, false, false), var_1.b)), firstLeadingBit(~max(vec4<i32>(-39271i, var_0.x, 0i, arg_1.a), vec4<i32>(28184i, -41281i, var_1.a, var_0.x))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz ^ firstTrailingBit(vec2<u32>(30154u, u_input.a.x)), _wgslsmith_div_vec2_u32(~global4.c, _wgslsmith_div_vec2_u32(u_input.a.yx, vec2<u32>(1u, global0.x)))), 31714u), global0.x), 13u)];
    return -273f;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    let var_0 = false;
    global2 = array<Struct_2, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b + global4.b) * arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(trunc(-815f)))), _wgslsmith_f_op_f32(func_4(vec3<f32>(arg_1.x, global4.b, _wgslsmith_f_op_f32(floor(3072f))), func_2())))));
    let var_2 = reverseBits(~(~abs(vec4<u32>(u_input.b.x, 37457u, 88927u, 4294967295u)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.x, global0.x, 49831u), u_input.a), firstLeadingBit(75828u), _wgslsmith_div_u32(global0.x, 12827u), ~global4.c.x) % vec4<u32>(32u))));
    var var_3 = -793f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(666f + _wgslsmith_f_op_f32(-global4.b))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<f32>) -> StorageBuffer {
    var var_0 = global4.a;
    global2 = array<Struct_2, 13>();
    global2 = array<Struct_2, 13>();
    var_0 = !all(!(!vec4<bool>(arg_0.a, false, true, arg_0.a))) & ((((66369i & arg_1.x) | -arg_1.x) >> ((global4.c.x << (global0.x % 32u)) % 32u)) <= ((~arg_1.x | 15881i) & -25002i));
    global0 = vec3<u32>(u_input.a.x, 11088u & _wgslsmith_div_u32(arg_0.c.x, ~global4.c.x), ~(~global4.c.x));
    return StorageBuffer(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_sub_u32(~global4.c.x, arg_0.c.x)), ~arg_0.c.x, ~_wgslsmith_dot_vec2_u32(arg_0.c, vec2<u32>(global4.c.x, 4294967295u))), ~arg_0.c.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!(!select(vec4<bool>(true, true, global4.a, true), vec4<bool>(false, false, true, true), vec4<bool>(global4.a, true, false, true))), !vec4<bool>(global4.a, false, all(vec2<bool>(global4.a, false)), !global4.a), !(!(!vec4<bool>(true, global4.a, true, true))));
    var var_1 = _wgslsmith_f_op_f32(global4.b * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b * global4.b) * _wgslsmith_f_op_f32(global4.b + -1599f)))))));
    global4 = global1[_wgslsmith_index_u32(~6969u & u_input.b.x, 19u)];
    let x = u_input.a;
    s_output = func_5(Struct_1(any(vec2<bool>(global4.a, false)) != !global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)), vec2<u32>(1u, 1u) << (global4.c % vec2<u32>(32u))), vec2<i32>(~(-countOneBits(10293i)), _wgslsmith_sub_i32(~(i32(-1i) * -8723i), _wgslsmith_sub_i32(-29504i, 1i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(!var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2003f, 1633f, 704f, -1135f) * vec4<f32>(global4.b, global4.b, -104f, global4.b)))) * global4.b), 1241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b * _wgslsmith_div_f32(global4.b, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b, 753f) - 321f))));
}

