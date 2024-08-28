struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32) -> vec3<bool> {
    var var_0 = ~arg_1.c.b;
    let var_1 = u_input.d.x;
    var var_2 = Struct_1(vec3<bool>(!arg_1.c.c.x, !(!(!arg_0.x)), !any(select(arg_1.c.a, vec3<bool>(arg_0.x, true, arg_1.c.a.x), arg_0))), ~1u, select(arg_1.c.c, !vec3<bool>(true, false, arg_0.x), arg_0));
    var var_3 = arg_1.c;
    var var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(14189i, arg_1.b, arg_1.b, u_input.b))), vec4<i32>(_wgslsmith_mod_i32(-1091i >> (1u % 32u), ~u_input.a), arg_1.b, arg_1.b, 1i)), vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -10998i, arg_1.b), vec3<i32>(u_input.b, u_input.a, 19879i) >> (vec3<u32>(var_2.b, var_2.b, var_3.b) % vec3<u32>(32u)))), ~(i32(-1i) * -arg_1.b), ~(-42877i), countOneBits(u_input.b)), select(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_1.b, arg_1.b), vec4<i32>(arg_1.b, arg_1.b, -2147483647i, u_input.b)), countOneBits(vec4<i32>(arg_1.b, arg_1.b, 58514i, -2147483647i)), ~vec4<i32>(u_input.b, 0i, arg_1.b, u_input.b)), abs(max(firstLeadingBit(vec4<i32>(arg_1.b, arg_1.b, u_input.a, arg_1.b)), ~vec4<i32>(-19547i, 4251i, -9286i, 38058i))), any(vec4<bool>(arg_0.x, -1000f != arg_1.a.x, true, false))));
    return arg_1.c.c;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_u32(u_input.d, u_input.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_3.a.x), -667f, 1447f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_3.a.x)), -1281f, 1068f, _wgslsmith_div_f32(arg_3.a.x, -2051f))))));
    let var_2 = Struct_1(arg_3.c.c, var_0.x, !func_3(arg_3.c.c, Struct_4(var_1.zzw, arg_2.x, arg_3.c), 412f));
    let var_3 = min(vec3<u32>(_wgslsmith_mod_u32(var_2.b >> (~32272u % 32u), ~56830u), _wgslsmith_mod_u32(var_2.b, arg_3.c.b), select(var_2.b, var_0.x, var_2.a.x)), _wgslsmith_mult_vec3_u32(~(~abs(vec3<u32>(var_2.b, 29235u, var_2.b))), reverseBits(~vec3<u32>(8007u, var_0.x, arg_3.c.b)) ^ vec3<u32>(4294967295u, arg_3.c.b, 1u)));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(sign(var_1.x)))));
    return Struct_2(~vec4<i32>(u_input.b, -arg_2.x, min(u_input.b, arg_3.b), arg_3.b) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-26661i, -u_input.b, arg_3.b, ~arg_2.x), -_wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(-2708i, arg_0, arg_0, -2147483647i)), abs(~vec4<i32>(arg_0, arg_3.b, -46784i, arg_3.b))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_4(arg_1, i32(-1i) * -firstLeadingBit(u_input.a), Struct_1(select(select(select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, arg_3)), func_3(vec3<bool>(false, true, true), Struct_4(arg_1, 2147483647i, Struct_1(vec3<bool>(true, arg_3, true), 19980u, vec3<bool>(arg_3, arg_3, arg_3))), arg_1.x), vec3<bool>(arg_3, arg_3, arg_3)), vec3<bool>(true, true, arg_3), arg_3), 1u, !(!select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(true, true, true), true))));
    var var_1 = 1u;
    var_1 = 50598u;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1362f - _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1804f, 885f))))));
    var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(var_0.c.b, 4280u, 31610u)), firstLeadingBit(~vec3<u32>(40606u, var_0.c.b, u_input.d.x))), 79843u);
    return arg_2.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(arg_0);
    let var_1 = (_wgslsmith_div_vec4_i32(~reverseBits(var_0.a), -arg_3 & _wgslsmith_clamp_vec4_i32(arg_3, vec4<i32>(1i, 2147483647i, 47155i, -1i), arg_0)) | ~var_0.a) | (vec4<i32>(arg_2, _wgslsmith_mod_i32(var_0.a.x, -3553i) ^ -1601i, ~4764i, u_input.b) << (select(vec4<u32>(u_input.c, u_input.d.x, max(4294967295u, 0u), _wgslsmith_mult_u32(u_input.d.x, 0u)), (vec4<u32>(40249u, u_input.c, 53446u, 0u) >> (vec4<u32>(u_input.c, 0u, u_input.d.x, 0u) % vec4<u32>(32u))) << (~vec4<u32>(u_input.c, 0u, u_input.d.x, u_input.c) % vec4<u32>(32u)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)) % vec4<u32>(32u)));
    var_0 = func_2(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(-1i, -24400i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, 1f)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-38077i, _wgslsmith_add_i32(arg_1, 1i), 8330i), _wgslsmith_clamp_vec3_i32(var_1.zxx ^ arg_0.yyz, var_0.a.xzy & var_1.yxz, vec3<i32>(var_0.a.x, -1i, arg_1))), countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, var_1.x), ~vec2<i32>(u_input.a, -20514i))), var_0.a.x, abs(func_2(_wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-379f, 1000f), vec2<f32>(919f, -1000f))), ~vec4<i32>(35574i, var_1.x, arg_2, var_0.a.x), Struct_4(vec3<f32>(-1124f, -1475f, 1394f), -21893i, Struct_1(vec3<bool>(false, true, false), u_input.c, vec3<bool>(false, false, true)))).a.x)), Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-951f, -1208f, 376f)))))), _wgslsmith_add_i32(countOneBits(13881i), -(~33904i)), Struct_1(vec3<bool>(true, true, true), ~u_input.c | 4294967295u, vec3<bool>(true, any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))))));
    var_0 = Struct_2(var_1);
    var var_2 = Struct_1(func_3(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(972f, 105f, -1919f)), -(~arg_0.x), Struct_1(vec3<bool>(true, true, true), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(10582u, 46187u)), func_3(vec3<bool>(true, false, false), Struct_4(vec3<f32>(-642f, 1000f, 100f), 22323i, Struct_1(vec3<bool>(false, false, false), 54403u, vec3<bool>(false, false, false))), 1461f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(944f * -1000f))))), _wgslsmith_add_u32(u_input.c & ~max(u_input.c, 1u), u_input.c), vec3<bool>(true, any(func_3(func_3(vec3<bool>(true, true, true), Struct_4(vec3<f32>(-983f, 1000f, 102f), u_input.b, Struct_1(vec3<bool>(false, true, false), 91973u, vec3<bool>(false, true, false))), 1000f), Struct_4(vec3<f32>(-1380f, -1157f, 593f), -1i, Struct_1(vec3<bool>(true, true, false), u_input.c, vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(trunc(2532f))).xx), true));
    return Struct_1(vec3<bool>(var_2.a.x, false, func_3(func_3(select(vec3<bool>(false, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, false, true), var_2.a), Struct_4(vec3<f32>(370f, 1731f, 1000f), 0i, Struct_1(vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), u_input.d.x, vec3<bool>(true, var_2.a.x, var_2.c.x))), -726f), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(985f, 801f, 3305f)), _wgslsmith_dot_vec2_i32(var_0.a.yw, vec2<i32>(arg_1, arg_2)), Struct_1(var_2.c, u_input.c, var_2.a)), -298f).x), 0u, !var_2.c);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))))));
    let var_1 = vec4<f32>(var_0, _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(530f)), _wgslsmith_f_op_f32(var_0 + 1095f)), var_0, (_wgslsmith_f_op_f32(var_0 + -101f) != var_0) & false)), _wgslsmith_f_op_f32(f32(-1f) * -594f));
    var var_2 = func_5(vec4<i32>(~(-1i), -1i, _wgslsmith_mult_i32(u_input.b, u_input.a & -1i), ~firstLeadingBit(i32(-1i) * -47978i)), -2147483647i, 2147483647i, func_4(func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 13817i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-47803i, -3045i), vec2<i32>(u_input.b, 23973i), vec2<i32>(27355i, -28166i))), var_1.zx, countOneBits(vec4<i32>(2147483647i, 0i, u_input.b, u_input.a)), Struct_4(var_1.wzx, ~u_input.b, Struct_1(vec3<bool>(false, true, false), arg_0, arg_3.yyw))), vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_0)), -1264f), func_2(-(i32(-1i) * -14792i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, 461f), var_1.zz, arg_1)), var_1.xz, func_3(arg_3.yxx, Struct_4(vec3<f32>(var_0, -672f, var_0), u_input.b, Struct_1(vec3<bool>(true, true, arg_1), 55353u, vec3<bool>(true, arg_3.x, arg_3.x))), var_1.x).zx)), abs(-vec4<i32>(-2147483647i, 0i, -21471i, u_input.b)), Struct_4(_wgslsmith_div_vec3_f32(var_1.wzx, vec3<f32>(arg_2, 336f, arg_2)), firstTrailingBit(10142i), Struct_1(arg_3.zzw, u_input.c, vec3<bool>(arg_3.x, arg_1, arg_1)))), all(vec3<bool>(arg_1, func_3(vec3<bool>(arg_3.x, false, false), Struct_4(vec3<f32>(arg_2, 768f, var_0), 0i, Struct_1(arg_3.yzw, u_input.c, arg_3.xzw)), 121f).x, true))));
    var_2 = func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(-34564i, u_input.b)), 17232i, 2147483647i, ~(-24116i)), select(vec4<i32>(u_input.a, 57430i, -33949i, 0i) ^ -vec4<i32>(u_input.b, -1i, 1i, u_input.b), ~vec4<i32>(19i, -44363i, u_input.b, 33257i), false)), _wgslsmith_clamp_i32(u_input.a, -25385i, u_input.a), ((~u_input.a << (u_input.d.x % 32u)) << (abs(arg_0) % 32u)) >> (1u % 32u), vec4<i32>(firstTrailingBit(-(~u_input.b)), -37656i, ~_wgslsmith_clamp_i32(u_input.a, select(1i, u_input.b, arg_3.x), -32345i), select(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -1i, u_input.b, u_input.a), vec4<i32>(35882i, -2147483647i, u_input.a, u_input.b) >> (vec4<u32>(0u, var_2.b, 0u, arg_0) % vec4<u32>(32u))), ~u_input.a >> (43727u % 32u), func_3(arg_3.yzw, Struct_4(var_1.zxx, u_input.a, Struct_1(vec3<bool>(true, true, true), 90008u, arg_3.xxy)), _wgslsmith_f_op_f32(min(1166f, var_1.x))).x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_1.ywy);
    return Struct_4(_wgslsmith_f_op_vec3_f32(var_3 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.xxx, var_3) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1226f, var_0, var_0))))), -2147483647i, Struct_1(arg_3.xyw, max((4294967295u << (arg_0 % 32u)) << (reverseBits(u_input.d.x) % 32u), 4294967295u), arg_3.zyx));
}

