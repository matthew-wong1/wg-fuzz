struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b ^ _wgslsmith_add_u32(u_input.d.x, 0u), ~min(countOneBits(0u), 35482u)), select(~(~vec2<u32>(u_input.d.x, 25144u)), u_input.d.yy & select(vec2<u32>(55933u, 56266u), min(u_input.d.yz, u_input.d.zy), u_input.d.x < u_input.b), vec2<bool>(true, true)));
    var var_1 = 54925u == u_input.b;
    var_1 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, u_input.a.x < u_input.c.x, u_input.b > u_input.b), false));
    var_1 = false;
    var var_2 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(1584f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(407f * 846f)))), -633f), -abs(1i) <= abs(~(-10167i ^ u_input.e)), u_input.e);
    return vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -152f, _wgslsmith_f_op_f32(select(-2179f, -762f, all(vec3<bool>(true, true, var_2.b)) | any(select(vec4<bool>(var_2.b, true, var_2.b, var_2.b), vec4<bool>(false, var_2.b, false, true), false)))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), any(vec3<bool>(false, true, all(vec4<bool>(true, true, true, true)))), min(-u_input.e >> (_wgslsmith_mod_u32(u_input.d.x, u_input.b) % 32u), 2147483647i) | reverseBits(1i));
    let var_1 = 1447f;
    let var_2 = Struct_4(~(~u_input.b));
    let var_3 = abs(vec3<i32>(-2147483647i, var_0.c, ~0i));
    var var_4 = vec4<bool>(select(any(select(select(vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, false, false)), !vec3<bool>(var_0.b, false, true), !var_0.b)), var_0.b, true), any(!(!vec4<bool>(false, var_0.b, true, var_0.b))), true, var_0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-847f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-865f * 1915f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1120f, -739f) - vec2<f32>(-593f, -1498f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, -1711f, -339f, -893f))))))) - 1000f);
    let var_1 = arg_0.a.x;
    let var_2 = arg_0.a.wzy;
    var var_3 = -_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-11337i, u_input.c.x, -2147483647i, u_input.c.x), u_input.a, u_input.a), ~u_input.a)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(992f, _wgslsmith_f_op_f32(step(932f, -635f)), 1841f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(166f, 993f, -1542f) * vec3<f32>(995f, -1512f, -1201f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(504f, -1029f, 1754f), vec3<f32>(1108f, -1125f, -107f), var_1))))), true, -u_input.c.x);
    return Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.a.x, 1000f))), _wgslsmith_f_op_f32(-var_4.a.x), var_4.a.x), !var_1, var_4.c), u_input.d);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_1.a;
    var var_1 = 38369i;
    var_1 = ~_wgslsmith_div_i32(-arg_0, 1i);
    var_1 = -(~(~13695i));
    let var_2 = vec3<u32>(55u, _wgslsmith_add_u32(1u, (_wgslsmith_dot_vec4_u32(arg_2, arg_2) ^ u_input.b) << (~_wgslsmith_div_u32(arg_2.x, arg_2.x) % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(min(vec2<u32>(arg_2.x, arg_1.b.x), u_input.d.zz), vec2<u32>(arg_1.b.x, 4450u), vec2<bool>(var_0.b, arg_1.a.b)), func_1(Struct_3(vec4<bool>(var_0.b, var_0.b, false, false)), Struct_4(19768u)).b.zz), arg_1.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(44557u, 8501u), arg_1.b.xz)));
    return -533f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-703f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(0i, func_1(Struct_3(vec4<bool>(false, true, false, true)), Struct_4(u_input.b)), abs(vec4<u32>(u_input.b, 6396u, u_input.d.x, 1u)))), _wgslsmith_f_op_f32(f32(-1f) * -1361f)) + 180f)));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))), !select(false, true, true) || true), select(vec2<bool>(_wgslsmith_mult_i32(u_input.c.x, 1i) < _wgslsmith_mod_i32(u_input.c.x, 19449i), true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), false), vec2<bool>(true, true), select(true, u_input.e <= 2147483647i, select(true, false, false))), select(func_1(Struct_3(vec4<bool>(false, false, true, true)), Struct_4(u_input.d.x)).a.b, true, select(false, true, false))));
    var var_2 = 1095f;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, _wgslsmith_f_op_f32(-660f + _wgslsmith_f_op_f32(sign(-603f))), -808f, -470f) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 1098f))), _wgslsmith_f_op_f32(func_4(-u_input.e, Struct_2(Struct_1(vec3<f32>(-1250f, -326f, 972f), true, u_input.a.x), u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 9491u, u_input.d.x, u_input.d.x), vec4<u32>(42454u, 32809u, u_input.d.x, 8100u), vec4<u32>(u_input.d.x, 4294967295u, u_input.b, 1u)))), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-145f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(934f, 1175f, 965f, -404f)) - vec4<f32>(_wgslsmith_f_op_f32(-463f * -278f), _wgslsmith_f_op_f32(-1677f * 1565f), _wgslsmith_f_op_f32(1125f + -803f), _wgslsmith_f_op_f32(237f - -1648f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_3.x)) * 1022f);
    let var_4 = !select(select(select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false), var_1.x)), select(vec2<bool>(true, true), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false)), vec2<bool>(true, true)), !vec2<bool>(var_1.x, true)), select(!(!vec2<bool>(false, var_1.x)), vec2<bool>(all(vec4<bool>(false, var_1.x, true, true)), false), !(u_input.d.x <= 0u)), true);
    var var_5 = Struct_3(select(select(vec4<bool>(var_1.x, var_4.x, 117f <= var_3.x, true), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), !vec4<bool>(true, var_1.x, false, var_1.x), var_4.x), select(var_4.x || var_1.x, select(var_4.x, false, var_1.x), var_1.x)), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, var_4.x), vec4<bool>(true, var_1.x, true, true))), vec4<bool>(true, var_1.x, u_input.e == 2147483647i, true)));
    let var_6 = func_1(Struct_3(select(var_5.a, var_5.a, var_5.a)), Struct_4(~_wgslsmith_div_u32(firstLeadingBit(1u), ~14229u)));
    let var_7 = abs(reverseBits(_wgslsmith_clamp_u32(~111987u, _wgslsmith_mult_u32(15172u, u_input.d.x), u_input.b) >> ((_wgslsmith_add_u32(u_input.d.x, var_6.b.x) >> (var_6.b.x % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2255f * var_6.a.a.x) * _wgslsmith_f_op_f32(-var_3.x))), func_1(Struct_3(!(!vec4<bool>(var_1.x, true, var_5.a.x, var_4.x))), Struct_4(~u_input.b)).a.a.yx);
}

