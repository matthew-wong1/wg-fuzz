struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    return !vec2<bool>(any(vec2<bool>(select(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true, true), global0[_wgslsmith_index_u32(~u_input.b.x, 10u)])), any(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(21170u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), global0[_wgslsmith_index_u32(60155u, 10u)]), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false, global0[_wgslsmith_index_u32(0u, 10u)]))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = Struct_3(!(!(!func_3(arg_1))), Struct_2(vec3<bool>(arg_0, all(vec4<bool>(arg_3, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(39362u, 10u)], true)), arg_3)), _wgslsmith_f_op_f32(sign(118f)), global0[_wgslsmith_index_u32(max(u_input.b.x, countOneBits(u_input.b.x) ^ u_input.b.x), 10u)]);
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.a) & vec3<i32>(-1i, -73405i, u_input.a), -vec3<i32>(0i, -2147483647i, 2147483647i)) >> (~vec3<u32>(u_input.b.x, u_input.b.x, 24973u) % vec3<u32>(32u)), vec3<i32>(countOneBits(countOneBits(arg_1)), 2147483647i, 1i)));
    let var_2 = 618f;
    global0 = array<bool, 10>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1035f) + _wgslsmith_f_op_f32(step(1463f, -311f))), -1063f), var_0.c, _wgslsmith_f_op_f32(-var_2));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec3<u32>) -> i32 {
    global0 = array<bool, 10>();
    var var_0 = Struct_3(arg_2.b.a.xx, Struct_2(arg_2.b.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2.c, -1364f)), -1205f))), _wgslsmith_f_op_f32(select(1350f, arg_2.c, select(arg_2.b.a.x, global0[_wgslsmith_index_u32(0u, 10u)], any(vec3<bool>(arg_2.a.x, true, arg_2.b.a.x))))))), false);
    let var_1 = Struct_3(!arg_2.a, Struct_2(!select(var_0.b.a, vec3<bool>(arg_2.d, var_0.a.x, arg_2.a.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), !(!(1u < u_input.b.x)));
    var var_2 = firstTrailingBit(4294967295u);
    var var_3 = arg_2;
    return -1i;
}

fn func_1(arg_0: vec2<bool>) -> vec2<u32> {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_0 = !(func_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(4337u, 1u, u_input.b.x)), 10u)], -2147483647i, _wgslsmith_f_op_f32(-3278f * 1693f), global0[_wgslsmith_index_u32(0u, 10u)] && arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(686f, 917f, -939f, 448f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, -347f, 240f, 1415f))), Struct_3(!vec2<bool>(global0[_wgslsmith_index_u32(49533u, 10u)], arg_0.x), Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(78354u, 10u)], false, true)), _wgslsmith_f_op_f32(trunc(763f)), any(vec2<bool>(false, true))), _wgslsmith_clamp_vec3_u32(abs(u_input.b), vec3<u32>(u_input.b.x, 27401u, u_input.b.x) & u_input.b, firstLeadingBit(u_input.b))) < countOneBits(max(-33603i >> (1u % 32u), -32759i)));
    let var_1 = vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 40198u) | reverseBits(12698u), u_input.b.x << (~u_input.b.x % 32u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, ~u_input.b.x) & 18579u, u_input.b.x), _wgslsmith_div_u32(4294967295u, u_input.b.x));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zz, vec2<u32>(~76078u, ~firstTrailingBit(u_input.b.x)), u_input.b.xy), ~vec2<u32>(~56870u, ~(~var_1.x)));
}

fn func_5(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = array<bool, 10>();
    var var_0 = vec2<bool>(all(vec3<bool>(any(!vec3<bool>(false, global0[_wgslsmith_index_u32(15879u, 10u)], true)), _wgslsmith_clamp_i32(u_input.a, -24572i, u_input.a) <= 2147483647i, any(vec3<bool>(global0[_wgslsmith_index_u32(17354u, 10u)], true, global0[_wgslsmith_index_u32(3538u, 10u)])))), (157f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2461f)))) | false);
    var var_1 = ~_wgslsmith_sub_vec2_i32(select(vec2<i32>(~47095i, abs(u_input.a)), vec2<i32>(-1839i, -2147483647i), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 10u)]), true)), vec2<i32>(~u_input.a, 0i));
    global0 = array<bool, 10>();
    var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a | 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(u_input.a, var_1.x))), select(var_1.x, var_1.x, global0[_wgslsmith_index_u32(73141u, 10u)]) | u_input.a, 1i >> (1u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(-8500i, 30872i, -17624i), vec3<i32>(u_input.a, var_1.x, var_1.x))), vec4<i32>(~u_input.a, 32980i, 1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, u_input.a), vec2<i32>(var_1.x, var_1.x))))), countOneBits(var_1.x));
    return ~select(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 0u, 65339u), vec4<u32>(u_input.b.x, 42773u, 41937u, arg_0.x)), 66031u), firstTrailingBit(~0u), min(~arg_0.x, arg_0.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 0u, 0u), firstTrailingBit(abs(vec4<u32>(u_input.b.x, 0u, arg_0.x, 0u)))), false);
}

fn func_6(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(-1i) * -min(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, 17920i, u_input.a)), vec4<i32>(21024i, u_input.a, 2147483647i, u_input.a | -45678i));
    global0 = array<bool, 10>();
    let var_1 = -156f;
    global0 = array<bool, 10>();
    let var_2 = 592f;
    return Struct_2(select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(88424u, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true, true), global0[_wgslsmith_index_u32(1u, 10u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)], false), global0[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(~48191u, 10u)] && func_3(0i).x, true, any(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.x, 10u)], true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], false, global0[_wgslsmith_index_u32(0u, 10u)]), global0[_wgslsmith_index_u32(632u, 10u)]))), !(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), global0[_wgslsmith_index_u32(u_input.b.x, 10u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 75618u, u_input.b.x, 40633u), vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x))) == _wgslsmith_div_u32(~36224u, _wgslsmith_mult_u32(39342u, u_input.b.x))), any(select(vec2<bool>(global0[_wgslsmith_index_u32(~u_input.b.x, 10u)], false), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true)) != global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), false, !(!all(vec4<bool>(global0[_wgslsmith_index_u32(49334u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true))));
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_1 = Struct_3(!(!select(select(vec2<bool>(var_0.x, true), var_0.ww, var_0.zw), select(var_0.zz, var_0.zz, vec2<bool>(true, false)), vec2<bool>(true, true))), func_6(func_5(func_1(select(vec2<bool>(false, true), var_0.zw, vec2<bool>(var_0.x, true))))), -281f, false);
    let var_2 = var_1.b;
    global0 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec2<u32>(1u, u_input.b.x));
}