fn func_6(arg_0: Struct_4) -> i32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(11432u, 77925u, arg_0.c.b)), ~vec3<u32>(u_input.c, u_input.d.x, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.c, 55551u), vec3<u32>(1u, u_input.c, 4294967295u))), ~((vec3<u32>(u_input.d.x, u_input.d.x, arg_0.c.b) << (vec3<u32>(10087u, 24065u, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(25861u, 4294967295u, 4294967295u) % vec3<u32>(32u)))), abs(_wgslsmith_mult_u32(arg_0.c.b, u_input.d.x)), 22234u);
    var var_1 = arg_0.c.a;
    let var_2 = 0i != func_2(min(arg_0.b, select(~1i, func_4(Struct_2(vec4<i32>(arg_0.b, u_input.a, arg_0.b, 9738i)), arg_0.a, Struct_2(vec4<i32>(2147483647i, arg_0.b, u_input.b, u_input.b)), arg_0.c.a.x).x, var_1.x)), arg_0.a.yy, _wgslsmith_mod_vec4_i32(-vec4<i32>(33716i, -29724i, u_input.b, u_input.a), ~vec4<i32>(u_input.b, arg_0.b, u_input.b, 0i)) & _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.a, arg_0.b, 18347i), vec4<i32>(2147483647i, arg_0.b, arg_0.b, u_input.a)), ~vec4<i32>(-13999i, 0i, arg_0.b, -2147483647i)), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(431f, arg_0.a.x, 880f) + _wgslsmith_f_op_vec3_f32(-arg_0.a)), _wgslsmith_add_i32(arg_0.b, 0i) & 2147483647i, Struct_1(!arg_0.c.a, 59038u, vec3<bool>(arg_0.c.a.x, var_1.x, arg_0.c.c.x)))).a.x;
    let var_3 = arg_0.c;
    let var_4 = arg_0.a.x;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-305f, _wgslsmith_f_op_f32(abs(-916f))));
    var var_1 = ~vec3<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_mod_i32(-u_input.a, u_input.a)), -18116i, func_6(func_1(12204u, false, -1503f, vec4<bool>(true, true, true, true))));
    var var_2 = Struct_2(firstTrailingBit(select(vec4<i32>(max(39352i, var_1.x), min(38411i, -4200i), ~153i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.a), vec3<i32>(-1i, var_1.x, 1i))), select(~vec4<i32>(-62285i, 19348i, u_input.a, 2147483647i), firstTrailingBit(vec4<i32>(1i, 15402i, u_input.b, var_1.x)), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, true))));
    var_2 = Struct_2(var_2.a);
    let var_3 = ~firstTrailingBit(~reverseBits(vec3<u32>(0u, 1u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f + 1388f)), func_1(~var_3.x, u_input.d.x <= 1u, _wgslsmith_f_op_f32(944f + -374f), vec4<bool>(true, true, true, true)).a.x), _wgslsmith_f_op_f32(-347f - func_1(~var_3.x, false, _wgslsmith_f_op_f32(select(469f, 537f, false)), vec4<bool>(true, true, true, true)).a.x), _wgslsmith_f_op_f32(max(402f, -545f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-256f - 136f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(691f)) * _wgslsmith_f_op_f32(f32(-1f) * -205f))))), 0u, ~vec3<i32>(-(~u_input.b), ~var_2.a.x, -84640i), vec3<f32>(_wgslsmith_f_op_f32(min(-1255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-125f)))), -267f)), 1376f), var_2.a.zw);
}

