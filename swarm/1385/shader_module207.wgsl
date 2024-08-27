struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(16199u, 4294967295u, 1u);

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<bool>, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<u32> {
    var var_0 = 1u;
    let var_1 = !(!(!select(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, true), true)));
    let var_2 = Struct_3(~_wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -68703i), vec2<i32>(-2147483647i, 0i)), vec2<i32>(1i, 1i)), Struct_2(-2147483647i, Struct_1(global0.x, vec2<bool>(true, true), (u_input.b.xz << (vec2<u32>(1u, global0.x) % vec2<u32>(32u))) | u_input.a.zx, max(u_input.b.x, 0u), min(-1i, -2609i))));
    var_0 = u_input.b.x;
    global0 = u_input.a;
    return ~vec4<u32>(global0.x, global0.x, 397u, ~1u);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<f32>) -> Struct_3 {
    global0 = _wgslsmith_sub_vec3_u32(u_input.b, u_input.b);
    global0 = vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(func_3(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), 563f), vec4<u32>(82233u, select(~u_input.a.x, ~4294967295u, true), 4294967295u, arg_1)), 0u);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), 3545f)))), _wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(max(-381f, global1.x)));
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_div_u32(global0.x, ~u_input.b.x);
    return Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(1i), ~(~0i)), vec2<i32>(1i, 1i) & (abs(vec2<i32>(2147483647i, 32543i)) >> (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u)))), Struct_2(-reverseBits(i32(-1i) * -1i), Struct_1(~0u | abs(u_input.b.x), vec2<bool>(true, true), select(u_input.b.zy, select(vec2<u32>(18831u, arg_1), vec2<u32>(83408u, 1u), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), global0.x, -2147483647i)));
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    global2 = array<vec4<bool>, 9>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))))) + vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, -134f)) + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), 1000f)))));
    var var_0 = -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(arg_0.b.b.e, arg_0.a.x, arg_0.a.x, 1i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-47394i, arg_0.b.a, -2147483647i, 1i), vec4<i32>(-2147483647i, 20501i, arg_0.b.a, 8318i) << (vec4<u32>(1u, u_input.b.x, 16315u, 49289u) % vec4<u32>(32u)))), vec4<i32>(-1i, -firstLeadingBit(1i), arg_0.a.x, arg_0.b.a));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-2408f * global1.x), -1343f))));
    var var_1 = global1.x;
    return !select(!select(!arg_0.b.b.b, !arg_0.b.b.b, vec2<bool>(true, arg_0.b.b.b.x)), vec2<bool>(true, (arg_0.b.b.b.x || arg_0.b.b.b.x) & any(vec3<bool>(arg_0.b.b.b.x, false, false))), func_2(-1179f, 7755u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(651f, global1.x, global1.x) - vec3<f32>(873f, global1.x, global1.x)))).b.b.b);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = ~max(-(-2147483647i >> (~u_input.b.x % 32u)), ~_wgslsmith_mod_i32(0i, arg_0));
    var var_1 = vec2<bool>(arg_1.x, true);
    var_1 = !(!func_4(func_2(_wgslsmith_div_f32(860f, global1.x), ~27320u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(307f, -725f, 736f), vec3<f32>(global1.x, 1000f, global1.x), arg_1.x)))));
    var var_2 = true;
    let var_3 = Struct_2(1i, func_2(_wgslsmith_f_op_f32(abs(632f)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 1u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(41477u, global0.x))), _wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_clamp_vec3_u32(u_input.a, u_input.b, vec3<u32>(global0.x, 1u, u_input.a.x))), global0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1681f, global1.x)) + _wgslsmith_f_op_f32(-global1.x)), -1551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).b.b);
    return func_2(_wgslsmith_f_op_f32(f32(-1f) * -608f), 25250u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1108f, -609f, 570f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, _wgslsmith_f_op_f32(-1123f + -894f), global1.x)))).b.b;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    global2 = array<vec4<bool>, 9>();
    var var_0 = global1.x;
    var var_1 = global1.x;
    let var_2 = ~abs(~(~arg_1.c));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1626f))), global1.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), 967f)));
    return Struct_2(-abs(arg_0.b.a & _wgslsmith_mod_i32(-3987i, 9128i)), func_1(-1i, func_4(func_2(global1.x, 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -594f, -194f))))));
}

