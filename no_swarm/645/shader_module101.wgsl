struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-11220i, -18619i, 45247i)), abs(select(vec3<i32>(17365i, 2147483647i, 22026i), vec3<i32>(27642i, 0i, -16997i), vec3<bool>(arg_0.a, false, arg_0.a)) & -vec3<i32>(1i, -639i, -69781i))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-35153i, -29475i)), 0i, reverseBits(-27991i)), abs(vec3<i32>(reverseBits(36476i), countOneBits(20671i), -66879i))));
    let var_1 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 1i, 2540i), vec4<i32>(var_0.x, var_0.x, var_0.x, -1i))), var_0.x, _wgslsmith_mult_i32(var_0.x, _wgslsmith_div_i32(49858i, -55237i)), 1i), vec4<i32>(-30489i, ~firstLeadingBit(-2147483647i), ~var_0.x, var_0.x), vec4<i32>(-2147483647i, var_0.x, -(-1i >> (u_input.b % 32u)), -2147483647i));
    let var_2 = arg_0;
    var var_3 = select(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_1.xxx, vec3<i32>(10843i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -7718i, 9308i, 1i), vec4<i32>(var_0.x, var_0.x, 48705i, var_0.x)), ~(-1i))), vec3<i32>(-41835i, var_1.x, 1i | var_1.x)), _wgslsmith_div_vec3_i32(firstTrailingBit(max(vec3<i32>(var_0.x, 1i, 73421i), vec3<i32>(var_0.x, var_1.x, 10177i) & var_1.zwz)), _wgslsmith_sub_vec3_i32(var_1.wxx, var_1.wxz)), vec3<bool>((false && (1u != u_input.b)) && true, all(select(select(vec4<bool>(var_2.a, false, false, false), vec4<bool>(true, arg_0.a, var_2.a, true), vec4<bool>(false, arg_0.a, var_2.a, false)), vec4<bool>(var_2.a, false, false, false), select(vec4<bool>(false, var_2.a, arg_0.a, true), vec4<bool>(arg_0.a, true, arg_0.a, false), arg_0.a))), all(!vec4<bool>(arg_0.a, var_2.a, false, false))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-557f, 184f, -342f, 928f))))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(910f, 736f, -350f, -1966f)) - vec4<f32>(-981f, _wgslsmith_f_op_f32(round(-1628f)), _wgslsmith_f_op_f32(select(-434f, 437f, arg_0.a)), 196f))));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_4.ywz)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = 604f;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(var_0, var_0, all(!(!vec4<bool>(arg_0, arg_0, true, true))))), ~u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 406f, var_0)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), -1000f, 364f))), Struct_1(false), Struct_1(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 - var_0)) > _wgslsmith_f_op_f32(-2100f * 329f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-661f, -1809f)) - -2135f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(254f))))), var_0, var_0));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2, var_2) + _wgslsmith_f_op_vec3_f32(func_3(var_1.e))));
    let var_4 = !(!(!(!vec2<bool>(arg_0, var_1.d.a))));
    return 0i;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = !(arg_0 && true);
    var var_1 = vec2<u32>(u_input.b, u_input.b);
    var_0 = arg_0;
    global0 = 65949u;
    let var_2 = !(-2147483647i != (firstLeadingBit(func_2(arg_0, 26427i, -9490i)) << (u_input.a % 32u)));
    return _wgslsmith_f_op_f32(-666f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, 1000f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-995f)) + _wgslsmith_f_op_f32(381f - 3501f)), _wgslsmith_f_op_f32(f32(-1f) * -488f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(true))));
    let var_1 = Struct_1(any(!vec3<bool>(false, all(vec4<bool>(true, true, false, true)), true)));
    global1 = reverseBits(-2147483647i);
    global0 = 1u;
    let var_2 = vec3<u32>(_wgslsmith_div_u32(~u_input.a, select(_wgslsmith_add_u32(_wgslsmith_mult_u32(23665u, u_input.a), ~u_input.b), u_input.b, !(var_1.a || var_1.a))), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(53974u, 1u, u_input.b, u_input.a), vec4<u32>(u_input.b, 1u, 1u, u_input.b)), u_input.a) & vec3<u32>(firstLeadingBit(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(55998u, 76029u), vec2<u32>(u_input.b, 58174u)), ~u_input.a), vec3<u32>(_wgslsmith_add_u32(~u_input.a, u_input.a), _wgslsmith_sub_u32(1u, 1u), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-135f, -762f, 617f, 443f))))), 0i, vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.xx, vec2<u32>(var_2.x & 28289u, 21949u)), u_input.b));
}

