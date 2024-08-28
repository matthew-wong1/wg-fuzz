struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_3, arg_3.c, max(firstTrailingBit(~vec3<i32>(0i, arg_3.c, arg_3.c)) >> (arg_3.a.zyy % vec3<u32>(32u)), -(~vec3<i32>(arg_3.c, 911i, 1i))), Struct_1(_wgslsmith_mult_vec4_u32(min(arg_3.a, vec4<u32>(arg_3.a.x, u_input.a, 8846u, u_input.a)), ~arg_3.a) & _wgslsmith_add_vec4_u32(~vec4<u32>(arg_3.b.x, arg_2.x, arg_3.a.x, 0u), arg_3.a >> (arg_3.a % vec4<u32>(32u))), vec2<u32>(countOneBits(~4294967295u), arg_2.x), -64967i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) * _wgslsmith_f_op_f32(sign(arg_3.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1892f)) + _wgslsmith_f_op_f32(exp2(arg_3.d.x))))), -435f);
    let var_1 = Struct_1(~(~vec4<u32>(1u, _wgslsmith_sub_u32(var_0.d.a.x, 337u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, 0u), arg_3.a.wwy), u_input.a << (arg_2.x % 32u))), _wgslsmith_sub_vec2_u32(~select(var_0.d.a.xz, arg_2.xy & arg_3.a.yy, false || arg_0.x), vec2<u32>(arg_3.b.x, ~26781u) ^ _wgslsmith_add_vec2_u32(vec2<u32>(10929u, 1u), ~vec2<u32>(var_0.a.b.x, arg_2.x))), _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.b, max(0i, 0i)), ~firstLeadingBit(var_0.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1080f + 835f) + _wgslsmith_f_op_f32(2201f + -220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-432f, arg_3.d.x)) - _wgslsmith_div_f32(524f, 707f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.d.x + -1000f), _wgslsmith_f_op_f32(var_0.a.d.x + -907f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.x, -1000f)), _wgslsmith_f_op_vec2_f32(-arg_3.d))))));
    let var_2 = Struct_2(var_1, arg_3.c, vec3<i32>(firstLeadingBit(i32(-1i) * -704i), ~_wgslsmith_add_i32(1i, arg_3.c) ^ (var_0.d.c & reverseBits(var_0.a.c)), -firstTrailingBit(var_0.d.c)), arg_3, _wgslsmith_f_op_f32(-215f - 2260f));
    var_0 = Struct_2(arg_3, -(arg_3.c << (var_0.d.a.x % 32u)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i | arg_3.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.b, 1i), var_0.c), _wgslsmith_sub_i32(var_1.c, 2147483647i))), select(var_0.c, firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, 15825i, 1i), vec3<i32>(5730i, 0i, -2147483647i), vec3<i32>(var_2.d.c, var_1.c, var_2.a.c))), arg_0)), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_3.a.x, arg_3.a.x), vec3<u32>(32767u, 4294967295u, var_1.b.x)), var_0.d.a.wzy), _wgslsmith_mult_u32(select(var_0.d.b.x, arg_2.x, arg_0.x), var_1.a.x), ~arg_2.x, 59191u), ~reverseBits(arg_3.a.zy), ~1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1087f, -273f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(746f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.d.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, 720f)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(955f * arg_3.d.x) - 1289f))));
    return ~(~4294967295u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec2_f32(arg_1.d, vec2<f32>(_wgslsmith_f_op_f32(-577f * arg_1.d.x), arg_1.d.x));
    let var_1 = ~(~arg_1.a.zwz);
    let var_2 = Struct_1(max(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a.x, arg_2.x, 4294967295u, 47365u), select(arg_1.a, arg_1.a, arg_0.x)), ~(~vec4<u32>(var_1.x, u_input.a, 0u, arg_2.x))), arg_1.a), max(~(_wgslsmith_clamp_vec2_u32(arg_2, vec2<u32>(arg_1.a.x, 4294967295u), vec2<u32>(u_input.a, arg_2.x)) | vec2<u32>(u_input.a, arg_1.b.x)), ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(97111u, 1u)))), arg_1.c, var_0);
    var var_3 = vec3<u32>(~1u ^ _wgslsmith_mult_u32(~select(arg_1.a.x, arg_1.b.x, true), 4294967295u), ~(func_3(vec3<bool>(arg_0.x, arg_0.x, false), true, var_2.a.xxx, Struct_1(arg_1.a, arg_1.a.xy, 23919i, vec2<f32>(arg_1.d.x, 489f))) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_2.x, 11003u), _wgslsmith_mod_vec3_u32(arg_1.a.xwy, arg_1.a.wyx))), 1u);
    var_3 = vec3<u32>(~u_input.a, 117923u, abs(arg_2.x << (4294967295u % 32u)));
    return ~_wgslsmith_sub_vec4_u32(select(~_wgslsmith_mult_vec4_u32(var_2.a, var_2.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_1.x, 18167u, 0u), select(arg_1.a, vec4<u32>(0u, 4294967295u, var_1.x, var_2.a.x), true), vec4<u32>(4294967295u, 43441u, var_2.b.x, 0u)), arg_0.x), select(vec4<u32>(~var_2.b.x, ~u_input.a, arg_1.b.x, ~0u), vec4<u32>(_wgslsmith_sub_u32(33185u, var_2.a.x), 1u, _wgslsmith_sub_u32(arg_2.x, arg_1.a.x), func_3(arg_0.wyz, true, var_1, Struct_1(vec4<u32>(20401u, var_1.x, var_2.a.x, u_input.a), vec2<u32>(var_1.x, 4294967295u), var_2.c, var_2.d))), all(vec3<bool>(true, false, true))));
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = -vec3<i32>(-41090i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, 51385i, 2147483647i) ^ -2147483647i, 10398i, i32(-1i) * -25607i), max(_wgslsmith_add_i32(0i, -2147483647i), 19496i));
    var var_1 = Struct_2(Struct_1(vec4<u32>(~1u, arg_0.x, 99051u, _wgslsmith_mult_u32(~arg_0.x, 24543u)), ~(~arg_0.ww), _wgslsmith_mod_i32(1i, select(-var_0.x, 19845i, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1398f * 214f), _wgslsmith_f_op_f32(abs(-732f))) + vec2<f32>(855f, _wgslsmith_f_op_f32(f32(-1f) * -293f)))), min(7760i << (~(arg_0.x & arg_0.x) % 32u), _wgslsmith_add_i32(11429i, 14248i)), _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(~var_0.x), var_0.x, ~var_0.x >> (_wgslsmith_sub_u32(13953u, arg_0.x) % 32u)), var_0), Struct_1(~_wgslsmith_add_vec4_u32(arg_0, ~arg_0), arg_0.xz, 55066i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-829f, 913f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(2100f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-458f, 207f) - _wgslsmith_f_op_f32(857f + -1678f)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))))));
    var_1 = Struct_2(var_1.a, min(_wgslsmith_div_i32(var_0.x & (var_0.x >> (var_1.d.b.x % 32u)), _wgslsmith_clamp_i32(var_1.d.c, 1i, -var_1.b)), _wgslsmith_sub_i32((var_1.c.x << (2673u % 32u)) ^ 11570i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.c, var_0.x, var_0.x, var_0.x), ~vec4<i32>(-1i, var_1.d.c, -36542i, 0i)))), _wgslsmith_mod_vec3_i32(-(vec3<i32>(var_0.x, var_1.b, -5219i) >> (var_1.d.a.zxx % vec3<u32>(32u))) >> (~arg_0.wzw % vec3<u32>(32u)), var_0), var_1.a, var_1.d.d.x);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x)))), -1096f)), 1501f));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_1.a.d.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1367f - 207f), _wgslsmith_f_op_f32(f32(-1f) * -754f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2067f)));
    return !select(vec2<bool>(abs(arg_0.x) != u_input.a, (var_0.x << (41998u % 32u)) >= firstLeadingBit(-1i)), !vec2<bool>(true, any(vec3<bool>(false, false, false))), true);
}

