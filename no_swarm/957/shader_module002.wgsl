struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<u32>(0u, 36781u, 4294967295u, 11536u), Struct_1(22158u, vec4<u32>(0u, 33791u, 4294967295u, 4294967295u), vec4<f32>(-1359f, 1273f, -748f, 174f), -393f), vec2<u32>(4294967295u, 21255u)), Struct_2(vec4<u32>(390u, 0u, 0u, 7491u), Struct_1(106239u, vec4<u32>(15506u, 4294967295u, 4294967295u, 1u), vec4<f32>(-1240f, -1000f, 1312f, -662f), 1044f), vec2<u32>(95082u, 4294967295u)), Struct_2(vec4<u32>(29581u, 24581u, 1u, 9597u), Struct_1(4294967295u, vec4<u32>(1u, 1u, 84857u, 3251u), vec4<f32>(-1036f, 1367f, 1778f, 1001f), 1206f), vec2<u32>(15867u, 33040u)), Struct_2(vec4<u32>(0u, 0u, 17420u, 1u), Struct_1(0u, vec4<u32>(1u, 0u, 6149u, 4294967295u), vec4<f32>(-1224f, 554f, -1165f, 1566f), -1526f), vec2<u32>(4294967295u, 18588u)), Struct_2(vec4<u32>(0u, 15085u, 33454u, 45017u), Struct_1(17020u, vec4<u32>(12277u, 4294967295u, 0u, 24635u), vec4<f32>(-349f, 535f, 1315f, 151f), -1434f), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec4<u32>(0u, 0u, 12308u, 4108u), Struct_1(0u, vec4<u32>(46078u, 21856u, 4294967295u, 43801u), vec4<f32>(416f, 1154f, 1390f, 1118f), 1346f), vec2<u32>(34253u, 0u)), Struct_2(vec4<u32>(1u, 1u, 4552u, 1u), Struct_1(28197u, vec4<u32>(0u, 1u, 4294967295u, 70375u), vec4<f32>(-751f, 1233f, 859f, -452f), -256f), vec2<u32>(0u, 77003u)), Struct_2(vec4<u32>(38395u, 0u, 4294967295u, 54050u), Struct_1(0u, vec4<u32>(4294967295u, 1u, 0u, 29465u), vec4<f32>(176f, -1000f, 208f, 1466f), 147f), vec2<u32>(37928u, 62763u)), Struct_2(vec4<u32>(40510u, 0u, 0u, 18539u), Struct_1(24485u, vec4<u32>(10047u, 4294967295u, 41264u, 4294967295u), vec4<f32>(-137f, 276f, 956f, -1553f), 2673f), vec2<u32>(68158u, 6555u)), Struct_2(vec4<u32>(57u, 69607u, 11550u, 47431u), Struct_1(22677u, vec4<u32>(0u, 1u, 97185u, 4294967295u), vec4<f32>(-1144f, 486f, 737f, 249f), -241f), vec2<u32>(49254u, 20180u)), Struct_2(vec4<u32>(1u, 41157u, 48868u, 49531u), Struct_1(30992u, vec4<u32>(0u, 18674u, 4294967295u, 8217u), vec4<f32>(1000f, 1062f, -1515f, 2042f), 945f), vec2<u32>(1u, 0u)), Struct_2(vec4<u32>(4294967295u, 0u, 49815u, 4294967295u), Struct_1(0u, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<f32>(-1945f, 343f, -1437f, -784f), -375f), vec2<u32>(7521u, 4294967295u)), Struct_2(vec4<u32>(25613u, 1u, 16472u, 4294967295u), Struct_1(37661u, vec4<u32>(0u, 10090u, 4294967295u, 4294967295u), vec4<f32>(-1907f, 747f, 1201f, -462f), 359f), vec2<u32>(1u, 51625u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(u_input.a, Struct_1(select(u_input.a.x, u_input.a.x, true), u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(-479f, _wgslsmith_f_op_f32(f32(-1f) * -1685f), _wgslsmith_f_op_f32(trunc(-620f)), -176f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1033f), -606f, _wgslsmith_f_op_f32(-234f - -166f), -1488f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(916f)), _wgslsmith_f_op_f32(1032f - -770f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2193f)), _wgslsmith_f_op_f32(step(-981f, 285f))))), u_input.b.xy);
    let var_1 = Struct_2(vec4<u32>(abs(u_input.b.x) | abs(~1u), var_0.b.a, u_input.b.x, var_0.b.b.x), var_0.b, vec2<u32>(1u >> (var_0.a.x % 32u), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.c, u_input.a.yy), var_0.b.b.xz))));
    let var_2 = _wgslsmith_add_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.xww, vec3<i32>(-1454i, -14695i, -48577i)), ~u_input.c.x), ~vec3<i32>(-18633i, u_input.c.x, -42517i) & select(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.zzx, false), vec3<i32>(-1i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), _wgslsmith_div_vec3_i32((vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) >> (vec3<u32>(81999u, var_1.b.b.x, var_0.b.a) % vec3<u32>(32u))) | ~u_input.c.yxw, ~vec3<i32>(13866i, u_input.c.x, 23993i))), vec3<i32>(-1i, -(i32(-1i) * -1i), u_input.c.x) | vec3<i32>(-firstLeadingBit(u_input.c.x), _wgslsmith_mod_i32(54291i, -u_input.c.x), max(_wgslsmith_mod_i32(0i, -1i), -91141i)));
    global0 = array<Struct_2, 13>();
    return var_1.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.b.x, ~min(vec4<u32>(16707u, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a)) << (u_input.a % vec4<u32>(32u)), vec4<f32>(1493f, _wgslsmith_f_op_f32(ceil(863f)), -488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(938f, 1491f, true)) - -1000f))), -1848f);
    let var_1 = 964i;
    var var_2 = Struct_1(_wgslsmith_add_u32(u_input.a.x & var_0.a, ~20596u), vec4<u32>(41127u, _wgslsmith_mod_u32(countOneBits(func_3(true)), 1u), 4294967295u, firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.d, -454f, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.d, -1267f, -231f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(var_0.c.x, 2170f, 556f, -207f)), _wgslsmith_f_op_vec4_f32(var_0.c + var_0.c), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -1908f) * vec4<f32>(719f, -376f, var_0.d, 1594f))), false)), _wgslsmith_f_op_f32(max(731f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(sign(var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - var_0.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -867f))))));
    let var_3 = _wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(~var_2.a, _wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_2.a), vec2<u32>(89214u, u_input.a.x)), ~0u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 9617u, var_2.b.x, 0u) >> (var_2.b % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(19792u, 4294967295u, 4294967295u, var_2.b.x)), _wgslsmith_clamp_vec4_u32(select(var_0.b, vec4<u32>(var_0.b.x, 225u, var_0.a, 21134u), vec4<bool>(false, false, true, false)), ~vec4<u32>(18965u, u_input.a.x, u_input.b.x, u_input.b.x), firstTrailingBit(vec4<u32>(var_2.a, 16625u, var_0.b.x, var_0.a))), abs(var_0.b | vec4<u32>(1u, var_2.a, u_input.a.x, u_input.b.x)))));
    global0 = array<Struct_2, 13>();
    return Struct_1(var_0.a, u_input.a, var_2.c, -2183f);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2();
    global0 = array<Struct_2, 13>();
    let var_1 = all(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(all(vec4<bool>(true, false, true, true)), 59119u != var_0.b.x, all(vec4<bool>(true, false, true, true)), var_0.c.x > var_0.d), vec4<bool>(false, true, u_input.b.x >= var_0.a, any(vec4<bool>(false, false, false, false))), vec4<bool>(false, true, true, all(vec2<bool>(false, false))))));
    return StorageBuffer(~(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.a, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(68768u, 1u, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(12392u, 26785u, u_input.b.x), vec3<u32>(20564u, 0u, 1u)))), u_input.c.x, u_input.c.x, 36469i, _wgslsmith_f_op_vec4_f32(exp2(var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    var var_0 = !select(~(u_input.a.x & 55564u) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.b.x) << (u_input.a % vec4<u32>(32u)), u_input.a & u_input.a), !all(vec4<bool>(false, false, true, false)), ~(u_input.b.x | 26382u) < countOneBits(_wgslsmith_mod_u32(0u, 44941u)));
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = func_1();
}

