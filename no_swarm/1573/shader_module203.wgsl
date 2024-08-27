struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global1: vec3<i32>;

var<private> global2: f32 = -418f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global1 = ~vec3<i32>(min(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.e.x), vec2<i32>(39053i, 2147483647i))), _wgslsmith_add_i32(0i, min(2147483647i, global1.x)), -u_input.e.x) ^ vec3<i32>(1i, 2147483647i, _wgslsmith_sub_i32(i32(-1i) * -global1.x, -(-2147483647i ^ global1.x)));
    let var_0 = 32583u;
    let var_1 = 3176i;
    let var_2 = _wgslsmith_mod_u32(9551u, ~(~(~(~var_0))));
    var var_3 = vec3<bool>(true, true, any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))) && true);
    return -9913i;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_1(vec3<bool>(true, any(vec4<bool>(global1.x < global1.x, !arg_0.x, true, !arg_0.x)), true), i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_div_i32(1i, -25946i), u_input.b), vec3<i32>(u_input.e.x, 0i, func_3()), countOneBits((vec3<i32>(29460i, 2147483647i, -2147483647i) >> (~vec3<u32>(2720u, 1u, u_input.a.x) % vec3<u32>(32u))) ^ -firstTrailingBit(vec3<i32>(-18258i, 26876i, 1i))), arg_0.x);
    let var_1 = !((_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1069f, -393f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) * _wgslsmith_div_f32(291f, 456f))) || var_0.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1087f, 210f, -1378f, 1460f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-522f, -1123f, -209f, 938f) - vec4<f32>(1074f, 398f, -258f, -1378f)) + vec4<f32>(1000f, 2560f, 1892f, -1305f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, 492f, 1808f, 1194f)), vec4<f32>(-2478f, -733f, -1667f, 1533f)))), vec4<f32>(1f, 1f, 1f, 1f))), !select(!vec4<bool>(var_1, var_1, true, var_0.e), vec4<bool>(true, true, any(global0[_wgslsmith_index_u32(4294967295u, 6u)]), var_0.e), any(select(vec4<bool>(var_1, arg_0.x, arg_0.x, var_1), vec4<bool>(true, arg_0.x, true, false), true)))));
    let var_3 = ~_wgslsmith_mod_vec3_u32(min(vec3<u32>(~4294967295u, 0u, 1u), max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(u_input.d, 1u, 38226u)), abs(vec3<u32>(u_input.a.x, u_input.c, 65350u)))), ~(~(vec3<u32>(u_input.d, u_input.c, 0u) << (vec3<u32>(4294967295u, 1u, u_input.d) % vec3<u32>(32u)))));
    var var_4 = ~1u;
    return 1216f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>) -> bool {
    let var_0 = any(select(global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(select(19666u, 1u, arg_0.e), 6u)], select(!vec3<bool>(false, arg_0.e, arg_0.e), select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(true, arg_0.a.x, arg_0.a.x), false), vec3<bool>(true, true, true)))) & true;
    var var_1 = vec3<f32>(1081f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(-225f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1155f) * arg_1.x), true))));
    global2 = -535f;
    let var_2 = Struct_2(select(select(vec3<bool>(all(vec3<bool>(var_0, var_0, arg_0.e)), true, true), vec3<bool>(var_0, !var_0, arg_1.x <= arg_2.x), !(!arg_0.a)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(firstTrailingBit(21938u), _wgslsmith_mod_u32(u_input.a.x, 0u)), max(_wgslsmith_clamp_u32(u_input.c, u_input.d, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, 61983u, 0u), vec4<u32>(u_input.d, u_input.c, u_input.d, 1u)))), 6u)], global1.x != 27397i), Struct_1(arg_0.a, global1.x, _wgslsmith_clamp_vec3_i32(arg_0.d, vec3<i32>(-2147483647i, ~(-52141i), -u_input.b), arg_0.d), arg_0.d, true), vec3<bool>(any(select(!vec2<bool>(arg_0.a.x, var_0), arg_0.a.zz, arg_0.a.zz)), select(arg_0.a.x, true, any(!vec4<bool>(arg_0.a.x, var_0, var_0, arg_0.e))), var_1.x != arg_1.x), Struct_1(!vec3<bool>(!arg_0.a.x, arg_0.b >= global1.x, true), -2147483647i, vec3<i32>(2147483647i, global1.x >> (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, global1.x), vec3<i32>(27265i, u_input.b, -2147483647i)))), select(arg_0.d, vec3<i32>(u_input.b >> (u_input.a.x % 32u), u_input.b, u_input.b), arg_0.a.x), true));
    var var_3 = ~u_input.a;
    return arg_0.a.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(func_4(Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(~u_input.c, 6u)]), 5422i, -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -29395i, global1.x), vec3<i32>(global1.x, global1.x, u_input.e.x)), select(_wgslsmith_add_vec3_i32(vec3<i32>(43292i, 31072i, 1i), vec3<i32>(6078i, 1i, u_input.e.x)), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), all(vec2<bool>(true, false))), ~u_input.d <= 19353u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1887f, -2101f, -146f, -1260f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-860f, 687f, 1163f, -809f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))), _wgslsmith_f_op_f32(step(266f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-301f, 747f) + vec2<f32>(-985f, -432f))))), ~(~u_input.a.x) != u_input.d, all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    global2 = _wgslsmith_f_op_f32(round(-1184f));
    global0 = array<vec3<bool>, 6>();
    let var_1 = select(~(~global1.xy), -(u_input.e ^ (u_input.e ^ firstTrailingBit(u_input.e))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, var_0), var_0), select(vec2<bool>(var_0, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, var_0)), true)), select(vec2<bool>(!var_0, var_0), vec2<bool>(var_0, false), any(!vec3<bool>(var_0, var_0, var_0))), var_0));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(204f)) + _wgslsmith_f_op_f32(func_2(vec2<bool>(true, var_0)))))));
    return StorageBuffer(-2408i << (u_input.d % 32u), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(~0u, _wgslsmith_add_u32(u_input.c, u_input.a.x), u_input.c), vec3<u32>(26950u, ~8319u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d), vec4<u32>(0u, 0u, u_input.c, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -483f))), vec4<f32>(651f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1027f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1580f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(601f)) - 730f), -1198f)), 1918f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, -2147483647i != (i32(-1i) * -_wgslsmith_mult_i32(u_input.e.x, global1.x)));
    let var_1 = vec3<bool>(true, !((2147483647i != global1.x) && (var_0.x | !var_0.x)), true);
    let x = u_input.a;
    s_output = func_1();
}

