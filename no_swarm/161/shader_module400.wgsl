struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(16115i, i32(-2147483648), 0i, 10756i), vec4<i32>(2147483647i, 30449i, 2147483647i, -1i), vec4<i32>(45353i, 0i, -6475i, 1i), vec4<i32>(-12540i, 24743i, 1i, 0i), vec4<i32>(34777i, 6171i, -1i, 18172i), vec4<i32>(1i, i32(-2147483648), -43119i, -1i), vec4<i32>(i32(-2147483648), 1331i, 2147483647i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 5561i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i), vec4<i32>(29979i, i32(-2147483648), 0i, -12159i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -19273i), vec4<i32>(0i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -3056i, 4106i, -1i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-4329i, i32(-2147483648), 0i, -28133i), vec4<i32>(41549i, -5240i, 19079i, 7679i), vec4<i32>(-46647i, 14814i, -18917i, -1i), vec4<i32>(0i, -1i, 0i, 3296i), vec4<i32>(2147483647i, 2147483647i, 19414i, -1i), vec4<i32>(2147483647i, -20630i, -7705i, 0i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec4<i32>, 20>();
    let var_0 = ~(~reverseBits(4294967295u));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(-726f, _wgslsmith_f_op_f32(f32(-1f) * -2325f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1194f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -517f), 1212f, select(false, false, false))), _wgslsmith_f_op_f32(round(-483f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(697f - 227f) - 159f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(464f + 569f) * -2108f), -2350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)), _wgslsmith_f_op_f32(abs(1f))))));
    let var_2 = -_wgslsmith_add_i32(abs(-1i), -_wgslsmith_mod_i32(-25126i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 66665i, 9490i), vec3<i32>(-1i, 0i, 1i))));
    var var_3 = u_input.a.x;
    return !vec2<bool>(!(_wgslsmith_f_op_f32(-286f - var_1.x) >= -2136f), false);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<vec4<i32>, 20>();
    let var_0 = vec3<i32>(arg_0, arg_0, arg_0);
    var var_1 = Struct_2(select(u_input.a, vec2<u32>(1u, 4294967295u), any(func_3())), Struct_1(vec3<f32>(-1381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(443f + 660f) * -203f), -119f), select(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), select(all(vec3<bool>(true, false, true)), true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-715f, _wgslsmith_f_op_f32(ceil(-116f)), _wgslsmith_f_op_f32(295f + -1000f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1657f, 721f, -873f), _wgslsmith_f_op_vec3_f32(vec3<f32>(748f, 1643f, -1331f) + vec3<f32>(415f, -1542f, -607f)))), vec3<bool>(true, true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c.a.x * var_1.c.a.x)));
    var var_3 = var_1.b;
    return var_1.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_3 {
    var var_0 = firstTrailingBit(vec2<i32>(-1i, 34738i));
    global0 = array<vec4<i32>, 20>();
    var var_1 = _wgslsmith_add_i32(abs(arg_2.x), var_0.x);
    global0 = array<vec4<i32>, 20>();
    var_0 = arg_2.xy >> ((_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.a), select(u_input.a, vec2<u32>(arg_0, 58949u), arg_1.b.x)), u_input.a) | ~_wgslsmith_div_vec2_u32(u_input.a, u_input.a << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u));
    return Struct_3(arg_1.b.zx, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    var var_0 = select(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a.x, arg_1.a.x, 0u, u_input.a.x), ~vec4<u32>(43519u, 38577u, 0u, 19097u)), vec4<u32>(u_input.a.x, 0u, 34438u, _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), ~arg_1.a.x)), all(!vec4<bool>(arg_1.c.b.x, true, true, true))) & vec4<u32>(0u, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(95303u, 49401u, 0u), vec3<u32>(134977u, 4294967295u, 0u)), 1u)), ~select(1u, _wgslsmith_mod_u32(u_input.a.x, 72500u), !arg_1.c.b.x), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(arg_1.a.x, arg_1.a.x, 10939u, u_input.a.x)), vec4<u32>(15386u ^ arg_1.a.x, reverseBits(19097u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), countOneBits(u_input.a.x))));
    let var_1 = ~(~_wgslsmith_add_vec3_u32(~var_0.zzx, vec3<u32>(4294967295u, 4294967295u, arg_1.a.x)) & select(vec3<u32>(1u, var_0.x, 35371u) & firstLeadingBit(vec3<u32>(var_0.x, 6125u, arg_1.a.x)), vec3<u32>(~0u, u_input.a.x, abs(u_input.a.x)), arg_0.a.x));
    var_0 = min(~vec4<u32>(u_input.a.x & arg_1.a.x, 0u, select(~0u, 4294967295u, true), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_1, vec3<u32>(var_0.x, var_1.x, arg_1.a.x)), vec3<u32>(var_1.x, 12956u, 0u))), firstLeadingBit(firstTrailingBit(~reverseBits(vec4<u32>(var_0.x, 1u, 1u, var_1.x)))));
    var var_2 = max(vec3<i32>(abs(arg_0.b.x), i32(-1i) * -55158i, select(_wgslsmith_add_i32(8960i, arg_0.b.x), ~max(arg_0.b.x, -24525i), false)), min(~(~vec3<i32>(arg_0.b.x, arg_0.b.x, 39153i)), arg_0.b.yyw) ^ _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.x, -23764i, -10205i), vec3<i32>(-2147483647i, 1i, -13178i), vec3<i32>(arg_0.b.x, 2147483647i, 64290i))), _wgslsmith_div_vec3_i32(arg_0.b.wxw, vec3<i32>(10627i, -14940i, 0i)) >> (vec3<u32>(var_0.x, arg_1.a.x, 1u) % vec3<u32>(32u))));
    var_2 = firstLeadingBit(vec3<i32>(0i, arg_0.b.x | -27018i, -(~43427i)));
    return arg_0;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(func_5(func_4(u_input.a.x, func_2(i32(-1i) * -20954i), ~(vec4<i32>(26961i, 1i, 25929i, -26454i) << (vec4<u32>(u_input.a.x, u_input.a.x, 41669u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-671f)))), Struct_2(u_input.a, Struct_1(vec3<f32>(-1000f, 278f, 282f), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, 975f, 1297f) + vec3<f32>(-768f, -827f, 976f)), vec3<bool>(true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2728f)), 491f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1123f)), -461f)) - 678f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-359f, 1318f) + vec2<f32>(-753f, -839f)) - vec2<f32>(-273f, -558f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1619f, 854f), vec2<f32>(110f, 1677f))))))));
    global0 = array<vec4<i32>, 20>();
    return Struct_4(Struct_3(select(!vec2<bool>(var_0.a.a.x, var_0.a.a.x), vec2<bool>(true && var_0.a.a.x, false), vec2<bool>(true, true)), vec4<i32>(_wgslsmith_add_i32(-var_0.a.b.x, -35887i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b.x, var_0.a.b.x), ~var_0.a.b.zx), var_0.a.b.x, _wgslsmith_dot_vec2_i32(var_0.a.b.zx, max(var_0.a.b.wx, vec2<i32>(var_0.a.b.x, -58033i))))));
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_4) -> u32 {
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    return select(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, u_input.a.x, 117813u), select(arg_2.xzx, arg_2.wzy, false))), ~4294967295u >> (u_input.a.x % 32u), false);
}

