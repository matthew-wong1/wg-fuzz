struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-1i, -20477i, -18268i, 34325i), vec4<i32>(0i, 1i, -3618i, 5114i), vec4<i32>(1i, 42524i, -28681i, 61645i), vec4<i32>(-11549i, 2147483647i, -1i, 0i), vec4<i32>(i32(-2147483648), -3838i, 2147483647i, 1510i), vec4<i32>(-1i, i32(-2147483648), -19506i, -34927i), vec4<i32>(1i, 49265i, 1i, 10582i), vec4<i32>(0i, 51028i, 1361i, 0i), vec4<i32>(0i, 1i, -45790i, 1i), vec4<i32>(-3304i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(10012i, 8030i, 13281i, 1i), vec4<i32>(35519i, 0i, 11797i, 2147483647i), vec4<i32>(i32(-2147483648), -15253i, 21643i, 2138i), vec4<i32>(5431i, 2147483647i, i32(-2147483648), -60253i), vec4<i32>(-1i, -16829i, 2147483647i, 1i), vec4<i32>(-11456i, -14404i, -2081i, 26764i), vec4<i32>(61020i, 0i, i32(-2147483648), -71176i), vec4<i32>(77i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(26381i, 1i, 0i, 0i), vec4<i32>(-28807i, -17080i, 1i, -1i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    return arg_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    return Struct_1(vec3<bool>(arg_3.c.d.x <= 1u, false, true), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, ~(arg_1.b.x << (4294967295u % 32u)), firstLeadingBit(_wgslsmith_add_u32(arg_3.c.d.x, arg_3.a.b.x))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, arg_1.b.x, 0u, 16901u), vec4<u32>(4294967295u, arg_3.a.b.x, 0u, 4294967295u)), func_2(arg_3.a.b.x, Struct_1(arg_3.a.a, vec4<u32>(72959u, 30194u, arg_1.b.x, arg_3.a.b.x), 550f, arg_2.yy, arg_1.a), _wgslsmith_mult_u32(arg_3.a.b.x, 1u), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c, arg_2.x), arg_3.a.d)).b.x), arg_1.b.x), -1758f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.c) + _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.x, _wgslsmith_div_f32(arg_2.x, 155f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1858f)), _wgslsmith_f_op_f32(min(-393f, -606f)))))), arg_1.a);
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = func_3(1i, arg_0, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(1042f + -106f)))))), Struct_3(func_2(select(19238u, 1u, arg_0.e.x), Struct_1(arg_0.e, vec4<u32>(u_input.b.x, u_input.b.x, arg_0.b.x, 18121u), _wgslsmith_f_op_f32(arg_0.d.x * 2171f), vec2<f32>(arg_0.d.x, arg_0.c), !arg_0.e), 111690u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-138f, -967f) + arg_0.d))), ~(_wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]) << (~vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u))), Struct_2(abs(arg_0.b.x), ~(30061i << (1u % 32u)), all(select(vec4<bool>(false, false, arg_0.a.x, false), vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(false, false, false, arg_0.a.x))), ~(~arg_0.b), vec3<i32>(u_input.a.x, ~(-102098i), ~u_input.a.x)))).e.yz;
    let var_1 = arg_0.b.wyx;
    let var_2 = arg_0;
    var var_3 = 6127i | u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-470f)), -318f));
    return _wgslsmith_mult_vec3_i32(~(~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), -vec3<i32>(u_input.a.x, -2147483647i, 18532i))), -vec3<i32>(~(-12391i), -36333i, u_input.a.x ^ firstTrailingBit(u_input.a.x)));
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = func_2(u_input.b.x, func_2(27403u, Struct_1(func_2(max(60106u, 20178u), Struct_1(vec3<bool>(true, false, false), vec4<u32>(9779u, u_input.b.x, 0u, 8570u), 1015f, vec2<f32>(-526f, -627f), vec3<bool>(false, true, false)), _wgslsmith_add_u32(u_input.b.x, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-115f, -512f) - vec2<f32>(397f, 483f))).e, ~vec4<u32>(u_input.b.x, u_input.b.x, 59686u, 24743u), _wgslsmith_f_op_f32(sign(-572f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-908f, 818f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-834f, 1509f))), vec3<bool>(true, true, true)), ~(1u ^ select(u_input.b.x, 1u, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1588f, -1458f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(758f, 1389f)))))), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.b.x, func_2(35324u, Struct_1(vec3<bool>(true, false, false), vec4<u32>(82885u, u_input.b.x, u_input.b.x, u_input.b.x), 195f, vec2<f32>(1504f, -1422f), vec3<bool>(true, false, true)), u_input.b.x, vec2<f32>(-169f, 546f)), countOneBits(u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, -1027f))).d.x - _wgslsmith_f_op_f32(-554f * _wgslsmith_div_f32(-1259f, 504f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -169f), -873f)), !any(vec4<bool>(true, false, true, false))))));
    let var_1 = vec4<f32>(var_0.d.x, -475f, _wgslsmith_f_op_f32(599f - _wgslsmith_f_op_f32(var_0.c - 902f)), _wgslsmith_f_op_f32(step(-396f, _wgslsmith_f_op_f32(-var_0.c))));
    let var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)) + _wgslsmith_f_op_f32(f32(-1f) * -467f)) != 920f, true, true || var_0.e.x);
    var var_3 = true && var_2.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(f32(-1f) * -1094f), var_0.d.x, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(trunc(var_1)), var_2));
    return Struct_1(select(var_0.e, var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -921f) == _wgslsmith_f_op_f32(-var_4.x)), countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, var_0.b.x, u_input.b.x) ^ var_0.b, ~var_0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 51973u, var_0.b.x), vec4<u32>(4294967295u, 48420u, 1u, u_input.b.x)))), -1066f, func_3(~arg_0.x, Struct_1(!(!var_0.e), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.b, vec4<u32>(57165u, 0u, var_0.b.x, u_input.b.x), var_0.b), ~vec4<u32>(1u, 34725u, u_input.b.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - 583f), var_0.d, var_2.zww), var_4.xxy, Struct_3(Struct_1(!vec3<bool>(false, var_0.e.x, false), ~vec4<u32>(4294967295u, 60999u, 31605u, var_0.b.x), var_0.d.x, var_4.wy, !var_2.yyy), abs(abs(vec4<i32>(u_input.a.x, arg_0.x, 2147483647i, arg_0.x))), Struct_2(var_0.b.x >> (u_input.b.x % 32u), -1i | u_input.a.x, var_0.b.x <= var_0.b.x, var_0.b, arg_0 >> (var_0.b.xzy % vec3<u32>(32u))))).d, !(!(!(!var_2.xww))));
}

