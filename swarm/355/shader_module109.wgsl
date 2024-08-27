struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(1i, 1i, 0i, -1i, 18904i, -4532i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = ~min(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 0u)), ~vec3<u32>(31362u, 77491u, 10360u)), 6u)], _wgslsmith_add_i32(abs(1i), u_input.a)), _wgslsmith_mult_vec2_i32(reverseBits(select(vec2<i32>(2147483647i, 25135i), vec2<i32>(-1558i, -13320i), vec2<bool>(arg_0, arg_0))), ~(~vec2<i32>(0i, global0[_wgslsmith_index_u32(14312u, 6u)]))));
    let var_1 = vec4<i32>(-(_wgslsmith_mult_i32(30512i, global0[_wgslsmith_index_u32(1u, 6u)]) | _wgslsmith_mod_i32(-16879i, u_input.c)) >> (reverseBits(~abs(63402u)) % 32u), ~1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 15640u, 59432u), vec3<u32>(71083u, 0u, 0u)), !arg_0), ~abs(80461u)), ~vec2<u32>(~13007u, 4294967295u)), 6u)], ~u_input.a);
    let var_2 = all(select(select(!vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(!arg_0, false, true, true)), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(!arg_0, arg_0 & true, arg_0, !arg_0), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, true, true, true))), true));
    let var_3 = Struct_1(select(u_input.b, -1i, any(!select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, var_2, var_2, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(599f)) - -606f))), vec3<bool>(false, all(vec2<bool>(!var_2, true)), any(!vec4<bool>(false, var_2, var_2, true))), 18810u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(895f, -171f, -1709f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(641f, 153f, -918f), vec3<f32>(622f, -132f, 1217f)))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)));
    return vec4<bool>(true, _wgslsmith_div_f32(var_3.b, 591f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.e.x), var_3.e.x))), select(false, all(select(!var_3.c.xz, var_3.c.yx, all(var_3.c.yx))), true), var_3.d > _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), 31260u, var_3.d), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_3.d, var_3.d, var_3.d), _wgslsmith_add_vec3_u32(vec3<u32>(var_3.d, 0u, 25519u), vec3<u32>(var_3.d, var_3.d, 22851u)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(arg_1.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c.b.e.x)))), func_3(func_3(true).x).xwz, _wgslsmith_mult_u32(arg_0.e.x, 27533u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.e.x)), _wgslsmith_f_op_f32(361f + 2219f), _wgslsmith_f_op_f32(-1396f - -187f))), arg_1.b.b, arg_1.b.c, min(arg_1.b.d, vec3<i32>(-1i, (arg_0.b.b.a | global0[_wgslsmith_index_u32(arg_1.b.a.d, 6u)]) >> (19100u % 32u), _wgslsmith_mult_i32(reverseBits(-1i), 2147483647i))), arg_1.b.e << (vec4<u32>(~(~arg_1.b.c.a.d), arg_0.b.a.d, _wgslsmith_div_u32(1u, ~arg_1.b.e.x), _wgslsmith_add_u32(14614u, 37766u) | min(arg_0.e.x, arg_0.b.a.d)) % vec4<u32>(32u)));
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = vec2<i32>(-19603i >> (arg_1.b.a.d % 32u), _wgslsmith_add_i32(~_wgslsmith_sub_i32(-1i, -2519i), arg_1.b.c.a.a & 0i));
    var_2 = var_1.b.d.xz;
    return arg_0.e.www;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1481f - -1787f);
    global0 = array<i32, 6>();
    var var_1 = func_4(Struct_3(Struct_1(global0[_wgslsmith_index_u32(52034u, 6u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -541f) - _wgslsmith_div_f32(-1000f, var_0)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), 1u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, -785f), vec3<f32>(-980f, var_0, 651f))), vec3<f32>(var_0, 131f, 363f)))), Struct_2(Struct_1(u_input.c | u_input.c, _wgslsmith_f_op_f32(var_0 * 111f), vec3<bool>(true, true, true), ~9408u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0, var_0))), Struct_1(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0, 6u)], 20383i, u_input.b), _wgslsmith_f_op_f32(-var_0), vec3<bool>(true, true, true), ~12774u, vec3<f32>(-2418f, -446f, var_0)), func_3(false), Struct_1(max(42979i, global0[_wgslsmith_index_u32(12206u, 6u)]), 1521f, select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), 1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(-470f, -165f, var_0))), all(vec2<bool>(true, true))), Struct_2(Struct_1(~global0[_wgslsmith_index_u32(1u, 6u)], 1000f, vec3<bool>(true, true, false), _wgslsmith_mod_u32(1u, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, var_0, -1971f) + vec3<f32>(var_0, var_0, var_0))), Struct_1(29665i, _wgslsmith_f_op_f32(-var_0), vec3<bool>(true, true, false), _wgslsmith_sub_u32(480u, arg_0), vec3<f32>(var_0, var_0, 512f)), vec4<bool>(false, true, true, true), Struct_1(-41535i, _wgslsmith_div_f32(-715f, 1776f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), ~arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1000f, -835f))), true), ~vec3<i32>(firstLeadingBit(5997i), select(u_input.b, global0[_wgslsmith_index_u32(arg_0, 6u)], true), _wgslsmith_add_i32(u_input.b, -1693i)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0, 1u), vec3<u32>(arg_0, arg_0, arg_0)), _wgslsmith_add_u32(max(arg_0, 97852u), ~41817u), abs(arg_0 >> (43933u % 32u)), arg_0)), Struct_4(vec2<f32>(1664f, 849f), Struct_3(Struct_1(u_input.a, _wgslsmith_f_op_f32(-var_0), vec3<bool>(true, true, true), _wgslsmith_div_u32(arg_0, 42561u), vec3<f32>(324f, -1000f, var_0)), Struct_2(Struct_1(37169i, var_0, vec3<bool>(false, true, false), arg_0, vec3<f32>(var_0, var_0, 1068f)), Struct_1(u_input.b, var_0, vec3<bool>(false, true, true), arg_0, vec3<f32>(var_0, -1791f, -1295f)), vec4<bool>(true, true, true, true), Struct_1(22081i, -214f, vec3<bool>(true, false, true), arg_0, vec3<f32>(1037f, -1202f, -1210f)), any(vec4<bool>(true, false, false, true))), Struct_2(Struct_1(u_input.a, -1396f, vec3<bool>(true, false, true), arg_0, vec3<f32>(-858f, var_0, var_0)), Struct_1(global0[_wgslsmith_index_u32(arg_0, 6u)], 569f, vec3<bool>(false, false, false), arg_0, vec3<f32>(var_0, -273f, var_0)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), Struct_1(-5888i, 1000f, vec3<bool>(true, true, true), arg_0, vec3<f32>(var_0, var_0, 769f)), var_0 < 1169f), -select(vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 6u)], global0[_wgslsmith_index_u32(16688u, 6u)], 56056i), vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(11226u, 6u)], -55778i), vec3<bool>(false, true, true)), ~vec4<u32>(85287u, 0u, 4294967295u, arg_0) << (abs(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(var_0 + var_0));
    var var_2 = vec3<bool>(false, func_3(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))).x, !(!(reverseBits(global0[_wgslsmith_index_u32(arg_0, 6u)]) == reverseBits(-2147483647i))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, firstLeadingBit(~_wgslsmith_sub_u32(4294967295u, arg_0))), 6u)];
    return global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~2729u, ~1u >> (_wgslsmith_dot_vec2_u32(var_1.yx, vec2<u32>(4294967295u, 4294967295u)) % 32u)), countOneBits(~_wgslsmith_clamp_u32(var_1.x, var_1.x, 20689u)))), 6u)];
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b | func_2(0u)), -(~(vec2<i32>(u_input.c, 0i) ^ vec2<i32>(24402i, u_input.a)))) | ~(firstTrailingBit(~vec2<i32>(23497i, u_input.a)) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)));
    var var_1 = Struct_5(Struct_3(Struct_1(reverseBits(select(-29011i, global0[_wgslsmith_index_u32(45071u, 6u)], false)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-536f, 439f), _wgslsmith_div_f32(-1881f, 1054f), false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), 48902u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2236f, 1716f, 447f) - vec3<f32>(-157f, -233f, 3226f)))), Struct_2(Struct_1(0i, _wgslsmith_f_op_f32(-1000f - -527f), vec3<bool>(false, true, true), 1u, vec3<f32>(2188f, -490f, 479f)), Struct_1(u_input.b, -1263f, vec3<bool>(true, false, false), ~1u, _wgslsmith_div_vec3_f32(vec3<f32>(212f, -1242f, -1000f), vec3<f32>(1062f, -284f, 1167f))), !func_3(false), Struct_1(-1i, -238f, vec3<bool>(false, false, false), 29807u, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(650f, -226f, 842f)))), false), Struct_2(Struct_1(min(u_input.a, global0[_wgslsmith_index_u32(82618u, 6u)]), -1244f, vec3<bool>(true, true, true), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, 664f, 1811f))), Struct_1(-var_0.x, 928f, vec3<bool>(false, true, false), 52914u >> (0u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(883f, -1000f, 423f))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), Struct_1(_wgslsmith_add_i32(u_input.c, 16357i), -1166f, vec3<bool>(false, true, false), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(288f, -231f, 1000f) * vec3<f32>(833f, 598f, 1205f))), true), ~vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(1u, 6u)] ^ global0[_wgslsmith_index_u32(28333u, 6u)], -global0[_wgslsmith_index_u32(4294967295u, 6u)]), ~(~vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = Struct_3(var_1.a.b.d, Struct_2(Struct_1(var_1.a.b.d.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-135f, var_1.a.c.a.b)))), select(!var_1.a.c.c.zyz, vec3<bool>(false, true, var_1.a.a.c.x), select(vec3<bool>(var_1.a.b.b.c.x, var_1.a.a.c.x, var_1.a.c.e), var_1.a.c.b.c, var_1.a.c.e)), ~var_1.a.b.b.d, _wgslsmith_f_op_vec3_f32(-var_1.a.c.a.e)), var_1.a.b.d, var_1.a.b.c, Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b.a.a, -11700i, 107855i, var_1.a.b.a.a), vec4<i32>(-18949i, 0i, u_input.c, var_0.x)), ~var_0.x), 1769f, vec3<bool>(false, any(vec3<bool>(false, true, var_1.a.c.e)), false), min(3537u, var_1.a.e.x) ^ (30791u ^ var_1.a.c.b.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.c.a.e))), true), Struct_2(var_1.a.c.b, var_1.a.b.b, !select(var_1.a.c.c, select(vec4<bool>(var_1.a.a.c.x, var_1.a.c.a.c.x, var_1.a.b.b.c.x, false), vec4<bool>(false, var_1.a.a.c.x, false, false), vec4<bool>(var_1.a.a.c.x, var_1.a.c.e, var_1.a.c.e, var_1.a.c.d.c.x)), vec4<bool>(var_1.a.b.b.c.x, false, false, true)), var_1.a.a, (false || any(var_1.a.b.c.zwx)) | (_wgslsmith_div_f32(-1380f, 1220f) < _wgslsmith_f_op_f32(step(-882f, 201f)))), ~(-_wgslsmith_sub_vec3_i32(~var_1.a.d, var_1.a.d)), var_1.a.e);
    var var_3 = var_1.a.c;
    var var_4 = _wgslsmith_mod_vec2_i32(~var_2.d.yz, -var_1.a.d.zx);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1332f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f + 113f)) - _wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(-987f + -208f)))));
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(~21407u, func_1(), select(61700u, 1u, true))), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~(~109864u), ~(~33775u), 4294967295u), ~min(select(vec3<u32>(0u, 4294967295u, 55524u), vec3<u32>(76882u, 29596u, 0u), false), vec3<u32>(0u, 1u, 50551u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(234f, _wgslsmith_f_op_f32(step(var_0, 251f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_3(Struct_1(41631i, 1000f, vec3<bool>(true, true, true), ~(~20877u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(954f, 459f, var_0))), Struct_2(Struct_1(countOneBits(-2147483647i), _wgslsmith_f_op_f32(min(var_0, -1755f)), func_3(true).xyz, _wgslsmith_mult_u32(var_1.x, 34258u), vec3<f32>(var_0, 114f, 1468f)), Struct_1(reverseBits(-1i), var_0, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 1505f))), vec4<bool>(true, true, true, true), Struct_1(~(-1i), _wgslsmith_f_op_f32(var_0 + 494f), func_3(true).wwx, var_1.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2052f, var_0, var_0), vec3<f32>(833f, var_0, var_0)))), all(vec3<bool>(false, true, false))), Struct_2(Struct_1(u_input.c | -33757i, var_0, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), 30775u, vec3<f32>(var_0, 919f, 902f)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 6u)], u_input.a)), _wgslsmith_f_op_f32(-var_0), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), 54732u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 602f, var_0))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), Struct_1(-u_input.b, var_0, func_3(true).xwz, select(var_1.x, var_1.x, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 914f, var_0) - vec3<f32>(-2341f, 344f, 1403f))), any(vec3<bool>(true, true, true))), min((vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 6u)], -1i) | vec3<i32>(1i, 13057i, 73238i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 6u)], 9660i, 2147483647i), vec3<i32>(-2147483647i, u_input.b, -37470i)), ~(vec3<i32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)], -15029i) | vec3<i32>(global0[_wgslsmith_index_u32(42203u, 6u)], u_input.a, -598i))), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 0u, 7403u, var_1.x), vec4<u32>(11085u, var_1.x, 0u, var_1.x)), ~(vec4<u32>(4294967295u, var_1.x, var_1.x, 0u) >> (vec4<u32>(var_1.x, var_1.x, var_1.x, 90983u) % vec4<u32>(32u))))));
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, var_0) + var_2.b.a.e.zz))), var_2.b);
    global0 = array<i32, 6>();
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.b.a.e.x - var_2.b.b.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1612f) - var_2.b.c.b.e.yx))))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.b.e.zxz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1201f + _wgslsmith_f_op_f32(-var_2.b.a.e.x)))), _wgslsmith_f_op_f32(-var_2.b.c.d.b)), var_0);
}

