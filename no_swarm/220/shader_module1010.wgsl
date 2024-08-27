struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-1053f, -2695f, 100f, -1000f, 1000f, 879f, 274f, -899f, -1000f, 813f, -1000f, 1885f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-23134i, u_input.a, u_input.a), vec3<i32>(-7855i, -18202i, u_input.a))) & ~vec3<i32>(-10688i, -1i, 2147483647i), vec3<i32>(u_input.a, 1i, u_input.a)), 26161i, -2147483647i, 26038i);
    var_0 = select(-(~(vec4<i32>(var_0.x, -1i, 73688i, 13340i) | firstTrailingBit(vec4<i32>(var_0.x, 1i, u_input.a, u_input.a)))), abs(_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(u_input.a, -2147483647i, var_0.x, u_input.a), vec4<i32>(1i, 48415i, u_input.a, -28788i), false), ~reverseBits(vec4<i32>(-21944i, -20190i, var_0.x, var_0.x)), select(firstLeadingBit(vec4<i32>(var_0.x, -57567i, -1i, 1191i)), -vec4<i32>(u_input.a, 28743i, 12582i, 4037i), all(vec4<bool>(true, true, false, false))))), u_input.a == 2147483647i);
    var var_1 = Struct_1(0i);
    let var_2 = Struct_1(~(-_wgslsmith_add_i32(var_1.a, 21339i)));
    let var_3 = true;
    return Struct_1(_wgslsmith_mod_i32(-var_1.a, -31768i));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], 425f) - vec2<f32>(948f, 213f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 661f) - vec2<f32>(arg_1, 1278f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(315u, 12u)], global0[_wgslsmith_index_u32(31432u, 12u)])))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(52652u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])))))));
    var var_1 = func_2();
    var var_2 = !select(vec4<bool>(_wgslsmith_f_op_f32(arg_1 + 578f) > _wgslsmith_f_op_f32(-arg_1), -627f != var_0.x, !any(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true));
    var var_3 = _wgslsmith_div_u32(1u, firstLeadingBit(22283u)) ^ ~(firstTrailingBit(1u) & _wgslsmith_mult_u32(~4294967295u, 1u));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1577f, _wgslsmith_f_op_f32(-348f - -1370f)))));
    return func_2();
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    let var_0 = Struct_1(~u_input.a);
    global0 = array<f32, 12>();
    let var_1 = func_3(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1803f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1243f * global0[_wgslsmith_index_u32(4294967295u, 12u)]), global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 12u)] - _wgslsmith_f_op_f32(f32(-1f) * -293f)))));
    return Struct_1(-35408i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(-arg_1.a);
    var var_1 = !(!arg_3.x);
    var var_2 = vec4<bool>(all(select(vec2<bool>(arg_0 & arg_0, all(vec3<bool>(arg_0, arg_3.x, arg_2))), select(arg_3, !arg_3, arg_3), true)), any(vec3<bool>(all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_0, true), false)), false, select(arg_0, arg_2, arg_2) != all(vec3<bool>(true, arg_3.x, true)))), true, arg_2);
    global0 = array<f32, 12>();
    return Struct_1(28000i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false || any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))));
    let var_1 = func_4(var_0.x, func_1(), true, vec2<bool>(true, any(select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), false), vec3<bool>(false, var_0.x, var_0.x)))));
    global0 = array<f32, 12>();
    let var_2 = _wgslsmith_mult_u32(abs(~select(4294967295u, 46763u, true)), min(1u, ~4294967295u)) >> (abs(1u) % 32u);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(9760i, var_1.a, -(u_input.a | var_1.a)), -max(vec3<i32>(var_1.a, u_input.a, var_1.a), reverseBits(vec3<i32>(u_input.a, var_1.a, u_input.a)))), _wgslsmith_add_i32(abs(19520i), _wgslsmith_mult_i32(var_1.a, var_1.a) << (47846u % 32u)) | _wgslsmith_div_i32(~u_input.a | (u_input.a >> (27539u % 32u)), u_input.a));
}

