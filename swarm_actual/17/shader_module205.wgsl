struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_3,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1378f, -128f, 242f, -1000f), vec4<f32>(1036f, 400f, 2140f, 348f), vec4<f32>(-490f, 426f, -779f, -1624f), vec4<f32>(940f, 292f, -300f, -844f), vec4<f32>(1099f, 314f, 244f, -598f), vec4<f32>(515f, -677f, -300f, 1783f), vec4<f32>(752f, 1756f, -456f, 784f), vec4<f32>(-346f, 287f, -979f, -225f), vec4<f32>(-568f, 1763f, -1427f, 630f), vec4<f32>(363f, 1592f, 1134f, 354f), vec4<f32>(744f, -530f, -193f, -559f), vec4<f32>(1000f, 1000f, 415f, 413f), vec4<f32>(1914f, -983f, 410f, -1182f), vec4<f32>(903f, 252f, -1083f, -406f), vec4<f32>(-249f, 658f, -691f, 968f), vec4<f32>(561f, 505f, -393f, -323f), vec4<f32>(-1629f, 199f, -680f, -927f), vec4<f32>(1000f, -1141f, -1262f, -1413f), vec4<f32>(1000f, 498f, 1411f, -1797f), vec4<f32>(-799f, -249f, -456f, -1773f), vec4<f32>(330f, 855f, -2149f, 339f), vec4<f32>(-616f, -524f, 1854f, 870f), vec4<f32>(529f, 789f, -1155f, 322f));

var<private> global1: array<vec4<f32>, 5>;

var<private> global2: array<Struct_5, 24>;

var<private> global3: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(2147483647i, -8039i, -47550i), vec3<i32>(-42783i, i32(-2147483648), -40776i), vec3<i32>(0i, 33698i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(-1i, 0i, 55337i), vec3<i32>(0i, 2147483647i, -9295i), vec3<i32>(i32(-2147483648), -4059i, 44893i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(21190i, 2147483647i, 1i), vec3<i32>(4075i, -1i, -25571i), vec3<i32>(0i, -52572i, -1i), vec3<i32>(2147483647i, -22555i, -1i), vec3<i32>(2147483647i, 25433i, 2147483647i), vec3<i32>(i32(-2147483648), -45235i, 0i), vec3<i32>(-6326i, 6400i, -71777i), vec3<i32>(5661i, 0i, -1i), vec3<i32>(-12281i, -1i, -26475i), vec3<i32>(0i, -56728i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(i32(-2147483648), -26916i, 1i), vec3<i32>(57789i, 2147483647i, -26305i), vec3<i32>(-47886i, -26705i, 0i), vec3<i32>(4585i, 0i, -21650i), vec3<i32>(60193i, 2147483647i, i32(-2147483648)), vec3<i32>(28685i, 64759i, 2147483647i), vec3<i32>(1i, 2147483647i, i32(-2147483648)));

var<private> global4: array<u32, 30> = array<u32, 30>(4294967295u, 0u, 4294967295u, 4294967295u, 48408u, 4304u, 0u, 1u, 61584u, 4294967295u, 48678u, 49140u, 30630u, 1u, 0u, 50758u, 33389u, 4294967295u, 4294967295u, 46872u, 0u, 50952u, 65293u, 56109u, 0u, 1u, 38304u, 10505u, 10796u, 26299u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = (~(-(u_input.b.x & 2147483647i)) & countOneBits(-2147483647i)) | (i32(-1i) * -2147483647i);
    return _wgslsmith_clamp_i32(0i, max(select(-2147483647i, min(-16380i, -17043i), any(vec3<bool>(true, false, true))), -17039i), ~(-4377i));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: i32) -> vec2<u32> {
    global2 = array<Struct_5, 24>();
    var var_0 = Struct_5(arg_2.a, -2147483647i, arg_2.c, Struct_3(vec3<bool>(false, false, false)), Struct_1(arg_2.d.a.yx, !(any(vec4<bool>(arg_2.a.a.a.x, false, true, true)) != !arg_2.c.a.x), (~vec2<u32>(u_input.a.x, global4[_wgslsmith_index_u32(0u, 30u)]) | select(arg_2.e.c, vec2<u32>(arg_2.a.b.x, 4294967295u), vec2<bool>(arg_2.c.a.x, true))) << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.e.c.x, 1750u), vec2<u32>(0u, 24487u)) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1080f + 2068f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(501f, arg_0.x))), _wgslsmith_add_vec2_i32(arg_1.zy, firstLeadingBit(~vec2<i32>(1i, arg_2.b)))));
    let var_1 = Struct_3(arg_2.d.a);
    var var_2 = ~func_3() << (~2254u % 32u);
    var var_3 = var_0.a.a;
    return u_input.a.zz;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = Struct_5(Struct_4(Struct_3(vec3<bool>(false, true, true)), vec4<u32>(abs(arg_2), ~0u, arg_1.x, abs(20695u)) >> (firstLeadingBit(vec4<u32>(0u, arg_2, arg_1.x, arg_1.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1291f * _wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(trunc(arg_3))))), -arg_0, Struct_3(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)), Struct_3(vec3<bool>(false, true, true)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true))), false, vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(u_input.c, u_input.a.x), 50288u, true), 30u)], 30u)], 1u), arg_3, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, -vec2<i32>(11812i, 1i)), vec2<i32>(select(u_input.b.x, -2147483647i, true), abs(u_input.b.x)), u_input.b)));
    let var_1 = func_3();
    var var_2 = vec4<bool>(true, false, var_0.a.a.a.x, false);
    global0 = array<vec4<f32>, 23>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.d, arg_3)))), vec2<f32>(315f, -215f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1825f, _wgslsmith_f_op_f32(floor(arg_3))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c, var_0.a.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(585f, 1029f))))) * vec2<f32>(-378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f)) - -1198f)));
    return u_input.b.x;
}

