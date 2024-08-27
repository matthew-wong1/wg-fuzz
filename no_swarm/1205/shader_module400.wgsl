struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-458i, 2147483647i);

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-114f, 1629f), vec2<f32>(1000f, -1456f), vec2<f32>(-1198f, -264f), vec2<f32>(-1000f, -1207f), vec2<f32>(256f, 188f), vec2<f32>(-152f, -1394f), vec2<f32>(1263f, -156f), vec2<f32>(1000f, -1610f), vec2<f32>(-361f, 1725f), vec2<f32>(-201f, 2173f), vec2<f32>(382f, -1807f), vec2<f32>(201f, 1740f), vec2<f32>(772f, -1054f), vec2<f32>(-223f, -594f), vec2<f32>(1210f, 665f), vec2<f32>(-257f, -1080f), vec2<f32>(860f, 228f), vec2<f32>(-1000f, -1203f), vec2<f32>(-343f, -125f), vec2<f32>(-1264f, -509f));

var<private> global2: array<i32, 30> = array<i32, 30>(5014i, 21225i, -11512i, -18039i, 2147483647i, -18826i, -72118i, i32(-2147483648), 1i, -16199i, 1958i, 2147483647i, -1i, -19479i, 26527i, 3604i, -8994i, i32(-2147483648), 1i, 2147483647i, 0i, 19019i, 7673i, i32(-2147483648), 1770i, -16462i, 2147483647i, i32(-2147483648), 58403i, 0i);

