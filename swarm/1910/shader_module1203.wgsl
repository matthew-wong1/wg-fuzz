struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-15539i, -22018i, 20761i, -1i), vec4<i32>(i32(-2147483648), -28472i, 2147483647i, 11211i), vec4<i32>(1i, i32(-2147483648), 21353i, 2147483647i));

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(0i, 21563i), vec2<i32>(2147483647i, -52851i), vec2<i32>(20805i, 40867i), vec2<i32>(1i, -13314i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -1477i), vec2<i32>(-17854i, -25296i), vec2<i32>(4171i, 20660i), vec2<i32>(19842i, -1318i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(3783i, -1i), vec2<i32>(1i, 28351i), vec2<i32>(-27881i, i32(-2147483648)), vec2<i32>(26836i, -10108i), vec2<i32>(i32(-2147483648), 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<f32> {
    var var_0 = true;
    let var_1 = true;
    let var_2 = vec3<u32>(reverseBits(0u), _wgslsmith_sub_u32(~(~1u), u_input.a), 38697u);
    global3 = array<vec2<i32>, 16>();
    let var_3 = u_input.c;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a.c - -1542f), _wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(-340f * global0.b.d)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(852f, -113f, global0.b.c))))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(285f * global0.b.d))), _wgslsmith_f_op_f32(f32(-1f) * -201f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(global0.a, Struct_1(countOneBits(arg_1.a) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.x, arg_3, 51730u), global0.b.b.wwy), min(vec4<u32>(81989u, 0u, arg_3, 0u) << (global0.a.b % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.e.x))), arg_2.x, 820f), vec3<u32>(1u, 32715u, _wgslsmith_dot_vec2_u32(~global0.a.b.xw, vec2<u32>(9415u, u_input.e.x) | vec2<u32>(4294967295u, 4294967295u)))), global0.a, abs(-u_input.c), global0.b);
    var var_1 = abs(-11461i);
    var var_2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(var_0.c.x & var_0.c.x, -var_0.c.x, 1i), _wgslsmith_add_vec3_i32(min(vec3<i32>(0i, u_input.d, u_input.d), u_input.c), select(u_input.c, vec3<i32>(-2147483647i, u_input.c.x, var_0.c.x), vec3<bool>(true, true, false)))), vec3<i32>(var_0.c.x, ~1i, _wgslsmith_mult_i32(1i, 45966i)) >> (~(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_1.b.x, arg_1.b.x), vec3<u32>(61680u, 4294967295u, 1u)) & firstLeadingBit(vec3<u32>(50939u, global0.a.a.x, 1u))) % vec3<u32>(32u)));
    var var_3 = select(select(select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(select(false, true, false), 191f != global0.b.c), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), all(vec3<bool>(true, false, true))))), select(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(479u, 35118u, 60119u, var_0.d.a.x), vec4<u32>(73420u, var_0.b.a.x, 93590u, u_input.b)) >= ~var_0.a.b.b.x, true && all(vec3<bool>(false, false, false))), !select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), vec2<bool>(true, all(vec2<bool>(false, true)))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))));
    var_2 = -5419i;
    return !(!select(vec2<bool>(false, 12798i != var_0.c.x), vec2<bool>(var_3.x & false, all(vec4<bool>(false, var_3.x, false, false))), !vec2<bool>(var_3.x, var_3.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: bool) -> bool {
    let var_0 = vec3<u32>(arg_1.x, firstTrailingBit(firstLeadingBit(u_input.a) & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.e.zy), u_input.e.x ^ 87541u)), firstLeadingBit(min(firstTrailingBit(47037u), 32471u)));
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c, _wgslsmith_f_op_f32(select(global0.a.c, global0.b.d, false))) + arg_0), _wgslsmith_f_op_f32(-global0.b.d), arg_0), global0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1125f, global0.a.d), vec3<f32>(-635f, global0.a.c, global0.a.c)))))), 1u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -162f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1286f) - -1000f))), 410f);
    var var_3 = vec4<bool>(!func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2 - var_2) - var_2), global0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2))), ~select(u_input.a, u_input.a, arg_2)).x, true, any(select(vec2<bool>(arg_2, var_1.x), select(select(vec2<bool>(arg_2, false), vec2<bool>(var_1.x, true), true), vec2<bool>(arg_2, var_1.x), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true), true))), true);
    let var_4 = Struct_3(Struct_2(global0.b, global0.a, u_input.e.zzx), Struct_1(~abs(var_0) ^ _wgslsmith_clamp_vec3_u32(u_input.e.xxw, vec3<u32>(u_input.b, 0u, 90638u) >> (vec3<u32>(32906u, 1u, arg_1.x) % vec3<u32>(32u)), abs(vec3<u32>(43582u, var_0.x, 57375u))), max(_wgslsmith_add_vec4_u32(vec4<u32>(16120u, 0u, u_input.a, var_0.x), global0.b.b), _wgslsmith_clamp_vec4_u32(u_input.e, u_input.e, vec4<u32>(u_input.b, 79090u, 38561u, arg_1.x))) ^ global0.a.b, _wgslsmith_f_op_f32(240f * _wgslsmith_div_f32(global0.b.d, arg_0)), -1760f), vec3<i32>(u_input.d, u_input.c.x, u_input.c.x), global0.a);
    return false;
}

