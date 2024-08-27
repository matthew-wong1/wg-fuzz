struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: Struct_2;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-1282f - global0.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * arg_1) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-757f, global0.c, arg_1.x), arg_1, global1.d)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1043f, var_0.x, var_0.x), arg_1))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(-257f, _wgslsmith_f_op_f32(global0.b - var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c)))))));
    return !(!vec2<bool>(all(vec3<bool>(global0.d.x, global0.d.x, global1.d)), false));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_f32(abs(global0.b));
    var var_2 = any(select(select(select(vec2<bool>(global0.a.d, false), select(var_0.e.wx, global0.a.e.xx, global1.d), select(vec2<bool>(true, var_0.e.x), vec2<bool>(var_0.d, global0.a.d), global0.a.e.xx)), vec2<bool>(true, all(global1.e)), select(global1.e.xw, vec2<bool>(var_0.d, global0.a.d), !global1.e.ww)), func_3(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 3128u, 0u), arg_0 | arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c, global0.c, -489f))))), global1.e.zx));
    return -2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = func_2(min(vec3<u32>(_wgslsmith_mult_u32(112427u, 0u), 1u, 1u), ~(~vec3<u32>(1u, 24193u, arg_0.a.a.x)))) <= arg_0.a.c;
    global1 = global0.a;
    var var_1 = vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, global1.c), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c, arg_1), vec2<i32>(global0.a.c, -1977i) >> (vec2<u32>(0u, 30949u) % vec2<u32>(32u))) >> (arg_0.a.a % vec2<u32>(32u))));
    global0 = arg_0;
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_add_u32(max(abs(15576u), ~u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1452u, u_input.b, arg_0.a.b) | vec3<u32>(arg_0.a.b, global1.b, arg_0.a.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.a.x, 18489u, 1u), vec3<u32>(4294967295u, u_input.b, global0.a.a.x)))), ~_wgslsmith_dot_vec2_u32(global1.a, vec2<u32>(29441u, u_input.b)) | min(4294967295u, 1u)), ~(~1u) & ~(reverseBits(global0.a.a.x) & countOneBits(1712u)), _wgslsmith_add_i32(7198i, ~arg_1), false, arg_0.a.e);
    return ~arg_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_3.b, _wgslsmith_dot_vec4_u32(~(vec4<u32>(624u, arg_3.b, global1.a.x, 4294967295u) | vec4<u32>(arg_1.a.x, arg_1.b, var_0.a.x, var_0.b)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, 4294967295u, 12945u, global1.b), vec4<u32>(arg_2.a.x, global1.a.x, 4294967295u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b, global0.a.a.x, u_input.b, 4294967295u), vec4<u32>(arg_3.a.x, 1u, 1u, 9492u)), true))), _wgslsmith_mod_u32(u_input.b, ~0u) | 1u);
    global1 = global0.a;
    let var_2 = global0.b;
    var var_3 = Struct_2(Struct_1(vec2<u32>(0u, 24550u), ~(~global1.a.x), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) >= 213f, select(!(!arg_3.e), select(arg_2.e, arg_2.e, vec4<bool>(true, var_0.e.x, true, var_0.d)), !global1.e)), global0.b, 1f, arg_1.e.zwz);
    return arg_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -864f);
    global1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(60373u, 22574u), ~_wgslsmith_add_vec2_u32(~global0.a.a, global0.a.a)), 1183u, global1.c, func_4(vec2<i32>(_wgslsmith_div_i32(global1.c, global0.a.c << (global0.a.a.x % 32u)), -2147483647i), global0.a, Struct_1(min(max(global1.a, global0.a.a), ~vec2<u32>(2224u, global0.a.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 4294967295u, global1.b), ~vec4<u32>(1u, var_0, global0.a.b, var_0)), func_1(Struct_2(Struct_1(vec2<u32>(0u, 23288u), 4294967295u, global0.a.c, false, vec4<bool>(false, true, false, true)), 1000f, 897f, vec3<bool>(true, global1.e.x, true)), 2147483647i, _wgslsmith_clamp_i32(1i, global0.a.c, global1.c)), !all(vec3<bool>(global0.d.x, false, global0.d.x)), select(!vec4<bool>(global1.d, false, true, false), vec4<bool>(global1.d, global1.d, global1.d, global0.a.d), global0.a.d)), global0.a), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))) >= _wgslsmith_f_op_f32(-1f), any(!select(global0.d, vec3<bool>(false, true, true), global1.e.x)), all(vec2<bool>(true, global0.a.e.x)), global1.d));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1792f))));
    var var_2 = abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~global1.a.x, ~var_0), vec2<u32>(var_0, global1.a.x) << (~global1.a % vec2<u32>(32u)), abs(~global1.a)));
    var_2 = _wgslsmith_add_vec2_u32(abs(firstTrailingBit(~vec2<u32>(0u, u_input.b) & (vec2<u32>(u_input.b, 2054u) ^ vec2<u32>(global0.a.b, global1.b)))), abs(vec2<u32>(u_input.b, ~var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(select(select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.d), vec3<i32>(global0.a.c, global1.c, 0i)), -vec3<i32>(u_input.a, -7094i, global0.a.c), select(vec3<bool>(true, global1.d, true), global1.e.yww, true)), -(~vec3<i32>(2147483647i, -1i, global1.c)), global0.a.e.zyy), u_input.c.zwz, u_input.c.xyz), _wgslsmith_div_i32(-33662i, _wgslsmith_div_i32(abs(global0.a.c) << (_wgslsmith_clamp_u32(global1.b, 35304u, 1u) % 32u), -global0.a.c)));
}

