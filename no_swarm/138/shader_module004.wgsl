struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31078u;

var<private> global1: array<i32, 3> = array<i32, 3>(19209i, 2147483647i, 2147483647i);

var<private> global2: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    return select(all(vec3<bool>(false, true, true)), true, false);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> Struct_3 {
    let var_0 = u_input.b;
    let var_1 = ~vec4<i32>(select(~727i, min(firstTrailingBit(global2.x), -44339i), all(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x))), -_wgslsmith_div_i32(i32(-1i) * -1i, arg_1), global1[_wgslsmith_index_u32(824u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]);
    global2 = var_1.zx;
    let var_2 = ~vec2<i32>(_wgslsmith_mod_i32(-58200i, -2147483647i), -1i);
    global0 = 0u;
    return Struct_3(max(u_input.b, u_input.b << (var_0 % vec3<u32>(32u))), select(false, !(!arg_0.x) != arg_0.x, func_3()), Struct_1(arg_0.x && arg_0.x, -329f));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = firstLeadingBit(abs(abs(~firstTrailingBit(vec2<i32>(-2147483647i, global2.x)))));
    let var_1 = func_2(vec2<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_0.a, false, false)), !vec3<bool>(true, arg_0.a, true))), false), _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_sub_i32(3656i, 3739i), firstLeadingBit(-32886i)), 640f);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.b * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-933f - -580f), 267f, var_1.b))), var_1.c.b));
    var var_3 = var_1.c;
    var var_4 = true;
    return select(!vec3<bool>(arg_0.a, all(!vec2<bool>(false, var_1.b)), arg_0.a), !select(select(select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(false, false, var_3.a), vec3<bool>(var_1.b, true, var_3.a)), !vec3<bool>(var_1.b, var_1.b, true), any(vec2<bool>(arg_0.a, var_3.a))), vec3<bool>(arg_0.a, var_3.a, var_1.c.a && var_3.a), func_3()), vec3<bool>(all(select(vec3<bool>(var_3.a, false, var_3.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(var_3.a, true, true))) == var_3.a, arg_0.a, true));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(998f + 741f) + _wgslsmith_f_op_f32(arg_2.e.x * 186f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1661f, arg_2.c.b) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.e.x, arg_2.c.b))))), vec2<f32>(233f, arg_2.a.b), arg_1.x)));
    let var_2 = arg_2;
    var var_3 = countOneBits(-(~vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(~u_input.b.x, 3u)], _wgslsmith_add_i32(u_input.e, u_input.d), 15712i)));
    let var_4 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f) * 229f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = arg_1.b.c.b;
    global2 = arg_1.d.zx;
    var var_1 = u_input.c;
    var_0 = 548f;
    var var_2 = 2673f;
    return arg_1.b;
}

