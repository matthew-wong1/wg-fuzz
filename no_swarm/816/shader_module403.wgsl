struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_5) -> vec3<bool> {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, countOneBits(0u) | arg_2.b.d.x), arg_0.x), max(_wgslsmith_mult_u32(arg_0.x, _wgslsmith_dot_vec2_u32(~arg_0.zz, ~arg_2.b.d)), arg_0.x), 22882u, ~max(~arg_2.a.b, 0u));
    let var_1 = _wgslsmith_clamp_vec2_i32(~(vec2<i32>(arg_2.a.c.d, arg_1.x) & -vec2<i32>(13651i, u_input.a.x)), vec2<i32>(-(arg_1.x ^ 15782i), abs(countOneBits(-18714i))), arg_2.a.c.a) << (((arg_0.yz & (var_0.zy >> (vec2<u32>(21595u, 4294967295u) % vec2<u32>(32u)))) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, 7327u), ~var_0.xx), _wgslsmith_add_vec2_u32(arg_0.xz, ~vec2<u32>(arg_0.x, 2968u)))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(620f, _wgslsmith_f_op_f32(-2147f * 807f), -987f, _wgslsmith_f_op_f32(trunc(1084f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1092f, 418f, -1830f, 612f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(767f, -2015f, 473f, -1312f))))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(984f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f * _wgslsmith_f_op_f32(max(964f, -154f)))), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(204f * -380f)))))));
    let var_3 = var_2.x;
    var var_4 = arg_2.a;
    return var_4.a.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec3<u32> {
    let var_0 = Struct_1(abs(~(vec2<i32>(0i, u_input.a.x) & u_input.a.zx)), vec2<bool>(select(select(any(vec3<bool>(false, false, true)), false, select(true, false, true)), max(0u, arg_0.x) == (1u << (arg_0.x % 32u)), true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(411f != arg_1, true, all(vec2<bool>(false, false))), true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), func_3(vec3<u32>(_wgslsmith_sub_u32(50660u, 16344u), arg_0.x & 4294967295u, ~arg_0.x), u_input.a, Struct_5(Struct_2(Struct_1(u_input.a.zx, vec2<bool>(false, false), vec3<bool>(false, false, false), -23722i), 31075u, Struct_1(u_input.a.xy, vec2<bool>(false, false), vec3<bool>(true, false, true), -2147483647i), u_input.a.yz, vec4<i32>(u_input.a.x, -1i, 47971i, u_input.a.x)), Struct_4(Struct_1(vec2<i32>(u_input.a.x, -1i), vec2<bool>(true, false), vec3<bool>(true, true, true), -1162i), vec2<u32>(arg_0.x, 0u), vec3<bool>(false, true, false), arg_0, -29132i), Struct_1(u_input.a.zx, vec2<bool>(true, false), vec3<bool>(false, true, true), u_input.a.x)))), 2147483647i);
    var var_1 = Struct_5(Struct_2(Struct_1(var_0.a, !func_3(vec3<u32>(22296u, 0u, 75889u), vec3<i32>(u_input.a.x, -14796i, var_0.a.x), Struct_5(Struct_2(Struct_1(vec2<i32>(-1i, -2147483647i), vec2<bool>(var_0.c.x, var_0.c.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.c.x), 1i), 16577u, Struct_1(u_input.a.zy, vec2<bool>(false, var_0.b.x), var_0.c, u_input.a.x), vec2<i32>(-3171i, var_0.d), vec4<i32>(-1i, -7381i, 0i, 39905i)), Struct_4(var_0, arg_0, vec3<bool>(var_0.c.x, var_0.b.x, true), vec2<u32>(1u, arg_0.x), 17896i), Struct_1(vec2<i32>(var_0.d, var_0.a.x), vec2<bool>(false, false), var_0.c, -2147483647i))).yz, vec3<bool>(var_0.c.x, true, all(vec3<bool>(var_0.b.x, false, var_0.b.x))), 0i), ~(~23916u), Struct_1((u_input.a.xz ^ var_0.a) | -vec2<i32>(11855i, u_input.a.x), vec2<bool>(true, true), var_0.c, 1i >> (~arg_0.x % 32u)), _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.xx) >> (~arg_0 % vec2<u32>(32u)), reverseBits(_wgslsmith_mult_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, 14262i)))), ~vec4<i32>(max(var_0.d, u_input.a.x), _wgslsmith_clamp_i32(0i, var_0.d, var_0.d), var_0.a.x, abs(-21075i))), Struct_4(var_0, abs(arg_0), select(var_0.c, vec3<bool>(var_0.b.x, all(vec2<bool>(var_0.c.x, var_0.c.x)), all(var_0.c)), !var_0.c), firstLeadingBit(~select(vec2<u32>(arg_0.x, 13163u), arg_0, vec2<bool>(var_0.b.x, var_0.c.x))), ~(-1i) << (arg_0.x % 32u)), Struct_1(reverseBits(reverseBits(u_input.a.zx & vec2<i32>(11598i, -2147483647i))), var_0.c.zy, !vec3<bool>(arg_0.x >= 50118u, false, arg_1 >= arg_1), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.d, u_input.a.x, -20520i, 0i), vec4<i32>(-36888i, var_0.d, 11983i, -1i), vec4<bool>(true, true, var_0.c.x, var_0.b.x)), vec4<i32>(var_0.a.x, u_input.a.x, 1i, u_input.a.x)))));
    var_1 = Struct_5(var_1.a, Struct_4(var_1.c, ~(~(~var_1.b.d)), func_3(abs(min(vec3<u32>(var_1.b.d.x, var_1.a.b, 54597u), vec3<u32>(12954u, var_1.a.b, var_1.a.b))), _wgslsmith_div_vec3_i32(u_input.a, u_input.a) << (min(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(var_1.b.b.x, 4294967295u, 58535u)) % vec3<u32>(32u)), Struct_5(Struct_2(var_0, var_1.b.d.x, Struct_1(u_input.a.zz, vec2<bool>(true, var_0.c.x), vec3<bool>(false, false, true), 2147483647i), var_1.a.c.a, var_1.a.e), var_1.b, var_1.a.a)), vec2<u32>(var_1.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 6819u, var_1.a.b), vec3<u32>(arg_0.x, var_1.a.b, var_1.b.b.x))), ~(2147483647i >> (arg_0.x % 32u)) | 1i), Struct_1(~vec2<i32>(var_1.a.a.d, var_1.a.d.x), vec2<bool>(!var_1.a.a.b.x, ~u_input.a.x > u_input.a.x), var_1.b.c, var_1.a.a.a.x));
    let var_2 = _wgslsmith_div_f32(-1752f, 177f);
    var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.x, u_input.a.x), vec2<i32>(u_input.a.x, var_1.b.e)), vec2<i32>(-2147483647i, u_input.a.x) << (vec2<u32>(14718u, 62694u) % vec2<u32>(32u))), func_3(firstLeadingBit(vec3<u32>(20558u, 4294967295u, var_1.b.d.x)), select(vec3<i32>(u_input.a.x, var_0.d, 2147483647i), vec3<i32>(1i, -17333i, -6887i), vec3<bool>(false, false, var_0.c.x)), Struct_5(var_1.a, Struct_4(var_0, var_1.b.d, var_1.a.a.c, var_1.b.b, var_0.a.x), Struct_1(var_1.a.d, vec2<bool>(false, var_0.b.x), var_0.c, var_1.b.a.a.x))).yx, func_3(vec3<u32>(var_1.a.b, 0u, arg_0.x), countOneBits(var_1.a.e.yzw), Struct_5(var_1.a, var_1.b, var_1.c)), 25724i >> ((1u | arg_0.x) % 32u)), abs(~(var_1.a.b << (1u % 32u))), Struct_1(vec2<i32>(-1i, -u_input.a.x), func_3(vec3<u32>(arg_0.x, 35338u, arg_0.x), vec3<i32>(1i, 10571i, var_1.a.e.x) << (vec3<u32>(26730u, 26955u, 45174u) % vec3<u32>(32u)), Struct_5(var_1.a, Struct_4(var_0, var_1.b.b, var_1.a.c.c, var_1.b.d, 58914i), Struct_1(vec2<i32>(var_1.a.a.a.x, u_input.a.x), var_1.b.c.yz, vec3<bool>(false, true, var_1.a.a.c.x), 0i))).xy, !(!var_1.a.a.c), 1i), countOneBits(var_1.c.a), vec4<i32>(var_0.d, ~var_0.d, var_1.a.e.x, -_wgslsmith_dot_vec2_i32(var_1.a.a.a, u_input.a.xx))), Struct_4(Struct_1(u_input.a.xz, select(select(vec2<bool>(false, var_0.c.x), var_1.c.b, vec2<bool>(false, var_0.b.x)), var_0.c.yz, var_1.c.b), var_0.c, u_input.a.x), abs(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(var_1.b.b.x, arg_0.x)), vec2<u32>(arg_0.x, var_1.b.d.x) << (arg_0 % vec2<u32>(32u)))), !func_3(countOneBits(vec3<u32>(var_1.a.b, var_1.a.b, arg_0.x)), u_input.a, Struct_5(var_1.a, var_1.b, var_0)), arg_0, var_1.b.a.a.x), var_0);
    return vec3<u32>(_wgslsmith_add_u32(var_1.b.b.x, firstLeadingBit(var_1.b.b.x)), arg_0.x, min(~_wgslsmith_add_u32(reverseBits(27918u), arg_0.x ^ 51643u), arg_0.x));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(51356i, -15477i)), vec2<i32>(arg_2, u_input.a.x)), func_3(vec3<u32>(38680u, arg_3, 1u), u_input.a, Struct_5(Struct_2(Struct_1(u_input.a.xz, vec2<bool>(false, false), vec3<bool>(true, true, true), -2147483647i), 6085u, Struct_1(vec2<i32>(1i, u_input.a.x), vec2<bool>(true, false), vec3<bool>(true, true, true), u_input.a.x), vec2<i32>(arg_2, arg_2), vec4<i32>(u_input.a.x, arg_2, u_input.a.x, arg_2)), Struct_4(Struct_1(vec2<i32>(arg_2, 8056i), vec2<bool>(true, false), vec3<bool>(true, false, false), -1i), vec2<u32>(arg_1.x, 1u), vec3<bool>(true, true, true), vec2<u32>(4294967295u, arg_1.x), arg_2), Struct_1(vec2<i32>(-2147483647i, -31728i), vec2<bool>(false, true), vec3<bool>(true, true, false), arg_2))).zz, vec3<bool>(false, arg_0 < 207f, true), arg_2), 0u, Struct_1(_wgslsmith_clamp_vec2_i32(-u_input.a.zx, u_input.a.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(22597i, u_input.a.x), u_input.a.xy)), vec2<bool>(arg_0 != -345f, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), min(arg_2, -1i)), vec2<i32>(-abs(0i), 1i >> ((arg_1.x ^ 1u) % 32u)), _wgslsmith_add_vec4_i32(firstTrailingBit(-vec4<i32>(-1i, -1i, 66124i, u_input.a.x)), vec4<i32>(u_input.a.x, arg_2, arg_2, _wgslsmith_div_i32(arg_2, arg_2)))), Struct_1(-vec2<i32>(4459i, ~(-66594i)), vec2<bool>(any(vec4<bool>(true, true, false, false)), arg_1.x <= 1u), vec3<bool>(false, all(vec2<bool>(true, true)), false), -1i), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, u_input.a.x, 2829i) ^ vec4<i32>(u_input.a.x, 37675i, u_input.a.x, arg_2), select(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, arg_2), vec4<i32>(u_input.a.x, 25852i, 0i, arg_2), true)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, -4311i, 2147483647i), vec4<i32>(-46953i, 21822i, u_input.a.x, 0i) ^ vec4<i32>(1i, 8770i, -10998i, 0i)), u_input.a.x));
    var var_1 = _wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(~firstTrailingBit(var_0.a.b) ^ max(arg_3, var_0.a.b), 4294967295u));
    var_1 = min(6043u, 6318u);
    return var_0.a.c.b.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<f32> {
    var var_0 = max(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(~0i, u_input.a.x), -23599i), arg_1);
    let var_1 = _wgslsmith_add_vec3_i32(~u_input.a, vec3<i32>(61272i, ~2147483647i, -2147483647i));
    let var_2 = !vec4<bool>(all(vec2<bool>(true, true)), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-357f, -180f, true)), -444f)), _wgslsmith_clamp_vec3_u32(func_2(vec2<u32>(arg_0, arg_0), -935f), ~vec3<u32>(0u, arg_0, arg_0), vec3<u32>(0u, 1u, 0u) & vec3<u32>(arg_0, arg_0, arg_0)), -29259i << (~arg_0 % 32u), arg_0), -1i <= arg_1, all(vec2<bool>(true, var_1.x <= 1204i)));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, ~reverseBits(3329u), arg_0), vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 7409u, 0u, 56043u), vec4<u32>(50470u, arg_0, arg_0, 1u))), ~(~arg_0), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(0u, arg_0)), ~vec2<u32>(1u, arg_0)) & ~arg_0));
    var_0 = -u_input.a.x;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(249f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f + -1000f) * _wgslsmith_f_op_f32(-393f - -1284f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-525f, -2153f, var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(556f, _wgslsmith_f_op_f32(-338f * -1779f)), vec2<f32>(-818f, 1526f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(52204u, u_input.a.x)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1795f, 652f), vec2<f32>(1000f, 223f)))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(310f - _wgslsmith_f_op_f32(sign(331f)))))));
    let var_1 = Struct_1(vec2<i32>(i32(-1i) * -(~u_input.a.x), -32160i), vec2<bool>(true, true), vec3<bool>(true & all(vec4<bool>(true, true, true, false)), true, func_3(~firstTrailingBit(vec3<u32>(24097u, 22725u, 0u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 25173i) << (vec3<u32>(1u, 0u, 12845u) % vec3<u32>(32u))), Struct_5(Struct_2(Struct_1(vec2<i32>(-11894i, 0i), vec2<bool>(true, true), vec3<bool>(true, false, true), -25454i), 1u, Struct_1(u_input.a.xx, vec2<bool>(true, true), vec3<bool>(false, false, true), 20855i), u_input.a.zy, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_4(Struct_1(u_input.a.yz, vec2<bool>(true, false), vec3<bool>(false, true, true), -2147483647i), vec2<u32>(4294967295u, 20259u), vec3<bool>(false, false, false), vec2<u32>(0u, 1u), u_input.a.x), Struct_1(u_input.a.zy, vec2<bool>(false, false), vec3<bool>(false, false, true), -26890i))).x), abs(~0i));
    var var_2 = firstLeadingBit((vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(func_2(vec2<u32>(1u, 0u), var_0.x).x, 1u, ~50828u, _wgslsmith_mult_u32(41135u, 26526u)) % vec4<u32>(32u))) & abs(abs(~vec4<u32>(0u, 4294967295u, 4294967295u, 0u))));
    var var_3 = var_1;
    var_2 = abs(select(~vec4<u32>(0u, 37582u, var_2.x, var_2.x), _wgslsmith_sub_vec4_u32(select(vec4<u32>(17159u, var_2.x, var_2.x, 31232u), vec4<u32>(26587u, var_2.x, var_2.x, 0u), vec4<bool>(var_1.c.x, var_3.c.x, false, var_3.b.x)), vec4<u32>(0u, 1u, var_2.x, 16601u)), var_1.c.x) & countOneBits(vec4<u32>(79029u, var_2.x, var_2.x << (var_2.x % 32u), var_2.x)));
    let var_4 = Struct_1(u_input.a.yy, vec2<bool>(false, true), var_3.c, countOneBits(-22047i));
    let var_5 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-36374i, var_4.a.x, 9938i, 0i), vec4<i32>(var_5, 2147483647i, -17866i, var_5)) << (68564u % 32u), 2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-35283i, 42577i, u_input.a.x, -1i), vec4<i32>(1i, 19199i, 16160i, 2147483647i) & vec4<i32>(var_3.a.x, var_5, u_input.a.x, var_5)), (var_1.d | 1i) & _wgslsmith_sub_i32(-1i, -1i))), ~vec4<i32>(-u_input.a.x, 5081i, var_5 & -45890i, u_input.a.x) << ((firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, 20746u, var_2.x), vec4<u32>(29423u, 53306u, 86695u, var_2.x))) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_2.x, 38431u, var_2.x), ~vec4<u32>(var_2.x, 1u, var_2.x, var_2.x))) % vec4<u32>(32u)), vec3<i32>(1i, 0i, var_3.d), -54628i);
}

