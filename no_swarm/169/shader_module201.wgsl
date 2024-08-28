struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: bool;

var<private> global2: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = 1000f;
    global0 = array<vec4<bool>, 10>();
    global1 = !arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-216f, global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global2.x)), select(arg_3, vec2<bool>(arg_3.x, true), true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1452f, var_0) - vec2<f32>(global2.x, 1151f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(233f, global2.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1831f, 589f) - vec2<f32>(-461f, 1076f)), vec2<f32>(var_0, global2.x), !arg_3))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, 114f), vec2<f32>(-1091f, -1000f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-885f, var_0), vec2<f32>(-308f, var_0)))))));
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_div_f32(global2.x, global2.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, 737f))) - _wgslsmith_f_op_vec2_f32(func_3(false, u_input.b, vec2<i32>(u_input.a, 23137i), vec2<bool>(true, true)))))), vec2<f32>(global2.x, global2.x)));
    let var_0 = ~(-firstTrailingBit(i32(-1i) * -2277i)) >= 2147483647i;
    let var_1 = Struct_1(max(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 1151u, 1u), vec3<u32>(~u_input.b, reverseBits(29044u), _wgslsmith_mult_u32(1u, u_input.b))), ~(~firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    global2 = vec2<f32>(global2.x, -621f);
    var var_2 = Struct_1(~max(firstLeadingBit(vec3<u32>(66775u, u_input.b, u_input.b)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.a, vec3<u32>(var_1.a.x, 0u, 85742u)), ~var_1.a)));
    return Struct_1(var_1.a);
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = var_0;
    var var_2 = ~(~(~(_wgslsmith_mod_u32(u_input.b, var_0.a.x) ^ ~1u)));
    return vec3<i32>(u_input.a, u_input.a, _wgslsmith_mult_i32(-(~u_input.a), ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, reverseBits(u_input.a)), ~u_input.a, ~(i32(-1i) * -8822i)), -func_1()), -(vec3<i32>(-1i) * -(vec3<i32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.b, 7372u, 4294967295u) % vec3<u32>(32u)))));
    global1 = true;
    global1 = any(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, all(vec3<bool>(true, false, true)), select(true, false, true)), !(u_input.b == countOneBits(u_input.b))));
    var var_1 = true;
    let var_2 = !vec2<bool>(true, any(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(u_input.b, 97173u), reverseBits(9244u), u_input.b), 10u)]));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(var_0.x, 1i), u_input.a), -firstTrailingBit(vec2<i32>(-7931i, 24697i))), -(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.x, var_0.x, 1i, 5439i), vec4<i32>(u_input.a, -15840i, -2147483647i, var_0.x)), -vec4<i32>(var_0.x, 0i, var_0.x, 18435i))));
    global0 = array<vec4<bool>, 10>();
    let var_4 = firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(var_0.x | u_input.a, -u_input.a), (u_input.a << ((u_input.b ^ u_input.b) % 32u)) ^ _wgslsmith_mult_i32(-var_0.x, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_2.x, 1u, var_4, select(var_2, vec2<bool>(var_2.x, false), var_2))).x)));
}

