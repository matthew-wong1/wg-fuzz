struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = -278f;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    global1 = _wgslsmith_f_op_f32(min(-858f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + 1531f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-354f, 224f)))), vec2<f32>(_wgslsmith_f_op_f32(687f * -1283f), _wgslsmith_f_op_f32(step(global0.x, -771f))), any(select(arg_0.yx, arg_0.xy, false)))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(round(global0.x)));
    var var_0 = Struct_1(arg_0.zz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(global0.x))))));
    let var_1 = Struct_1(vec2<bool>(true, !(true == (var_0.a.x && true))), 1227f);
    return vec3<bool>(true || !any(vec2<bool>(var_1.a.x, var_0.a.x)), !var_1.a.x | all(select(select(arg_0.zz, arg_0.yz, arg_0.zy), vec2<bool>(true, true), any(var_0.a))), false);
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f - global0.x)), _wgslsmith_div_f32(910f, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-1709f - global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))) - vec2<f32>(-207f, _wgslsmith_f_op_f32(f32(-1f) * -768f)));
    var var_0 = !func_3(vec3<bool>(true, false, true && (u_input.b.x == 4294967295u)));
    let var_1 = Struct_1(var_0.xx, -2554f);
    let var_2 = u_input.b.yy;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2219f), _wgslsmith_div_f32(global0.x, var_1.b))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(451f)) - _wgslsmith_f_op_f32(-global0.x)))));
    return vec4<bool>(var_1.a.x, all(select(select(vec4<bool>(var_1.a.x, true, var_0.x, false), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, true, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, true)), true), select(!vec4<bool>(false, var_1.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, var_0.x, var_1.a.x), select(vec4<bool>(true, true, var_0.x, var_1.a.x), vec4<bool>(var_0.x, var_0.x, false, var_1.a.x), var_0.x)), false)), true, var_1.a.x);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-arg_0.b))));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1178f, -541f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), -465f))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_div_f32(-1545f, var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(601f, global0.x)))) * vec2<f32>(1026f, _wgslsmith_f_op_f32(step(arg_0.b, -499f)))))));
    var var_1 = -_wgslsmith_dot_vec2_i32(firstLeadingBit(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-1i, 36227i))), vec2<i32>(1i, 6298i));
    var var_2 = -(_wgslsmith_add_vec2_i32(max(firstLeadingBit(vec2<i32>(2147483647i, -6244i)), ~vec2<i32>(u_input.a, 6614i)), min(vec2<i32>(1i, u_input.a), vec2<i32>(2147483647i, -1i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(17341i, 2147483647i))) << (u_input.b.zz % vec2<u32>(32u)));
    var_1 = var_2.x;
    return func_2();
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = ~(firstLeadingBit(_wgslsmith_mod_vec2_u32(reverseBits(u_input.b.yz), firstTrailingBit(vec2<u32>(9046u, u_input.b.x)))) & (firstLeadingBit(~u_input.b.wz) >> (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, 16511u)), u_input.b.wy) % vec2<u32>(32u))));
    let var_1 = 7857i;
    let var_2 = vec4<bool>(arg_0.x, func_2().x, !(!(!(-1085f < global0.x))), true);
    let var_3 = Struct_1(var_2.yw, global0.x);
    var var_4 = vec3<u32>(4294967295u, 0u, u_input.b.x);
    return Struct_1(select(var_2.zx, func_1(Struct_1(arg_0.yx, _wgslsmith_f_op_f32(global0.x - -723f))).yw, countOneBits(_wgslsmith_add_u32(var_0.x, 1u)) < firstLeadingBit(24258u | u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -267f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = func_4(select(select(select(vec4<bool>(true, true, true, true), func_1(Struct_1(vec2<bool>(true, true), -523f)), vec4<bool>(true, false, false, false)), select(func_2(), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !vec4<bool>(any(vec3<bool>(true, false, false)), true, any(vec2<bool>(true, false)), true), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-2102f * global0.x));
    global1 = _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-322f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), var_1.b))))));
    let var_2 = abs(vec3<i32>(-21189i, var_0 >> (3090u % 32u), _wgslsmith_div_i32(-1i, ~var_0)));
    let var_3 = var_1;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) + _wgslsmith_f_op_f32(f32(-1f) * -689f));
    global1 = global0.x;
    var var_4 = all(!vec4<bool>(true, all(func_2().xx), var_1.a.x, func_4(!vec4<bool>(false, var_1.a.x, false, var_3.a.x)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -437f)))), vec3<i32>(_wgslsmith_sub_i32(-u_input.a, -countOneBits(var_0)), select(-1i, -2147483647i, any(var_1.a) | false), _wgslsmith_add_i32(2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-4464i, var_0, -20690i, u_input.a), vec4<i32>(u_input.a, 0i, var_0, -19048i)), var_0)));
}