fn func_1(arg_0: vec2<f32>) -> vec4<bool> {
    global0 = array<vec4<f32>, 23>();
    let var_0 = false;
    let var_1 = u_input.a.x;
    global1 = array<vec4<f32>, 5>();
    var var_2 = Struct_1(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(all(vec3<bool>(false, true, false)), !var_0), true), !select(!vec2<bool>(true, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), select(vec2<bool>(false, false), vec2<bool>(true, var_0), true)), false), false, vec2<u32>(max(abs(~var_1), ~19780u << (0u % 32u)), 41815u), -1026f, vec2<i32>(func_4(-u_input.b.x, func_2(arg_0, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(124724u, 24u)], u_input.b.x), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -218f)) ^ 15352i, 2147483647i));
    return vec4<bool>(true, var_2.b, var_2.a.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 30>();
    let var_0 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, u_input.c, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.c, 30u)], 41911u), global4[_wgslsmith_index_u32(u_input.a.x, 30u)] & 4294967295u), ~reverseBits(vec4<u32>(u_input.c, 24925u, 95211u, 4294967295u)))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 4294967295u, 4294967295u, 18189u) & vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 30u)], 30u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25874u, 30u)], 30u)], u_input.c), ~vec4<u32>(35532u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(402u, 30u)], 30u)], u_input.a.x, global4[_wgslsmith_index_u32(49161u, 30u)]), vec4<u32>(global4[_wgslsmith_index_u32(11921u, 30u)], u_input.a.x, 0u, global4[_wgslsmith_index_u32(u_input.c, 30u)]) & vec4<u32>(0u, u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 30u)], 31465u)) << (~vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 30u)], 30u)], global4[_wgslsmith_index_u32(43560u, 30u)], 20908u) % vec4<u32>(32u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(84382u, u_input.c, global4[_wgslsmith_index_u32(u_input.a.x, 30u)], 0u), vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(18601u, 30u)], global4[_wgslsmith_index_u32(75451u, 30u)], 25333u))), select(select(func_1(vec2<f32>(-1053f, 1144f)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)))), ~vec4<u32>(1u, firstTrailingBit(1u), u_input.a.x, u_input.a.x));
    let var_1 = global3[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(755f, -1682f) + vec2<f32>(226f, 1131f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-113f, -151f) + vec2<f32>(391f, -1051f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1901f) - vec2<f32>(2704f, -188f)) + vec2<f32>(1f, 1f)))), vec4<i32>(u_input.b.x, select(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 1i)), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), vec4<i32>(-2147483647i, 1i, -91826i, u_input.b.x))), true), u_input.b.x, ~_wgslsmith_sub_i32(1i, u_input.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 38089u), 24u)], firstLeadingBit(_wgslsmith_mod_i32(firstTrailingBit(abs(u_input.b.x)), ~_wgslsmith_mod_i32(1i, 13900i)))).x, 26u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-511f, -630f) + _wgslsmith_f_op_f32(trunc(-585f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f * 169f)), _wgslsmith_f_op_f32(round(1000f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-110f, 484f)), _wgslsmith_f_op_f32(1126f * 481f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-429f, 436f), -1732f)) - _wgslsmith_f_op_f32(304f * -929f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1628f, _wgslsmith_f_op_f32(abs(-347f)))) * -1530f))));
    global4 = array<u32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(reverseBits(var_0.x), 1u), ~0u >> (abs(global4[_wgslsmith_index_u32(u_input.a.x, 30u)]) % 32u)), ~_wgslsmith_clamp_u32(1u, ~u_input.c, var_0.x << (0u % 32u))), _wgslsmith_f_op_vec2_f32(min(var_2.xz, vec2<f32>(704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))))), var_0);
}

