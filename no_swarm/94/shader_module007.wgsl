struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(110f, vec2<bool>(false, false)), Struct_1(-905f, vec2<bool>(true, true)), Struct_1(442f, vec2<bool>(true, false)), Struct_1(-668f, vec2<bool>(true, false)), Struct_1(552f, vec2<bool>(true, false)), Struct_1(-364f, vec2<bool>(true, true)), Struct_1(1252f, vec2<bool>(false, true)), Struct_1(279f, vec2<bool>(false, true)), Struct_1(-515f, vec2<bool>(true, true)), Struct_1(-821f, vec2<bool>(true, true)), Struct_1(-668f, vec2<bool>(false, false)), Struct_1(-1000f, vec2<bool>(false, false)), Struct_1(677f, vec2<bool>(true, true)), Struct_1(1668f, vec2<bool>(true, false)), Struct_1(-511f, vec2<bool>(true, false)), Struct_1(-1000f, vec2<bool>(false, true)), Struct_1(-1000f, vec2<bool>(false, false)), Struct_1(781f, vec2<bool>(true, false)), Struct_1(529f, vec2<bool>(true, true)), Struct_1(-335f, vec2<bool>(true, true)), Struct_1(183f, vec2<bool>(false, false)), Struct_1(-670f, vec2<bool>(true, true)), Struct_1(-1076f, vec2<bool>(false, false)), Struct_1(277f, vec2<bool>(true, false)), Struct_1(-156f, vec2<bool>(true, true)));

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(139f, -2390f), vec2<f32>(-208f, 2002f), vec2<f32>(-256f, -318f), vec2<f32>(-345f, 1000f), vec2<f32>(-1000f, 1948f), vec2<f32>(671f, -1528f), vec2<f32>(-141f, 1071f), vec2<f32>(1000f, -1086f), vec2<f32>(-516f, -825f), vec2<f32>(-422f, 1591f), vec2<f32>(892f, 493f), vec2<f32>(-191f, -658f), vec2<f32>(-2543f, -548f), vec2<f32>(-303f, 190f), vec2<f32>(-846f, -453f), vec2<f32>(1248f, -1137f), vec2<f32>(-392f, 338f), vec2<f32>(-407f, 167f), vec2<f32>(-1081f, 1000f), vec2<f32>(330f, 646f), vec2<f32>(618f, -820f), vec2<f32>(422f, 713f));

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = i32(-1i) * -1i;
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-424f, _wgslsmith_f_op_f32(sign(2083f)))) - -386f), 1834f), !all(!arg_1) && arg_1.x));
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -547f))), _wgslsmith_f_op_f32(round(global1.x))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))))));
    let var_1 = !select(arg_1.wz, select(arg_1.yw, vec2<bool>(false, true), true), true);
    var var_2 = Struct_2(var_1.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) + -1132f)), !select(!vec2<bool>(true, arg_1.x), var_1, !var_1)), var_1.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(27529u), 11929u, arg_0.x), ~arg_0, min(vec3<u32>(u_input.a, arg_0.x >> (15502u % 32u), 78417u), arg_0)));
    return !select(select(!vec2<bool>(var_1.x, false), var_2.b.b, true), var_1, true);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(arg_1.x * global1.x))), arg_0)), arg_1.x, 614f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))))), func_2(select(_wgslsmith_mod_vec3_u32(vec3<u32>(33434u, u_input.a, 3676u), vec3<u32>(u_input.a, u_input.a, 1u)) << (~vec3<u32>(4294967295u, 11325u, u_input.a) % vec3<u32>(32u)), countOneBits(vec3<u32>(8770u, u_input.a, u_input.a)), false), select(vec4<bool>(arg_0, true, any(vec4<bool>(arg_0, arg_0, arg_0, true)), false), vec4<bool>(all(vec4<bool>(false, true, false, arg_0)), u_input.a == 1u, arg_0, true), vec4<bool>(!arg_0, arg_0 && arg_0, arg_0, !arg_0))).x);
    let var_1 = Struct_1(var_0.a.x, select(func_2(vec3<u32>(_wgslsmith_mod_u32(95982u, u_input.a), ~25387u, 1u), vec4<bool>(arg_0 | true, 773f <= arg_1.x, false, true & var_0.b)), vec2<bool>(true, true), !vec2<bool>(var_0.b, true)));
    var var_2 = ~vec3<u32>(73157u, 33496u, ~firstTrailingBit(~25555u));
    global3 = array<vec2<f32>, 22>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f) * 853f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-811f, 702f, true))));
    return false & any(select(!vec3<bool>(var_0.b, arg_0, false), vec3<bool>(false, arg_0, true), arg_0));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global2 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_div_i32(-1i | _wgslsmith_mult_i32(_wgslsmith_sub_i32(22715i, u_input.b) & -45718i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(20990i, -1i, 3667i)), vec3<i32>(u_input.b, -2147483647i, u_input.b))), (u_input.b >> (39201u % 32u)) ^ ((-u_input.b ^ -45151i) << (u_input.a % 32u)));
    global4 = arg_0.b && (all(func_2(~vec3<u32>(u_input.a, 1u, 3595u), vec4<bool>(true, arg_0.b, arg_0.b, false))) || false);
    global4 = func_3(any(vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(false, false, arg_0.b))), true, true, arg_0.b)), _wgslsmith_div_vec3_f32(vec3<f32>(-144f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, 182f)))), arg_0.a.yzx));
    let var_1 = -63254i < u_input.b;
    return Struct_3(vec4<f32>(arg_0.a.x, -765f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) + -450f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(514f, arg_0.a.x))))), !(all(vec3<bool>(arg_0.b, false, true)) && true));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: i32) -> Struct_5 {
    global4 = arg_2.e;
    let var_0 = select(!(!vec3<bool>(arg_3 != u_input.b, arg_0.b.a || true, arg_2.e)), select(select(!select(vec3<bool>(false, arg_0.b.b.b.x, arg_2.b.b.b.x), vec3<bool>(arg_0.c.b, arg_0.b.a, arg_0.e), vec3<bool>(false, false, true)), select(vec3<bool>(arg_2.a, arg_2.e, arg_2.a), vec3<bool>(false, arg_2.e, arg_0.c.b), any(vec3<bool>(arg_0.a, arg_0.a, true))), (false != arg_2.b.c) & true), select(select(!vec3<bool>(true, arg_2.a, false), !vec3<bool>(arg_2.a, true, arg_2.b.b.b.x), false), vec3<bool>(arg_2.c.b, arg_2.b.c, false), !select(vec3<bool>(arg_0.e, arg_2.e, false), vec3<bool>(false, arg_2.c.b, arg_0.e), true)), false), !vec3<bool>(true, true, arg_0.c.b));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1970f) - _wgslsmith_f_op_f32(-arg_2.c.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - arg_2.b.b.a), _wgslsmith_f_op_f32(abs(-1714f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 109f, -1532f, 4226f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.a))))) * arg_2.c.a);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(var_1.x * 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1155f * var_1.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(-var_2.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), func_1(arg_0.c).a.x, 1377f))) * _wgslsmith_f_op_vec3_f32(func_1(arg_0.c).a.wzz + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_f32(sign(-1071f)), _wgslsmith_f_op_f32(step(arg_2.b.b.a, 1000f)))));
    return Struct_5((abs(_wgslsmith_dot_vec3_u32(vec3<u32>(37015u, arg_2.b.d.x, arg_2.b.d.x), vec3<u32>(arg_1, arg_0.b.d.x, u_input.a))) << (arg_1 % 32u)) <= _wgslsmith_add_u32(_wgslsmith_div_u32(18476u ^ arg_2.b.d.x, 0u), u_input.a), Struct_2(any(vec2<bool>(true, arg_2.b.a == var_0.x)), arg_2.b.b, false, select(arg_0.b.d, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.b.d.x, u_input.a, arg_1) | arg_2.b.d, arg_2.b.d | vec3<u32>(arg_0.b.d.x, 36376u, arg_2.b.d.x)), true)), func_1(arg_2.c), arg_0.c.a.xz, arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(true, Struct_2(false, global2[_wgslsmith_index_u32(72575u & ~u_input.a, 25u)], true, ~vec3<u32>(8491u, 4294967295u, 25940u) & (vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(10778u, 4294967295u, u_input.a))), func_1(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 955f) * vec4<f32>(1762f, 1644f, global1.x, global1.x)), true)), func_1(func_1(Struct_3(vec4<f32>(-2025f, 2264f, global1.x, 328f), true))).a.xx, func_1(func_1(func_1(Struct_3(vec4<f32>(-697f, 315f, global1.x, global1.x), false)))).b), 2813u, Struct_5(!all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), Struct_2(func_1(func_1(Struct_3(vec4<f32>(809f, 525f, 530f, global1.x), false))).b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(17239u, 49088u)), 25u)], _wgslsmith_div_f32(849f, global1.x) > _wgslsmith_f_op_f32(-global1.x), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -708f, global1.x, global1.x) * vec4<f32>(-614f, global1.x, 853f, -346f)))), true), vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 377f) * _wgslsmith_f_op_f32(trunc(global1.x)))), true), _wgslsmith_dot_vec4_i32((vec4<i32>(1i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.a, u_input.a, 0u, 0u) % vec4<u32>(32u))) & vec4<i32>(u_input.b, 29279i, 1i, -31357i), -vec4<i32>(u_input.b, 0i, u_input.b, 22970i)) >> (~_wgslsmith_mult_u32(~2723u, _wgslsmith_mod_u32(u_input.a, 0u)) % 32u));
    let var_1 = _wgslsmith_div_vec2_u32(countOneBits(select((vec2<u32>(var_0.b.d.x, u_input.a) & vec2<u32>(var_0.b.d.x, u_input.a)) >> (~vec2<u32>(1u, var_0.b.d.x) % vec2<u32>(32u)), vec2<u32>(u_input.a, var_0.b.d.x), !vec2<bool>(var_0.b.c, false))), _wgslsmith_mod_vec2_u32(~firstLeadingBit(_wgslsmith_div_vec2_u32(var_0.b.d.xy, vec2<u32>(u_input.a, 8273u))), var_0.b.d.zx));
    global0 = func_3(func_3(false, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1102f, -883f, var_0.c.a.x)))), var_0.c.a.zxw) & false;
    var var_2 = firstLeadingBit(~_wgslsmith_mult_u32(var_0.b.d.x, u_input.a));
    var_2 = ~_wgslsmith_sub_u32(~abs(var_1.x), 49706u);
    let x = u_input.a;
    s_output = StorageBuffer(24029u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, var_0.b.b.a, -629f) - vec4<f32>(var_0.d.x, global1.x, 294f, var_0.d.x))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-1321f)), -751f, _wgslsmith_f_op_f32(-1f), var_0.b.b.a)), _wgslsmith_mod_u32(~117205u, u_input.a), u_input.b, ~u_input.b);
}

