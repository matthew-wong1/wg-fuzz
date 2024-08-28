struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-20651i, 15176i), vec2<i32>(2843i, 87667i), vec2<i32>(-10339i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-44743i, 49471i), vec2<i32>(41674i, 2147483647i), vec2<i32>(3385i, -3940i), vec2<i32>(1i, -3321i), vec2<i32>(-1i, -12258i), vec2<i32>(0i, -64525i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> f32 {
    global0 = array<vec2<i32>, 10>();
    let var_0 = vec4<bool>(true, false, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(vec4<bool>(false, false, false, true)))), true);
    global0 = array<vec2<i32>, 10>();
    let var_1 = vec3<i32>(35773i, -1i, abs(1i));
    let var_2 = var_1.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(981f, -705f, true)) + _wgslsmith_f_op_f32(-1035f + 677f))))), _wgslsmith_f_op_f32(f32(-1f) * -169f));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = !arg_3;
    var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -161f), -1319f)))), 356f, _wgslsmith_f_op_f32(f32(-1f) * -1340f)));
    var_1 = true;
    return global0[_wgslsmith_index_u32(~firstLeadingBit(abs(arg_0)), 10u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(abs(~func_2(37078u, arg_1, u_input.d.x, false)), select(~arg_1.a, vec2<i32>(_wgslsmith_mod_i32(1995i, var_0.x), max(2147483647i, u_input.c)), select(arg_0, vec2<bool>(arg_0.x, true), any(vec3<bool>(false, false, arg_0.x))))));
    let var_2 = u_input.a.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(912f, -412f) + vec2<f32>(-840f, 104f)), _wgslsmith_div_vec2_f32(vec2<f32>(1645f, -430f), vec2<f32>(-354f, -1314f)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-326f, -147f))), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.b.x, 22570u);
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, u_input.a.x), u_input.a.xwz), 10u)], firstLeadingBit(-(vec2<i32>(-20276i, -1i) ^ vec2<i32>(1i, u_input.c)))));
    global0 = array<vec2<i32>, 10>();
    let var_2 = _wgslsmith_add_vec3_i32(reverseBits(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, -269i) | vec3<i32>(-21648i, var_1.a.x, 1i), abs(vec3<i32>(var_1.a.x, var_1.a.x, -2147483647i))))), -vec3<i32>((var_1.a.x & var_1.a.x) ^ ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(11068i, -9054i, var_1.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, -16263i, -1i), vec3<i32>(-14484i, 2147483647i, u_input.c))), 0i));
    global0 = array<vec2<i32>, 10>();
    var var_3 = vec4<i32>(-1i, 0i, -var_1.a.x, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), Struct_1(vec2<i32>(var_3.x, 1i)))), _wgslsmith_mod_vec2_i32(var_2.yy, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~31502u, u_input.b.x), 10u)]));
}