fn func_5(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(~(~(~vec4<u32>(0u, 56257u, 52113u, u_input.a))), func_2(!select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), Struct_1(vec4<u32>(93169u, u_input.a, u_input.a, u_input.a), ~vec2<u32>(u_input.a, 63869u), _wgslsmith_mod_i32(1i, 1i), vec2<f32>(1235f, -1372f)), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(28925u, 9139u))).wz, ~_wgslsmith_sub_i32(-18558i, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1715f, 948f), vec2<f32>(478f, -817f)))))), _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(-2147483647i, 1i, -7118i, 0i)), min(~vec4<i32>(23057i, -2147483647i, 0i, -35173i), vec4<i32>(20377i, -36724i, 51469i, 40327i) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))) | -_wgslsmith_div_i32(1i, 1i), vec3<i32>(~(-2147483647i), -1i | (3594i << (u_input.a % 32u)), 57068i), Struct_1(reverseBits(vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 64954u), vec4<u32>(14127u, 24490u, 49786u, u_input.a)), 53806u, _wgslsmith_mod_u32(u_input.a, 25981u))), _wgslsmith_div_vec2_u32(vec2<u32>(29198u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), reverseBits(firstLeadingBit(vec2<u32>(0u, u_input.a)))), ~max(19386i, reverseBits(28272i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1204f, 114f))), vec2<f32>(-1000f, 1069f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(385f * _wgslsmith_f_op_f32(f32(-1f) * -1081f)))));
    var var_1 = _wgslsmith_mod_i32(2147483647i, ~(-7669i));
    var_1 = var_0.c.x;
    var_1 = ~(~2147483647i);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1723f);
    return var_0;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = func_5(!func_4(abs(func_2(vec4<bool>(true, true, false, false), Struct_1(vec4<u32>(u_input.a, u_input.a, 4294967295u, 20840u), vec2<u32>(u_input.a, 15302u), 2147483647i, vec2<f32>(-2113f, arg_0)), vec2<u32>(4294967295u, u_input.a)))));
    let var_1 = var_0.a;
    var var_2 = Struct_2(Struct_1(~(var_0.d.a | var_1.a), ~(~(~var_1.a.xw)), 33251i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.d, vec2<f32>(-318f, var_1.d.x), vec2<bool>(false, false)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(min(var_0.d.d.x, var_1.d.x))))), _wgslsmith_dot_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(-2147483647i, var_0.b, -2918i, var_1.c))), vec4<i32>(-1495i, max(var_0.c.x, var_1.c), var_1.c << (13602u % 32u), ~16796i) | vec4<i32>(var_0.c.x, var_1.c, ~(-1i), var_0.b)), min(vec3<i32>(0i, max(0i, var_0.b), var_1.c), vec3<i32>(-var_0.d.c, 1i, 30967i)) | var_0.c, func_5(vec2<bool>(any(vec2<bool>(true, false)), true)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-580f)), var_0.e)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + var_1.d.x) * var_0.e))));
    var_2 = var_0;
    let var_3 = Struct_1(var_2.d.a, ~var_1.a.xw, 19278i, vec2<f32>(var_0.e, var_1.d.x));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 16671u, 23521u, 2035u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, 9557u, 81538u))) >> ((abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) & func_1(1880f)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(35622u, u_input.a, 1u, u_input.a)), ~vec4<u32>(12850u, 27060u, u_input.a, 4294967295u))), vec2<u32>(~(u_input.a & u_input.a) ^ u_input.a, 1u), ~0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-220f, -370f) + vec2<f32>(657f, -1638f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1623f, 114f) + vec2<f32>(-368f, 1659f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(891f, -601f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2266f, -1000f))))) - vec2<f32>(1f, 1f)));
    let var_1 = 31772u != ~reverseBits(func_2(vec4<bool>(true, true, true, true), var_0, abs(vec2<u32>(var_0.b.x, 29145u))).x);
    var var_2 = u_input.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~2295u, var_0.b.x, func_2(vec4<bool>(var_1, var_1, var_1, false), var_0, vec2<u32>(var_0.a.x, 1u)).x, func_3(vec3<bool>(var_1, var_1, var_1), true, vec3<u32>(u_input.a, 187u, u_input.a), Struct_1(vec4<u32>(var_0.a.x, var_0.b.x, u_input.a, var_0.b.x), var_0.b, var_0.c, vec2<f32>(937f, 522f)))), vec4<u32>(~0u, ~var_0.a.x, 47580u, select(27108u, 99069u, true))), var_0.a.xx, var_0.c, var_0.d), var_0.c, min(-vec3<i32>(_wgslsmith_mod_i32(var_0.c, 0i), var_0.c, 0i), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.c, var_0.c, var_0.c), max(vec3<i32>(var_0.c, 0i, var_0.c) << (vec3<u32>(0u, var_0.a.x, u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, var_0.c, var_0.c), vec3<i32>(var_0.c, -2147483647i, var_0.c))))), Struct_1(vec4<u32>(31368u, ~67086u, u_input.a, 4294967295u), ~countOneBits(vec2<u32>(41948u, 4294967295u)), var_0.c, var_0.d), -783f);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1208f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.d.x * -657f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * var_3.d.d.x))) - _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(abs(var_0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1406f, _wgslsmith_f_op_f32(-var_3.e), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x * -766f), _wgslsmith_f_op_f32(var_3.a.d.x * var_0.d.x), 372f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1270f, -1023f, var_0.d.x), vec3<f32>(-2374f, var_3.e, var_0.d.x))) * vec3<f32>(866f, var_0.d.x, -1000f)))))), ~vec4<i32>(~(var_0.c | var_3.c.x), -2147483647i, _wgslsmith_mult_i32(select(var_3.b, 1i, true), i32(-1i) * -50702i), 0i));
}

