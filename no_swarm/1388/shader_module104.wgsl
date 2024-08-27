struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<vec2<bool>, 19>;

var<private> global2: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false));

var<private> global3: array<vec2<bool>, 19>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a.x, 20635u), 31u)];
    global4 = _wgslsmith_dot_vec4_i32(min(~abs(vec4<i32>(-67063i, 1i, 15531i, 0i)), vec4<i32>(global0[_wgslsmith_index_u32(arg_1, 7u)], _wgslsmith_mult_i32(0i, global0[_wgslsmith_index_u32(3597u, 7u)]), abs(0i), global0[_wgslsmith_index_u32(~arg_1, 7u)])), -(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(31566u, 7u)], global0[_wgslsmith_index_u32(arg_0.a.c.x, 7u)], 26454i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec4<i32>(2147483647i, -36649i, 1i, 2147483647i)) ^ -vec4<i32>(global0[_wgslsmith_index_u32(52638u, 7u)], global0[_wgslsmith_index_u32(34979u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], 1i))) | abs(global0[_wgslsmith_index_u32(~(~(~56056u)), 7u)]);
    var var_1 = -2147483647i;
    global3 = array<vec2<bool>, 19>();
    var_1 = -7464i;
    return u_input.a.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec4<u32> {
    var var_0 = arg_2.c.d.zyy;
    global2 = array<vec4<bool>, 31>();
    var var_1 = Struct_1(-1000f, true, ~(~abs(select(arg_2.c.c, vec4<u32>(u_input.a.x, arg_2.a.e, 1u, arg_2.a.c.x), global2[_wgslsmith_index_u32(44093u, 31u)]))), vec4<f32>(_wgslsmith_f_op_f32(round(-727f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1341f)) * var_0.x) * 220f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, 1478f)) * var_0.x)), -878f), 63306u);
    var_0 = _wgslsmith_f_op_vec3_f32(var_1.d.yxx * vec3<f32>(-2039f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1751f, -1226f)), arg_2.c.d.x)), _wgslsmith_f_op_f32(min(-584f, var_1.d.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(263f, _wgslsmith_f_op_f32(-arg_2.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3))))));
    global4 = -_wgslsmith_mod_i32(1i, ~_wgslsmith_mult_i32(select(1i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], var_1.b), firstTrailingBit(-29737i)));
    return vec4<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), countOneBits(u_input.b.xy)) >> (arg_2.c.e % 32u)), func_2(arg_2, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(var_1.c.x, 1u))), 1u, 1u >> (1u % 32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = vec2<i32>(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(max(~21230u, 15599u), 1u), 7u)], -9531i);
    let var_1 = arg_1.b.b.b;
    var var_2 = Struct_4(arg_1.a, Struct_3(vec2<f32>(var_1.a, 482f), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(arg_1.c.a)), arg_2.a.b | arg_3.x, func_3(vec2<bool>(true, true), arg_3.x, arg_2, arg_2.a.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-512f, arg_1.c.d.x, arg_2.c.a, arg_1.c.a) - arg_1.b.b.c.d), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.e, 1u), arg_0.zw)), Struct_1(_wgslsmith_f_op_f32(-var_1.a), arg_1.b.b.b.b, ~vec4<u32>(13572u, 4225u, 21154u, 63011u), _wgslsmith_f_op_vec4_f32(-arg_2.c.d), ~arg_0.x), var_1), func_3(vec2<bool>(var_1.b, all(vec4<bool>(arg_3.x, arg_1.c.b, true, arg_1.b.b.a.b))), arg_3.x, Struct_2(Struct_1(189f, arg_2.b.b, vec4<u32>(var_1.e, 64913u, 0u, 1u), arg_1.c.d, 0u), Struct_1(-811f, arg_3.x, arg_0, arg_2.b.d, arg_2.b.c.x), arg_1.c), _wgslsmith_div_f32(697f, -135f)).zz), var_1);
    let var_3 = _wgslsmith_f_op_vec3_f32(max(arg_1.c.d.zwz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(951f, var_2.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -1146f), _wgslsmith_f_op_f32(arg_1.c.d.x + -474f))));
    global2 = array<vec4<bool>, 31>();
    return arg_1;
}

