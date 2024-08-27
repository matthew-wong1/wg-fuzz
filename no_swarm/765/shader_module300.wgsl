struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -1045f);

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(vec4<f32>(-349f, 1069f, -1000f, 1173f), 0i, 192f, vec4<i32>(0i, -12178i, -1i, -4485i), true), 1u, 1000f, false, Struct_1(vec4<f32>(-1887f, -211f, 935f, -964f), -1i, -1575f, vec4<i32>(-43107i, i32(-2147483648), -1i, -1i), true)), Struct_3(Struct_1(vec4<f32>(-890f, -440f, -1000f, -122f), -13489i, 573f, vec4<i32>(13685i, 2147483647i, i32(-2147483648), -36517i), true), 54086u, 131f, false, Struct_1(vec4<f32>(274f, -267f, 2102f, -1204f), 2147483647i, -582f, vec4<i32>(2147483647i, -1i, 2147483647i, -13297i), true)), Struct_3(Struct_1(vec4<f32>(739f, 1483f, -1033f, 1051f), 7850i, -650f, vec4<i32>(2147483647i, 23420i, i32(-2147483648), -1i), false), 4294967295u, -3421f, false, Struct_1(vec4<f32>(-316f, -1074f, 596f, 927f), -10294i, 699f, vec4<i32>(-26754i, 0i, 2147483647i, i32(-2147483648)), false)), Struct_3(Struct_1(vec4<f32>(1840f, -183f, 248f, 1472f), -1i, -1104f, vec4<i32>(-34541i, 28962i, 29283i, 2147483647i), true), 77435u, 1901f, false, Struct_1(vec4<f32>(-382f, -854f, 1066f, -717f), i32(-2147483648), -944f, vec4<i32>(2147483647i, 2147483647i, 48106i, 35117i), false)), Struct_3(Struct_1(vec4<f32>(743f, 904f, -337f, -2205f), 2147483647i, 299f, vec4<i32>(22313i, -1i, -1i, 34038i), false), 38518u, -238f, true, Struct_1(vec4<f32>(-137f, -259f, -667f, -276f), -1i, 1000f, vec4<i32>(17925i, -1i, 14130i, i32(-2147483648)), true)), Struct_3(Struct_1(vec4<f32>(-343f, -1054f, -760f, -846f), 4098i, 841f, vec4<i32>(0i, 60918i, -3824i, 26808i), false), 1u, 751f, true, Struct_1(vec4<f32>(882f, 634f, -1175f, -946f), 0i, 392f, vec4<i32>(-7107i, -30738i, -2490i, -1i), true)));

var<private> global2: vec2<f32>;

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, -1i);

var<private> global4: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    var var_0 = false;
    let var_1 = Struct_2(Struct_1(vec4<f32>(1046f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -134f)), global0.x, 671f), 1i, global0.x, _wgslsmith_clamp_vec4_i32(-u_input.a, firstTrailingBit(vec4<i32>(global3.x, -1i, global3.x, 27726i) >> (vec4<u32>(0u, 0u, 51081u, 11608u) % vec4<u32>(32u))), vec4<i32>(global3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), global3.xz), _wgslsmith_mult_i32(-20597i, u_input.a.x), 1i)), !all(vec2<bool>(true, false)) || true), global3.x, reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(select(36095u, 46981u, false), 1u, ~32167u), max(vec3<u32>(4294967295u, 65103u, 34802u), vec3<u32>(71188u, 166u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1.a.a);
    global1 = array<Struct_3, 6>();
    global3 = vec3<i32>(var_1.b, firstLeadingBit(reverseBits(-2402i)), 1i) & -_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-40671i, u_input.a.x, 1i)), u_input.a.yxy, vec3<i32>(-global3.x, _wgslsmith_clamp_i32(global3.x, 1i, -137i), -1i));
    return select(select(!select(!vec2<bool>(var_1.a.e, var_1.a.e), !vec2<bool>(var_1.a.e, var_1.a.e), vec2<bool>(var_1.a.e, var_1.a.e)), vec2<bool>(var_1.a.e, any(vec4<bool>(var_1.a.e, true, var_1.a.e, var_1.a.e))), false), select(vec2<bool>(any(vec3<bool>(true, var_1.a.e, var_1.a.e)), any(vec4<bool>(true, false, true, true))), !vec2<bool>(true, var_1.c.x < var_1.c.x), var_1.a.e), true);
}

