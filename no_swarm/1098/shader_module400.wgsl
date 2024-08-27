struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = true;
    let var_0 = arg_1;
    let var_1 = vec3<bool>(any(!(!(!var_0.b.xx))), !var_0.b.x, any(!select(var_0.b, arg_1.b, !arg_1.b.x)));
    global0 = false;
    let var_2 = _wgslsmith_f_op_f32(-arg_2);
    return true | all(!(!(!vec4<bool>(arg_1.b.x, true, false, false))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-844f)));
    var var_1 = arg_1;
    let var_2 = arg_0.wx;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(var_1.a)), var_1.b, !(!(_wgslsmith_add_u32(0u, 4294967295u) < max(4294967295u, u_input.c))), vec3<bool>(any(select(!vec4<bool>(false, var_1.e, false, false), select(vec4<bool>(arg_1.d.x, true, var_1.c, true), vec4<bool>(arg_1.c, true, false, var_1.c), vec4<bool>(arg_1.d.x, arg_1.e, true, var_1.d.x)), var_1.e | arg_1.c)), func_2(vec3<bool>(var_1.c, !arg_1.e, arg_1.c), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.d, u_input.a)), arg_1.d), _wgslsmith_f_op_f32(f32(-1f) * -524f)), all(vec3<bool>(false || arg_1.e, arg_1.c, arg_1.c))), false);
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.ww), arg_1.b, arg_1.e | false, var_1.d, true);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.zw)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    let var_0 = !(!arg_1.e);
    global0 = arg_0.d.x;
    global0 = false;
    var var_1 = any(!(!select(!arg_0.d.zz, !arg_0.d.xy, select(vec2<bool>(var_0, arg_0.d.x), arg_0.d.zy, arg_1.c))));
    let var_2 = Struct_1(abs(vec2<u32>(1u, min(u_input.a, 10420u)) & firstLeadingBit(vec2<u32>(42828u, 1u))), !select(select(select(arg_0.d, arg_1.d, false), vec3<bool>(false, false, true), arg_0.d), !select(arg_0.d, vec3<bool>(false, true, true), true), !vec3<bool>(arg_1.c, true, false)));
    return min(max(reverseBits(var_2.a), var_2.a >> (var_2.a % vec2<u32>(32u))), var_2.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> vec4<f32> {
    global0 = !(!(_wgslsmith_f_op_f32(sign(arg_0.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x))));
    global0 = any(select(vec4<bool>(true, true, true, true), !vec4<bool>(func_2(vec3<bool>(false, true, false), Struct_1(vec2<u32>(u_input.a, u_input.d), vec3<bool>(false, false, false)), arg_0.x), arg_0.x != arg_0.x, false, true), false));
    var var_0 = Struct_1(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(-1477f, 1282f, 1000f, 160f), Struct_2(vec2<f32>(1673f, arg_0.x), vec4<i32>(24601i, u_input.b, u_input.b, u_input.b), false, vec3<bool>(false, false, false), true))), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ abs(vec4<i32>(u_input.b, -2147483647i, -2147483647i, -23801i)), _wgslsmith_add_i32(2147483647i, u_input.b) <= -u_input.b, vec3<bool>(true, false, true), false), Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-952f, arg_0.x))), _wgslsmith_f_op_vec2_f32(min(arg_0, arg_0)))), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(-33257i, -10229i, u_input.b, 2147483647i))), func_2(vec3<bool>(true, true, true), Struct_1(vec2<u32>(arg_1, u_input.a), vec3<bool>(true, false, false)), -1276f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), arg_0.x), vec3<bool>(true, true, !(true || all(vec2<bool>(false, true)))));
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a, ~vec2<u32>(u_input.d, arg_1)), var_0.a & ~vec2<u32>(45430u, u_input.d), ~min(var_0.a, var_0.a)), reverseBits(~vec2<u32>(u_input.c, u_input.c))), vec3<bool>(all(select(!vec4<bool>(false, var_0.b.x, var_0.b.x, false), !vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), 5750u >= arg_1, var_0.b.x));
    let var_1 = vec2<i32>(select(_wgslsmith_mod_i32(u_input.b, _wgslsmith_sub_i32(abs(u_input.b), -62885i)), u_input.b, var_0.b.x), ~(~abs(u_input.b) ^ _wgslsmith_div_i32(1i, -8965i)));
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-284f, arg_0.x)), 709f)), arg_0.x, var_0.b.x)), arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -768f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1247f, arg_0.x, _wgslsmith_div_f32(109f, _wgslsmith_f_op_f32(-arg_0.x)), 995f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, 1159f, arg_0.x, 706f)))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    global0 = any(vec3<bool>(!((arg_1.c & arg_1.d.x) && (arg_1.e & true)), func_2(arg_1.d, Struct_1(~vec2<u32>(u_input.c, u_input.d), arg_1.d), 156f), !(!(true && arg_1.d.x))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1.a.x)))), -1829f)));
    global0 = true;
    let var_1 = arg_1.b;
    global0 = true;
    return !arg_1.c != all(!(!vec2<bool>(arg_1.e, arg_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.c != ~(_wgslsmith_clamp_u32(~u_input.c, ~u_input.d, 2611u) ^ ~503u);
    let var_0 = false;
    let var_1 = vec4<bool>(var_0, !var_0, func_5(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(829f - -722f), _wgslsmith_f_op_f32(min(1097f, 617f)), _wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_f_op_f32(f32(-1f) * -128f)), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1741f, -1000f), vec2<f32>(-104f, 1124f)), ~u_input.d))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(675f, -1454f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(251f, 1000f) - vec2<f32>(-1426f, 1504f))), -vec4<i32>(u_input.b, 2147483647i, 39634i, u_input.b) | ~vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), !all(vec3<bool>(var_0, var_0, var_0)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_0), true)), var_0);
    global0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, _wgslsmith_f_op_f32(f32(-1f) * -1503f), -1813f, _wgslsmith_f_op_f32(ceil(211f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1047f)), _wgslsmith_f_op_f32(ceil(380f)), _wgslsmith_f_op_f32(f32(-1f) * -357f), -305f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1246f, 1212f, -171f, 1000f))))))), Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1030f, 841f)), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -143f)), -abs(countOneBits(vec4<i32>(u_input.b, 35150i, u_input.b, u_input.b))), false, vec3<bool>(false, var_1.x, var_0), 0i < u_input.b));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-508f, -178f), vec2<f32>(_wgslsmith_div_f32(-713f, _wgslsmith_f_op_f32(trunc(-1246f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(658f, 700f, false)))))), vec4<i32>(abs(-7602i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, -47805i)), u_input.b, ~1i >> (u_input.c % 32u)) ^ vec4<i32>(min(41356i, u_input.b), 2147483647i, ~(u_input.b >> (u_input.a % 32u)), -(u_input.b & 2706i)), true, !var_1.xxy, var_1.x);
    let var_3 = vec4<f32>(var_2.a.x, 1686f, 501f, -812f);
    global0 = !var_1.x;
    let var_4 = -1157f;
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(func_4(var_2, var_5, -1269f).x, ~u_input.a)), max(countOneBits((vec4<i32>(var_2.b.x, u_input.b, -1593i, var_5.b.x) & var_2.b) ^ vec4<i32>(var_5.b.x, var_2.b.x, -15552i, var_2.b.x)), var_5.b), reverseBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a, u_input.c)), abs(vec3<u32>(u_input.d, u_input.a, 13193u)))) ^ abs(~(vec3<u32>(0u, 1u, u_input.d) << (vec3<u32>(65484u, u_input.a, u_input.d) % vec3<u32>(32u)))));
}

