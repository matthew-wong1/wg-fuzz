struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32> = vec2<f32>(-1721f, 2544f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, 1016f), all(select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -1000f)), 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1352f, global1.x))) + 357f));
    let var_1 = firstTrailingBit(vec2<u32>(~(~(~u_input.a)), u_input.a));
    global0 = ~min(-2147483647i, -2147483647i);
    let var_2 = ~_wgslsmith_div_i32(1i, min(arg_0.x, min(arg_0.x, -44604i)));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1546f - 942f)));
    return all(!(!(!vec4<bool>(true, arg_1, arg_1, false))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    var var_0 = arg_1.b.a;
    let var_1 = !(!vec4<bool>((i32(-1i) * -28623i) != _wgslsmith_mult_i32(arg_0.c, 5706i), func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-29329i, arg_0.c), vec2<i32>(arg_0.c, arg_0.c)), false), (arg_0.c < arg_0.c) | any(vec4<bool>(arg_2.a, true, arg_0.b.a, true)), arg_1.d.a));
    var var_2 = 47386u;
    let var_3 = Struct_3(vec4<i32>(arg_1.c, ~firstLeadingBit(1i), arg_1.c, _wgslsmith_dot_vec2_i32(reverseBits(countOneBits(vec2<i32>(arg_0.c, 0i))), ~(~vec2<i32>(arg_1.c, -6175i)))), -24248i);
    var_2 = abs(u_input.a);
    return vec4<u32>(((arg_1.d.c.x << (0u % 32u)) | arg_0.b.c.x) << (arg_2.c.x % 32u), arg_2.c.x, 1u, u_input.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> u32 {
    global0 = max(-1i, countOneBits(_wgslsmith_add_i32((-30764i << (u_input.a % 32u)) & countOneBits(6585i), -4i)));
    global1 = arg_0.xz;
    var var_0 = abs(~(~(select(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(1u, 26723u, 12601u), false) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))));
    var_0 = ~(~vec3<u32>(reverseBits(4294967295u), u_input.a, _wgslsmith_dot_vec4_u32(func_2(Struct_2(Struct_1(true, arg_1.x, vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_1(true, 1272f, vec3<u32>(u_input.a, var_0.x, var_0.x)), -1i, Struct_1(false, -179f, vec3<u32>(var_0.x, u_input.a, 4294967295u))), Struct_2(Struct_1(false, global1.x, vec3<u32>(4294967295u, u_input.a, var_0.x)), Struct_1(true, arg_0.x, vec3<u32>(u_input.a, var_0.x, var_0.x)), -39813i, Struct_1(true, global1.x, vec3<u32>(0u, var_0.x, var_0.x))), Struct_1(false, arg_1.x, vec3<u32>(var_0.x, 27994u, var_0.x)), arg_0.x), abs(vec4<u32>(0u, 1u, 0u, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -572f) - arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f - global1.x) * _wgslsmith_f_op_f32(arg_1.x + arg_0.x)), all(vec3<bool>(true, true, true))))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~u_input.a ^ func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1218f, global1.x, global1.x) * vec3<f32>(281f, 561f, global1.x)), vec3<f32>(934f, 150f, global1.x)), u_input.a, _wgslsmith_sub_u32(1347u, abs(u_input.a)) << (u_input.a % 32u), abs(u_input.a));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(511f)) * _wgslsmith_f_op_f32(min(global1.x, global1.x))))));
    let var_1 = Struct_3(-(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 0i)), min(1i, -1i), -1i) & vec4<i32>(1i, 1i, 1i, 1i)), firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(4005i, 2147483647i)), vec2<i32>(1i, 1i)), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-9337i, 3616i, 2147483647i, 0i), vec4<i32>(-1i, 0i, 48698i, 0i))))));
    var var_2 = u_input.a;
    var var_3 = Struct_1(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), false)) & ((abs(30362u) << (~u_input.a % 32u)) == var_0.x), _wgslsmith_f_op_f32(global1.x + global1.x), var_0.yyx);
    let x = u_input.a;
    s_output = StorageBuffer(min(select(var_1.a.wy, ~(vec2<i32>(var_1.b, var_1.a.x) << (vec2<u32>(var_3.c.x, var_3.c.x) % vec2<u32>(32u))), any(select(vec4<bool>(var_3.a, false, false, false), vec4<bool>(true, var_3.a, var_3.a, false), vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a)))), -vec2<i32>(0i, var_1.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-215f, global1.x), vec2<f32>(_wgslsmith_f_op_f32(-1686f * var_3.b), var_3.b))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.b, global1.x), vec2<f32>(-1039f, -804f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1308f, var_3.b) + vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, 2064f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_3.b)))))));
}

