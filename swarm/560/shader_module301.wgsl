struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    return Struct_1(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, -38277i, 1i) & firstLeadingBit(vec3<i32>(-11172i, -1i, 19186i)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(0i, 32555i, arg_1)), _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(-1i, u_input.a, u_input.d.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(61761u ^ u_input.c, 27u)], 1215f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 27u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 27u)] * 809f)), -392f, arg_2 >= 4294967295u)), global1[_wgslsmith_index_u32(arg_2, 27u)]));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global0 = u_input.a;
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-292f, arg_1.x)))), func_2(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(33398u, 20941u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u)), select(vec2<u32>(u_input.c, u_input.b), vec2<u32>(30428u, u_input.c), arg_2.d)), _wgslsmith_dot_vec3_i32(arg_2.c.a, min(u_input.d, _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(-5252i, -19262i, u_input.a)))), ~u_input.c), Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.d.x, -34899i, -36095i), u_input.d, vec3<bool>(arg_2.d.x, false, arg_2.d.x)), -vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), vec3<i32>(~(-64525i), _wgslsmith_sub_i32(-60981i, u_input.a), -1i)), arg_0.b), select(!arg_2.d, arg_2.d, all(select(select(vec3<bool>(false, false, true), vec3<bool>(arg_2.d.x, arg_2.d.x, true), vec3<bool>(true, true, arg_2.d.x)), select(vec3<bool>(arg_2.d.x, false, true), vec3<bool>(true, false, false), vec3<bool>(arg_2.d.x, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_2.d.x, arg_2.d.x), vec3<bool>(arg_2.d.x, false, arg_2.d.x))))), vec4<f32>(-939f, _wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(873f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-118f + 1729f) - _wgslsmith_div_f32(arg_0.b.x, 421f)) * 1193f)));
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    global0 = firstLeadingBit(37719i);
    return func_2(select(_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, min(u_input.b, 76u)), firstLeadingBit(vec2<u32>(u_input.b, u_input.b))), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(80189u, u_input.b)), ~firstLeadingBit(vec2<u32>(u_input.c, u_input.b))), !(!var_0.d.x) && true), -2147483647i, _wgslsmith_add_u32(10699u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, ~u_input.c), ~_wgslsmith_mult_vec2_u32(vec2<u32>(7902u, u_input.c), vec2<u32>(86997u, u_input.b)))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = countOneBits(vec4<u32>(u_input.c, u_input.b, ~u_input.c, 0u) ^ select(~vec4<u32>(u_input.b, 36308u, 423u, 75582u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, u_input.c, 1u), vec4<u32>(u_input.c, u_input.b, 0u, u_input.c)), true)) | max(vec4<u32>(_wgslsmith_mod_u32(~u_input.c, ~42461u), (0u >> (u_input.b % 32u)) >> (max(4294967295u, 34978u) % 32u), u_input.c, u_input.c), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.c, 1u, 0u, 26010u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28515u, 4294967295u, u_input.b, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.b, 48319u)), _wgslsmith_div_u32(u_input.b, 25045u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(4294967295u, u_input.c)), u_input.c >> (u_input.c % 32u))));
    global1 = array<f32, 27>();
    var var_1 = firstTrailingBit(55782u) >> (firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x) | var_0.xyx, vec3<u32>(u_input.b, var_0.x, u_input.c))) % 32u);
    var var_2 = Struct_3(u_input.d.xy, ~(1u >> (_wgslsmith_clamp_u32(~u_input.b, 25737u, var_0.x) % 32u)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-1159f + arg_0.b.x), Struct_1(~(~(-arg_0.a)), _wgslsmith_f_op_vec3_f32(trunc(arg_0.b))), arg_0, vec2<bool>(~var_2.b != var_2.b, true && all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, 1185f, -2290f, -663f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(var_2.b, 27u)], arg_0.b.x, global1[_wgslsmith_index_u32(5895u, 27u)])) + vec4<f32>(arg_0.b.x, arg_0.b.x, global1[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]))))));
    return ~(~func_3(func_3(Struct_1(vec3<i32>(arg_0.a.x, -1i, var_2.a.x), var_3.b.b), var_3.b.b.yx, Struct_2(arg_0.b.x, var_3.c, var_3.b, var_3.d, var_3.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 27u)], -239f)), var_3).a.x);
}

fn func_1() -> Struct_3 {
    global0 = reverseBits(func_4(func_3(Struct_1(~vec3<i32>(10022i, u_input.a, u_input.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)]) * vec3<f32>(-371f, global1[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)]))), vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(36956u, 27u)], -1449f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1487u, 27u)])), Struct_2(1000f, Struct_1(vec3<i32>(u_input.d.x, -4933i, u_input.a), vec3<f32>(996f, global1[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])), func_2(vec2<u32>(u_input.b, u_input.b), u_input.d.x, 0u), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-652f, -997f, -455f, global1[_wgslsmith_index_u32(33560u, 27u)]))))));
    let var_0 = Struct_2(737f, Struct_1(-(~vec3<i32>(u_input.a, u_input.d.x, 0i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 27u)])), _wgslsmith_f_op_f32(f32(-1f) * -1950f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(658f, -1000f))))), Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 27u)])), global1[_wgslsmith_index_u32(~34154u, 27u)], -1000f)))), !vec2<bool>(true, select(1u < u_input.b, true, global1[_wgslsmith_index_u32(67455u, 27u)] >= 535f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2605f, 298f, -854f, -820f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 27u)], -427f, -2665f, global1[_wgslsmith_index_u32(u_input.b, 27u)])))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1877f, global1[_wgslsmith_index_u32(u_input.b, 27u)], 175f, 2047f)))))));
    var var_1 = true;
    var var_2 = all(!vec4<bool>(any(!vec4<bool>(false, false, var_0.d.x, true)), all(!vec2<bool>(var_0.d.x, var_0.d.x)), var_0.d.x, true));
    let var_3 = Struct_2(1244f, Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, global1[_wgslsmith_index_u32(11853u, 27u)], 572f)) - var_0.b.b))), var_0.b, vec2<bool>(func_3(func_2(vec2<u32>(32232u, u_input.b), -2147483647i, 28621u), _wgslsmith_f_op_vec2_f32(var_0.b.b.yy + vec2<f32>(var_0.b.b.x, -1864f)), var_0).a.x <= _wgslsmith_clamp_i32(-var_0.c.a.x, -34233i, ~var_0.c.a.x), true), var_0.e);
    return Struct_3(vec2<i32>(var_3.c.a.x, ~(-2147483647i)) << (~((vec2<u32>(109984u, u_input.c) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))) << (~vec2<u32>(u_input.b, 83605u) % vec2<u32>(32u))) % vec2<u32>(32u)), select(abs(26383u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(19374u, u_input.c)) >> (~u_input.c % 32u), all(vec2<bool>(all(vec3<bool>(false, false, var_0.d.x)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<f32, 27>();
    var var_1 = -68842i;
    var var_2 = var_0;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(20466u, min(var_3.a.x, ~var_3.a.x), 1i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 30210i) ^ vec3<i32>(72499i, -2147483647i, var_0.a.x), reverseBits(vec3<i32>(2147483647i, -1i, -19218i))), vec2<i32>(_wgslsmith_div_i32(-643i, _wgslsmith_clamp_i32(countOneBits(-1i), _wgslsmith_div_i32(u_input.a, u_input.d.x), i32(-1i) * -14432i)), -37719i));
}