fn func_7(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-939f, -1738f) + vec2<f32>(arg_1, 1000f))))), vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-485f + 102f)), func_2(-15206i).a.x))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(-1481f, arg_1)), _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 290f)))))));
    let var_1 = select(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(2147483647i, 34791i))), vec2<i32>(1i, 1i), func_3());
    var var_2 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(~var_1.x, i32(-1i) * -35699i), select(_wgslsmith_div_i32(abs(0i), var_1.x), var_1.x | (21895i << (0u % 32u)), true)), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(var_1.x, -22185i) & 2147483647i) << (u_input.a.x % 32u), -2147483647i);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-func_2(var_1.x).a.x)), -1252f);
    var_2 = vec3<i32>(2147483647i, firstTrailingBit(var_2.x), 0i);
    return Struct_2(vec2<u32>(24517u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(16401u, 16993u, 0u, 29678u), vec4<u32>(arg_0, arg_0, arg_0, 24224u)) >> (min(~50529u, ~u_input.a.x) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_3.x, 770f)))), select(func_2(-20800i).b, vec3<bool>(true, func_1().a.a.x, any(vec2<bool>(false, false))), var_0.x == _wgslsmith_f_op_f32(round(var_3.x)))), func_2(~0i ^ ~var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 20>();
    let var_0 = vec2<bool>(true, false);
    var var_1 = -1053f;
    var var_2 = func_7(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(41458u, 19308u, u_input.a.x), vec3<u32>(u_input.a.x, 50610u, 37670u)), ~(~u_input.a.x)) ^ (func_6(true, all(vec3<bool>(true, false, var_0.x)), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), func_1()) & 7757u), func_2(~_wgslsmith_sub_i32(_wgslsmith_add_i32(-10590i, -5981i), 0i)).a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1023f, _wgslsmith_f_op_f32(var_2.c.a.x - -690f), -819f) + func_2(-1i).a))), vec3<bool>(true, (var_2.a.x >= var_2.a.x) && false, true));
    var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.a.x * var_3.a.x)))), -1841f, _wgslsmith_f_op_f32(round(var_3.a.x))), select(select(vec3<bool>(func_7(u_input.a.x, -176f).c.b.x, var_2.c.b.x || true, var_0.x), select(!vec3<bool>(var_0.x, var_0.x, false), var_3.b, true), select(select(vec3<bool>(false, false, var_2.c.b.x), vec3<bool>(false, true, var_3.b.x), vec3<bool>(false, false, false)), func_2(57016i).b, !var_2.b.b)), select(var_3.b, vec3<bool>(false, var_2.b.b.x, !var_0.x), func_1().a.a.x), var_3.b));
    let var_4 = func_7(~(~(~firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)))).c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(55801u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-220f + var_2.b.a.x) + var_2.c.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1235f, var_2.b.a.x))))));
}

