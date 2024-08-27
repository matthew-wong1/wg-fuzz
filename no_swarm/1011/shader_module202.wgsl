struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 65519i, 2147483647i, i32(-2147483648));

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(1111f, Struct_1(vec3<f32>(-378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f + -999f)), 164f), _wgslsmith_add_vec3_i32(global0.wyy, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, -1i), countOneBits(vec3<i32>(2147483647i, 1i, -2147483647i))))), _wgslsmith_add_u32(~_wgslsmith_mult_u32(firstTrailingBit(200u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 509u, u_input.b.x))), u_input.b.x), vec4<u32>(~28051u, _wgslsmith_div_u32(25754u, 1u), u_input.b.x, min(41113u, 14498u)) << (~_wgslsmith_div_vec4_u32(max(vec4<u32>(0u, 22950u, 14006u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 59507u, u_input.b.x)), vec4<u32>(23462u, 15463u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)));
    var var_1 = 19410u;
    var var_2 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(56427u, u_input.b.x, u_input.b.x >> (43552u % 32u)) & ~abs(vec3<u32>(var_0.d.x, var_0.c, 4294967295u))), var_0.d.wxx);
    let var_3 = vec3<bool>(true, true, true);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -485f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.b.a.x)))));
    return var_0.d.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    let var_0 = max(u_input.c, 1i);
    global1 = -(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, arg_0.c.b.b.x), u_input.d.x), -_wgslsmith_mult_i32(arg_1.b.b.x, arg_0.c.b.b.x), u_input.a) ^ vec3<i32>(global1.x, -17106i, 25992i));
    var var_1 = Struct_2(arg_1.a, arg_1.b, func_3(), ~(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1.d, vec4<u32>(1719u, 17538u, u_input.b.x, 0u)), ~arg_0.c.d, vec4<u32>(u_input.b.x, u_input.b.x, 91267u, 16040u)) | _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.d, vec4<u32>(4294967295u, arg_0.c.d.x, 1u, 22494u)), ~arg_1.d)));
    var var_2 = arg_0.b;
    var var_3 = firstTrailingBit(vec4<u32>(12738u, var_1.c, arg_0.c.d.x, abs(arg_1.c)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_1.a)), !vec4<bool>(var_2.x, u_input.b.x <= _wgslsmith_mod_u32(var_1.c, 66153u), select(select(var_2.x, var_2.x, var_2.x), true, true), true), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1099f))))), arg_1.b, var_3.x, arg_1.d), -331f <= arg_1.b.a.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.e + arg_0.e)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = func_2(arg_2, Struct_2(arg_0.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(617f)), -544f, _wgslsmith_f_op_f32(arg_2.c.b.a.x - arg_3.b.a.x)), vec3<i32>(0i, select(arg_1.b.x, -2147483647i, arg_2.b.x), ~2147483647i)), 38764u, _wgslsmith_mult_vec4_u32(~vec4<u32>(42289u, u_input.b.x, 0u, 4294967295u), arg_0.d))).b;
    global1 = global0.zyx << (firstTrailingBit(func_2(func_2(arg_2, arg_0), arg_3).c.d.yzw & firstLeadingBit(arg_0.d.zwx)) % vec3<u32>(32u));
    let var_1 = 1u;
    global0 = vec4<i32>(arg_2.c.b.b.x, 1i, -arg_3.b.b.x, global0.x >> (firstLeadingBit(u_input.b.x) % 32u));
    let var_2 = -396f;
    return _wgslsmith_f_op_f32(round(arg_1.a.x));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1988f - -1075f)))), _wgslsmith_f_op_f32(func_4(Struct_2(-2626f, Struct_1(vec3<f32>(2285f, -1699f, 1000f), u_input.d.ywz), ~1u, firstLeadingBit(vec4<u32>(126184u, u_input.b.x, u_input.b.x, 1u))), Struct_1(vec3<f32>(-434f, -1869f, 1594f), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -1i, arg_0.x), arg_0)), func_2(Struct_3(-1344f, vec4<bool>(false, true, false, false), Struct_2(-1139f, Struct_1(vec3<f32>(685f, -1649f, 790f), global0.xxy), u_input.b.x, vec4<u32>(28297u, u_input.b.x, 74049u, 4294967295u)), false, vec4<f32>(912f, -2100f, -960f, -907f)), Struct_2(623f, Struct_1(vec3<f32>(963f, 489f, 977f), vec3<i32>(-16481i, -27160i, u_input.c)), u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, 3983u, 22124u))), Struct_2(-1588f, Struct_1(vec3<f32>(-270f, -607f, 210f), arg_0), countOneBits(4294967295u), vec4<u32>(u_input.b.x, 5113u, u_input.b.x, u_input.b.x) ^ vec4<u32>(8609u, 17939u, u_input.b.x, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-263f, -645f))))), _wgslsmith_add_vec3_i32(select(firstLeadingBit(global0.wzz), ~global0.xxz, -8568i == u_input.a) << (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(10935u, u_input.b.x, u_input.b.x)), vec3<u32>(40826u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), min(vec3<i32>(-1i, min(global0.x, -32510i), ~global1.x), arg_0)));
    var_0 = func_2(Struct_3(var_0.a.x, !select(func_2(Struct_3(var_0.a.x, vec4<bool>(false, true, true, true), Struct_2(698f, Struct_1(var_0.a, var_0.b), u_input.b.x, vec4<u32>(u_input.b.x, 4294967295u, 4283u, 10361u)), false, vec4<f32>(var_0.a.x, var_0.a.x, 1005f, var_0.a.x)), Struct_2(-1107f, Struct_1(var_0.a, var_0.b), u_input.b.x, vec4<u32>(19888u, 4294967295u, 42519u, u_input.b.x))).b, vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false)), func_2(func_2(func_2(Struct_3(var_0.a.x, vec4<bool>(false, false, false, true), Struct_2(var_0.a.x, Struct_1(var_0.a, u_input.d.yxx), 0u, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), true, vec4<f32>(-659f, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_2(585f, Struct_1(vec3<f32>(687f, var_0.a.x, -900f), vec3<i32>(u_input.a, global1.x, u_input.c)), 1u, vec4<u32>(0u, u_input.b.x, u_input.b.x, 26113u))), func_2(Struct_3(var_0.a.x, vec4<bool>(true, true, false, false), Struct_2(var_0.a.x, Struct_1(var_0.a, u_input.d.xzx), u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), true, vec4<f32>(1000f, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -626f), vec3<i32>(var_0.b.x, arg_0.x, -43395i)), u_input.b.x, vec4<u32>(48364u, 0u, u_input.b.x, 95866u))).c), Struct_2(var_0.a.x, Struct_1(var_0.a, var_0.b), ~u_input.b.x, select(vec4<u32>(47841u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), false))).c, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 431f, -2799f, 399f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1194f, var_0.a.x, var_0.a.x)))))), func_2(func_2(func_2(Struct_3(-881f, vec4<bool>(true, true, true, true), Struct_2(-714f, Struct_1(var_0.a, u_input.d.zwz), 51594u, vec4<u32>(7770u, u_input.b.x, u_input.b.x, u_input.b.x)), false, vec4<f32>(var_0.a.x, var_0.a.x, -373f, -1096f)), func_2(Struct_3(var_0.a.x, vec4<bool>(true, true, true, false), Struct_2(401f, Struct_1(var_0.a, global0.ywz), u_input.b.x, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), false, vec4<f32>(var_0.a.x, -2574f, var_0.a.x, 709f)), Struct_2(var_0.a.x, Struct_1(var_0.a, vec3<i32>(-16222i, global1.x, -67684i)), u_input.b.x, vec4<u32>(65314u, u_input.b.x, u_input.b.x, u_input.b.x))).c), func_2(func_2(Struct_3(var_0.a.x, vec4<bool>(true, true, false, false), Struct_2(var_0.a.x, Struct_1(var_0.a, vec3<i32>(68264i, arg_0.x, global1.x)), u_input.b.x, vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), true, vec4<f32>(var_0.a.x, -1190f, -544f, -107f)), Struct_2(var_0.a.x, Struct_1(var_0.a, vec3<i32>(global0.x, -48318i, -1i)), u_input.b.x, vec4<u32>(u_input.b.x, 78922u, u_input.b.x, u_input.b.x))), Struct_2(var_0.a.x, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), u_input.d.wzy), 90075u, vec4<u32>(u_input.b.x, 15952u, u_input.b.x, u_input.b.x))).c), Struct_2(994f, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_0.a.x, 1142f))), arg_0), _wgslsmith_div_u32(0u, u_input.b.x) << (u_input.b.x % 32u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, 31962u, u_input.b.x) | vec4<u32>(32462u, u_input.b.x, u_input.b.x, 4294967295u), func_2(Struct_3(-495f, vec4<bool>(true, true, false, true), Struct_2(var_0.a.x, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b), 0u, vec4<u32>(17938u, 34526u, 4294967295u, 7722u)), true, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_2(-715f, Struct_1(vec3<f32>(-379f, var_0.a.x, -1064f), vec3<i32>(u_input.a, u_input.a, var_0.b.x)), u_input.b.x, vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u))).c.d))).c).c.b;
    var_0 = func_2(func_2(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.a.x, 353f)))), vec4<bool>(21318i > global1.x, true, func_2(Struct_3(2465f, vec4<bool>(false, false, true, false), Struct_2(-308f, Struct_1(vec3<f32>(var_0.a.x, -1238f, -1176f), vec3<i32>(1i, global1.x, global0.x)), 4294967295u, vec4<u32>(u_input.b.x, u_input.b.x, 17685u, 41324u)), false, vec4<f32>(var_0.a.x, 216f, var_0.a.x, 613f)), Struct_2(var_0.a.x, Struct_1(var_0.a, vec3<i32>(arg_0.x, var_0.b.x, u_input.c)), u_input.b.x, vec4<u32>(1u, 1u, u_input.b.x, 18353u))).d, true), Struct_2(var_0.a.x, func_2(Struct_3(var_0.a.x, vec4<bool>(true, true, false, false), Struct_2(285f, Struct_1(vec3<f32>(-1516f, -1255f, var_0.a.x), vec3<i32>(global1.x, u_input.d.x, -1i)), 28466u, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 93715u)), false, vec4<f32>(-173f, -432f, var_0.a.x, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(var_0.a, var_0.b), 92781u, vec4<u32>(u_input.b.x, 25793u, 0u, u_input.b.x))).c.b, ~u_input.b.x, vec4<u32>(4294967295u, 14842u, u_input.b.x, 37430u) & vec4<u32>(96972u, u_input.b.x, 1u, u_input.b.x)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1392f, var_0.a.x, -963f, -270f))))), func_2(Struct_3(var_0.a.x, vec4<bool>(false, true, false, true), func_2(Struct_3(var_0.a.x, vec4<bool>(false, true, false, true), Struct_2(var_0.a.x, Struct_1(var_0.a, u_input.d.yzw), 9713u, vec4<u32>(18443u, u_input.b.x, 4294967295u, 24844u)), false, vec4<f32>(var_0.a.x, var_0.a.x, -579f, -1075f)), Struct_2(-1478f, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -1017f), arg_0), 4294967295u, vec4<u32>(u_input.b.x, 87844u, 1u, 25223u))).c, any(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(299f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, -791f, var_0.a.x, -1143f)))), func_2(func_2(Struct_3(177f, vec4<bool>(true, true, false, true), Struct_2(var_0.a.x, Struct_1(var_0.a, arg_0), 13611u, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), true, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -317f), var_0.b), u_input.b.x, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 12660u))), func_2(Struct_3(339f, vec4<bool>(true, true, true, false), Struct_2(var_0.a.x, Struct_1(var_0.a, global0.xwz), u_input.b.x, vec4<u32>(4294967295u, u_input.b.x, 8699u, u_input.b.x)), true, vec4<f32>(var_0.a.x, -426f, var_0.a.x, 434f)), Struct_2(545f, Struct_1(var_0.a, vec3<i32>(global1.x, arg_0.x, -20216i)), u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u))).c).c).c), Struct_2(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x))), func_2(Struct_3(var_0.a.x, vec4<bool>(false, true, true, true), func_2(Struct_3(1522f, vec4<bool>(false, true, true, true), Struct_2(344f, Struct_1(vec3<f32>(-508f, -844f, -736f), vec3<i32>(arg_0.x, u_input.a, u_input.a)), 89447u, vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x)), false, vec4<f32>(840f, -1016f, var_0.a.x, -237f)), Struct_2(var_0.a.x, Struct_1(var_0.a, vec3<i32>(global1.x, 2147483647i, var_0.b.x)), 4294967295u, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 59145u))).c, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1000f) + vec4<f32>(1471f, var_0.a.x, var_0.a.x, var_0.a.x))), Struct_2(_wgslsmith_f_op_f32(1865f - -1991f), func_2(Struct_3(var_0.a.x, vec4<bool>(true, true, true, true), Struct_2(799f, Struct_1(var_0.a, arg_0), 13097u, vec4<u32>(0u, u_input.b.x, 0u, 22951u)), true, vec4<f32>(var_0.a.x, 570f, var_0.a.x, 1544f)), Struct_2(234f, Struct_1(vec3<f32>(1398f, 328f, var_0.a.x), vec3<i32>(-32782i, -43714i, arg_0.x)), u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 45654u))).c.b, 4294967295u, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 13980u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 24835u)))).c.b, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), firstLeadingBit(vec3<u32>(123380u, u_input.b.x, 0u))), ~max(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 3207u, 30403u), true), vec4<u32>(54630u, u_input.b.x, 1857u, 4294967295u)))).c.b;
    let var_1 = ~vec2<u32>(~(~1u), 27655u);
    let var_2 = -select(abs(min(vec3<i32>(2147483647i, -22799i, var_0.b.x), global0.yww)), vec3<i32>(var_0.b.x, 1i, -(~20217i)), vec3<bool>(all(vec3<bool>(true, false, true)) & true, any(func_2(Struct_3(1230f, vec4<bool>(false, true, false, false), Struct_2(1638f, Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, -14983i)), var_1.x, vec4<u32>(50633u, u_input.b.x, var_1.x, 12697u)), false, vec4<f32>(-834f, var_0.a.x, var_0.a.x, 1283f)), Struct_2(var_0.a.x, Struct_1(var_0.a, var_0.b), 11152u, vec4<u32>(77882u, u_input.b.x, 48931u, 4294967295u))).b.zyz), false));
    return func_2(Struct_3(-536f, !vec4<bool>(all(vec2<bool>(false, false)), true, true, true), func_2(Struct_3(-1053f, select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), func_2(Struct_3(-2288f, vec4<bool>(true, false, true, true), Struct_2(-1425f, Struct_1(var_0.a, vec3<i32>(u_input.c, var_0.b.x, arg_0.x)), u_input.b.x, vec4<u32>(u_input.b.x, var_1.x, var_1.x, 4294967295u)), true, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(var_0.a, var_2), 1u, vec4<u32>(52793u, var_1.x, 54068u, u_input.b.x))).c, false, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1000f)), func_2(func_2(Struct_3(1000f, vec4<bool>(false, true, false, false), Struct_2(-829f, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), global0.xyz), 4294967295u, vec4<u32>(u_input.b.x, 1u, 0u, 20322u)), false, vec4<f32>(306f, 347f, var_0.a.x, -519f)), Struct_2(var_0.a.x, Struct_1(var_0.a, var_2), var_1.x, vec4<u32>(1u, 9618u, 0u, u_input.b.x))), Struct_2(666f, Struct_1(vec3<f32>(503f, -1000f, -1503f), vec3<i32>(global1.x, global0.x, global1.x)), 4294967295u, vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.b.x))).c).c, func_2(Struct_3(-2332f, vec4<bool>(false, false, false, true), func_2(Struct_3(-1596f, vec4<bool>(true, true, false, false), Struct_2(-833f, Struct_1(vec3<f32>(-1456f, var_0.a.x, 1244f), arg_0), 0u, vec4<u32>(52319u, 50787u, u_input.b.x, 37203u)), false, vec4<f32>(816f, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(var_0.a, global0.xyw), u_input.b.x, vec4<u32>(var_1.x, 0u, var_1.x, 1u))).c, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, var_0.a.x, 163f, var_0.a.x) + vec4<f32>(var_0.a.x, -1944f, -422f, -625f))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -133f), func_2(Struct_3(var_0.a.x, vec4<bool>(true, false, false, false), Struct_2(809f, Struct_1(vec3<f32>(437f, 1246f, -415f), vec3<i32>(global0.x, 0i, global0.x)), 0u, vec4<u32>(var_1.x, u_input.b.x, 1u, 27119u)), true, vec4<f32>(172f, 572f, 1000f, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(vec3<f32>(2052f, 1138f, var_0.a.x), arg_0), 4294967295u, vec4<u32>(43263u, u_input.b.x, u_input.b.x, var_1.x))).c.b, 25378u, ~vec4<u32>(u_input.b.x, var_1.x, 0u, var_1.x))).b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 630f, var_0.a.x) * vec4<f32>(1653f, var_0.a.x, 686f, -1072f)))), func_2(func_2(func_2(func_2(Struct_3(-718f, vec4<bool>(false, false, true, false), Struct_2(942f, Struct_1(var_0.a, vec3<i32>(-1500i, 30887i, -1i)), u_input.b.x, vec4<u32>(105285u, u_input.b.x, var_1.x, 4294967295u)), false, vec4<f32>(var_0.a.x, 607f, var_0.a.x, var_0.a.x)), Struct_2(1039f, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(0i, global1.x, arg_0.x)), 18460u, vec4<u32>(var_1.x, u_input.b.x, u_input.b.x, var_1.x))), func_2(Struct_3(var_0.a.x, vec4<bool>(false, true, false, true), Struct_2(var_0.a.x, Struct_1(var_0.a, vec3<i32>(global0.x, arg_0.x, -46361i)), u_input.b.x, vec4<u32>(4294967295u, var_1.x, u_input.b.x, var_1.x)), false, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(var_0.a, vec3<i32>(global1.x, 4695i, arg_0.x)), u_input.b.x, vec4<u32>(u_input.b.x, var_1.x, 0u, var_1.x))).c), func_2(func_2(Struct_3(-422f, vec4<bool>(true, true, true, true), Struct_2(var_0.a.x, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(global0.x, -70837i, var_0.b.x)), 113517u, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u)), true, vec4<f32>(var_0.a.x, -544f, -762f, var_0.a.x)), Struct_2(var_0.a.x, Struct_1(var_0.a, u_input.d.xzy), 0u, vec4<u32>(u_input.b.x, 53971u, u_input.b.x, var_1.x))), func_2(Struct_3(398f, vec4<bool>(true, true, false, true), Struct_2(var_0.a.x, Struct_1(vec3<f32>(-608f, -1059f, var_0.a.x), vec3<i32>(u_input.a, -41552i, var_2.x)), u_input.b.x, vec4<u32>(90567u, 28422u, u_input.b.x, var_1.x)), false, vec4<f32>(var_0.a.x, var_0.a.x, 1007f, var_0.a.x)), Struct_2(-2203f, Struct_1(var_0.a, vec3<i32>(59i, arg_0.x, var_0.b.x)), 0u, vec4<u32>(u_input.b.x, 4294967295u, 0u, var_1.x))).c).c), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(1148f + -258f))), func_2(func_2(Struct_3(var_0.a.x, vec4<bool>(true, false, true, false), Struct_2(1493f, Struct_1(var_0.a, vec3<i32>(global1.x, u_input.a, -1i)), 78091u, vec4<u32>(1u, 989u, u_input.b.x, var_1.x)), false, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 486f)), Struct_2(1712f, Struct_1(var_0.a, vec3<i32>(-1i, u_input.c, -2147483647i)), 1u, vec4<u32>(33191u, 1u, 18693u, 31803u))), Struct_2(138f, Struct_1(var_0.a, vec3<i32>(14407i, -19165i, -6254i)), var_1.x, vec4<u32>(var_1.x, 20512u, 8055u, u_input.b.x))).c.b, var_1.x, ~firstTrailingBit(vec4<u32>(0u, 39476u, u_input.b.x, 0u)))).c).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.zyw);
    var var_1 = 2110f;
    var var_2 = -u_input.d;
    global1 = ~u_input.d.wxz;
    let var_3 = Struct_2(1577f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(func_4(func_2(Struct_3(var_0.a.x, vec4<bool>(true, true, false, false), Struct_2(var_0.a.x, Struct_1(var_0.a, var_0.b), u_input.b.x, vec4<u32>(4294967295u, 4294967295u, 1u, 20937u)), true, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -105f)), Struct_2(-466f, Struct_1(var_0.a, vec3<i32>(-1i, var_0.b.x, u_input.a)), 1u, vec4<u32>(u_input.b.x, 0u, 5975u, u_input.b.x))).c, Struct_1(vec3<f32>(var_0.a.x, -1000f, 1555f), var_0.b), func_2(Struct_3(1000f, vec4<bool>(true, false, false, false), Struct_2(-1411f, var_0, 1u, vec4<u32>(u_input.b.x, u_input.b.x, 24241u, 11311u)), false, vec4<f32>(1985f, var_0.a.x, -516f, var_0.a.x)), Struct_2(-701f, Struct_1(var_0.a, u_input.d.yyw), 1u, vec4<u32>(u_input.b.x, u_input.b.x, 67969u, 4294967295u))), func_2(Struct_3(-406f, vec4<bool>(false, false, true, true), Struct_2(var_0.a.x, Struct_1(var_0.a, var_0.b), 4294967295u, vec4<u32>(u_input.b.x, 17018u, u_input.b.x, 39536u)), false, vec4<f32>(var_0.a.x, 1761f, var_0.a.x, -315f)), Struct_2(-198f, var_0, u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, 77822u, 4294967295u))).c))), vec3<i32>(~1i, var_0.b.x, global0.x)), u_input.b.x, vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x ^ u_input.b.x, u_input.b.x), abs(abs(31286u >> (u_input.b.x % 32u))), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(39606u, u_input.b.x), abs(61634u) >> (~u_input.b.x % 32u), 4294967295u)));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.b.a.x - func_1(abs(vec3<i32>(global1.x, global0.x, var_2.x))).a.x)));
    global1 = vec3<i32>(abs(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_2.x, 5265i, -2770i, 1i)), -u_input.d)), -var_3.b.b.x >> (reverseBits(min(func_2(Struct_3(918f, vec4<bool>(true, false, false, true), var_3, false, vec4<f32>(var_0.a.x, -938f, var_0.a.x, -732f)), Struct_2(-714f, var_3.b, 4294967295u, vec4<u32>(0u, 4716u, u_input.b.x, var_3.d.x))).c.c, _wgslsmith_dot_vec4_u32(vec4<u32>(25795u, 0u, var_3.d.x, u_input.b.x), var_3.d))) % 32u), -2115i);
    var var_5 = vec3<i32>(~countOneBits(_wgslsmith_clamp_i32(global1.x, 23261i, global0.x)) & select(global1.x, global1.x, any(vec4<bool>(false, true, true, false))), u_input.a, abs(u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(trunc(-890f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))), ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4))))));
}

