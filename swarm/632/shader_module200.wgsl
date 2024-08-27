struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(2051f, 124f), vec2<f32>(1000f, 757f), vec2<f32>(537f, -624f), vec2<f32>(-513f, 851f), vec2<f32>(-474f, -1225f), vec2<f32>(-1304f, 101f), vec2<f32>(1504f, -776f), vec2<f32>(-1562f, -126f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = vec2<u32>(0u, 0u);
    return ~var_0.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(222f, -1000f, 444f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, -444f, 417f) - vec3<f32>(-1651f, 904f, 1464f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2528f * -128f))), _wgslsmith_f_op_f32(499f - 1339f)))));
    return ~(~vec4<u32>(reverseBits(1u), 6129u, func_3(), ~_wgslsmith_add_u32(8991u, 0u)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = reverseBits(max(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 9404u, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, 4294967295u, 1u)), vec4<u32>(0u, arg_0, 0u, arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), func_2(u_input.a, false, -2147483647i)))) & _wgslsmith_mult_vec4_u32(vec4<u32>(30676u, 4294967295u, _wgslsmith_sub_u32(0u, arg_0), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(34973u, arg_0, 0u), vec3<u32>(4294967295u, arg_0, 3992u)))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(61031u, 12331u, 4294967295u, arg_0), ~vec4<u32>(0u, arg_0, arg_0, 46835u)));
    return _wgslsmith_div_f32(-463f, -809f);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: f32) -> vec4<i32> {
    var var_0 = ~vec4<u32>(arg_0.x, ~arg_0.x, 1u, 1u);
    var var_1 = Struct_1(vec3<bool>(true, any(vec3<bool>(true, true, true)), true), -1i);
    let var_2 = Struct_1(select(select(!var_1.a, !var_1.a, select(vec3<bool>(true, var_1.a.x, var_1.a.x), var_1.a, !vec3<bool>(var_1.a.x, false, false))), var_1.a, any(vec4<bool>(false, var_1.a.x & var_1.a.x, true, var_1.a.x))), arg_1.x);
    let var_3 = arg_0.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -481f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576f * arg_2))));
    return vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_2.b, u_input.a, u_input.a, 2147483647i)), max(abs(vec4<i32>(1i, 2147483647i, 1i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, var_1.b, -2147483647i, 1i), vec4<i32>(var_1.b, u_input.a, -2147483647i, -33643i), vec4<i32>(var_2.b, u_input.a, -2147483647i, 19924i)))), 0i), ~(~(~0i >> (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u))), 28044i, var_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec3<i32> {
    global0 = array<vec2<f32>, 8>();
    let var_0 = Struct_1(vec3<bool>(true, arg_2.x <= u_input.a, true), max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_0.b, u_input.a, 1i), ~vec4<i32>(74303i, arg_0.b, 1i, 2147483647i)) | (i32(-1i) * -arg_2.x), -_wgslsmith_dot_vec4_i32(~arg_2, abs(arg_2))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1677f, -325f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(222f, 1753f, false)))))));
    var var_2 = func_2(-_wgslsmith_mult_i32(min(-25620i >> (0u % 32u), arg_2.x), _wgslsmith_mod_i32(reverseBits(-22079i), countOneBits(arg_0.b))), select(false, var_0.a.x, true), -_wgslsmith_dot_vec4_i32(reverseBits(min(arg_2, vec4<i32>(-18821i, -2147483647i, u_input.a, arg_0.b))), vec4<i32>(var_0.b, -2147483647i, arg_2.x, var_0.b) | abs(arg_2))).x;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -242f)))) + vec2<f32>(_wgslsmith_f_op_f32(max(var_1, -1011f)), _wgslsmith_f_op_f32(-var_1)))));
    return _wgslsmith_div_vec3_i32(firstTrailingBit(select(~abs(vec3<i32>(u_input.a, u_input.a, 2147483647i)), countOneBits(~vec3<i32>(arg_2.x, 64566i, arg_2.x)), vec3<bool>(!var_0.a.x, false, false))), vec3<i32>(max(countOneBits(var_0.b), _wgslsmith_div_i32(arg_2.x, -36973i) << (0u % 32u)), arg_0.b, var_0.b));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(arg_0.x, arg_0.x ^ arg_0.x)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.x, 7676u, arg_0.x, 0u), vec4<u32>(arg_0.x, 16058u, 15678u, 28616u), vec4<bool>(true, true, false, false)), abs(vec4<u32>(1u, 0u, arg_0.x, 31330u))) | arg_0.x));
    global0 = array<vec2<f32>, 8>();
    let var_1 = _wgslsmith_add_vec2_i32(arg_1.zy, vec2<i32>(_wgslsmith_mult_i32(-1i, -arg_1.x), 22036i));
    global0 = array<vec2<f32>, 8>();
    var var_2 = _wgslsmith_mod_i32(-60884i, abs(27298i));
    return Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), 51735i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(~(~49067u), ~(~54150u)), 0u, _wgslsmith_clamp_u32(~90614u, min(1u, _wgslsmith_mult_u32(22393u, 0u)), max(~54958u, 25050u)), 43745u >> (_wgslsmith_div_u32(select(1u, 0u, false), 1u) % 32u)));
    global0 = array<vec2<f32>, 8>();
    global0 = array<vec2<f32>, 8>();
    var var_1 = func_6(var_0.ywy, func_5(Struct_1(vec3<bool>(false, u_input.a == u_input.a, true), ~(-2147483647i)), ~var_0.yy, func_4(~var_0.zz, vec3<i32>(-5776i, -27723i, select(u_input.a, u_input.a, false)), _wgslsmith_f_op_f32(step(1698f, _wgslsmith_f_op_f32(func_1(1u)))))), _wgslsmith_f_op_f32(floor(-1237f)), _wgslsmith_add_i32(u_input.a, 0i));
    global0 = array<vec2<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, var_1.b, _wgslsmith_div_i32(i32(-1i) * -1i, select(abs(18455i), ~var_1.b, any(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true))))), var_0.wxy, firstTrailingBit(func_4(var_0.wx, ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b, var_1.b, -9094i), vec3<i32>(-2147483647i, var_1.b, -3736i)), _wgslsmith_div_f32(-783f, _wgslsmith_f_op_f32(f32(-1f) * -1370f))).x), countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(397u, 4294967295u, var_0.x), ~vec3<u32>(var_0.x, 0u, 4294967295u))));
}

