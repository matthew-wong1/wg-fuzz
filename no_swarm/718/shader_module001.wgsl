struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(vec4<u32>(0u, 0u, 4294967295u, 51757u), -2095f, vec4<f32>(-1000f, -2028f, 348f, -537f), 0i), 0i, vec2<f32>(-813f, -1996f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = Struct_5(global0.a, 0i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, -596f)) - vec2<f32>(_wgslsmith_f_op_f32(step(935f, -534f)), 115f)))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b * 114f)), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f - _wgslsmith_f_op_f32(global0.a.b * 1078f)) * global0.c.x)), -513f);
    global0 = Struct_5(Struct_3(vec4<u32>(~abs(28410u), 0u, max(_wgslsmith_sub_u32(u_input.d.x, global0.a.a.x), u_input.d.x), 1u ^ reverseBits(global0.a.a.x)), -243f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a.c, global0.a.c, vec4<bool>(false, true, false, true))) + vec4<f32>(-252f, 379f, var_0.x, -666f))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, u_input.c) | ~vec4<i32>(u_input.a, -21899i, 1i, u_input.b.x), vec4<i32>(-2147483647i >> (global0.a.a.x % 32u), ~(-1i), -2147483647i, _wgslsmith_sub_i32(global0.a.d, -9903i)))), i32(-1i) * -47967i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.c.x)) + var_0.x), _wgslsmith_f_op_f32(1948f - var_0.x)));
    return -272f;
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> vec2<f32> {
    let var_0 = Struct_2(~u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, 326f, arg_1.b.b.x) + vec4<f32>(-1274f, global0.c.x, global0.c.x, 215f)) + _wgslsmith_f_op_vec4_f32(exp2(global0.a.c)))) + global0.a.c));
    var var_1 = Struct_5(global0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_1.b.a.zxx), vec3<i32>(-arg_0, global0.a.d, 1i)), 0i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(global0.c)))));
    global0 = Struct_5(Struct_3(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0.a, 30194u, u_input.d.x, 44066u)), _wgslsmith_mult_vec4_u32(global0.a.a, _wgslsmith_div_vec4_u32(global0.a.a, vec4<u32>(u_input.d.x, 0u, 30972u, 11272u)))), 838f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 1020f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1072f)), -1905f), arg_0), arg_1.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.b.b.x, 607f), _wgslsmith_f_op_f32(ceil(var_1.a.b)))) + vec2<f32>(arg_1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1750f, arg_1.b.b.x)) - _wgslsmith_f_op_f32(global0.a.b - var_0.b.x)))));
    var var_2 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)) - 1f) < _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)) || any(vec4<bool>(var_1.c.x >= _wgslsmith_f_op_f32(max(var_1.a.b, var_1.a.c.x)), !any(vec4<bool>(true, false, false, false)), !(85239u == var_1.a.a.x), any(vec2<bool>(false, true))));
    var_2 = arg_1.b.b.x > 1108f;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.c.yw), global0.a.c.yx);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_5 {
    global0 = Struct_5(global0.a, 2147483647i, global0.c);
    let var_0 = global0.a;
    var var_1 = ~vec4<u32>(min(_wgslsmith_add_u32(~17726u, ~global0.a.a.x), var_0.a.x << (1u % 32u)), _wgslsmith_mod_u32(u_input.d.x, u_input.d.x), ~min(4294967295u >> (u_input.d.x % 32u), 1u), ~(~4294967295u) << (u_input.d.x % 32u));
    var var_2 = !select(vec4<bool>(_wgslsmith_mult_u32(26929u, 1u) >= _wgslsmith_div_u32(global0.a.a.x, 0u), any(arg_1), arg_1.x, (u_input.a != var_0.d) & false), select(vec4<bool>(false || arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), false, true), select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), !select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(false, true, arg_1.x, arg_1.x), arg_1.x)), !select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), !vec4<bool>(true, arg_1.x, true, arg_1.x), select(vec4<bool>(false, arg_1.x, false, false), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, false))));
    let var_3 = Struct_4(~_wgslsmith_div_vec2_i32(u_input.b.yz, u_input.b.xx), arg_0);
    return Struct_5(Struct_3(vec4<u32>(~(~1u), var_1.x, var_1.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d.x, var_1.x), abs(var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-867f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 379f, 465f, var_3.b.b.x) + vec4<f32>(-516f, global0.c.x, var_0.c.x, 722f)) - global0.a.c)), -_wgslsmith_mult_i32(select(-2147483647i, var_3.b.a.x, var_2.x), ~(-1i))), var_3.b.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.yz + global0.c)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_5 {
    global0 = func_4(Struct_1(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, global0.b, u_input.c, u_input.c), vec4<i32>(global0.a.d, -4790i, 0i, global0.a.d) ^ vec4<i32>(0i, global0.b, 2147483647i, -29810i), _wgslsmith_clamp_vec4_i32(vec4<i32>(44642i, 56315i, global0.b, u_input.a), vec4<i32>(global0.a.d, -5399i, u_input.c, u_input.a), vec4<i32>(global0.b, u_input.a, global0.b, -14201i))), _wgslsmith_f_op_vec2_f32(func_2(44714i, Struct_4(~u_input.b.xy, Struct_1(vec4<i32>(u_input.b.x, u_input.a, global0.b, global0.a.d), vec2<f32>(-1000f, global0.a.c.x)))))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), -2147483647i >= u_input.b.x)));
    let var_0 = Struct_5(global0.a, max(func_4(Struct_1(~vec4<i32>(-1i, -4267i, u_input.a, u_input.c), vec2<f32>(585f, global0.a.b)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), false)).b, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-379f, global0.c.x))));
    var var_1 = _wgslsmith_sub_i32(global0.b, -27291i);
    var var_2 = func_4(Struct_1(~(-(~vec4<i32>(9992i, 1i, var_0.a.d, global0.b))), _wgslsmith_f_op_vec2_f32(global0.a.c.yz + vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)))), vec3<bool>(true, true, select(select(all(vec3<bool>(false, false, false)), true, any(vec3<bool>(false, false, false))), all(vec4<bool>(false, false, false, true)), !all(vec4<bool>(false, false, true, true)))));
    var var_3 = Struct_4(vec2<i32>(52917i, abs(_wgslsmith_mult_i32(-1i, ~(-13892i)))), Struct_1(vec4<i32>(var_2.a.d, 0i, u_input.b.x, u_input.c), vec2<f32>(var_0.a.b, var_2.c.x)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)));
    global0 = func_1(global0.a.a);
    let var_1 = func_4(Struct_1(max(vec4<i32>(_wgslsmith_add_i32(0i, global0.a.d), ~u_input.b.x, ~u_input.b.x, 2147483647i), firstTrailingBit(-vec4<i32>(u_input.a, 3511i, -1i, global0.a.d))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(global0.c))))), !select(vec3<bool>(var_0, all(vec4<bool>(var_0, var_0, true, false)), !var_0), select(vec3<bool>(true, false, true), vec3<bool>(var_0, true, true), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0))), select(!vec3<bool>(false, var_0, false), !vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, false), true)))).a;
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(max(-10440i, global0.a.d), 2147483647i) & global0.b, 2147483647i, ~(-20558i >> (1u % 32u)), 9243i), _wgslsmith_f_op_vec2_f32(-global0.a.c.xz));
    global0 = Struct_5(func_4(Struct_1(abs(vec4<i32>(-8888i, u_input.a, 2147483647i, var_1.d)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.b.x, 818f), vec2<f32>(var_1.b, var_1.b)))))), !select(!vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, true), true)).a, -u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(func_4(Struct_1(var_2.a, vec2<f32>(-748f, global0.c.x)), vec3<bool>(var_0, false, true)).c, _wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.x, 232f), var_1.c.wx), vec2<bool>(true, true))), var_1.c.xw)))));
    var var_3 = Struct_5(Struct_3(vec4<u32>(~global0.a.a.x, 4294967295u, countOneBits(38264u), ~select(global0.a.a.x, 398u, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(320f + _wgslsmith_f_op_f32(select(1783f, -729f, var_0))), 284f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a.c, _wgslsmith_f_op_vec4_f32(round(global0.a.c)), vec4<bool>(false, var_0, var_0, var_0)))), -6543i), u_input.a, vec2<f32>(global0.c.x, global0.a.c.x));
    var var_4 = var_3.a.c.yz;
    var var_5 = Struct_5(var_3.a, -1i, _wgslsmith_f_op_vec2_f32(ceil(global0.a.c.zx)));
    let var_6 = Struct_1(min(select(-var_2.a ^ var_2.a, var_2.a, vec4<bool>(999f >= var_4.x, true, var_0, !var_0)), var_2.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1846f, var_5.a.c.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(floor(var_4.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-3296i | (_wgslsmith_sub_i32(u_input.a, reverseBits(-45812i)) << (~_wgslsmith_add_u32(var_3.a.a.x, u_input.d.x) % 32u)));
}

