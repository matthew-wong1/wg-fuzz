struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = u_input.a;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) - _wgslsmith_f_op_f32(round(-953f)))), 1000f, 1000f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(1000f - arg_0.x)) - arg_0.x)));
    var var_2 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-975f * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -309f))), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(392f - -328f), _wgslsmith_f_op_f32(ceil(arg_0.x)))), -(u_input.b.x << (min(4294967295u, 62278u) % 32u)), 4294967295u, arg_0.x, vec4<bool>(any(vec4<bool>(true, false, false, false)) && true, true, true, !any(vec4<bool>(true, false, true, true)))), Struct_2(Struct_1(arg_0.xyw, reverseBits(reverseBits(u_input.b.x)), u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - var_1.x))), vec4<bool>(all(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, false, true)), 700f < arg_0.x, true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 475f), 732f, _wgslsmith_f_op_f32(min(-285f, arg_0.x))), -11471i, _wgslsmith_mult_u32(u_input.a, ~1u), arg_0.x, select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * -407f), _wgslsmith_f_op_f32(min(357f, 355f)), -1251f), 1i, _wgslsmith_mult_u32(21435u, 1u), 1782f, vec4<bool>(true, true, u_input.a >= u_input.a, any(vec2<bool>(false, false)))), firstLeadingBit(-u_input.b.x), true), u_input.a, countOneBits(min(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), min(u_input.b, vec3<i32>(-2147483647i, 8905i, u_input.b.x))))), true);
    let var_3 = !all(var_2.a.e.zyz);
    var var_4 = var_1.zy;
    return all(!select(vec2<bool>(var_3, true), vec2<bool>(var_2.e, var_2.e), !var_3)) && false;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(903f, -625f, 159f) - vec3<f32>(-726f, 1000f, -2543f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(888f, -518f, 321f), vec3<f32>(647f, 841f, -1438f))))), u_input.b.x, _wgslsmith_div_u32(u_input.a, 7259u), 637f, select(vec4<bool>(true, true, func_3(vec4<f32>(-1442f, 282f, 1571f, 289f)), select(true, false, true)), vec4<bool>(func_3(vec4<f32>(-120f, -782f, 1000f, 1304f)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 565f, -837f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, -785f, 643f))), u_input.b.x | abs(u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(7404u, 1u), vec2<u32>(1u, u_input.a)), -567f, vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(248f, -518f, -432f) * vec3<f32>(338f, 995f, 1351f)), vec3<f32>(-194f, -543f, 940f))), select(u_input.b.x << (21676u % 32u), u_input.b.x ^ -41029i, true), (50563u & u_input.a) | _wgslsmith_mult_u32(8029u, u_input.a), _wgslsmith_f_op_f32(sign(2159f)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_f_op_f32(floor(-291f))), u_input.b.x >> (u_input.a % 32u), 44738u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1286f))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), false)), u_input.b.x, false), 36064u, vec3<i32>(~u_input.b.x, 24866i, 2781i), false);
    var var_1 = var_0.a.c;
    var var_2 = var_0.a.e;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.c.a.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.c.a.yz) + _wgslsmith_f_op_vec2_f32(-var_0.a.a.zz)), !var_0.a.e.zx)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) - 272f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.a.x)) - _wgslsmith_f_op_f32(-var_0.a.d))))));
    var_0 = Struct_3(var_0.b.b, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.b.c.a * var_0.a.a), var_0.d.x, ~(var_0.a.c ^ 0u), 602f, var_0.b.a.e), Struct_1(var_0.a.a, _wgslsmith_div_i32(357i, 1i), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(128u, 0u, var_0.b.a.c, u_input.a)), vec4<u32>(var_0.a.c, u_input.a, 48908u, var_0.c)), 488f, var_0.b.b.e), var_0.a, u_input.b.x, all(!(!vec3<bool>(false, true, var_0.a.e.x)))), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.a.c, ~0u), reverseBits(_wgslsmith_add_u32(u_input.a | var_0.a.c, ~1u))), countOneBits(vec3<i32>(~var_0.a.b, -(var_0.a.b >> (0u % 32u)), var_0.b.c.b)), true);
    return vec4<bool>(select(var_0.a.e.x, var_0.a.e.x, var_0.e), select(false, true, (~u_input.a & u_input.a) <= 46594u), all(var_2.zzw), _wgslsmith_f_op_f32(-var_3.x) > -679f);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>) -> f32 {
    var var_0 = abs(35450i);
    var_0 = -2147483647i;
    let var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(abs(arg_2.x)), 38905i, 39176i), vec3<i32>(max(arg_0.b, arg_2.x) & _wgslsmith_sub_i32(arg_2.x, u_input.b.x), -23670i, -63553i));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1187f);
    let var_3 = any(select(func_2(), vec4<bool>(select(!arg_0.e.x, arg_0.e.x, true), func_2().x, false, true), select(false, !arg_0.e.x, arg_0.e.x)));
    return 2035f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, true, true & any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(372f * _wgslsmith_f_op_f32(f32(-1f) * -591f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1249f - -561f) - -482f))) != _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(451f, -388f, 203f) - vec3<f32>(-708f, -463f, -1000f)))), 2147483647i, ~_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -771f)), select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1592f, 1457f, 507f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1673f, -1387f, -685f) + vec3<f32>(574f, 266f, 937f))))), countOneBits(-max(vec4<i32>(u_input.b.x, u_input.b.x, -45586i, -10676i), vec4<i32>(-11559i, u_input.b.x, -47200i, 2147483647i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-132f * _wgslsmith_f_op_f32(step(363f, -336f))), 492f, _wgslsmith_f_op_f32(1548f + 1055f)) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-506f * -246f), _wgslsmith_f_op_f32(floor(937f))), _wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1439f * -1348f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -507f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-468f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1046f));
    var var_3 = _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, -1i, -2147483647i)) | (vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) | vec3<i32>(-10321i, u_input.b.x, u_input.b.x)), vec3<i32>(_wgslsmith_mod_i32(1i, u_input.b.x), u_input.b.x, 0i)), u_input.b);
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(717f, -1519f, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-638f, var_2.x, 657f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) - vec3<f32>(416f, -1185f, var_2.x)))), ~u_input.b.x, 15173u, -194f, vec4<bool>(any(func_2()), false, func_2().x, var_1)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 709f, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(709f, var_2.x, -716f) * vec3<f32>(var_2.x, 854f, var_2.x)))), ~(-2147483647i), 4294967295u, var_2.x, select(func_2(), !vec4<bool>(true, var_1, var_1, var_1), !vec4<bool>(var_0.x, var_0.x, true, var_1))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(1000f, var_2.x, false)), _wgslsmith_f_op_f32(step(-1562f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x)), -17650i, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, var_1)), ~vec2<u32>(u_input.a, 0u)), var_2.x, vec4<bool>(true, !var_0.x, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, var_2.x, var_2.x) - vec3<f32>(var_2.x, var_2.x, 3812f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 897f, var_2.x) - vec3<f32>(920f, var_2.x, var_2.x))), -(i32(-1i) * -1i), countOneBits(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-1104f - 1000f), vec4<bool>(false, true, !var_0.x, true)), select(abs(1206i) >> (firstLeadingBit(13135u) % 32u), countOneBits(reverseBits(1i)), firstTrailingBit(1i) > ~u_input.b.x), all(vec2<bool>(var_1 && var_1, true))), 24235u, firstTrailingBit(~u_input.b), false);
    let var_5 = countOneBits(-abs(vec4<i32>(var_3.x, var_4.a.b, var_4.d.x, -2147483647i)) | max(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, -58741i, var_4.d.x, -62737i), vec4<i32>(-1i, var_3.x, u_input.b.x, 58964i)), vec4<i32>(var_3.x, 10914i, u_input.b.x, var_4.b.b.b)), vec4<i32>(_wgslsmith_mult_i32(22765i, -9890i), var_4.d.x, 23294i, firstLeadingBit(-2147483647i))));
    let var_6 = select(var_4.a.e.xyw, func_2().ywz, select(select(vec3<bool>(any(vec2<bool>(var_0.x, var_1)), false | var_4.b.a.e.x, false), select(vec3<bool>(var_0.x, var_4.a.e.x, false), vec3<bool>(true, var_4.b.c.e.x, false), all(vec2<bool>(var_0.x, false))), !(!var_4.a.e.yzw)), !vec3<bool>(true, var_1 == true, false), var_4.b.b.e.yyx));
    let var_7 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, var_4.a.c, 0u, 101697u)), ~vec4<u32>(u_input.a, var_4.b.b.c, 31049u, u_input.a))) & var_4.b.c.c, var_4.d, firstLeadingBit(vec4<u32>(var_4.b.c.c, _wgslsmith_add_u32(firstLeadingBit(u_input.a), abs(u_input.a)), _wgslsmith_mult_u32(46405u, var_4.b.a.c) | u_input.a, ~(~u_input.a))), ~abs(max(~vec2<u32>(u_input.a, var_4.b.c.c), select(vec2<u32>(var_4.b.a.c, u_input.a), vec2<u32>(4294967295u, 3387u), var_6.xy))));
}

