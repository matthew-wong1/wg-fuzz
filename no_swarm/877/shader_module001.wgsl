struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> i32 {
    var var_0 = firstTrailingBit(~55541u);
    var var_1 = Struct_4(vec2<i32>(~(-20819i) >> (~arg_1.c.x % 32u), ~_wgslsmith_sub_i32(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 22492i), vec3<i32>(arg_0.x, arg_0.x, u_input.a)))), 986f, arg_0, 1u, vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true));
    var var_2 = vec2<u32>(1u, 4294967295u);
    var_1 = Struct_4(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, 53534i), var_1.c.yy) & vec2<i32>(0i, 2147483647i), vec2<i32>(~1i, u_input.a)), countOneBits(var_1.c.yy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1438f) - 532f)), arg_0, countOneBits(arg_1.c.x), !vec4<bool>(!any(var_1.e), arg_1.d, true, true));
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, firstTrailingBit(reverseBits(_wgslsmith_mult_i32(var_1.c.x, 1i))), -5052i, u_input.a), -vec4<i32>(firstLeadingBit(arg_2), arg_2, -(~2147483647i), countOneBits(i32(-1i) * -8991i)));
    return arg_3;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = ~1u;
    var var_1 = arg_2;
    let var_2 = -4701i;
    var var_3 = Struct_4(arg_0.d.wy, var_1.d.x, -(vec3<i32>(func_3(arg_2.c.yyz, Struct_2(true, arg_1.b, vec3<u32>(4294967295u, arg_1.c.x, 0u), false), 58112i, 61279i), arg_2.c.x, ~arg_0.a) ^ vec3<i32>(-1i, 1i, -1i)), ~arg_0.c, select(select(select(select(vec4<bool>(true, arg_1.d, arg_1.d, true), vec4<bool>(arg_0.b, arg_1.d, true, arg_1.b.x), true), select(vec4<bool>(arg_0.b, arg_0.b, arg_1.b.x, true), vec4<bool>(true, false, arg_1.d, true), vec4<bool>(arg_1.d, true, false, false)), arg_1.a), select(vec4<bool>(arg_0.b, arg_1.b.x, arg_0.b, false), select(vec4<bool>(arg_1.a, false, false, arg_0.b), vec4<bool>(true, false, true, arg_0.b), arg_0.b), vec4<bool>(arg_1.b.x, arg_0.b, arg_1.d, true)), select(vec4<bool>(false, false, false, arg_0.b), !vec4<bool>(arg_1.d, true, arg_0.b, false), any(vec4<bool>(true, arg_1.d, false, arg_1.b.x)))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, arg_0.b, false), select(vec4<bool>(true, false, false, arg_1.d), vec4<bool>(arg_0.b, true, true, arg_0.b), true)), !(!vec4<bool>(arg_1.d, arg_0.b, false, true)), true), any(vec2<bool>(false, any(vec4<bool>(arg_1.b.x, arg_1.d, true, arg_0.b))))));
    let var_4 = Struct_2(any(var_3.e), vec2<bool>(false, false), arg_1.c & vec3<u32>(1u, ~11649u, 15557u), arg_0.b);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-983f, -1496f, -1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d.x, -1000f, var_1.d.x))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = select(vec4<bool>(arg_1.x != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-603f, arg_0.x)), 131f != arg_2.d.x, true, true), select(select(vec4<bool>(true, true, 2147483647i == arg_2.a.x, true), vec4<bool>(true, true, true, true), true), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), any(vec2<bool>(arg_3.x >= 20560u, true))), !(!any(vec3<bool>(true, false, true))) & all(vec2<bool>(true, true)));
    var var_1 = 44644u << (arg_3.x % 32u);
    var var_2 = arg_3.x;
    let var_3 = arg_3.x;
    var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, reverseBits(69040u)), vec2<u32>(select(36046u, var_3, var_0.x), 136788u)));
    return Struct_3(-1i, all(var_0.xwy), arg_3.x, ~vec4<i32>(~arg_2.c.x, -(u_input.a ^ u_input.a), 32803i, -15957i));
}

