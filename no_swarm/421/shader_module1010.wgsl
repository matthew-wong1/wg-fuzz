struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = ~arg_3.e.e.yzx;
    var var_1 = arg_3.e.e;
    var_1 = select(~(abs(abs(arg_3.e.e)) & arg_3.e.e), -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.b, arg_3.c.c, -17709i, 1i) | vec4<i32>(0i, var_0.x, var_0.x, arg_3.b), ~vec4<i32>(arg_3.b, 44027i, arg_3.b, var_0.x))), !select(arg_2, arg_3.d.x == 1071f, arg_3.a.c));
    let var_2 = abs(var_0.x) | firstTrailingBit(-firstTrailingBit(arg_3.c.c));
    var_1 = vec4<i32>(var_2, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-(~(-2147483647i)), var_1.x, 2147483647i & (var_0.x ^ var_1.x)), _wgslsmith_dot_vec2_i32(arg_3.e.a, var_0.yy)), 0i, _wgslsmith_mod_i32(select(-_wgslsmith_sub_i32(arg_3.c.c, var_2), _wgslsmith_sub_i32(firstLeadingBit(var_1.x), min(2147483647i, -2044i)), false), var_2));
    return arg_3.c.a.b >> (firstTrailingBit(vec2<u32>(1u << (~arg_3.e.c.b.x % 32u), u_input.a)) % vec2<u32>(32u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~abs(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-34571i, 6106i, 46589i, 18412i) >> (vec4<u32>(29251u, u_input.a, 4294967295u, 0u) % vec4<u32>(32u)), vec4<i32>(-16749i, 0i, -2147483647i, 10213i), any(vec3<bool>(arg_0, arg_0, true))), ~(-vec4<i32>(-2147483647i, -1i, 0i, 0i)), -vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1491f, 798f, 1000f, -477f)))), ~vec2<u32>(1527u, u_input.a) ^ (func_3(arg_0, -520f, false, Struct_4(Struct_1(vec4<f32>(665f, 149f, -825f, 146f), vec2<u32>(68588u, u_input.a), false, u_input.a), var_0.x, Struct_3(Struct_1(vec4<f32>(308f, 186f, 1497f, 263f), vec2<u32>(u_input.a, u_input.a), arg_0, u_input.a), vec2<u32>(u_input.a, 60136u), 0i), vec2<f32>(-1831f, 2295f), Struct_2(var_0.xx, u_input.a, Struct_1(vec4<f32>(202f, 902f, -534f, -152f), vec2<u32>(60387u, u_input.a), true, 32322u), -408f, vec4<i32>(2147483647i, 2147483647i, var_0.x, var_0.x)))) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), true, _wgslsmith_sub_u32(~abs(u_input.a), u_input.a)), -50607i, Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, 717f, -395f, 1201f) - vec4<f32>(-810f, 1000f, -1385f, -546f))), vec2<u32>(u_input.a, 1u) & ~vec2<u32>(51734u, 4294967295u), arg_0, max(min(u_input.a, 0u), 14796u)), abs(~max(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 25722u))), -1i), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(986f * _wgslsmith_f_op_f32(-1827f - -1000f)))), -118f), Struct_2(countOneBits(~_wgslsmith_mod_vec2_i32(var_0.yx, vec2<i32>(18369i, var_0.x))), 38020u, Struct_1(vec4<f32>(-1372f, -2151f, -529f, -380f), select(vec2<u32>(u_input.a, 15026u), ~vec2<u32>(1u, 1u), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), arg_0, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(54234u, 0u))), -1102f, vec4<i32>(-2147483647i >> (u_input.a % 32u), -countOneBits(-32730i), ~_wgslsmith_div_i32(var_0.x, 29619i), 0i)));
    var_0 = (-_wgslsmith_div_vec4_i32(abs(vec4<i32>(16742i, var_0.x, -561i, var_0.x)), vec4<i32>(-1172i, 1i, var_0.x, var_1.c.c)) ^ select(~(~var_1.e.e), reverseBits(~vec4<i32>(-49272i, -22713i, -19189i, var_1.e.e.x)), func_3(false, -1631f, false, Struct_4(Struct_1(var_1.c.a.a, var_1.a.b, arg_0, 0u), 0i, Struct_3(var_1.a, var_1.e.c.b, -2147483647i), var_1.e.c.a.yx, var_1.e)).x > max(19033u, 27275u))) | -abs(vec4<i32>(var_0.x, 20513i, var_0.x, 0i) & min(vec4<i32>(var_1.c.c, var_0.x, 1285i, -37569i), var_1.e.e));
    var_1 = Struct_4(var_1.c.a, -(~(~(var_0.x ^ var_0.x))), Struct_3(Struct_1(var_1.c.a.a, vec2<u32>(0u, u_input.a), select(arg_0, false, arg_0) || (24959u >= u_input.a), ~(~var_1.a.b.x)), var_1.a.b, -1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.e.c.a.x)) * _wgslsmith_f_op_f32(1601f + -1036f))), -764f), Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.yz, var_0.yx), countOneBits(var_0.x)), -vec2<i32>(var_1.c.c, -2147483647i)), u_input.a, var_1.a, -1222f, ~firstLeadingBit(-var_1.e.e)));
    return var_1.e;
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(f32(-1f) * -1430f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(min(-262f, 1178f))), min(1u, u_input.a) <= _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), _wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-942f)));
    var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-417f)), _wgslsmith_f_op_f32(step(604f, -955f)), -571f) - vec3<f32>(1000f, -1189f, -1000f)))));
    var var_2 = func_2(any(vec3<bool>(true, true, false)));
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32((vec3<u32>(4294967295u, 13104u, u_input.a) | vec3<u32>(90819u, 13046u, 0u)) ^ (vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, var_2.c.b.x, var_2.c.d) % vec3<u32>(32u))), ~vec3<u32>(4294967295u, 22775u, var_2.c.d) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_2.b, u_input.a), vec3<u32>(u_input.a, u_input.a, 55921u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, var_2.c.d, 51787u)), vec3<u32>(u_input.a, 4294967295u, 20019u)), vec3<u32>(81187u, var_2.c.d ^ u_input.a, reverseBits(27388u)), vec3<u32>(~1u, 1u, 4294967295u))) >> (~reverseBits(select(~vec3<u32>(u_input.a, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, 12113u, u_input.a)), all(vec2<bool>(var_2.c.c, var_2.c.c)))) % vec3<u32>(32u));
    return var_2.e.wyx;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(488f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-752f)) * _wgslsmith_f_op_f32(-847f - -2164f)), -747f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))))));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, -216f, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-647f, var_0, -1921f), vec3<f32>(-788f, 505f, var_0))) - func_2(var_1).c.a.wzy))))));
    let var_3 = func_2(true).c;
    let var_4 = Struct_4(var_3, ~abs(~reverseBits(arg_1.x)), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1847f, var_3.a.x, 2325f, -660f)), vec4<f32>(var_2.x, var_2.x, var_3.a.x, -389f))), func_3(!var_1, _wgslsmith_f_op_f32(step(var_2.x, -1000f)), true, Struct_4(var_3, -12446i, Struct_3(Struct_1(var_3.a, vec2<u32>(37691u, 22962u), false, 1u), arg_2.zy, arg_1.x), vec2<f32>(1095f, 1431f), Struct_2(vec2<i32>(1i, arg_1.x), arg_2.x, var_3, var_2.x, vec4<i32>(arg_1.x, 18478i, arg_1.x, arg_1.x)))), true, abs(u_input.a) | u_input.a), ~select(arg_2.xx, vec2<u32>(56452u, 0u), vec2<bool>(var_1, var_1)) << (firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_2.x), vec2<u32>(42471u, 7249u))) % vec2<u32>(32u)), 71099i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_2.x * var_2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-817f + -617f), var_2.x))), Struct_2(vec2<i32>(arg_1.x, _wgslsmith_mult_i32(1i, arg_0)), _wgslsmith_add_u32(~57161u, ~arg_2.x), var_3, _wgslsmith_f_op_f32(-var_0), min(-vec4<i32>(0i, 1i, arg_1.x, arg_1.x), -vec4<i32>(0i, 2147483647i, 1i, arg_0))));
    return func_2(all(!select(vec2<bool>(var_3.c, var_1), vec2<bool>(false, false), vec2<bool>(false, var_1))) || select(true, !(-2147483647i == arg_1.x), ~var_4.e.a.x <= ~var_4.e.a.x)).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(44258i, _wgslsmith_add_vec3_i32(min(func_1(), ~vec3<i32>(2147483647i, 12628i, 1i)) & countOneBits(vec3<i32>(9756i, -2147483647i, 40548i) >> (vec3<u32>(2007u, 105356u, u_input.a) % vec3<u32>(32u))), ~(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(2147483647i, -11680i, 1i)) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), min(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 29479u, u_input.a)), abs(vec4<u32>(4294967295u, 0u, 47620u, 20011u) & vec4<u32>(u_input.a, u_input.a, 76868u, 4294967295u))), ~vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(47973u, u_input.a)), _wgslsmith_sub_u32(u_input.a, 4294967295u), u_input.a)));
    let var_1 = _wgslsmith_dot_vec4_u32(~abs(max(countOneBits(vec4<u32>(var_0.d, var_0.b.x, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1915u, 4294967295u, 11470u), vec4<u32>(u_input.a, var_0.b.x, var_0.d, 85765u), vec4<u32>(u_input.a, 1u, u_input.a, 0u)))), vec4<u32>(func_3(!var_0.c, -2330f, true, Struct_4(var_0, countOneBits(0i), Struct_3(var_0, var_0.b, -1i), var_0.a.zz, func_2(var_0.c))).x, _wgslsmith_sub_u32(~(26210u & u_input.a), ~var_0.d), ~var_0.d, ~(u_input.a & u_input.a)));
    let var_2 = Struct_4(var_0, min(~(~max(1i, 39504i)), 1i), Struct_3(var_0, ((var_0.b ^ var_0.b) | var_0.b) >> (vec2<u32>(func_4(-10617i, vec3<i32>(-2147483647i, 9859i, 41203i), vec4<u32>(4294967295u, 122300u, 34737u, 39647u)).b.x, var_0.d) % vec2<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(18228i, 1i), ~_wgslsmith_clamp_i32(-17308i, -28559i, -2147483647i))), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2872f), all(vec2<bool>(var_0.c, false)))))), Struct_2(countOneBits(abs(vec2<i32>(7907i, 2147483647i) >> (var_0.b % vec2<u32>(32u)))), var_0.d >> (firstTrailingBit(1u) % 32u), var_0, var_0.a.x, -vec4<i32>(1i, 1i, 1i, 1i)));
    var var_3 = var_0.b;
    let var_4 = vec4<f32>(_wgslsmith_div_f32(var_2.c.a.a.x, 2234f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_2.d.x)), var_2.c.a.a.x))))), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(abs(1206f))))));
    let var_5 = var_2.a.b;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(i32(-1i) * -var_6.c.c, -32618i, select(true, true, !all(vec4<bool>(var_0.c, var_0.c, var_2.c.a.c, var_6.c.a.c)))), var_3.x, _wgslsmith_f_op_vec3_f32(var_4.yxw - var_0.a.zwx));
}

