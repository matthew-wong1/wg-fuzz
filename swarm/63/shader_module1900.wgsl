struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-1057f, -1377f, -1209f), vec3<f32>(-719f, -1024f, -119f), vec3<f32>(1699f, -1819f, 3198f), vec3<f32>(-1684f, -220f, 1268f), vec3<f32>(-170f, 284f, -173f), vec3<f32>(-1377f, -1000f, 1000f), vec3<f32>(440f, 197f, -1159f), vec3<f32>(-2123f, 1667f, -954f), vec3<f32>(-606f, 637f, 176f), vec3<f32>(-173f, -393f, -773f), vec3<f32>(-560f, 168f, -935f), vec3<f32>(-1000f, -563f, 434f), vec3<f32>(-165f, -1000f, 908f), vec3<f32>(-533f, -312f, 962f), vec3<f32>(-656f, 717f, -801f), vec3<f32>(226f, -213f, 296f), vec3<f32>(-1019f, 616f, -1325f), vec3<f32>(-3058f, -423f, -2045f), vec3<f32>(1534f, -1000f, 1363f), vec3<f32>(400f, -493f, -322f));

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(17516u, 39837u), vec2<u32>(21738u, 6469u), vec2<u32>(65753u, 4294967295u), vec2<u32>(8460u, 0u), vec2<u32>(11770u, 0u), vec2<u32>(51997u, 1u), vec2<u32>(0u, 18154u), vec2<u32>(0u, 0u), vec2<u32>(62844u, 1u));

var<private> global2: vec4<f32> = vec4<f32>(1277f, -1136f, -407f, 2024f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 27006i, u_input.b), vec4<i32>(u_input.b, u_input.b, 9278i, u_input.b)))), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -12934i), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x)));
    let var_2 = arg_1;
    var var_3 = ~abs(var_2.b.x);
    global0 = array<vec3<f32>, 20>();
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-291f)) + global2.x)), 1f));
    global1 = array<vec2<u32>, 9>();
    var var_1 = ~vec4<i32>(abs(select(~u_input.b, _wgslsmith_mod_i32(0i, u_input.b), any(vec3<bool>(false, true, false)))), u_input.b | _wgslsmith_add_i32(arg_1.x << (arg_2 % 32u), min(arg_1.x, arg_1.x)), _wgslsmith_mod_i32(11188i, ~21613i ^ -arg_1.x), 0i << (arg_2 % 32u));
    var var_2 = !select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(true, Struct_1(true, u_input.e, vec2<bool>(false, true), vec4<bool>(false, true, true, true)), true)), false);
    var var_3 = Struct_2(Struct_1(!(!(u_input.b <= arg_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.a >> (54477u % 32u), reverseBits(arg_0.x), firstTrailingBit(arg_2)), u_input.e, firstLeadingBit(~u_input.e)), select(vec2<bool>(true, true), select(vec2<bool>(false, var_2.x), !vec2<bool>(false, var_2.x), !var_2.x), true), vec4<bool>(true, any(vec3<bool>(true, var_2.x, var_2.x)), !(!var_2.x), false)), Struct_1(select(any(vec3<bool>(var_2.x, false, var_2.x)), true, var_2.x), ~(~u_input.e | _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_2), u_input.e)), vec2<bool>(all(!vec4<bool>(var_2.x, true, var_2.x, var_2.x)), !all(vec4<bool>(false, var_2.x, false, var_2.x))), select(vec4<bool>(var_2.x, all(vec3<bool>(false, var_2.x, false)), true, var_2.x != false), select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(var_2.x, false, var_2.x, var_2.x), any(vec4<bool>(false, false, var_2.x, false))), select(!var_2.x, -2564i >= u_input.b, true))), select(firstTrailingBit(select(~var_1.yx, var_1.wx, !vec2<bool>(var_2.x, true))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_1.x | var_1.x), ~vec2<i32>(8020i, 4854i), arg_1), true || !all(vec2<bool>(false, var_2.x))));
    return _wgslsmith_f_op_f32(sign(global2.x));
}

