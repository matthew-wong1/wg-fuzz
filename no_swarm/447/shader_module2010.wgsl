struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = Struct_3(2147483647i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1095f)), arg_0.d.b.a, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.a) - arg_0.d.b.a)), vec2<f32>(arg_0.a.c.b.x, -1452f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.a) * arg_1.a.b.a) - -467f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.c.b.x, -668f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, -1503f))) - arg_3.d.c.b)), arg_3.a.d, 37508i);
    var var_1 = Struct_1(289f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.d.b.b * vec2<f32>(arg_0.a.b.a, arg_1.d.c.a)) + vec2<f32>(arg_3.a.c.a, _wgslsmith_f_op_f32(-var_0.b.b.x))))));
    var var_2 = Struct_3(abs(arg_3.b.x), arg_3.d.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(423f, arg_1.d.c.b.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(434f * -566f), -172f))), vec2<f32>(-876f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.d.b.a)))))), firstLeadingBit(arg_1.b), -(~arg_1.c.a));
    global0 = all(select(select(!(!vec4<bool>(arg_2, false, arg_2, true)), !select(vec4<bool>(false, false, true, arg_2), vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(arg_2, true, arg_2, false)), !vec4<bool>(arg_2, arg_2, arg_2, true)), select(!vec4<bool>(true, true, arg_2, true), select(select(vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(true, arg_2, true, arg_2)), !vec4<bool>(false, true, true, arg_2), select(vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(false, true, arg_2, false), vec4<bool>(false, false, arg_2, false))), select(vec4<bool>(arg_2, false, false, arg_2), select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, true, false, false), false), !vec4<bool>(true, arg_2, true, arg_2))), vec4<bool>(max(-24389i, var_2.d.x) <= _wgslsmith_dot_vec2_i32(arg_3.a.d.zz, vec2<i32>(arg_0.c.a, -9330i)), arg_2, arg_2, arg_2)));
    var var_3 = select(!select(select(select(vec2<bool>(arg_2, true), vec2<bool>(false, false), arg_2), vec2<bool>(true, true), arg_2), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), true)), any(vec4<bool>(false, arg_2, arg_2, false))), !(!(!(!vec2<bool>(false, arg_2)))), !select(vec2<bool>(true, true), select(!vec2<bool>(false, arg_2), !vec2<bool>(arg_2, arg_2), false), true));
    return !vec3<bool>(all(vec3<bool>(true, !arg_2, !arg_2)), !var_3.x, true);
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = countOneBits(~((vec4<i32>(arg_0, 1i, -648i, 14379i) ^ (vec4<i32>(-8006i, 1i, 1i, -2147483647i) | vec4<i32>(-2147483647i, arg_0, arg_0, 0i))) | vec4<i32>(_wgslsmith_div_i32(0i, 14868i), arg_0, -1i, -arg_0)));
    global0 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(func_3(Struct_4(Struct_3(arg_0, Struct_1(159f, vec2<f32>(504f, -315f)), Struct_1(-733f, vec2<f32>(361f, -1216f)), vec4<i32>(var_0.x, var_0.x, -1i, arg_0), 0i), vec4<i32>(0i, var_0.x, 22270i, 1i), Struct_2(-1i), Struct_3(-68327i, Struct_1(1294f, vec2<f32>(746f, 1259f)), Struct_1(-845f, vec2<f32>(1150f, 458f)), vec4<i32>(-1i, 2147483647i, 2147483647i, arg_0), arg_0)), Struct_4(Struct_3(var_0.x, Struct_1(-831f, vec2<f32>(914f, 806f)), Struct_1(439f, vec2<f32>(-1446f, 748f)), var_0, arg_0), var_0, Struct_2(arg_0), Struct_3(-1i, Struct_1(-1060f, vec2<f32>(818f, -1000f)), Struct_1(-158f, vec2<f32>(974f, 1126f)), vec4<i32>(var_0.x, 6513i, arg_0, var_0.x), -31140i)), true, Struct_4(Struct_3(-2147483647i, Struct_1(581f, vec2<f32>(-1692f, 2094f)), Struct_1(-906f, vec2<f32>(197f, 210f)), vec4<i32>(var_0.x, arg_0, var_0.x, arg_0), 1i), var_0, Struct_2(var_0.x), Struct_3(0i, Struct_1(183f, vec2<f32>(1507f, 456f)), Struct_1(-456f, vec2<f32>(105f, -2286f)), var_0, arg_0))), func_3(Struct_4(Struct_3(arg_0, Struct_1(755f, vec2<f32>(-1188f, -653f)), Struct_1(869f, vec2<f32>(256f, 1120f)), var_0, var_0.x), var_0, Struct_2(-2147483647i), Struct_3(-2147483647i, Struct_1(-1519f, vec2<f32>(-660f, -796f)), Struct_1(2121f, vec2<f32>(1260f, 545f)), var_0, 20589i)), Struct_4(Struct_3(var_0.x, Struct_1(-1918f, vec2<f32>(-1247f, -1276f)), Struct_1(-1504f, vec2<f32>(-1000f, 158f)), var_0, var_0.x), var_0, Struct_2(var_0.x), Struct_3(var_0.x, Struct_1(-422f, vec2<f32>(-1000f, 839f)), Struct_1(-674f, vec2<f32>(1495f, 1000f)), vec4<i32>(arg_0, 2147483647i, -1i, 0i), arg_0)), true, Struct_4(Struct_3(var_0.x, Struct_1(-292f, vec2<f32>(661f, 270f)), Struct_1(744f, vec2<f32>(486f, 429f)), vec4<i32>(var_0.x, 2147483647i, 3084i, -1i), arg_0), vec4<i32>(var_0.x, 35086i, arg_0, -17947i), Struct_2(arg_0), Struct_3(-32366i, Struct_1(1078f, vec2<f32>(582f, -969f)), Struct_1(-1436f, vec2<f32>(877f, -611f)), var_0, 2147483647i))), vec3<bool>(true, true, any(vec3<bool>(true, false, true)))), vec3<bool>(false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true)), true)));
    var var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(abs(u_input.b), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), ~u_input.c.yy)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, ~u_input.a.xyy), ~u_input.c));
    var_1 = _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(var_1.x, u_input.b, var_1.x))) << (abs(_wgslsmith_clamp_vec3_u32(u_input.a.ywy, vec3<u32>(var_1.x, 0u, 0u), u_input.a.xxy)) % vec3<u32>(32u)), vec3<u32>(19323u, var_1.x ^ 1u, 0u));
    global0 = select(firstTrailingBit(abs(4294967295u)) < var_1.x, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), all(vec2<bool>(false, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-140f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1205f, 2245f)), -1822f)), 756f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_5 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(func_2(arg_0.x));
    global0 = !var_0;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(541f, var_1, var_0)))) - var_1)));
    global0 = any(!vec2<bool>(!var_0, !var_0 | !var_0));
    return Struct_5(-arg_0.x <= -arg_0.x, true, 201f, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(~arg_0.x, _wgslsmith_sub_i32(arg_0.x, -38369i)), _wgslsmith_dot_vec2_i32(select(arg_0.xx, vec2<i32>(2147483647i, 0i), vec2<bool>(true, var_0)), vec2<i32>(0i, arg_0.x)) >> ((u_input.c.x ^ _wgslsmith_mod_u32(22234u, 21032u)) % 32u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> bool {
    global0 = true;
    var var_0 = vec4<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(1u, u_input.c.x)), firstTrailingBit(min(0u, 0u)))), _wgslsmith_add_u32(u_input.a.x << (_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.xz), vec2<u32>(80149u, 56846u)) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 49759u), vec2<u32>(52579u, u_input.b)), _wgslsmith_div_u32(44578u, 8871u) & u_input.c.x)), _wgslsmith_mod_u32(u_input.b ^ firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(33783u, u_input.a.x, 1u))), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.a.xww, u_input.c, u_input.c), vec3<u32>(u_input.c.x & u_input.b, 1u, u_input.b >> (u_input.c.x % 32u)))));
    let var_1 = func_3(arg_0, Struct_4(Struct_3(_wgslsmith_mult_i32(-1i, func_1(arg_0.a.d.zwz, var_0.x).d), Struct_1(_wgslsmith_f_op_f32(ceil(arg_1.c)), arg_0.d.b.b), Struct_1(_wgslsmith_div_f32(arg_1.c, -1997f), _wgslsmith_f_op_vec2_f32(-arg_0.a.c.b)), abs(arg_0.a.d), arg_1.d), ~arg_0.d.d, Struct_2(1i), Struct_3(1i, arg_0.d.b, arg_0.a.b, abs(arg_0.b), 2236i)), !(!arg_1.b), Struct_4(Struct_3(abs(17642i), arg_0.d.c, arg_0.d.c, -(~vec4<i32>(7218i, arg_0.a.e, arg_1.d, arg_1.d)), arg_0.b.x), -(~arg_0.a.d), arg_0.c, Struct_3(1i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1194f, arg_0.a.c.b.x) + vec2<f32>(310f, arg_0.d.c.a))), arg_0.a.b, _wgslsmith_add_vec4_i32(vec4<i32>(9165i, arg_1.d, 0i, arg_0.d.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.d, arg_1.d, -77327i, arg_1.d), vec4<i32>(arg_0.b.x, 2147483647i, 963i, 16046i))), ~4036i)));
    let var_2 = Struct_1(885f, _wgslsmith_f_op_vec2_f32(arg_0.a.c.b - arg_0.d.b.b));
    var var_3 = Struct_2(-countOneBits(~countOneBits(-1i)));
    return !(!all(select(vec2<bool>(true, true), var_1.xy, arg_1.b)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> bool {
    var var_0 = u_input.b;
    global0 = arg_0.b;
    var var_1 = u_input.c.x;
    global0 = !any(vec2<bool>(arg_0.a, all(select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.b), vec3<bool>(false, arg_0.a, false)))));
    let var_2 = ~u_input.a.x;
    return _wgslsmith_div_u32((0u << (~u_input.a.x % 32u)) & ~var_2, 1u) >= 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_5(func_4(Struct_4(Struct_3(-1i, Struct_1(609f, vec2<f32>(-322f, -1218f)), Struct_1(1000f, vec2<f32>(1578f, -1000f)), vec4<i32>(-5344i, 1i, 1i, 1i), -413i), vec4<i32>(2147483647i, -34099i, -13645i, 1i), Struct_2(-54347i), Struct_3(25005i, Struct_1(587f, vec2<f32>(461f, 1012f)), Struct_1(-293f, vec2<f32>(1576f, 425f)), vec4<i32>(0i, 0i, 2147483647i, -34949i), -17835i)), func_1(vec3<i32>(5481i, -29958i, 1i), 29296u)), all(vec2<bool>(true, true)), -1274f, max(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-41817i, -55345i), vec2<i32>(-2147483647i, -1122i)))), Struct_3(-330i, Struct_1(_wgslsmith_f_op_f32(max(-386f, 174f)), _wgslsmith_div_vec2_f32(vec2<f32>(-427f, -196f), vec2<f32>(251f, 635f))), Struct_1(_wgslsmith_f_op_f32(select(-499f, 591f, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(795f, 2342f), vec2<f32>(719f, -124f), vec2<bool>(false, true)))), -(vec4<i32>(-32027i, -1i, -2147483647i, 21360i) >> (u_input.a % vec4<u32>(32u))), -1i)) | all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, u_input.a.x == u_input.a.x)));
    var var_0 = u_input.a | ~(~min(u_input.a, u_input.a));
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(abs(_wgslsmith_sub_u32(u_input.c.x, 0u)), u_input.a.x | ~min(80478u, 2587u), var_0.x, ~u_input.c.x ^ (u_input.c.x & 32212u)), countOneBits(~vec4<u32>(~u_input.a.x, 41126u, max(1u, 4294967295u), 0u)));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(27453i << (firstLeadingBit(66273u) % 32u), -max(func_1(vec3<i32>(2147483647i, -17670i, 24228i), u_input.a.x).d, ~(-46829i))), vec2<i32>(min(1i & func_1(vec3<i32>(1i, 0i, -1i), u_input.b).d, -2147483647i), ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f * 133f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1202f))))), u_input.a.xzw);
}

