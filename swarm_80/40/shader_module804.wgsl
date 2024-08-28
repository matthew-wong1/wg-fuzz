struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1467f, -741f, -1143f, -141f), true, true, -445f, vec4<f32>(-679f, -421f, 1236f, 536f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    var var_0 = global0.e.xx;
    var var_1 = ~(~(~_wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 12682u, 64334u), vec3<u32>(u_input.a, arg_2, 15158u)), ~vec3<u32>(u_input.a, 20428u, 55670u))));
    let var_2 = !arg_0;
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 0u, ~reverseBits(0u) >> (_wgslsmith_mod_u32(~var_1.x, arg_2) % 32u)), ~select(~vec3<u32>(var_1.x, 4294967295u, 7405u), ~(vec3<u32>(var_1.x, var_1.x, 4294967295u) << (vec3<u32>(43952u, 22850u, arg_2) % vec3<u32>(32u))), vec3<bool>(global0.c | true, true, true)), ~(countOneBits(~vec3<u32>(arg_2, arg_2, u_input.a)) >> (max(_wgslsmith_div_vec3_u32(vec3<u32>(96164u, 48203u, arg_2), vec3<u32>(48710u, 61469u, 38809u)), ~vec3<u32>(1u, u_input.a, 30155u)) % vec3<u32>(32u))));
    var_1 = ~vec3<u32>(4294967295u, arg_2, ~(~_wgslsmith_add_u32(31126u, 0u)));
    return ~abs(arg_2);
}

fn func_2() -> Struct_1 {
    let var_0 = ~func_3(!(!select(global0.c, global0.b, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, -834f)), ~4038u);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -625f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.d))))), _wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, global0.e.x, false))))), global0.b, false, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-416f, 1119f, global0.d, global0.d), vec4<f32>(246f, -544f, global0.d, global0.d), vec4<bool>(true, global0.c, global0.b, false))))))))));
    global0 = var_1;
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.xxx) * vec3<f32>(273f, var_2.d, _wgslsmith_f_op_f32(237f * -1222f))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, _wgslsmith_div_f32(var_3.x, -1138f), var_1.e.x, _wgslsmith_f_op_f32(-var_3.x)))), true, false, _wgslsmith_f_op_f32(trunc(-933f)), var_2.a);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(683f)), global0.e.x, -852f, _wgslsmith_f_op_f32(global0.e.x - -1934f))) - _wgslsmith_f_op_vec4_f32(select(func_2().a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 1000f, global0.e.x, 1437f)), true))), !(!arg_2.c), true, _wgslsmith_f_op_f32(f32(-1f) * -1480f), vec4<f32>(arg_2.d, global0.e.x, arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)))));
    var var_0 = ~(~vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-51323i, 2147483647i), vec2<i32>(2147483647i, 2147483647i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -1i, 6967i), vec4<i32>(2147483647i, 0i, 0i, 0i)), select(1i, 1i, true), _wgslsmith_mult_i32(22425i >> (1u % 32u), 0i)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0.d)), _wgslsmith_div_f32(-124f, arg_2.a.x))), -368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(176f, global0.d, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), global0.a.x))), all(select(select(select(vec4<bool>(false, false, arg_0, global0.c), vec4<bool>(true, true, global0.b, true), false), !vec4<bool>(global0.c, arg_0, arg_2.b, true), vec4<bool>(true, arg_2.b, global0.b, arg_0)), select(!vec4<bool>(false, arg_2.c, global0.c, true), vec4<bool>(false, false, global0.c, true), !vec4<bool>(false, global0.c, global0.b, global0.c)), true)), global0.c, 1123f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.e.x, 1302f, 2075f, 911f))))))));
    var_0 = -_wgslsmith_mod_vec4_i32(select(firstLeadingBit(vec4<i32>(-40046i, var_0.x, 1i, var_0.x)) ^ vec4<i32>(var_0.x, var_0.x, -1i, var_0.x), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 2147483647i, -14728i, var_0.x), vec4<i32>(var_0.x, 26055i, 1354i, 29690i))), select(!vec4<bool>(true, arg_0, true, arg_0), !vec4<bool>(global0.c, arg_2.c, true, false), arg_2.b)), select(vec4<i32>(~var_0.x, _wgslsmith_mod_i32(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 24941i, var_0.x), var_0.xxy), -7989i << (arg_1 % 32u)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 33801i) ^ vec4<i32>(var_0.x, var_0.x, -29695i, var_0.x), ~vec4<i32>(1i, 0i, var_0.x, -2147483647i)), select(vec4<bool>(arg_2.c, true, false, false), select(vec4<bool>(global0.c, global0.c, false, global0.b), vec4<bool>(false, arg_0, arg_2.b, arg_2.b), vec4<bool>(false, true, false, global0.b)), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, false, arg_2.b, arg_0)))));
    var_0 = min(max(-(reverseBits(vec4<i32>(2147483647i, var_0.x, 67112i, -14962i)) | (vec4<i32>(-64307i, var_0.x, -1i, var_0.x) | vec4<i32>(7974i, -1i, -25825i, var_0.x))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.x & -93808i, 14747i, -57453i), vec4<i32>(firstLeadingBit(var_0.x), var_0.x, ~31555i, reverseBits(var_0.x)))), vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.zx, vec2<i32>(var_0.x, var_0.x)), vec2<i32>(var_0.x, var_0.x) << (vec2<u32>(75908u, arg_1) % vec2<u32>(32u))), ~var_0.x, var_0.x, 1i));
    return ~(-10007i);
}

fn func_1() -> bool {
    let var_0 = -2147483647i & -func_4(true, 1u, func_2());
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(global0.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.e.x))))), _wgslsmith_f_op_f32(exp2(global0.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1138f), _wgslsmith_f_op_f32(global0.e.x * -241f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.e.x)))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0, 0i), -vec2<i32>(2147483647i, 1i)) > 1i, global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(global0.a.x, 1497f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.a.x, 419f)), _wgslsmith_f_op_f32(f32(-1f) * -336f)))), _wgslsmith_f_op_f32(exp2(global0.d))), vec4<f32>(_wgslsmith_f_op_f32(-func_2().e.x), global0.a.x, _wgslsmith_f_op_f32(round(-1522f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-470f * -562f), _wgslsmith_f_op_f32(min(-763f, global0.d))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e - _wgslsmith_div_vec4_f32(global0.a, global0.e)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.a)))) * _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.e * vec4<f32>(-331f, global0.a.x, global0.a.x, 2120f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.e.x, -426f, global0.a.x, -705f), vec4<f32>(global0.e.x, global0.e.x, global0.d, -197f))))))), true, true, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(402f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1485f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - global0.d)), -1340f) - vec4<f32>(-1113f, 389f, -177f, -148f)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(global0.e)), func_1() || !global0.c, !((u_input.a <= func_3(global0.c, global0.e.yw, u_input.a)) && true), _wgslsmith_f_op_f32(-global0.a.x), vec4<f32>(global0.d, _wgslsmith_f_op_f32(-1f), -674f, _wgslsmith_f_op_f32(global0.d - -2090f)));
    let var_0 = vec4<bool>(true && !(global0.b != true), true, (~u_input.a | 0u) >= ~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(0u, 1u, 29761u, u_input.a))), global0.b);
    let var_1 = func_2();
    let var_2 = -1072f;
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e.wxy * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.e.yzw), _wgslsmith_f_op_vec3_f32(floor(var_3.a.wxw)))))), var_3.a.x, vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 23847i, -23722i), vec3<i32>(38095i, 0i, 1i))), -firstLeadingBit(1i), abs(-(~(-26647i))), 1i));
}

