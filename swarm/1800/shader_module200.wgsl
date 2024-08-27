struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: array<u32, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80639u, 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)]) & select(vec4<u32>(global1[_wgslsmith_index_u32(46973u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21814u, 23u)], 23u)], 23u)], 33333u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42149u, 23u)], 23u)], 130405u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32288u, 23u)], 23u)]), arg_0.a), vec4<u32>(6481u >> (global1[_wgslsmith_index_u32(30957u, 23u)] % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2365u, 23u)], 23u)], 23u)], 23u)], 0u)), ~(vec4<u32>(global1[_wgslsmith_index_u32(1u, 23u)], 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(53277u, 4294967295u, global1[_wgslsmith_index_u32(1458u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(92330u, 23u)], 23u)], 23u)], 37425u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)])) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46626u, 23u)], 23u)], 19515u) & vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9251u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21183u, 23u)], 23u)], 4294967295u, 0u)), abs(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26544u, 23u)], 23u)], 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(17363u, 23u)]))) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(13339u, 23u)])), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40520u, 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16391u, 23u)], 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82227u, 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 0u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57416u, 23u)], 23u)], global1[_wgslsmith_index_u32(16760u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48810u, 23u)], 23u)], 27563u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17069u, 23u)], 23u)], 23u)])))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(1514u, 23u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(60743u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 32808u) & vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10078u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63311u, 23u)], 23u)], 23u)], 4443u), select(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16176u, 23u)], 23u)], 23u)], 87043u), vec3<u32>(15928u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24231u, 23u)], 23u)], 23u)]), vec3<bool>(true, false, false))), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 23u)], 0u, global1[_wgslsmith_index_u32(50855u, 23u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(63793u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31388u, 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], 23u)]), vec3<u32>(55422u, global1[_wgslsmith_index_u32(20797u, 23u)], 32537u)))), ~(~vec4<u32>(34542u, global1[_wgslsmith_index_u32(0u, 23u)], 1u, 53374u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1255f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f - 307f) - _wgslsmith_f_op_f32(f32(-1f) * -3034f)), _wgslsmith_f_op_f32(-363f - 948f))));
    var var_2 = ~(~(~u_input.a));
    let var_3 = Struct_4(Struct_2(-618f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 330f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-821f, var_1.x, 1140f, 1000f), vec4<f32>(var_1.x, var_1.x, 1159f, -397f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -321f, var_1.x, 1168f), vec4<f32>(505f, var_1.x, 2691f, 105f)))))), !select(vec2<bool>(true, true), !select(vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_0.a), false), !vec2<bool>(false, arg_0.a)), abs(~(-2147483647i)));
    let var_4 = var_3.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1002f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-228f + var_4.b.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -139f, arg_0.a))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(!arg_1.x, 18682u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(629f)))), _wgslsmith_f_op_f32(select(762f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(569f * -1244f), -335f)), !(!arg_1.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1998f)) + 355f), _wgslsmith_f_op_f32(f32(-1f) * -531f), -845f, _wgslsmith_f_op_f32(-868f - _wgslsmith_f_op_f32(231f - -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(round(-1889f)), _wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-441f, 1221f) + 167f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-590f, -1344f, arg_1.x)), _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.x, vec2<i32>(29025i, u_input.a)))))))), firstLeadingBit(~max(24157i, 1i)));
    let var_1 = Struct_3(!(!(-32935i != u_input.a)), _wgslsmith_add_u32(~(~(arg_0 >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33358u, 23u)], 23u)] % 32u))), 49875u), _wgslsmith_f_op_f32(func_3(Struct_1(!var_0.a, _wgslsmith_add_vec2_i32(max(vec2<i32>(var_0.e, u_input.a), vec2<i32>(0i, u_input.a)), countOneBits(vec2<i32>(9318i, var_0.e)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, 583f)) + var_0.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1334f)))), 338f, _wgslsmith_f_op_f32(floor(384f))), u_input.a);
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~arg_0, _wgslsmith_sub_u32(7749u, global1[_wgslsmith_index_u32(arg_0, 23u)]), ~_wgslsmith_add_u32(22965u, global1[_wgslsmith_index_u32(arg_0, 23u)]), ~33257u), vec4<u32>(~1u, _wgslsmith_div_u32(min(min(0u, 64204u), 35797u), select(0u, global1[_wgslsmith_index_u32(1u, 23u)], true) >> (48717u % 32u)), ~(~1u), var_1.b), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, 1u, 75422u, 202u) >> (vec4<u32>(110266u, 4294967295u, 19101u, arg_0) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(64126u, 23u)], 67758u, 1225u), vec4<u32>(1u, 4294967295u, 18427u, var_0.b), vec4<u32>(4294967295u, arg_0, 4294967295u, arg_0))), vec4<u32>(global1[_wgslsmith_index_u32(var_0.b, 23u)], _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(60863u, 4u)], vec2<u32>(arg_0, arg_0)) & _wgslsmith_mod_u32(arg_0, 0u), 4294967295u, 52235u)));
    global0 = array<vec2<u32>, 4>();
    global0 = array<vec2<u32>, 4>();
    return Struct_3(var_1.a, abs(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(9059u, var_1.b), ~1u), 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-761f * -1748f))) - var_1.d.x), _wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)) * _wgslsmith_f_op_vec4_f32(-var_0.d))), var_0.e);
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = ~arg_0.b;
    var var_1 = -1364f;
    global0 = array<vec2<u32>, 4>();
    global1 = array<u32, 23>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(arg_0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.d.x, -693f), _wgslsmith_f_op_f32(-1482f + arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x), -607f) * arg_0.d)));
    return vec3<u32>(~arg_0.b, arg_0.b ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(~arg_0.b, ~0u), var_0), 50140u);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = func_2(firstLeadingBit(4294967295u ^ arg_2.x), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_1 = any(!vec3<bool>(!(808f < var_0.c), var_0.a, any(!vec2<bool>(var_0.a, false))));
    let var_2 = 1000f;
    let var_3 = !(!vec4<bool>(true, var_1, false, true));
    var var_4 = -3586i;
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 23u)];
    var var_1 = 0u << (_wgslsmith_mod_u32(max(reverseBits(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(21343u, 23u)], arg_0.b)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u), 23u)]), global1[_wgslsmith_index_u32(1u, 23u)]) % 32u);
    var var_2 = select(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), arg_0.a)), vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(arg_0.a, arg_0.a, true)), !arg_0.a & (arg_1.b.x == -809f))), !select(!vec2<bool>(false, arg_0.a), select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, false), any(vec3<bool>(true, false, arg_0.a))), func_5(vec3<u32>(arg_0.b, 81038u, arg_0.b), ~vec4<i32>(arg_0.e, arg_0.e, arg_0.e, arg_0.e), ~vec3<u32>(4294967295u, arg_0.b, arg_0.b)).a), !(!vec2<bool>(false, !arg_0.a)));
    global1 = array<u32, 23>();
    var_2 = !(!(!vec2<bool>(all(vec2<bool>(var_2.x, var_2.x)), all(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)))));
    return Struct_2(-299f, arg_0.d);
}

