struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(836f, 562f), vec2<f32>(704f, -346f), vec2<f32>(113f, -525f), vec2<f32>(-1350f, 126f), vec2<f32>(270f, -741f), vec2<f32>(783f, 1234f), vec2<f32>(1000f, -1000f), vec2<f32>(-520f, 718f), vec2<f32>(-457f, 1477f), vec2<f32>(-183f, 348f), vec2<f32>(-1934f, -1176f), vec2<f32>(127f, -1134f), vec2<f32>(850f, -1000f));

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(302f, vec4<f32>(358f, -1831f, -703f, -304f)), Struct_2(728f, vec4<f32>(1210f, 310f, 249f, -1460f)), Struct_2(-805f, vec4<f32>(1492f, 796f, -1199f, 1021f)), Struct_2(641f, vec4<f32>(-1051f, -1463f, -196f, -1000f)), Struct_2(-460f, vec4<f32>(-812f, 633f, -1000f, 1615f)), Struct_2(1830f, vec4<f32>(1000f, -133f, -3620f, 1551f)), Struct_2(-1046f, vec4<f32>(589f, 207f, -536f, -508f)), Struct_2(-507f, vec4<f32>(1084f, 1000f, -533f, -964f)), Struct_2(-1265f, vec4<f32>(1081f, 1000f, 1000f, 1636f)), Struct_2(-1000f, vec4<f32>(331f, 105f, 268f, -1119f)), Struct_2(949f, vec4<f32>(953f, -956f, 1556f, 972f)), Struct_2(-186f, vec4<f32>(-565f, 874f, -935f, 503f)), Struct_2(239f, vec4<f32>(1291f, -1255f, 558f, 1000f)), Struct_2(-422f, vec4<f32>(251f, 595f, 1991f, 191f)), Struct_2(305f, vec4<f32>(1000f, 778f, 148f, -821f)), Struct_2(-1606f, vec4<f32>(-281f, 319f, 429f, 2021f)), Struct_2(-361f, vec4<f32>(1726f, 357f, -234f, 514f)), Struct_2(-374f, vec4<f32>(186f, -559f, -673f, 152f)), Struct_2(-1000f, vec4<f32>(-611f, -982f, -1632f, 2145f)), Struct_2(-729f, vec4<f32>(-208f, 1893f, 1060f, -271f)), Struct_2(1000f, vec4<f32>(1978f, -714f, -434f, 1369f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    global0 = max(19179i, u_input.b.x) ^ u_input.b.x;
    let var_0 = ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(40350u, 15388u, 26863u, 1276u)) >> (reverseBits(select(vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(93026u, 0u, 1u, 18519u), vec4<bool>(true, false, false, false))) % vec4<u32>(32u))) | vec4<u32>(~abs(~0u), abs(~_wgslsmith_mult_u32(27780u, 1u)), ~25759u, ~1u);
    var var_1 = vec3<i32>(countOneBits(-47066i), ~u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.b.x, 34055i, min(u_input.b.x, u_input.b.x), u_input.b.x >> (var_0.x % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, 29532i, u_input.a), select(vec4<i32>(21555i, u_input.a, u_input.a, -2147483647i), vec4<i32>(-2147483647i, 43130i, u_input.b.x, 55858i), false))), vec4<i32>(4468i, u_input.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(36475i, u_input.b.x), -45352i << (var_0.x % 32u)), 39417i)));
    global0 = 0i;
    global0 = 0i;
    return select(2147483647i, i32(-1i) * -1i, any(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), all(vec4<bool>(false, true, true, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), any(vec2<bool>(false, false)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_1, arg_0.x) - vec4<f32>(arg_0.x, arg_1, -1638f, 1000f)))), vec4<bool>(true, !any(vec4<bool>(true, false, false, false)), false, all(vec4<bool>(true, true, true, true))))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, arg_1)))), arg_0.x), abs(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a) & u_input.b, u_input.b)), vec4<i32>(max(-u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x) & vec4<i32>(1i, 1i, -30017i, u_input.b.x)) | firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, u_input.a, u_input.a)), vec4<i32>(u_input.a >> (15576u % 32u), -13257i, _wgslsmith_div_i32(-14015i, u_input.a), func_3(arg_0))), ~26058i, -26739i), vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.ww * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.b.zw)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-271f, arg_1) + arg_0))), arg_0, select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_1.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(20202i, u_input.b.x), -1i), _wgslsmith_add_vec2_i32(vec2<i32>(-45943i, select(-1i, -1i, false)), -(~u_input.b))), vec4<i32>(~(-1553i), abs(max(-1i, var_1.b.x)), -var_1.b.x >> (max(~144074u, ~28242u) % 32u), 63823i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, var_1.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.d * var_1.d), vec2<f32>(var_2.x, var_1.d.x))))))));
    var var_3 = !select(vec4<bool>(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), true, select(true, any(vec2<bool>(false, true)), true)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), true), false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), var_1.c.x <= -2147483647i), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-156f, arg_1) * vec2<f32>(var_0.a, arg_1))))), reverseBits(_wgslsmith_add_vec2_i32(var_1.b, min(var_1.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -2147483647i), var_1.c.zy, u_input.b)))), _wgslsmith_mult_vec4_i32(vec4<i32>(~(~u_input.b.x), var_1.b.x, var_1.b.x, u_input.b.x), var_1.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_0.b.xw, _wgslsmith_f_op_vec2_f32(max(global1[_wgslsmith_index_u32(4976u, 13u)], var_0.b.zw)))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = 41503i;
    var var_0 = 1148f;
    let var_1 = -arg_0.c;
    var var_2 = ~(-u_input.b.x);
    let var_3 = ~vec4<u32>(4294967295u, 4294967295u, select(8048u, ~(~34056u), true), ~(~_wgslsmith_div_u32(0u, 1u)));
    return any(select(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))), vec2<bool>(true, true), all(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(4294967295u, 13u)])) + global1[_wgslsmith_index_u32(~24336u, 13u)]);
    var var_1 = max(reverseBits(vec2<i32>(23583i, -53826i)), vec2<i32>(u_input.a, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -30981i, arg_0.b.x, 0i), arg_0.c))) ^ arg_0.c.yx);
    global1 = array<vec2<f32>, 13>();
    let var_2 = global2[_wgslsmith_index_u32(17181u, 21u)];
    let var_3 = var_1.x;
    return vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(abs(-1363f))) + _wgslsmith_f_op_f32(arg_0.a.x + var_0.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(round(-1736f)))), func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.b.x)), -949f), -1081f), global2[_wgslsmith_index_u32(23487u, 21u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), vec4<f32>(179f, _wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(step(var_0.x, arg_0.d.x)), -213f))), false, any(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(arg_3.b.yw + vec2<f32>(arg_0.x, -714f)), arg_3.a).a.x;
    global1 = array<vec2<f32>, 13>();
    let var_1 = _wgslsmith_f_op_f32(round(arg_2));
    var var_2 = arg_0.x;
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_3.b.xw))), _wgslsmith_f_op_f32(f32(-1f) * -957f));
    return !select(!(!vec2<bool>(arg_1.x, false)), !select(!vec2<bool>(arg_1.x, arg_1.x), arg_1.xz, true), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32((_wgslsmith_dot_vec2_u32(~vec2<u32>(85837u, 67318u), vec2<u32>(1u, 56301u)) & 1u) >> (4294967295u % 32u), 23215u);
    let var_1 = ~vec3<i32>(~_wgslsmith_add_i32(17241i, -15128i), countOneBits(0i), _wgslsmith_div_i32(59759i, reverseBits(i32(-1i) * -1i)));
    let var_2 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), func_5(_wgslsmith_f_op_vec2_f32(min(global1[_wgslsmith_index_u32(45729u, 13u)], vec2<f32>(726f, -620f))), func_1(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b, vec4<i32>(var_1.x, 16152i, -5685i, u_input.a), global1[_wgslsmith_index_u32(41119u, 13u)])), _wgslsmith_f_op_f32(min(1241f, 681f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 59933u), vec3<u32>(53952u, 6280u, 0u)), 21u)]), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec2<bool>(true, true)) || false), vec2<bool>(true, true), true);
    global2 = array<Struct_2, 21>();
    var var_3 = _wgslsmith_mult_vec4_i32(-vec4<i32>(func_3(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(13587u, 13u)])), 56131i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -78018i, u_input.a, var_1.x) >> (vec4<u32>(57972u, 4294967295u, 83302u, 15501u) % vec4<u32>(32u)), vec4<i32>(u_input.a, 1i, -1i, 1i) & vec4<i32>(u_input.b.x, var_1.x, -2147483647i, var_1.x)), _wgslsmith_dot_vec3_i32(var_1, _wgslsmith_div_vec3_i32(vec3<i32>(1i, 20250i, 0i), var_1))), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-33797i, 1i, u_input.a, -65017i), vec4<i32>(-2147483647i, 33247i, -2147483647i, 2147483647i) | vec4<i32>(var_1.x, u_input.b.x, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(-2147483647i));
}

