struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -49650i);

var<private> global1: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_2(Struct_1(-362f), Struct_1(-1761f)), 20721u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(-1740f), Struct_1(1064f)), 0u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(-1000f), Struct_1(1496f)), 0u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(360f), Struct_1(-1343f)), 1u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(-409f), Struct_1(-756f)), 12659u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(-1000f), Struct_1(1665f)), 42077u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(364f), Struct_1(-356f)), 0u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(328f), Struct_1(558f)), 20310u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(801f), Struct_1(184f)), 6256u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(439f), Struct_1(-790f)), 9311u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(263f), Struct_1(1304f)), 5309u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(179f), Struct_1(1076f)), 0u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(123f), Struct_1(-573f)), 0u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(1751f), Struct_1(-357f)), 0u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(-1000f), Struct_1(-345f)), 1u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(-276f), Struct_1(167f)), 3270u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(487f), Struct_1(226f)), 0u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(1828f), Struct_1(1148f)), 0u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(402f), Struct_1(-246f)), 0u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(-285f), Struct_1(-485f)), 0u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(-1280f), Struct_1(1800f)), 89683u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(282f), Struct_1(379f)), 4294967295u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(755f), Struct_1(404f)), 1u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(-1561f), Struct_1(-2138f)), 0u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(640f), Struct_1(1596f)), 0u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(179f), Struct_1(1222f)), 0u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(-239f), Struct_1(627f)), 0u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(1084f), Struct_1(802f)), 0u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(500f), Struct_1(-954f)), 1u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(110f), Struct_1(695f)), 1u, vec2<bool>(true, false)));

var<private> global2: Struct_1 = Struct_1(1454f);

var<private> global3: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_2(Struct_1(132f), Struct_1(454f)), 34687u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(1132f), Struct_1(276f)), 18260u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(-258f), Struct_1(-1345f)), 35879u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(-1310f), Struct_1(749f)), 321u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(666f), Struct_1(-1287f)), 4294967295u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(-688f), Struct_1(-534f)), 26428u, vec2<bool>(false, true)), Struct_5(Struct_2(Struct_1(-1000f), Struct_1(-720f)), 0u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(1065f), Struct_1(992f)), 4294967295u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(1119f), Struct_1(-186f)), 551u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(434f), Struct_1(992f)), 24454u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(-1614f), Struct_1(1185f)), 61321u, vec2<bool>(true, false)), Struct_5(Struct_2(Struct_1(347f), Struct_1(-456f)), 1u, vec2<bool>(false, false)), Struct_5(Struct_2(Struct_1(792f), Struct_1(129f)), 2051u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(1049f), Struct_1(891f)), 1u, vec2<bool>(true, true)), Struct_5(Struct_2(Struct_1(1000f), Struct_1(1186f)), 1u, vec2<bool>(false, true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> u32 {
    global1 = array<Struct_5, 30>();
    global2 = arg_0.e;
    var var_0 = 0u;
    global3 = array<Struct_5, 15>();
    var var_1 = ~(~u_input.a);
    return ~(~arg_1);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_2(Struct_1(-2002f), Struct_1(-233f));
    var var_1 = select(vec3<i32>(firstLeadingBit(0i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global0.x, 1i)), u_input.a), u_input.a.x), _wgslsmith_sub_i32(firstLeadingBit(firstLeadingBit(global0.x)), abs(-41078i))), arg_1.c.www, false);
    global1 = array<Struct_5, 30>();
    let var_2 = vec3<f32>(-269f, _wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 297f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(f32(-1f) * -192f))))) - var_0.a.a));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, -558f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.a, -541f), -446f))), 1288f);
    return -1000f;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_mult_vec3_u32(select(min(vec3<u32>(67949u, 0u, 88676u), vec3<u32>(88611u, 2118u, 39433u)), max(vec3<u32>(26808u, 4294967295u, 1u), vec3<u32>(4294967295u, 104408u, 4294967295u)), select(vec3<bool>(false, false, false), vec3<bool>(arg_2.x, arg_2.x, true), arg_2.x)), ~vec3<u32>(1u, 1u, 1u)) | max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, reverseBits(31824u), _wgslsmith_sub_u32(67947u, 2993u))), global2.a, vec4<bool>(arg_2.x, true, true, true), global0.x, Struct_1(346f));
    global1 = array<Struct_5, 30>();
    var var_1 = Struct_3(vec3<u32>(~4294967295u, 1u, 0u), arg_1, var_0.c, -2147483647i, Struct_1(-1085f));
    global0 = u_input.a.yz;
    global2 = var_1.e;
    return 5941u;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global1 = array<Struct_5, 30>();
    var var_0 = vec2<u32>(~36128u, ~1u);
    var var_1 = abs(arg_3);
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~12423u, 0u), min(abs(vec2<u32>(var_0.x, arg_0)), max(vec2<u32>(73289u, 0u), vec2<u32>(20720u, 1u)))), 1u, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, arg_3, 8735u), ~(~vec3<u32>(var_0.x, arg_0, 0u)))), ~(~firstTrailingBit(vec4<u32>(11330u, 1u, var_0.x, 39899u) & vec4<u32>(arg_3, var_0.x, 17628u, 79618u))), vec4<u32>(~37624u, func_2(Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(arg_3, 30373u, 1u)), -940f, select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false), false), global0.x, Struct_1(-1119f)), 1u), reverseBits(9503u), ~_wgslsmith_mod_u32(0u, var_0.x)));
    var var_3 = var_2.x;
    return Struct_2(Struct_1(arg_2.a), Struct_1(_wgslsmith_f_op_f32(-2215f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, arg_2.a) * _wgslsmith_f_op_f32(abs(arg_2.a))))));
}