fn func_5(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(global0.b, global0.a, abs(vec3<u32>(~5949u, global0.b.a.x, u_input.e.x))), Struct_1(vec3<u32>(83006u, u_input.b, _wgslsmith_div_u32(0u, 2434u)), ~(~select(vec4<u32>(global0.c.x, u_input.e.x, 4294967295u, 0u), global0.a.b, vec4<bool>(true, arg_1, arg_1, true))), 1409f, global0.b.d), u_input.c, global0.b);
    global0 = Struct_2(var_0.d, Struct_1(global0.b.b.zyw, min(vec4<u32>(64335u, 33177u, 1u, 3493u) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, 42183u, 23666u, 51917u), global0.b.b), vec4<u32>(global0.c.x & 0u, countOneBits(27705u), 1u << (0u % 32u), abs(global0.c.x))), global0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(604f, _wgslsmith_f_op_f32(step(var_0.d.c, 392f)), arg_0 >= 1u)))), vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_0, var_0.d.a.x), ~max(24129u, 1u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.b.a, global0.a.a)) | arg_0, global0.b.b.x));
    global1 = array<vec4<i32>, 3>();
    global1 = array<vec4<i32>, 3>();
    let var_1 = var_0.a.b.d;
    return global0.a;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec3<u32> {
    let var_0 = Struct_2(func_5(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.d.b.wy, u_input.e.yx), select(vec2<u32>(0u, 4377u), vec2<u32>(global0.b.a.x, 0u), vec2<bool>(false, false)))), func_2(global0.a.d, u_input.e.zx & ~vec2<u32>(global0.b.b.x, 0u), _wgslsmith_div_f32(global0.a.d, global0.a.d) <= arg_0.d.c)), Struct_1(vec3<u32>(1u, u_input.e.x, func_5(u_input.b, true).a.x & (global0.a.b.x & u_input.b)), ~(~vec4<u32>(global0.a.a.x, arg_0.b.a.x, arg_0.d.a.x, global0.b.b.x)), arg_0.d.c, global0.a.c), _wgslsmith_mod_vec3_u32(global0.c, vec3<u32>(85718u, ~u_input.b, u_input.a)));
    let var_1 = Struct_3(arg_0.a, Struct_1(~select(firstLeadingBit(vec3<u32>(67444u, global0.a.b.x, 0u)), arg_0.a.a.b.ywy, false), ~abs(min(var_0.a.b, vec4<u32>(var_0.b.b.x, 0u, 3999u, 110716u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a.d, arg_0.a.a.d, true)), _wgslsmith_div_f32(arg_0.d.c, var_0.a.d))))), func_5(_wgslsmith_dot_vec4_u32(global0.a.b, ~var_0.a.b), any(vec2<bool>(false, false)) && func_4(vec3<f32>(-496f, global0.a.d, -597f), Struct_1(vec3<u32>(1u, u_input.e.x, 0u), vec4<u32>(52932u, arg_0.d.b.x, 44701u, 63640u), arg_0.a.b.d, global0.a.d), vec3<f32>(-317f, arg_0.b.d, -1409f), global0.a.b.x).x).c), abs(~u_input.c), Struct_1(var_0.a.a, vec4<u32>(_wgslsmith_mult_u32(18558u, 58850u), global0.b.a.x >> (u_input.e.x % 32u), global0.c.x >> (4294967295u % 32u), 0u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, 16005u, 0u, arg_0.a.a.a.x), select(var_0.b.b, vec4<u32>(var_0.b.a.x, 66322u, arg_0.a.c.x, global0.a.a.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.c)), global0.a.c));
    global2 = var_0.c.x >> (22123u % 32u);
    var var_2 = Struct_1(max(func_5(global0.b.b.x, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false))).a, ~(var_0.b.b.wxw ^ var_0.c)), u_input.e, -562f, func_5(_wgslsmith_add_u32(global0.b.b.x, 73881u), true && any(vec3<bool>(true, true, false))).c);
    global1 = array<vec4<i32>, 3>();
    return ~(~min(vec3<u32>(_wgslsmith_sub_u32(var_1.a.b.b.x, 4294967295u), var_1.d.b.x, u_input.a), vec3<u32>(global0.b.b.x, 0u, 17875u) ^ func_5(38083u, true).b.ywy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b.c, -268f), vec2<f32>(-776f, -1155f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d, 240f) - vec2<f32>(global0.a.c, -1795f)))))));
    global2 = min(abs(u_input.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.e.xyw, vec3<u32>(1u, ~1u, u_input.b)), _wgslsmith_clamp_u32(~global0.b.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(21621u, 4294967295u)), 1u)));
    var var_1 = Struct_1(~(vec3<u32>(global0.b.b.x, firstTrailingBit(1u), 0u ^ u_input.e.x) ^ func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.e.x, global0.b.a.x, u_input.a), global0.b.b, global0.b.d, -149f), Struct_1(global0.b.b.zyw, u_input.e, -576f, 1878f), global0.a.a), Struct_1(u_input.e.xyy, global0.b.b, global0.b.d, -627f), vec3<i32>(u_input.d, u_input.d, u_input.d), Struct_1(vec3<u32>(global0.a.b.x, 1u, u_input.e.x), vec4<u32>(15877u, 48941u, global0.a.b.x, 4294967295u), global0.b.c, 2293f)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, u_input.d, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.c.x)))), global0.b.b, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.c, 283f))) + global0.b.d));
    let var_2 = Struct_2(func_5(global0.b.a.x, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))), func_5(~select(var_1.b.x, global0.c.x, true), global0.a.c == 868f), vec3<u32>(30301u, ~u_input.a, 1u));
    global0 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_mult_u32(var_1.a.x, u_input.a), _wgslsmith_mod_u32(36189u, var_2.c.x), 1u) | select(firstTrailingBit(u_input.e.zxx), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.b.x, var_2.b.a.x, 0u), vec3<u32>(0u, global0.b.a.x, u_input.e.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), ~_wgslsmith_mult_vec4_u32(~u_input.e, global0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1094f)))), 127f), func_5(u_input.e.x, !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), vec3<u32>(func_1(Struct_3(Struct_2(global0.b, var_2.a, var_2.c), Struct_1(var_2.c, var_1.b, 345f, var_0.x), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), func_5(0u, true)), _wgslsmith_add_i32(firstLeadingBit(u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 63363i, u_input.c.x), u_input.c))).x, ~abs(var_2.c.x), var_2.c.x));
    let var_3 = -_wgslsmith_add_i32(-(i32(-1i) * -1i), ~(-1i) >> (var_1.a.x % 32u)) >> (global0.b.a.x % 32u);
    global2 = var_2.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(i32(-1i) * -35240i), select(var_3, abs(u_input.c.x) | _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(var_3, 2147483647i, -4289i)), func_4(vec3<f32>(-573f, var_1.c, 560f), func_5(u_input.a, false), vec3<f32>(-895f, 522f, -142f), var_1.b.x).x)), 1i, 1i, firstLeadingBit(1u));
}

