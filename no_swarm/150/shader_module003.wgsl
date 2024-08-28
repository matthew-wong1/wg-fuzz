struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 483f;

var<private> global1: array<i32, 14> = array<i32, 14>(4319i, 0i, 1i, 2147483647i, 23567i, 2516i, -1i, -3059i, 1i, i32(-2147483648), -1i, -1i, -27644i, 15830i);

var<private> global2: array<i32, 4> = array<i32, 4>(6257i, 1i, 73783i, 0i);

var<private> global3: Struct_4 = Struct_4(false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    global2 = array<i32, 4>();
    var var_0 = max(vec2<u32>(~max(arg_2.c.x, arg_2.c.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, reverseBits(15161u), 0u >> (arg_2.c.x % 32u)), u_input.b)), vec2<u32>(~arg_2.c.x, 121345u));
    global2 = array<i32, 4>();
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(sign(-715f)), -976f, _wgslsmith_f_op_f32(select(-395f, _wgslsmith_f_op_f32(-872f * -898f), global3.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, -1683f) * vec2<f32>(-782f, arg_0))))))), -(~(-_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 4u)], 0i, 1i), vec3<i32>(arg_1, -10717i, global1[_wgslsmith_index_u32(1u, 14u)])))));
    let var_2 = !vec4<bool>(global3.a, true, -1127f >= var_1.a.x, !global3.a);
    return vec3<bool>(var_2.x, true, any(select(select(vec3<bool>(var_2.x, true, true), !vec3<bool>(var_2.x, var_2.x, global3.a), global3.a), !select(var_2.xzw, vec3<bool>(true, global3.a, var_2.x), var_2.x), !select(var_2.zxx, var_2.wyy, false))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = !func_3(-176f, -(1i & _wgslsmith_dot_vec3_i32(arg_3.e.c, arg_3.e.c)), Struct_2(-894f, _wgslsmith_add_vec2_i32(arg_3.e.c.xx, arg_3.e.c.xz), _wgslsmith_div_vec3_u32(min(arg_3.c.c, vec3<u32>(u_input.e, 0u, 28628u)), vec3<u32>(0u, 4294967295u, 27391u))));
    global1 = array<i32, 14>();
    var var_1 = arg_1;
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(474f * -293f), 1277f, arg_1, _wgslsmith_f_op_f32(round(-248f))), arg_3.e.a))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a.x, arg_1, _wgslsmith_f_op_f32(arg_3.e.a.x + _wgslsmith_f_op_f32(-825f * arg_3.e.a.x)), arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(arg_2, arg_3.a.x)), arg_2, _wgslsmith_f_op_f32(-696f + 1000f)))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), -1203f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-817f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2791f - -636f) - -383f)) - _wgslsmith_f_op_f32(-1002f + _wgslsmith_f_op_f32(min(-726f, _wgslsmith_f_op_f32(ceil(425f)))))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(~u_input.b, 1f, -261f, Struct_3(vec4<f32>(-1704f, -1906f, -1384f, 1000f), global3.a, Struct_2(-1651f, vec2<i32>(11155i, global2[_wgslsmith_index_u32(u_input.c, 4u)]), vec3<u32>(u_input.b, u_input.b, 19062u)), u_input.c, Struct_1(vec4<f32>(1000f, -659f, 397f, 1849f), vec2<f32>(-162f, -615f), vec3<i32>(global2[_wgslsmith_index_u32(15943u, 4u)], global2[_wgslsmith_index_u32(2758u, 4u)], global2[_wgslsmith_index_u32(u_input.e, 4u)]))))))) + _wgslsmith_f_op_vec4_f32(func_2(4294967295u, _wgslsmith_f_op_f32(-1885f - _wgslsmith_f_op_f32(trunc(-146f))), _wgslsmith_f_op_vec4_f32(func_2(u_input.c, 163f, -291f, Struct_3(vec4<f32>(353f, 239f, -1000f, 404f), true, Struct_2(662f, vec2<i32>(-6023i, global2[_wgslsmith_index_u32(1u, 4u)]), vec3<u32>(0u, u_input.e, u_input.b)), u_input.e, Struct_1(vec4<f32>(-1185f, 331f, -386f, 314f), vec2<f32>(-576f, -371f), vec3<i32>(global2[_wgslsmith_index_u32(u_input.c, 4u)], -58678i, global1[_wgslsmith_index_u32(u_input.e, 14u)]))))).x, Struct_3(vec4<f32>(-1299f, 1725f, 1800f, 767f), global3.a, Struct_2(332f, vec2<i32>(-2147483647i, -1i), vec3<u32>(58713u, 75532u, 4294967295u)), firstLeadingBit(29388u), Struct_1(vec4<f32>(2212f, 2117f, -1164f, 409f), vec2<f32>(892f, 579f), vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], u_input.a)))))), global3.a || true, Struct_2(_wgslsmith_f_op_vec4_f32(func_2(u_input.c, 517f, -2436f, Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(738f, 384f, -1223f, 453f) - vec4<f32>(-1732f, 1156f, -1033f, -1354f)), arg_0 & arg_0, Struct_2(-863f, vec2<i32>(2147483647i, -46603i), vec3<u32>(u_input.c, 0u, u_input.e)), u_input.b, Struct_1(vec4<f32>(1323f, -406f, -105f, 115f), vec2<f32>(-401f, -2823f), vec3<i32>(1i, 38340i, 2147483647i))))).x, -(vec2<i32>(-19236i, -2147483647i) >> (vec2<u32>(18010u, u_input.c) % vec2<u32>(32u))), ~abs(~vec3<u32>(41111u, u_input.c, u_input.e))), ~u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-877f * 1093f), _wgslsmith_div_f32(2031f, -129f), 519f, -1131f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-346f, -1522f, -656f, 913f), vec4<f32>(-615f, -263f, -452f, -449f))), vec4<f32>(-1000f, 421f, 524f, 1078f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, -125f) + vec2<f32>(-1000f, -1211f))))), vec3<i32>(2147483647i, -31586i, u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(trunc(var_0.e.a.x));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_1, -135f, var_0.a.x) + vec4<f32>(1378f, var_0.c.a, 1209f, var_0.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.a)))))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(388f, 691f, var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1405f, var_0.c.a, -860f, -1920f) - var_0.a)))))), true, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1099f + var_1) + _wgslsmith_f_op_f32(step(1192f, 1139f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.e.b.x, var_0.e.b.x, true)))))), -var_0.c.b, _wgslsmith_mod_vec3_u32(var_0.c.c ^ firstLeadingBit(vec3<u32>(var_0.d, 4294967295u, 23975u)), vec3<u32>(~var_0.d, _wgslsmith_sub_u32(var_0.c.c.x, 74620u), var_0.c.c.x))), var_0.d >> (_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(44353u), _wgslsmith_mod_u32(var_0.c.c.x, u_input.b)), ~(~vec2<u32>(3959u, 41949u))) % 32u), var_0.e);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = ~func_1(arg_0.b).c.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.e.a);
    var var_2 = ~reverseBits(firstTrailingBit(reverseBits(1u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1683f, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var_2 = 5143u;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_3.x + 216f)))), _wgslsmith_mod_vec2_i32(vec2<i32>(~func_1(false).c.b.x, ~25491i), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 4u)], -2147483647i, -28524i), arg_0.e.c), u_input.d)), firstLeadingBit(~firstLeadingBit(arg_0.c.c)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_4 {
    let var_0 = !(!select(!func_3(-548f, 0i, Struct_2(arg_0.a, arg_1.c.xy, vec3<u32>(u_input.c, 37731u, u_input.e))).yz, vec2<bool>(global3.a, global3.a), vec2<bool>(true, func_3(arg_0.a, -12326i, arg_0).x)));
    global3 = Struct_4(false);
    let var_1 = any(vec4<bool>(all(!vec3<bool>(false, global3.a, var_0.x)), -1000f < _wgslsmith_f_op_f32(-arg_0.a), global3.a, global3.a));
    let var_2 = func_1(firstTrailingBit(_wgslsmith_div_i32(arg_1.c.x, i32(-1i) * -6765i)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-31031i, global1[_wgslsmith_index_u32(75675u, 14u)]), _wgslsmith_dot_vec2_i32(arg_0.b, vec2<i32>(40420i, global2[_wgslsmith_index_u32(78981u, 4u)]))), arg_1.c.xx)).e;
    global1 = array<i32, 14>();
    return Struct_4(select(min(_wgslsmith_add_u32(1u, u_input.e), u_input.b), 4294967295u, any(!vec4<bool>(var_0.x, var_1, false, true))) != u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-837f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(336f + 2065f), _wgslsmith_f_op_f32(f32(-1f) * -495f))), -475f) * -1284f);
    global1 = array<i32, 14>();
    var var_0 = ~vec3<i32>(global2[_wgslsmith_index_u32(~u_input.e, 4u)], min(global1[_wgslsmith_index_u32(~(u_input.e >> (u_input.b % 32u)), 14u)], _wgslsmith_mult_i32(29532i, -68582i) & u_input.d), 2147483647i);
    global3 = Struct_4(select(true, true, global3.a));
    global3 = func_5(func_4(func_1(select(-1i, -2147483647i, false) < ~(-4439i))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 476f, -699f, -572f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1254f, -1036f, -467f, 1000f))))), vec2<f32>(1321f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1681f, 633f) + -1476f)), abs(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(45902u, 14u)], 0i, global2[_wgslsmith_index_u32(u_input.b, 4u)]))) & -(vec3<i32>(16067i, 2147483647i, var_0.x) ^ vec3<i32>(var_0.x, global2[_wgslsmith_index_u32(u_input.b, 4u)], u_input.d))));
    global0 = 757f;
    var var_1 = select(vec4<bool>(true, global3.a, true, -843f <= _wgslsmith_f_op_f32(trunc(-1384f))), select(vec4<bool>(!any(vec2<bool>(true, global3.a)), any(select(vec4<bool>(global3.a, global3.a, true, global3.a), vec4<bool>(global3.a, global3.a, global3.a, false), vec4<bool>(true, true, true, true))), all(!vec3<bool>(global3.a, global3.a, global3.a)), any(select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, global3.a)))), !(!(!vec4<bool>(global3.a, false, true, global3.a))), !vec4<bool>(true, true, !global3.a, !global3.a)), global3.a);
    var var_2 = countOneBits(-30270i);
    let var_3 = Struct_1(vec4<f32>(-1724f, -1253f, _wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(f32(-1f) * -1002f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-935f, _wgslsmith_f_op_f32(round(-574f))) - vec2<f32>(_wgslsmith_div_f32(-302f, 659f), 1142f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, 164f)) * vec2<f32>(1f, 1f)), vec2<f32>(-1000f, -193f))))), vec3<i32>(u_input.d, -16524i, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(0i, -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-9416i, var_0.x, 23279i, global1[_wgslsmith_index_u32(84276u, 14u)]), ~vec4<i32>(-2147483647i, var_3.c.x, 9139i, global1[_wgslsmith_index_u32(u_input.c, 14u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, u_input.e), select(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, 0u), true)), 14u)]), 2147483647i));
}