var<private> global3: array<i32, 10>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    global2 = array<i32, 30>();
    global3 = array<i32, 10>();
    global3 = array<i32, 10>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -174f) - vec3<f32>(-1404f, -160f, -360f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, var_0.x, arg_1.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1959f, -1066f, -744f, 833f) * vec4<f32>(var_0.x, arg_1.x, -776f, -1481f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -994f, -610f) - vec4<f32>(var_0.x, 174f, arg_1.x, -976f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), -180f, _wgslsmith_f_op_f32(select(arg_1.x, -777f, false))))));
    return Struct_3(arg_0);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    global0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xz, firstTrailingBit(u_input.c.zy & vec2<i32>(global3[_wgslsmith_index_u32(arg_2, 10u)], u_input.c.x))), firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(arg_3.x, 30u)], ~(~(-26552i)))));
    let var_0 = all(!select(vec4<bool>(arg_1.x != arg_1.x, false, true, true), arg_1, arg_1));
    let var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_3.x, 9159u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 19481u, 41291u, 17353u), vec4<u32>(4294967295u, 0u, 4294967295u, arg_3.x))), vec4<u32>(55873u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 12428u, arg_3.x, 4294967295u), vec4<u32>(arg_3.x, 30379u, arg_3.x, 1u)), abs(~4294967295u), ~arg_2 >> (firstTrailingBit(arg_3.x) % 32u)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3.x, 4294967295u, arg_3.x, arg_3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4044u, arg_2, arg_2), vec4<u32>(arg_2, 50887u, 1u, arg_3.x)))) >> (select(~vec4<u32>(1u, _wgslsmith_mod_u32(arg_2, 57105u), ~arg_3.x, arg_2), reverseBits(vec4<u32>(abs(arg_3.x), 27758u, 29136u, arg_3.x)), false) % vec4<u32>(32u));
    var var_2 = 7072i;
    let var_3 = _wgslsmith_div_vec2_u32(var_1.xz, vec2<u32>(~arg_2, 1u & arg_3.x) << (vec2<u32>(~(~var_1.x), 56341u) % vec2<u32>(32u)));
    return abs((~(~3405u) | ~_wgslsmith_sub_u32(1u, var_1.x)) & firstLeadingBit(83403u));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: u32) -> i32 {
    var var_0 = reverseBits(abs(_wgslsmith_add_u32(arg_3, 4294967295u)) | ~arg_3) << (81040u % 32u);
    global3 = array<i32, 10>();
    global1 = array<vec2<f32>, 20>();
    global1 = array<vec2<f32>, 20>();
    let var_1 = -_wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.x, -12660i), u_input.b.zzw), _wgslsmith_mod_vec3_i32(u_input.b.yyx, vec3<i32>(arg_2, global3[_wgslsmith_index_u32(arg_3, 10u)], -62520i)))), firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(arg_3, 30u)], 6849i, global3[_wgslsmith_index_u32(arg_1.x, 10u)]) | vec3<i32>(26737i, global0.x, 10654i)) >> (_wgslsmith_sub_vec3_u32(~arg_1.yzx, min(vec3<u32>(0u, 22006u, 76706u), vec3<u32>(13535u, 67486u, 35521u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(u_input.a.yzw, u_input.b.zzy));
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    global3 = array<i32, 10>();
    var var_0 = 1i;
    var var_1 = Struct_2(arg_3, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -651f, -270f, -1364f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 946f, 1320f, -1249f), vec4<f32>(410f, 512f, 129f, -997f)))), _wgslsmith_div_u32(~(~arg_3), 81710u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1232f, -364f, 553f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, -2287f, 1978f)))), _wgslsmith_clamp_i32(54785i, u_input.c.x, func_4(arg_2, ~vec4<u32>(arg_3, 11636u, arg_3, 25672u), -21994i, _wgslsmith_mult_u32(0u, 27839u))), _wgslsmith_f_op_f32(-655f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(186f * -1000f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-729f)) - 1810f), _wgslsmith_f_op_f32(step(-331f, -332f)))) >= -331f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.b.a, vec4<f32>(105f, 112f, var_1.b.c.x, var_1.b.c.x)))))), _wgslsmith_sub_u32(~var_1.b.b, _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 21128u), vec2<u32>(0u, arg_3)), arg_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.a.yzx + vec3<f32>(var_1.b.e, -1593f, -1131f)))), -_wgslsmith_div_i32(-reverseBits(-45330i), var_1.b.d), var_1.b.e);
    let var_3 = var_1.b;
    return arg_0;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    global0 = vec2<i32>(-2147483647i, reverseBits(-_wgslsmith_dot_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(arg_1, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(arg_0.x, 10u)]), _wgslsmith_clamp_vec4_i32(u_input.a, u_input.b, vec4<i32>(26481i, global0.x, 1i, 36416i)))));
    let var_0 = u_input.a.xw;
    global3 = array<i32, 10>();
    global2 = array<i32, 30>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -540f, -1708f, -1711f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, -2048f, 253f, 965f) * vec4<f32>(1235f, -722f, -292f, 689f)) - vec4<f32>(550f, 717f, -1293f, 1164f)))), arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -784f), 1401f, 349f))), -global2[_wgslsmith_index_u32(~(~1u & _wgslsmith_div_u32(54613u, arg_0.x)), 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1427f))))) - _wgslsmith_f_op_f32(-1f)));
    return Struct_2(_wgslsmith_mod_u32(~abs(firstTrailingBit(56027u)), 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, -1242f, 1454f, -1523f), var_1.a)))), arg_1, var_1.c, -_wgslsmith_mult_i32(func_4(Struct_3(true), vec4<u32>(57989u, arg_0.x, arg_0.x, arg_0.x), var_1.d, arg_1), -88959i), _wgslsmith_f_op_f32(528f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_f_op_f32(var_1.e + var_1.c.x), true)))), select(!(!(!arg_3.a)), !arg_3.a, arg_3.a));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_3 {
    global3 = array<i32, 10>();
    var var_0 = max(32726u, 1u) | ((32204u >> (select(arg_2.x | arg_2.x, 23107u ^ arg_2.x, arg_1.c) % 32u)) << (4294967295u % 32u));
    var var_1 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~arg_1.b.b, 1u, 0u)), select(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(41445u, arg_2.x, 1u)), reverseBits(vec3<u32>(arg_3.x, 4294967295u, arg_3.x)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(81845u, arg_3.x, 19400u), vec3<u32>(arg_1.b.b, arg_3.x, arg_3.x)) % vec3<u32>(32u))), select(vec3<u32>(41571u, 47242u & arg_1.b.b, 0u), select(countOneBits(vec3<u32>(9234u, arg_2.x, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(76149u, arg_1.a, arg_2.x), vec3<u32>(arg_3.x, 0u, 14247u)), select(vec3<bool>(arg_1.c, true, arg_1.c), vec3<bool>(false, false, true), true)), select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(true, true, true), arg_1.c)), vec3<bool>(arg_1.c, func_5(func_2(false, vec2<f32>(1190f, arg_1.b.e)), 8222i, Struct_3(false), arg_2.x | arg_2.x).a, (-2147483647i < arg_0.x) && (-234f >= arg_1.b.e))));
    var var_2 = Struct_2(34443u, func_6(vec3<u32>(20507u, 29009u, ~arg_3.x) | ~(vec3<u32>(1u, arg_2.x, arg_2.x) & vec3<u32>(arg_2.x, arg_3.x, arg_3.x)), 1u, Struct_3(arg_1.c), Struct_3(true)).b, arg_1.c);
    var_0 = 0u;
    return Struct_3(1246f == _wgslsmith_div_f32(arg_1.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c.x) + -1749f)));
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<i32>(1i, ~_wgslsmith_add_i32(u_input.b.x, -2147483647i), global0.x, 0i & max(global0.x, u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(2092f, 903f, 334f, -1656f) * vec4<f32>(-1205f, 122f, 858f, -341f)), _wgslsmith_div_vec4_f32(vec4<f32>(-544f, 559f, 509f, -349f), vec4<f32>(1030f, 1623f, -1000f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(187f, -312f, 1251f, 265f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-735f, 1604f, -146f, -548f), vec4<f32>(-1039f, 1839f, 113f, 252f), false))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f));
    global2 = array<i32, 30>();
    var var_3 = func_7(~u_input.b.zww, func_6(vec3<u32>(_wgslsmith_mod_u32(50489u, abs(1u)), select(2775u, 38496u, true) & 28168u, _wgslsmith_div_u32(~29452u, ~13444u)), 27817u << (1u % 32u), func_5(func_2(true, _wgslsmith_f_op_vec2_f32(abs(var_1.xx))), func_4(func_2(true, global1[_wgslsmith_index_u32(4294967295u, 20u)]), select(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(51306u, 1u, 1u, 13376u), vec4<bool>(true, true, false, true)), _wgslsmith_sub_i32(global0.x, global3[_wgslsmith_index_u32(21039u, 10u)]), func_3(var_1.xwy, vec4<bool>(false, true, true, true), 0u, vec3<u32>(0u, 20406u, 0u))), Struct_3(false), 0u), func_5(func_2(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2468f, var_1.x))), -1i, func_5(func_5(Struct_3(false), u_input.c.x, Struct_3(true), 76213u), ~(-43625i), func_2(false, global1[_wgslsmith_index_u32(33936u, 20u)]), 75366u), 20578u)), vec2<u32>(1u, 1u), vec2<u32>(~1u, 32479u));
    return Struct_3(var_3.a);
}