fn func_1() -> StorageBuffer {
    var var_0 = min(abs(max(94099u, u_input.b.x | 81384u)), 28395u);
    let var_1 = func_5(max(func_4(func_3(firstTrailingBit(-33285i), func_2(1u, Struct_1(vec3<bool>(false, false, true), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 43767u), 2056f, vec2<f32>(-1000f, 1740f), vec3<bool>(true, false, false)), u_input.b.x, vec2<f32>(270f, -495f)), vec3<f32>(1709f, -836f, 120f), Struct_3(Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 23613u, u_input.b.x, u_input.b.x), -1000f, vec2<f32>(825f, -2086f), vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], Struct_2(1u, 2147483647i, true, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))))), ~(~(vec3<i32>(23151i, -1i, u_input.a.x) ^ vec3<i32>(-58488i, u_input.a.x, u_input.a.x)))));
    global0 = array<vec4<i32>, 20>();
    let var_2 = Struct_3(Struct_1(func_3(u_input.a.x, var_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.d.x, 157f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, var_1.d.x, 422f)))), Struct_3(Struct_1(vec3<bool>(true, var_1.a.x, var_1.e.x), vec4<u32>(var_1.b.x, 29388u, var_1.b.x, 1u), var_1.c, vec2<f32>(var_1.d.x, -437f), vec3<bool>(var_1.a.x, true, var_1.e.x)), vec4<i32>(-2147483647i, 42089i, -1i, u_input.a.x), Struct_2(u_input.b.x, 2147483647i, var_1.e.x, vec4<u32>(10591u, 62429u, u_input.b.x, var_1.b.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)))).e, var_1.b ^ firstLeadingBit(var_1.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c * var_1.c))))), _wgslsmith_f_op_vec2_f32(-var_1.d), vec3<bool>(any(!vec4<bool>(var_1.a.x, false, var_1.e.x, false)), !func_2(u_input.b.x, Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, false), var_1.b, var_1.c, vec2<f32>(-779f, 1965f), vec3<bool>(false, true, var_1.a.x)), 53514u, var_1.d).a.x, var_1.e.x)), select(global0[_wgslsmith_index_u32(787u, 20u)], -vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), !((4294967295u <= var_1.b.x) || !var_1.e.x)), Struct_2(firstTrailingBit(_wgslsmith_mod_u32(var_1.b.x, u_input.b.x)) | 1u, ~_wgslsmith_sub_i32(abs(1845i), u_input.a.x), !func_3(18457i, var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-154f, var_1.c, var_1.c)), Struct_3(var_1, vec4<i32>(u_input.a.x, -78719i, -56919i, 12523i), Struct_2(var_1.b.x, 1i, var_1.e.x, var_1.b, vec3<i32>(50887i, -2147483647i, u_input.a.x)))).a.x, func_3(u_input.a.x, var_1, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 382f, 1474f)))), Struct_3(var_1, vec4<i32>(11836i, 1i, u_input.a.x, u_input.a.x), Struct_2(4294967295u, u_input.a.x, true, var_1.b, vec3<i32>(8404i, u_input.a.x, u_input.a.x)))).b, _wgslsmith_add_vec3_i32(countOneBits(select(vec3<i32>(2147483647i, u_input.a.x, 1i), vec3<i32>(-14323i, u_input.a.x, u_input.a.x), vec3<bool>(var_1.e.x, true, false))), vec3<i32>(_wgslsmith_clamp_i32(-1i, -1i, u_input.a.x), u_input.a.x, u_input.a.x))));
    var var_3 = Struct_2(func_3(u_input.a.x, Struct_1(vec3<bool>(false, var_1.e.x, u_input.a.x <= var_2.b.x), vec4<u32>(var_2.a.b.x, _wgslsmith_dot_vec3_u32(var_1.b.yzw, var_2.a.b.wwy), 5118u, ~u_input.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 427f))), _wgslsmith_f_op_vec2_f32(select(var_2.a.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(239f, -141f) + vec2<f32>(var_2.a.d.x, var_1.d.x)), vec2<bool>(var_1.a.x, false))), func_3(2147483647i, Struct_1(var_1.a, vec4<u32>(u_input.b.x, 51392u, 23159u, u_input.b.x), -261f, var_1.d, var_2.a.e), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.d.x, -109f, var_2.a.c), vec3<f32>(-829f, var_2.a.d.x, -1386f))), Struct_3(Struct_1(vec3<bool>(var_1.a.x, var_2.a.e.x, false), vec4<u32>(0u, 108880u, var_2.c.d.x, 0u), var_1.c, vec2<f32>(var_1.d.x, var_2.a.c), var_1.e), global0[_wgslsmith_index_u32(50456u, 20u)], Struct_2(25305u, var_2.b.x, true, var_2.a.b, var_2.b.xwy))).a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_2.a.d.x)), -421f, var_1.c), var_2).b.x, -9304i, var_1.a.x, var_2.c.d, abs(~abs(var_2.c.e)));
    return StorageBuffer(_wgslsmith_div_f32(-2268f, 1438f), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.b.yww, ~var_3.d.zxx), func_5(var_2.c.e | vec3<i32>(-1i, 4206i, var_3.b)).b.wxy), Struct_1(select(func_2(0u, var_2.a, 55131u, var_1.d).e, vec3<bool>(var_3.c, var_2.a.a.x, false), func_5(var_2.c.e).e), _wgslsmith_add_vec4_u32(var_1.b, vec4<u32>(var_2.c.d.x, 0u, 54038u, u_input.b.x)), _wgslsmith_f_op_f32(-596f + var_1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.d)), var_1.e), 80855u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.d.x, -1171f))) * _wgslsmith_f_op_vec2_f32(floor(var_2.a.d)))).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 20>();
    let x = u_input.a;
    s_output = func_1();
}

