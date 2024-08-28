struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -44642i, -2147483647i), ~vec3<i32>(u_input.a, u_input.e, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1471f, 878f, 284f, -673f))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-997f - 1637f) + -159f))), 1f), u_input.c >> (u_input.c % vec2<u32>(32u)));
    let var_1 = _wgslsmith_sub_vec4_u32(firstLeadingBit(select(select(firstLeadingBit(vec4<u32>(42788u, var_0.d.x, 1u, arg_0)), ~vec4<u32>(var_0.d.x, 10280u, var_0.d.x, 1u), var_0.c.x >= var_0.c.x), max(abs(vec4<u32>(arg_0, u_input.b, var_0.d.x, arg_0)), ~vec4<u32>(67476u, 10739u, 6756u, u_input.b)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, false, false)))), firstTrailingBit(reverseBits(vec4<u32>(var_0.d.x >> (34072u % 32u), var_0.d.x, var_0.d.x, 15684u))));
    var var_2 = vec2<i32>(-1i) * -select(var_0.a.yx, var_0.a.yz, vec2<bool>(u_input.e == 35479i, true));
    let var_3 = vec2<i32>(i32(-1i) * -1i, ~(_wgslsmith_mult_i32(-50578i, u_input.d) << (29904u % 32u))) << (var_1.zw % vec2<u32>(32u));
    var var_4 = Struct_1(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.c.x, -1462f, 1000f) * var_0.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.b)))))), vec2<f32>(-1425f, _wgslsmith_f_op_f32(trunc(-203f))), firstLeadingBit(var_0.d));
    return firstTrailingBit(abs(_wgslsmith_add_vec3_u32(var_1.yxw, firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_4.d.x, var_4.d.x, 4294967295u), var_1.wwz)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(239f)), _wgslsmith_f_op_f32(-332f * arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.x))));
    var var_1 = max(~arg_1.d | firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.c ^ vec2<u32>(arg_0.d.x, arg_0.d.x), vec2<u32>(arg_0.d.x, 4294967295u))), ~(~(~vec2<u32>(arg_1.d.x, 4294967295u))) ^ abs(vec2<u32>(arg_1.d.x << (arg_0.d.x % 32u), 4294967295u)));
    let var_2 = _wgslsmith_div_vec3_u32(func_3(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 1u, var_1.x), vec4<u32>(21821u, arg_1.d.x, var_1.x, var_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.x, arg_1.d.x, u_input.c.x, arg_0.d.x), vec4<u32>(arg_0.d.x, 1u, 4294967295u, 1u), vec4<u32>(var_1.x, 4294967295u, var_1.x, arg_0.d.x)))), countOneBits(~reverseBits(countOneBits(vec3<u32>(arg_0.d.x, arg_0.d.x, var_1.x)))));
    var var_3 = arg_1.d.x;
    var var_4 = -458f;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = func_2(arg_1, arg_1, arg_3.x);
    var var_1 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))));
    let var_2 = arg_1;
    var var_3 = var_2;
    var_1 = vec2<bool>(!(!(var_1.x || var_1.x)) || var_1.x, all(vec2<bool>(-1i >= -var_2.a.x, true || (var_1.x | false))));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -128f))))), -1000f, -246f);
    let var_2 = countOneBits(firstLeadingBit(min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_2.d.x, arg_2.d.x), vec3<u32>(arg_3.d.x, 4294967295u, arg_2.d.x)), arg_2.d.x, arg_2.d.x), vec3<u32>(~arg_2.d.x, arg_2.d.x, min(arg_2.d.x, arg_3.d.x)))));
    var var_3 = arg_3.a.x;
    var var_4 = Struct_1(func_2(Struct_1(vec3<i32>(29420i, arg_2.a.x, -38243i) | arg_3.a, arg_3.b, vec2<f32>(137f, _wgslsmith_div_f32(arg_3.b.x, arg_1)), func_2(arg_2, arg_3, 420f).d ^ vec2<u32>(var_2.x, var_2.x)), arg_3, 608f).a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-2104f * arg_1), _wgslsmith_div_f32(387f, arg_2.c.x)), arg_2.b, true)))), arg_3.c, ~(~arg_2.d << (max(u_input.c, ~vec2<u32>(var_2.x, arg_2.d.x)) % vec2<u32>(32u))));
    return Struct_1(reverseBits(-_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, arg_3.a.x, 1i), arg_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-227f)))), arg_3.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_4.b.x, 566f)), _wgslsmith_f_op_f32(max(arg_2.c.x, arg_2.b.x)), !arg_0.x)), _wgslsmith_f_op_f32(-arg_1))), vec2<f32>(_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1574f, var_1.x))), _wgslsmith_f_op_f32(func_1(var_1.x, func_2(arg_2, arg_3, _wgslsmith_f_op_f32(-676f - arg_2.b.x)), ~select(vec3<u32>(21189u, 1u, 64504u), var_2, arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.b))))), ~(~vec2<u32>(1u, arg_2.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(vec4<bool>(any(vec3<bool>(false, false, true)), false, select(true, true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), !vec4<bool>(u_input.d >= 2147483647i, true, true, true), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(703f, Struct_1(vec3<i32>(25884i, 7377i, u_input.a), vec4<f32>(-1634f, -1394f, -1000f, 598f), vec2<f32>(1115f, -615f), u_input.c), vec3<u32>(u_input.b, u_input.c.x, 10887u), vec4<f32>(2171f, 1000f, -444f, -2165f))), _wgslsmith_div_f32(459f, 1026f), true))), 1f)), Struct_1(vec3<i32>(_wgslsmith_add_i32(abs(6326i), 2147483647i | u_input.d), -44609i, 0i), vec4<f32>(1f, -568f, 3286f, -1171f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 709f, false)) + _wgslsmith_f_op_f32(1054f - -1005f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) - -1000f)), vec2<u32>(0u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(60595u, u_input.c.x, 68156u))))), func_2(Struct_1(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-15785i, 0i, 42009i), vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<bool>(true, true, true)), abs(vec3<i32>(1i, -1i, u_input.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2255f, 897f, -654f, 231f) + vec4<f32>(-673f, 987f, 1864f, -868f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 385f) + vec2<f32>(-1281f, -1271f))), countOneBits(abs(vec2<u32>(u_input.b, u_input.b)))), func_2(func_2(func_2(Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.d), vec4<f32>(1413f, 353f, 1170f, 320f), vec2<f32>(-910f, -612f), u_input.c), Struct_1(vec3<i32>(u_input.d, u_input.d, -2147483647i), vec4<f32>(-263f, 839f, 325f, -934f), vec2<f32>(-423f, -1000f), vec2<u32>(u_input.b, u_input.c.x)), -537f), func_2(Struct_1(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec4<f32>(1000f, 147f, 1176f, 392f), vec2<f32>(1725f, -538f), vec2<u32>(49122u, 0u)), Struct_1(vec3<i32>(u_input.a, u_input.e, u_input.d), vec4<f32>(-1106f, -954f, 1337f, 647f), vec2<f32>(951f, -344f), u_input.c), 771f), _wgslsmith_f_op_f32(round(-116f))), func_2(func_2(Struct_1(vec3<i32>(37196i, -1i, -1i), vec4<f32>(-1000f, 1347f, 632f, -835f), vec2<f32>(1369f, -291f), vec2<u32>(13246u, u_input.c.x)), Struct_1(vec3<i32>(u_input.d, u_input.d, -4676i), vec4<f32>(-649f, 990f, 873f, -1274f), vec2<f32>(1727f, 134f), u_input.c), -188f), Struct_1(vec3<i32>(1i, u_input.a, u_input.e), vec4<f32>(-875f, -555f, -1642f, -1000f), vec2<f32>(-357f, -1595f), vec2<u32>(14984u, u_input.b)), _wgslsmith_f_op_f32(trunc(-858f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f - -578f) * -710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 722f) + -691f))));
    let var_1 = func_2(Struct_1(-var_0.a >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.d.x, 1u, u_input.c.x), ~vec3<u32>(var_0.d.x, 72685u, var_0.d.x)) % vec3<u32>(32u)), vec4<f32>(-128f, var_0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-214f * -373f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(max(var_0.b.x, -697f))))), _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(3716u, 0u), u_input.c)), abs(max(var_0.d, vec2<u32>(1u, 62798u))))), func_4(vec4<bool>(true, false, any(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(ceil(var_0.b.x)))), func_2(func_2(func_4(vec4<bool>(true, true, true, true), -1553f, Struct_1(var_0.a, vec4<f32>(var_0.c.x, -319f, 171f, var_0.b.x), vec2<f32>(653f, 765f), var_0.d), Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, u_input.e), vec4<f32>(var_0.b.x, -344f, var_0.b.x, var_0.b.x), vec2<f32>(-614f, var_0.b.x), var_0.d)), func_2(Struct_1(vec3<i32>(-39668i, var_0.a.x, var_0.a.x), var_0.b, var_0.b.wy, vec2<u32>(17997u, u_input.c.x)), Struct_1(vec3<i32>(-20410i, -1i, 0i), vec4<f32>(-207f, 856f, -1608f, var_0.b.x), vec2<f32>(-279f, 529f), vec2<u32>(82668u, u_input.b)), 1456f), _wgslsmith_f_op_f32(min(var_0.b.x, -1822f))), Struct_1(vec3<i32>(-1i, u_input.e, var_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 991f, 729f, var_0.c.x) - var_0.b), _wgslsmith_f_op_vec2_f32(min(var_0.c, var_0.b.wz)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d.x, 19915u), var_0.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), 1f)), Struct_1(-_wgslsmith_div_vec3_i32(var_0.a, var_0.a), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1891f), _wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), _wgslsmith_div_f32(-558f, -1689f)), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d.x, u_input.c.x), var_0.d, _wgslsmith_div_vec2_u32(var_0.d, vec2<u32>(u_input.c.x, var_0.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x))) * 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -380f)));
    var var_2 = vec2<u32>(~_wgslsmith_mod_u32(~1u, (var_1.d.x >> (1u % 32u)) & 0u), _wgslsmith_div_u32(~var_1.d.x, ~4294967295u));
    var_2 = max(u_input.c, _wgslsmith_div_vec2_u32(select(countOneBits(vec2<u32>(var_2.x, var_2.x)), var_0.d, vec2<bool>(true, true)) >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(29541u, var_1.d.x), vec2<u32>(u_input.b, 0u))) % vec2<u32>(32u)), vec2<u32>(func_2(var_1, var_1, _wgslsmith_f_op_f32(-var_1.c.x)).d.x, var_1.d.x)));
    let var_3 = abs(~firstTrailingBit(~vec3<u32>(24914u, var_1.d.x, var_1.d.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_1.d.x, 0u), max(vec3<u32>(u_input.c.x, u_input.b, 4294967295u), min(vec3<u32>(1u, u_input.b, 1u), vec3<u32>(54892u, 18622u, var_2.x)))));
    var var_4 = select(_wgslsmith_div_vec3_u32(vec3<u32>(~var_3.x, 77978u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 0u), ~var_2.x)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(var_1.d.x, u_input.b), _wgslsmith_mult_u32(~35289u, _wgslsmith_add_u32(var_3.x, var_3.x)))), reverseBits(var_3), true);
    var var_5 = var_1;
    var var_6 = 4294967295u;
    var_2 = (firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(33092u, 1u), u_input.b & 0u)) << (vec2<u32>(0u, ~(~u_input.b)) % vec2<u32>(32u))) << (vec2<u32>(9765u, ~min(var_5.d.x & 4294967295u, reverseBits(17169u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b.ywz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_2(Struct_1(var_5.a, vec4<f32>(-705f, var_5.b.x, var_1.b.x, var_0.c.x), vec2<f32>(144f, -959f), var_0.d), func_2(Struct_1(var_5.a, vec4<f32>(1116f, var_1.b.x, -606f, -607f), vec2<f32>(var_0.c.x, -128f), vec2<u32>(19952u, 0u)), var_1, -985f), _wgslsmith_f_op_f32(-1127f * var_0.c.x)).b)), _wgslsmith_f_op_f32(var_5.c.x * _wgslsmith_div_f32(var_5.b.x, 1316f)), func_4(!vec4<bool>(true, true, true, all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - func_4(vec4<bool>(true, false, false, true), 816f, Struct_1(var_0.a, vec4<f32>(var_5.c.x, var_5.c.x, var_1.b.x, var_5.c.x), var_5.b.zy, var_1.d), Struct_1(vec3<i32>(-19980i, var_0.a.x, var_1.a.x), vec4<f32>(-2318f, 1000f, 680f, 1142f), vec2<f32>(var_1.c.x, 1021f), vec2<u32>(87612u, 4294967295u))).c.x)), func_2(func_2(var_1, func_4(vec4<bool>(true, false, false, true), 1374f, Struct_1(vec3<i32>(var_0.a.x, u_input.a, var_5.a.x), vec4<f32>(-596f, var_1.b.x, var_1.c.x, var_0.c.x), var_1.b.xz, u_input.c), Struct_1(vec3<i32>(0i, -1i, var_0.a.x), var_0.b, vec2<f32>(var_5.b.x, -816f), var_0.d)), _wgslsmith_f_op_f32(floor(-548f))), var_1, _wgslsmith_f_op_f32(func_4(vec4<bool>(false, false, true, false), var_0.c.x, var_1, var_1).c.x - -645f)), var_1).d.x);
}