fn func_8(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = select(u_input.b.xw, -(~u_input.c.zy), !(!arg_0.a));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1745f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(433f, -1452f)))), _wgslsmith_div_f32(989f, _wgslsmith_f_op_f32(min(-231f, _wgslsmith_f_op_f32(f32(-1f) * -810f)))), !arg_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f - -1090f))), 363f), false));
    global3 = array<i32, 10>();
    var var_2 = _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(43992u, 26839u, 4294967295u, 0u), vec4<u32>(46459u, 65279u, 53672u, select(4294967295u, 4294967295u, true)))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(23919u, 4294967295u, 0u, 52524u), select(vec4<u32>(4294967295u, 69146u, 17284u, 0u), vec4<u32>(15986u, 20005u, 37841u, 39481u), arg_0.a)), vec4<u32>(select(56769u, 59585u, true), _wgslsmith_div_u32(0u, 1u), ~1u, 1u))), vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(64053u, 4423u, 4294967295u)), vec3<u32>(3518u, 120678u, 4294967295u)) ^ reverseBits(abs(1u)), ~(~1u), ~1u, _wgslsmith_sub_u32(1u, 1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1370f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1630f)) * -1000f), _wgslsmith_f_op_f32(step(-767f, _wgslsmith_f_op_f32(trunc(689f)))), _wgslsmith_f_op_f32(min(985f, _wgslsmith_f_op_f32(-1413f - -114f))))), _wgslsmith_mult_u32(min(func_3(vec3<f32>(362f, 616f, -1012f), vec4<bool>(false, true, true, arg_0.a), 2855u, firstTrailingBit(vec3<u32>(var_2.x, var_2.x, 18526u))), ~0u), 1u), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1435f * -456f))), _wgslsmith_f_op_f32(559f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -561f))))), global3[_wgslsmith_index_u32(firstTrailingBit(min(~var_2.x, firstLeadingBit(var_2.x)) ^ ~abs(1u)), 10u)], _wgslsmith_f_op_f32(round(-203f)));
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -27459i), u_input.b.ww, reverseBits(~(-u_input.c.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, ~12511u), 4294967295u, 0u, max(~38597u, ~1u)), (vec4<u32>(1u, 1u, 1u, 1u) >> (select(vec4<u32>(4294967295u, 41051u, 1u, 34794u), vec4<u32>(1u, 1u, 31151u, 0u), vec4<bool>(true, false, true, false)) % vec4<u32>(32u))) | ~(~vec4<u32>(20762u, 3023u, 4294967295u, 1u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-536f - -605f)))), _wgslsmith_f_op_f32(-1f)) * -262f);
    global0 = func_8(func_1()) | vec2<i32>(-reverseBits(_wgslsmith_mult_i32(-54362i, global0.x)), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~firstLeadingBit(1u), 30u)], min(21448i, global3[_wgslsmith_index_u32(84606u, 10u)] ^ global2[_wgslsmith_index_u32(var_0.x, 30u)])));
    let var_2 = Struct_3(any(vec2<bool>(true, false)) && (u_input.a.x > firstTrailingBit(u_input.b.x)));
    var var_3 = func_6(min(_wgslsmith_mult_vec3_u32(var_0.yzx, vec3<u32>(1u, var_0.x, var_0.x)), vec3<u32>(1u, min(21222u, 15224u), var_0.x ^ 0u)) << (~(~var_0.wwx) % vec3<u32>(32u)), 42180u ^ ~var_0.x, Struct_3(var_2.a), Struct_3(all(!(!vec3<bool>(var_2.a, true, true))))).b;
    global2 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e, -653f, var_3.a.x)), func_6(vec3<u32>(3695u, var_3.b, 52799u), var_3.b, var_2, var_2).b.a.wxx)))), -2147483647i, var_0.x, reverseBits(_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 5683u), var_0.zy), countOneBits(var_0.xx))));
}

