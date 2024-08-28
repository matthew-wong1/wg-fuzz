struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(14382u, 4294967295u, 0u), vec3<u32>(0u, 64048u, 38767u), vec3<u32>(1u, 1u, 17609u), vec3<u32>(4294967295u, 7287u, 1u), vec3<u32>(2194u, 24440u, 75441u));

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(50059u, -1000f), Struct_1(0u, 648f), Struct_1(1u, 403f), Struct_1(4294967295u, -219f), Struct_1(0u, -175f), Struct_1(92072u, -170f), Struct_1(36688u, -1407f), Struct_1(32960u, -108f), Struct_1(578u, 995f), Struct_1(50347u, 810f), Struct_1(9774u, 649f), Struct_1(4294967295u, 411f), Struct_1(68603u, 970f), Struct_1(4294967295u, 1262f), Struct_1(20932u, -393f), Struct_1(17960u, -284f), Struct_1(0u, -648f), Struct_1(0u, 554f), Struct_1(36635u, 611f), Struct_1(1u, -173f), Struct_1(4294967295u, -360f), Struct_1(4294967295u, -1477f), Struct_1(73284u, -321f), Struct_1(4294967295u, -144f), Struct_1(16882u, -1000f), Struct_1(3360u, 193f), Struct_1(229u, -1143f), Struct_1(4088u, 1079f), Struct_1(16789u, -1141f), Struct_1(1u, 461f), Struct_1(0u, 2048f), Struct_1(38679u, 591f));

