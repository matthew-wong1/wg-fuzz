struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -686f), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1649f, arg_0)))), -284f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(min(225f, arg_0)), 262f, _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2167f, arg_0, -213f, -861f))))))));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, ~u_input.d, 1125i), ~vec4<i32>(u_input.c.x << (u_input.e % 32u), u_input.c.x, -u_input.a, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.d, u_input.d, u_input.b)))), vec4<bool>(any(select(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(u_input.e ^ u_input.e, 9u)], any(vec3<bool>(false, false, true)))), !all(vec4<bool>(false, true, true, true)) == true, true, true), vec4<i32>(u_input.b, _wgslsmith_sub_i32(reverseBits(2147483647i) & firstTrailingBit(u_input.d), 0i), _wgslsmith_add_i32(abs(u_input.d), -9389i), -37754i));
    var var_2 = abs(vec3<u32>(4294967295u, _wgslsmith_div_u32(~u_input.e, _wgslsmith_div_u32(u_input.e, u_input.e)) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<u32>(9413u, u_input.e, 1u, 4898u), var_1.b.x), firstTrailingBit(vec4<u32>(u_input.e, 1u, u_input.e, u_input.e))) % 32u), 18270u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.xx, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(548f, 1000f), _wgslsmith_f_op_vec2_f32(-var_0.wy)))))));
    let var_4 = Struct_3(var_1);
    return !var_4.a.b.x;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = select(arg_0.b.a.b, select(!(!vec4<bool>(arg_0.a.a.b.x, true, arg_0.a.a.b.x, arg_0.b.a.b.x)), vec4<bool>(false, func_3(_wgslsmith_f_op_f32(f32(-1f) * -903f)), arg_0.b.a.b.x, true), !(!select(vec4<bool>(false, arg_0.a.a.b.x, true, true), vec4<bool>(false, false, false, arg_0.a.a.b.x), false))), arg_0.a.a.b);
    var var_1 = 0i;
    let var_2 = Struct_4(Struct_3(arg_0.a.a), Struct_3(Struct_1(arg_0.a.a.a, vec4<bool>(arg_0.b.a.b.x, any(vec2<bool>(true, true)), u_input.e >= u_input.e, -5676i <= arg_1.a), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, 40463i, arg_1.a, arg_1.a) & arg_0.b.a.c, vec4<i32>(arg_1.a, arg_0.b.a.c.x, 2147483647i, u_input.d)))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2582f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(267f - 1086f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), -1136f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-3192f, 1914f, -759f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, 881f, -236f) - vec3<f32>(-364f, 598f, 230f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-2871f * -679f), _wgslsmith_f_op_f32(select(-1378f, -354f, var_2.b.a.b.x)), -603f), vec3<f32>(1504f, _wgslsmith_f_op_f32(round(743f)), _wgslsmith_f_op_f32(f32(-1f) * -394f)))), false)));
    let var_4 = Struct_2(1i);
    return vec4<bool>(false, any(arg_0.b.a.b.ywz), select(46726u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, 49617u), countOneBits(vec3<u32>(u_input.e, u_input.e, u_input.e))), true) >= ~(~1u), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_5) -> Struct_1 {
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    let var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_1.x, u_input.e) | u_input.e, 100114u, u_input.e), countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25903u, 49947u, arg_3.e.x, u_input.e), vec4<u32>(arg_1.x, arg_1.x, 34412u, u_input.e)), _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(13521u, 0u, arg_1.x, 28045u)), arg_3.e.x >> (6021u % 32u))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -692f), 2341f)), -140f, _wgslsmith_f_op_f32(arg_3.b + arg_3.b));
    var var_2 = select(func_2(Struct_4(Struct_3(Struct_1(vec4<i32>(-2147483647i, -1i, 0i, 31578i), vec4<bool>(arg_2.x, false, false, true), vec4<i32>(arg_0.a, arg_3.d, arg_0.a, 2147483647i))), Struct_3(arg_3.c)), Struct_2(970i)).yxw, global0[_wgslsmith_index_u32(31737u, 9u)], vec3<bool>(arg_2.x, arg_3.c.b.x, true));
    return arg_3.c;
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: vec3<u32>) -> Struct_4 {
    return Struct_4(Struct_3(Struct_1(vec4<i32>(arg_0.d, 35581i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.a.x, u_input.c.x, u_input.a), arg_0.c.a.xww)), vec4<bool>(all(vec2<bool>(false, arg_0.a)), arg_0.c.b.x && true, true, arg_0.a), ~vec4<i32>(6703i, u_input.a, -1i, 68162i))), Struct_3(Struct_1(vec4<i32>(_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_dot_vec4_i32(arg_0.c.a, arg_0.c.a), -u_input.c.x, -arg_0.d), select(arg_0.c.b, func_4(Struct_2(arg_0.c.a.x), vec4<u32>(0u, 1u, 47972u, arg_1), arg_0.c.b, Struct_5(false, -834f, arg_0.c, -1i, vec2<u32>(1u, arg_1))).b, !vec4<bool>(arg_0.c.b.x, arg_0.a, false, false)), -arg_0.c.c >> (~vec4<u32>(34773u, arg_2.x, arg_2.x, 6216u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = false;
    var_0 = any(vec2<bool>(!select(arg_1, false, all(vec2<bool>(true, arg_0))), arg_1 && true));
    var var_1 = func_5(Struct_5(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1291f - _wgslsmith_f_op_f32(f32(-1f) * -1199f))), func_4(Struct_2(u_input.c.x), vec4<u32>(u_input.e, _wgslsmith_div_u32(u_input.e, u_input.e), abs(1u), u_input.e), select(select(vec4<bool>(arg_1, true, arg_3, false), vec4<bool>(arg_1, true, arg_2, arg_3), true), !vec4<bool>(false, false, arg_0, arg_2), func_2(Struct_4(Struct_3(Struct_1(vec4<i32>(u_input.d, u_input.c.x, 3509i, u_input.c.x), vec4<bool>(arg_2, arg_1, true, false), vec4<i32>(u_input.a, u_input.d, -1i, 15684i))), Struct_3(Struct_1(vec4<i32>(u_input.c.x, -32193i, u_input.d, u_input.c.x), vec4<bool>(arg_0, false, true, arg_0), vec4<i32>(u_input.d, u_input.c.x, -1i, u_input.a)))), Struct_2(u_input.d))), Struct_5(true, -173f, Struct_1(vec4<i32>(u_input.d, u_input.d, -7815i, u_input.a), vec4<bool>(arg_3, false, false, arg_0), vec4<i32>(-1i, u_input.d, -14474i, u_input.b)), 1i, select(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, 0u), vec2<bool>(true, false)))), u_input.a, vec2<u32>(_wgslsmith_mod_u32(31884u, 1u), ~(~4294967295u))), 0u, vec3<u32>(~(firstTrailingBit(91006u) >> (1u % 32u)), countOneBits(~u_input.e) << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.e, u_input.e)), ~vec2<u32>(u_input.e, u_input.e)) % 32u), u_input.e));
    var var_2 = Struct_2(-u_input.c.x ^ 11696i);
    var_1 = Struct_4(Struct_3(var_1.a.a), Struct_3(func_4(Struct_2(var_2.a), abs(max(vec4<u32>(u_input.e, u_input.e, 1u, 0u), vec4<u32>(u_input.e, u_input.e, 0u, 9712u))), var_1.a.a.b, Struct_5(arg_0, _wgslsmith_div_f32(-1298f, 508f), func_5(Struct_5(arg_1, 523f, var_1.b.a, -30110i, vec2<u32>(35140u, 17521u)), 0u, vec3<u32>(4294967295u, 4294967295u, 48018u)).a.a, 1i, _wgslsmith_mod_vec2_u32(vec2<u32>(110303u, u_input.e), vec2<u32>(u_input.e, 4294967295u))))));
    return func_5(Struct_5(true, 1353f, var_1.a.a, _wgslsmith_dot_vec2_i32(var_1.b.a.a.yy, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.a.c.x, -73520i), u_input.c.zx) & ~var_1.b.a.a.zx), ~(~(~vec2<u32>(73384u, 0u)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(16103u, 0u, u_input.e), false), max(vec3<u32>(46166u, u_input.e, u_input.e), vec3<u32>(u_input.e, u_input.e, u_input.e))) >> (vec3<u32>(max(u_input.e, u_input.e), firstTrailingBit(u_input.e), u_input.e) % vec3<u32>(32u)), vec3<u32>(~u_input.e, 39175u, 96044u)), ~vec3<u32>(1u, u_input.e, 50444u)).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(true, false, any(vec4<bool>(true, true, true, true)), false));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, u_input.e, 1u, u_input.e)), ~vec4<u32>(68655u, 5470u, 1u, 26156u), vec4<u32>(~u_input.e, u_input.e, ~0u, _wgslsmith_add_u32(u_input.e, 1741u))), ~(~vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e))), _wgslsmith_div_u32(~firstTrailingBit(select(107526u, 79502u, var_0.a.b.x)), min(u_input.e, 60967u)));
    var_1 = ~81315u;
    var_1 = 1u >> (u_input.e % 32u);
    let var_2 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_sub_i32(-8682i, var_0.a.c.x) & 0i, ~(-u_input.b), -6471i, u_input.b), !var_0.a.b, select(abs(vec4<i32>(u_input.d, -877i, -1i, var_0.a.a.x)), max(vec4<i32>(u_input.b, u_input.c.x, var_0.a.c.x, var_0.a.c.x), var_0.a.a), var_0.a.b.x) & var_0.a.c));
    global0 = array<vec3<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-896f - -125f), 1i, reverseBits((firstTrailingBit(var_2.a.c) >> (~vec4<u32>(u_input.e, 98499u, u_input.e, u_input.e) % vec4<u32>(32u))) | ~max(vec4<i32>(u_input.c.x, 34871i, var_2.a.a.x, 0i), vec4<i32>(7186i, 1i, 0i, var_2.a.c.x))), abs(firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(var_0.a.a.x, u_input.c.x, var_0.a.c.x))) | vec3<i32>(~var_2.a.c.x, ~var_2.a.a.x, 1072i)), func_1(true, var_0.a.b.x, var_2.a.b.x, var_0.a.b.x).a.xx);
}