fn func_2() -> Struct_1 {
    let var_0 = any(func_3());
    var var_1 = -global3.x;
    var var_2 = 63576u >= _wgslsmith_sub_u32(61694u >> (1u % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 32179u), firstTrailingBit(1u)));
    global4 = 0u;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(global2.x + global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global0.x, global2.x, global2.x), vec4<f32>(global2.x, global0.x, global0.x, global0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-683f, global0.x, global0.x, -697f), vec4<f32>(global0.x, global0.x, global0.x, -304f)))), _wgslsmith_add_i32(global3.x, u_input.a.x & (global3.x >> (11334u % 32u))), 880f, -(u_input.a & vec4<i32>(global3.x, global3.x, -17619i, u_input.a.x)), true), global3.x, ~vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25143u), vec2<u32>(35551u, 4294967295u)), 1u), ~(~20589u)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1597f, 210f, var_3.a.c, var_3.a.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_3.a.a)))))), _wgslsmith_mod_i32(-1i, ~global3.x), -1941f, u_input.a, !(!(!var_0)) == var_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mod_u32(arg_2.b, _wgslsmith_add_u32(countOneBits(arg_2.b), abs(1u)))), (reverseBits(0u) | ~arg_2.b) >> (max(0u << (firstTrailingBit(arg_2.b) % 32u), 1u) % 32u));
    let var_1 = arg_2.a;
    global4 = ~arg_2.b;
    global4 = _wgslsmith_mod_u32(firstTrailingBit(var_0 << (var_0 % 32u)), ~89866u) << (abs(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(66495u, 89281u, var_0), select(vec3<u32>(arg_2.b, arg_2.b, arg_2.b), vec3<u32>(10769u, 88929u, arg_2.b), false)), _wgslsmith_mod_vec3_u32(~vec3<u32>(99024u, var_0, 5082u), ~vec3<u32>(943u, var_0, arg_2.b)))) % 32u);
    let var_2 = select(select(vec3<bool>(false, all(select(vec4<bool>(true, arg_0.e, false, arg_0.e), vec4<bool>(true, false, arg_2.e.e, false), true)), false), vec3<bool>(~arg_0.b > u_input.a.x, any(vec4<bool>(arg_0.e, arg_0.e, arg_0.e, true)), var_1.e || any(vec4<bool>(arg_0.e, false, var_1.e, arg_2.a.e))), true), select(!vec3<bool>(!var_1.e, 4294967295u > var_0, any(vec4<bool>(false, arg_0.e, false, arg_0.e))), !vec3<bool>(arg_2.e.e, false, false), select(!select(vec3<bool>(false, false, arg_0.e), vec3<bool>(true, arg_2.d, arg_2.a.e), vec3<bool>(arg_2.d, arg_2.a.e, true)), !select(vec3<bool>(true, true, true), vec3<bool>(arg_2.a.e, arg_0.e, true), vec3<bool>(false, var_1.e, arg_2.a.e)), arg_2.e.e)), !arg_2.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1932f, global2.x)) * _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(func_2().c - -1000f)) - arg_0.c));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), vec4<f32>(-734f, global2.x, 1780f, 1019f), Struct_3(Struct_1(vec4<f32>(961f, 747f, global2.x, -1454f), 18295i, global2.x, u_input.a, false), 0u, global2.x, true, Struct_1(vec4<f32>(-1000f, global2.x, -254f, global0.x), 41319i, 688f, vec4<i32>(global3.x, global3.x, u_input.a.x, -2418i), false)), _wgslsmith_f_op_f32(global0.x - global2.x)))))) + _wgslsmith_f_op_f32(f32(-1f) * -1134f));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(func_2().a.wz))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, _wgslsmith_div_f32(677f, global0.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-279f, -1311f))))), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_3().x))) + vec2<f32>(-811f, _wgslsmith_f_op_f32(exp2(global0.x))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))) - 454f);
    global3 = select(~func_2().d.yyw ^ u_input.a.yxx, -_wgslsmith_div_vec3_i32(vec3<i32>(-15355i, -25195i, u_input.a.x) ^ func_2().d.zxx, -select(u_input.a.xyx, vec3<i32>(global3.x, global3.x, -2147483647i), vec3<bool>(false, false, true))), vec3<bool>(true, select(any(func_3()), true, true), true));
    var var_1 = Struct_4(true, Struct_2(func_2(), 0i, vec3<u32>(1u, 1u, 1u)), abs(1u), true);
    return -20355i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(~(vec3<i32>(-1i) * -vec3<i32>(30943i, -40163i, 26322i)) ^ -firstLeadingBit(u_input.a.wyw));
    global3 = vec3<i32>(_wgslsmith_div_i32(15475i, global3.x), _wgslsmith_div_i32(select(2147483647i, ~select(global3.x, -45776i, true), true), -abs(0i)), func_1());
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(global3.x, ~(select(u_input.a.x, 19796i, false) << (1u % 32u))), -(~_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.a.x, u_input.a.x), reverseBits(u_input.a.xww))), global3.x, -85936i);
    var var_1 = func_2().a.zwz;
    global2 = var_1.zx;
    let var_2 = ~26688i;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a, _wgslsmith_add_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(4294967295u, 15866u, 37919u, 4294967295u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 11243u))) << (abs(abs(~vec2<u32>(1u, 13239u))) % vec2<u32>(32u)), ~min(1u, 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(var_1.yx)))) + var_1.zz))), 17792i);
}

