struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1762f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<i32>) -> bool {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0.x, -661f))));
    let var_0 = 1370f;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 * arg_0.x)))));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(u_input.c.x, arg_1, arg_1, 28928i)), abs(vec4<i32>(0i, u_input.c.x, u_input.c.x, -16721i) | vec4<i32>(u_input.c.x, -3467i, 2147483647i, arg_2.x)), vec4<i32>(_wgslsmith_sub_i32(arg_2.x, 15540i), -14016i, -u_input.c.x, ~1i)) << (abs(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.b, 68940u), vec4<u32>(u_input.b, 4294967295u, u_input.a, 5287u) | vec4<u32>(u_input.b, 0u, u_input.a, 4294967295u))) % vec4<u32>(32u)), ~(~firstTrailingBit(vec4<i32>(u_input.c.x, -1928i, 0i, 2147483647i) & vec4<i32>(arg_2.x, arg_1, arg_1, arg_2.x))));
    global0 = var_0;
    return false;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1016f - _wgslsmith_f_op_f32(step(560f, -899f))) * -1255f))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), -(~(~countOneBits(vec4<i32>(arg_1, -15113i, arg_1, u_input.c.x)))), !vec2<bool>(false, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, 801f, -767f, 759f)), -2147483647i, abs(u_input.c))));
    var var_1 = var_0.a;
    var var_2 = ~firstLeadingBit(u_input.a & arg_0);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1335f + var_0.a), var_0.b, vec4<i32>(~var_0.c.x, abs(19723i) << (_wgslsmith_clamp_u32(max(u_input.a, arg_0), 40522u, arg_0 << (0u % 32u)) % 32u), -2927i, ~(~var_0.c.x)), var_0.b.xz);
    let var_4 = vec3<bool>(1u > _wgslsmith_mod_u32(max(~1u, ~0u), arg_0 << (1u % 32u)), true, true);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.a) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))))));
    var var_0 = _wgslsmith_sub_u32(0u, abs(abs(u_input.b)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) - 2196f);
    global0 = -630f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(exp2(arg_0.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a * 111f), -1205f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f - 137f))))));
    return ~(u_input.b & ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 48122u), vec2<u32>(u_input.b, 4294967295u)), ~u_input.a));
}

fn func_1() -> vec4<i32> {
    var var_0 = abs(func_4(func_2(19182u, u_input.c.x), 0i, !(true && func_2(0u, 1i).d.x)));
    var var_1 = !vec4<bool>(false, false, all(vec2<bool>(true, true)), false);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(569f + 845f)))), var_1.wxz, reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), abs(vec4<i32>(-1i, u_input.c.x, u_input.c.x, -1i)), vec4<i32>(-1i, -2147483647i, u_input.c.x, -13384i) << (~vec4<u32>(4294967295u, 29815u, u_input.a, u_input.a) % vec4<u32>(32u)))), vec2<bool>(!var_1.x, true));
    var var_3 = var_2.b;
    let var_4 = any(!vec3<bool>(false, !var_3.x & true, _wgslsmith_mod_i32(u_input.c.x, var_2.c.x) != abs(-2383i)));
    return _wgslsmith_div_vec4_i32((_wgslsmith_div_vec4_i32(-var_2.c, var_2.c) | firstTrailingBit(var_2.c | var_2.c)) & vec4<i32>(~(1i << (u_input.b % 32u)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, var_2.c.x), countOneBits(1i)), min(firstLeadingBit(0i), _wgslsmith_mult_i32(1i, u_input.c.x)), -30888i), ~(-vec4<i32>(var_2.c.x, var_2.c.x, -2147483647i, 6087i) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(15219u, u_input.b, u_input.a, 44509u), select(vec4<u32>(u_input.b, u_input.a, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 1u, 9909u), var_3.x), ~vec4<u32>(45922u, 48716u, u_input.a, u_input.b)) % vec4<u32>(32u))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = arg_2;
    global0 = arg_2.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.a));
    let var_1 = arg_1.c.xyx;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))) + arg_2.a), var_0.a);
    return func_2(u_input.a, -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(min(-75231i, -13413i), var_0.c.x), -1i, arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-300f - -352f))), vec3<bool>(true, true, true), func_1(), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1115f)), vec3<bool>(true, true, any(vec3<bool>(true, false, true))), -abs(vec4<i32>(-14423i, u_input.c.x, -29377i, u_input.c.x) ^ vec4<i32>(2147483647i, 2147483647i, u_input.c.x, u_input.c.x)), !vec2<bool>(func_3(vec4<f32>(-1195f, -1000f, 1114f, 1148f), u_input.c.x, vec2<i32>(30456i, -1i)), true)), vec3<u32>(~reverseBits(1u), firstLeadingBit(~u_input.a | ~u_input.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(91784u, 4294967295u), vec2<u32>(u_input.b, u_input.a)) & (u_input.b >> (u_input.a % 32u)), 1u)));
    let var_1 = _wgslsmith_f_op_f32(sign(var_0.a));
    var var_2 = var_0.c.x;
    var var_3 = var_0;
    let var_4 = func_2(~u_input.a, -1i);
    global0 = _wgslsmith_f_op_f32(-var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.a << (~u_input.a % 32u))), _wgslsmith_sub_i32(var_3.c.x, 0i), u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1146f, var_3.a, _wgslsmith_f_op_f32(trunc(1869f))), vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(var_1)), var_3.a), any(select(vec4<bool>(false, false, true, var_0.d.x), vec4<bool>(false, true, var_4.b.x, true), vec4<bool>(var_0.b.x, var_4.d.x, false, true))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -201f, -274f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 645f, -933f))))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(2506u, 0u, u_input.a, 0u), vec4<u32>(u_input.b, 0u, 1u, u_input.b), vec4<u32>(u_input.b, 0u, 26189u, 22187u))), ~(~vec4<u32>(u_input.b, 4294967295u, 0u, u_input.a))), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(37089u, 1u)) << (u_input.b % 32u), select(_wgslsmith_mult_u32(1u, u_input.a), ~401u, any(vec4<bool>(true, var_4.d.x, var_0.d.x, var_3.b.x))), u_input.a)));
}

