struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -13030i;

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_1 = global1[_wgslsmith_index_u32(43040u, 7u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -529f))), _wgslsmith_f_op_f32(-817f * 1000f), 900f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * _wgslsmith_f_op_f32(606f + -731f)))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * -599f))))) * -1180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2165f) - _wgslsmith_f_op_f32(587f - arg_2)))))));
    let var_3 = Struct_1(var_1.a, var_0.b);
    return 818f;
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(1u, firstTrailingBit(1u))), 7u)];
    let var_1 = select(-18350i << (_wgslsmith_clamp_u32(u_input.b.x, 5315u, 4294967295u) % 32u), u_input.c, false == select(var_0.b.x, all(vec2<bool>(var_0.b.x, true)), _wgslsmith_f_op_f32(arg_0.x + 164f) > _wgslsmith_f_op_f32(func_3(var_0.b.x, arg_0.x, -1976f))));
    global0 = 1i;
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, ~u_input.a.x), vec2<i32>(abs(-6073i), ~reverseBits(2147483647i)));
    return vec3<u32>(u_input.d.x, max(~(~62395u), u_input.d.x), ~(~(~(~u_input.b.x))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    var var_0 = global1[_wgslsmith_index_u32(~abs(func_2(vec2<f32>(_wgslsmith_f_op_f32(1000f - 342f), -987f)).x), 7u)];
    return global1[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(572f, -180f), vec2<f32>(1000f, 1519f), var_0.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1102f, 1751f)))))).x, 7u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: bool) -> vec2<bool> {
    global0 = -(~(~countOneBits(min(-5109i, 12837i))));
    global1 = array<Struct_1, 7>();
    var var_0 = func_4(true | arg_2, true, abs(func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.x, -807f), arg_0.xy)))))));
    var var_1 = func_4(true, select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2182f * -292f) * _wgslsmith_f_op_f32(arg_1.x + 791f)) <= arg_0.x, true, !any(var_0.b)), vec3<u32>(0u, ~u_input.d.x, 45327u));
    var var_2 = vec4<u32>(58616u, 5594u, 24010u, u_input.d.x);
    return vec2<bool>(arg_2, arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_1, 7>();
    var var_0 = -arg_0.a;
    let var_1 = Struct_1(_wgslsmith_mult_i32(-19974i, arg_0.a), arg_0.b);
    global1 = array<Struct_1, 7>();
    var var_2 = Struct_1(29225i, arg_0.b);
    return Struct_1(_wgslsmith_div_i32(~(~2147483647i), -2147483647i) | ~var_1.a, !(!vec2<bool>(arg_1, true)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), 635f, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(169f + arg_2)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -481f))), 1000f))));
    var var_1 = _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, ~(~4294967295u))), ~vec2<u32>(~abs(u_input.b.x), ~max(u_input.d.x, u_input.b.x)));
    var var_2 = all(!arg_0.b);
    global1 = array<Struct_1, 7>();
    var_2 = arg_0.b.x;
    return Struct_1(arg_3.a, func_1(_wgslsmith_f_op_vec3_f32(var_0.yyw + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, 714f, -1120f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_2, -1701f) + var_0.yzw)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1495f)), _wgslsmith_f_op_f32(floor(-1076f)), -818f, -1000f)), any(!vec4<bool>(arg_0.b.x, arg_3.b.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    let var_0 = 1u;
    let var_1 = vec4<u32>(u_input.b.x, 1u, 37355u >> (_wgslsmith_mod_u32(~u_input.d.x, var_0) % 32u), _wgslsmith_dot_vec3_u32(u_input.b.wxz, min(firstTrailingBit(u_input.b.xxx ^ vec3<u32>(4294967295u, 4294967295u, 0u)), u_input.d)));
    global1 = array<Struct_1, 7>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) + 181f) * _wgslsmith_f_op_f32(1000f - -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global1 = array<Struct_1, 7>();
    let var_3 = func_6(func_5(Struct_1(u_input.a.x, select(func_1(vec3<f32>(var_2, var_2, 998f), vec4<f32>(-773f, -234f, var_2, var_2), true), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(1369f - -1292f)), _wgslsmith_f_op_f32(floor(var_2)))), !vec3<bool>(true, false, func_4(true, false, u_input.d).b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(~(-1573i ^ u_input.c), abs(u_input.c), _wgslsmith_sub_i32(-u_input.a.x, ~u_input.a.x), -47899i), abs(-reverseBits(vec4<i32>(65007i, -39292i, -3692i, 12280i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, -917f, var_2))) + _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(var_2 * 622f)))), func_5(func_4(false, true, vec3<u32>(1u, firstTrailingBit(0u), var_0)), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(select(760f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2, var_2))), !any(vec2<bool>(false, false)))), vec3<bool>(true, !any(vec4<bool>(false, false, true, true)), true)));
    let var_4 = func_5(func_6(func_5(global1[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 318f) + vec2<f32>(var_2, var_2))).x, 7u)], false, _wgslsmith_div_f32(-1526f, _wgslsmith_f_op_f32(round(var_2))), !select(vec3<bool>(var_3.b.x, true, false), vec3<bool>(false, var_3.b.x, true), var_3.b.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(-35166i, 0i, 6011i, var_3.a) | ~vec4<i32>(u_input.a.x, var_3.a, var_3.a, var_3.a), vec4<i32>(var_3.a, 37846i, 3251i, u_input.a.x) << (~u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(543f, _wgslsmith_f_op_f32(step(1168f, -1236f)))))), var_3), true, var_2, !(!vec3<bool>(any(vec3<bool>(var_3.b.x, var_3.b.x, false)), func_6(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], vec4<i32>(-28464i, -2147483647i, var_3.a, -2147483647i), -836f, global1[_wgslsmith_index_u32(139812u, 7u)]).b.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec2<i32>(-1i) * -vec2<i32>(var_3.a, 42499i))), ~(~(~vec3<u32>(var_0, var_0, 1u))));
}

