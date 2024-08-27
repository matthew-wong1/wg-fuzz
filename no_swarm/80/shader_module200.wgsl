struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = vec2<u32>(4294967295u, (u_input.b & (reverseBits(u_input.b) | u_input.b)) >> (u_input.b % 32u));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<u32> {
    global0 = any(arg_0.xyz) | arg_2.x;
    global0 = arg_1.a.x < arg_1.a.x;
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, arg_1.b.x, -810f)), vec3<f32>(arg_1.b.x, var_0.b.x, 394f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-977f, var_0.b.x, -404f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1619f, arg_1.b.x, arg_1.b.x), vec3<f32>(956f, -733f, 1000f), arg_0.x)))))));
    let var_2 = var_0;
    return ~(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)))));
}

fn func_4(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = vec3<f32>(-606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f) - -924f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1229f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-271f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(689f, -138f, false)))))));
    global1 = select(vec2<bool>(!(!global1.x) || false, any(select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, true, false), true), !vec3<bool>(global1.x, false, global1.x), false))), select(!vec2<bool>(global1.x, any(vec2<bool>(false, true))), select(vec2<bool>(any(vec3<bool>(true, global1.x, global1.x)), true), !select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), global1.x), !all(vec2<bool>(global1.x, true))), global1.x), !select(!(!vec2<bool>(false, global1.x)), !(!vec2<bool>(true, global1.x)), any(select(vec3<bool>(true, true, true), vec3<bool>(global1.x, true, true), global1.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(298f, var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))));
    global0 = !all(select(select(!vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, false), global1.x)), !(!vec3<bool>(global1.x, false, true)), true));
    let var_1 = -u_input.a | -u_input.a;
    return _wgslsmith_add_u32(arg_0 >> ((arg_0 | 1u) % 32u), firstTrailingBit(11733u >> (arg_1 % 32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_i32(u_input.a.x, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1211f, -214f), _wgslsmith_div_vec2_f32(vec2<f32>(632f, -680f), vec2<f32>(1501f, 1000f)), global1.x))), -(~(~u_input.a)))));
    let var_1 = -1278f;
    global0 = !(!(!global1.x));
    var var_2 = vec3<i32>(15034i, u_input.a.x, _wgslsmith_div_i32(min(-2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (u_input.b % 32u)), -_wgslsmith_add_i32(i32(-1i) * -56752i, 4031i & u_input.a.x)));
    var var_3 = func_4(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(func_3(vec4<bool>(false, false, false, global1.x), Struct_1(vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, var_2.x), var_0), vec3<bool>(global1.x, true, global1.x)), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), u_input.b), u_input.b, false), u_input.b);
    return Struct_1(-vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-11975i, 1i, u_input.a.x, 41502i), abs(vec4<i32>(-5749i, var_2.x, 1i, var_2.x))), select(-2147483647i, i32(-1i) * -7223i, all(vec3<bool>(global1.x, global1.x, false))), 0i, abs(abs(u_input.a.x))), vec2<f32>(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * var_1)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> bool {
    return _wgslsmith_f_op_f32(-1554f + arg_0.b.x) == arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x);
    global1 = select(vec2<bool>(false, false), vec2<bool>(func_5(func_1(), u_input.a.x), (true && (true || var_0)) & true), func_5(Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(7726i, -15547i, var_1.x, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 4046i, -42569i), vec4<i32>(1i, 38951i, u_input.a.x, var_1.x))), vec2<f32>(-1810f, _wgslsmith_f_op_f32(round(1158f)))), -var_1.x));
    global1 = select(vec2<bool>(true, true), select(vec2<bool>(any(!vec3<bool>(global1.x, var_0, var_0)), global1.x), vec2<bool>(true, !(global1.x || false)), true), all(select(!vec2<bool>(var_0, global1.x), !vec2<bool>(var_0, false), vec2<bool>(global1.x, global1.x || global1.x))));
    var var_2 = Struct_1(_wgslsmith_sub_vec4_i32(select(-vec4<i32>(-1i, 0i, -62944i, 44519i) | select(vec4<i32>(var_1.x, var_1.x, var_1.x, 20703i), vec4<i32>(63272i, 0i, u_input.a.x, var_1.x), true), vec4<i32>(countOneBits(var_1.x), abs(-29500i), 12020i, -u_input.a.x), !any(vec4<bool>(var_0, true, var_0, true))), firstTrailingBit(-firstLeadingBit(vec4<i32>(var_1.x, u_input.a.x, 2970i, 1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, _wgslsmith_f_op_f32(-1132f + -1113f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.a.x, vec2<f32>(-1808f, 1000f), vec3<i32>(1i, 1i, 24868i))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-898f, 867f) * vec2<f32>(-413f, 1320f))))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, _wgslsmith_f_op_f32(779f + var_2.b.x)), vec4<f32>(var_2.b.x, -345f, _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x), var_2.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-697f * var_2.b.x), _wgslsmith_div_f32(560f, 891f), 2147483647i > u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1501f, var_2.b.x))), _wgslsmith_f_op_f32(exp2(func_1().b.x)), _wgslsmith_f_op_f32(-2363f - _wgslsmith_f_op_f32(step(663f, -508f))))));
    var_1 = vec3<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(-54462i, select(1i, var_1.x, !global1.x)), var_2.a.x) & _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(~12309i, var_2.a.x << (4294967295u % 32u)), var_2.a.x, var_2.a.x), vec3<i32>(firstLeadingBit(i32(-1i) * -1i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 27401i), u_input.a.xx)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~max(4294967295u, 12253u) & u_input.b);
}

