struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u), Struct_1(17463u));

var<private> global1: array<u32, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = global0.a;
    var var_1 = Struct_2(arg_1, arg_2);
    var var_2 = u_input.c;
    global0 = Struct_2(Struct_1(~_wgslsmith_add_u32(~55537u, 1u)), Struct_1(~4294967295u));
    global1 = array<u32, 5>();
    return ~(~global1[_wgslsmith_index_u32(~4294967295u, 5u)]) >> (_wgslsmith_mod_u32(arg_2.a, _wgslsmith_div_u32(var_0.a, var_0.a)) % 32u);
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    global0 = Struct_2(global0.b, Struct_1(1u));
    let var_0 = min(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, ~u_input.a, firstLeadingBit(u_input.a)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 65210i, u_input.a, 2147483647i), vec4<i32>(u_input.a, -30433i, u_input.a, -1i)))), (_wgslsmith_mod_vec4_i32(vec4<i32>(34647i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)) | (vec4<i32>(-1i) * -vec4<i32>(-57574i, u_input.a, 21133i, u_input.a))) & select(abs(vec4<i32>(u_input.a, 49266i, u_input.a, u_input.a)), ~vec4<i32>(-2147483647i, -2147483647i, u_input.a, u_input.a), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), all(vec2<bool>(false, false)))));
    var var_1 = max(~vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a ^ -39509i), ~(-var_0.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, 17103i, 5426i), -u_input.a), -(u_input.a & var_0.x)), vec4<i32>(~7086i, var_0.x, -23566i, var_0.x));
    let var_2 = false;
    var_1 = -var_0;
    return true;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -573f);
    let var_1 = vec2<i32>(firstTrailingBit(u_input.a), _wgslsmith_add_i32((~u_input.a & ~u_input.a) & max(u_input.a, 0i), i32(-1i) * -(~u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, -325f, var_0), vec4<f32>(var_0, 377f, var_0, 417f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -1112f) + vec4<f32>(var_0, -308f, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1356f, 530f, var_0)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(457f, var_0, var_0, var_0)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(666f, _wgslsmith_div_f32(184f, -1002f), _wgslsmith_f_op_f32(575f + 1025f), -363f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 2726f)), var_0)));
    let var_3 = !any(vec3<bool>(1i < abs(var_1.x), any(vec4<bool>(true, true, true, true)), func_3(u_input.c.x, func_2(var_1.x, global0.b, Struct_1(global1[_wgslsmith_index_u32(u_input.e.x, 5u)])))));
    var var_4 = firstLeadingBit(i32(-1i) * -27308i);
    return Struct_2(global0.a, global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<u32, 5>();
    let var_1 = select(select(!vec2<bool>(all(vec3<bool>(var_0, true, var_0)), var_0), vec2<bool>(true, any(vec3<bool>(var_0, true, var_0))), true | (any(vec2<bool>(var_0, false)) && select(var_0, var_0, var_0))), vec2<bool>(false, var_0), select(var_0, any(vec2<bool>(select(var_0, false, false), any(vec3<bool>(var_0, false, true)))), var_0));
    global0 = func_1();
    var var_2 = Struct_1(1u);
    let var_3 = u_input.a | _wgslsmith_clamp_i32(u_input.a | -(~33029i), u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(select(u_input.a, 2147483647i, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1328f + 608f)), 1000f, 328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(779f - -277f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, -937f, 1889f, -401f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1607f, 1220f, -806f, -391f) + vec4<f32>(-615f, 606f, -419f, -1458f))), vec4<bool>(all(vec3<bool>(false, var_0, var_0)), !var_1.x, false, !var_0)))));
}