var<private> global3: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(0i, 1i, 1i, 0i), vec4<i32>(1i, -18648i, 52943i, 21805i), vec4<i32>(-16475i, 25867i, -6124i, 2147483647i), vec4<i32>(55595i, 12625i, -86219i, 10742i), vec4<i32>(-7733i, 102i, 22455i, 47564i), vec4<i32>(-4433i, 2147483647i, -15210i, 1i), vec4<i32>(-1i, 14617i, -1i, 2147483647i), vec4<i32>(36948i, 39216i, 41532i, -39141i), vec4<i32>(13237i, 11143i, i32(-2147483648), -1i), vec4<i32>(0i, 2147483647i, 33289i, 2147483647i), vec4<i32>(31310i, -1i, -1i, -46671i), vec4<i32>(-44928i, -63787i, 16297i, i32(-2147483648)), vec4<i32>(-14665i, 0i, 18404i, 1i), vec4<i32>(2147483647i, 6003i, 7229i, 0i), vec4<i32>(1i, 0i, -4039i, -24823i), vec4<i32>(i32(-2147483648), 1i, -1i, 1i), vec4<i32>(i32(-2147483648), -103800i, 60167i, -8493i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> vec4<i32> {
    global2 = array<Struct_1, 32>();
    global2 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(u_input.b.x), reverseBits(u_input.b.x), u_input.a.x), countOneBits(firstLeadingBit(~(vec3<u32>(0u, u_input.a.x, 1u) & global1[_wgslsmith_index_u32(u_input.b.x, 5u)]))));
    let var_1 = ~vec3<i32>(1i, -_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(65357u, 17u)] | vec4<i32>(-2147483647i, -46690i, 20232i, 1i), global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), 1i);
    let var_2 = select(vec3<bool>((_wgslsmith_f_op_f32(-arg_0.a) <= arg_0.a) & false, true, -2147483647i >= _wgslsmith_div_i32(-var_1.x, var_1.x >> (u_input.a.x % 32u))), !vec3<bool>(true || (1788f >= arg_0.a), false, true), true);
    return vec4<i32>(_wgslsmith_add_i32(abs(var_1.x), -(~_wgslsmith_sub_i32(var_1.x, var_1.x))), -12672i, 0i, 53639i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: u32, arg_3: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.a), _wgslsmith_add_vec3_u32(u_input.b, ~vec3<u32>(11085u, arg_2, 0u) & _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(0u, 3198u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, arg_2)))));
    let var_1 = _wgslsmith_div_vec4_i32(-vec4<i32>(~(-298i), 0i, arg_0.x, _wgslsmith_add_i32(_wgslsmith_div_i32(-10795i, arg_0.x), -2147483647i)), _wgslsmith_mult_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -1i), vec4<i32>(arg_0.x, -47101i, arg_0.x, -11723i)) ^ arg_0) ^ ~_wgslsmith_add_vec4_i32(arg_0, vec4<i32>(-1i, 1i, arg_0.x, arg_0.x)), func_3(Struct_4(_wgslsmith_f_op_f32(floor(arg_3))))));
    var_0 = vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, 53307u)), vec3<u32>(0u, 0u, u_input.b.x) | vec3<u32>(arg_2, u_input.b.x, 46999u)) << (firstLeadingBit(countOneBits(max(4294967295u, 885u))) % 32u), var_0.x, 0u);
    let var_2 = _wgslsmith_f_op_f32(trunc(arg_3));
    var var_3 = ~(-7531i);
    return vec4<bool>(false, select(arg_1.x, any(!vec3<bool>(true, false, arg_1.x)), !(!arg_1.x)) | !(!(!arg_1.x)), arg_1.x, true);
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = select(select(vec4<bool>(!(u_input.b.x >= u_input.b.x), true, true, true), func_4(func_3(Struct_4(-1325f)), vec3<bool>(true, any(vec2<bool>(true, false)), true), _wgslsmith_add_u32(1u, 8744u), -623f), select(vec4<bool>(true, true, false, any(vec3<bool>(true, true, false))), func_4(vec4<i32>(0i, arg_0, arg_0, 0i), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), u_input.a.x & u_input.a.x, _wgslsmith_f_op_f32(arg_1 + -359f)), vec4<bool>(true, true, true, select(true, false, false)))), vec4<bool>(!select(false, true, u_input.b.x != 19997u), true, (max(0i, arg_0) >= arg_0) || true, true), all(!vec2<bool>(true, any(vec3<bool>(false, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-997f)))), -959f, all(vec2<bool>(all(vec2<bool>(true, var_0.x)), !var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1515f))))), any(!vec4<bool>(true, true, 42095i < arg_0, -277f >= arg_1))));
    var var_2 = firstLeadingBit(u_input.a.xz & u_input.b.xz);
    return var_0.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_5 {
    global1 = array<vec3<u32>, 5>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(sign(-623f)));
    global1 = array<vec3<u32>, 5>();
    let var_1 = vec3<u32>(~firstTrailingBit(u_input.b.x), 67905u, 1u);
    global0 = ~(4294967295u & _wgslsmith_sub_u32(1u, var_1.x));
    return Struct_5(arg_0, arg_1, -countOneBits(arg_2.yy), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_2.x, _wgslsmith_clamp_i32(17838i, 57360i, -arg_2.x)), arg_2.xxz));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = ~(~(_wgslsmith_div_u32(33968u, arg_0.x & 1u) >> (arg_0.x % 32u)));
    global3 = array<vec4<i32>, 17>();
    global0 = _wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.xx, ~firstLeadingBit(~arg_0.zy)));
    var var_0 = func_5(select(vec2<bool>(false, func_2(abs(1i), -353f)), vec2<bool>(true, true), true), Struct_1(~(~firstTrailingBit(71298u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-928f + 500f))), _wgslsmith_f_op_f32(round(-319f)))), global3[_wgslsmith_index_u32(arg_0.x, 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(848f, 1417f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1082f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-447f, 741f))));
    var var_1 = vec2<i32>(~var_0.d.x, -abs((var_0.d.x & 2547i) | (var_0.c.x >> (54335u % 32u))));
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~arg_0.x, arg_0.x), firstTrailingBit(arg_0.x << (68958u % 32u))), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(4671i, ~(~(~(-1i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-56114i, 0i), vec2<i32>(16658i, 36019i))), -39835i);
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, ~(~1u)), ~14593u), ~(~(~(u_input.a.x | 15577u))), u_input.a.x);
    var var_2 = Struct_2(func_1(u_input.b));
    var_2 = Struct_2(Struct_1(15519u, -108f));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(abs(u_input.a.x), 17u)], _wgslsmith_add_vec4_i32(vec4<i32>(select(-2883i, -54366i, true) << (52058u % 32u), ~abs(0i), _wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, firstTrailingBit(2147483647i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, -2147483647i), ~(-2147483647i))), vec4<i32>(reverseBits(54877i), 1i, 51112i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(var_2.a.a, 17u)]), 1i))));
}

