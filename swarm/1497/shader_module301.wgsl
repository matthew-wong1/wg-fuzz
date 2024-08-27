struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, vec2<i32>(14091i, 7992i), vec2<bool>(false, true)));

var<private> global1: array<vec3<f32>, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33248u), vec2<u32>(7822u, 4294967295u)) ^ 1u, 0u), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), (select(vec2<u32>(113502u, 0u), vec2<u32>(10142u, 119930u), true) ^ ~vec2<u32>(0u, 4294967295u)) & firstLeadingBit(vec2<u32>(10531u, 27995u))));
    let var_1 = -(i32(-1i) * -2147483647i);
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_2 = true;
    return !select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, all(vec2<bool>(false, true)), true)), vec3<bool>(true, all(vec3<bool>(true, true, false)) && false, true));
}

fn func_2() -> vec3<bool> {
    let var_0 = !(!any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)));
    var var_1 = Struct_2(u_input.d);
    return select(func_3(-1i, -1i, -vec4<i32>(~1i, var_1.a >> (45588u % 32u), -u_input.a.x, _wgslsmith_mod_i32(0i, var_1.a)), vec3<i32>(~(u_input.b | 0i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-73864i, var_1.a, 25941i), -vec3<i32>(var_1.a, u_input.c, var_1.a)), -2147483647i)), vec3<bool>(!(true && (u_input.a.x == 0i)), !func_3(_wgslsmith_add_i32(-1i, -7119i), firstTrailingBit(u_input.d), -vec4<i32>(0i, -7913i, 1i, var_1.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_1.a, -2147483647i), vec3<i32>(-1i, var_1.a, var_1.a))).x, false), vec3<bool>(true, false, all(select(vec3<bool>(false, true, var_0), vec3<bool>(true, true, true), false || var_0))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) * _wgslsmith_f_op_f32(f32(-1f) * -1677f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-754f, 102f)))), -986f));
    var var_1 = !func_2();
    var var_2 = countOneBits(-select(vec4<i32>(min(u_input.d, 48814i), _wgslsmith_div_i32(u_input.b, 3333i), max(0i, -2147483647i), u_input.c & u_input.a.x), max(select(vec4<i32>(u_input.b, u_input.a.x, u_input.c, u_input.d), vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.c), true), abs(vec4<i32>(-1i, -10959i, u_input.c, 1i))), !vec4<bool>(var_1.x, true, var_1.x, false)));
    global1 = array<vec3<f32>, 14>();
    var var_3 = Struct_2(13735i);
    return Struct_3(Struct_2(-21747i));
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = ~_wgslsmith_sub_i32(u_input.d, ~abs(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.c, u_input.c, u_input.b))));
    global0 = array<Struct_1, 1>();
    let var_1 = max(1u, firstLeadingBit(1u));
    global0 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1058f, 613f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(-919f, 1485f)))))));
    return StorageBuffer(var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-186f, -1000f, var_2, var_2), vec4<f32>(var_2, var_2, -667f, 761f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, var_2, -140f, var_2), vec4<f32>(var_2, var_2, -1036f, var_2))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, -2680f, var_2) * vec4<f32>(1855f, -1053f, 1833f, 1061f))) * vec4<f32>(var_2, var_2, _wgslsmith_f_op_f32(ceil(var_2)), var_2))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0.a.a, ~2147483647i), u_input.a.x), vec2<i32>(~arg_0.a.a, 1i ^ var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1());
}