fn func_6(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1150f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(173f, arg_0, global1.x))), vec3<bool>(arg_2.b.b.b.x, false, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, global1.x, 247f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -259f, arg_0), vec3<f32>(153f, -621f, 1799f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 541f, global1.x), vec3<f32>(global1.x, -856f, 609f), arg_3.b.b.x)))))));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_0, -317f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1343f, 649f, global1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2139f, 567f, 1000f) * vec3<f32>(global1.x, global1.x, global1.x)))) + vec3<f32>(global1.x, -836f, 533f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-585f, 689f, 429f), vec3<f32>(arg_0, global1.x, arg_0)), vec3<f32>(arg_0, global1.x, -292f), !vec3<bool>(arg_3.b.b.x, arg_2.b.b.b.x, arg_2.b.b.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1112f, arg_0))))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1122f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, arg_0)) * -1082f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, arg_0))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(208f, 2141f, -227f) + vec3<f32>(-572f, 458f, arg_0)))) - vec3<f32>(global1.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(921f, _wgslsmith_f_op_f32(511f * global1.x)))));
    var var_0 = !select(select(!vec3<bool>(false, arg_3.b.b.x, true), vec3<bool>(true, false, arg_3.b.b.x), select(vec3<bool>(arg_2.b.b.b.x, arg_3.b.b.x, arg_2.b.b.b.x), !vec3<bool>(false, arg_3.b.b.x, arg_2.b.b.b.x), vec3<bool>(true, false, false))), vec3<bool>(true, true, any(!global2[_wgslsmith_index_u32(0u, 9u)])), true);
    global0 = vec3<u32>(~(~59693u), ~(~4294967295u), _wgslsmith_div_u32(~(~1u << (func_1(60067i, vec2<bool>(arg_3.b.b.x, arg_2.b.b.b.x)).c.x % 32u)), ~arg_3.b.a));
    return vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 1801f, -1221f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 812f, global1.x) - vec3<f32>(global1.x, global1.x, 1114f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, -401f, -258f) + _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 492f, global1.x), vec3<f32>(global1.x, -566f, 2153f))), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))), vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))))) * _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-733f, global1.x)))))), reverseBits(-countOneBits(vec3<i32>(25615i, 2147483647i, 2147483647i))), Struct_3(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -2147483647i), func_5(Struct_3(vec2<i32>(-1i, -36249i), Struct_2(38878i, Struct_1(4294967295u, vec2<bool>(false, false), vec2<u32>(34064u, 0u), 60773u, 0i))), func_1(-2441i, vec2<bool>(true, true)))), Struct_2(select(758i, -1i, select(false, true, true)), Struct_1(u_input.a.x, vec2<bool>(true, true), vec2<u32>(24696u, 38136u), countOneBits(global0.x), 1i)))));
    let var_0 = func_5(Struct_3(vec2<i32>(0i, _wgslsmith_mod_i32(0i, func_2(2655f, 4294967295u, vec3<f32>(global1.x, -1000f, global1.x)).b.a)), Struct_2(firstTrailingBit(abs(2147483647i)), func_5(Struct_3(vec2<i32>(2147483647i, 1i), Struct_2(-2147483647i, Struct_1(1u, vec2<bool>(false, true), u_input.b.xz, 64579u, 2147483647i))), func_5(Struct_3(vec2<i32>(51492i, -30779i), Struct_2(16829i, Struct_1(33771u, vec2<bool>(false, false), global0.xy, 34230u, -2147483647i))), Struct_1(global0.x, vec2<bool>(true, true), global0.zz, 69674u, 1i)).b).b)), Struct_1(min(_wgslsmith_mult_u32(u_input.a.x & 37628u, 87714u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.x, u_input.a.x), u_input.a.x << (global0.x % 32u))), !select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), firstLeadingBit(~firstLeadingBit(u_input.a.yx)), 1u, reverseBits(1i))).b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_6(global1.x, ~abs(reverseBits(vec3<i32>(var_0.e, 28218i, -2147483647i))), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.x)))), ~var_0.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1095f, global1.x, global1.x)))), Struct_2(_wgslsmith_mult_i32(var_0.e, var_0.e) ^ 0i, Struct_1(42890u, vec2<bool>(var_0.b.x, var_0.b.x), global0.xy, 27592u, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, 1i, var_0.e), vec3<i32>(var_0.e, -1i, 13668i)))))).x);
    var_1 = -550f;
    var var_2 = Struct_3(_wgslsmith_sub_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.e, 0i), vec2<i32>(var_0.e, -2147483647i)), vec2<i32>(var_0.e, var_0.e), !vec2<bool>(var_0.b.x, true)), func_2(global1.x, var_0.c.x, vec3<f32>(688f, global1.x, 1210f)).a ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-52940i, var_0.e), vec2<i32>(var_0.e, 0i))) >> (var_0.c % vec2<u32>(32u)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_f_op_f32(select(345f, global1.x, var_0.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-699f, -663f))))), ~min(global0.x, countOneBits(5786u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, global1.x))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(29310i, var_0.e), ~vec2<i32>(var_0.e, 2147483647i)) & 8792i), func_1(38978i, var_2.b.b.b).c.x);
}

