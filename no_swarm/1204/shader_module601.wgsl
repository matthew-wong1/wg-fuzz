struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    var var_0 = u_input.b.x;
    let var_1 = Struct_2(-1i, 11640u);
    var var_2 = i32(-1i) * -1i;
    var var_3 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), u_input.a <= arg_1), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) * _wgslsmith_f_op_f32(max(563f, -1174f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-749f)) * _wgslsmith_f_op_f32(ceil(-952f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2111f, -1227f, _wgslsmith_f_op_f32(-1063f - -897f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, -402f, -772f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1422f, -928f, -1120f)))))));
    return false;
}

fn func_4(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = Struct_3(arg_0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1681f * 145f)) - _wgslsmith_f_op_f32(-605f - 989f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-634f, 525f, 1519f), vec3<f32>(-1118f, 927f, -1426f))))));
    var var_1 = ~(~(~reverseBits(vec3<u32>(arg_0.b.b, 1u, 4294967295u)) ^ vec3<u32>(1u, _wgslsmith_clamp_u32(84707u, u_input.a, 58221u), 1u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.b.b.x, 1000f)), _wgslsmith_f_op_f32(select(-101f, var_0.b.b.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1406f), var_0.b.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1008f, var_0.b.a, 1919f, 1000f), vec4<f32>(var_0.b.b.x, 1065f, -127f, 1415f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, var_0.b.a, -300f, var_0.b.a))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, -339f, 268f, 1419f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.b.x, -622f, var_0.b.b.x, 705f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(386f, var_0.b.a, var_0.b.a, -953f))))), vec4<f32>(-2193f, _wgslsmith_f_op_f32(trunc(701f)), _wgslsmith_f_op_f32(-484f - -1234f), 551f)))));
    var var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.zx, vec2<u32>(67053u, _wgslsmith_clamp_u32(108284u, var_0.a.b, 9202u))), vec2<u32>(countOneBits(4294967295u | u_input.a), ~var_0.a.b));
    global0 = vec3<i32>(select(var_0.a.a, ~_wgslsmith_add_i32(0i, 10040i), true), 17437i, 2147483647i);
    return ~min(max(max(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(var_0.a.a, arg_0.c, -5501i)), select(u_input.b, vec3<i32>(var_0.a.a, -1i, 32905i), true)), (u_input.b | vec3<i32>(arg_0.c, var_0.a.a, 1i)) | firstLeadingBit(u_input.b)), -max(countOneBits(u_input.b), abs(u_input.b)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    global0 = u_input.b;
    global0 = func_4(Struct_4(select(vec3<bool>(u_input.b.x > global0.x, all(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, false, arg_1 != arg_1), func_3(max(vec2<i32>(global0.x, 17796i), u_input.b.yy), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 44589u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), Struct_2(-2147483647i, ~firstTrailingBit(u_input.a)), 46886i));
    global0 = u_input.b;
    global0 = firstLeadingBit(vec3<i32>(-global0.x, -17737i, 84407i));
    var var_0 = select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, true, false))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), true), select(vec4<bool>(select(true, true, false), true, all(vec4<bool>(true, false, false, true)), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), any(vec2<bool>(false, false))), vec4<bool>(true, select(true, true, false), true, true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    return all(select(!(!select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, false, var_0.x, var_0.x))), !select(vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), !all(vec3<bool>(true, var_0.x, var_0.x))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.a >= 4294967295u), vec2<bool>(u_input.b.x >= 26786i, any(vec4<bool>(false, true, false, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(false, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_2(Struct_1(-966f, vec3<f32>(arg_2.x, -1874f, arg_2.x)), -1163f), any(vec3<bool>(true, true, true)))), vec2<bool>(true, true)), vec2<bool>(false, true));
    var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1430f - arg_2.x), arg_2.x));
    var var_2 = vec2<bool>(var_0.x, all(vec3<bool>(18630u != firstTrailingBit(u_input.a), true, !var_0.x)));
    let var_3 = Struct_2(2147483647i, ~(~u_input.a ^ u_input.a));
    return _wgslsmith_f_op_f32(-260f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(168f * arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)) + _wgslsmith_f_op_f32(-arg_2.x)) * arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.b;
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-701f, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(187f, -977f)), _wgslsmith_div_f32(3040f, 844f))), 515f))));
    var var_1 = Struct_1(_wgslsmith_div_f32(var_0.x, var_0.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(1i, 28108i, vec2<f32>(var_0.x, var_0.x), vec4<i32>(50358i, u_input.b.x, -2147483647i, 59828i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(round(-1786f))), 1f));
    var var_2 = vec4<i32>(countOneBits(71327i), u_input.b.x, global0.x, global0.x);
    var var_3 = var_2.x;
    let var_4 = _wgslsmith_f_op_f32(-var_1.b.x);
    let var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, var_0.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.b.yz, _wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(-894f, 444f))))), var_1.b.xz)));
    var var_6 = ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-u_input.b.x, 1i), 1i, abs(i32(-1i) * -1i));
    var var_7 = true && !(!func_2(Struct_1(var_5.x, var_1.b), _wgslsmith_f_op_f32(-var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, var_0.x, global0.zz);
}

