struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), 904f);

var<private> global1: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) - _wgslsmith_f_op_f32(-arg_2.b)), -2990f))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(-760f * global0.b), any(vec2<bool>(true, arg_1.x)))) - arg_2.b))) - 686f);
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(ceil(1947f));
    var var_2 = Struct_2(-568f, -(_wgslsmith_mod_vec4_i32(arg_3, vec4<i32>(29639i, arg_3.x, arg_3.x, arg_3.x) << (u_input.b % vec4<u32>(32u))) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0, 44730u, 0u), u_input.b)) % vec4<u32>(32u))), select(u_input.b.yx, ~firstLeadingBit(vec2<u32>(u_input.b.x, 48277u)), true));
    return _wgslsmith_f_op_f32(f32(-1f) * -841f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    global0 = Struct_1(!vec4<bool>(global0.a.x, all(vec4<bool>(global0.a.x, true, true, arg_0.a.x)) & arg_0.a.x, select(u_input.b.x <= arg_1.x, select(true, true, true), all(arg_0.a)), _wgslsmith_f_op_f32(func_3(arg_0, global0.a, arg_0, vec4<i32>(0i, arg_2, arg_2, 111395i))) == _wgslsmith_f_op_f32(ceil(-480f))), global0.b);
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, ~(~u_input.b.x), _wgslsmith_sub_u32(0u, u_input.b.x)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.x, 22700u), arg_1.xyy))), vec3<u32>(~var_0.x, select(34468u, min(arg_1.x, 21089u), all(global0.a)), 1u), vec3<u32>(min(3087u >> (arg_1.x % 32u), _wgslsmith_mult_u32(4294967295u, 0u)), firstLeadingBit(arg_1.x >> (6517u % 32u)), var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b))));
    let var_3 = Struct_2(-146f, ~(select(vec4<i32>(-1i, arg_2, arg_2, arg_2), -vec4<i32>(-1i, 2147483647i, 0i, -56035i), global0.a.x) << (~(~vec4<u32>(1u, 11925u, var_0.x, arg_1.x)) % vec4<u32>(32u))), ~var_0.xx);
    return min(reverseBits(-34018i), arg_2);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = vec4<bool>(any(!select(vec3<bool>(true, false, global0.a.x), !vec3<bool>(true, false, global0.a.x), true)), global0.a.x, any(vec2<bool>(global0.a.x, !(!global0.a.x))), 0i < select(abs(func_2(Struct_1(global0.a, -1104f), u_input.b, arg_2)), -35717i, all(!vec2<bool>(global0.a.x, global0.a.x))));
    var var_1 = -276f;
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    var_2 = Struct_1(global0.a, 1000f);
    var var_3 = u_input.b.wy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1)))) + _wgslsmith_f_op_f32(-var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(func_1(~_wgslsmith_add_i32(1i, -27955i), global0.b, 2772i)));
    var var_0 = max(19112i, abs(-1i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b))));
    var_0 = ~(~(-22584i >> (firstTrailingBit(countOneBits(u_input.b.x)) % 32u)));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1))), _wgslsmith_f_op_f32(floor(680f))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 34258i, -1i), -vec3<i32>(-2147483647i, -63572i, -1i)), select(-14889i, max(1i, 2147483647i), !global0.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -1i, -10870i) << (u_input.b.wxz % vec3<u32>(32u))) | abs(5357i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, 0i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(1i, 94i, -2147483647i))), select(1i, ~(-66049i), global0.a.x), -5892i), 1i), min(~u_input.b.yy, ~vec2<u32>(min(u_input.b.x, 4294967295u), u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1080f - 402f), -563f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(903f * 395f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.a, global0.b), vec2<f32>(global0.b, global0.b)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(970f, var_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(801f, 1796f))))), 77410u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b, var_1), vec2<f32>(var_1, var_2.a))))), vec2<f32>(var_2.a, _wgslsmith_f_op_f32(var_1 - global0.b)), select(global0.a.yw, select(global0.a.wy, global0.a.wy, vec2<bool>(false, global0.a.x)), select(global0.a.xw, vec2<bool>(global0.a.x, false), false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1029f, var_2.a)))))), ~max(~0u, reverseBits(_wgslsmith_add_u32(u_input.b.x, u_input.b.x))));
}

