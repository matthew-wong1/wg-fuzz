struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    let var_0 = true;
    let var_1 = !(any(vec2<bool>(true, u_input.a > 0u)) & (u_input.a <= 0u));
    let var_2 = !select(!select(vec4<bool>(var_1, true, var_0, false), select(vec4<bool>(var_0, var_0, arg_0.a, true), vec4<bool>(var_1, var_0, true, arg_2), vec4<bool>(var_1, true, var_1, false)), true), vec4<bool>(arg_0.a, var_1, !(arg_2 & arg_2), arg_0.a), !(!vec4<bool>(var_1, true, arg_0.a, arg_0.a)));
    let var_3 = arg_0.a || arg_0.a;
    var var_4 = Struct_1(any(vec3<bool>(var_1, true, true)), arg_0.b);
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(45614u ^ u_input.a, _wgslsmith_div_u32(u_input.a, 4294967295u), u_input.a, abs(u_input.a)), min(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 86283u, 60996u, u_input.a)), min(vec4<u32>(1u, u_input.a, 6798u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool) -> vec4<bool> {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(138717u, 42359u), func_3(Struct_1(true, _wgslsmith_div_vec3_i32(arg_1, -arg_1)), arg_1.yy, true), ~_wgslsmith_div_u32(~arg_0.x << (~arg_0.x % 32u), 38076u), ~28587u);
    let var_1 = Struct_2(select(!select(vec4<bool>(false, true, false, arg_2), !vec4<bool>(true, arg_2, arg_2, arg_2), true), vec4<bool>(arg_2, arg_2, arg_2, all(vec2<bool>(true, true))), vec4<bool>(arg_2, true, ~arg_0.x == 4294967295u, arg_2)));
    let var_2 = true;
    var var_3 = ~vec2<u32>(69785u, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.x, arg_0.x | arg_0.x, u_input.a), (vec3<u32>(1u, u_input.a, 17811u) ^ vec3<u32>(37841u, arg_0.x, 62208u)) << ((var_0.zxx | vec3<u32>(var_0.x, 66935u, var_0.x)) % vec3<u32>(32u))));
    var var_4 = var_1;
    return select(!var_4.a, !(!(!var_1.a)), select(var_4.a, vec4<bool>(1432f != _wgslsmith_f_op_f32(select(-368f, 668f, false)), any(select(vec2<bool>(arg_2, true), var_4.a.zy, var_2)), !(!var_2), !all(var_4.a.xwx)), select(select(var_1.a, select(vec4<bool>(true, true, false, arg_2), vec4<bool>(true, false, false, true), true), false), select(select(var_1.a, vec4<bool>(var_4.a.x, true, var_4.a.x, true), var_4.a.x), var_4.a, select(var_1.a.x, var_2, false)), false)));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1884f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1243f, -928f), _wgslsmith_f_op_f32(min(-493f, -1453f)))))))));
    let var_1 = -1644f;
    var var_2 = Struct_1(func_2(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 63022u, u_input.a)) << (abs(u_input.a) % 32u)), vec3<i32>(-2147483647i, i32(-1i) * -50583i, 1i), arg_0.a.x).x, vec3<i32>(0i, _wgslsmith_add_i32(-61870i, _wgslsmith_mult_i32(1i, i32(-1i) * -6902i)), 0i));
    let var_3 = var_2.b.x;
    let var_4 = Struct_2(!vec4<bool>(!var_2.a || any(vec3<bool>(true, false, true)), any(arg_0.a), arg_0.a.x, true));
    return !any(select(vec4<bool>(var_4.a.x || false, true, -510f > var_1, true), arg_0.a, any(select(var_4.a.wyx, arg_0.a.xyw, var_4.a.x))));
}

fn func_1() -> f32 {
    let var_0 = func_4(Struct_2(!func_2(firstLeadingBit(vec2<u32>(0u, u_input.a)), -vec3<i32>(21669i, 1i, 1i), true)));
    let var_1 = Struct_2(!func_2(vec2<u32>(u_input.a, u_input.a & u_input.a), vec3<i32>(_wgslsmith_div_i32(34367i, -1i), ~0i, i32(-1i) * -2147483647i), false));
    let var_2 = var_1;
    var var_3 = abs(_wgslsmith_div_vec3_i32(vec3<i32>(40918i, 0i, 1i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(17121u, 51573u, u_input.a)) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))) | (vec3<i32>(1i, 1i, 1i) << (vec3<u32>(u_input.a, ~abs(1450u), 0u) % vec3<u32>(32u)));
    var_3 = firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_3.x, 0i), vec3<i32>(var_3.x, -1i, 2294i)), ~vec3<i32>(var_3.x, var_3.x, -32085i)), min(~vec3<i32>(-10471i, -2147483647i, -2147483647i), abs(vec3<i32>(-2147483647i, var_3.x, -56322i))), ~vec3<i32>(var_3.x, 19065i, -2147483647i))));
    return -191f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(100f, _wgslsmith_f_op_f32(ceil(-1152f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-928f - -311f), _wgslsmith_f_op_f32(f32(-1f) * -754f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1647f, -159f, 651f) + vec3<f32>(-970f, -279f, 568f)))), vec3<f32>(-1485f, _wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(func_1()))));
    var var_1 = Struct_1(false, vec3<i32>(~32840i, abs(_wgslsmith_sub_i32(-13896i, _wgslsmith_mult_i32(-32633i, -1i))), abs(reverseBits(1878i))));
    let var_2 = Struct_1(var_1.a, vec3<i32>(countOneBits(1i) | (_wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(var_1.b.x, 0i, 1i)) & 1i), firstLeadingBit(var_1.b.x) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20649u, 26192u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), 5430u) % 32u), var_1.b.x));
    var_1 = var_2;
    var var_3 = -var_1.b.yz;
    var var_4 = u_input.a;
    var_0 = vec3<f32>(-109f, var_0.x, 868f);
    let x = u_input.a;
    s_output = StorageBuffer(-592f, -2147483647i);
}

