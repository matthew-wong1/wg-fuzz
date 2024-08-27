struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(0u, 50597u), 1i, vec3<f32>(-2111f, 628f, -424f), Struct_2(60338u, 2147483647i, Struct_1(73914u, 4294967295u)), Struct_2(4294967295u, -39149i, Struct_1(1u, 0u))), Struct_3(Struct_1(80520u, 4294967295u), -1i, vec3<f32>(238f, -386f, -548f), Struct_2(4294967295u, 7266i, Struct_1(7681u, 42482u)), Struct_2(81185u, 17887i, Struct_1(49559u, 75857u))), Struct_3(Struct_1(1u, 1u), 13582i, vec3<f32>(134f, 320f, -1000f), Struct_2(4294967295u, i32(-2147483648), Struct_1(4294967295u, 36822u)), Struct_2(15890u, 41519i, Struct_1(1u, 2478u))), Struct_3(Struct_1(19555u, 0u), 30342i, vec3<f32>(383f, 1000f, -1000f), Struct_2(11337u, -29459i, Struct_1(4294967295u, 68129u)), Struct_2(4294967295u, 4153i, Struct_1(4294967295u, 0u))), Struct_3(Struct_1(4294967295u, 4294967295u), 0i, vec3<f32>(347f, -216f, 1874f), Struct_2(4294967295u, -31832i, Struct_1(0u, 89105u)), Struct_2(0u, -69855i, Struct_1(4294967295u, 1u))), Struct_3(Struct_1(18588u, 66426u), -19468i, vec3<f32>(-643f, -1034f, -359f), Struct_2(0u, 2147483647i, Struct_1(4294967295u, 2492u)), Struct_2(1u, -1i, Struct_1(0u, 28565u))), Struct_3(Struct_1(59390u, 4294967295u), 22440i, vec3<f32>(-1615f, -1262f, -365f), Struct_2(34074u, 31504i, Struct_1(4294967295u, 27406u)), Struct_2(79595u, 65598i, Struct_1(1u, 10003u))));

var<private> global1: array<Struct_3, 6>;

