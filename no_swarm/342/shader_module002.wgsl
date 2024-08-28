struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(1u, 1u, 4294967295u, 4294967295u, 127984u, 48667u, 14425u, 1859u, 74874u, 10724u, 26845u, 4294967295u, 0u, 1u, 79542u, 1u, 35300u, 14627u, 56399u, 1u, 0u, 0u, 9952u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    global0 = array<u32, 23>();
    let var_0 = arg_1;
    var var_1 = reverseBits(~vec4<i32>(~u_input.b.x, u_input.b.x, _wgslsmith_mod_i32(-657i, u_input.b.x), u_input.b.x)) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, max(u_input.b.x, u_input.b.x), -4762i, _wgslsmith_div_i32(u_input.b.x, 65485i)), firstLeadingBit(~vec4<i32>(-10007i, 2147483647i, u_input.b.x, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_3 = var_0.xx;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1568f)) * arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))))));
}

fn func_3() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -526f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -680f)))))));
    let var_2 = select(!vec2<bool>(false, u_input.b.x > 33715i), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(true, true, false, true)))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))));
    var var_3 = ~(~(~1u & (4294967295u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a ^ 8239u, 23u)], 23u)])));
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.xz), select(u_input.b.xz, vec2<i32>(-2147483647i, u_input.b.x), select(var_2, vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, false)))), u_input.b.x), ~(-2147483647i));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> vec3<u32> {
    let var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(step(-526f, _wgslsmith_f_op_f32(func_2(4294967295u, vec4<f32>(var_0, -285f, arg_2, 567f))))))), vec4<i32>(~1i, u_input.b.x, -10430i, _wgslsmith_mult_i32(-5721i, u_input.b.x) | u_input.b.x), -func_3(), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false))), true || (var_0 >= var_0)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_2 = vec4<u32>(0u, ~1u, 4294967295u, u_input.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.a))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, arg_2) - _wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(var_0, var_1.a.x)))))));
    global0 = array<u32, 23>();
    return arg_0.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> Struct_3 {
    global0 = array<u32, 23>();
    return Struct_3(func_1(arg_3, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.x, 4294967295u, 53546u, arg_0.x)), vec4<u32>(u_input.a, 9174u, 31425u, u_input.a) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(arg_3.a.a, 23u)], arg_3.a.a, 4294967295u), vec4<u32>(33052u, u_input.a, 0u, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1162f), -214f, false)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f), 1000f))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_4(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(3122u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<u32>(global0[_wgslsmith_index_u32(28306u, 23u)], 0u, global0[_wgslsmith_index_u32(47552u, 23u)])), func_1(Struct_4(Struct_3(48777u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)])), u_input.a, -1106f)), ~abs(u_input.a)), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), -30543i, Struct_4(Struct_3(u_input.a), vec3<u32>(1u, ~global0[_wgslsmith_index_u32(3515u, 23u)], ~38140u))));
    let var_1 = Struct_5(Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)]), 4294967295u), min(~var_0.a.a, ~var_0.a.a)), 23u)]));
    var var_2 = var_0;
    var_2 = Struct_5(Struct_3(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(61932u, var_2.a.a, var_0.a.a), vec3<u32>(u_input.a, 0u, u_input.a)))));
    var var_3 = select(vec4<bool>(false, any(vec2<bool>(all(vec2<bool>(true, true)), true)), true, !(true | all(vec3<bool>(false, false, true)))), !vec4<bool>(true, true, true, select(global0[_wgslsmith_index_u32(var_1.a.a, 23u)], global0[_wgslsmith_index_u32(16376u, 23u)], true) != _wgslsmith_mult_u32(u_input.a, global0[_wgslsmith_index_u32(29574u, 23u)])), select(vec4<bool>(true, true, select(true, true, any(vec3<bool>(true, true, false))), true), vec4<bool>(true, true, true, true), select(true, true, true) & any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

