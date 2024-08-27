struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(i32(-2147483648), -25607i, -744i), vec3<i32>(-6768i, 1i, 8925i), vec3<i32>(-43531i, 25688i, 0i), vec3<i32>(-27907i, 23151i, 38591i), vec3<i32>(0i, 31024i, 0i), vec3<i32>(-40089i, 16621i, 11150i), vec3<i32>(36327i, 92032i, 35451i), vec3<i32>(-52596i, 1i, 38904i), vec3<i32>(33199i, 1i, -1820i), vec3<i32>(40426i, 39604i, -1i), vec3<i32>(i32(-2147483648), -278i, -5747i), vec3<i32>(-56577i, -1i, -17990i), vec3<i32>(2147483647i, -1i, 28299i), vec3<i32>(28964i, -12673i, i32(-2147483648)), vec3<i32>(-941i, 1940i, 0i), vec3<i32>(2147483647i, 2147483647i, -26267i), vec3<i32>(-34745i, 1i, 40385i), vec3<i32>(1i, -31074i, 1i), vec3<i32>(61111i, 18531i, 1i), vec3<i32>(0i, 22558i, -1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = Struct_3(-1665f, 4294967295u, vec4<bool>(!(max(arg_2.e.c.x, arg_2.b) >= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 67640u, 45603u, arg_2.e.a), vec4<u32>(1u, 1u, 15898u, 20225u))), !arg_0.c.x, true, !arg_0.c.x), (arg_2.e.c.yx | vec2<u32>(~25950u, 4251u)) & ~reverseBits(~vec2<u32>(1u, 75601u)), arg_2.e);
    return var_0.a;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(-896f, arg_0, vec4<bool>(true, true, false, false), vec2<u32>(arg_0, arg_0), Struct_2(0u, 34598i, vec3<u32>(arg_0, arg_0, arg_0))), vec2<i32>(0i, u_input.b.x), Struct_3(147f, arg_0, vec4<bool>(false, true, true, false), vec2<u32>(arg_0, 53227u), Struct_2(arg_0, arg_2, vec3<u32>(arg_0, arg_0, arg_0))), arg_0))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_3(-1000f, arg_0, vec4<bool>(true, true, true, true), vec2<u32>(1u, arg_0), Struct_2(4294967295u, -1i, vec3<u32>(arg_0, arg_0, arg_0))), vec2<i32>(-2147483647i, 2147483647i), Struct_3(1822f, 1u, vec4<bool>(true, false, true, false), vec2<u32>(30105u, 8771u), Struct_2(arg_0, arg_1, vec3<u32>(4294967295u, 51104u, 4294967295u))), 5703u))))) * 193f));
    global0 = array<vec3<i32>, 20>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-174f))))));
    var var_2 = vec2<bool>(true, true);
    var_1 = var_0;
    return Struct_1(vec2<bool>(false, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1.e.c;
    var var_1 = Struct_3(-1000f, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(max(2718u, arg_1.e.a), min(arg_1.b, var_0.x)), vec2<u32>(~var_0.x, 84335u)), select(vec2<u32>(1u, arg_1.b), vec2<u32>(~43942u, 0u), arg_0.a)), select(arg_1.c, arg_1.c, 1u < min(4294967295u, _wgslsmith_sub_u32(var_0.x, var_0.x))), arg_1.d, arg_1.e);
    var var_2 = _wgslsmith_f_op_f32(min(417f, var_1.a));
    var_2 = var_1.a;
    let var_3 = var_1.c.x;
    return Struct_1(select(arg_0.a, var_1.c.xz, select(vec2<bool>(arg_1.c.x, true), vec2<bool>(true, arg_1.c.x && var_1.c.x), true)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)));
    var_0 = _wgslsmith_f_op_f32(-arg_1.a);
    global0 = array<vec3<i32>, 20>();
    var var_1 = ~_wgslsmith_sub_i32(arg_3.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i | arg_3.b, arg_3.b, firstLeadingBit(arg_1.e.b)), u_input.b));
    var var_2 = func_4(func_2(_wgslsmith_mod_u32(60263u, _wgslsmith_div_u32(10469u, 1u) & arg_3.c.x), arg_1.e.b | 2039i, _wgslsmith_mod_i32(-16332i, abs(_wgslsmith_mult_i32(arg_3.b, -1i))), select(~vec4<i32>(2147483647i, u_input.b.x, arg_3.b, arg_3.b) << (~vec4<u32>(4294967295u, 1u, arg_0.d.x, 91329u) % vec4<u32>(32u)), select(reverseBits(vec4<i32>(arg_0.e.b, arg_3.b, arg_3.b, u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a.x, arg_1.e.b, arg_0.e.b), vec4<i32>(arg_1.e.b, arg_0.e.b, -15807i, 0i), vec4<i32>(arg_0.e.b, arg_3.b, u_input.b.x, arg_1.e.b)), !arg_1.c), all(arg_0.c.zy))), arg_1);
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 4294967295u)) >> (_wgslsmith_mult_u32(48344u, 56260u) % 32u)) & 37146u);
    let var_1 = Struct_1(select(select(select(func_1(Struct_3(-1000f, var_0, vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, var_0), Struct_2(var_0, 23091i, vec3<u32>(var_0, 20444u, var_0))), Struct_3(464f, 22815u, vec4<bool>(true, false, false, false), vec2<u32>(var_0, 84730u), Struct_2(var_0, u_input.b.x, vec3<u32>(4294967295u, 1u, var_0))), vec3<u32>(104347u, 43467u, 18u), Struct_2(0u, u_input.b.x, vec3<u32>(57177u, var_0, 47133u))), vec2<bool>(true, true), vec2<bool>(true, true)), func_4(func_2(1u, -18691i, -1i, vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 2147483647i)), Struct_3(-343f, var_0, vec4<bool>(false, false, true, false), vec2<u32>(var_0, var_0), Struct_2(1u, u_input.a.x, vec3<u32>(4294967295u, var_0, 4294967295u)))).a, false), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true));
    var var_2 = _wgslsmith_mod_u32(107038u, var_0);
    global0 = array<vec3<i32>, 20>();
    var var_3 = ~(~1u);
    let var_4 = func_2(4294967295u, 5623i, _wgslsmith_sub_i32(40292i, u_input.b.x ^ u_input.a.x), vec4<i32>(1i, u_input.b.x, -1i, -(0i << (_wgslsmith_sub_u32(var_0, 1u) % 32u))));
    var var_5 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(0u, var_0), var_0), var_0) ^ ~(~var_0);
    var_2 = (var_0 ^ var_0) ^ (~_wgslsmith_clamp_u32(countOneBits(var_0), _wgslsmith_sub_u32(var_0, var_0), 51006u) << (var_0 % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(-1189f, 3895u, vec4<bool>(true, true, var_1.a.x, false), vec2<u32>(var_0, 38164u), Struct_2(4294967295u, -38538i, vec3<u32>(28321u, 17044u, var_0))), vec2<i32>(u_input.b.x, u_input.b.x), Struct_3(-354f, 1u, vec4<bool>(false, true, var_4.a.x, false), vec2<u32>(0u, 22624u), Struct_2(0u, -1i, vec3<u32>(var_0, var_0, 36203u))), var_0 >> (4383u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1007f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)), _wgslsmith_f_op_f32(648f * _wgslsmith_f_op_f32(select(328f, 999f, var_1.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(min(-766f, 1115f)), var_0, !vec4<bool>(false, var_1.a.x, var_1.a.x, false), ~vec2<u32>(var_0, 4237u), Struct_2(53312u, 21856i, vec3<u32>(20462u, var_0, 19831u))), ~min(u_input.a.zy, u_input.a.zy), Struct_3(_wgslsmith_f_op_f32(max(-859f, -591f)), reverseBits(var_0), !vec4<bool>(var_4.a.x, true, true, var_4.a.x), vec2<u32>(4294967295u, 71750u), Struct_2(var_0, u_input.b.x, vec3<u32>(18028u, var_0, var_0))), var_0)), _wgslsmith_f_op_f32(round(-548f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f))), _wgslsmith_mod_i32(u_input.a.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f), -382f)), abs(select(~vec4<u32>(var_0, 16959u, var_0, 1u), vec4<u32>(48726u, var_0, var_0, var_0), !vec4<bool>(var_4.a.x, false, var_4.a.x, var_4.a.x))) | ~((vec4<u32>(1u, var_0, var_0, var_0) | vec4<u32>(var_0, 4294967295u, var_0, 4294967295u)) ^ ~vec4<u32>(var_0, 62254u, var_0, var_0)));
}

