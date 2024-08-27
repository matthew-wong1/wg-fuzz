struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_4,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(910f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1319f)))));
    var_0 = Struct_2(914f);
    var_0 = Struct_2(var_0.a);
    var var_1 = ~min(abs(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, arg_0.e, 1u), 1u, u_input.b)), vec3<u32>(max(abs(20506u), ~23462u), abs(arg_0.e), 75214u));
    var var_2 = Struct_2(133f);
    return 841f;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(0i), -32181i, true, false, u_input.b), u_input.a)))), -1101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1341f)) - _wgslsmith_f_op_f32(-143f + -282f)) * _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(-25010i), 10979i, false, true, u_input.a.x), abs(u_input.a)))), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(15021i), 2617i, true, all(vec4<bool>(false, false, false, true)), ~u_input.c), vec4<u32>(13262u, u_input.b, u_input.c, u_input.a.x) ^ min(vec4<u32>(13782u, 4294967295u, 36632u, 53103u), u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1543f, -342f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -448f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f))), -113f, -1492f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(floor(1399f))))));
    var var_2 = all(select(vec4<bool>(false, 4294967295u >= ~u_input.b, any(vec3<bool>(true, false, true)), !any(vec3<bool>(true, true, false))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), true), any(vec2<bool>(true, true))));
    var_2 = !(!select(all(vec2<bool>(true, true)), var_1.x == var_0.x, any(vec3<bool>(true, true, true))));
    let var_3 = select(vec4<u32>(61711u, u_input.a.x ^ _wgslsmith_div_u32(39318u, u_input.a.x), 0u, ~(~_wgslsmith_div_u32(u_input.b, 4607u))), _wgslsmith_clamp_vec4_u32(~(~u_input.a & ~vec4<u32>(1u, u_input.b, 96243u, u_input.c)), vec4<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.c, 15227u, 1u), ~u_input.a.x, 4294967295u) | countOneBits(u_input.a | u_input.a), u_input.a), _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-1i, 1562i, -45043i)), vec3<i32>(reverseBits(1i), -2147483647i, min(-646i, 1i))) != abs(_wgslsmith_clamp_i32(1i, 1i, 32831i) << (u_input.b % 32u)));
    return ~((~_wgslsmith_dot_vec4_u32(var_3, u_input.a) >> (_wgslsmith_div_u32(u_input.b, var_3.x ^ u_input.b) % 32u)) & _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(firstTrailingBit(68424u), ~6696u)));
}

fn func_1() -> vec4<bool> {
    let var_0 = false;
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1459f)), 1394f));
    let var_2 = countOneBits(_wgslsmith_sub_u32(~u_input.c, 0u));
    var var_3 = max(_wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(var_2, 4294967295u), ~_wgslsmith_mod_u32(0u, 15719u), _wgslsmith_div_u32(1u, ~u_input.a.x), countOneBits(func_2())), u_input.a), ~u_input.a);
    let var_4 = Struct_1(1i);
    return !vec4<bool>(false, _wgslsmith_f_op_f32(min(-430f, var_1.a)) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-896f, -512f)), var_0, all(!select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(false, true, var_0, var_0), true)));
}

fn func_4(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(round(328f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -1405f, 795f, 109f), vec4<f32>(1793f, -309f, -543f, 1000f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1820f, var_0, var_0, var_0)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1000f, var_0)), _wgslsmith_div_f32(-104f, -1009f), var_0, var_0))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-14695i, -59773i, 1i)), ~vec3<i32>(-11325i, 1i, 155i))), abs(~_wgslsmith_sub_i32(~23399i, 1i)), reverseBits(u_input.b) != u_input.b, false, (u_input.a.x >> (1u % 32u)) >> (u_input.b % 32u));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_2.e, _wgslsmith_mult_u32(61088u, ~(~var_2.e))), vec3<u32>(8590u, _wgslsmith_sub_u32(1u, ~_wgslsmith_clamp_u32(u_input.b, 63446u, var_2.e)), var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(func_4(func_1()) >> (u_input.a.wyz % vec3<u32>(32u)), ~(~u_input.a.wxx));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(3088u >> (firstTrailingBit(_wgslsmith_mult_u32(u_input.c, 0u)) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.c, var_0.x) << (vec4<u32>(u_input.c, u_input.b, 9823u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c, 0u, var_0.x), u_input.a))), 4294967295u);
    var var_2 = select(select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true || any(vec3<bool>(true, false, false)), true, true), vec4<bool>(true, !any(vec2<bool>(false, false)), true, all(vec3<bool>(false, false, false))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), func_1(), select(vec4<bool>(true, false, true, true), func_1(), vec4<bool>(true, true, true, true)))), vec4<bool>(1u != max(23437u, _wgslsmith_mult_u32(var_0.x, 0u)), true, true, !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    let var_3 = var_2.x;
    var var_4 = _wgslsmith_mod_u32(4294967295u, ~(0u >> (0u % 32u)));
    var var_5 = 951f;
    var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)), u_input.a), max(min(_wgslsmith_clamp_u32(var_0.x, u_input.b, var_0.x), ~60760u), u_input.b)), func_4(!(!(!vec4<bool>(var_2.x, true, var_2.x, false)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) * 704f), ~abs(~u_input.a), ~min(_wgslsmith_mod_i32(1i, -80932i), 1i));
}