fn func_6(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = reverseBits(vec3<u32>(8975u, arg_2.c, select(func_2(vec2<bool>(true, true), 47002i, arg_0.e.b.b).a.x, 1u, arg_2.b.c.a))) << (u_input.b % vec3<u32>(32u));
    global1 = array<i32, 3>();
    global0 = ~_wgslsmith_dot_vec2_u32(~countOneBits(~vec2<u32>(19743u, 16732u)), u_input.b.zx);
    global2 = -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -13769i), ~vec2<i32>(-1i, 2147483647i)), arg_0.d.x), ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.d.x, 0i), arg_2.d.x, _wgslsmith_sub_i32(-2147483647i, -22635i)));
    return Struct_4(_wgslsmith_div_f32(370f, _wgslsmith_f_op_f32(-arg_2.b.a.b)), Struct_2(Struct_1((false & arg_2.e.a.a) || any(arg_1), 1000f), func_2(vec2<bool>(false, any(vec4<bool>(arg_2.e.a.a, false, true, true))), 36552i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.b.b + 1000f))).c, arg_2.b.a, vec2<bool>(all(vec4<bool>(true, arg_0.e.c.a, true, true)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.e.e, _wgslsmith_f_op_vec4_f32(-arg_0.b.e), arg_0.b.c.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_2.e.e))))), 1u, arg_0.d, arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(467f, 400f)))), func_5(_wgslsmith_f_op_f32(func_4(true, func_1(Struct_1(false, -574f)), Struct_2(Struct_1(true, -1494f), Struct_1(false, 398f), Struct_1(false, 1589f), vec2<bool>(true, true), vec4<f32>(694f, -770f, -1640f, 303f)), select(vec2<bool>(true, false), vec2<bool>(false, true), false))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -780f), Struct_2(Struct_1(false, -302f), Struct_1(true, 237f), Struct_1(false, -2514f), vec2<bool>(true, false), vec4<f32>(-1879f, -591f, -669f, 225f)), 8564u & u_input.a, -vec3<i32>(28498i, 59977i, 16172i), Struct_2(Struct_1(false, 3064f), Struct_1(false, -1000f), Struct_1(true, 1032f), vec2<bool>(false, true), vec4<f32>(477f, -720f, 390f, -786f)))), ~(_wgslsmith_add_u32(0u, 1u) >> (_wgslsmith_div_u32(0u, u_input.b.x) % 32u)), -vec3<i32>(-global1[_wgslsmith_index_u32(1u, 3u)], -61923i, 1i), func_5(_wgslsmith_f_op_f32(floor(-682f)), Struct_4(_wgslsmith_f_op_f32(max(531f, 596f)), func_5(-507f, Struct_4(1282f, Struct_2(Struct_1(true, 622f), Struct_1(true, 716f), Struct_1(true, 479f), vec2<bool>(true, false), vec4<f32>(563f, 718f, 2213f, -531f)), u_input.b.x, vec3<i32>(u_input.d, global1[_wgslsmith_index_u32(3041u, 3u)], 2147483647i), Struct_2(Struct_1(false, 1454f), Struct_1(false, -634f), Struct_1(false, -254f), vec2<bool>(true, true), vec4<f32>(-1548f, -1248f, 1666f, -638f)))), u_input.c, ~vec3<i32>(u_input.e, global2.x, 16092i), func_5(-498f, Struct_4(-740f, Struct_2(Struct_1(false, -1676f), Struct_1(true, -388f), Struct_1(true, 855f), vec2<bool>(true, true), vec4<f32>(2148f, 575f, 453f, 272f)), u_input.c, vec3<i32>(51183i, global1[_wgslsmith_index_u32(1u, 3u)], 2147483647i), Struct_2(Struct_1(false, 1640f), Struct_1(false, -1019f), Struct_1(false, -814f), vec2<bool>(true, false), vec4<f32>(310f, 284f, -1105f, 970f))))))), vec3<bool>(true, true, true), Struct_4(_wgslsmith_f_op_f32(919f - -837f), Struct_2(Struct_1(true, func_2(vec2<bool>(false, true), global2.x, -1075f).c.b), func_5(1f, Struct_4(532f, Struct_2(Struct_1(false, -2566f), Struct_1(true, 1454f), Struct_1(false, -698f), vec2<bool>(true, false), vec4<f32>(-1029f, 463f, -1107f, -736f)), 32553u, vec3<i32>(global2.x, -2147483647i, 11039i), Struct_2(Struct_1(true, 969f), Struct_1(true, -1000f), Struct_1(true, 1406f), vec2<bool>(false, false), vec4<f32>(1148f, 291f, 308f, 1719f)))).c, func_5(1674f, Struct_4(-2809f, Struct_2(Struct_1(true, 1504f), Struct_1(false, -2033f), Struct_1(true, -1000f), vec2<bool>(true, false), vec4<f32>(133f, -1000f, 974f, 728f)), 0u, vec3<i32>(20564i, 14409i, u_input.d), Struct_2(Struct_1(true, -118f), Struct_1(true, -1000f), Struct_1(false, -550f), vec2<bool>(false, false), vec4<f32>(-543f, -1049f, -796f, 117f)))).b, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-674f, 1360f, -1848f, -542f), vec4<f32>(-1000f, -2437f, 662f, 1236f))))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, _wgslsmith_mult_u32(4294967295u, u_input.b.x)), u_input.c), vec3<i32>(global2.x, -global2.x ^ global2.x, -(u_input.d | 141i)), Struct_2(Struct_1(true, func_5(1656f, Struct_4(-291f, Struct_2(Struct_1(true, 425f), Struct_1(true, -612f), Struct_1(true, -429f), vec2<bool>(true, true), vec4<f32>(-887f, -2576f, -1468f, 272f)), u_input.b.x, vec3<i32>(-2147483647i, -2147483647i, global1[_wgslsmith_index_u32(41109u, 3u)]), Struct_2(Struct_1(true, 1000f), Struct_1(false, 271f), Struct_1(false, -837f), vec2<bool>(true, false), vec4<f32>(-1833f, -2330f, 421f, 1026f)))).b.b), func_2(vec2<bool>(true, false), global2.x | 2147483647i, _wgslsmith_div_f32(-2738f, -1188f)).c, func_2(vec2<bool>(false, true), -2147483647i, _wgslsmith_f_op_f32(-628f * 1191f)).c, vec2<bool>(u_input.e <= u_input.e, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, -1633f, 1760f, -809f)), _wgslsmith_div_vec4_f32(vec4<f32>(1012f, -159f, -460f, -304f), vec4<f32>(1000f, -280f, 833f, -165f))))));
    let var_1 = false;
    let var_2 = func_6(func_6(func_6(func_6(func_6(Struct_4(-1000f, Struct_2(var_0.b.a, var_0.b.b, var_0.b.a, vec2<bool>(var_1, true), vec4<f32>(var_0.a, 201f, var_0.b.b.b, 212f)), 2848u, vec3<i32>(13006i, global2.x, 2147483647i), Struct_2(Struct_1(var_0.e.d.x, var_0.a), Struct_1(var_1, var_0.b.b.b), Struct_1(true, var_0.a), vec2<bool>(true, var_0.b.c.a), vec4<f32>(var_0.e.a.b, 327f, var_0.b.a.b, var_0.e.e.x))), vec3<bool>(var_0.e.a.a, var_1, true), Struct_4(var_0.a, Struct_2(var_0.e.a, var_0.e.b, var_0.e.c, var_0.e.d, var_0.e.e), 4294967295u, var_0.d, Struct_2(Struct_1(false, var_0.b.a.b), Struct_1(true, var_0.b.b.b), Struct_1(var_0.b.a.a, 798f), vec2<bool>(true, var_1), vec4<f32>(206f, var_0.b.b.b, var_0.e.c.b, var_0.a)))), vec3<bool>(true, false, var_0.e.b.a), Struct_4(-1234f, var_0.e, 4294967295u, vec3<i32>(-2147483647i, 2147483647i, var_0.d.x), Struct_2(var_0.e.a, var_0.b.b, Struct_1(var_1, 704f), var_0.e.d, var_0.b.e))), vec3<bool>(func_5(-444f, Struct_4(var_0.b.c.b, Struct_2(var_0.b.b, var_0.b.c, var_0.e.b, var_0.b.d, var_0.b.e), var_0.c, var_0.d, Struct_2(Struct_1(false, var_0.e.c.b), Struct_1(false, 538f), Struct_1(true, var_0.a), var_0.b.d, var_0.b.e))).b.a, func_6(Struct_4(var_0.a, Struct_2(var_0.e.a, Struct_1(var_1, var_0.e.c.b), var_0.e.b, vec2<bool>(var_1, false), vec4<f32>(var_0.a, -848f, -693f, 240f)), var_0.c, vec3<i32>(var_0.d.x, var_0.d.x, -13648i), Struct_2(Struct_1(true, -374f), Struct_1(true, var_0.a), var_0.b.c, var_0.b.d, var_0.e.e)), vec3<bool>(var_0.e.c.a, true, var_0.e.c.a), Struct_4(-921f, Struct_2(Struct_1(var_0.e.a.a, 1000f), Struct_1(false, var_0.b.c.b), Struct_1(false, var_0.e.e.x), var_0.b.d, vec4<f32>(-186f, 1230f, -654f, 738f)), u_input.a, var_0.d, var_0.b)).e.c.a, true), Struct_4(var_0.e.e.x, var_0.e, var_0.c, -var_0.d, func_5(var_0.a, Struct_4(-1000f, Struct_2(Struct_1(var_0.b.d.x, var_0.a), var_0.b.c, var_0.e.c, vec2<bool>(true, true), vec4<f32>(var_0.e.a.b, var_0.a, 1125f, var_0.e.c.b)), u_input.b.x, vec3<i32>(-2147483647i, u_input.e, global2.x), var_0.b)))), vec3<bool>(false, var_1, all(!vec4<bool>(true, var_0.b.d.x, var_1, false))), func_6(Struct_4(1253f, Struct_2(var_0.b.c, Struct_1(true, var_0.a), Struct_1(var_1, var_0.b.e.x), vec2<bool>(var_0.e.a.a, var_0.e.c.a), vec4<f32>(var_0.b.a.b, 1171f, -1785f, 199f)), u_input.b.x, vec3<i32>(u_input.e, -10831i, global1[_wgslsmith_index_u32(1u, 3u)]), var_0.e), vec3<bool>(var_1, 3727u > var_0.c, var_1 | var_1), func_6(func_6(Struct_4(var_0.e.a.b, var_0.e, 4294967295u, var_0.d, Struct_2(Struct_1(true, 202f), Struct_1(false, 122f), var_0.b.b, var_0.b.d, var_0.b.e)), vec3<bool>(false, var_0.b.d.x, true), Struct_4(-235f, Struct_2(var_0.e.a, var_0.b.b, Struct_1(true, 1000f), var_0.b.d, var_0.e.e), u_input.a, vec3<i32>(27310i, -5253i, global1[_wgslsmith_index_u32(var_0.c, 3u)]), var_0.e)), select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, var_0.b.c.a), vec3<bool>(var_1, var_0.e.d.x, true)), Struct_4(var_0.e.e.x, Struct_2(var_0.b.b, Struct_1(var_0.e.c.a, var_0.a), Struct_1(false, var_0.e.c.b), vec2<bool>(var_0.b.b.a, var_0.b.b.a), var_0.b.e), var_0.c, var_0.d, var_0.e)))), vec3<bool>(var_1, true, var_1), Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a.b) * 1464f))), Struct_2(func_5(var_0.a, Struct_4(var_0.b.c.b, var_0.b, u_input.c, var_0.d, var_0.b)).b, Struct_1(any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(select(-2668f, 1210f, false))), func_5(var_0.e.c.b, func_6(Struct_4(-1527f, Struct_2(var_0.e.a, var_0.e.b, Struct_1(true, -946f), vec2<bool>(var_1, true), vec4<f32>(var_0.e.c.b, var_0.e.e.x, var_0.b.c.b, -1506f)), 1u, vec3<i32>(-77247i, u_input.d, u_input.d), var_0.e), vec3<bool>(var_0.b.d.x, var_1, true), Struct_4(var_0.e.a.b, var_0.e, var_0.c, var_0.d, Struct_2(Struct_1(true, var_0.b.c.b), var_0.b.c, Struct_1(var_1, -1986f), var_0.b.d, var_0.e.e)))).a, var_0.e.d, var_0.e.e), min(select(u_input.a >> (4294967295u % 32u), 0u, all(vec4<bool>(var_0.b.b.a, true, false, var_1))), ~var_0.c), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.x, 0i, 6423i), var_0.d, vec3<i32>(-36410i, global2.x, u_input.d))), vec3<i32>(_wgslsmith_sub_i32(1i, -13960i), global2.x << (var_0.c % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 49449i, 1i, global2.x), vec4<i32>(72309i, 40833i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 3u)]))), vec3<i32>(~0i, ~u_input.e, ~(-19981i))), func_6(Struct_4(131f, var_0.b, ~var_0.c, vec3<i32>(var_0.d.x, var_0.d.x, -15848i), func_6(Struct_4(1270f, var_0.e, 0u, var_0.d, Struct_2(Struct_1(var_1, 1059f), Struct_1(true, -556f), Struct_1(var_1, 207f), vec2<bool>(var_0.e.a.a, var_0.e.a.a), vec4<f32>(717f, 565f, 2028f, -634f))), vec3<bool>(false, var_0.e.d.x, true), Struct_4(var_0.b.a.b, var_0.e, var_0.c, var_0.d, var_0.b)).b), !(!vec3<bool>(var_1, var_1, var_1)), Struct_4(_wgslsmith_f_op_f32(1000f - var_0.e.b.b), Struct_2(Struct_1(false, 1538f), var_0.e.a, var_0.b.b, var_0.e.d, var_0.e.e), 4294967295u, -var_0.d, Struct_2(Struct_1(var_1, -285f), var_0.b.a, Struct_1(var_0.e.d.x, -232f), var_0.e.d, var_0.b.e))).b)).b;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1404f)), func_6(func_6(Struct_4(882f, var_2, var_0.c, var_0.d, Struct_2(var_2.b, Struct_1(true, -872f), var_2.c, var_2.d, vec4<f32>(var_2.a.b, var_0.b.c.b, var_2.b.b, -494f))), vec3<bool>(false, var_1, var_0.b.a.a), Struct_4(var_2.b.b, var_2, 1u, vec3<i32>(48609i, 65267i, u_input.d), Struct_2(var_2.a, Struct_1(false, var_2.e.x), Struct_1(true, -927f), vec2<bool>(true, false), var_2.e))), !vec3<bool>(var_2.a.a, var_1, var_2.b.a), Struct_4(var_2.b.b, var_0.b, 71472u, vec3<i32>(2423i, global2.x, global2.x), Struct_2(Struct_1(false, -487f), var_2.b, Struct_1(var_2.b.a, 247f), vec2<bool>(var_0.b.a.a, false), var_2.e)))).c.b)), 698f);
    let var_4 = true;
    global0 = reverseBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(1228f, _wgslsmith_mod_i32(-var_0.d.x, 1i), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(round(var_3.x))), _wgslsmith_f_op_f32(max(var_3.x, 335f)), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(38569u, var_0.c), ~(func_6(Struct_4(var_0.e.a.b, var_2, 61117u, var_0.d, Struct_2(var_0.e.b, var_2.b, Struct_1(var_4, -1000f), var_0.b.d, vec4<f32>(118f, var_3.x, -923f, var_0.b.a.b))), vec3<bool>(var_1, var_0.b.d.x, var_4), Struct_4(-203f, Struct_2(var_0.e.c, Struct_1(true, var_0.b.c.b), Struct_1(var_2.c.a, 1051f), vec2<bool>(false, var_4), var_2.e), u_input.c, vec3<i32>(global1[_wgslsmith_index_u32(var_0.c, 3u)], 27175i, var_0.d.x), var_0.b)).c ^ abs(4294967295u))));
}

