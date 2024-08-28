struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(2147483647i, 1i), -1i, vec2<f32>(1898f, -188f), 4294967295u, 1186f), Struct_1(vec2<i32>(0i, 21239i), 0i, vec2<f32>(-1147f, 270f), 0u, 1000f), Struct_1(vec2<i32>(i32(-2147483648), -1i), -58917i, vec2<f32>(366f, -884f), 30239u, -1000f), Struct_1(vec2<i32>(-1i, 2147483647i), 0i, vec2<f32>(1020f, -361f), 20226u, 308f), Struct_1(vec2<i32>(-1i, -38273i), 16301i, vec2<f32>(725f, 1000f), 0u, -322f), Struct_1(vec2<i32>(2147483647i, 0i), 2147483647i, vec2<f32>(-107f, 1286f), 4294967295u, 115f), Struct_1(vec2<i32>(6948i, 8225i), 25116i, vec2<f32>(222f, 1000f), 19088u, 636f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -41606i, vec2<f32>(1533f, 1070f), 6512u, 349f), Struct_1(vec2<i32>(0i, 58576i), -39721i, vec2<f32>(-1088f, -1212f), 27981u, 752f), Struct_1(vec2<i32>(0i, 9775i), 2147483647i, vec2<f32>(-322f, 1275f), 163u, 678f), Struct_1(vec2<i32>(37539i, 2147483647i), -1335i, vec2<f32>(-1703f, 1708f), 25812u, -354f), Struct_1(vec2<i32>(38228i, 0i), 16617i, vec2<f32>(863f, 937f), 1u, -170f), Struct_1(vec2<i32>(-1i, 1i), 1i, vec2<f32>(910f, -2336f), 4294967295u, 974f), Struct_1(vec2<i32>(i32(-2147483648), 7969i), 32608i, vec2<f32>(-1000f, 1151f), 32759u, 1435f), Struct_1(vec2<i32>(0i, i32(-2147483648)), -1i, vec2<f32>(460f, 803f), 0u, -1890f), Struct_1(vec2<i32>(1i, 27431i), 29600i, vec2<f32>(-1000f, 185f), 79807u, 686f), Struct_1(vec2<i32>(1i, -25490i), -6431i, vec2<f32>(384f, -794f), 1u, -272f), Struct_1(vec2<i32>(-33783i, -42158i), 1i, vec2<f32>(-662f, 519f), 1u, 846f), Struct_1(vec2<i32>(-8671i, -22615i), 2147483647i, vec2<f32>(2350f, -708f), 1u, -1926f), Struct_1(vec2<i32>(0i, 36164i), 0i, vec2<f32>(1070f, -293f), 22155u, -848f));

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(i32(-2147483648), 1i, 1i, -12078i), vec4<i32>(2147483647i, -47950i, i32(-2147483648), 0i), vec4<i32>(-4346i, 4972i, i32(-2147483648), -15667i), vec4<i32>(1i, i32(-2147483648), -8412i, 69488i), vec4<i32>(17294i, 2147483647i, 1i, 38696i), vec4<i32>(2396i, -1i, 10600i, -1i), vec4<i32>(i32(-2147483648), 46347i, -57127i, 13592i), vec4<i32>(27896i, 42759i, -10730i, -1i), vec4<i32>(18298i, -1i, -66320i, 0i), vec4<i32>(17285i, 35396i, -23682i, 62617i), vec4<i32>(0i, -1022i, -1495i, -34698i), vec4<i32>(2147483647i, 72018i, -37667i, 0i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -31968i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32((max(abs(arg_0.d), _wgslsmith_sub_u32(21929u, 1u)) << (var_0.d % 32u)) | arg_0.d, 20u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(arg_0.e * var_1.e)), 744f, -936f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.x, -363f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.yx, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.e, -180f), arg_0.c)))))));
    let var_4 = Struct_2(Struct_1(reverseBits(var_0.a << (vec2<u32>(174u, arg_0.d) % vec2<u32>(32u))) | (vec2<i32>(-1i) * -vec2<i32>(2147483647i, -1i)), 14893i, _wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_1.d), var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(649f + 543f) * -296f))), 660f, Struct_1(vec2<i32>(~(-2516i), i32(-1i) * -2147483647i), 1i, vec2<f32>(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_div_f32(var_1.c.x, var_1.c.x))), var_2.x), 0u, var_3.x), Struct_1(u_input.c.xy, arg_1, vec2<f32>(220f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-171f + var_0.c.x), -658f))), max(0u, u_input.b.x >> (_wgslsmith_sub_u32(var_0.d, var_1.d) % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1808f, -402f))))));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    global1 = array<vec4<i32>, 13>();
    let var_0 = global0[_wgslsmith_index_u32(68666u, 20u)];
    var var_1 = !select(vec3<bool>(var_0.d < 49342u, true, true), select(vec3<bool>(false, func_3(global0[_wgslsmith_index_u32(var_0.d, 20u)], u_input.d.x), all(vec3<bool>(true, false, false))), vec3<bool>(true, true, all(vec2<bool>(true, true))), select(true, 1409f != arg_0, all(vec4<bool>(false, true, false, true)))), false);
    var var_2 = vec3<u32>(arg_1.x, 25615u, ~89000u & var_0.d);
    var_1 = select(!select(vec3<bool>(false, var_1.x, var_1.x), !select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x), true), !vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(!any(vec3<bool>(true, true, true)), false, false), false);
    return Struct_1(vec2<i32>(u_input.d.x, -2147483647i), 12744i, vec2<f32>(684f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-138f)), 796f))))), 0u, var_0.e);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<bool>(func_3(func_2(_wgslsmith_f_op_f32(arg_0 + arg_3.c.x), ~vec4<u32>(24605u, 0u, 4294967295u, 1u)), u_input.d.x) == true, true);
    var var_1 = func_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1478f) + -1326f), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.d.d, 44615u, arg_2.d, arg_2.d), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_1.d.d, 40774u, arg_1.d.d), vec4<u32>(u_input.a, u_input.e.x, arg_3.d, u_input.a) >> (vec4<u32>(11084u, 58953u, 1u, 18455u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(10706u, arg_3.d, 1u)), 7630u, ~arg_1.c.d, 1u))), ~2147483647i);
    let var_2 = _wgslsmith_sub_u32(arg_3.d, min(_wgslsmith_dot_vec2_u32(vec2<u32>(41316u, arg_2.d), u_input.b.xx), firstTrailingBit(~(0u >> (arg_3.d % 32u)))));
    global1 = array<vec4<i32>, 13>();
    let var_3 = reverseBits(vec3<u32>(arg_1.d.d, min(min(arg_2.d, 1u), _wgslsmith_mult_u32(1u, 5480u) >> (max(1u, 0u) % 32u)), arg_1.c.d));
    return _wgslsmith_f_op_f32(-arg_2.c.x);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(-_wgslsmith_add_vec2_i32(vec2<i32>(0i, 2819i) >> (firstTrailingBit(u_input.e.yx) % vec2<u32>(32u)), ~(vec2<i32>(u_input.d.x, u_input.d.x) & u_input.c.xy)), 27207i, vec2<f32>(_wgslsmith_f_op_f32(func_4(-459f, Struct_2(func_2(-2072f, vec4<u32>(0u, u_input.e.x, u_input.a, u_input.b.x)), -204f, func_2(-1000f, vec4<u32>(4294967295u, u_input.a, 46297u, 46515u)), Struct_1(u_input.d.yx, u_input.d.x, vec2<f32>(518f, -329f), u_input.b.x, 1192f)), func_2(_wgslsmith_f_op_f32(-1306f + -1550f), _wgslsmith_add_vec4_u32(vec4<u32>(64883u, u_input.e.x, u_input.e.x, 1u), vec4<u32>(u_input.b.x, u_input.e.x, 4294967295u, 74673u))), func_2(-924f, firstTrailingBit(vec4<u32>(u_input.a, u_input.e.x, u_input.b.x, u_input.b.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) * _wgslsmith_f_op_f32(1767f - -983f))))), ~0u, _wgslsmith_f_op_f32(round(-105f)));
    global1 = array<vec4<i32>, 13>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), -313f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e))), 253f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, 1146f, 374f, var_0.c.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1248f, 982f, var_0.e, 540f))), any(vec4<bool>(false, true, true, true)))))));
    var var_2 = Struct_1(-select(vec2<i32>(-var_0.a.x, -13877i >> (1u % 32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), -u_input.c.xx), true), 6146i, vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(var_0.c.x + var_1.x), all(vec2<bool>(true, false))))), _wgslsmith_clamp_u32(u_input.b.x, var_0.d, ~u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2138f)));
    let var_3 = Struct_1(~(~reverseBits(select(u_input.d.yz, vec2<i32>(-2147483647i, var_2.a.x), vec2<bool>(true, false)))), ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(u_input.e.x, 13u)], u_input.c), u_input.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e, 1178f) + var_1.zz)))), _wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_f32(abs(var_2.e)) == _wgslsmith_f_op_f32(-var_2.c.x))), firstLeadingBit(~u_input.b.x), _wgslsmith_f_op_f32(max(-694f, -473f)));
    return Struct_2(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(var_2.e, vec4<u32>(var_0.d, 0u, 17505u, var_2.d)).c.x) * 1344f)), Struct_1(var_3.a, 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_3.c + vec2<f32>(-199f, var_0.c.x)), vec2<f32>(-1101f, var_2.c.x), false)) - var_3.c), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * 1000f)), Struct_1(_wgslsmith_add_vec2_i32(firstTrailingBit(var_2.a), u_input.c.zz), _wgslsmith_div_i32(-1i, -16401i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zz)), _wgslsmith_dot_vec2_u32(u_input.b.xz, ~u_input.b.xx), 182f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = firstLeadingBit(select(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.a.a.d, arg_1.a.c.d), firstTrailingBit(arg_0.d)) | arg_0.d, countOneBits(abs(0u)), !(any(vec2<bool>(true, false)) && true)));
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global0[_wgslsmith_index_u32(4294967295u, 20u)], Struct_3(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1348f + -229f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1400f))))));
    global1 = array<vec4<i32>, 13>();
    global0 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))))));
    let var_2 = ~u_input.d.yy;
    let var_3 = func_1();
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(~4294967295u | (~reverseBits(30337u) & u_input.a), 20u)], 424f, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_div_f32(197f, var_1.x), false)))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(22612u, 4294967295u, var_3.a.d, 0u), vec4<u32>(var_3.d.d, var_3.d.d, u_input.b.x, var_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.c.d, var_3.a.d, u_input.b.x, var_3.c.d), vec4<u32>(var_3.a.d, 0u, 4294967295u, u_input.e.x))), ~(vec4<u32>(50395u, var_0.x, u_input.a, var_3.d.d) & vec4<u32>(0u, var_0.x, u_input.a, u_input.a)))), func_1().d);
    let var_5 = ~(~countOneBits(_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.e), ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_4.a.d, firstLeadingBit(vec4<u32>(var_0.x, _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, 0u), 35621u), _wgslsmith_mod_u32(3510u, 10939u | u_input.a), ~(~0u))), max(~var_2.x, ~(~var_4.a.b) & _wgslsmith_clamp_i32(~var_4.c.b, -2147483647i, ~var_4.d.b)));
}

