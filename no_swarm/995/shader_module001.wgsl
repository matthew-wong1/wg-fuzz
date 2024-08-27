struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(10573i, 1i, -19918i, 45147i, -51142i, -23888i, -80772i, -2429i, 22829i, -14696i, i32(-2147483648), -3163i, 1i, 27210i, 6565i, -24635i, -28712i, -1i, -1i, -50017i, -5925i, -33171i, 1i, 15041i, i32(-2147483648));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(-u_input.a << (vec3<u32>(0u, u_input.b, ~(~5504u)) % vec3<u32>(32u)), vec2<u32>(u_input.b, 46858u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(328f, 1781f, 671f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1052f)), -846f, 1319f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1486f, 385f, -307f), vec3<f32>(-1854f, 2775f, -451f), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1659f, 329f, 293f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(min(365f, -315f))), 106f)))), -(global0[_wgslsmith_index_u32(u_input.b >> (0u % 32u), 25u)] ^ global0[_wgslsmith_index_u32(u_input.b, 25u)]));
    let var_1 = var_0;
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(reverseBits(_wgslsmith_sub_vec3_i32(arg_2.a, arg_2.a)), ~min(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.b)), arg_3.b), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.zz, arg_3.b, vec2<u32>(arg_2.b.x, 1u)), max(vec2<u32>(arg_2.b.x, 4294967295u), arg_0.xz))), arg_3.c, -1271f, i32(-1i) * -18212i);
    let var_1 = func_3();
    global0 = array<i32, 25>();
    let var_2 = u_input.a.x;
    global0 = array<i32, 25>();
    return !vec3<bool>(any(vec3<bool>(var_1, var_1, true)), false, var_1);
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = !select(vec3<bool>(1000f <= _wgslsmith_f_op_f32(trunc(931f)), true, all(vec3<bool>(false, false, false))), !(!func_2(vec3<u32>(arg_0.b.x, 1u, arg_0.b.x), arg_0.a.xy, Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b.x, 25u)], 0i, global0[_wgslsmith_index_u32(4294967295u, 25u)]), arg_0.b, vec3<f32>(-1138f, arg_0.c.x, arg_0.d), 1000f, -2147483647i), Struct_1(vec3<i32>(arg_0.a.x, 2147483647i, -1170i), vec2<u32>(arg_0.b.x, 37235u), vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), 181f, global0[_wgslsmith_index_u32(u_input.b, 25u)]))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true));
    global0 = array<i32, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.d)) - 1f) - 1f)));
    var var_2 = ~(~_wgslsmith_dot_vec2_u32(arg_0.b, ~arg_0.b));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(625f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(865f, -2567f, var_0.x)) + arg_0.c.x)))), -474f));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~arg_0.b, vec2<u32>(reverseBits(1u), u_input.b)), arg_0.b);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = select(!select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, false, any(vec4<bool>(true, false, true, true))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3()), vec4<bool>(arg_1 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_mult_i32(i32(-1i) * -1i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 25u)]) <= ~reverseBits(-1i), all(vec4<bool>(true, func_3(), func_2(vec3<u32>(0u, 53952u, 1u), u_input.a.zx, Struct_1(vec3<i32>(7173i, 39518i, -17452i), arg_3, vec3<f32>(arg_2.x, arg_0, arg_0), arg_1, 1683i), Struct_1(u_input.a, vec2<u32>(u_input.b, 1521u), vec3<f32>(arg_1, arg_2.x, -1174f), 1179f, global0[_wgslsmith_index_u32(53488u, 25u)])).x, true)), false), select(select(vec4<bool>(0u >= arg_3.x, func_3(), any(vec4<bool>(true, true, false, false)), false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, false))), true && select(any(vec2<bool>(false, true)), true, global0[_wgslsmith_index_u32(4294967295u, 25u)] >= -2147483647i)));
    var var_1 = Struct_1(~(~_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 25u)], 1i, global0[_wgslsmith_index_u32(arg_3.x, 25u)]), u_input.a) & ~(-vec3<i32>(-1i, -2147483647i, global0[_wgslsmith_index_u32(arg_3.x, 25u)]))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_3.x, 14884u >> (0u % 32u))), vec2<u32>(func_1(Struct_1(u_input.a, arg_3, vec3<f32>(arg_0, arg_0, arg_0), 387f, u_input.a.x)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), arg_3 >> (arg_3 % vec2<u32>(32u))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1562f, arg_1), arg_0, ~_wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-34664i, u_input.a.x, u_input.a.x), vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b, 25u)], u_input.a.x), vec3<i32>(22353i, -23844i, 1i)), u_input.a, !vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<i32>(1i, -1i, u_input.a.x)));
    let var_2 = all(var_0.yy);
    var_1 = Struct_1(vec3<i32>(max(-40252i, _wgslsmith_sub_i32(abs(1i), ~global0[_wgslsmith_index_u32(993u, 25u)])), firstLeadingBit(u_input.a.x), 2147483647i ^ ~var_1.a.x), var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.c, var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * -684f)))), firstLeadingBit(select(_wgslsmith_dot_vec2_i32(var_1.a.zy, vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(var_1.b.x, 25u)])), _wgslsmith_mult_i32(13258i, -30914i << (1u % 32u)), all(vec3<bool>(false, true, true)))));
    let var_3 = _wgslsmith_dot_vec2_u32(~var_1.b, select(~arg_3, select(_wgslsmith_div_vec2_u32(arg_3, ~vec2<u32>(u_input.b, u_input.b)), arg_3, select(var_0.xx, vec2<bool>(var_0.x, true), true)), var_2));
    return StorageBuffer(vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-26194i, var_1.e, 2147483647i, var_1.e) ^ vec4<i32>(-1650i, u_input.a.x, u_input.a.x, -1i)), max(_wgslsmith_div_vec4_i32(vec4<i32>(15857i, 2147483647i, global0[_wgslsmith_index_u32(var_3, 25u)], 2147483647i), vec4<i32>(0i, u_input.a.x, -1i, u_input.a.x)), vec4<i32>(1i, u_input.a.x, 0i, -29540i) >> (vec4<u32>(60420u, var_1.b.x, var_3, 1u) % vec4<u32>(32u)))), _wgslsmith_mod_i32(1i, u_input.a.x | (39738i ^ u_input.a.x)), var_1.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 0i, global0[_wgslsmith_index_u32(2769u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), -vec4<i32>(u_input.a.x, 1i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 25u)])), reverseBits(u_input.a.x), ~(i32(-1i) * -8243i)), vec4<i32>(~(-25010i), 50887i, global0[_wgslsmith_index_u32(u_input.b, 25u)], ~var_1.e), vec4<i32>(select(23306i, ~var_1.e, func_3()), _wgslsmith_dot_vec2_i32(-u_input.a.xy, -var_1.a.yy), -u_input.a.x, firstLeadingBit(~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1895f)))) * _wgslsmith_f_op_f32(max(-744f, _wgslsmith_f_op_f32(step(816f, _wgslsmith_f_op_f32(abs(-571f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1069f, _wgslsmith_f_op_f32(-1102f + -928f), true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1206f, 266f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1342f, 1003f)))))), ~func_1(Struct_1(firstLeadingBit(vec3<i32>(49560i, -4777i, u_input.a.x)), ~vec2<u32>(4294967295u, u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(279f, -1000f, -939f) - vec3<f32>(-1621f, -239f, -1261f)), _wgslsmith_f_op_f32(f32(-1f) * -510f), select(0i, -2147483647i, true))));
}

