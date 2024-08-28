struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: bool,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> i32 {
    var var_0 = ~4294967295u;
    var var_1 = 79415i;
    let var_2 = select(vec4<bool>(arg_3.x, arg_0.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), true && (arg_2.x == all(vec4<bool>(arg_3.x, true, arg_2.x, arg_2.x))), any(vec4<bool>(true, arg_0.b > -51554i, 0i > u_input.a.x, !arg_2.x))), select(!select(select(vec4<bool>(arg_3.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_3.x, true, true, true), vec4<bool>(false, arg_3.x, arg_3.x, arg_2.x)), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_3.x, arg_3.x, arg_2.x), vec4<bool>(false, arg_2.x, true, true), true)), !vec4<bool>(true, arg_3.x, arg_1.x <= -1539f, all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), !vec4<bool>(all(vec4<bool>(true, true, arg_3.x, arg_2.x)), !arg_3.x, any(vec3<bool>(arg_3.x, false, false)), all(vec3<bool>(false, arg_3.x, true)))), !select(!(!vec4<bool>(arg_3.x, arg_2.x, arg_2.x, true)), vec4<bool>(true, !arg_3.x, true, arg_3.x), !select(vec4<bool>(false, arg_3.x, false, true), vec4<bool>(arg_2.x, true, true, arg_2.x), arg_3.x)));
    var_1 = 1i;
    let var_3 = -737f;
    return -arg_0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(1424f)), func_3(Struct_1(543f, -32096i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-469f, 1122f, false)), 1815f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1089f, 836f) + vec2<f32>(-299f, 624f)) + vec2<f32>(-234f, -1857f))), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), false, false), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true))));
    let var_1 = Struct_5(select(!vec3<bool>(all(vec2<bool>(false, false)), true, false), !vec3<bool>(all(vec4<bool>(true, false, false, true)), true, var_0.a < var_0.a), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), Struct_3(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, arg_2), ~arg_0), u_input.a), ~vec3<u32>(_wgslsmith_mod_u32(62363u, u_input.b.x), 52705u, ~arg_3), u_input.b), any(select(vec2<bool>(any(vec3<bool>(true, false, true)), var_0.a != -1268f), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), false)), Struct_3(-arg_0, u_input.b, vec3<u32>(9781u, arg_3, arg_3)), ~vec4<u32>(abs(arg_3 << (1u % 32u)), ~17817u, ~20964u, min(reverseBits(1u), 1u)));
    return Struct_1(_wgslsmith_f_op_f32(floor(942f)), -_wgslsmith_dot_vec4_i32((vec4<i32>(var_0.b, -7768i, -29660i, 1187i) & vec4<i32>(80946i, -28934i, arg_2, var_0.b)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, u_input.a.x, -1i, var_1.b.a.x), vec4<i32>(-5504i, 2147483647i, -17309i, 2147483647i), vec4<i32>(2147483647i, 0i, arg_2, arg_1)), -(vec4<i32>(var_1.b.a.x, var_0.b, var_1.d.a.x, arg_2) ^ vec4<i32>(var_1.b.a.x, -2147483647i, 0i, var_0.b))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = all(vec3<bool>(arg_1.a.x, 4294967295u != abs(u_input.b.x), any(vec4<bool>(true, any(vec2<bool>(arg_1.a.x, arg_1.a.x)), select(arg_1.a.x, false, false), all(vec4<bool>(arg_1.a.x, false, arg_1.a.x, true))))));
    var var_1 = var_0;
    let var_2 = 36371i;
    var var_3 = any(vec2<bool>(_wgslsmith_f_op_f32(1758f - arg_1.b.a) == arg_1.b.a, arg_1.a.x)) && !(_wgslsmith_f_op_f32(abs(666f)) == _wgslsmith_f_op_f32(-arg_1.d.x));
    let var_4 = vec3<bool>((_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.xz), ~vec2<u32>(u_input.b.x, 4294967295u)) & ~(~27885u)) != ((~u_input.c >> (min(4294967295u, 39893u) % 32u)) | u_input.c), !all(!(!arg_1.a)), any(arg_1.a));
    return 1158f;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec3<f32> {
    let var_0 = u_input.c >= ~(~arg_1);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_4(~u_input.b.yz, Struct_2(vec2<bool>(true, any(vec3<bool>(arg_0.a.x, arg_0.a.x, var_0))), func_2(max(vec2<i32>(49095i, u_input.a.x), vec2<i32>(-1i, u_input.a.x)), i32(-1i) * -2147483647i, u_input.a.x, min(u_input.c, 3270u)), min(arg_0.c >> (vec4<u32>(u_input.b.x, arg_1, u_input.c, arg_1) % vec4<u32>(32u)), min(vec4<i32>(2147483647i, -20574i, u_input.a.x, u_input.a.x), arg_0.c)), arg_0.d, arg_0.e))), arg_0.e.a, _wgslsmith_f_op_f32(max(arg_0.b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(~vec2<u32>(22407u, 1u), Struct_2(vec2<bool>(arg_0.a.x, false), Struct_1(arg_0.d.x, -2147483647i), arg_0.c, vec4<f32>(451f, -245f, -712f, 1593f), Struct_1(-522f, arg_0.e.b)))), _wgslsmith_f_op_f32(f32(-1f) * -658f))))));
    var var_2 = all(select(!(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, arg_0.a.x, var_0), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), select(vec3<bool>(true, false, var_0), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), var_0), arg_0.a.x), any(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, true))));
    var_2 = all(!vec4<bool>(arg_0.a.x && true, var_0, var_0, u_input.c < select(50460u, 1u, true)));
    let var_3 = var_0;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1075f, _wgslsmith_f_op_f32(-var_1.x), -505f));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = abs(1u);
    var_0 = u_input.c;
    var var_1 = false && any(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, arg_3), vec2<bool>(true, arg_3))), !(arg_2.x <= 1977f)));
    let var_2 = all(vec2<bool>(!arg_3, any(!select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(false, arg_3, false), true))));
    var_0 = u_input.b.x >> (~37878u % 32u);
    return Struct_4(Struct_2(vec2<bool>(true, false), func_2(firstLeadingBit(u_input.a), abs(1i), _wgslsmith_mult_i32(~u_input.a.x, 1i), ~(~u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x & -17686i, ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(22600i, u_input.a.x)), u_input.a.x), max(~vec4<i32>(u_input.a.x, 3597i, u_input.a.x, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -6868i, 1i), vec4<i32>(11015i, u_input.a.x, 36602i, -2147483647i))), vec4<i32>(2147483647i, u_input.a.x, -u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(759f, _wgslsmith_f_op_f32(floor(257f)), _wgslsmith_f_op_f32(min(-944f, 2142f)), func_2(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x, 64760u).a))), Struct_1(_wgslsmith_f_op_f32(round(func_2(u_input.a, u_input.a.x, u_input.a.x, u_input.b.x).a)), u_input.a.x)), select(vec3<bool>(arg_3, all(vec4<bool>(var_2, false, false, false)), true), select(!vec3<bool>(arg_3, true, arg_3), !select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, true, var_2), vec3<bool>(var_2, arg_3, false)), !(!arg_3)), select(select(select(vec3<bool>(arg_3, false, false), vec3<bool>(false, true, false), vec3<bool>(true, arg_3, false)), vec3<bool>(var_2, arg_3, var_2), select(vec3<bool>(true, false, var_2), vec3<bool>(var_2, arg_3, true), vec3<bool>(true, false, false))), select(vec3<bool>(false, false, false), !vec3<bool>(var_2, var_2, arg_3), all(vec3<bool>(var_2, false, false))), vec3<bool>(var_2, 40267u != u_input.c, true))), Struct_3(-u_input.a, u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, u_input.c), ~vec3<u32>(u_input.c, u_input.b.x, u_input.c)) ^ vec3<u32>(_wgslsmith_sub_u32(8355u, 0u), 7196u, _wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec2<bool>(false, true), Struct_1(-301f, u_input.a.x), vec4<i32>(2147483647i, -31679i, -2147483647i, 0i), vec4<f32>(-1446f, -1146f, 377f, -613f), Struct_1(-685f, -9629i)), 34436u)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(236f, -755f, 1412f), vec3<f32>(183f, -1321f, -355f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(246f, -322f, -907f) + vec3<f32>(620f, -1133f, -1530f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(234f, -1170f, 105f)), vec3<f32>(1100f, 1958f, -675f), vec3<bool>(true, true, true))), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(279f)))), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1661f - -1425f) + _wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1227f)), 614f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec2<bool>(true, true), Struct_1(-2180f, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i), vec4<f32>(-819f, 755f, 1000f, 554f), Struct_1(-1690f, 2147483647i)), u_input.c)).x)))), false);
    let var_1 = Struct_3(vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(firstTrailingBit(~var_0.a.c.x), abs(-17838i), var_0.c.a.x)), vec3<u32>(~var_0.c.c.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.c.c.yx, var_0.c.c.xz)), ~abs(31643u)) ^ ~(~vec3<u32>(14786u, var_0.c.c.x, u_input.b.x) << (var_0.c.c % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(min(~(~vec3<u32>(0u, u_input.c, 21316u)), vec3<u32>(reverseBits(4294967295u), _wgslsmith_mult_u32(1296u, var_0.c.c.x), var_0.c.b.x ^ 40366u)), max(vec3<u32>(_wgslsmith_mult_u32(var_0.c.b.x, 1u), var_0.c.c.x, ~37195u), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(2796u, 1u, 20775u), var_0.c.b))), ~(~(u_input.b << (var_0.c.b % vec3<u32>(32u))))));
    var var_2 = _wgslsmith_dot_vec2_u32(var_1.b.yx, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, var_1.c.x), ~2966u), vec2<u32>(func_5(var_0.a.d.xyy, var_0.a.b.a, var_0.a.d.xyz, var_0.b.x).c.c.x, ~var_0.c.b.x)), abs(min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.c.x, var_1.b.x), vec2<u32>(var_0.c.c.x, u_input.b.x)), vec2<u32>(u_input.c, u_input.c)))));
    var_2 = _wgslsmith_dot_vec2_u32(var_0.c.c.xy, vec2<u32>(47022u, var_1.c.x));
    let var_3 = Struct_5(func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.e.a + 852f)), var_0.a.d.x, var_0.a.b.a), func_2(var_1.a, max(-1i, var_1.a.x), countOneBits(~(-7404i)), var_1.c.x).a, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -254f, var_0.a.e.a), vec3<f32>(1822f, var_0.a.d.x, 1157f)), var_0.a.d.yxx), func_2(vec2<i32>(-8432i, u_input.a.x) | var_0.a.c.wz, u_input.a.x, -2147483647i, 31119u).a == _wgslsmith_f_op_f32(func_4(var_0.c.c.zy & vec2<u32>(0u, 35093u), Struct_2(vec2<bool>(false, false), Struct_1(215f, var_0.a.b.b), var_0.a.c, vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), var_0.a.e)))).b, func_5(_wgslsmith_f_op_vec3_f32(-var_0.a.d.ywx), _wgslsmith_f_op_f32(min(var_0.a.e.a, _wgslsmith_f_op_f32(-func_2(vec2<i32>(-1i, u_input.a.x), -2147483647i, -51137i, 0u).a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_div_f32(-274f, var_0.a.b.a), 411f)), !(var_0.b.x && var_0.b.x) || (var_0.b.x && true)).c, true, Struct_3(vec2<i32>(-var_0.c.a.x, ~var_0.c.a.x) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_0.c.a.x), var_0.c.a, u_input.a), vec3<u32>(~_wgslsmith_div_u32(1u, var_0.c.b.x), 4294967295u, abs(3672u) >> (_wgslsmith_mod_u32(35053u, 1u) % 32u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.c.x, 1615u, 1u), ~var_0.c.b))), ~(~(vec4<u32>(30986u, 32078u, var_0.c.b.x, 1u) | vec4<u32>(160u, 8911u, 6422u, 22631u)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, var_1.b.x, var_1.b.x, u_input.b.x), countOneBits(vec4<u32>(var_0.c.b.x, var_0.c.c.x, 4294967295u, var_0.c.c.x)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1117f), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c.ywx ^ var_0.a.c.wxy, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_4.a - _wgslsmith_f_op_f32(trunc(551f))), var_4.a), _wgslsmith_f_op_vec2_f32(var_0.a.d.xz * vec2<f32>(_wgslsmith_f_op_f32(var_0.a.d.x * var_0.a.e.a), _wgslsmith_f_op_f32(2667f - -1548f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1432f * _wgslsmith_f_op_vec3_f32(func_1(Struct_2(var_3.a.yz, Struct_1(-1589f, u_input.a.x), var_0.a.c, var_0.a.d, Struct_1(var_0.a.d.x, var_1.a.x)), 45995u)).x))), _wgslsmith_f_op_f32(round(-201f)), _wgslsmith_f_op_f32(-var_4.a)), var_0.a.e.a, var_4.a);
}