fn func_1() -> bool {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1026f, 1488f, -295f), vec3<f32>(-590f, 481f, -283f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-654f, 958f, -2569f))), _wgslsmith_f_op_vec3_f32(func_2(Struct_3(-22325i, true, 164u, vec4<i32>(11562i, u_input.a, u_input.a, u_input.a)), Struct_2(true, vec2<bool>(true, false), vec3<u32>(1u, 31149u, 29980u), true), Struct_1(vec2<i32>(u_input.a, 60614i), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec4<i32>(1i, -2147483647i, u_input.a, u_input.a), vec3<f32>(1491f, 1532f, -1000f), u_input.a))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-223f, 958f, -1060f, 1514f) - vec4<f32>(1591f, 1091f, -249f, -696f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1755f, 1042f, -568f, 857f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(2376f)), _wgslsmith_f_op_f32(-338f - -2059f), -174f, 551f)), vec4<bool>(true, true, true, true))), Struct_1(max(-vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.a)) & vec2<i32>(u_input.a, u_input.a), vec3<i32>(func_3(-vec3<i32>(u_input.a, u_input.a, 20066i), Struct_2(false, vec2<bool>(false, true), vec3<u32>(1u, 1u, 13680u), true), 0i, u_input.a), 0i, _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, 0i), countOneBits(u_input.a))), reverseBits(select(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i), vec4<bool>(true, false, true, false))) << (~vec4<u32>(4570u, 9673u, 0u, 1u) % vec4<u32>(32u)), vec3<f32>(1f, 1f, 1f), ~1i), vec2<u32>(1u, 1u));
    var var_1 = Struct_4(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, 1087f, 114f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1141f * -816f))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1473f)), Struct_1(var_0.d.xz, max(_wgslsmith_mod_vec3_i32(var_0.d.zxy, var_0.d.wyy), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 58593i, 11700i), var_0.d.xxw)), vec4<i32>(_wgslsmith_div_i32(-1i, u_input.a), u_input.a, var_0.d.x & 26678i, ~u_input.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(141f, -1080f, 124f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, 1175f, 423f) * vec3<f32>(-1000f, -1303f, 711f)))), var_0.d.x), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(45933u, 0u, 4294967295u) ^ vec3<u32>(var_0.c, var_0.c, 0u), vec3<u32>(var_0.c, 4294967295u, 69420u)), 0u)).d.yw, _wgslsmith_f_op_f32(f32(-1f) * -1507f), vec3<i32>(-_wgslsmith_mult_i32(u_input.a, u_input.a) | _wgslsmith_clamp_i32(9318i, var_0.d.x, _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(-2147483647i, 0i, 19542i, 12761i))), 29756i, -1i), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1010f, 550f, -915f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(626f, 380f, -297f, -598f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, 176f, 1033f, -206f)), var_0.b))), Struct_1(reverseBits(var_0.d.xy), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.d.x, u_input.a) >> (vec3<u32>(var_0.c, 0u, var_0.c) % vec3<u32>(32u)), firstTrailingBit(var_0.d.zzw)), _wgslsmith_sub_vec4_i32(var_0.d, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 65695i, 2147483647i, u_input.a), vec4<i32>(var_0.d.x, u_input.a, u_input.a, 2147483647i))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 567f, 142f), vec3<f32>(672f, 1375f, -120f)))), u_input.a), vec2<u32>(var_0.c, var_0.c)).c, vec4<bool>(select(-79732i == u_input.a, any(!vec3<bool>(var_0.b, var_0.b, var_0.b)), all(select(vec2<bool>(var_0.b, true), vec2<bool>(true, false), false))), 1638f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-183f, 231f))), !select(var_0.b, any(vec4<bool>(true, var_0.b, true, var_0.b)), all(vec4<bool>(var_0.b, true, var_0.b, true))), false));
    let var_2 = 38944i;
    var var_3 = Struct_1(firstTrailingBit(firstTrailingBit(-var_0.d.zz)), _wgslsmith_sub_vec3_i32(var_0.d.zwy, var_1.c), -reverseBits(var_0.d), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(min(-734f, var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -2092f)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-26751i, _wgslsmith_add_i32(-var_0.a, ~var_1.c.x)), _wgslsmith_mult_i32(min(i32(-1i) * -10137i, _wgslsmith_mod_i32(35562i, var_2)), 3177i), _wgslsmith_div_i32(var_2, _wgslsmith_dot_vec2_i32(max(var_1.c.zz, vec2<i32>(var_2, 1i)), vec2<i32>(var_0.a, u_input.a)))));
    var var_4 = var_0.b;
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1091f;
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = Struct_2(true, vec2<bool>(func_1(), true), ~countOneBits(~countOneBits(vec3<u32>(6352u, 1u, 1332u))), false);
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_1), var_1, -300f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-869f, -557f, 490f, var_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0, -540f, var_0))))), Struct_1(-vec2<i32>(u_input.a, abs(u_input.a)), ~(-(~vec3<i32>(u_input.a, u_input.a, 0i))), abs(~vec4<i32>(-12774i, u_input.a, u_input.a, 45730i)) | ((vec4<i32>(u_input.a, u_input.a, u_input.a, -1i) | vec4<i32>(-1i, u_input.a, u_input.a, -3194i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.x, 0u, 89195u, var_2.c.x), vec4<u32>(var_2.c.x, 962u, var_2.c.x, 0u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(587f, var_0, var_1) - _wgslsmith_div_vec3_f32(vec3<f32>(1146f, var_1, 770f), vec3<f32>(var_1, -1852f, -1467f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1268f, 1294f, var_1))), _wgslsmith_add_i32(i32(-1i) * -46973i, ~(-1773i)) ^ u_input.a), select(_wgslsmith_sub_vec2_u32((vec2<u32>(127254u, 0u) >> (var_2.c.yz % vec2<u32>(32u))) >> (firstTrailingBit(var_2.c.xz) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.c.yx, var_2.c.zy), firstLeadingBit(var_2.c.xz))), vec2<u32>(_wgslsmith_mult_u32(var_2.c.x >> (var_2.c.x % 32u), _wgslsmith_dot_vec2_u32(var_2.c.zy, var_2.c.xz)), _wgslsmith_div_u32(~var_2.c.x, reverseBits(22948u))), !vec2<bool>(false, !var_2.a))).c;
    let var_4 = var_2.c.yz;
    let var_5 = _wgslsmith_add_u32(~0u, max(max(19681u, firstLeadingBit(var_4.x)), 1u)) | 0u;
    var var_6 = u_input.a | u_input.a;
    let var_7 = Struct_4(min(vec2<i32>(_wgslsmith_mult_i32(u_input.a, 1i), _wgslsmith_mult_i32(24602i, u_input.a)), -firstLeadingBit(vec2<i32>(-14123i, -8138i))) | -vec2<i32>(u_input.a, ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -1586f)))), vec3<i32>(select(u_input.a ^ 2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-8605i, u_input.a, -1i, 1i), vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i)), !var_2.a), reverseBits(u_input.a), u_input.a ^ u_input.a), var_3, vec4<bool>(func_1(), false, var_2.b.x, true));
    let var_8 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -506f, var_7.b))))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_7.b) - _wgslsmith_f_op_f32(round(var_0)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(round(1273f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -247f), all(vec2<bool>(false, var_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(601f - -2261f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, _wgslsmith_f_op_vec3_f32(var_8 * var_8), -1i, var_7.d);
}

