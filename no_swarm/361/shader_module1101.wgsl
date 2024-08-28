struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec4<i32>(-1i, -36343i, i32(-2147483648), 98243i), 0u, vec4<i32>(-29695i, 1i, 0i, 2147483647i), 1207f), Struct_3(vec4<i32>(1i, i32(-2147483648), 1i, 1i), 52215u, vec4<i32>(i32(-2147483648), 2147483647i, -75658i, 3290i), -1000f), Struct_3(vec4<i32>(41265i, 0i, 1i, 20098i), 0u, vec4<i32>(-24714i, -1i, 0i, -3412i), 278f), Struct_3(vec4<i32>(29253i, i32(-2147483648), -47075i, 1i), 43374u, vec4<i32>(0i, 2147483647i, i32(-2147483648), 55238i), 1000f), Struct_3(vec4<i32>(1i, 2147483647i, 29657i, i32(-2147483648)), 0u, vec4<i32>(1i, 26476i, i32(-2147483648), -56937i), -1139f), Struct_3(vec4<i32>(26350i, -66966i, 0i, -41639i), 24918u, vec4<i32>(-1i, 9403i, 2147483647i, i32(-2147483648)), -1083f), Struct_3(vec4<i32>(i32(-2147483648), -18706i, i32(-2147483648), 11567i), 71628u, vec4<i32>(-35170i, -1i, i32(-2147483648), 1i), -1000f), Struct_3(vec4<i32>(13330i, 21029i, i32(-2147483648), 9503i), 1u, vec4<i32>(2147483647i, -48884i, i32(-2147483648), 1i), -582f), Struct_3(vec4<i32>(i32(-2147483648), 27777i, 0i, i32(-2147483648)), 22156u, vec4<i32>(-7411i, i32(-2147483648), 33816i, 12736i), -849f));

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 18> = array<bool, 18>(false, true, false, false, false, false, true, false, false, true, true, true, false, true, true, true, true, true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec2<bool>(true, any(select(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 18u)], false), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(global1.x, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]), !vec4<bool>(global2[_wgslsmith_index_u32(60570u, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(14772u, 18u)], false), global2[_wgslsmith_index_u32(global1.x ^ 13233u, 18u)]), !select(vec4<bool>(global2[_wgslsmith_index_u32(30405u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], true, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(51671u, 18u)], true, false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)])))));
    global1 = ~vec3<u32>(global1.x, u_input.a, ~_wgslsmith_div_u32(u_input.a, 4294967295u)) | ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 0u, u_input.a), vec3<u32>(0u, global1.x, global1.x))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(200f, _wgslsmith_f_op_f32(f32(-1f) * -253f), global2[_wgslsmith_index_u32(reverseBits(u_input.a), 18u)])))), _wgslsmith_f_op_f32(-1526f + _wgslsmith_f_op_f32(355f * _wgslsmith_div_f32(-220f, 1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1261f, -1695f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -978f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1226f - 327f) - 1257f))), -761f);
    global0 = array<Struct_3, 9>();
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-723f + var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-568f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(284f, 1954f), -1789f, var_0.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_1.x)))))), 574f);
    return !(!(!vec4<bool>(var_0.x && var_0.x, global2[_wgslsmith_index_u32(global1.x, 18u)], true | var_0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, 9549u), vec3<u32>(global1.x, 1u, 40667u)), 18u)])));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = vec4<u32>(~(~(~arg_1.b)), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~17197u, _wgslsmith_sub_u32(global1.x, 1610u), arg_1.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 20403u, global1.x, u_input.a), ~vec4<u32>(58553u, u_input.a, 24176u, arg_1.b))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.b, global1.x, global1.x, 24577u), select(vec4<u32>(62975u, 35186u, 0u, 4628u), vec4<u32>(arg_1.b, global1.x, global1.x, global1.x), vec4<bool>(arg_0, false, true, arg_2))), reverseBits(vec4<u32>(4294967295u, u_input.a, 4181u, arg_1.b)), !arg_3), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 29070u, u_input.a, 1u), vec4<bool>(false, arg_0, arg_2, arg_3.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(94872u, u_input.a, 1035u, u_input.a), vec4<u32>(1u, global1.x, u_input.a, global1.x), vec4<u32>(global1.x, 89301u, global1.x, 2846u)))), 4294967295u);
    let var_1 = arg_3.ww;
    let var_2 = Struct_2(!select(select(func_3(), func_3(), !arg_0), !(!arg_3), arg_3), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1756f, -423f) * vec2<f32>(arg_1.d, 1706f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, arg_1.d)))))));
    let var_3 = Struct_3(_wgslsmith_add_vec4_i32(arg_1.a, arg_1.c), arg_1.b, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + 632f))) + arg_1.d));
    global2 = array<bool, 18>();
    return arg_3.www;
}