fn func_1() -> u32 {
    var var_0 = func_5(~func_2(Struct_3(vec3<u32>(4294967295u, 1u, 23873u), -1578f, vec4<bool>(false, true, false, true), abs(global0.x), Struct_1(global2.a)), ~33973u), vec2<bool>(true & all(vec3<bool>(false, false, true)), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.a))))), func_4(firstTrailingBit(-select(vec4<i32>(global0.x, 37478i, global0.x, u_input.a.x), vec4<i32>(-9928i, -1i, 1223i, u_input.a.x), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, false), Struct_4(2069f, vec2<f32>(-574f, global2.a), vec4<i32>(0i, -2890i, 1i, 6975i)))))) * -496f), vec2<bool>(all(vec4<bool>(true, false, true, true)), true)));
    global2 = func_5(~47433u, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), var_0.b, 63945u).a;
    let var_1 = countOneBits(select(countOneBits(vec3<u32>(4742u, 4294967295u, 1u)) << (~select(vec3<u32>(1u, 428u, 54258u), vec3<u32>(4476u, 24036u, 31703u), true) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(0u, 16756u, 4294967295u)) << (select(vec3<u32>(0u, 46435u, 13327u), vec3<u32>(24446u, 44615u, 54324u), vec3<bool>(false, true, true)) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true)));
    let var_2 = 1f;
    let var_3 = Struct_2(func_5(func_2(Struct_3(var_1, var_0.b.a, vec4<bool>(true, false, true, false), u_input.a.x >> (var_1.x % 32u), var_0.b), firstTrailingBit(~608u)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), var_0.a, 1u).b, func_5(~var_1.x, vec2<bool>(!all(vec2<bool>(true, false)), false), var_0.b, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u) ^ vec2<u32>(1u, 12372u), vec2<u32>(22907u, 0u)))).b);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(~(~45782u), 5383u, _wgslsmith_div_u32(1u, func_1()), 1u), countOneBits(select(firstTrailingBit(vec4<u32>(4668u, 41227u, 4294967295u, 0u)), ~vec4<u32>(0u, 4294967295u, 121269u, 75740u), vec4<bool>(true, true, true, true)))));
    global3 = array<Struct_5, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1277f, global2.a, 756f))) * vec3<f32>(-275f, -1000f, global2.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a, -577f, -1558f))))), _wgslsmith_div_vec3_f32(vec3<f32>(132f, _wgslsmith_div_f32(-1000f, -1134f), _wgslsmith_f_op_f32(-global2.a)), vec3<f32>(_wgslsmith_div_f32(-1158f, global2.a), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_div_f32(global2.a, global2.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(1587f)), 159f, _wgslsmith_f_op_f32(402f * 141f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -212f, -202f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, -342f)))))), !(!vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, false))))));
    global1 = array<Struct_5, 30>();
    let var_2 = u_input.a.x;
    let var_3 = abs(4294967295u);
    let var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(var_0 << (~vec4<u32>(var_0.x, 57021u, 1u, 1u) % vec4<u32>(32u)), min(max(vec4<u32>(var_3, 1u, var_0.x, var_0.x), vec4<u32>(var_3, var_3, 0u, 30065u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3, var_3, 50811u, var_3), var_0))), var_0) << (firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(11420u, max(15382u, var_0.x), max(var_3, var_3), ~var_3), var_0)) % vec4<u32>(32u));
    global0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-(select(vec2<i32>(38449i, u_input.a.x), u_input.a.xz, vec2<bool>(true, false)) | ~u_input.a.yy), vec2<i32>(2147483647i, min(u_input.a.x, 30725i))), vec2<i32>(~u_input.a.x, u_input.a.x), u_input.a.yx);
    let var_5 = ~(0u & select(0u, _wgslsmith_dot_vec3_u32(var_4.yyx, var_4.xzw), !all(vec3<bool>(false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_1(), abs(var_4.x)), firstTrailingBit(u_input.a.x), firstTrailingBit(1i));
}

