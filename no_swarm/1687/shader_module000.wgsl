struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: f32 = -242f;

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_3(arg_1.b.a, vec2<u32>(countOneBits(arg_1.b.a.x), abs(arg_1.b.b.x)), Struct_1(true, global3.b, any(vec3<bool>(true, true, true))), Struct_1(false, vec3<bool>(true & (arg_0.x >= arg_0.x), true, true), !(true || any(global3.b.xx))));
    let var_1 = vec4<i32>(0i, _wgslsmith_add_i32(firstLeadingBit(~(i32(-1i) * -47255i)), arg_0.x), -(~_wgslsmith_mult_i32(firstLeadingBit(-54142i), 0i)), _wgslsmith_add_i32(_wgslsmith_div_i32(9289i, -arg_0.x & countOneBits(arg_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b.x, -31819i, countOneBits(arg_0.x)), _wgslsmith_clamp_vec3_i32(select(u_input.b, vec3<i32>(-35271i, 2147483647i, u_input.b.x), var_0.c.b), ~vec3<i32>(-25380i, arg_0.x, arg_0.x), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(2147483647i, 0i, -21028i))))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(29789u ^ arg_1.b.b.x, 20u)], select(select(vec3<bool>(true, any(vec4<bool>(true, arg_1.b.c.c, false, global0[_wgslsmith_index_u32(1u, 20u)])), !var_0.c.c), select(vec3<bool>(global3.a, global0[_wgslsmith_index_u32(1u, 20u)], false), select(vec3<bool>(arg_1.b.d.a, var_0.d.b.x, global0[_wgslsmith_index_u32(arg_1.b.b.x, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(7148u, 20u)], true, global3.b.x), true), vec3<bool>(global3.a, global0[_wgslsmith_index_u32(19099u, 20u)], false)), select(var_0.d.b, !vec3<bool>(true, arg_1.b.c.a, arg_1.b.d.a), !global3.b)), !vec3<bool>(all(vec4<bool>(global3.a, global3.a, global0[_wgslsmith_index_u32(64898u, 20u)], false)), !arg_1.b.d.b.x, arg_1.b.d.a || global0[_wgslsmith_index_u32(arg_1.b.a.x, 20u)]), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, var_0.b.x), 20u)]), global3.c);
    var var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)) - _wgslsmith_f_op_f32(ceil(-1093f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-259f)))), arg_1.b.d, _wgslsmith_mult_vec2_u32(~arg_1.b.b & _wgslsmith_sub_vec2_u32(select(var_0.b, arg_1.b.b, global3.b.xx), arg_1.b.a.zy), arg_1.b.b));
    var_2 = Struct_1(arg_1.b.c.a, select(select(select(!global3.b, global3.b, select(arg_1.b.c.b, vec3<bool>(false, global0[_wgslsmith_index_u32(86094u, 20u)], false), arg_1.b.c.a)), !vec3<bool>(true, var_0.d.c, false), var_2.c || (false && global3.a)), select(var_3.b.b, var_2.b, vec3<bool>(true, any(vec4<bool>(true, var_2.a, global3.a, true)), true)), true), all(select(global3.b.xz, select(var_2.b.xx, vec2<bool>(true, global3.a), 31977u <= arg_1.b.a.x), false)));
    return _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(arg_1.b.b.x, 53385u) ^ ~vec2<u32>(arg_1.b.a.x, arg_1.b.b.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(max(~var_0.a, min(vec3<u32>(4294967295u, var_3.c.x, var_0.a.x), vec3<u32>(1u, 35980u, var_3.c.x))), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(62044u, 11352u, arg_1.b.b.x)), arg_1.b.a)), var_3.c.x));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(true, arg_1.b.b, func_3(-u_input.c, Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2817f, arg_1.a, arg_0, arg_0)), Struct_3(vec3<u32>(33923u, 1u, 0u), vec2<u32>(14619u, 25342u), Struct_1(false, vec3<bool>(global3.b.x, false, global0[_wgslsmith_index_u32(64732u, 20u)]), true), Struct_1(false, arg_1.b.b, arg_1.b.b.x)))) != max(~4294967295u, func_3(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.b.x)), Struct_4(vec4<f32>(-123f, arg_0, -517f, 711f), Struct_3(vec3<u32>(5843u, 0u, 25572u), arg_1.c, arg_1.b, Struct_1(false, global3.b, global0[_wgslsmith_index_u32(arg_1.c.x, 20u)]))))));
    global0 = array<bool, 20>();
    let var_1 = 563f;
    let var_2 = any(!vec2<bool>(_wgslsmith_f_op_f32(min(-804f, -1250f)) < _wgslsmith_div_f32(965f, arg_0), true));
    let var_3 = select(!(!(!(!vec4<bool>(var_2, var_0.a, true, arg_1.b.c)))), !vec4<bool>(true, arg_1.b.a, arg_0 == _wgslsmith_f_op_f32(step(-1187f, 243f)), false), global0[_wgslsmith_index_u32(1u, 20u)]);
    return firstTrailingBit(~4294967295u);
}