fn func_1() -> f32 {
    var var_0 = func_4(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, 51813u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.b.x)))) << (max(select(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 4294967295u), min(vec4<u32>(60098u, u_input.a.x, u_input.b.x, 55877u), vec4<u32>(7387u, 4294967295u, 0u, u_input.a.x)), true), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(65157u, 6522u), ~u_input.b.x, func_2(Struct_2(Struct_1(-984f, false, vec4<u32>(u_input.b.x, u_input.b.x, 61444u, 1u), vec4<f32>(-453f, -302f, -868f, 1004f), 43486u), Struct_1(843f, false, vec4<u32>(5586u, 0u, 90585u, 14257u), vec4<f32>(1000f, -788f, -611f, 866f), 4294967295u), Struct_1(288f, true, vec4<u32>(0u, 11228u, 1u, 5903u), vec4<f32>(-982f, -1399f, 560f, 146f), u_input.b.x)), u_input.b.x))) % vec4<u32>(32u)), Struct_4(-1i, Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1119f, -379f)), Struct_2(Struct_1(-687f, true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x), vec4<f32>(1000f, -1030f, -1066f, -1130f), u_input.b.x), Struct_1(-1189f, true, vec4<u32>(12988u, 0u, 15661u, u_input.b.x), vec4<f32>(133f, -931f, 309f, 803f), u_input.b.x), Struct_1(-1000f, true, vec4<u32>(u_input.a.x, u_input.a.x, 75687u, u_input.a.x), vec4<f32>(-1225f, 592f, -263f, 847f), u_input.b.x)), u_input.b.yy), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1588f), false, ~func_3(global3[_wgslsmith_index_u32(25072u, 19u)], true, Struct_2(Struct_1(-1000f, true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(867f, -425f, 248f, -192f), u_input.b.x), Struct_1(-270f, false, vec4<u32>(4294967295u, 71105u, 33212u, u_input.b.x), vec4<f32>(-411f, 505f, -719f, 1307f), u_input.a.x), Struct_1(-896f, true, vec4<u32>(8544u, 4294967295u, u_input.a.x, u_input.b.x), vec4<f32>(507f, -354f, -1000f, 904f), u_input.b.x)), -904f), vec4<f32>(_wgslsmith_f_op_f32(trunc(-407f)), _wgslsmith_f_op_f32(step(1078f, -1658f)), _wgslsmith_f_op_f32(-2950f * 1863f), _wgslsmith_f_op_f32(402f * 1103f)), u_input.b.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1886f), true, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 50289u, 4294967295u, 1u)), vec4<f32>(510f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_f_op_f32(f32(-1f) * -140f)), ~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-179f - 100f) * 138f), true, countOneBits(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 8654u)), vec4<f32>(-991f, -1231f, _wgslsmith_f_op_f32(min(-1159f, -1726f)), _wgslsmith_f_op_f32(f32(-1f) * -1500f)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 25224u, u_input.b.x, u_input.a.x)), vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, u_input.a.x))), Struct_1(-1747f, any(global2[_wgslsmith_index_u32(1u, 31u)]) & true, vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.b.x), 36362u >> (u_input.a.x % 32u), ~18153u, ~1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-962f, 830f, 788f, 232f) - vec4<f32>(-363f, -827f, -1000f, 697f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, -451f, 449f, -814f)), vec4<bool>(true, true, false, false))), min(4294967295u, firstTrailingBit(0u)))), !vec2<bool>(!any(vec3<bool>(false, false, true)), true));
    global0 = array<i32, 7>();
    var var_1 = func_4(min(vec4<u32>(var_0.c.c.x, _wgslsmith_add_u32(u_input.a.x ^ 32014u, 91377u >> (u_input.b.x % 32u)), 0u & u_input.a.x, 1u), ~select(~var_0.c.c, firstTrailingBit(vec4<u32>(4294967295u, var_0.c.c.x, var_0.c.c.x, u_input.a.x)), select(true, false, false))), Struct_4(countOneBits(-47574i), func_4(firstTrailingBit(var_0.c.c), Struct_4(global0[_wgslsmith_index_u32(var_0.c.c.x, 7u)] & 31631i, var_0.b, Struct_1(832f, false, var_0.c.c, vec4<f32>(var_0.b.a.x, var_0.b.b.b.a, var_0.c.d.x, 316f), 1u)), func_4(var_0.c.c, func_4(vec4<u32>(30230u, u_input.b.x, 4294967295u, u_input.b.x), Struct_4(global0[_wgslsmith_index_u32(4294967295u, 7u)], var_0.b, var_0.b.b.b), var_0.b.b, vec2<bool>(var_0.c.b, var_0.c.b)), var_0.b.b, select(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(var_0.b.c.x, 19u)], global3[_wgslsmith_index_u32(u_input.b.x, 19u)])).b.b, select(vec2<bool>(false, var_0.b.b.a.b), global3[_wgslsmith_index_u32(11971u | u_input.a.x, 19u)], select(vec2<bool>(var_0.c.b, false), global1[_wgslsmith_index_u32(var_0.b.c.x, 19u)], vec2<bool>(var_0.c.b, false)))).b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)), false, ~(var_0.c.c ^ vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), var_0.c.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.e, var_0.b.c.x, 64201u), vec3<u32>(4294967295u, u_input.b.x, u_input.a.x)) ^ ~u_input.b.x)), func_4(func_3(select(vec2<bool>(false, true), select(global1[_wgslsmith_index_u32(var_0.c.c.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], var_0.b.b.c.b), select(global3[_wgslsmith_index_u32(var_0.b.b.c.c.x, 19u)], vec2<bool>(var_0.c.b, var_0.b.b.b.b), true)), select(true, false, -2147483647i <= global0[_wgslsmith_index_u32(1u, 7u)]), Struct_2(func_4(var_0.c.c, Struct_4(1i, var_0.b, var_0.b.b.a), Struct_2(Struct_1(-890f, true, var_0.c.c, vec4<f32>(1105f, var_0.c.a, var_0.b.b.a.d.x, var_0.b.a.x), var_0.b.b.b.e), Struct_1(196f, false, vec4<u32>(1u, 10005u, var_0.b.c.x, 1u), vec4<f32>(var_0.c.d.x, var_0.b.a.x, 1357f, var_0.b.b.a.a), u_input.a.x), Struct_1(1027f, false, var_0.b.b.c.c, vec4<f32>(var_0.c.a, 375f, -503f, var_0.c.d.x), u_input.a.x)), global3[_wgslsmith_index_u32(20328u, 19u)]).b.b.a, Struct_1(1603f, var_0.c.b, vec4<u32>(var_0.b.b.c.c.x, var_0.b.c.x, var_0.c.e, 44699u), var_0.b.b.a.d, u_input.a.x), Struct_1(379f, true, vec4<u32>(var_0.b.c.x, 0u, u_input.a.x, u_input.a.x), var_0.c.d, u_input.a.x)), 707f), func_4(vec4<u32>(var_0.c.e | 0u, var_0.c.c.x, var_0.c.e, var_0.c.e), Struct_4(_wgslsmith_div_i32(var_0.a, global0[_wgslsmith_index_u32(44835u, 7u)]), func_4(vec4<u32>(4294967295u, 0u, 65511u, var_0.c.e), Struct_4(39017i, Struct_3(var_0.b.a, var_0.b.b, u_input.b.zz), var_0.b.b.a), Struct_2(var_0.b.b.a, Struct_1(var_0.c.a, var_0.b.b.a.b, vec4<u32>(var_0.c.c.x, u_input.a.x, 21122u, 82581u), vec4<f32>(-1147f, var_0.b.b.a.d.x, var_0.b.b.a.d.x, var_0.c.a), 38146u), Struct_1(359f, true, vec4<u32>(0u, u_input.a.x, 0u, 0u), var_0.b.b.b.d, var_0.c.e)), vec2<bool>(var_0.c.b, var_0.b.b.c.b)).b, Struct_1(var_0.c.d.x, var_0.c.b, vec4<u32>(u_input.a.x, var_0.b.c.x, 0u, var_0.b.b.b.c.x), var_0.c.d, u_input.b.x)), func_4(vec4<u32>(0u, var_0.b.c.x, 0u, 1u), func_4(var_0.b.b.a.c, Struct_4(var_0.a, var_0.b, var_0.b.b.c), var_0.b.b, global3[_wgslsmith_index_u32(var_0.b.c.x, 19u)]), var_0.b.b, select(global3[_wgslsmith_index_u32(var_0.c.c.x, 19u)], global1[_wgslsmith_index_u32(var_0.b.c.x, 19u)], vec2<bool>(true, var_0.b.b.b.b))).b.b, vec2<bool>(func_4(vec4<u32>(var_0.b.c.x, var_0.c.c.x, 42387u, u_input.a.x), Struct_4(1i, Struct_3(var_0.c.d.zz, Struct_2(Struct_1(var_0.c.a, false, var_0.b.b.c.c, vec4<f32>(-505f, var_0.c.d.x, var_0.b.a.x, var_0.c.d.x), u_input.a.x), var_0.b.b.a, Struct_1(var_0.c.a, var_0.b.b.b.b, var_0.b.b.a.c, var_0.c.d, 4294967295u)), var_0.c.c.xz), Struct_1(-728f, false, vec4<u32>(67596u, 0u, u_input.b.x, var_0.c.c.x), vec4<f32>(-839f, 449f, var_0.c.a, var_0.b.a.x), var_0.c.e)), Struct_2(var_0.b.b.b, Struct_1(var_0.c.d.x, false, var_0.b.b.a.c, var_0.b.b.c.d, 4294967295u), var_0.c), global1[_wgslsmith_index_u32(4294967295u, 19u)]).b.b.a.b, 4294967295u <= u_input.b.x)), var_0.b.b, vec2<bool>(var_0.b.b.c.b, !var_0.b.b.a.b)).b.b, !vec2<bool>(!all(global1[_wgslsmith_index_u32(81667u, 19u)]), countOneBits(var_0.b.c.x) > 6739u));
    var var_2 = vec2<bool>(false, var_0.c.b);
    global0 = array<i32, 7>();
    return _wgslsmith_f_op_f32(sign(func_4(var_0.c.c, func_4(~(~vec4<u32>(u_input.a.x, 32236u, var_1.c.c.x, var_1.b.b.c.c.x)), func_4(var_0.b.b.a.c | vec4<u32>(52512u, var_1.b.c.x, 42039u, 25888u), Struct_4(-2147483647i, var_1.b, var_1.b.b.b), Struct_2(Struct_1(-394f, var_1.b.b.b.b, var_1.c.c, var_0.b.b.a.d, 1u), Struct_1(2062f, var_0.c.b, vec4<u32>(1u, 42390u, 68614u, 1u), var_1.c.d, var_0.c.c.x), var_0.c), select(global3[_wgslsmith_index_u32(var_0.c.e, 19u)], global1[_wgslsmith_index_u32(var_0.c.c.x, 19u)], var_1.c.b)), var_1.b.b, global1[_wgslsmith_index_u32(1u, 19u)]), var_1.b.b, select(global1[_wgslsmith_index_u32((var_1.c.e << (var_1.b.c.x % 32u)) >> ((var_1.b.c.x << (0u % 32u)) % 32u), 19u)], vec2<bool>(true, true), firstTrailingBit(-22188i) == ~1i)).b.b.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 19>();
    var var_0 = vec3<f32>(1060f, _wgslsmith_f_op_f32(step(245f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) + -1023f), _wgslsmith_div_f32(-159f, _wgslsmith_f_op_f32(1068f + -549f)), _wgslsmith_f_op_f32(ceil(425f)) <= _wgslsmith_f_op_f32(min(1090f, 211f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -734f))) + _wgslsmith_f_op_f32(f32(-1f) * -620f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))));
    global4 = -1i;
    var var_1 = !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x == var_0.x, true, false), vec3<bool>(true, true, true)));
    var_1 = !(!(!vec3<bool>(true, var_1.x, var_1.x)));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), select(_wgslsmith_add_vec3_i32(vec3<i32>(33678i, -9784i, 51146i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 8892i, 1i)), min(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 10292i), vec3<i32>(-28045i, 35871i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)])), !vec3<bool>(var_1.x, var_1.x, var_1.x))), -_wgslsmith_add_vec3_i32(vec3<i32>(abs(global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_mult_i32(14557i, 14931i), firstTrailingBit(global0[_wgslsmith_index_u32(3265u, 7u)])), -vec3<i32>(global0[_wgslsmith_index_u32(33783u, 7u)], -24925i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]) & vec3<i32>(2147483647i, 2147483647i, 0i)), ~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 1i, global0[_wgslsmith_index_u32(95824u, 7u)]), vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 11661i))) & ~(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 66083i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) | _wgslsmith_sub_vec3_i32(vec3<i32>(-19152i, -5182i, 1i), vec3<i32>(-6339i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], -6126i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, 0i, -1i, 32777i) | vec4<i32>(-12728i, var_3.x, 32230i, -2147483647i), -vec4<i32>(3377i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], var_3.x, global0[_wgslsmith_index_u32(46898u, 7u)]), -vec4<i32>(var_3.x, global0[_wgslsmith_index_u32(0u, 7u)], 0i, -15087i)), vec4<i32>(9241i, -34115i << (u_input.a.x % 32u), ~var_3.x, -17977i)), var_3.x << (0u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -407f), ~_wgslsmith_dot_vec2_u32(u_input.a.xy, _wgslsmith_mult_vec2_u32(u_input.a.yz << (vec2<u32>(u_input.b.x, 24061u) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 1u))), max(4294967295u << (((u_input.a.x | 0u) ^ ~u_input.b.x) % 32u), 1u));
}

