struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    var var_0 = !vec2<bool>(all(select(!vec3<bool>(arg_1.b, true, false), select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.a)), true)), true != select(false, select(false, false, true), true));
    var_0 = !select(select(select(vec2<bool>(false, true), !vec2<bool>(arg_1.b, false), vec2<bool>(false, arg_1.b)), select(select(vec2<bool>(false, arg_1.b), vec2<bool>(true, false), false), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(!var_0.x, false)), vec2<bool>(arg_1.b || select(false, arg_1.a, true), _wgslsmith_div_u32(4294967295u, 39147u) >= _wgslsmith_clamp_u32(83363u, 41696u, 44527u)), all(vec2<bool>(false, arg_1.a)) & true);
    let var_1 = 118104u;
    var_0 = !vec2<bool>(!(false && arg_1.b), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(936f, -105f, 314f, -1570f), vec4<f32>(-1965f, 365f, -1738f, -939f), vec4<bool>(false, true, var_0.x, false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-830f, -600f, -410f, -983f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-417f, 1142f, 261f, 1459f) * vec4<f32>(-1000f, 933f, 872f, -404f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2036f)), var_2.x);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(~(~22504u), Struct_2(any(vec2<bool>(true, false)), true))), _wgslsmith_f_op_f32(func_3(~(7379u | u_input.b), Struct_2(any(vec3<bool>(false, true, false)), true))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1293f - 961f) - _wgslsmith_div_f32(696f, 327f))))));
    var_0 = -1019f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.b, Struct_2(true, 31353u == u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1771f)))), 2969f));
    let var_1 = ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), ~min(vec3<u32>(1u, u_input.b, 1u), vec3<u32>(12770u, u_input.b, 20214u)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 7571u, 61428u), vec3<u32>(0u, u_input.b, u_input.b)) % vec3<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f * _wgslsmith_f_op_f32(step(-854f, _wgslsmith_div_f32(-1005f, 480f))))) - 1000f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) + _wgslsmith_div_f32(662f, 1057f)))) + -1188f));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    let var_0 = select(vec3<bool>(any(vec3<bool>(true, false, true)), false, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, !any(vec3<bool>(true, true, true))));
    let var_1 = ~arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-104f, -233f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -364f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(588f, -500f, 1000f, -203f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1856f, -879f, -890f, 429f) + vec4<f32>(1000f, 103f, -294f, -775f))))));
    var var_3 = Struct_3(_wgslsmith_div_u32(~1u, ~u_input.b) ^ _wgslsmith_div_u32(u_input.b, reverseBits(min(0u, 0u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -1721f)) * _wgslsmith_f_op_f32(-var_2.x)), all(select(var_0.yz, var_0.yz, true)) != !var_0.x, abs(~u_input.a | select(vec4<i32>(-1i, -1i, -32739i, u_input.c), u_input.a, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(467f, var_2.x, var_2.x, -1063f) - var_2), !(!vec4<bool>(var_0.x, true, var_0.x, false))), 960f, var_0, Struct_1(_wgslsmith_f_op_f32(func_3(~0u, Struct_2(!var_0.x, var_0.x))), !(!(true & var_0.x)), u_input.a, var_2, !(!(!vec4<bool>(true, var_0.x, var_0.x, false)))));
    var var_4 = var_3.e.d.x;
    return select(!select(var_0, vec3<bool>(true, all(vec3<bool>(true, var_3.d.x, false)), u_input.a.x <= 2147483647i), all(select(var_3.e.e.wxy, var_3.d, var_3.e.e.x))), var_3.e.e.xxx, select(vec3<bool>(select(var_3.e.e.x, any(var_3.e.e), all(vec4<bool>(var_3.b.b, false, var_0.x, var_3.b.b))), var_0.x, _wgslsmith_div_f32(1695f, 1534f) != var_2.x), select(var_0, vec3<bool>(var_0.x, select(false, var_3.d.x, var_3.b.b), true), _wgslsmith_f_op_f32(sign(var_3.e.d.x)) == 1845f), var_3.e.e.yyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, u_input.c, u_input.a.x) & -4913i, -(~u_input.c)));
    let var_1 = vec3<u32>(23873u, firstLeadingBit(35252u), 64150u) | vec3<u32>(u_input.b, u_input.b, min(max(1u, 59245u | u_input.b), ~31143u));
    let var_2 = Struct_2(var_0.x, !var_0.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-209f, 1943f, var_0.x)) - _wgslsmith_f_op_f32(max(-1165f, -640f)))))), var_0.x, -_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, 1i, u_input.a.x, -48176i)), -vec4<i32>(u_input.c, -73471i, u_input.c, u_input.c) ^ -u_input.a, vec4<i32>(u_input.c, reverseBits(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.c), _wgslsmith_mult_i32(-2147483647i, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1059f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-935f, 396f))))), -1582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f - -151f) * -420f))), vec4<bool>(var_0.x, var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, var_1.x), ~vec4<u32>(var_1.x, 4294967295u, u_input.b, 4294967295u)) > 60498u, !(_wgslsmith_f_op_f32(-1000f * 1130f) < _wgslsmith_f_op_f32(func_3(var_1.x, var_2)))));
    var var_4 = abs(select(firstTrailingBit(vec2<i32>(~29698i, var_3.c.x & u_input.c)), vec2<i32>(var_3.c.x, -u_input.c), vec2<bool>(all(vec2<bool>(false, true)), false)));
    var var_5 = !select(select(vec2<bool>(true, any(var_3.e)), vec2<bool>(var_2.a, true), vec2<bool>(true, true)), select(!vec2<bool>(var_2.a, var_0.x), var_3.e.zy, vec2<bool>(true, true)), false);
    var var_6 = Struct_2(false, var_2.b);
    var_4 = vec2<i32>(-countOneBits(-u_input.c), -(var_3.c.x & -firstTrailingBit(u_input.c)));
    let var_7 = ~(~(vec3<u32>(~31319u, _wgslsmith_mod_u32(var_1.x, 1u), abs(4294967295u)) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(30302u, u_input.b, var_1.x), vec3<u32>(u_input.b, var_1.x, var_1.x)), 13973u, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(20112u, var_3.d.x);
}