var<private> global2: array<vec2<u32>, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    global2 = array<vec2<u32>, 28>();
    var var_0 = Struct_2(arg_2.d.a & firstLeadingBit(4294967295u), _wgslsmith_div_i32(max(abs(-29949i), min(arg_2.d.b, 2147483647i)), ~(-36263i)) >> (~(~arg_2.e.c.b) % 32u), arg_2.a);
    var var_1 = arg_0.x;
    var var_2 = false;
    let var_3 = !(!(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_3, -833f))) < 855f));
    return Struct_3(var_0.c, -7941i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2051f - _wgslsmith_f_op_f32(arg_3 - 768f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-370f, -1563f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(882f - arg_3) + arg_3)), arg_1.c.x), Struct_2(arg_1.e.c.b, 1i, Struct_1(41130u, arg_2.e.a)), Struct_2(_wgslsmith_add_u32(arg_1.d.c.a, select(var_0.c.b, arg_1.d.c.a, !var_3)), var_0.b, Struct_1(abs(select(0u, 4294967295u, var_3)), arg_2.e.a)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> bool {
    let var_0 = func_2(_wgslsmith_mod_vec4_i32(~vec4<i32>(-25384i, u_input.b, -1i, 1i) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_2.d.b, arg_2.e.b, arg_2.e.b), vec4<i32>(u_input.b, arg_2.b, -1i, 2147483647i)), max(vec4<i32>(2147483647i, -9236i, arg_2.d.b, -81845i), vec4<i32>(-77693i, 5370i, 8377i, 24927i))) & (abs(abs(vec4<i32>(u_input.b, arg_2.b, -30138i, arg_2.e.b))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 69143i, -5331i), vec3<i32>(-1i, u_input.a.x, 2147483647i)), _wgslsmith_add_i32(4184i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(15279i, 14034i, arg_2.d.b, 7456i), vec4<i32>(20647i, arg_2.e.b, -1705i, 21362i)), _wgslsmith_add_i32(u_input.a.x, -1i))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_2.d.a | abs(arg_0), _wgslsmith_sub_u32(reverseBits(arg_2.a.b), 3736u | arg_0)), 6u)], arg_2, _wgslsmith_f_op_f32(-1399f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1604f)))).e;
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(arg_2.d.a), ~arg_0, firstLeadingBit(abs(0u)), _wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(arg_0, 28u)], abs(vec2<u32>(arg_0, 0u)))), ~vec4<u32>(select(4294967295u, 4294967295u, false), ~4294967295u, _wgslsmith_clamp_u32(1u, arg_2.e.a, 0u), 44314u)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, arg_2.e.b, u_input.b), vec4<i32>(2147483647i, -21240i, 0i, arg_2.b)), countOneBits(vec4<i32>(arg_2.d.b, 0i, var_0.b, arg_2.b))), vec4<i32>(i32(-1i) * -29469i, -_wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_0.b, 1584i))), _wgslsmith_mult_i32(u_input.a.x, -2147483647i), ~(_wgslsmith_add_i32(arg_2.d.b, 28252i) & arg_2.e.b)));
    let var_3 = vec3<i32>(arg_2.e.b, -countOneBits(u_input.b | u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, -36208i, 2147483647i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, var_0.b), vec4<i32>(var_0.b, u_input.a.x, var_0.b, -2147483647i))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(95948i, var_0.b, u_input.b, var_0.b), vec4<i32>(51019i, arg_2.b, arg_2.e.b, -36347i), vec4<i32>(arg_2.b, arg_2.b, u_input.a.x, var_0.b)))) | (~(~(vec3<i32>(arg_2.b, arg_2.b, u_input.a.x) & vec3<i32>(arg_2.e.b, var_0.b, -2147483647i))) | (max(vec3<i32>(arg_2.b, arg_2.d.b, -2147483647i) << (var_1.xxz % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-11682i, 1i, var_0.b), vec3<i32>(-35147i, 17346i, arg_2.e.b), vec3<i32>(arg_2.e.b, var_0.b, 2147483647i))) ^ countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.d.b, u_input.a.x, var_0.b), vec3<i32>(var_0.b, var_0.b, 1i)))));
    var var_4 = vec2<i32>(-2147483647i, 0i);
    return 1811f < arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = any(vec3<bool>(true, true, func_3(~arg_0.a, _wgslsmith_f_op_f32(180f + 413f), func_2(vec4<i32>(u_input.b, -20249i, u_input.a.x, 45714i), global1[_wgslsmith_index_u32(32311u, 6u)], Struct_3(Struct_1(arg_0.a, 0u), u_input.b, vec3<f32>(203f, 563f, 931f), Struct_2(87504u, 2147483647i, arg_0), Struct_2(10412u, u_input.a.x, arg_0)), -679f)))) || all(select(vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(select(false, true, false), true), select(true, true, true)));
    let var_1 = func_2(vec4<i32>(-2147483647i, u_input.b, u_input.b, 1i), Struct_3(arg_1, u_input.a.x, _wgslsmith_f_op_vec3_f32(func_2(select(vec4<i32>(-1i, 2147483647i, u_input.b, u_input.a.x), vec4<i32>(2147483647i, 0i, 1i, u_input.a.x), vec4<bool>(true, var_0, false, var_0)), Struct_3(Struct_1(arg_0.a, 11390u), u_input.a.x, vec3<f32>(-1000f, 642f, 987f), Struct_2(arg_1.a, u_input.a.x, arg_1), Struct_2(27667u, -2147483647i, Struct_1(2501u, arg_1.b))), Struct_3(Struct_1(1u, arg_1.a), u_input.b, vec3<f32>(1345f, -1238f, 504f), Struct_2(1u, 2147483647i, Struct_1(1u, arg_1.b)), Struct_2(arg_0.a, 2147483647i, Struct_1(1462u, 4294967295u))), _wgslsmith_f_op_f32(trunc(-593f))).c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, -199f, -1177f)))), func_2(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i) ^ vec4<i32>(u_input.a.x, 9693i, u_input.a.x, -38123i), Struct_3(func_2(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), Struct_3(Struct_1(arg_1.a, arg_1.b), u_input.a.x, vec3<f32>(454f, 204f, 1357f), Struct_2(arg_0.b, u_input.a.x, arg_1), Struct_2(29545u, u_input.a.x, arg_0)), global1[_wgslsmith_index_u32(arg_1.b, 6u)], -1514f).e.c, -2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1651f, -136f, 970f)), func_2(vec4<i32>(2147483647i, u_input.a.x, 41497i, u_input.a.x), global0[_wgslsmith_index_u32(arg_0.b, 7u)], Struct_3(Struct_1(arg_0.a, arg_1.a), 1i, vec3<f32>(-637f, -289f, -450f), Struct_2(4294967295u, -1i, arg_0), Struct_2(1u, 0i, arg_1)), -1944f).d, func_2(vec4<i32>(-18557i, u_input.a.x, 0i, u_input.a.x), global1[_wgslsmith_index_u32(arg_1.b, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], 715f).d), func_2(vec4<i32>(-41294i, u_input.a.x, u_input.a.x, u_input.b), global0[_wgslsmith_index_u32(1u >> (0u % 32u), 7u)], global0[_wgslsmith_index_u32(34458u, 7u)], _wgslsmith_div_f32(-628f, -601f)), -244f).d, Struct_2(53914u, _wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x), arg_0)), global0[_wgslsmith_index_u32(arg_0.b, 7u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(410f, 1350f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2080f + 1581f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 254f))))).a;
    var var_2 = func_2(select(firstLeadingBit(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(arg_1.a, var_1.a, arg_1.b, var_1.a) % vec4<u32>(32u))) & -vec4<i32>(2147483647i, u_input.b, u_input.a.x, u_input.b), firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, 0i, u_input.a.x, 2147483647i), ~vec4<i32>(u_input.a.x, 2147483647i, 29873i, 2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -1472f) == _wgslsmith_f_op_f32(step(752f, _wgslsmith_f_op_f32(abs(-221f))))), func_2(min(~abs(vec4<i32>(u_input.a.x, u_input.b, 0i, 2147483647i)), vec4<i32>(-u_input.b, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x)), func_2(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -52276i, 34494i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 53413i, 22672i))), func_2(vec4<i32>(1i, -9720i, u_input.b, -2147483647i), func_2(vec4<i32>(u_input.a.x, u_input.a.x, -29949i, u_input.a.x), global1[_wgslsmith_index_u32(1u, 6u)], Struct_3(Struct_1(1u, 1u), -2147483647i, vec3<f32>(-442f, -1000f, -810f), Struct_2(1u, u_input.b, var_1), Struct_2(arg_0.b, -2147483647i, Struct_1(4294967295u, arg_1.a))), 1545f), func_2(vec4<i32>(u_input.a.x, 34753i, u_input.a.x, -21441i), global0[_wgslsmith_index_u32(arg_1.b, 7u)], global0[_wgslsmith_index_u32(82793u, 7u)], -469f), _wgslsmith_f_op_f32(f32(-1f) * -941f)), Struct_3(func_2(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b), global0[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(10430u, 6u)], 336f).e.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, 10420i, -2147483647i), vec4<i32>(-83023i, 0i, u_input.a.x, -1i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(490f, -972f, -1193f))), Struct_2(arg_0.b, u_input.b, Struct_1(arg_0.b, 0u)), Struct_2(arg_1.a, u_input.a.x, Struct_1(var_1.a, 76568u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-439f - -782f), _wgslsmith_f_op_f32(316f * 141f)))), global0[_wgslsmith_index_u32(3580u, 7u)], 121f), Struct_3(Struct_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1.a, arg_0.a, var_1.a), var_1.b), arg_1.b), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(-15841i, u_input.a.x), i32(-1i) * -53631i, ~u_input.b ^ (i32(-1i) * -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-445f, -211f, -1621f), vec3<f32>(-832f, -122f, 599f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 814f, -1000f)))), func_2(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, -5849i, u_input.b, -41265i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 10277i, 1i, u_input.a.x), vec4<i32>(2147483647i, -24128i, -1i, u_input.a.x))), global1[_wgslsmith_index_u32(43123u, 6u)], func_2(vec4<i32>(2147483647i, 1i, u_input.b, u_input.b), func_2(vec4<i32>(u_input.b, 0i, -1i, u_input.b), global0[_wgslsmith_index_u32(1u, 7u)], Struct_3(arg_1, u_input.a.x, vec3<f32>(-318f, 1456f, -885f), Struct_2(arg_0.a, u_input.a.x, var_1), Struct_2(var_1.b, u_input.a.x, Struct_1(7310u, var_1.b))), 463f), func_2(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b), Struct_3(Struct_1(var_1.a, arg_1.b), -5416i, vec3<f32>(-1849f, 434f, -1000f), Struct_2(arg_0.a, u_input.a.x, var_1), Struct_2(1u, 16442i, var_1)), global1[_wgslsmith_index_u32(arg_1.a, 6u)], -1114f), 531f), _wgslsmith_f_op_f32(max(-476f, _wgslsmith_div_f32(182f, -1049f)))).e, func_2(countOneBits(vec4<i32>(-1i, u_input.a.x, -40599i, u_input.b)), func_2(abs(vec4<i32>(1153i, -4955i, u_input.a.x, u_input.b)), global0[_wgslsmith_index_u32(arg_0.b, 7u)], Struct_3(Struct_1(0u, var_1.b), u_input.b, vec3<f32>(-1000f, -408f, 174f), Struct_2(var_1.a, 0i, Struct_1(32339u, 35755u)), Struct_2(35706u, u_input.a.x, arg_0)), _wgslsmith_f_op_f32(sign(601f))), global0[_wgslsmith_index_u32(~arg_1.a, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(725f, 2633f))).e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(602f, 1000f, var_0)), 115f))))).d;
    var_2 = func_2(~(reverseBits(vec4<i32>(28737i, var_2.b, -6411i, var_2.b) & vec4<i32>(-2147483647i, 1i, -1i, var_2.b)) >> (countOneBits(vec4<u32>(var_2.a, 0u, var_1.a, arg_1.a) >> (vec4<u32>(4294967295u, 0u, var_1.b, 11861u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_3(var_2.c, -1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(465f, 1435f, -298f), vec3<f32>(-611f, -366f, 1000f), vec3<bool>(false, true, var_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, -1510f, -375f) * vec3<f32>(1037f, 313f, -856f)), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(854f, 1400f, -142f))), func_2(vec4<i32>(u_input.a.x, -2147483647i, -25233i, select(0i, var_2.b, true)), Struct_3(func_2(vec4<i32>(0i, var_2.b, 2204i, u_input.a.x), global0[_wgslsmith_index_u32(arg_1.b, 7u)], Struct_3(arg_1, u_input.b, vec3<f32>(-1000f, -115f, 1099f), Struct_2(71906u, -4863i, Struct_1(19448u, 51835u)), Struct_2(68734u, var_2.b, Struct_1(arg_0.a, 0u))), -371f).e.c, u_input.a.x, vec3<f32>(1f, 1f, 1f), func_2(vec4<i32>(-2147483647i, var_2.b, 46163i, -2147483647i), global1[_wgslsmith_index_u32(var_2.a, 6u)], Struct_3(arg_0, var_2.b, vec3<f32>(1413f, -273f, 747f), Struct_2(12191u, var_2.b, Struct_1(1u, 4294967295u)), Struct_2(var_1.a, var_2.b, Struct_1(arg_1.a, 30931u))), -1668f).d, Struct_2(4294967295u, u_input.a.x, arg_1)), Struct_3(var_1, var_2.b >> (var_2.a % 32u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-712f, 1104f, 2150f))), func_2(vec4<i32>(u_input.b, u_input.a.x, -9056i, 1i), Struct_3(Struct_1(var_2.a, 0u), u_input.b, vec3<f32>(-490f, 1207f, 572f), Struct_2(1u, -47395i, arg_0), Struct_2(arg_0.a, u_input.a.x, var_2.c)), global1[_wgslsmith_index_u32(4294967295u, 6u)], 805f).d, func_2(vec4<i32>(u_input.a.x, 4294i, var_2.b, 2147483647i), Struct_3(arg_1, var_2.b, vec3<f32>(-625f, 375f, -326f), Struct_2(var_2.c.b, -1i, Struct_1(0u, var_1.a)), Struct_2(22794u, 1i, var_1)), global0[_wgslsmith_index_u32(58503u, 7u)], 295f).e), _wgslsmith_f_op_f32(min(237f, _wgslsmith_f_op_f32(-1116f + 614f)))).e, func_2(-min(vec4<i32>(var_2.b, u_input.b, 5805i, var_2.b), vec4<i32>(var_2.b, 1i, -1i, 1i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_2.a, 1u), 6u)], func_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_2.b, -16794i, u_input.b), vec4<i32>(var_2.b, var_2.b, 37759i, u_input.a.x)), Struct_3(arg_1, 0i, vec3<f32>(-1000f, -1388f, -711f), Struct_2(836u, var_2.b, arg_0), Struct_2(var_2.a, u_input.b, Struct_1(arg_0.b, var_2.a))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a, var_2.a), 7u)], _wgslsmith_f_op_f32(-115f + 627f)), _wgslsmith_f_op_f32(-1000f + 1568f)).d), Struct_3(Struct_1(max(4294967295u, arg_0.b) >> (reverseBits(21515u) % 32u), _wgslsmith_div_u32(~48686u, 56166u)), reverseBits(reverseBits(-15543i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-514f, 743f, -530f), vec3<f32>(-295f, -1000f, 666f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(362f, 2103f, -523f) - vec3<f32>(-289f, -404f, 1529f)), vec3<bool>(var_0, false, var_0))))), func_2(countOneBits(vec4<i32>(u_input.a.x, -1i, 3306i, 3561i)), global0[_wgslsmith_index_u32(var_2.c.b, 7u)], Struct_3(Struct_1(arg_0.a, 1u), 4237i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-991f, 197f, -530f) * vec3<f32>(388f, 280f, -476f)), func_2(vec4<i32>(u_input.b, -2147483647i, u_input.a.x, 1i), Struct_3(Struct_1(arg_1.a, arg_0.a), var_2.b, vec3<f32>(1986f, 760f, 615f), Struct_2(133479u, u_input.a.x, Struct_1(56806u, 0u)), Struct_2(arg_0.a, 34999i, Struct_1(arg_1.b, 4748u))), global1[_wgslsmith_index_u32(26965u, 6u)], -1433f).d, func_2(vec4<i32>(-2147483647i, var_2.b, 2490i, u_input.b), Struct_3(arg_1, 21630i, vec3<f32>(-934f, -922f, 607f), Struct_2(18713u, -1i, Struct_1(var_1.b, 41311u)), Struct_2(var_2.c.b, 62874i, Struct_1(0u, 1u))), Struct_3(Struct_1(1u, 0u), -1i, vec3<f32>(-1088f, -1000f, 926f), Struct_2(arg_1.a, -9107i, Struct_1(arg_0.a, 39199u)), Struct_2(arg_0.b, u_input.a.x, arg_1)), 1271f).d), -636f).e, Struct_2(_wgslsmith_div_u32(4294967295u, 8842u) << (arg_0.a % 32u), ~2147483647i, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2024f)), _wgslsmith_f_op_f32(sign(-1000f))) * 1000f))).d;
    var var_3 = vec4<bool>(false, false || !(!(!var_0)), !var_0, var_0);
    return func_2(vec4<i32>(0i, 63311i, 0i, var_2.b), func_2(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -1i, -52959i), vec4<i32>(-1i, u_input.b, var_2.b, var_2.b)), func_2(vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), 0i, _wgslsmith_mod_i32(1i, -18068i), var_2.b << (arg_0.a % 32u)), Struct_3(func_2(vec4<i32>(var_2.b, var_2.b, u_input.b, var_2.b), global1[_wgslsmith_index_u32(72706u, 6u)], global1[_wgslsmith_index_u32(var_1.b, 6u)], 856f).e.c, var_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1486f, 310f, -485f)), Struct_2(20091u, u_input.a.x, var_1), Struct_2(var_2.c.b, var_2.b, var_2.c)), Struct_3(Struct_1(13737u, arg_0.a), func_2(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, var_2.b), global1[_wgslsmith_index_u32(var_1.b, 6u)], Struct_3(var_1, -31889i, vec3<f32>(-781f, 624f, 534f), Struct_2(0u, var_2.b, arg_0), Struct_2(4294967295u, u_input.b, Struct_1(606u, 1u))), -724f).e.b, _wgslsmith_div_vec3_f32(vec3<f32>(609f, -454f, -1370f), vec3<f32>(225f, -187f, 618f)), func_2(vec4<i32>(u_input.a.x, var_2.b, 20640i, u_input.a.x), global1[_wgslsmith_index_u32(57402u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], 729f).d, func_2(vec4<i32>(55244i, var_2.b, 0i, 1i), Struct_3(Struct_1(var_1.b, var_2.c.b), u_input.b, vec3<f32>(-426f, -352f, 888f), Struct_2(4294967295u, 1i, Struct_1(arg_0.a, var_1.b)), Struct_2(var_1.b, var_2.b, var_1)), Struct_3(Struct_1(var_2.c.b, arg_1.b), var_2.b, vec3<f32>(1730f, 644f, -750f), Struct_2(arg_0.b, -1i, var_1), Struct_2(0u, var_2.b, arg_0)), 238f).d), 727f), Struct_3(func_2(vec4<i32>(u_input.b, 1i, var_2.b, -10510i) & vec4<i32>(u_input.b, -50759i, var_2.b, var_2.b), func_2(vec4<i32>(-8822i, 40119i, var_2.b, 2147483647i), Struct_3(var_1, -1i, vec3<f32>(595f, 1033f, -454f), Struct_2(36661u, -1i, Struct_1(var_2.c.a, 45759u)), Struct_2(640u, -30529i, Struct_1(arg_1.a, arg_0.a))), global1[_wgslsmith_index_u32(27483u, 6u)], 1000f), Struct_3(Struct_1(var_1.a, arg_0.a), var_2.b, vec3<f32>(163f, 419f, 239f), Struct_2(0u, -1i, Struct_1(var_1.b, arg_0.a)), Struct_2(var_1.a, u_input.b, arg_1)), _wgslsmith_f_op_f32(707f * 1173f)).e.c, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) >> (_wgslsmith_mod_u32(var_1.a, 114687u) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1224f, 1294f, 953f) + vec3<f32>(571f, 1738f, 607f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -400f, -1000f)))), func_2(~vec4<i32>(u_input.b, -87877i, var_2.b, u_input.a.x), global0[_wgslsmith_index_u32(~arg_0.a, 7u)], func_2(vec4<i32>(1i, -12493i, 4030i, -2802i), Struct_3(Struct_1(arg_0.b, var_1.b), 19870i, vec3<f32>(-237f, 1018f, -1380f), Struct_2(0u, u_input.b, arg_1), Struct_2(1u, u_input.b, Struct_1(0u, 15936u))), Struct_3(Struct_1(70739u, 47927u), 12579i, vec3<f32>(-2729f, -1000f, 192f), Struct_2(37804u, -10557i, arg_0), Struct_2(var_1.b, u_input.a.x, var_2.c)), 221f), _wgslsmith_f_op_f32(f32(-1f) * -1585f)).d, Struct_2(_wgslsmith_mod_u32(47846u, arg_1.b), var_2.b, func_2(vec4<i32>(u_input.b, 1i, -2147483647i, -1i), global1[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(0u, 7u)], -2166f).e.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1698f - 1000f) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1270f, 365f), -1515f)))), global1[_wgslsmith_index_u32(var_1.a, 6u)], 1000f).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(~firstTrailingBit(1u), 4496u), 40227u >> ((~44151u << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 33914u, 4294967295u), vec3<u32>(4294967295u, 48435u, 4294967295u)), ~0u, 9899u) % 32u)) % 32u));
    var var_1 = true;
    let var_2 = vec2<u32>(0u, 0u);
    var var_3 = func_1(var_0, Struct_1(~countOneBits(~var_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.x), vec2<u32>(abs(45842u), _wgslsmith_sub_u32(var_2.x, 21003u)))));
    let var_4 = func_2(-vec4<i32>(i32(-1i) * -var_3.b, ~u_input.b, 18568i, -u_input.a.x), global0[_wgslsmith_index_u32(126145u, 7u)], global1[_wgslsmith_index_u32(870u, 6u)], -141f).a;
    let x = u_input.a;
    s_output = StorageBuffer(-1161f, vec4<u32>(~74797u, 0u, _wgslsmith_div_u32(63928u, abs(4294967295u)), countOneBits(4294967295u)) | ~max(~vec4<u32>(var_0.b, var_3.c.b, 1u, 49064u), abs(vec4<u32>(var_0.b, 4294967295u, 48076u, 5563u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f - -1322f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(228f * -1531f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1928f + 800f))))), func_1(func_2(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b, u_input.a.x, 51159i, 1i), vec4<i32>(var_3.b, 23764i, -1i, -24668i)), u_input.a.x ^ -28940i, var_3.b, abs(var_3.b)), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 33187i, u_input.b, -9014i), vec4<i32>(var_3.b, -18161i, var_3.b, -33097i)), func_2(vec4<i32>(u_input.b, -26700i, 0i, -53787i), Struct_3(Struct_1(0u, var_4.b), var_3.b, vec3<f32>(237f, -125f, -1154f), Struct_2(var_0.a, 1i, var_4), Struct_2(var_4.a, var_3.b, var_4)), Struct_3(Struct_1(0u, 52626u), u_input.a.x, vec3<f32>(1778f, 735f, 665f), Struct_2(var_4.a, 22242i, Struct_1(var_2.x, 10446u)), Struct_2(var_2.x, var_3.b, Struct_1(4294967295u, var_4.a))), 805f), func_2(vec4<i32>(var_3.b, -41414i, 14993i, u_input.a.x), Struct_3(Struct_1(var_0.b, 34327u), -1i, vec3<f32>(-1894f, -1056f, 652f), Struct_2(4294967295u, var_3.b, var_4), Struct_2(var_4.a, var_3.b, var_0)), global0[_wgslsmith_index_u32(0u, 7u)], 1000f), _wgslsmith_f_op_f32(f32(-1f) * -471f)), func_2(vec4<i32>(var_3.b, u_input.b, 2147483647i, 2147483647i), Struct_3(Struct_1(4294967295u, 53284u), 48484i, vec3<f32>(-686f, 330f, 1136f), Struct_2(var_3.c.b, var_3.b, Struct_1(59196u, 21568u)), Struct_2(var_2.x, u_input.a.x, Struct_1(0u, var_3.a))), global0[_wgslsmith_index_u32(~2626u, 7u)], _wgslsmith_f_op_f32(769f * -1364f)), 692f).e.c, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_0.b, var_2.x, var_0.b), vec4<u32>(4294967295u, 67074u, 4294967295u, 33842u)) << (var_4.a % 32u), ~0u | _wgslsmith_sub_u32(var_3.c.a, 40326u))).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-603f)), func_2(vec4<i32>(i32(-1i) * -46220i, var_3.b, u_input.a.x ^ var_3.b, u_input.a.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u >> (var_0.a % 32u), _wgslsmith_div_u32(4294967295u, var_0.b)), 6u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_4.a), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1426f - -648f) + _wgslsmith_f_op_f32(f32(-1f) * -378f))).c.x));
}

