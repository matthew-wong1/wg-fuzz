struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)));
    let var_1 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(var_0.x - -336f)));
    let var_2 = Struct_1(vec4<u32>(24465u, _wgslsmith_mult_u32(~(~1u), 1u), 4294967295u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_0.x, var_1))))))), abs(u_input.c.x), ~0u, !(!all(vec2<bool>(false, true))));
    var var_3 = select(!(!vec3<bool>(all(vec3<bool>(false, var_2.e, true)), false, any(vec3<bool>(var_2.e, false, false)))), select(vec3<bool>(reverseBits(2147483647i) == (u_input.c.x << (2247u % 32u)), false, var_2.e), select(select(vec3<bool>(var_2.e, false, var_2.e), vec3<bool>(true, true, true), !vec3<bool>(var_2.e, var_2.e, var_2.e)), vec3<bool>(var_2.e, any(vec2<bool>(true, true)), var_2.e), !select(vec3<bool>(var_2.e, false, var_2.e), vec3<bool>(true, true, true), vec3<bool>(false, var_2.e, var_2.e))), !(!select(vec3<bool>(var_2.e, false, var_2.e), vec3<bool>(true, false, var_2.e), vec3<bool>(var_2.e, var_2.e, true)))), !var_2.e);
    let var_4 = Struct_3(vec3<i32>(-7608i, _wgslsmith_div_i32(-26782i, 2147483647i), 0i));
    return abs(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 19086u, 23879u, var_2.a.x), select(var_2.a, var_2.a, vec4<bool>(var_2.e, true, true, false))), select(vec4<u32>(var_2.a.x, 28708u, 0u, var_2.d), vec4<u32>(var_2.a.x, 48099u, var_2.a.x, var_2.d), true)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_3(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.yxw), u_input.c.xwx), 24105i));
    let var_1 = 8u;
    let var_2 = Struct_3(vec3<i32>(u_input.a.x, -var_0.a.x, 0i));
    var_0 = var_2;
    let var_3 = !(arg_0.x == arg_0.x);
    return Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~var_1 | ~39404u, firstLeadingBit(27679u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 587u, var_1) | vec3<u32>(0u, 11385u, var_1), ~vec3<u32>(var_1, 23798u, var_1)), firstLeadingBit(_wgslsmith_add_u32(10481u, var_1))), firstLeadingBit(firstTrailingBit(vec4<u32>(25942u, var_1, 4294967295u, 27854u)) & func_3(-1000f, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1044f, -689f)))), 1316f), countOneBits(var_0.a.x), var_1, var_3);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = arg_0.d;
    var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.zxz), _wgslsmith_f_op_vec3_f32(-arg_2.wzy), any(vec3<bool>(var_0.e, true, true))))), arg_2.xyx));
    let var_1 = arg_0.d;
    var_0 = arg_0.d;
    var var_2 = Struct_2(func_2(vec3<f32>(var_0.b.x, 167f, arg_0.a.b.x)), Struct_1(vec4<u32>(arg_0.d.d, var_0.d, 4294967295u, ~var_1.a.x), _wgslsmith_f_op_vec2_f32(-var_1.b), 1i, 0u, true), var_1, arg_0.c, var_0.d & 25148u);
    return arg_2.zwx;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = Struct_3(firstLeadingBit(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.a)), var_0.x, -2147483647i)));
    var_0 = min(var_1.a.yz, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.a.zz, _wgslsmith_clamp_vec2_i32(~var_1.a.xz, _wgslsmith_add_vec2_i32(var_1.a.zx, var_1.a.zz), max(vec2<i32>(var_1.a.x, 31947i), vec2<i32>(var_0.x, 26185i)))), abs(vec2<i32>(u_input.c.x, -1i) << (func_3(-385f, -838f).yy % vec2<u32>(32u))), var_1.a.zx));
    var_1 = Struct_3(-(~_wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_1.a.x, -3809i, u_input.b.x), vec3<i32>(var_0.x, var_1.a.x, var_1.a.x)), ~u_input.c.yxy, reverseBits(vec3<i32>(var_0.x, u_input.c.x, u_input.b.x)))));
    let var_2 = func_2(arg_0);
    return Struct_3(-select(select(~vec3<i32>(30059i, var_2.c, var_2.c), ~u_input.c.zxx, vec3<bool>(var_2.e, var_2.e, var_2.e)), vec3<i32>(_wgslsmith_add_i32(-3560i, 8534i), firstTrailingBit(-65234i), 1i), true));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(386f, 512f, -284f)))), func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(291f, 1605f, -843f), vec3<f32>(-638f, -2090f, 579f)))), Struct_1(~vec4<u32>(88752u, 24411u, 26348u, 16377u), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1256f, 546f))), -arg_1.x, ~14199u, true), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1731f, 704f, -1000f) * vec3<f32>(1312f, 492f, -1000f))), 1u << (func_2(vec3<f32>(-708f, -2521f, 398f)).d % 32u)), _wgslsmith_dot_vec3_i32(arg_1, reverseBits(vec3<i32>(u_input.c.x, u_input.b.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-267f, -657f, -1716f, 1000f)) - vec4<f32>(656f, _wgslsmith_f_op_f32(trunc(1616f)), -1920f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 33652u);
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-812f, 354f, -1350f) * vec3<f32>(1245f, -240f, 1000f)))))), Struct_1(~vec4<u32>(~28729u, 0u, _wgslsmith_sub_u32(106105u, 39700u), ~28262u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-544f, 174f))) + vec2<f32>(849f, -750f))), arg_2.x, firstLeadingBit(~(57561u >> (0u % 32u))), true), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 881f, 1228f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 1423f, 239f))), vec3<f32>(_wgslsmith_div_f32(-570f, -879f), 470f, _wgslsmith_f_op_f32(f32(-1f) * -868f)), false))), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-824f, -429f, -327f)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(vec4<u32>(1u, 73444u, 1u, 4294967295u), vec2<f32>(674f, -735f), arg_1.x, 4294967295u, true), Struct_1(vec4<u32>(1u, 40576u, 4294967295u, 1u), vec2<f32>(-520f, 188f), arg_3.x, 0u, arg_0.x), Struct_1(vec4<u32>(43913u, 1u, 1u, 4433u), vec2<f32>(2190f, -657f), -33020i, 30912u, true), Struct_1(vec4<u32>(46745u, 1u, 1u, 1u), vec2<f32>(387f, -1271f), u_input.b.x, 8548u, arg_0.x), 23229u), 2147483647i, vec4<f32>(-1057f, -897f, 352f, 2003f))), select(vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x)), arg_0.x)))), _wgslsmith_add_u32(~1u, 1u));
    var var_2 = var_1.d.b;
    let var_3 = func_3(-304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_1.a.b.x))))).x;
    let var_4 = _wgslsmith_add_vec3_u32(abs(var_1.b.a.xxz), var_1.c.a.yzw);
    return func_5(vec3<f32>(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.b.x)), _wgslsmith_f_op_f32(max(var_2.x, -213f))), ~var_3);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = func_2(vec3<f32>(-2068f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-126f + 1213f), _wgslsmith_f_op_f32(556f + 254f)) - _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1269f)))), -1461f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 224f, var_0.b.x, 779f)), vec4<f32>(-545f, var_0.b.x, 1193f, -1633f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1896f, _wgslsmith_f_op_f32(-1505f + _wgslsmith_f_op_f32(1f - var_1.x)), _wgslsmith_f_op_f32(abs(1073f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, -864f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, _wgslsmith_div_f32(var_0.b.x, 1536f), _wgslsmith_f_op_f32(337f - 504f), _wgslsmith_f_op_f32(round(var_0.b.x))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-304f, 200f, 852f, var_0.b.x) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, -739f, var_0.b.x, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, var_0.b.x, var_1.x, 839f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_0.b.x, _wgslsmith_f_op_f32(-var_1.x), var_0.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_1.x, var_0.b.x, var_1.x), vec4<f32>(var_0.b.x, var_1.x, -699f, var_0.b.x), true)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1350f, var_0.b.x, var_1.x, var_1.x))), any(vec2<bool>(true, false))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1139f) + _wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -985f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(473f, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)), -663f) + vec4<f32>(-540f, _wgslsmith_f_op_f32(trunc(var_1.x)), var_0.b.x, _wgslsmith_f_op_f32(834f - var_1.x))) - vec4<f32>(_wgslsmith_div_f32(-1000f, var_0.b.x), 1f, _wgslsmith_f_op_f32(abs(275f)), _wgslsmith_f_op_f32(f32(-1f) * -255f))), select(!vec4<bool>(!var_0.e, true, true, false), select(vec4<bool>(var_0.e, select(var_0.e, false, true), all(vec3<bool>(var_0.e, true, var_0.e)), !var_0.e), !select(vec4<bool>(var_0.e, var_0.e, var_0.e, var_0.e), vec4<bool>(var_0.e, false, true, var_0.e), true), !select(vec4<bool>(var_0.e, var_0.e, false, var_0.e), vec4<bool>(true, true, var_0.e, var_0.e), true)), true || ((true | var_0.e) && !var_0.e))));
    var var_3 = -18450i;
    return Struct_3(vec3<i32>(arg_0.a.x ^ -(var_0.c >> (5871u % 32u)), 0i, arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(vec2<bool>(true, select(true, true, true)), abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.yxy, vec3<i32>(-2147483647i, 2147483647i, u_input.c.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 2922i, 2147483647i), u_input.c.xyx))), abs(u_input.b.wxw), -vec3<i32>(~0i, _wgslsmith_sub_i32(-1i, u_input.c.x), -1i)));
    let var_1 = vec3<u32>(32236u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(70008u, 27531u, 5622u, 2632u), ~vec4<u32>(43038u, 1u, 17371u, 35118u)) & _wgslsmith_add_u32(25916u, _wgslsmith_dot_vec4_u32(func_2(vec3<f32>(-1000f, -1268f, -1000f)).a, ~vec4<u32>(10889u, 4294967295u, 0u, 1u))), ~1u);
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1459f, -1000f, -447f) * vec3<f32>(1387f, -2106f, 162f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1794f, 1f, _wgslsmith_f_op_f32(step(1095f, -981f)))))).c;
    let var_3 = false;
    var var_4 = Struct_1(vec4<u32>(_wgslsmith_add_u32(var_1.x, var_1.x), countOneBits(31244u), var_1.x, var_1.x) | vec4<u32>(1u << (select(var_1.x, 0u, var_3) % 32u), _wgslsmith_sub_u32(var_1.x, _wgslsmith_mod_u32(4182u, var_1.x)), var_1.x >> (1u % 32u), ~(~74905u)), vec2<f32>(681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1509f * 237f))))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, u_input.b.x), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a)), -7159i, u_input.b.x, ~_wgslsmith_clamp_i32(-1i, var_2, var_0.a.x)), vec4<i32>(u_input.c.x, 1i, var_2, max(var_2 ^ u_input.a.x, -u_input.b.x))), _wgslsmith_div_u32(4294967295u, ~reverseBits(168u) >> (var_1.x % 32u)), !((!var_3 || true) || var_3));
    let var_5 = ~(~(~var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.a.x), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.b.x))))), _wgslsmith_f_op_f32(abs(259f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) - _wgslsmith_f_op_f32(1056f * var_4.b.x)) * var_4.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.b.x))), var_4.b.x, _wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-3290i, var_2, var_0.a.x, -22182i), vec4<i32>(var_2, var_4.c, var_2, _wgslsmith_dot_vec3_i32(u_input.b.xyz, var_0.a)), abs(vec4<i32>(-11595i, var_2, var_4.c, -1i))) >> (countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(36025u, 498u, var_5, var_5), vec4<u32>(var_5, var_5, 33350u, 4294967295u))) % vec4<u32>(32u)));
}

