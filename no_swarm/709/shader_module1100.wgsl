struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<u32>(52293u, 0u, 12913u, 1u), true, vec4<i32>(i32(-2147483648), -7041i, 11926i, -1i), vec3<i32>(1i, 1i, -21714i)), Struct_1(vec4<u32>(20883u, 30163u, 35895u, 61316u), true, vec4<i32>(-12776i, 24901i, -78120i, i32(-2147483648)), vec3<i32>(1i, 9911i, i32(-2147483648))), Struct_1(vec4<u32>(4294967295u, 4294967295u, 57171u, 84251u), false, vec4<i32>(-13478i, 5338i, 0i, -3562i), vec3<i32>(-44132i, 18922i, -15953i)), Struct_1(vec4<u32>(1u, 0u, 0u, 23879u), false, vec4<i32>(i32(-2147483648), -31022i, 0i, -31113i), vec3<i32>(7196i, 35182i, 0i)), Struct_1(vec4<u32>(1u, 0u, 19809u, 13889u), true, vec4<i32>(-1i, -33922i, i32(-2147483648), -41411i), vec3<i32>(-1i, -1i, 1i)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 42625u), false, vec4<i32>(0i, 10128i, 2147483647i, 24701i), vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 28754u), false, vec4<i32>(2147483647i, -22151i, 36268i, -3337i), vec3<i32>(-1i, 46523i, 0i)), Struct_1(vec4<u32>(28471u, 113751u, 59520u, 61140u), false, vec4<i32>(0i, 1i, -51886i, 0i), vec3<i32>(33485i, -3648i, 2147483647i)), Struct_1(vec4<u32>(35798u, 14964u, 4039u, 0u), true, vec4<i32>(1i, 1i, 1i, i32(-2147483648)), vec3<i32>(68830i, 51335i, -80432i)), Struct_1(vec4<u32>(35984u, 59870u, 11242u, 29458u), false, vec4<i32>(i32(-2147483648), -1i, -23447i, -11611i), vec3<i32>(i32(-2147483648), 10788i, 22350i)), Struct_1(vec4<u32>(13301u, 1u, 3011u, 1u), true, vec4<i32>(2147483647i, -1i, 2147483647i, -31896i), vec3<i32>(45766i, -17382i, 20723i)), Struct_1(vec4<u32>(0u, 4294967295u, 55098u, 71u), false, vec4<i32>(-87667i, -64373i, -10492i, 99084i), vec3<i32>(-16594i, -22677i, 22081i)), Struct_1(vec4<u32>(35862u, 4294967295u, 27491u, 71070u), false, vec4<i32>(-3336i, 0i, 65247i, i32(-2147483648)), vec3<i32>(-10261i, 2147483647i, -14935i)), Struct_1(vec4<u32>(58609u, 59576u, 60499u, 4294967295u), true, vec4<i32>(-37496i, 1i, 2147483647i, 33645i), vec3<i32>(1i, 2147483647i, 309i)), Struct_1(vec4<u32>(1u, 0u, 64770u, 7879u), false, vec4<i32>(18049i, 34787i, 17254i, 0i), vec3<i32>(-1i, 2147483647i, 2147483647i)), Struct_1(vec4<u32>(7768u, 6308u, 133461u, 60185u), false, vec4<i32>(i32(-2147483648), -15408i, 0i, 2147483647i), vec3<i32>(-11159i, 35223i, 1i)), Struct_1(vec4<u32>(34354u, 116652u, 1u, 2584u), true, vec4<i32>(28708i, -16290i, -23595i, -27618i), vec3<i32>(2147483647i, 13422i, -21720i)), Struct_1(vec4<u32>(99664u, 4294967295u, 113591u, 4294967295u), true, vec4<i32>(-1i, -3814i, -32265i, 0i), vec3<i32>(-12605i, 95812i, 0i)), Struct_1(vec4<u32>(0u, 13999u, 74216u, 1u), false, vec4<i32>(-1i, -49594i, -1i, 0i), vec3<i32>(-24557i, i32(-2147483648), -5740i)), Struct_1(vec4<u32>(1u, 4294967295u, 20182u, 1u), false, vec4<i32>(-27910i, 1i, i32(-2147483648), -49220i), vec3<i32>(11810i, 1i, 7604i)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), true, vec4<i32>(i32(-2147483648), -43930i, -1i, 1i), vec3<i32>(27589i, -17803i, 1i)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), false, vec4<i32>(-44710i, 59303i, -9883i, -2649i), vec3<i32>(9301i, -17974i, -12694i)), Struct_1(vec4<u32>(0u, 0u, 12586u, 0u), false, vec4<i32>(38569i, -32553i, 0i, 30402i), vec3<i32>(1i, 2147483647i, -20238i)), Struct_1(vec4<u32>(59666u, 0u, 34282u, 11792u), false, vec4<i32>(42260i, i32(-2147483648), -1i, 21922i), vec3<i32>(2147483647i, 46013i, i32(-2147483648))));

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = 126f;
    var var_1 = reverseBits(max(~(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(67197u, u_input.d.x, u_input.d.x))), firstTrailingBit(71020u)));
    global2 = 445f;
    let var_2 = u_input.a.zx;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, -1985f, var_0))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 377f, var_0, 130f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 645f, -620f, var_0) * vec4<f32>(-316f, var_0, 1534f, var_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0, var_0, var_0) + vec4<f32>(1228f, -1148f, 145f, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(315f, var_0, -1114f, 1477f)))))))));
    return 4294967295u;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = countOneBits(-34952i);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(), u_input.d.x), 24u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(957f, 1774f, arg_0))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -698f, -1053f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(190f, -333f, arg_0)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-751f, 501f, arg_0) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1206f, 190f, arg_0), vec3<f32>(arg_0, arg_0, 1015f), vec3<bool>(false, true, true)))))));
    global1 = array<vec3<bool>, 24>();
    var var_3 = ~7933i;
    return (i32(-1i) * -2147483647i) ^ max(-25277i, _wgslsmith_mod_i32(min(_wgslsmith_div_i32(1i, var_0), _wgslsmith_dot_vec3_i32(var_1.c.zyx, vec3<i32>(-13065i, u_input.c, -13800i))), var_0));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-742f - _wgslsmith_f_op_f32(-1f))));
    return global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, 10329u, arg_2.a.x, arg_2.a.x) & (vec4<u32>(127722u, 9687u, arg_1.a.x, arg_2.a.x) & arg_1.a), ~arg_2.a) ^ arg_1.a.x), 24u)];
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = true;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2113f)) - 1f), -1826f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f + 937f))))));
    var var_1 = _wgslsmith_clamp_u32(select(1u, _wgslsmith_div_u32(22745u, u_input.d.x), false) | u_input.d.x, u_input.d.x, _wgslsmith_add_u32(43213u, _wgslsmith_div_u32(1u & u_input.d.x, u_input.d.x))) | u_input.d.x;
    global1 = array<vec3<bool>, 24>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(f32(-1f) * -1251f), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1413f + -1083f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 541f) * _wgslsmith_f_op_f32(1073f - -287f)))));
    return func_4(34356u, global0[_wgslsmith_index_u32(~1u, 24u)], Struct_1(~(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x) & vec4<u32>(33922u, 1u, u_input.d.x, u_input.d.x)), false, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -2147483647i, 78308i, u_input.c), vec4<i32>(u_input.b, arg_0, 0i, arg_0)) >> (~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, u_input.b) | vec3<i32>(u_input.c, u_input.b, u_input.a.x), vec3<i32>(func_2(var_2), ~arg_0, -2147483647i))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = func_1(i32(-1i) * -47810i);
    global1 = array<vec3<bool>, 24>();
    global0 = array<Struct_1, 24>();
    let var_1 = u_input.a.x;
    global2 = -795f;
    return _wgslsmith_f_op_f32(-1156f * _wgslsmith_f_op_f32(f32(-1f) * -475f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_clamp_i32(u_input.c, u_input.a.x, u_input.c)))) + -102f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1743f) - _wgslsmith_f_op_f32(f32(-1f) * -150f)));
    let var_0 = true;
    global0 = array<Struct_1, 24>();
    var var_1 = Struct_1((select(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x), ~vec4<u32>(30149u, u_input.d.x, 4294967295u, 0u), !vec4<bool>(var_0, var_0, var_0, var_0)) >> (~(~vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x)) % vec4<u32>(32u))) ^ ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 54002u, 0u, 47387u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 70322u))), var_0, ~vec4<i32>(~0i, func_1(u_input.b).d.x & -1i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.a.x), vec3<i32>(u_input.c, u_input.a.x, -2147483647i))), 0i), ~(-select(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 38162i, -1i), vec3<i32>(2147483647i, 2147483647i, u_input.b)), ~u_input.a, var_0)));
    var var_2 = Struct_1(var_1.a, any(global1[_wgslsmith_index_u32(~(~(~u_input.d.x)), 24u)]), ~var_1.c, reverseBits(u_input.a));
    let var_3 = select(!(!(!(!vec2<bool>(false, var_0)))), !select(vec2<bool>(true, false), !vec2<bool>(var_2.b, var_0), true), !vec2<bool>(true, all(select(vec4<bool>(false, var_2.b, var_1.b, var_2.b), vec4<bool>(true, var_0, false, var_2.b), vec4<bool>(var_2.b, var_2.b, var_2.b, false)))));
    var var_4 = func_4(_wgslsmith_mult_u32(var_1.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(19848u, var_2.a.x) >> (firstTrailingBit(0u) % 32u), func_4(_wgslsmith_sub_u32(var_1.a.x, var_2.a.x), Struct_1(var_1.a, var_0, vec4<i32>(37112i, u_input.b, -1i, u_input.a.x), vec3<i32>(-2147483647i, u_input.b, -2147483647i)), Struct_1(var_1.a, true, vec4<i32>(1i, u_input.b, u_input.c, var_2.c.x), var_1.d)).a.x)), Struct_1(~_wgslsmith_mult_vec4_u32(var_2.a >> (vec4<u32>(67134u, 4294967295u, var_1.a.x, 98583u) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, 90135u, 1u, 21313u)), true, -abs(var_2.c), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.d.x, 1i, -var_2.c.x), ~(-vec3<i32>(var_1.c.x, 15074i, 1i)))), func_4(reverseBits(~(~4294967295u)), global0[_wgslsmith_index_u32(var_2.a.x, 24u)], global0[_wgslsmith_index_u32(firstTrailingBit(78006u), 24u)]));
    var var_5 = var_1.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-4365i, 0i, -31438i, var_2.c.x), ~vec4<i32>(-1i, var_1.c.x, var_1.c.x, 23828i)), _wgslsmith_add_i32(var_2.d.x, u_input.a.x) >> (1u % 32u), _wgslsmith_div_i32(~(~var_4.d.x), var_1.c.x)), 1u);
}

