struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(10530u, 53370u), vec2<u32>(63573u, 4294967295u), vec2<u32>(33004u, 4294967295u), vec2<u32>(4294967295u, 36168u), vec2<u32>(7099u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 95981u), vec2<u32>(1u, 42675u), vec2<u32>(1u, 4294967295u));

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, i32(-2147483648));

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(-11353i, false, vec3<f32>(-500f, -1658f, -881f), vec3<i32>(1i, i32(-2147483648), 8225i)), Struct_4(i32(-2147483648), false, vec3<f32>(-1181f, -231f, -1144f), vec3<i32>(2147483647i, 2147483647i, 20642i)), Struct_4(2147483647i, false, vec3<f32>(-1098f, -1010f, -993f), vec3<i32>(i32(-2147483648), -720i, 0i)), Struct_4(2147483647i, true, vec3<f32>(522f, 542f, 736f), vec3<i32>(0i, i32(-2147483648), -1i)), Struct_4(5961i, true, vec3<f32>(757f, 896f, 1977f), vec3<i32>(-10728i, -7242i, 1i)), Struct_4(0i, true, vec3<f32>(1000f, 1867f, -2055f), vec3<i32>(9773i, 0i, 0i)), Struct_4(0i, false, vec3<f32>(-1033f, -2520f, -1042f), vec3<i32>(-1i, i32(-2147483648), 0i)), Struct_4(18007i, true, vec3<f32>(-1000f, 465f, 1519f), vec3<i32>(-1i, -1i, -3148i)), Struct_4(2147483647i, false, vec3<f32>(1164f, 601f, -1239f), vec3<i32>(46257i, -9121i, 58804i)), Struct_4(-1i, false, vec3<f32>(-420f, 1404f, -1140f), vec3<i32>(2147483647i, -22881i, 1i)), Struct_4(-78437i, false, vec3<f32>(791f, -1062f, -248f), vec3<i32>(2147483647i, -1i, 20454i)), Struct_4(-20056i, false, vec3<f32>(-662f, 1650f, -507f), vec3<i32>(-1940i, i32(-2147483648), 0i)), Struct_4(0i, true, vec3<f32>(-587f, -706f, 520f), vec3<i32>(45546i, -21999i, i32(-2147483648))), Struct_4(2147483647i, false, vec3<f32>(-360f, 2082f, -106f), vec3<i32>(46274i, -37384i, -1i)), Struct_4(10160i, true, vec3<f32>(1373f, -873f, -414f), vec3<i32>(-1i, -1i, 19346i)), Struct_4(0i, true, vec3<f32>(-839f, -357f, 390f), vec3<i32>(66577i, -1i, 1i)), Struct_4(-1i, false, vec3<f32>(739f, -1167f, 1804f), vec3<i32>(9542i, -3698i, i32(-2147483648))), Struct_4(-9883i, true, vec3<f32>(478f, -398f, 1347f), vec3<i32>(-57325i, -26702i, i32(-2147483648))), Struct_4(i32(-2147483648), true, vec3<f32>(-2869f, -182f, -2496f), vec3<i32>(0i, 2147483647i, -1i)), Struct_4(-13566i, false, vec3<f32>(149f, -408f, -971f), vec3<i32>(-4878i, i32(-2147483648), -57131i)), Struct_4(2147483647i, false, vec3<f32>(277f, -688f, 1790f), vec3<i32>(-35491i, i32(-2147483648), i32(-2147483648))), Struct_4(0i, false, vec3<f32>(-1000f, 413f, 1418f), vec3<i32>(-6208i, -32034i, -1i)), Struct_4(i32(-2147483648), false, vec3<f32>(590f, 552f, -1332f), vec3<i32>(-39575i, 2147483647i, 2147483647i)), Struct_4(2147483647i, false, vec3<f32>(765f, -1600f, -651f), vec3<i32>(-1i, -1i, -14983i)), Struct_4(0i, false, vec3<f32>(-137f, 602f, -1000f), vec3<i32>(1i, 0i, -15768i)), Struct_4(2147483647i, false, vec3<f32>(839f, -3014f, 387f), vec3<i32>(i32(-2147483648), 67549i, 2147483647i)), Struct_4(0i, false, vec3<f32>(-296f, -284f, 297f), vec3<i32>(29771i, 1i, -116i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_1(select(all(vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true)), any(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_5(Struct_2(!(!(arg_0 <= global1.x)), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 0u)), vec2<u32>(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1155f, 287f, 1345f, arg_1)), vec4<f32>(arg_1, -1236f, -1346f, 1000f))))), !(!select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, var_0.a, var_0.a)), vec3<bool>(false, var_0.a, true))), 17055i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(ceil(arg_1)));
    let var_3 = select(!(!vec2<bool>(!var_1.a.a, !var_1.a.a)), !select(vec2<bool>(true, true), vec2<bool>(select(var_0.a, true, false), select(false, var_1.c.x, var_1.c.x)), !select(var_1.c.yz, vec2<bool>(true, var_1.c.x), var_1.c.yx)), !(!var_1.c.yz));
    var_1 = Struct_5(var_1.a, var_1.b, var_1.c, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-arg_0, ~firstLeadingBit(0i)), arg_0, -2147483647i));
    return vec4<u32>(7268u, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 31790u, u_input.a.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.a.b, 1u, 4294967295u), vec4<u32>(var_1.a.b, 4294967295u, var_1.a.b, 34753u)), ~vec4<u32>(0u, u_input.a.x, 1u, 873u)), vec4<u32>(u_input.a.x, var_1.a.b, 4294967295u, var_1.a.b)), _wgslsmith_add_u32(~1u, reverseBits(select(_wgslsmith_add_u32(u_input.a.x, 17611u), _wgslsmith_div_u32(var_1.a.b, u_input.a.x), false))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_1.a.b, 73476u, 0u), ~reverseBits(vec4<u32>(u_input.a.x, 1u, 4294967295u, 77448u))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> Struct_2 {
    global2 = array<Struct_4, 27>();
    let var_0 = ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, u_input.a.x, arg_3.x, u_input.a.x), vec4<u32>(arg_3.x, u_input.a.x, 51120u, 4294967295u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 58914u, 73627u, u_input.a.x), vec4<u32>(u_input.a.x, arg_3.x, arg_3.x, arg_3.x)) % vec4<u32>(32u)))) & (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(func_3(21687i, 208f), ~vec4<u32>(u_input.a.x, 1u, arg_3.x, 29244u)), ~(~vec4<u32>(u_input.a.x, 4294967295u, arg_3.x, arg_3.x))) | vec4<u32>(arg_3.x, 4294967295u, u_input.a.x | firstLeadingBit(arg_3.x), ~(arg_3.x >> (4294967295u % 32u))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_mod_u32(34322u, 36149u), u_input.a.x), ~vec4<u32>(arg_3.x, var_0.x, 11459u, 16043u)), var_0));
    let var_2 = Struct_1(true);
    let var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 27u)];
    return Struct_2(true, 27054u);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = -abs(-59885i);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1098f)) + -2274f))), 366f);
    let var_2 = Struct_5(arg_2, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-425f, _wgslsmith_f_op_f32(f32(-1f) * -1757f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(669f)) + _wgslsmith_f_op_f32(f32(-1f) * -129f)), _wgslsmith_f_op_f32(round(500f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1815f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(180f))), false))), select(select(vec3<bool>(all(vec3<bool>(true, arg_2.a, arg_2.a)), any(vec4<bool>(arg_2.a, true, true, arg_2.a)), false), vec3<bool>(any(vec3<bool>(true, arg_2.a, arg_2.a)), true, true), u_input.a.x > _wgslsmith_add_u32(u_input.a.x, arg_0)), !vec3<bool>(true, all(vec2<bool>(true, arg_2.a)), true), global1.x <= -2147483647i), global1.x);
    let var_3 = global2[_wgslsmith_index_u32(~arg_0 | 55600u, 27u)];
    var var_4 = Struct_2(true, _wgslsmith_mod_u32(u_input.a.x ^ ~arg_2.b, reverseBits(27188u)));
    return (-11175i >> (_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~6225u, 9u)], vec2<u32>(1u, ~13232u)) % 32u)) < -1144i;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = -select(-7670i, select(0i, global1.x, func_4(~0u, vec3<i32>(21752i, 1i, -14381i), func_2(false, global1.x, 855f, vec3<u32>(0u, arg_0.x, arg_0.x)))), false);
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1339f, 1433f, false)))) - -741f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-984f * 1276f))) + -103f), _wgslsmith_dot_vec4_i32((reverseBits(vec4<i32>(37212i, 4931i, global1.x, 0i)) ^ -vec4<i32>(-23840i, -104519i, global1.x, global1.x)) >> (vec4<u32>(u_input.a.x & u_input.a.x, arg_0.x, arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 90277u), vec2<u32>(1u, 1u))) % vec4<u32>(32u)), vec4<i32>(global1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-11314i, 1i, 27684i, -52760i), vec4<i32>(global1.x, global1.x, 0i, global1.x)), vec4<i32>(-1i, global1.x, 10700i, 1i) | vec4<i32>(global1.x, global1.x, -1i, global1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -2147483647i), vec2<i32>(2147483647i, 2147483647i)) | -19773i, _wgslsmith_add_i32(18207i, 45703i))), _wgslsmith_f_op_f32(f32(-1f) * -524f), arg_0);
    var var_2 = Struct_4(~global1.x, !(min(i32(-1i) * -44623i, 1i) > global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(-1881f)), -515f, _wgslsmith_f_op_f32(step(-1000f, -418f)))))), _wgslsmith_mult_vec3_i32(firstTrailingBit(min(vec3<i32>(38301i, 0i, global1.x), ~vec3<i32>(global1.x, global1.x, global1.x))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-24179i, global1.x, -2147483647i), vec3<i32>(global1.x, global1.x, global1.x)), firstLeadingBit(vec3<i32>(1i, global1.x, global1.x)))));
    var_2 = global2[_wgslsmith_index_u32(min(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_0.x, 4294967295u), reverseBits(arg_0.x), var_1.b << (var_1.b % 32u)), ~vec3<u32>(0u, var_1.b, 28931u) ^ select(vec3<u32>(64894u, 4294967295u, u_input.a.x), arg_0, vec3<bool>(true, false, var_2.b))), firstLeadingBit(~(~var_1.b)))), 27u)];
    global1 = vec2<i32>(34094i, -min(~18395i, firstLeadingBit(var_2.a))) >> (min(vec2<u32>(4294967295u, ~2855u), vec2<u32>(_wgslsmith_add_u32(23614u, arg_0.x), arg_0.x)) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-var_2.c.x);
}