fn func_1() -> Struct_4 {
    var var_0 = vec4<u32>(min(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1843f * -227f) - _wgslsmith_f_op_f32(sign(-1000f))), Struct_2(_wgslsmith_div_f32(1105f, 902f), Struct_1(true, vec3<bool>(global3.c, false, false), true), vec2<u32>(41136u, 1u))), 1u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(32691u, 21231u), vec2<u32>(24796u, 0u)), abs(vec2<u32>(4294967295u, 1u))) % 32u)), ~min(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 19786u, 0u, 0u)), 0u), ~1u, 78401u);
    global3 = Struct_1(global3.b.x, global3.b, !(true == all(select(vec4<bool>(global3.c, global3.c, global0[_wgslsmith_index_u32(var_0.x, 20u)], global3.b.x), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 20u)], global3.c, false), global3.c))));
    var_0 = ~vec4<u32>(4294967295u, ~22518u, var_0.x, 1u);
    global0 = array<bool, 20>();
    var var_1 = vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -22179i) ^ u_input.c, vec2<i32>(-67016i, u_input.a)), -(2147483647i | u_input.b.x)), (_wgslsmith_div_i32(~u_input.c.x, -2147483647i) & u_input.c.x) ^ 1i, -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-50142i, u_input.a, u_input.c.x) << (firstLeadingBit(var_0.x) % 32u), _wgslsmith_div_i32(-38165i, _wgslsmith_mult_i32(u_input.b.x, -1i))), u_input.c.x);
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -128f, 531f, -938f)) - vec4<f32>(-1000f, -661f, 631f, -528f)), !select(vec4<bool>(global3.c, global3.a, global3.c, false), vec4<bool>(true, true, true, false), global3.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(783f, -989f, -901f, 459f), vec4<f32>(207f, 1247f, -435f, 674f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(381f, 2421f, -462f, 836f))) - vec4<f32>(-263f, -238f, 474f, -1284f)))), Struct_3(var_0.wxx, vec2<u32>(min(max(0u, var_0.x), 1u), min(var_0.x, 17853u)), Struct_1(global3.b.x, !select(vec3<bool>(global3.b.x, global0[_wgslsmith_index_u32(var_0.x, 20u)], true), global3.b, vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)], global3.b.x)), global3.b.x), Struct_1(true, select(vec3<bool>(true, true, false), global3.b, select(global3.a, global3.a, false)), global3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0[_wgslsmith_index_u32(~1u, 20u)], true);
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -46995i, _wgslsmith_clamp_i32(u_input.c.x, -27695i, 23768i)), vec2<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))) | u_input.b.yy, reverseBits(-_wgslsmith_add_vec2_i32(u_input.b.xy, u_input.b.xz & u_input.b.yy)));
    let var_2 = func_1();
    var var_3 = select(!select(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_2.b.b.x, 20u)], true, true, var_0.x), vec4<bool>(false, var_2.b.c.a, global0[_wgslsmith_index_u32(16238u, 20u)], var_0.x), global3.a), vec4<bool>(any(vec4<bool>(true, var_2.b.c.b.x, false, true)), true, true, false), vec4<bool>(!global3.b.x, true, select(var_0.x, true, true), var_0.x)), vec4<bool>(!var_0.x, all(vec4<bool>(var_2.b.d.b.x, var_2.b.d.a, 1773u == var_2.b.a.x, true)), global0[_wgslsmith_index_u32(67423u, 20u)], true), select(vec4<bool>(false, 2147483647i > -var_1.x, var_2.b.d.a, var_2.a.x != var_2.a.x), vec4<bool>(true, var_0.x, !(32049u <= var_2.b.a.x), global0[_wgslsmith_index_u32(1444u, 20u)]), vec4<bool>(true, true, true, true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * -335f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)) * 1198f)));
    let var_4 = var_2.b.a;
    var var_5 = 1048f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)) + var_2.a), var_2.a), ~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)) - 286f), vec2<u32>(var_2.b.b.x, var_2.b.b.x) >> (vec2<u32>(var_2.b.a.x, ~_wgslsmith_mult_u32(var_2.b.b.x, var_2.b.b.x)) % vec2<u32>(32u)), var_2.a.zx);
}

