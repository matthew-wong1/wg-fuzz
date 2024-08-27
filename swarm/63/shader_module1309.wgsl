struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(80735u, 28071u, 25764u), firstTrailingBit(~vec3<u32>(4294967295u, 12749u, 340u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_1 = vec2<u32>(0u, 23101u);
    global0 = array<vec2<f32>, 25>();
    var var_2 = 2471f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1964f)))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0, var_1.x, 1u)) << (select(vec3<u32>(var_0, var_1.x, var_0), _wgslsmith_div_vec3_u32(vec3<u32>(92252u, var_0, var_0), vec3<u32>(var_1.x, 80474u, var_1.x)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))) % vec3<u32>(32u)), reverseBits(~(~vec3<u32>(21326u, var_0, 4294967295u)))), abs(vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(var_1.x), 13989u), _wgslsmith_dot_vec4_u32(vec4<u32>(12330u, var_0, 0u, 22913u) << (vec4<u32>(var_1.x, var_1.x, var_0, var_1.x) % vec4<u32>(32u)), ~vec4<u32>(var_0, var_1.x, 15605u, 42368u)), var_1.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(arg_0, arg_1.b);
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(func_3(), _wgslsmith_dot_vec4_u32(select(vec4<u32>(89032u, 17785u, 74512u, 1u), vec4<u32>(11939u, 1u, 4294967295u, 28368u), vec4<bool>(true, true, true, false)), vec4<u32>(4294967295u, 0u, 10233u, 110109u)), abs(23919u)) | (~select(vec3<u32>(4294967295u, 52662u, 406u), vec3<u32>(29898u, 7659u, 4294967295u), vec3<bool>(false, arg_0, arg_0)) | vec3<u32>(0u, ~0u, reverseBits(158187u))), ~max(~vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(23102u, 40980u, 15514u)) | countOneBits(vec3<u32>(21660u, 2757u, 4294967295u) ^ select(vec3<u32>(7035u, 56427u, 0u), vec3<u32>(77283u, 0u, 4294967295u), var_0.a)));
    let var_2 = Struct_2(vec3<bool>(var_0.a, all(!(!vec3<bool>(var_0.a, true, var_0.a))), !select(all(vec2<bool>(arg_0, var_0.a)), arg_0, select(var_0.a, false, arg_0))), Struct_1(_wgslsmith_f_op_f32(max(arg_1.a.a, var_0.b.a)), var_0.b.b, _wgslsmith_f_op_f32(round(-1299f)), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, 0i), vec3<i32>(arg_1.a.d.x, -14762i, -58195i)))), arg_1.b);
    var var_3 = var_0;
    var var_4 = Struct_4(var_2.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b.c, var_0.b.a) + _wgslsmith_f_op_f32(var_0.b.c + -184f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.c), var_2.b.a))), var_2.c.b, -252f, abs(~arg_1.c.b.xxy << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.x, 4294967295u), vec3<u32>(4294967295u, var_1.x, var_1.x)) % vec3<u32>(32u)))));
    return Struct_2(var_2.a, var_4.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1870f))), select(-vec4<i32>(var_3.b.b.x, var_2.b.d.x, var_0.b.b.x, var_4.b.b.x), select(var_3.b.b, _wgslsmith_mult_vec4_i32(var_2.b.b, var_4.b.b), var_3.a), !select(vec4<bool>(false, var_2.a.x, var_3.a, var_2.a.x), vec4<bool>(true, false, var_4.a, false), var_4.a)), arg_1.a.c, _wgslsmith_mult_vec3_i32(abs(min(vec3<i32>(var_4.b.b.x, var_3.b.b.x, -7886i), var_2.b.d)), firstTrailingBit(vec3<i32>(18247i, u_input.b.x, -1i)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.c))))), vec4<i32>(6762i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a & 1i), abs(arg_0.c.b.zx)), -reverseBits(reverseBits(1i))), arg_0.b.a, -arg_0.c.d);
    var var_1 = arg_0.a.x;
    let var_2 = true;
    global0 = array<vec2<f32>, 25>();
    var_0 = func_2(any(!arg_0.a) | all(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, arg_0.a.x, var_2), true)), Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(1f)), firstTrailingBit(vec4<i32>(-49628i, 15465i, -1i, arg_0.b.d.x)), -1692f, vec3<i32>(-73423i, _wgslsmith_mult_i32(0i, 1i), var_0.d.x)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.c.a, -252f, arg_0.a.x)))), var_0.b, -217f, vec3<i32>(9265i, _wgslsmith_div_i32(var_0.b.x, -2147483647i), func_2(false, Struct_3(arg_0.b, arg_0.b, arg_0.b)).b.d.x)), func_2(true, Struct_3(Struct_1(arg_0.b.c, arg_0.c.b, -877f, var_0.b.wwx), arg_0.c, func_2(true, Struct_3(Struct_1(192f, var_0.b, var_0.a, var_0.d), Struct_1(1000f, var_0.b, 390f, var_0.d), Struct_1(arg_0.b.c, vec4<i32>(-2759i, u_input.a, arg_0.c.b.x, 2147483647i), arg_0.b.c, vec3<i32>(var_0.d.x, u_input.b.x, -2147483647i)))).c)).c)).b;
    return arg_0.c;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(arg_1.b.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(arg_2.c.c - arg_2.b.c))), func_2(1u >= select(1u, 65300u, arg_1.a), Struct_3(arg_2.b, arg_2.c, Struct_1(arg_1.b.a, arg_2.c.b, arg_1.b.a, vec3<i32>(arg_3, -18410i, 21162i)))).b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c, -208f))), -_wgslsmith_mult_vec3_i32(~arg_1.b.d, vec3<i32>(1i, u_input.b.x, arg_2.c.b.x) & vec3<i32>(u_input.b.x, 0i, arg_3))), func_4(func_2(false, Struct_3(Struct_1(226f, arg_1.b.b, -680f, arg_1.b.b.zwz), Struct_1(arg_1.b.a, arg_1.b.b, arg_2.b.a, arg_2.c.d), func_2(arg_2.a.x, Struct_3(Struct_1(170f, arg_2.b.b, 269f, arg_2.b.b.wzw), Struct_1(880f, vec4<i32>(2147483647i, 0i, -8374i, -1i), -873f, vec3<i32>(1i, -2147483647i, -26566i)), Struct_1(arg_0, arg_1.b.b, arg_0, arg_2.b.d))).b))), func_2(true, Struct_3(arg_1.b, arg_2.b, arg_2.c)).b);
    var var_1 = countOneBits(max(~(arg_1.b.b.x | -32280i), var_0.c.b.x) ^ ~_wgslsmith_dot_vec4_i32(arg_1.b.b, vec4<i32>(arg_3, 1i, arg_1.b.b.x, 0i)));
    var_0 = Struct_3(arg_1.b, func_2(true, Struct_3(func_4(arg_2), Struct_1(_wgslsmith_f_op_f32(round(-780f)), vec4<i32>(arg_1.b.b.x, var_0.b.b.x, arg_3, -2147483647i) | vec4<i32>(var_0.b.b.x, arg_2.b.b.x, u_input.b.x, -2147483647i), arg_1.b.a, vec3<i32>(u_input.a, var_0.b.b.x, arg_3)), func_4(arg_2))).c, func_4(Struct_2(vec3<bool>(all(vec2<bool>(false, true)), arg_2.a.x, var_0.c.c > arg_0), Struct_1(arg_0, firstLeadingBit(var_0.b.b), _wgslsmith_f_op_f32(-arg_0), -vec3<i32>(-19556i, arg_3, 38993i)), arg_1.b)));
    let var_2 = -1458f;
    global0 = array<vec2<f32>, 25>();
    return Struct_1(761f, vec4<i32>(0i, ~var_0.b.d.x, arg_1.b.d.x, var_0.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(func_2(arg_1.a, Struct_3(Struct_1(var_2, var_0.a.b, 222f, vec3<i32>(arg_2.c.d.x, 65404i, arg_1.b.d.x)), Struct_1(-308f, vec4<i32>(-2147483647i, 1i, arg_3, 2091i), 1492f, vec3<i32>(arg_1.b.b.x, 51546i, var_0.b.d.x)), var_0.c))).a)), -arg_2.c.d);
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<vec2<f32>, 25>();
    return func_2(select(arg_3.x != 1u, arg_0, true || (-327f <= _wgslsmith_f_op_f32(select(arg_2.a, 447f, true)))), Struct_3(arg_2, func_5(arg_2.a, Struct_4(true, func_4(Struct_2(vec3<bool>(false, false, arg_0), arg_2, arg_2))), func_2(true != arg_0, Struct_3(Struct_1(arg_2.a, vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, arg_2.d.x), arg_2.a, vec3<i32>(arg_2.d.x, u_input.a, 51018i)), Struct_1(arg_2.a, arg_2.b, 1005f, vec3<i32>(58787i, arg_2.b.x, -9799i)), arg_2)), max(2147483647i, u_input.b.x) & (0i & arg_2.b.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -985f), ~vec4<i32>(arg_2.b.x, u_input.b.x, u_input.a, u_input.b.x), arg_2.c, min(arg_2.b.xwz, arg_2.d))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_2 {
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    return func_6(arg_3.a, vec4<u32>(1u, 1u, 1u, 1u) ^ vec4<u32>(~abs(16271u), ~1u >> (1u % 32u), 1u, reverseBits(firstTrailingBit(15083u))), func_5(280f, Struct_4(arg_3.a, func_4(func_2(false, Struct_3(Struct_1(-1205f, vec4<i32>(1i, arg_0.x, 0i, -63081i), arg_3.b.a, vec3<i32>(u_input.b.x, 0i, -1i)), Struct_1(arg_1, arg_0, 2548f, arg_2), arg_3.b)))), func_2(true, Struct_3(arg_3.b, func_2(arg_3.a, Struct_3(Struct_1(1475f, arg_3.b.b, 1000f, vec3<i32>(2147483647i, 36481i, u_input.a)), Struct_1(-1133f, arg_0, arg_1, vec3<i32>(3772i, arg_3.b.d.x, u_input.a)), arg_3.b)).b, func_2(arg_3.a, Struct_3(Struct_1(arg_3.b.a, arg_3.b.b, arg_3.b.a, arg_2), arg_3.b, arg_3.b)).c)), _wgslsmith_mod_i32(~2147483647i ^ _wgslsmith_add_i32(2821i, arg_3.b.b.x), _wgslsmith_mult_i32(arg_2.x, 0i))), vec2<u32>(~(~0u), abs(30487u)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(arg_1.b, arg_0.c.b);
    let var_1 = arg_2 & arg_2;
    let var_2 = func_2(true, Struct_3(arg_1, Struct_1(arg_0.c.a, vec4<i32>(arg_1.b.x, ~arg_1.d.x, _wgslsmith_mult_i32(1i, 16524i), u_input.a), arg_0.c.a, vec3<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), 1i, func_6(var_1, vec4<u32>(27417u, 1u, 4294967295u, 11510u), arg_0.b, vec2<u32>(1u, 1u)).c.b.x)), func_2(!var_1, Struct_3(func_1(vec4<i32>(arg_1.d.x, u_input.b.x, 2147483647i, u_input.b.x), arg_1.c, vec3<i32>(1i, 17441i, -3287i), Struct_4(arg_2, arg_1)).c, Struct_1(arg_0.b.a, arg_0.c.b, arg_1.c, arg_1.b.xww), Struct_1(arg_0.b.c, vec4<i32>(1i, 2147483647i, arg_1.d.x, 1i), arg_1.c, arg_0.b.d))).b)).a.x;
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(func_3(), firstTrailingBit(1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 27243u, 53779u, 4946u), vec4<u32>(15672u, 5253u, 36990u, 0u))), func_3()), ~(~vec4<u32>(1u, 1u, 1u, 1u))), select(abs(vec4<u32>(~1u, _wgslsmith_div_u32(0u, 22604u), ~24251u, _wgslsmith_div_u32(10908u, 4294967295u))), vec4<u32>(1u, 1u, 1u, 1u), arg_2));
    let var_4 = Struct_4(729f < _wgslsmith_f_op_f32(select(func_6(true, abs(vec4<u32>(var_3, 22165u, 2141u, var_3)), arg_1, ~vec2<u32>(4294967295u, 52351u)).c.c, -283f, arg_0.a.x)), Struct_1(_wgslsmith_f_op_f32(-arg_0.b.a), ~_wgslsmith_mod_vec4_i32(arg_1.b, arg_1.b), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_div_vec3_i32(arg_0.c.d | arg_0.c.b.wxy, firstTrailingBit(arg_0.c.b.yzz)) >> (vec3<u32>(_wgslsmith_add_u32(4294967295u, var_3), var_3, var_3 ^ var_3) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(723f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1251f, 1175f)) + _wgslsmith_f_op_f32(sign(-500f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1675f))));
    var var_1 = Struct_1(327f, ~(-_wgslsmith_mod_vec4_i32(-vec4<i32>(52806i, u_input.a, 1i, u_input.b.x), select(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.a), vec4<i32>(u_input.b.x, 0i, u_input.a, 19881i), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(253f, _wgslsmith_f_op_f32(func_7(func_1(vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.a), -767f, vec3<i32>(4838i, u_input.a, u_input.a), Struct_4(true, Struct_1(1030f, vec4<i32>(202i, -93912i, u_input.a, 39038i), -587f, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), func_4(Struct_2(vec3<bool>(false, true, true), Struct_1(-1000f, vec4<i32>(u_input.b.x, -14519i, -2147483647i, 2147483647i), 931f, vec3<i32>(u_input.b.x, -1i, 26829i)), Struct_1(-1131f, vec4<i32>(2147483647i, u_input.a, 0i, -2147483647i), -436f, vec3<i32>(u_input.a, -35844i, -52711i)))), false)), true))), max(firstLeadingBit(~(vec3<i32>(u_input.a, -14028i, u_input.a) << (vec3<u32>(101070u, 4294967295u, 47260u) % vec3<u32>(32u)))), firstLeadingBit(~vec3<i32>(u_input.a, u_input.a, 2147483647i))));
    let var_2 = func_6(any(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false)), select(vec4<u32>(1u, 1u, 56132u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(select(true, true, false), true, true, true)) & vec4<u32>(~1u, _wgslsmith_div_u32(~12521u, 1u), _wgslsmith_div_u32(~12213u, ~0u), ~(~1u)), func_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, u_input.b.x, var_1.d.x, var_1.b.x), vec4<i32>(var_1.d.x, -var_1.b.x, -67688i, abs(-11826i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_5(-364f, Struct_4(true, Struct_1(-282f, vec4<i32>(u_input.a, -72411i, var_1.d.x, u_input.b.x), var_1.c, vec3<i32>(2147483647i, var_1.d.x, -8140i))), Struct_2(vec3<bool>(true, false, false), Struct_1(-265f, var_1.b, 1520f, vec3<i32>(var_1.b.x, -35207i, u_input.a)), Struct_1(-844f, var_1.b, -368f, var_1.b.wwx)), 2147483647i).c), 1643f)), func_1(vec4<i32>(-1i) * -var_1.b, 540f, vec3<i32>(1i, _wgslsmith_mult_i32(u_input.a, 1i), _wgslsmith_add_i32(-6197i, var_1.d.x)), Struct_4(true, Struct_1(var_1.c, vec4<i32>(-134i, 1i, var_1.d.x, var_1.b.x), var_1.a, vec3<i32>(1886i, u_input.b.x, var_1.d.x)))).c.b.xwy, Struct_4(false, func_5(_wgslsmith_f_op_f32(var_1.a + var_1.c), Struct_4(false, Struct_1(var_1.c, var_1.b, 836f, vec3<i32>(u_input.b.x, var_1.b.x, u_input.b.x))), Struct_2(vec3<bool>(false, true, true), Struct_1(2595f, var_1.b, 1320f, var_1.d), Struct_1(var_1.c, var_1.b, var_1.c, vec3<i32>(-32121i, var_1.b.x, var_1.b.x))), 39307i))).c, vec2<u32>(29324u, firstTrailingBit(~71527u))).b.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(468f, func_6(any(vec2<bool>(false, false)), firstLeadingBit(vec4<u32>(1284u, 30943u, 36152u, 1u)), Struct_1(-587f, var_1.b, -536f, var_1.b.yyz), vec2<u32>(1u, 1u)).c.a)));
    let var_3 = Struct_3(func_6(!(var_1.d.x > u_input.a), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13993u, 17698u), ~vec3<u32>(1955u, 1u, 1306u)), 1u, firstTrailingBit(4294967295u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(21638u, 4294967295u, 44936u), vec3<u32>(25433u, 31650u, 28532u)))), func_5(870f, Struct_4(all(vec2<bool>(true, true)), func_4(Struct_2(vec3<bool>(false, true, false), Struct_1(var_2, var_1.b, -1024f, vec3<i32>(0i, -70628i, 1i)), Struct_1(543f, vec4<i32>(-75144i, u_input.b.x, u_input.a, u_input.b.x), -243f, vec3<i32>(u_input.a, var_1.d.x, var_1.d.x))))), func_2(var_1.b.x == u_input.b.x, Struct_3(Struct_1(var_2, var_1.b, var_1.c, vec3<i32>(var_1.d.x, -2147483647i, -16112i)), Struct_1(504f, var_1.b, var_1.c, vec3<i32>(var_1.d.x, 0i, u_input.a)), Struct_1(var_2, var_1.b, var_2, vec3<i32>(-1i, u_input.b.x, var_1.d.x)))), 1908i), firstLeadingBit(vec2<u32>(~1u, 5758u))).c, Struct_1(-173f, var_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-861f - -394f), var_1.c))), min(vec3<i32>(47493i, ~2147483647i, u_input.b.x), vec3<i32>(i32(-1i) * -7626i, ~36375i, _wgslsmith_add_i32(u_input.a, u_input.a)))), Struct_1(1f, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_1.a)), func_1(vec4<i32>(_wgslsmith_add_i32(0i, 10915i), -37766i, 0i, 59862i), var_2, -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, 8100i), vec3<i32>(u_input.b.x, 1i, 0i)), Struct_4(all(vec4<bool>(false, true, true, true)), Struct_1(493f, vec4<i32>(13158i, -1i, u_input.a, -2147483647i), 1006f, var_1.d))).b.d));
    let var_4 = min(-countOneBits(firstLeadingBit(func_6(false, vec4<u32>(2665u, 20171u, 1u, 0u), var_3.a, vec2<u32>(4294967295u, 4294967295u)).c.d)), ~(~vec3<i32>(_wgslsmith_mult_i32(-1i, -36575i), i32(-1i) * -1i, u_input.b.x)));
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2))), _wgslsmith_f_op_f32(-363f * _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(round(var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2024f, 1u, max(_wgslsmith_clamp_u32(11861u, 1u, ~1u), abs(~(~6536u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, ~1u, ~37102u, firstTrailingBit(4294967295u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 30952u, 1u, 61068u)), vec4<u32>(1u, 1u, 1u, 1u))), select(~(~vec4<u32>(1u, 0u, 25797u, 4294967295u)), ~(~vec4<u32>(89441u, 82833u, 25552u, 0u)), vec4<bool>(true, true, func_1(var_3.a.b, -696f, vec3<i32>(0i, 36305i, 2147483647i), Struct_4(true, Struct_1(-890f, vec4<i32>(9796i, -2147483647i, 2147483647i, 0i), var_3.b.a, var_1.d))).a.x, true))), _wgslsmith_sub_u32(~0u & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(8700u, 1u, 105348u)), vec3<u32>(136587u, 7344u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_clamp_u32(33543u, 36504u, 4294967295u), ~15845u, 1u))));
}

