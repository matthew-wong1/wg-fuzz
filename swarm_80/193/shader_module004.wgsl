struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32) -> bool {
    var var_0 = arg_0.a.yzz;
    var_0 = abs(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(62004u, var_0.x, arg_0.a.x), var_0.x, 11073u), ~arg_0.a.yxx));
    return all(vec2<bool>(true, true));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = false;
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(min(countOneBits(4294967295u), _wgslsmith_div_u32(4294967295u, 20861u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(43687u, 14950u, 1u, 0u)) << (1u % 32u)), 23826u);
    let var_2 = Struct_1(-1056f, arg_2);
    let var_3 = u_input.a;
    var var_4 = select(select(!vec3<bool>(var_0, func_3(Struct_3(vec4<u32>(var_1, var_1, 9495u, var_1), vec2<i32>(11309i, -29764i), var_2), vec4<i32>(-2147483647i, -1i, 1i, arg_1), 1937f), arg_0 & false), select(vec3<bool>(func_3(Struct_3(vec4<u32>(45133u, var_1, var_1, var_1), vec2<i32>(var_3, arg_1), Struct_1(506f, var_2.a)), vec4<i32>(62038i, 1i, var_3, arg_1), var_2.a), any(vec4<bool>(false, var_0, false, arg_0)), func_3(Struct_3(vec4<u32>(var_1, var_1, 4294967295u, 0u), vec2<i32>(u_input.a, 6732i), var_2), vec4<i32>(2147483647i, arg_3.x, arg_1, 38989i), 1082f)), vec3<bool>(true, select(var_0, arg_0, var_0), any(vec3<bool>(arg_0, false, true))), vec3<bool>(true, true, all(vec4<bool>(true, var_0, arg_0, var_0)))), !(!any(vec3<bool>(var_0, arg_0, false)))), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, var_0, true)), vec3<bool>(all(vec3<bool>(false, arg_0, arg_0)), all(vec4<bool>(var_0, true, var_0, var_0)), func_3(Struct_3(vec4<u32>(1u, var_1, 69774u, 23837u), arg_3, var_2), vec4<i32>(273i, arg_3.x, -2728i, arg_1), 284f)), arg_3.x < _wgslsmith_mult_i32(arg_1, -25090i)), select(!(!(!vec3<bool>(false, false, arg_0))), vec3<bool>(all(select(vec2<bool>(false, var_0), vec2<bool>(var_0, arg_0), vec2<bool>(false, arg_0))), var_0, !var_0), false));
    return _wgslsmith_add_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(var_1, var_1, var_1, 0u) & vec4<u32>(35451u, 4294967295u, 98004u, var_1))), vec4<u32>(~30653u, 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 135850u, 0u), abs(vec3<u32>(0u, var_1, var_1))), 1u)) ^ ~(~max(vec4<u32>(1u, 0u, var_1, 8800u) << (vec4<u32>(3684u, var_1, 1u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_1, var_1, 13636u, var_1)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_4(arg_1.c);
    var var_1 = arg_1.a.xx;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(1561f, -1165f)), arg_0.x);
    var var_3 = vec2<i32>(arg_2.x, ~1412i);
    let var_4 = func_2((true & (arg_2.x > var_3.x)) | false, -firstLeadingBit(var_3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.a.a, _wgslsmith_f_op_f32(-var_2.a))))), arg_2).wx ^ ~arg_1.a.xy;
    return arg_1.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5) -> vec3<f32> {
    let var_0 = 0i;
    var var_1 = reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, ~arg_1.b), 1u)) ^ 46294u;
    var var_2 = arg_1;
    var var_3 = Struct_2(vec4<bool>(true, true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), all(vec3<bool>(false, true, true)))), true), vec2<i32>(~(~0i), -(~u_input.a)) & func_4(_wgslsmith_f_op_vec2_f32(floor(arg_0.wy)), Struct_3(func_2(false, -30613i, arg_0.x, vec2<i32>(var_0, 3142i)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_0, var_0)), Struct_1(328f, arg_0.x)), vec2<i32>(1i, -2147483647i)), Struct_1(_wgslsmith_f_op_f32(-arg_0.x), 1f));
    let var_4 = arg_1.a.yy;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xyz * vec3<f32>(-1403f, arg_0.x, -1381f))))) * arg_0.xwz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(f32(-1f) * -831f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2037f - -111f), 1155f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-581f, _wgslsmith_f_op_f32(267f + -1000f))), _wgslsmith_f_op_f32(-1017f + _wgslsmith_div_f32(-1031f, -1725f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(707f, 571f, var_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(505f, -1390f, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-154f, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -761f, var_1.x)), true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, -507f, 1361f) - vec3<f32>(913f, -897f, 1000f))) * _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, var_1.x, var_1.x, -108f)), Struct_5(vec4<u32>(38484u, 4294967295u, 53085u, 26840u), 6010u))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -498f, var_1.x) - vec3<f32>(1017f, var_2.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1327f, var_2.x, -321f)))))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, 1738f, var_1.x));
    let var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(var_0, 56736i), ~vec2<i32>(~(var_0 >> (0u % 32u)), 1i));
    var var_5 = 30778i;
    var var_6 = all(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -1283f)) <= _wgslsmith_f_op_f32(-449f * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -868f)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~12130u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 80591u), select(vec4<u32>(4294967295u, 9664u, 4294967295u, 0u), vec4<u32>(37089u, 21576u, 1u, 6018u), false)), _wgslsmith_mod_u32(1u, 40763u) ^ _wgslsmith_clamp_u32(4294967295u, 0u, 0u)));
}

