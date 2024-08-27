struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(953f, 365f), vec2<f32>(-290f, 1000f), vec2<f32>(944f, -1104f), vec2<f32>(1000f, 448f), vec2<f32>(1847f, -1668f), vec2<f32>(773f, -1027f), vec2<f32>(1394f, -1717f), vec2<f32>(203f, -753f), vec2<f32>(1514f, -1189f), vec2<f32>(1849f, 254f), vec2<f32>(-1000f, 756f), vec2<f32>(-573f, -314f), vec2<f32>(1911f, 446f), vec2<f32>(495f, -293f), vec2<f32>(304f, 466f), vec2<f32>(-1540f, 1000f), vec2<f32>(269f, -1451f), vec2<f32>(364f, -283f), vec2<f32>(680f, -2643f), vec2<f32>(-1175f, -118f), vec2<f32>(-1658f, 205f), vec2<f32>(261f, 401f), vec2<f32>(1008f, -220f), vec2<f32>(-766f, -1000f), vec2<f32>(-645f, -1000f), vec2<f32>(-1118f, -897f), vec2<f32>(-391f, 1000f), vec2<f32>(456f, 2168f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec2<u32> {
    return ~vec2<u32>(~u_input.c.x, u_input.c.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    return arg_0.b.x;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(u_input.b.wz, vec2<i32>(_wgslsmith_div_i32(0i, u_input.d.x), 19924i), Struct_1(false, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-118f * -229f), 541f), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(true, vec2<f32>(1106f, 2045f), true, vec2<u32>(4294967295u, u_input.a), vec4<f32>(2057f, 1622f, -353f, 1239f)), 56325u)), _wgslsmith_f_op_f32(-771f - 1000f)))), false, u_input.b.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -833f, 1000f, -259f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-603f, 1607f, 1183f, 220f)))))));
    var var_1 = var_0.c.a;
    var_1 = var_0.c.c;
    var var_2 = ~97050u;
    global0 = array<vec2<f32>, 28>();
    return Struct_4(vec4<i32>(19839i, -1732i, -465i, u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(u_input.e ^ var_0.b.x, -var_0.b.x)), ~u_input.d.yy));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    let var_0 = arg_1.b;
    global0 = array<vec2<f32>, 28>();
    let var_1 = select(arg_0.yx, !(!select(select(vec2<bool>(true, arg_1.c.c), arg_0.xz, vec2<bool>(false, var_0.c)), select(arg_0.zx, arg_0.yy, true), !vec2<bool>(true, var_0.a))), all(vec2<bool>(any(arg_0.xx), !var_0.c)) && false);
    let var_2 = arg_2;
    var var_3 = -arg_2.a.x;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 28>();
    var var_0 = true;
    let var_1 = vec2<bool>(max(min(~0u, u_input.c.x << (u_input.a % 32u)), u_input.b.x) > abs(~u_input.c.x ^ ~u_input.b.x), select(true, !any(vec2<bool>(true, true)), true));
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.xw ^ func_1());
    global0 = array<vec2<f32>, 28>();
    var var_3 = func_4(!select(select(vec3<bool>(true, false, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, true, var_1.x)), var_1.x), vec3<bool>(true, var_1.x, true), all(vec3<bool>(true, false, var_1.x))), Struct_2(u_input.d, Struct_1(!var_1.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2239f, 145f), global0[_wgslsmith_index_u32(~u_input.c.x, 28u)])), !var_1.x, u_input.b.zw << (select(u_input.b.xz, u_input.b.yx, true) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, 467f, -393f, 851f))), Struct_1(any(vec2<bool>(true, false)) & false, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, 1019f)))), var_1.x, ~u_input.b.wz, vec4<f32>(1f, 1f, 1f, 1f)), ~vec2<u32>(var_2, 4549u)), func_2(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1640f)), _wgslsmith_f_op_f32(f32(-1f) * -1726f))))));
    var var_4 = func_4(select(select(!vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, any(vec2<bool>(var_1.x, true)), true), !var_1.x), select(!(!vec3<bool>(var_3.c, false, false)), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, var_3.c), false), vec3<bool>(true, true, true)), select(!select(vec3<bool>(var_3.a, var_1.x, false), vec3<bool>(var_1.x, false, false), false), vec3<bool>(!var_1.x, !var_3.a, all(vec4<bool>(true, true, false, var_3.a))), !(!vec3<bool>(false, var_3.c, true)))), Struct_2(-func_2().a, func_4(vec3<bool>(var_1.x, all(vec3<bool>(false, false, var_1.x)), select(false, true, var_1.x)), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 45403i, -1i), vec4<i32>(-25298i, u_input.e, u_input.e, 61274i)), func_4(vec3<bool>(false, true, var_1.x), Struct_2(vec4<i32>(u_input.e, u_input.d.x, 2147483647i, -1i), Struct_1(false, vec2<f32>(var_3.e.x, 1051f), var_1.x, u_input.b.yx, vec4<f32>(var_3.b.x, var_3.b.x, -367f, var_3.b.x)), Struct_1(true, var_3.e.yx, false, vec2<u32>(1u, var_2), vec4<f32>(var_3.b.x, 274f, 1119f, var_3.b.x)), u_input.c.zz), Struct_4(u_input.d, u_input.e), 199f), func_4(vec3<bool>(false, true, false), Struct_2(u_input.d, Struct_1(var_1.x, vec2<f32>(var_3.e.x, var_3.e.x), var_1.x, vec2<u32>(0u, 4294967295u), vec4<f32>(1081f, 773f, var_3.b.x, -1392f)), Struct_1(false, vec2<f32>(var_3.b.x, var_3.e.x), false, vec2<u32>(0u, u_input.a), vec4<f32>(var_3.b.x, 989f, var_3.e.x, 1704f)), vec2<u32>(1229u, var_3.d.x)), Struct_4(u_input.d, u_input.e), var_3.e.x), _wgslsmith_sub_vec2_u32(var_3.d, u_input.c.zy)), Struct_4(u_input.d, _wgslsmith_mod_i32(-33360i, u_input.d.x)), 773f), func_4(vec3<bool>(all(var_1), true, all(vec3<bool>(false, true, var_3.a))), Struct_2(vec4<i32>(-22955i, 0i, u_input.d.x, -2147483647i), Struct_1(var_1.x, var_3.b, true, vec2<u32>(u_input.a, u_input.a), vec4<f32>(var_3.b.x, -1411f, -1000f, var_3.b.x)), Struct_1(false, var_3.b, true, var_3.d, var_3.e), select(vec2<u32>(3640u, 2442u), vec2<u32>(u_input.b.x, var_3.d.x), true)), Struct_4(vec4<i32>(0i, -4308i, 0i, -14127i) | vec4<i32>(u_input.d.x, 0i, -1i, 2055i), ~u_input.d.x), var_3.b.x), vec2<u32>(min(~u_input.c.x, select(1u, 42390u, var_1.x)), 26634u)), func_2(), var_3.e.x);
    var_4 = func_4(!select(select(!vec3<bool>(true, var_4.a, false), !vec3<bool>(var_3.c, false, true), !vec3<bool>(var_4.c, var_4.c, var_1.x)), select(vec3<bool>(var_4.c, true, var_3.c), vec3<bool>(true, true, true), select(vec3<bool>(true, false, var_4.c), vec3<bool>(var_3.a, false, var_3.a), var_4.c)), any(vec3<bool>(true, true, false))), Struct_2(vec4<i32>(select(0i, -u_input.d.x, var_4.c), -14129i, u_input.d.x, 21694i), func_4(!(!vec3<bool>(true, false, var_1.x)), Struct_2(u_input.d, Struct_1(var_3.a, vec2<f32>(var_3.b.x, 427f), false, vec2<u32>(var_4.d.x, u_input.a), vec4<f32>(var_3.b.x, 1032f, var_3.b.x, -1123f)), func_4(vec3<bool>(false, var_4.a, true), Struct_2(u_input.d, Struct_1(var_3.a, global0[_wgslsmith_index_u32(73137u, 28u)], true, var_3.d, vec4<f32>(var_4.e.x, 1000f, var_4.e.x, var_4.b.x)), Struct_1(true, var_4.e.ww, var_3.c, vec2<u32>(84280u, 114903u), var_3.e), vec2<u32>(5810u, 44345u)), Struct_4(u_input.d, u_input.e), -419f), ~var_3.d), Struct_4(vec4<i32>(u_input.e, u_input.d.x, u_input.d.x, 0i) & vec4<i32>(2147483647i, u_input.d.x, 24177i, -1i), _wgslsmith_clamp_i32(23541i, u_input.d.x, 1i)), _wgslsmith_f_op_f32(-var_4.e.x)), func_4(select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(true, var_4.a, false), select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, true, var_1.x), vec3<bool>(var_4.c, true, var_3.a))), Struct_2(vec4<i32>(u_input.e, u_input.e, 22973i, -9905i), func_4(vec3<bool>(true, true, var_1.x), Struct_2(vec4<i32>(u_input.d.x, u_input.d.x, u_input.e, 44744i), Struct_1(var_1.x, vec2<f32>(var_4.b.x, var_3.b.x), false, vec2<u32>(var_4.d.x, var_3.d.x), vec4<f32>(-1574f, -1398f, -1607f, var_3.e.x)), Struct_1(false, vec2<f32>(var_4.e.x, var_4.b.x), var_3.c, vec2<u32>(var_3.d.x, 0u), var_3.e), vec2<u32>(68623u, var_4.d.x)), Struct_4(u_input.d, -1i), -943f), Struct_1(true, vec2<f32>(var_3.e.x, var_3.b.x), var_1.x, vec2<u32>(0u, 1u), var_3.e), vec2<u32>(var_4.d.x, var_3.d.x) & var_4.d), func_2(), var_3.b.x), var_4.d), Struct_4(abs(-u_input.d | select(vec4<i32>(u_input.e, 1i, 0i, -1i), u_input.d, var_3.a)), 1i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.x - var_4.b.x) + _wgslsmith_f_op_f32(973f * 1178f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, 20753i, -7953i, u_input.e), u_input.d), max(vec4<i32>(35143i, u_input.d.x, u_input.e, -1i), u_input.d)), abs(vec4<i32>(38707i, u_input.e, u_input.d.x, u_input.d.x) | u_input.d)), ~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.wx, vec2<i32>(8171i, 25236i)), abs(-2147483647i), -u_input.e, i32(-1i) * -12659i), ~vec4<i32>(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, u_input.d.x), ~(-3719i), u_input.d.x >> (u_input.c.x % 32u))), ~1u, _wgslsmith_div_vec2_u32(~vec2<u32>(func_1().x, firstTrailingBit(var_4.d.x)), u_input.c.zz));
}

