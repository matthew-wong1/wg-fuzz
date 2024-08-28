struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(-12087i, vec2<bool>(true, true), Struct_1(vec3<i32>(1i, -1i, 16152i), vec3<f32>(1116f, 363f, 1356f), 86197i, i32(-2147483648), vec2<i32>(-7139i, 0i))));

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<f32>(-266f, 282f), vec4<u32>(1u, 4294967295u, 4294967295u, 44865u), vec2<bool>(false, false), true, Struct_1(vec3<i32>(1i, -21157i, -43979i), vec3<f32>(1160f, 2333f, -353f), 13475i, -19020i, vec2<i32>(-22024i, -20851i))), Struct_2(vec2<f32>(580f, 129f), vec4<u32>(1u, 59610u, 54280u, 1u), vec2<bool>(false, true), true, Struct_1(vec3<i32>(-16266i, -1i, -58313i), vec3<f32>(1398f, 1000f, -1135f), 1i, 1i, vec2<i32>(16478i, 2147483647i))), Struct_2(vec2<f32>(-465f, 254f), vec4<u32>(1u, 1u, 1u, 4294967295u), vec2<bool>(false, true), false, Struct_1(vec3<i32>(1i, -10978i, 57528i), vec3<f32>(623f, -652f, -1000f), 591i, 2147483647i, vec2<i32>(-1i, 1i))), Struct_2(vec2<f32>(-1088f, -730f), vec4<u32>(4294967295u, 0u, 70156u, 1618u), vec2<bool>(false, false), true, Struct_1(vec3<i32>(0i, 0i, 16527i), vec3<f32>(1283f, 1197f, 1301f), 24263i, i32(-2147483648), vec2<i32>(-24295i, 17833i))), Struct_2(vec2<f32>(-444f, 1008f), vec4<u32>(3668u, 1584u, 80491u, 66556u), vec2<bool>(true, true), false, Struct_1(vec3<i32>(-22455i, 0i, -13348i), vec3<f32>(-558f, 451f, 437f), 2147483647i, -12746i, vec2<i32>(-1i, -1i))), Struct_2(vec2<f32>(-360f, -1413f), vec4<u32>(42195u, 31573u, 68259u, 8300u), vec2<bool>(false, false), true, Struct_1(vec3<i32>(7032i, 31380i, -33891i), vec3<f32>(-778f, -830f, -1584f), 307i, -327i, vec2<i32>(-1i, i32(-2147483648)))), Struct_2(vec2<f32>(-1134f, 1000f), vec4<u32>(26857u, 41233u, 34334u, 21973u), vec2<bool>(true, true), false, Struct_1(vec3<i32>(0i, 14621i, -1i), vec3<f32>(737f, 1666f, 982f), -1i, -18207i, vec2<i32>(1i, -1i))), Struct_2(vec2<f32>(-1591f, -1165f), vec4<u32>(127784u, 4294967295u, 4294967295u, 90188u), vec2<bool>(false, true), true, Struct_1(vec3<i32>(-7568i, 6873i, -901i), vec3<f32>(1000f, 1017f, -1033f), 69690i, 19741i, vec2<i32>(-39935i, 1i))), Struct_2(vec2<f32>(-331f, -226f), vec4<u32>(1u, 9830u, 49237u, 1u), vec2<bool>(false, false), false, Struct_1(vec3<i32>(-4821i, 2147483647i, 59067i), vec3<f32>(502f, 838f, 116f), -9627i, -33648i, vec2<i32>(i32(-2147483648), -33072i))), Struct_2(vec2<f32>(2016f, -863f), vec4<u32>(1u, 19371u, 12520u, 1u), vec2<bool>(true, false), true, Struct_1(vec3<i32>(-20315i, 2147483647i, 0i), vec3<f32>(302f, -1347f, -816f), 50663i, 2147483647i, vec2<i32>(1i, -1i))), Struct_2(vec2<f32>(902f, -1750f), vec4<u32>(1u, 0u, 6133u, 37715u), vec2<bool>(true, false), false, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 15254i), vec3<f32>(1004f, -768f, 917f), 46710i, 23210i, vec2<i32>(14089i, -60932i))), Struct_2(vec2<f32>(1771f, -212f), vec4<u32>(0u, 1u, 28557u, 1u), vec2<bool>(false, true), true, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 8417i), vec3<f32>(-389f, -186f, -300f), i32(-2147483648), 1i, vec2<i32>(-4409i, -1i))), Struct_2(vec2<f32>(253f, -705f), vec4<u32>(48848u, 0u, 26482u, 1u), vec2<bool>(false, true), true, Struct_1(vec3<i32>(-1i, -35914i, 1i), vec3<f32>(815f, 841f, 934f), 2147483647i, 20257i, vec2<i32>(2147483647i, 20326i))), Struct_2(vec2<f32>(-725f, 204f), vec4<u32>(50305u, 0u, 1u, 1u), vec2<bool>(false, true), true, Struct_1(vec3<i32>(0i, -12205i, 0i), vec3<f32>(1180f, -1000f, -2485f), -13631i, -1i, vec2<i32>(3314i, 10722i))), Struct_2(vec2<f32>(329f, 111f), vec4<u32>(60618u, 51452u, 0u, 0u), vec2<bool>(true, false), true, Struct_1(vec3<i32>(-1i, -6767i, -5536i), vec3<f32>(-347f, -308f, -472f), 6816i, 57433i, vec2<i32>(18889i, i32(-2147483648)))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1826f)), _wgslsmith_f_op_f32(1365f + 478f))), _wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(f32(-1f) * -1378f)))));
    global1 = 1000f;
    var var_1 = -11676i ^ -(-1i | _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1544i, -7576i, u_input.c)), vec3<i32>(u_input.c, u_input.c, 0i)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 13u)];
    var var_3 = 858f;
    return var_2.a;
}

