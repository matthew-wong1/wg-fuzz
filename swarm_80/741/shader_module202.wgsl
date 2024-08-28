struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~4294967295u), ~(~(vec2<u32>(26895u, 1u) >> (vec2<u32>(329u, arg_0) % vec2<u32>(32u))))), all(vec4<bool>(false, true, _wgslsmith_f_op_f32(-var_0.x) < var_0.x, false)), -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), firstTrailingBit(vec2<i32>(u_input.d.x, u_input.d.x)))), ~abs(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, arg_0), vec2<u32>(78256u, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1197u), vec2<u32>(0u, 58481u)))), -2037f);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-302f, 856f, var_0.x)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 857f, _wgslsmith_f_op_f32(-var_1.e)))), vec3<bool>(true, all(!vec4<bool>(var_1.b, false, var_1.b, var_1.b)), var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_f_op_f32(round(-525f)), 430f)));
    var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(~(~u_input.a), u_input.c), 1u), any(!select(vec3<bool>(var_1.b, true, false), vec3<bool>(false, true, var_1.b), true)), u_input.d.x, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, var_1.d.x, 63780u), firstTrailingBit(4294967295u)), vec2<u32>(2448u, arg_0)) >> (vec2<u32>(min(32312u, u_input.c), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.x, u_input.b, arg_0), vec3<u32>(36305u, u_input.c, u_input.a))) % vec2<u32>(32u)), var_0.x);
    let var_3 = vec2<u32>(~(~(~67963u >> (1u % 32u))), abs(firstTrailingBit(1u)));
    return ~reverseBits(-(i32(-1i) * -32602i));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = ~(-922i);
    return all(select(!(!(!vec2<bool>(true, arg_0))), vec2<bool>(func_3(4294967295u) > ~(-17943i), !any(vec2<bool>(true, arg_0))), vec2<bool>(all(vec3<bool>(arg_0, true, arg_0)), true)));
}

fn func_1() -> Struct_2 {
    var var_0 = select(false, (-max(u_input.d.x, u_input.d.x) <= -1i) | !func_2(true), !all(vec2<bool>(true, all(vec2<bool>(true, true)))));
    var_0 = _wgslsmith_sub_u32(countOneBits(17696u), 1u) < _wgslsmith_div_u32(firstLeadingBit(max(u_input.c, firstLeadingBit(u_input.b))), _wgslsmith_add_u32(u_input.b, u_input.b));
    let var_1 = -vec4<i32>(u_input.d.x, func_3(~u_input.b | firstLeadingBit(u_input.a)), -(0i ^ _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 0i)), u_input.d.x);
    var_0 = 1325f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(sign(-2287f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1127f)), -1470f))));
    var_0 = false;
    return Struct_2(Struct_1(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(4294967295u, 88351u)), ~vec2<u32>(u_input.c, 67065u) | (vec2<u32>(88506u, u_input.a) & vec2<u32>(u_input.b, 4294967295u))), true, u_input.d.x, firstTrailingBit(vec2<u32>(0u, u_input.a >> (u_input.a % 32u))), -1519f), Struct_1(select(vec2<u32>(~12046u, u_input.a), vec2<u32>(u_input.a >> (1u % 32u), u_input.a), true), all(vec3<bool>(true, true, true)), u_input.d.x, vec2<u32>(u_input.a, firstTrailingBit(_wgslsmith_mod_u32(u_input.b, u_input.a))), -1590f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(611f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1246f)))) + -575f));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> i32 {
    var var_0 = arg_0.a;
    var_0 = Struct_1(var_0.a, false, _wgslsmith_mult_i32(arg_2, ~(-60507i)), _wgslsmith_div_vec2_u32((select(var_0.a, vec2<u32>(arg_0.b.d.x, 76319u), vec2<bool>(arg_0.b.b, false)) & ~vec2<u32>(88564u, arg_1.x)) >> (vec2<u32>(var_0.d.x, ~var_0.a.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(select(0u, 4294967295u, false), countOneBits(arg_1.x)), var_0.a)), 230f);
    var_0 = func_1().b;
    var var_1 = !(!vec3<bool>(!var_0.b, !(var_0.b || false), true));
    let var_2 = var_1.yy;
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<bool>) -> vec2<u32> {
    var var_0 = func_1().a;
    let var_1 = Struct_1(min(_wgslsmith_mult_vec2_u32(var_0.a, var_0.d), vec2<u32>(3229u, _wgslsmith_dot_vec2_u32(var_0.d, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), var_0.d)))), !((u_input.d.x & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -2390i), u_input.d)) != var_0.c), arg_2, func_1().b.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(989f + func_1().b.e))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, -1000f, var_0.b)) - _wgslsmith_f_op_f32(108f + -214f)), _wgslsmith_f_op_f32(abs(-718f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e - -509f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1002f, -1000f, arg_0) - var_2)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(var_0.e, 1631f, -878f, var_1.e)), var_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(exp2(var_2))))));
    let var_4 = var_1;
    return vec2<u32>(var_0.a.x, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2143f - -1318f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(f32(-1f) * -927f), -1794f)), _wgslsmith_sub_i32(func_4(func_1(), _wgslsmith_mod_vec3_u32(vec3<u32>(20668u, u_input.a, 1u), vec3<u32>(u_input.b, u_input.c, u_input.c)), firstLeadingBit(u_input.d.x)), -2147483647i), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), !all(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, -3735i < u_input.d.x)), _wgslsmith_sub_i32(~abs(min(u_input.d.x, 6113i)), ~(2147483647i | u_input.d.x)), vec2<u32>(0u, u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(412f, 1002f, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.e));
}