fn func_5(arg_0: f32) -> Struct_5 {
    let var_0 = global2[_wgslsmith_index_u32(25718u, 27u)];
    global2 = array<Struct_4, 27>();
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(~global1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~var_0.d, firstLeadingBit(var_0.d)), _wgslsmith_sub_vec3_i32(-var_0.d, vec3<i32>(2147483647i, var_0.d.x, global1.x) << (vec3<u32>(u_input.a.x, 49626u, u_input.a.x) % vec3<u32>(32u))))), _wgslsmith_div_i32(~(i32(-1i) * -var_0.d.x), global1.x), -74i, -global1.x);
    global2 = array<Struct_4, 27>();
    var var_2 = var_0.c;
    return Struct_5(Struct_2(var_0.b, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-350f, -949f, var_2.x, -1328f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -2185f, var_2.x, var_0.c.x) + vec4<f32>(var_0.c.x, 161f, 1000f, 292f))))), !vec3<bool>(!(!var_0.b), all(!vec2<bool>(true, var_0.b)), var_0.b), 64342i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1363f - -115f)))), _wgslsmith_f_op_f32(2014f + _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))))));
    global0 = array<vec2<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -509f), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x) - _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1562f)))), _wgslsmith_f_op_f32(round(var_0.b.x)));
}