fn func_1() -> Struct_3 {
    global1 = array<vec2<u32>, 9>();
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1872f, -1112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.c, vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), countOneBits(4294967295u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), false))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, 198f, global2.x, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, 206f, global2.x), vec4<f32>(global2.x, -256f, 1049f, 106f)), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1058f, 1000f, -1431f, global2.x))))));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2214f))) - global2.x), global2.x, global2.x));
    global1 = array<vec2<u32>, 9>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1749f)) - _wgslsmith_div_f32(1000f, global2.x)), true)));
    return Struct_3(max(_wgslsmith_sub_u32(u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(73290u, 40280u, 29302u), u_input.e.yxw) % 32u), 7175u), ~(~(~u_input.d))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(true, select(_wgslsmith_add_vec4_u32(~vec4<u32>(47125u, arg_0.a, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a, arg_0.a, u_input.c.x, 1u)), ~(vec4<u32>(17717u, u_input.c.x, 4294967295u, 1u) | u_input.e), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false)), vec2<bool>(true, true), select(vec4<bool>(u_input.b < u_input.b, 53201i != u_input.b, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(select(all(vec3<bool>(true, true, false)), true, !any(vec4<bool>(true, true, false, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(90452u, arg_0.a, 1u, 3776u), vec4<u32>(37151u, u_input.d, u_input.a, u_input.c.x)) | ~firstLeadingBit(vec4<u32>(arg_0.a, 7003u, 30350u, 0u)), vec2<bool>(all(vec2<bool>(true, false)), true), vec4<bool>(func_3(u_input.b < u_input.b, Struct_1(true, u_input.e, vec2<bool>(true, true), vec4<bool>(false, true, false, false)), false), true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)))), (vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 1i)), 0i & u_input.b) ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 82578i)) | (vec2<i32>(1i, u_input.b) >> (u_input.e.xy % vec2<u32>(32u))))) ^ abs(select(vec2<i32>(28730i, u_input.b), vec2<i32>(0i, u_input.b), vec2<bool>(true, true))));
    let var_1 = 7693u;
    var var_2 = var_0.c.x;
    let var_3 = !(!vec2<bool>(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -11349i) > select(57144i, var_0.c.x, var_0.a.a), var_0.a.a));
    var_2 = _wgslsmith_dot_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, var_0.c.x), ~vec3<i32>(var_0.c.x, -29351i, -1i), vec3<i32>(-1i, u_input.b, u_input.b))), -_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(22917i, u_input.b, var_0.c.x, -63549i), vec4<i32>(u_input.b, 2147483647i, 0i, var_0.c.x)), 1i), vec3<i32>(-2147483647i, var_0.c.x, ~var_0.c.x)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(0u, Struct_2(func_4(func_1()), Struct_1(true, ~max(u_input.e, vec4<u32>(u_input.e.x, u_input.d, 4294967295u, u_input.a)), vec2<bool>(true, u_input.b <= 2147483647i), vec4<bool>(true, true, true, false)), ~vec2<i32>(select(u_input.b, u_input.b, true), countOneBits(-26621i))), -vec4<i32>((50952i << (u_input.d % 32u)) & _wgslsmith_div_i32(u_input.b, 12578i), u_input.b, ~u_input.b & -u_input.b, u_input.b), Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec4<bool>(false, false, true, true)))), _wgslsmith_clamp_vec4_u32(select(u_input.e & vec4<u32>(u_input.e.x, 4294967295u, 65736u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.d, u_input.d, u_input.a), vec4<u32>(44216u, u_input.c.x, u_input.d, 21900u)), true), vec4<u32>(max(4294967295u, u_input.a), _wgslsmith_clamp_u32(u_input.e.x, u_input.a, u_input.a), 0u, u_input.e.x), u_input.e), vec2<bool>(true, true), func_4(Struct_3(u_input.e.x)).d));
    var var_1 = Struct_4(var_0.b.a.b.x, Struct_2(func_4(Struct_3(reverseBits(u_input.e.x))), var_0.d, -(~(-var_0.c.xy))), countOneBits(vec4<i32>(-(~var_0.c.x), ~var_0.b.c.x, select(abs(var_0.c.x), reverseBits(2147483647i), false != var_0.d.a), -1i)), func_4(Struct_3(45959u)));
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(u_input.b, var_0.c.x), var_0.b.c.x, 0i, u_input.b);
    var_1 = Struct_4(1u, Struct_2(var_0.b.b, func_4(Struct_3(var_1.a)), vec2<i32>(~29111i, var_2.x) & vec2<i32>(select(var_1.c.x, -13168i, true), u_input.b)), reverseBits(-countOneBits(vec4<i32>(var_2.x, 1i, 67742i, u_input.b))) ^ (abs(_wgslsmith_add_vec4_i32(vec4<i32>(-16875i, var_2.x, 33399i, 0i), vec4<i32>(2535i, u_input.b, var_1.c.x, 1i))) & var_0.c), Struct_1(all(vec4<bool>(select(true, true, false), var_0.b.b.a, var_0.b.b.d.x, var_1.d.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(0u), _wgslsmith_mod_u32(1u, var_1.a), ~var_0.d.b.x, 1u), ~_wgslsmith_mod_vec4_u32(var_0.b.b.b, var_0.b.a.b)), vec2<bool>(var_0.b.a.c.x, false), var_1.b.b.d));
    var_1 = Struct_4(abs(u_input.c.x), Struct_2(var_0.d, Struct_1(any(select(var_1.d.c, vec2<bool>(false, var_0.d.a), false)), ~vec4<u32>(4294967295u, 1905u, var_1.a, u_input.c.x), select(vec2<bool>(true, var_0.b.a.d.x), var_0.d.c, any(vec2<bool>(var_0.b.b.c.x, false))), !(!var_0.b.b.d)), ~(vec2<i32>(-1i) * -vec2<i32>(var_2.x, u_input.b))), vec4<i32>(5137i, var_2.x, -2147483647i, var_0.c.x) | var_2, var_1.b.a);
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1u, global0[_wgslsmith_index_u32(abs(1u), 20u)], 1i);
}

