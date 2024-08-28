struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = true;
    var var_1 = arg_0;
    var var_2 = Struct_1(abs(~(-u_input.a.x) ^ -_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -22205i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1294f))), 1863f);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x + var_2.c))), arg_0.a.x, var_2.b)), var_1.b, !(!select(!var_1.c, arg_0.c, vec2<bool>(false, var_0))));
    let var_4 = vec4<u32>(var_3.b, abs(~(~arg_0.b)), min(~(~arg_0.b), 1602u), 0u);
    return select(select(vec3<bool>(true, var_0, arg_0.c.x), vec3<bool>(all(vec4<bool>(false, true, true, false)) && !arg_0.c.x, true, true), select(vec3<bool>(all(vec3<bool>(false, var_1.c.x, false)), true, false), select(vec3<bool>(false, var_0, var_1.c.x), select(vec3<bool>(var_0, true, var_3.c.x), vec3<bool>(var_1.c.x, true, false), false), u_input.a.x > var_2.a), false || (var_3.c.x && var_3.c.x))), vec3<bool>(true, all(select(select(vec4<bool>(arg_0.c.x, false, var_3.c.x, false), vec4<bool>(false, true, true, false), var_1.c.x), vec4<bool>(var_1.c.x, var_0, arg_0.c.x, false), !vec4<bool>(true, true, false, var_1.c.x))), arg_0.c.x), vec3<bool>(false, var_0, var_3.c.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(select(arg_2.a.x, -286f, false)), _wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x))) * vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1592f, -2204f, arg_2.c.x)) + _wgslsmith_f_op_f32(abs(arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) - arg_3))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1268f, arg_3)), arg_3)), _wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, 1225f) * 1000f)), -898f)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -130f, -701f)), vec3<f32>(arg_1.x, 1339f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(380f * 781f), -1629f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(797f, -758f, arg_1.x) * vec3<f32>(arg_1.x, -1638f, 708f))))), ~_wgslsmith_add_u32(arg_0, 28239u), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(all(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), 16833u, !(!var_0.c));
    var var_2 = ~vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a.x) >> (0u % 32u), ~(-34549i)) >> (((countOneBits(vec2<u32>(var_1.b, 7357u)) | ~(~vec2<u32>(2869u, 27948u))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_1.b), vec2<u32>(var_0.b, 41413u)), abs(vec2<u32>(var_0.b, 0u))), ~countOneBits(vec2<u32>(arg_0, var_1.b))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_4(u_input.a, func_3(Struct_2(vec3<f32>(526f, 1041f, 678f), 4294967295u, vec2<bool>(var_0.c.x, false))), var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-300f)))))), var_0.a)), arg_0, var_1.c);
    let var_4 = vec3<bool>(false, var_1.c.x, var_3.c.x);
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -35736i), u_input.a.xy, vec2<i32>(u_input.a.x, var_2.x))), -max(vec2<i32>(0i, var_2.x), vec2<i32>(var_2.x, 1i))), -2147483647i) & 2147483647i;
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(u_input.a, ~u_input.a, (u_input.a << (abs(select(vec3<u32>(0u, 66312u, 31403u), vec3<u32>(51539u, 0u, 1u), vec3<bool>(false, false, false))) % vec3<u32>(32u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_1 = 7944i;
    var var_2 = vec4<i32>(u_input.a.x, (-1i ^ -u_input.a.x) | func_2(~11639u, vec2<f32>(arg_0, -1161f)), var_0.x, countOneBits(~u_input.a.x)) ^ -(~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, var_0.x, 2147483647i), vec4<i32>(-2869i, var_0.x, u_input.a.x, -2147483647i))));
    var var_3 = Struct_1(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(arg_0 + -1405f), -2147483647i > var_0.x)) * arg_0), -860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))));
    var_1 = _wgslsmith_dot_vec3_i32(~(-(~var_2.xxz)), reverseBits(-(var_0 >> (vec3<u32>(114300u, 4294967295u, 72206u) % vec3<u32>(32u)))));
    return any(!vec3<bool>(all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false)), true)) == false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = 117u;
    var var_2 = u_input.a.x;
    var var_3 = select(vec4<bool>(all(vec3<bool>(true, true, func_1(-207f))), false, true, true), select(vec4<bool>(!any(vec2<bool>(false, true)), !(var_1 < var_1), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), func_1(_wgslsmith_div_f32(-587f, -700f))), vec4<bool>(any(vec3<bool>(false, false, false)), -2147483647i <= _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), true, true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), func_1(-1269f)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
    var_0 = var_3.x;
    var_3 = select(!vec4<bool>(func_1(_wgslsmith_f_op_f32(-1272f + 1155f)), false, all(var_3.xxy) || select(var_3.x, false, false), var_3.x), !(!select(vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x), var_3.x)), vec4<bool>(false, var_3.x, var_3.x, var_3.x));
    var var_4 = !select(!vec3<bool>(48614u > var_1, u_input.a.x != 0i, !var_3.x), func_3(Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(340f, 1000f, 491f))), _wgslsmith_dot_vec3_u32(vec3<u32>(8077u, 0u, var_1), vec3<u32>(0u, 72280u, 4294967295u)), select(vec2<bool>(var_3.x, true), vec2<bool>(false, true), vec2<bool>(var_3.x, true)))), vec3<bool>(false, !(var_1 < var_1), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-422f, -1000f, -815f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(358f, -284f, 815f))))))), abs(firstLeadingBit(max(var_1, var_1))) & _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1357u, 4294967295u, 4294967295u, var_1), vec4<u32>(4294967295u, var_1, var_1, var_1)), _wgslsmith_mult_u32(var_1, var_1), 4294967295u), var_1), 1f);
}

