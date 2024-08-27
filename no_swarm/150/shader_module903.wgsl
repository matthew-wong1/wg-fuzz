struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.x, 70323u, _wgslsmith_clamp_u32(57u, _wgslsmith_mod_u32(4294967295u, arg_1.c.x), ~arg_2.x)), _wgslsmith_div_vec3_u32(~(arg_1.c.wyw >> (~vec3<u32>(1u, arg_2.x, arg_2.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(arg_1.c.wzw, arg_1.c.xwx, _wgslsmith_clamp_vec3_u32(arg_1.c.zyz, vec3<u32>(1u, arg_2.x, 86u), arg_1.c.www)) & _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(arg_1.c.x, arg_1.c.x, 1u)), firstLeadingBit(arg_1.c.wzw))));
    let var_2 = arg_1.a.c;
    return var_0;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = select(vec3<bool>(any(vec3<bool>(true, true, true)), func_3(Struct_5(Struct_1(true, true, vec2<bool>(false, true), vec4<f32>(-1324f, -348f, 251f, -664f), vec3<bool>(false, false, true)), vec3<f32>(-766f, 159f, 1062f)), Struct_2(Struct_1(false, true, vec2<bool>(true, false), vec4<f32>(-1379f, -597f, 983f, -1013f), vec3<bool>(false, true, false)), Struct_1(false, true, vec2<bool>(false, false), vec4<f32>(-500f, 571f, -1766f, 2166f), vec3<bool>(false, false, false)), ~vec4<u32>(28207u, 0u, 4294967295u, arg_1.x), Struct_1(false, false, vec2<bool>(true, true), vec4<f32>(1706f, -142f, 450f, 1288f), vec3<bool>(true, true, false)), vec2<f32>(-1430f, 1036f)), _wgslsmith_div_vec2_u32(arg_1, ~vec2<u32>(7401u, arg_1.x))), select(false, false, true)), vec3<bool>(true, select(any(vec4<bool>(true, true, true, true)), true, false), true), vec3<bool>(min(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.b.x)) >= (_wgslsmith_div_i32(u_input.a.x, -1i) & -64628i), firstTrailingBit(select(-21495i, u_input.b.x, false)) == (countOneBits(36081i) >> (select(arg_1.x, 4294967295u, true) % 32u)), select(!all(vec3<bool>(true, true, false)), firstLeadingBit(u_input.b.x) < abs(u_input.b.x), false)));
    var var_1 = ~(~1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, 1887f, -768f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, -467f, 335f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-655f, _wgslsmith_f_op_f32(673f - 1740f), _wgslsmith_f_op_f32(f32(-1f) * -699f)), vec3<f32>(_wgslsmith_f_op_f32(floor(-384f)), -193f, _wgslsmith_div_f32(622f, -750f)))))));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(282f))) < 1731f, func_3(Struct_5(Struct_1(!var_0.x, u_input.b.x == u_input.b.x, !var_0.xx, vec4<f32>(-305f, -653f, -423f, 1068f), select(var_0, vec3<bool>(true, var_0.x, var_0.x), var_0.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2)))), Struct_2(Struct_1(true, all(var_0.xz), vec2<bool>(var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, -428f, var_2.x, -1537f), vec4<f32>(var_2.x, var_2.x, -1000f, var_2.x))), vec3<bool>(true, true, true)), Struct_1(!var_0.x, -1i == u_input.a.x, vec2<bool>(var_0.x, false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1024f, -530f, var_2.x, 2313f), vec4<f32>(var_2.x, 2012f, -1000f, -372f), var_0.x)), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, true), var_0)), vec4<u32>(_wgslsmith_clamp_u32(0u, arg_0, arg_0), ~arg_1.x, select(13843u, 47823u, var_0.x), _wgslsmith_mult_u32(arg_0, 9678u)), Struct_1(!var_0.x, true, !vec2<bool>(true, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 758f, var_2.x, var_2.x)), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.yz, var_2.yx))), arg_1));
    var_1 = 0u;
    return Struct_2(Struct_1(true, false, var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 782f, var_2.x) + vec4<f32>(var_2.x, -1841f, var_2.x, var_2.x)) * vec4<f32>(var_2.x, -1000f, var_2.x, var_2.x))), var_0), Struct_1(~arg_1.x < arg_1.x, var_0.x, select(vec2<bool>(u_input.b.x < 34708i, all(var_3)), !select(var_0.xx, vec2<bool>(var_0.x, var_3.x), var_0.zz), vec2<bool>(!var_0.x, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2079f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1608f), var_2.x)), !var_0), vec4<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(26980u, 42295u, 21399u))), _wgslsmith_mult_u32(arg_0 ^ 19282u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, arg_0, 12947u, 76471u), select(vec4<u32>(1u, 0u, arg_0, arg_1.x), vec4<u32>(4294967295u, 8900u, 1u, arg_0), var_0.x))), ~arg_0, select(2951u, firstLeadingBit(0u | arg_1.x), func_3(Struct_5(Struct_1(false, var_3.x, var_0.zy, vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec3<bool>(false, true, var_3.x)), vec3<f32>(705f, var_2.x, 1734f)), Struct_2(Struct_1(var_3.x, var_0.x, vec2<bool>(var_3.x, false), vec4<f32>(-352f, var_2.x, var_2.x, -504f), vec3<bool>(var_3.x, true, true)), Struct_1(false, var_3.x, var_3, vec4<f32>(var_2.x, var_2.x, -1000f, var_2.x), vec3<bool>(true, var_3.x, false)), vec4<u32>(52200u, arg_0, arg_1.x, 33543u), Struct_1(var_3.x, var_0.x, var_3, vec4<f32>(260f, 1687f, var_2.x, var_2.x), var_0), vec2<f32>(var_2.x, var_2.x)), ~vec2<u32>(arg_1.x, 1u)))), Struct_1(all(vec2<bool>(true, true)), true, !var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(629f, 410f, 667f, var_2.x)))))), !var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, _wgslsmith_f_op_f32(var_2.x * var_2.x))) - var_2.xz));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = vec3<i32>(u_input.a.x, ~u_input.a.x, -2147483647i);
    var_0 = ~abs(u_input.b);
    let var_1 = arg_0.a.c.yw;
    let var_2 = Struct_1(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.x, true, arg_0.a.a.e.x, arg_1.x), false), vec4<bool>(u_input.a.x >= u_input.a.x, arg_0.a.a.b, select(false, arg_0.a.a.a, arg_1.x), -1290f < arg_2.x), !arg_0.a.a.c.x | true)), !(!all(arg_1.xy)), vec2<bool>(true, false), vec4<f32>(-1947f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) + -787f))), 748f, -935f), select(func_2(arg_0.a.c.x, func_2(0u, vec2<u32>(var_1.x, 0u) | var_1).c.yy).d.e, vec3<bool>(true, true, true), vec3<bool>(arg_1.x, any(!arg_0.d.zz), any(vec4<bool>(false, arg_1.x, arg_1.x, false)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.e.x, 382f)), _wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(-arg_2.x)), arg_0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.d.x))))) + vec4<f32>(467f, var_2.d.x, _wgslsmith_f_op_f32(-arg_0.a.a.d.x), var_2.d.x));
    return func_2(37839u, var_1);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = func_4(Struct_3(func_2(~(~60235u), ~vec2<u32>(4294967295u, 0u)), true, -343f, func_2(reverseBits(_wgslsmith_div_u32(46144u, 101206u)), ~vec2<u32>(1u, 1u)).a.e), vec3<bool>(func_3(Struct_5(Struct_1(arg_0.x, false, vec2<bool>(true, arg_0.x), vec4<f32>(-748f, 428f, -528f, -1107f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec3<f32>(1213f, 1106f, -1430f)), func_2(0u, vec2<u32>(1u, 1u)), max(vec2<u32>(1u, 66859u), vec2<u32>(0u, 4294967295u))) && arg_0.x, any(vec2<bool>(true, arg_0.x)), ((u_input.a.x << (66308u % 32u)) | _wgslsmith_div_i32(1i, u_input.b.x)) > 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-484f, 1000f, -452f, 385f), vec4<f32>(1000f, 616f, 877f, -1058f)))))));
    let var_1 = u_input.a.x;
    let var_2 = 1736f;
    var var_3 = countOneBits(vec4<i32>(-3398i, ~_wgslsmith_mult_i32(abs(u_input.a.x), firstTrailingBit(var_1)), -(~(-5189i)), -2147483647i));
    var_3 = vec4<i32>(var_3.x, -_wgslsmith_div_i32(~(-u_input.a.x), var_3.x ^ (i32(-1i) * -43600i)), reverseBits(~u_input.a.x), u_input.a.x >> (var_0.c.x % 32u));
    return func_4(Struct_3(func_2(~_wgslsmith_add_u32(4714u, 12309u), var_0.c.zy), _wgslsmith_f_op_f32(-var_2) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2))), -1086f, select(vec3<bool>(func_2(var_0.c.x, vec2<u32>(var_0.c.x, 4294967295u)).b.e.x, arg_0.x, all(vec4<bool>(var_0.d.b, var_0.b.e.x, var_0.b.c.x, arg_0.x))), func_4(Struct_3(Struct_2(Struct_1(var_0.b.a, arg_0.x, var_0.d.c, vec4<f32>(var_0.b.d.x, var_2, var_0.e.x, -2459f), var_0.d.e), var_0.b, vec4<u32>(58077u, var_0.c.x, var_0.c.x, var_0.c.x), var_0.d, vec2<f32>(1139f, var_2)), var_0.b.c.x, var_0.e.x, var_0.d.e), var_0.b.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.a.d.x, -602f, var_0.b.d.x))).a.e, -753f == func_4(Struct_3(Struct_2(var_0.a, var_0.a, var_0.c, var_0.b, vec2<f32>(946f, 1233f)), arg_0.x, var_0.b.d.x, vec3<bool>(true, true, true)), vec3<bool>(true, arg_0.x, var_0.a.c.x), vec4<f32>(1383f, -1749f, var_2, var_2)).e.x)), select(!select(vec3<bool>(false, arg_0.x, false), func_2(0u, var_0.c.xx).a.e, func_2(var_0.c.x, vec2<u32>(15869u, 1u)).d.e), var_0.d.e, arg_0.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-685f - -523f), var_2, _wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_f_op_f32(f32(-1f) * -239f)))))));
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = ~(~(~_wgslsmith_dot_vec2_u32(arg_0.a.c.wy, vec2<u32>(arg_0.a.c.x, arg_0.a.c.x)))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.c.x, ~(~arg_0.a.c.x), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(16557u, 4294967295u, arg_0.a.c.x), arg_0.a.c.zwx)), 39858u ^ ~arg_0.a.c.x), ~(arg_0.a.c & vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, 34366u, 1u))) % 32u);
    let var_1 = (1i & ~(~u_input.b.x & 2147483647i)) ^ (abs(56289i) >> (~(arg_0.a.c.x & firstTrailingBit(arg_0.a.c.x)) % 32u));
    var var_2 = arg_0.a.a.c.x;
    var_2 = false;
    let var_3 = firstTrailingBit(var_1) & ~(~(~var_1));
    return StorageBuffer(_wgslsmith_mult_vec2_i32(select(~u_input.a, _wgslsmith_sub_vec2_i32(u_input.b.zy, vec2<i32>(var_3, 2147483647i)), select(false, false, true)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.a.x, 1i) << (vec2<u32>(1u, arg_0.a.c.x) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, u_input.b.x)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_3(func_1(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(952f, 2043f))) > _wgslsmith_f_op_f32(433f - 146f), -1715f, !func_4(Struct_3(Struct_2(Struct_1(true, true, vec2<bool>(true, true), vec4<f32>(543f, 1370f, -1108f, 1228f), vec3<bool>(true, true, true)), Struct_1(true, true, vec2<bool>(false, true), vec4<f32>(290f, -829f, -495f, 967f), vec3<bool>(true, true, true)), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), Struct_1(false, true, vec2<bool>(true, false), vec4<f32>(861f, 452f, 846f, 1767f), vec3<bool>(true, true, false)), vec2<f32>(-2137f, -619f)), false, -756f, vec3<bool>(false, true, true)), vec3<bool>(true, false, false), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1029f, -1416f, -150f, -293f)))).d.e));
}

