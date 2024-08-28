struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec4<i32> {
    let var_0 = 2147483647i;
    var var_1 = u_input.a.xz;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(min(arg_0.yxz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.xww, _wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, arg_0.x, -1435f))), vec3<f32>(-333f, _wgslsmith_f_op_f32(sign(-798f)), _wgslsmith_f_op_f32(112f - arg_0.x)), select(vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, arg_1)))))));
    var_1 = _wgslsmith_div_vec2_u32(u_input.a.yy, _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(1u, var_1.x)), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 84230u), 1u)) << (u_input.a.yy % vec2<u32>(32u)));
    var var_3 = !arg_1;
    return vec4<i32>(-_wgslsmith_div_i32(~(-28958i), reverseBits(var_0 & 3050i)), -u_input.b, -10346i, -21058i);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(max(-9743i, 1i), reverseBits(u_input.b), max(0i, -64325i), arg_0.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, arg_0.x, arg_0.x, 9740i), vec4<i32>(-1i, arg_0.x, 1i, 35225i))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, 42419i, -1307i), min(vec4<i32>(21620i, 2147483647i, 74944i, u_input.b), vec4<i32>(u_input.b, 1i, -2147483647i, -39746i)), true), ~func_3(vec4<f32>(382f, -2242f, 410f, -1895f), false))) | _wgslsmith_mult_vec4_i32(select(max(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 28261i), -vec4<i32>(u_input.b, 2147483647i, -29850i, 40177i)), select(vec4<i32>(u_input.b, 2147483647i, arg_0.x, u_input.b), -vec4<i32>(u_input.b, u_input.b, arg_0.x, -1i), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, true, any(vec2<bool>(false, false)))), countOneBits(-vec4<i32>(-2147483647i, -31393i, 42255i, -8066i) ^ vec4<i32>(u_input.b, u_input.b, arg_0.x, arg_0.x)));
    let var_1 = vec3<u32>(~u_input.a.x, select(22588u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(1u, 20497u)), 0u), true || any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1326f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(186f + -1000f), -595f)))) + _wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)))));
    var var_3 = Struct_1(-select(-var_0.yz, ~(~vec2<i32>(0i, 1i)), true), _wgslsmith_div_f32(var_2, 103f), 1143f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f * var_2) - _wgslsmith_f_op_f32(-1543f * 769f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(-var_2)))))), select(~vec4<u32>(1u, 0u & u_input.a.x, ~91557u, _wgslsmith_mult_u32(1u, u_input.a.x)), min(~vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, u_input.a.x) >> (max(vec4<u32>(var_1.x, var_1.x, 4294967295u, 22942u), vec4<u32>(12127u, u_input.a.x, 0u, 28075u)) % vec4<u32>(32u)), ~(vec4<u32>(0u, 4294967295u, u_input.a.x, var_1.x) & vec4<u32>(0u, 1u, u_input.a.x, 4294967295u))), select(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, false), vec4<bool>(true, true, any(vec2<bool>(true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))));
    var_3 = Struct_1(var_0.xx << (vec2<u32>(~31887u, 32016u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-387f))) + _wgslsmith_f_op_f32(f32(-1f) * -395f)), -519f, var_3.b, ~(~firstLeadingBit(var_3.e)));
    return max(~(~1u), 1u);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32) -> vec3<bool> {
    let var_0 = (all(vec4<bool>(arg_0, false, arg_0 & true, arg_0 && true)) == true) && false;
    let var_1 = _wgslsmith_f_op_f32(abs(arg_2));
    var var_2 = arg_1;
    var var_3 = func_2(firstTrailingBit(vec3<i32>(1i, u_input.b, i32(-1i) * -2147483647i) & (vec3<i32>(u_input.b, 22645i, 2147483647i) | vec3<i32>(27816i, -13220i, 2542i))));
    var_2 = 39063i;
    return select(!(!vec3<bool>(!var_0, true, false)), !vec3<bool>(_wgslsmith_f_op_f32(-var_1) > -1405f, !arg_0, any(select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, false, false), vec3<bool>(true, true, var_0)))), !vec3<bool>(false, all(select(vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, true, arg_0, false), true)), !all(vec4<bool>(arg_0, false, false, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(vec3<bool>(!all(vec4<bool>(false, true, false, true)), false, true)), -10512i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f - 2000f) - 1317f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-673f - 872f)))))));
    var var_1 = Struct_2(Struct_1(vec2<i32>(i32(-1i) * -2147483647i, (1i >> (u_input.a.x % 32u)) | (i32(-1i) * -31486i)), _wgslsmith_f_op_f32(f32(-1f) * -1317f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-923f, -1245f), _wgslsmith_f_op_f32(1165f - -1082f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -810f) - _wgslsmith_f_op_f32(trunc(-646f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1472f, 368f) - _wgslsmith_f_op_f32(max(-1041f, 377f))))), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(55113u, 6049u) & u_input.a.xx, ~vec2<u32>(71935u, 797u)), max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 124918u), u_input.a.xz), u_input.a.x), min(u_input.a.x, 4294967295u) << (_wgslsmith_add_u32(u_input.a.x, 0u) % 32u))), Struct_1(vec2<i32>(u_input.b, 2575i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1205f * _wgslsmith_f_op_f32(trunc(-1192f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(step(-110f, 1836f))), false)), 2342f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) - _wgslsmith_f_op_f32(f32(-1f) * -1093f)))), ~select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 87970u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), any(var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(reverseBits(-(u_input.b | 0i)), ~u_input.b, -29555i, u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a.d)), _wgslsmith_div_f32(1000f, var_1.b.d)))));
}