fn func_1(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(17578u, _wgslsmith_dot_vec4_u32(vec4<u32>(25621u, 34262u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(46354u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], 23247u, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25206u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(73853u, 23u)]), 23u)], ~global1[_wgslsmith_index_u32(0u, 23u)])), 0u);
    global1 = array<u32, 23>();
    var var_1 = Struct_4(func_6(func_5(~select(vec3<u32>(var_0, 44567u, var_0), vec3<u32>(0u, 0u, var_0), vec3<bool>(true, false, true)), reverseBits(-vec4<i32>(arg_0, -1i, 37001i, 44472i)), func_4(func_2(0u, vec2<bool>(false, true)))), Struct_2(func_5(vec3<u32>(50287u, 8080u, var_0), -vec4<i32>(-1i, 0i, arg_0, u_input.a), vec3<u32>(global1[_wgslsmith_index_u32(19392u, 23u)], global1[_wgslsmith_index_u32(26831u, 23u)], var_0)).d.x, vec4<f32>(-477f, _wgslsmith_f_op_f32(f32(-1f) * -783f), func_2(global1[_wgslsmith_index_u32(51309u, 23u)], vec2<bool>(false, false)).d.x, _wgslsmith_f_op_f32(step(-617f, 1244f)))), 1f), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec4<bool>(false, true, false, true)))), vec2<bool>(false, true & all(vec4<bool>(true, false, false, false))), true), 17054i >> (1u % 32u));
    var var_2 = var_1.b.x;
    let var_3 = var_1.b.x;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + _wgslsmith_f_op_f32(max(1203f, var_1.a.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(firstLeadingBit(~0u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(96751u, 4294967295u)), 23u)], _wgslsmith_dot_vec4_u32(vec4<u32>(12597u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(46510u, 23u)], global1[_wgslsmith_index_u32(35952u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68914u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8745u, 23u)], 23u)], 26615u)), 4294967295u, 23682u), abs(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75591u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(1u, 23u)], 0u)))), 23u)]);
    var_0 = ((global0[_wgslsmith_index_u32(~4294967295u, 4u)] ^ ~(~vec2<u32>(4294967295u, var_0.x))) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u & var_0.x, global1[_wgslsmith_index_u32(~4294967295u, 23u)]), max(vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)]), ~global0[_wgslsmith_index_u32(1u, 4u)])) % vec2<u32>(32u))) << (vec2<u32>(~select(reverseBits(51423u), abs(20293u), -2147483647i > u_input.a), reverseBits(_wgslsmith_mod_u32(75021u, var_0.x)) ^ 0u) % vec2<u32>(32u));
    global1 = array<u32, 23>();
    let var_1 = 46723u;
    global1 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(2147483647i)), vec2<f32>(741f, _wgslsmith_f_op_f32(-1109f + _wgslsmith_f_op_f32(trunc(-164f)))))), vec2<u32>(~var_1, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(var_0.x, 23u)] << (50364u % 32u), max(1u, 23237u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(265f, -1726f, -328f, -972f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(475f, 1056f, -162f, 3206f) - _wgslsmith_div_vec4_f32(vec4<f32>(-2139f, -1060f, -758f, 759f), vec4<f32>(-536f, 920f, 516f, -217f)))))), vec3<u32>(var_1, var_0.x, 82907u), func_2(var_0.x, select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, true))).b);
}

