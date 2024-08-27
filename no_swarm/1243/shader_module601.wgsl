struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> vec2<bool> {
    return !vec2<bool>(select(arg_1.x, false, all(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x)))), arg_1.x);
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = max(u_input.a << (u_input.d.x % 32u), _wgslsmith_div_i32(countOneBits(u_input.a | arg_0.a), u_input.a));
    var var_1 = vec4<bool>((_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1411f)))) <= 1f) & false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), true, select(~u_input.b.x > u_input.b.x, true, all(vec4<bool>(true, true, true, true)) | false));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(758f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-334f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-636f, -814f)) + _wgslsmith_f_op_f32(trunc(218f))) - 1000f), all(func_3(Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec2<u32>(u_input.d.x, arg_0.c.x), arg_0, Struct_1(u_input.a, vec3<u32>(u_input.c.x, 0u, arg_0.b.x), vec3<u32>(4294967295u, arg_0.c.x, u_input.d.x)), arg_0), vec2<bool>(true, var_1.x), _wgslsmith_div_f32(1212f, 1098f))))));
    var var_4 = Struct_2(~(vec4<i32>(-1i, firstLeadingBit(27731i), u_input.a, u_input.a & u_input.a) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, -2147483647i, 1i), vec4<i32>(u_input.a, -51393i, arg_0.a, 0i))), arg_0.c.xz, Struct_1(-30458i, vec3<u32>(4294967295u, ~4294967295u, u_input.d.x >> (u_input.c.x % 32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(u_input.b.x, arg_0.c.x, 71091u) ^ vec3<u32>(4464u, arg_0.c.x, arg_0.c.x)), u_input.c.x, 4294967295u)), arg_0, Struct_1(-3240i, arg_0.c, vec3<u32>(~(~u_input.c.x), min(arg_0.c.x, u_input.d.x), _wgslsmith_sub_u32(select(arg_0.c.x, 17227u, true), firstTrailingBit(16407u)))));
    return var_4.b | (~vec2<u32>(u_input.d.x, ~0u) & (u_input.b.wz << (u_input.d.yx % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1312f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1675f + -948f), -607f, select(true, false, true)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, 1245f))) + vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-234f, var_0.x), vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -360f))))) - vec2<f32>(var_0.x, -1679f)));
    let var_1 = arg_2;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, -124f))) * var_0.x))), var_0.x);
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(428f)), -1069f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(-var_0.x))));
    return var_1;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    let var_0 = vec4<u32>(~1u, ~(~10459u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_0.x, ~arg_1.c.x), arg_0.x), ~(firstLeadingBit(arg_1.c.x) & max(4294967295u, arg_1.c.x)) >> (_wgslsmith_sub_u32(~42385u, 0u) % 32u));
    var var_1 = ~((u_input.b | vec4<u32>(~66148u, arg_0.x, _wgslsmith_dot_vec4_u32(var_0, var_0), firstLeadingBit(4294967295u))) | select(~(~var_0), var_0, select(select(vec4<bool>(arg_3, false, arg_3, true), vec4<bool>(arg_3, arg_3, arg_3, true), true), select(vec4<bool>(arg_3, false, arg_3, false), vec4<bool>(false, arg_3, arg_3, true), true), arg_3)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(372f))));
    var var_3 = func_4(firstTrailingBit(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-37926i, -2147483647i)), firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(2147483647i, 26245i))), Struct_2(~vec4<i32>(u_input.a, -arg_1.a, u_input.a, -2147483647i), var_0.zz, Struct_1(-46842i, vec3<u32>(30074u, select(arg_1.b.x, arg_0.x, arg_3), 1134u), vec3<u32>(_wgslsmith_clamp_u32(33738u, arg_1.c.x, var_1.x), _wgslsmith_add_u32(1u, var_0.x), _wgslsmith_add_u32(u_input.c.x, 34313u))), arg_1, Struct_1(firstTrailingBit(u_input.a), func_4(vec2<i32>(10094i, -1i), Struct_2(vec4<i32>(-22914i, arg_1.a, arg_1.a, u_input.a), vec2<u32>(0u, 4204u), arg_1, Struct_1(u_input.a, var_0.ywx, vec3<u32>(0u, 52868u, arg_0.x)), arg_1), Struct_1(17963i, var_1.yxx, var_1.wwx), -53738i).b, vec3<u32>(~1u, u_input.c.x, var_0.x))), Struct_1(7859i, firstLeadingBit(~firstTrailingBit(var_1.wyy)), min(u_input.b.zwz, vec3<u32>(arg_0.x, 44841u, arg_1.b.x) << (var_0.ywy % vec3<u32>(32u)))), -2147483647i);
    var_2 = _wgslsmith_f_op_f32(trunc(-1000f));
    return arg_1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = i32(-1i) * -1i;
    var_0 = ~func_5(~min(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, u_input.c.x)), func_4(vec2<i32>(-42810i, u_input.a), Struct_2(vec4<i32>(u_input.a, -2147483647i, -2147483647i, u_input.a), func_2(Struct_1(17522i, vec3<u32>(1u, 61696u, u_input.b.x), vec3<u32>(u_input.c.x, 4294967295u, 1506u))), Struct_1(31463i, u_input.d, vec3<u32>(u_input.d.x, u_input.c.x, 96626u)), Struct_1(27506i, u_input.d, u_input.d), Struct_1(u_input.a, vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.d.x))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(0u, 20882u, u_input.b.x), u_input.d), select(_wgslsmith_mult_i32(u_input.a, -1i), abs(u_input.a), false)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1060f * 364f) + 1f), -1187f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2204f, -298f), -580f)), 541f), !func_3(Struct_2(vec4<i32>(-22231i, -28713i, 2147483647i, -1i), vec2<u32>(0u, u_input.d.x), Struct_1(u_input.a, u_input.d, vec3<u32>(u_input.d.x, 20491u, 4294967295u)), Struct_1(0i, u_input.d, vec3<u32>(u_input.c.x, 7074u, 90985u)), Struct_1(-25552i, u_input.d, u_input.b.xxy)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), _wgslsmith_f_op_f32(floor(2167f))).x);
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 0i) >> (vec2<u32>(82226u, select(u_input.b.x, u_input.c.x, true)) % vec2<u32>(32u)), vec2<i32>(~u_input.a, -52134i) & (vec2<i32>(27761i, u_input.a) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 14539u), vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u)))), select(vec2<i32>(abs(44919i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 76258i)), u_input.a)), vec2<i32>(16883i, countOneBits(_wgslsmith_mod_i32(1866i, u_input.a))), select(func_3(Struct_2(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec2<u32>(u_input.d.x, u_input.b.x), Struct_1(u_input.a, u_input.d, u_input.d), Struct_1(u_input.a, vec3<u32>(5723u, u_input.b.x, u_input.d.x), u_input.b.yxw), Struct_1(-1i, vec3<u32>(4294967295u, u_input.b.x, 28250u), vec3<u32>(0u, u_input.c.x, u_input.c.x))), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_f_op_f32(-1000f * 694f)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(830f)) * 1f);
    var_0 = max(firstLeadingBit(var_1), 1i);
    return Struct_2(abs(vec4<i32>(var_1, 9304i, -399i, ~1i)), abs(vec2<u32>(29358u, u_input.b.x | 81702u)), Struct_1(var_1, select(u_input.b.xzx, vec3<u32>(20027u, u_input.c.x, u_input.b.x) >> (u_input.d % vec3<u32>(32u)), true) ^ ~func_4(vec2<i32>(u_input.a, var_1), Struct_2(vec4<i32>(var_1, u_input.a, u_input.a, -1i), u_input.c, Struct_1(var_1, u_input.d, u_input.d), Struct_1(0i, u_input.b.zyx, u_input.b.zzx), Struct_1(-2147483647i, u_input.b.zyx, vec3<u32>(33364u, 1u, 4294967295u))), Struct_1(1i, u_input.d, vec3<u32>(u_input.b.x, u_input.c.x, u_input.d.x)), -1i).c, ~u_input.b.xwy), Struct_1(1i, _wgslsmith_sub_vec3_u32(u_input.b.wxw & vec3<u32>(0u, 4294967295u, 1u), ~u_input.b.wzz), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u)))), Struct_1(u_input.a, vec3<u32>(~_wgslsmith_clamp_u32(u_input.d.x, u_input.c.x, 4294967295u), countOneBits(u_input.b.x), max(u_input.b.x, u_input.d.x)), vec3<u32>(abs(_wgslsmith_mult_u32(u_input.b.x, 1u)), 1u, u_input.c.x)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = func_1().d.a;
    var var_1 = arg_0.d.c;
    let var_2 = Struct_1(-4947i, vec3<u32>(~(~0u), ~var_1.x, var_1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, func_1().c.b.x, arg_0.c.c.x << (39782u % 32u)) & ~vec3<u32>(arg_1.b.x, arg_1.b.x, 1u), u_input.d));
    var_1 = var_2.b;
    var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 3157u, 715u), ~vec3<u32>(var_2.c.x, 32798u, 42085u)), var_2.b) | arg_1.b);
    return Struct_2(-(~_wgslsmith_mod_vec4_i32(min(vec4<i32>(-31684i, var_2.a, 8079i, u_input.a), arg_0.a), -arg_0.a)), ~_wgslsmith_div_vec2_u32(abs(~vec2<u32>(var_1.x, 37237u)), func_2(Struct_1(arg_0.d.a, arg_0.e.c, vec3<u32>(arg_1.c.x, 1u, 1u))) << (func_1().d.b.zx % vec2<u32>(32u))), var_2, Struct_1(~func_4(firstTrailingBit(vec2<i32>(arg_0.a.x, -44048i)), func_1(), func_1().c, 8206i >> (u_input.c.x % 32u)).a, countOneBits(var_2.b), _wgslsmith_mod_vec3_u32(vec3<u32>(11743u, var_2.b.x, arg_0.d.c.x & 24466u), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 4294967295u, 1050u), var_2.b), ~vec3<u32>(1u, 20192u, 4294967295u)))), func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(), func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-19467i, -1i), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -64864i), vec2<i32>(u_input.a, 2147483647i)), -vec2<i32>(u_input.a, u_input.a))), func_1(), func_1().c, 1i), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    var var_1 = select(var_0.a, vec4<i32>(max(~u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.a.zwy, vec3<i32>(var_0.e.a, var_0.d.a, -2147483647i)), func_1().a.yyx)), u_input.a, firstTrailingBit(u_input.a), firstTrailingBit(u_input.a)), vec4<bool>(-967f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-456f + -526f))), false, all(vec4<bool>(true, true, true, true)) | true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))));
    var var_2 = var_0.c.c.x;
    var var_3 = firstTrailingBit(-_wgslsmith_add_i32(_wgslsmith_add_i32(abs(var_0.c.a), -1i), 0i));
    let var_4 = var_0;
    var_3 = i32(-1i) * -2147483647i;
    let var_5 = Struct_2(vec4<i32>(1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(var_1.x, 2147483647i)), 0i), u_input.a, abs(~(var_1.x & var_0.e.a))), _wgslsmith_clamp_vec2_u32(select(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(var_0.b.x, 0u)), ~var_4.d.c.xy, any(vec4<bool>(true, true, true, true))), u_input.c, func_4(~vec2<i32>(-1i, -11547i), var_4, func_6(func_6(Struct_2(vec4<i32>(var_4.c.a, -48234i, u_input.a, -1i), var_0.b, var_0.c, var_0.d, Struct_1(-1i, var_0.c.b, vec3<u32>(1u, 4294967295u, u_input.c.x))), Struct_1(13697i, vec3<u32>(4294967295u, 1729u, 51659u), vec3<u32>(var_4.c.b.x, 1u, 1u)), vec2<bool>(true, false)), Struct_1(u_input.a, var_4.d.b, vec3<u32>(1u, 13171u, var_0.d.b.x)), vec2<bool>(true, false)).e, 1i).b.zy), Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.x, -var_4.a.x), firstLeadingBit(-var_4.c.a)), _wgslsmith_div_vec3_u32(~(~var_0.e.c), ~var_4.e.b ^ u_input.b.yxz), func_1().e.b), func_1().e, var_0.e);
    var var_6 = firstTrailingBit(var_1.wxx);
    let var_7 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, 35295u, _wgslsmith_f_op_f32(278f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -411f)))), vec4<u32>(36446u, ~(~(var_4.e.c.x >> (u_input.d.x % 32u))), 40529u, ~select(var_4.b.x, 4294967295u, true) ^ var_4.d.b.x));
}

