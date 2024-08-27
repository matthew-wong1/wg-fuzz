struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(59756u, u_input.b.x), u_input.a.x, reverseBits(1u));
    var var_1 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1518f, -1000f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-312f)), 332f))), -571f)), -671f);
    let var_2 = Struct_1(global1.a);
    var var_3 = (all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))) || (true == all(vec4<bool>(true, true, true, true)))) & true;
    let var_4 = var_0.zy;
    return !select(select(vec2<bool>(false, true), vec2<bool>(true, u_input.b.x < var_0.x), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(all(vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = -1452f;
    global1 = Struct_1(-1i);
    global1 = Struct_1(global1.a);
    global1 = Struct_1(-(~arg_2.a));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 738f)), -1067f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1075f)))));
    return !((~(-6146i) & firstLeadingBit(global1.a)) <= firstTrailingBit(1i)) && any(select(func_3(var_1), func_3(_wgslsmith_f_op_vec4_f32(-var_1)), vec2<bool>(arg_1, !arg_1)));
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(max(-32208i, global1.a << (u_input.a.x % 32u)));
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.b.yx >> (~abs(vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(54777u, firstLeadingBit(49165u)));
    return Struct_1(global1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-arg_1.x)))) > arg_1.x, func_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, u_input.a.x)) & (u_input.a.x | u_input.b.x), ~u_input.b.x >> (~67969u % 32u)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(2698u, u_input.a.x), u_input.b.zy), ~u_input.a) <= u_input.a.x, arg_0));
    global1 = arg_0;
    global0 = firstLeadingBit(arg_0.a);
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_add_vec4_i32(abs(min(-vec4<i32>(-1i, 0i, -2147483647i, var_0.a), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 1i, -2147483647i, -30151i), vec4<i32>(-44792i, -35967i, arg_0.a, 33345i), vec4<i32>(var_0.a, arg_0.a, global1.a, global1.a)))), -vec4<i32>(abs(~global1.a), ~(-var_0.a), -2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -28748i), vec2<i32>(-1i, 0i))));
    return -25800i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(624f, -1141f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1650f)) - -1388f), true))), 1000f);
    global1 = Struct_1(-2147483647i);
    let var_1 = u_input.b.zz;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(select(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global1.a, arg_1.a), vec3<i32>(arg_1.a, var_2.a, arg_1.a)), vec3<i32>(global1.a, 1i, arg_0.a), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_div_i32(-var_2.a, _wgslsmith_mult_i32(var_2.a, arg_0.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 0i), -vec4<i32>(arg_1.a, 0i, var_2.a, arg_1.a)), global1.a)), max(vec3<i32>(0i, 12181i, ~arg_1.a), max(reverseBits(vec3<i32>(2147483647i, -60173i, global1.a)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a, 81210i, arg_1.a), vec3<i32>(-11506i, -43795i, arg_0.a)) | vec3<i32>(0i, -52148i, -42744i))));
    return _wgslsmith_add_i32(~firstLeadingBit(arg_1.a), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~global1.a, -global1.a, global1.a), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.a, 0i), vec3<i32>(-24185i, global1.a, global1.a)))), -global1.a));
    var var_0 = Struct_1(func_5(Struct_1(func_1(Struct_1(global1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, -1755f, 789f, 1170f)))), func_4(true, true)));
    var var_1 = reverseBits(32565u);
    var_0 = Struct_1(9361i);
    var var_2 = _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, firstTrailingBit(u_input.b.x), u_input.a.x) ^ select(select(u_input.b, vec3<u32>(u_input.a.x, 14296u, u_input.a.x), true), u_input.b, vec3<bool>(true, false, true))), abs(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2121f), ~_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.a, global1.a), ~(-vec2<i32>(global1.a, 2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(863f, 756f, 996f), vec3<f32>(1233f, 393f, -109f), any(vec4<bool>(true, false, true, false)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(528f, 1187f, 470f), vec3<f32>(-1000f, 525f, 1000f)))))), _wgslsmith_clamp_i32(i32(-1i) * -39188i, abs(func_1(Struct_1(global1.a), vec4<f32>(1000f, 1000f, 362f, -567f))), _wgslsmith_dot_vec2_i32(-(vec2<i32>(global1.a, var_0.a) & vec2<i32>(21912i, -1i)), -(vec2<i32>(2147483647i, -1i) & vec2<i32>(global1.a, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(floor(-299f)))));
}