fn func_2() -> Struct_2 {
    global3 = array<Struct_2, 15>();
    let var_0 = Struct_1(~max(func_3(), _wgslsmith_clamp_vec3_i32(vec3<i32>(40388i, u_input.c, -2147483647i) ^ vec3<i32>(u_input.c, -2147483647i, -17076i), ~vec3<i32>(u_input.c, u_input.c, -8539i), vec3<i32>(-1i, u_input.c, u_input.c) | vec3<i32>(-22684i, 1146i, u_input.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-252f, 1000f, 1431f)) - vec3<f32>(-1000f, 299f, 514f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1158f, 737f, 840f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, -891f, -279f)))), vec3<bool>(true, all(vec4<bool>(false, true, true, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))))), _wgslsmith_mod_i32(max(u_input.c, 38548i), func_3().x), u_input.c, ~vec2<i32>(max(u_input.c, 0i) & abs(u_input.c), firstTrailingBit(_wgslsmith_mod_i32(3311i, -1i))));
    let var_1 = all(!vec4<bool>(select(true, select(false, true, true), all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x) < _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)), any(vec3<bool>(false, true, false)), true));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), var_0.b.x);
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(~4436i, -(~_wgslsmith_div_i32(u_input.c, u_input.c))), var_0.e);
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(690f, var_0.b.x) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), 418f), _wgslsmith_f_op_f32(max(-1456f, _wgslsmith_f_op_f32(-var_0.b.x))))), abs(~(vec4<u32>(4294967295u, u_input.e, 1u, u_input.b) >> (vec4<u32>(0u, 87731u, u_input.d.x, 1u) % vec4<u32>(32u)))) & ~(~firstLeadingBit(vec4<u32>(u_input.e, u_input.e, 42931u, u_input.b))), vec2<bool>(var_1, false), !all(vec4<bool>(-1i < var_3.x, all(vec4<bool>(var_1, false, false, var_1)), false, u_input.d.x >= u_input.b)), global0[_wgslsmith_index_u32(~u_input.b, 13u)]);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = ~u_input.d.x;
    global2 = array<Struct_3, 1>();
    global3 = array<Struct_2, 15>();
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(arg_0.e.b.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.e.b.yx + vec2<f32>(-1161f, arg_0.a.x)))))), vec4<u32>(firstLeadingBit(u_input.a), (~arg_0.b.x & arg_0.b.x) >> (((u_input.e ^ 0u) | ~arg_0.b.x) % 32u), (arg_0.b.x >> (arg_0.b.x % 32u)) ^ 4294967295u, ~62249u), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) - -273f) == -807f, true), arg_0.a.x == -953f, func_2().e);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.a.x, var_1.e.d), vec2<i32>(var_1.e.c, -61439i));
    return _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(var_1.e.b.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> bool {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1424f, _wgslsmith_f_op_f32(func_4(func_2(), arg_0.yy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-552f * -1889f), -1285f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-713f - _wgslsmith_f_op_f32(trunc(-1048f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + var_0.zz)))))), ~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 17985u, arg_1, u_input.a), vec4<u32>(u_input.d.x, 0u, arg_1, 62150u)) >> (firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, arg_1, 4294967295u)) % vec4<u32>(32u))), arg_0.zx, !arg_0.x & all(select(!arg_0.zz, vec2<bool>(true, true), !arg_0.x)), Struct_1(vec3<i32>(-reverseBits(u_input.c), 5077i, (u_input.c >> (62587u % 32u)) & select(-1367i, u_input.c, arg_0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, -755f)))))), -abs(_wgslsmith_mod_i32(u_input.c, u_input.c)), u_input.c, vec2<i32>(u_input.c, i32(-1i) * -1i)));
    let var_2 = vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, var_1.b.x, 0u), ~vec4<u32>(u_input.b, arg_1, arg_1, 16570u) << (vec4<u32>(arg_1, _wgslsmith_sub_u32(22887u, var_1.b.x), ~arg_1, 87427u) % vec4<u32>(32u))), 1u);
    var var_3 = -1000f;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(131f * 134f);
    var var_0 = select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, func_1(vec3<bool>(false, false, true), u_input.d.x) | all(vec2<bool>(false, true)), true, !all(vec2<bool>(false, true))), vec4<bool>(true, true, false, true), select(true, true, true)), vec4<bool>(true, func_3().x >= -abs(u_input.c), !(!all(vec2<bool>(false, true))), true));
    let var_1 = -24230i;
    let var_2 = !select(!vec2<bool>(var_0.x, all(var_0.xxw)), var_0.zx, var_0.xx);
    let var_3 = global0[_wgslsmith_index_u32(select(~u_input.a, ~(u_input.a | _wgslsmith_mult_u32(reverseBits(u_input.b), 1u)), all(var_0.yzw)), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(func_2().e.b)), vec3<i32>(~(~(-2147483647i)), 41641i, var_3.c), u_input.d);
}

