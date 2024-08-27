struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> vec2<i32> {
    var var_0 = vec3<bool>(true, select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(886f)) * _wgslsmith_f_op_f32(162f + -242f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-996f)), -738f), arg_3, any(select(vec4<bool>(arg_3, arg_3, arg_3, false), select(vec4<bool>(false, arg_3, arg_3, true), vec4<bool>(false, arg_3, arg_3, arg_3), true), true))), any(select(!vec3<bool>(arg_3, true, false), !(!vec3<bool>(true, arg_3, arg_3)), any(vec4<bool>(true, arg_3, arg_3, false)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-927f, -214f, true)), _wgslsmith_f_op_f32(min(-357f, -264f)), _wgslsmith_f_op_f32(457f * -942f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, 1382f, -404f)))), !arg_3))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f * var_1.x), -397f, var_1.x)) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, -461f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-299f)) - _wgslsmith_f_op_f32(select(856f, 938f, arg_3))), var_1.x, var_1.x)));
    let var_3 = ~vec2<u32>(~53677u, arg_2.x);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1765f)) + _wgslsmith_f_op_f32(var_2.x - var_1.x)), var_1.x, _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -610f), any(vec3<bool>(arg_3, arg_3, false))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1084f * 458f), _wgslsmith_f_op_f32(608f * var_2.x), _wgslsmith_f_op_f32(174f + var_2.x)))));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(u_input.b, 0i)), -arg_0), select(arg_0, vec2<i32>(arg_0.x, ~_wgslsmith_sub_i32(-2147483647i, u_input.b)), !var_0.zz));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(832f, -779f, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~arg_0.c, -1i), 1i), select(vec2<u32>(4294967295u << (arg_0.d.x % 32u), arg_0.d.x ^ arg_0.d.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x), vec4<u32>(92204u, arg_0.d.x, 4294967295u, 3212u)), arg_0.d.x), -u_input.a <= arg_0.c)), arg_0.d.x, vec2<u32>(~arg_0.d.x << (countOneBits(~1u) % 32u), arg_0.d.x));
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 321f)) * _wgslsmith_div_f32(var_0.a.b, -1000f))), _wgslsmith_add_u32(~0u, arg_0.d.x) != var_0.c.x)), _wgslsmith_dot_vec2_i32(func_3(vec2<i32>(i32(-1i) * -2147483647i, 0i), ~abs(arg_0.d.x), ~vec3<u32>(arg_0.d.x, 1u, arg_0.d.x), !all(vec3<bool>(true, true, true))), ~_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(45280i, var_0.a.c)), abs(vec2<i32>(1i, var_0.a.c)))), arg_0.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = func_2(Struct_1(-850f, arg_1.x, _wgslsmith_mult_i32(~u_input.a, 2147483647i), arg_2.yx));
    let var_1 = var_0;
    var var_2 = select(_wgslsmith_mod_i32(func_3(vec2<i32>(var_1.c, 1i), 1u, vec3<u32>(var_1.d.x, 4294967295u, arg_2.x), true).x, 2147483647i) > -var_0.c, true, false);
    let var_3 = arg_1.x;
    var var_4 = Struct_2(var_0, ~_wgslsmith_dot_vec4_u32(max(abs(vec4<u32>(var_1.d.x, var_1.d.x, arg_2.x, var_0.d.x)), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, var_0.d.x) & vec4<u32>(var_1.d.x, arg_0.x, 1u, 1u)), select(vec4<u32>(arg_2.x, 9322u, 1964u, 1u), ~vec4<u32>(arg_2.x, var_1.d.x, 27566u, 120u), true)), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(28016u, 1u), var_0.d)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec3<u32>(~_wgslsmith_mod_u32(34569u, 11106u), firstTrailingBit(9297u) & 4294967295u, ~(~57251u)) << (vec3<u32>(~func_1(vec3<u32>(1u, 5090u, 41449u), vec2<f32>(-1000f, -272f), vec3<u32>(1u, 0u, 115169u)), ~select(31540u, 4294967295u, false), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(52014u, 4294967295u))) % vec3<u32>(32u)));
    var var_1 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(true, true, false, false)))), true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1104f * _wgslsmith_f_op_f32(f32(-1f) * -1198f)) - 754f);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1057f, -1074f, 1143f) - vec3<f32>(var_2, 1292f, 1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2628f, var_2, -155f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, var_2), vec3<f32>(-739f, var_2, var_2))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(861f, var_2, var_2))))));
    var_1 = !(!vec3<bool>(!var_1.x && var_1.x, any(!vec3<bool>(var_1.x, true, var_1.x)), !(var_0.x < 59623u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-813f, -1140f, var_2, -353f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1254f, var_2, 1533f) - vec4<f32>(-986f, var_3.x, var_3.x, var_3.x)), vec4<bool>(var_1.x, false, true, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1009f, var_2, -1127f, 481f) * vec4<f32>(var_2, var_2, 231f, var_2))), var_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_3.x) - _wgslsmith_f_op_f32(trunc(-344f))), 800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
}