fn func_2() -> vec4<bool> {
    let var_0 = func_4(global2[_wgslsmith_index_u32(~57202u, 18u)], global0[_wgslsmith_index_u32(0u, 9u)], !all(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)]))), !(!func_3()));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-944f + -700f))), _wgslsmith_f_op_f32(1221f - _wgslsmith_f_op_f32(-631f + -1756f)), false)))), _wgslsmith_f_op_f32(max(-977f, _wgslsmith_f_op_f32(abs(-1722f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1066f))));
    var var_2 = global1.xx;
    var var_3 = ~(~vec4<u32>(_wgslsmith_sub_u32(~4294967295u, var_2.x), ~_wgslsmith_mult_u32(global1.x, global1.x), u_input.a, u_input.a >> (~global1.x % 32u)));
    global2 = array<bool, 18>();
    return vec4<bool>(var_0.x && !global2[_wgslsmith_index_u32(~(~var_3.x), 18u)], true, any(vec3<bool>(var_0.x, false, _wgslsmith_f_op_f32(-1895f + var_1.x) >= -644f)), all(var_0.xy));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = Struct_2(func_2(), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1426f, -1528f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-188f, 1567f)))) - vec2<f32>(-808f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f) + _wgslsmith_div_f32(471f, 659f)))));
    var var_1 = var_0.b;
    var var_2 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -34280i), vec2<i32>(21763i, arg_0))), u_input.c.x)));
    global1 = vec3<u32>(_wgslsmith_clamp_u32(abs(23870u), 0u, var_0.b ^ ~(var_0.b << (var_0.b % 32u))), ~u_input.a, global1.x);
    var var_3 = firstTrailingBit(~_wgslsmith_add_vec4_i32(u_input.c, max(select(u_input.c, u_input.c, var_0.a), max(u_input.c, u_input.c))));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~reverseBits(~vec3<u32>(u_input.a, 16126u, 0u)), vec3<u32>(1u, u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(51104u, 69867u), 0u))), vec3<u32>(9592u, 4294967295u, (_wgslsmith_dot_vec3_u32(vec3<u32>(17231u, global1.x, 8626u), vec3<u32>(2210u, 12997u, global1.x)) << (_wgslsmith_add_u32(global1.x, 1u) % 32u)) << (global1.x % 32u)), ~vec3<u32>(~global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 16413u, 0u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.a, 37533u), vec4<u32>(global1.x, 4411u, u_input.a, global1.x))), 31019u));
    let var_1 = vec3<u32>(var_0.x, 4294967295u, global1.x);
    let var_2 = Struct_1(all(!vec4<bool>(true, false, func_1(u_input.b), any(vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 18u)])))), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(max(u_input.a, var_1.x), ~var_1.x), 45396u), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u) << (vec4<u32>(global1.x, var_1.x, var_1.x, 0u) % vec4<u32>(32u)), select(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u), vec4<u32>(4294967295u, var_1.x, 1u, u_input.a), global2[_wgslsmith_index_u32(21262u, 18u)])), var_0.x, reverseBits(0u), _wgslsmith_div_u32(1u, var_1.x)));
    let var_3 = ~var_2.c;
    var_0 = var_1;
    var var_4 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, abs(var_2.c.x), global1.x), vec3<u32>(~var_0.x, var_3.x, u_input.a | 1u)) << (global1.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-182f + _wgslsmith_f_op_f32(min(-170f, 743f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(254f)), _wgslsmith_div_f32(-998f, 942f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(938f, -1387f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-334f, 335f, global2[_wgslsmith_index_u32(var_2.c.x, 18u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-136f, -941f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1000f, 802f)), _wgslsmith_f_op_f32(-549f * -1000f))))));
}

