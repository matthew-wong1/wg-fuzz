struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: i32 = -1i;

var<private> global2: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global3: array<Struct_4, 27>;

var<private> global4: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(-_wgslsmith_mult_vec3_i32(countOneBits(~vec3<i32>(1i, 1i, 1i)), max(vec3<i32>(-37399i, 21560i, 0i), vec3<i32>(24113i, -30058i, -34134i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(543f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f))), 763f, select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(33571u, 23u)], true)), vec3<bool>(true, !global0[_wgslsmith_index_u32(62391u, 23u)], false), select(select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(60654u, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(28054u, 23u)], true)), vec3<bool>(true, global0[_wgslsmith_index_u32(49456u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), true)), 1782f), select(vec4<i32>(_wgslsmith_sub_i32(-12091i, -2317i), 10561i, _wgslsmith_mult_i32(-4895i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(20068i, -1i, -2147483647i, 1i), vec4<i32>(17402i, -8878i, 2147483647i, 2147483647i))), countOneBits(reverseBits(vec4<i32>(-2147483647i, -29238i, -15907i, 2147483647i))), any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 23u)], false)) & !global0[_wgslsmith_index_u32(19619u, 23u)]) & ~vec4<i32>(1i, 1i, 1i, 1i), true);
    global4 = 0u | u_input.c.x;
    global0 = array<bool, 23>();
    var var_1 = var_0.b.c.x;
    let var_2 = u_input.b;
    return _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(2286i, _wgslsmith_mult_i32(var_0.c.x, -5548i), var_0.a.x)), vec3<i32>(2147483647i, var_0.c.x, var_0.a.x)), ~vec3<i32>(1i, firstTrailingBit(22439i << (var_2 % 32u)), var_0.c.x));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(-1115f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1603f + -1120f))))), Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), func_3()), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(58438i, 51024i, 0i), vec3<i32>(12493i, 0i, -68i)), abs(vec3<i32>(1i, 0i, -1617i)), vec3<i32>(1i, 2147483647i, -2147483647i))), Struct_1(_wgslsmith_f_op_f32(select(1f, 1386f, !global0[_wgslsmith_index_u32(u_input.c.x, 23u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(898f, -913f)))), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0 & 1u, 23u)], any(global2[_wgslsmith_index_u32(27378u, 13u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-883f + -885f) + _wgslsmith_f_op_f32(trunc(-1168f)))), -vec4<i32>(1i, 1i, 1i, 1i), true), Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, firstLeadingBit(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-14746i, -51980i), vec2<i32>(-2147483647i, 0i))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(2147483647i, -47366i, -26735i), vec3<i32>(36305i, 0i, -29502i)), abs(vec3<i32>(1i, 1i, 11558i)))), Struct_1(_wgslsmith_f_op_f32(floor(238f)), 691f, select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 23u)]), select(vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 23u)], global0[_wgslsmith_index_u32(9301u, 23u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(98106u, 23u)])), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2203f, -530f))), vec4<i32>(_wgslsmith_add_i32(55143i, -16849i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -54904i, -1i), 1i), min(-1i, _wgslsmith_mod_i32(2147483647i, -1i)), -1i), true), vec3<u32>(63126u, arg_0, u_input.b));
    let var_1 = u_input.c.x < (37118u | (~firstLeadingBit(44510u) | arg_0));
    global2 = array<vec2<bool>, 13>();
    global0 = array<bool, 23>();
    var var_2 = _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(var_0.b.a.x | (i32(-1i) * -2147483647i), 6363i, -1i), ~var_0.b.c.x, -2147483647i);
    return Struct_2(vec3<i32>(-9942i << (max(1u, _wgslsmith_clamp_u32(4294967295u, 0u, 1u)) % 32u), select(-abs(25629i), -2147483647i, !global0[_wgslsmith_index_u32(1u, 23u)]), var_0.b.a.x), Struct_1(1000f, 869f, var_0.b.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f - -426f)), _wgslsmith_f_op_f32(-var_0.c.b.b))), _wgslsmith_clamp_vec4_i32(var_0.c.c, var_0.b.c, vec4<i32>(_wgslsmith_div_i32(var_0.b.a.x, var_0.c.c.x), -34678i, -5435i, var_0.c.c.x)), all(var_0.b.b.c));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_dot_vec4_u32(~abs(~(~vec4<u32>(11852u, u_input.c.x, 1u, u_input.a))), ~vec4<u32>(u_input.b, ~u_input.a, u_input.a, 4294967295u));
    var var_2 = vec3<i32>(reverseBits(abs(arg_0.a.x)), arg_0.c.x, ~(~(~arg_0.a.x)) << (u_input.a % 32u));
    let var_3 = countOneBits(var_2.yx);
    global2 = array<vec2<bool>, 13>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d) + arg_0.b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b)), arg_0.b.c, arg_0.b.a);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    global3 = array<Struct_4, 27>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.b.a), _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(step(-979f, _wgslsmith_f_op_f32(-arg_0.b.b))), arg_0.b.c, 377f), arg_1.b.b, vec2<u32>(~1u, arg_1.d.x), ~vec3<u32>(1u, arg_1.d.x, u_input.c.x) << (~arg_1.d % vec3<u32>(32u)));
    var var_1 = func_4(func_2(~_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 65321u), ~var_0.d.x)));
    let var_2 = Struct_2(max(arg_0.a, select(~(arg_0.a ^ arg_0.a), ~func_3(), !(!vec3<bool>(arg_0.d, false, var_1.c.x)))), func_4(Struct_2(-arg_1.c.a & select(arg_1.c.a, vec3<i32>(arg_0.c.x, 13273i, arg_0.a.x), arg_1.c.d), arg_0.b, arg_0.c, !(!var_0.b.c.x))), arg_1.b.c, all(vec2<bool>(true, !var_0.a.c.x)) && !all(vec4<bool>(false, true, var_1.c.x, false)));
    global3 = array<Struct_4, 27>();
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> vec4<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-483f + func_4(Struct_2(vec3<i32>(arg_1.a.x, arg_2.x, -110992i), Struct_1(arg_3, arg_3, arg_0, arg_1.b.b), vec4<i32>(arg_2.x, 34592i, -27758i, arg_2.x), false)).b))), func_2(0u), arg_1, u_input.c);
    let var_1 = Struct_2(vec3<i32>(reverseBits(-11916i), firstLeadingBit(func_3().x), ~(func_3().x & var_0.b.c.x)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(957f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2165f * 128f)) + _wgslsmith_f_op_f32(-arg_1.b.d)), select(func_2(firstTrailingBit(u_input.c.x)).b.c, arg_1.b.c, vec3<bool>(false, var_0.c.d || global0[_wgslsmith_index_u32(4294967295u, 23u)], true)), _wgslsmith_f_op_f32(ceil(1657f))), -(vec4<i32>(-1i) * -vec4<i32>(arg_2.x, 2147483647i, -42477i, var_0.c.c.x)) | firstLeadingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_1.a.x, -23224i, var_0.b.c.x, 1i), vec4<i32>(-5078i, var_0.b.c.x, 2029i, arg_1.a.x), true), _wgslsmith_sub_vec4_i32(var_0.c.c, var_0.b.c), vec4<i32>(-1i, arg_2.x, var_0.c.a.x, -1i))), false);
    global3 = array<Struct_4, 27>();
    let var_2 = ~vec4<u32>(_wgslsmith_add_u32(~u_input.a, 30239u), 54765u, _wgslsmith_mod_u32(~var_0.d.x, u_input.b), var_0.d.x) & ~_wgslsmith_mult_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(72044u, 0u, 13022u, 0u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.x, 1u, var_0.d.x, var_0.d.x), vec4<u32>(21586u, var_0.d.x, u_input.b, u_input.a))));
    var var_3 = var_2.x;
    return _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-15440i, -(arg_1.c.x >> (19181u % 32u)), arg_1.a.x | 1i, i32(-1i) * -2147483647i)), ~(-vec4<i32>(var_0.b.c.x, -25733i, 2147483647i, arg_2.x) & vec4<i32>(var_1.a.x, arg_2.x, arg_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c.x, -58118i, var_0.c.a.x), var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 13>();
    let var_0 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(-30365i, -7223i >> (_wgslsmith_clamp_u32(u_input.b, u_input.c.x, u_input.c.x) % 32u), reverseBits(22782i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 51877i, 2147483647i, -2147483647i), vec4<i32>(2112i, -2147483647i, -2147483647i, 19262i))))), -func_5(vec3<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(31063u, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(46920u, 23u)])), true, func_1(Struct_2(vec3<i32>(-53769i, 4427i, -1i), Struct_1(151f, 1758f, vec3<bool>(global0[_wgslsmith_index_u32(7759u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), 1589f), vec4<i32>(-2147483647i, 5764i, -3686i, 120466i), global0[_wgslsmith_index_u32(u_input.a, 23u)]), global3[_wgslsmith_index_u32(u_input.c.x, 27u)])), func_2(1u), vec2<i32>(~2215i, 29082i), -1210f));
    global1 = _wgslsmith_dot_vec2_i32(-(-vec2<i32>(var_0.x, var_0.x) & var_0.zx) >> (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)), func_5(func_2(_wgslsmith_add_u32(1u, ~4294967295u)).b.c, func_2(firstTrailingBit(1u)), var_0.wy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-601f - -1038f) + _wgslsmith_div_f32(-1203f, -1511f)))).xz);
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-397f, -760f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1098f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0[_wgslsmith_index_u32(11674u, 23u)])), func_2(u_input.c.x).b.a, 1000f)));
    var var_3 = Struct_3(Struct_1(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-913f - var_2.x))))), func_2(~(~0u)).b.c, _wgslsmith_f_op_f32(-var_2.x)), Struct_1(_wgslsmith_f_op_f32(-func_2(0u).b.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x)), func_4(func_2(_wgslsmith_add_u32(u_input.a, 36761u))).c, 1108f), u_input.c.xz, ~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 6024u, u_input.c.x), vec3<u32>(0u, 98915u, u_input.c.x))));
    global3 = array<Struct_4, 27>();
    var var_4 = _wgslsmith_add_i32(1i, -var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.d.x, u_input.a, 17633u), vec3<u32>(23715u, u_input.c.x, u_input.c.x))) ^ vec3<u32>(1u, ~var_3.d.x, ~17948u)), var_3.a.b, var_2.zy);
}

