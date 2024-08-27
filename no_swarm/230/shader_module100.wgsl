struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1451f, -719f))), -1468f);
    var var_1 = ~(~u_input.c);
    let var_2 = u_input.c | 5029u;
    var_1 = 1u;
    var_1 = u_input.a;
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32((vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x) << (vec4<u32>(25340u, 0u, 30818u, var_2) % vec4<u32>(32u))) >> ((vec4<u32>(4294967295u, 39368u, u_input.c, var_2) & vec4<u32>(u_input.a, u_input.c, u_input.c, 56949u)) % vec4<u32>(32u)), ~vec4<i32>(u_input.b.x, 57278i, u_input.b.x, u_input.b.x)) | ~countOneBits(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 1i)), vec4<i32>(firstLeadingBit(~(-1i) >> (var_2 % 32u)), 31939i, reverseBits(-37667i), u_input.b.x), vec4<i32>(-2147483647i, ~u_input.b.x, firstTrailingBit(_wgslsmith_sub_i32(1i, 2147483647i) & u_input.b.x), _wgslsmith_clamp_i32(-21423i, _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_mod_i32(0i, -2147483647i)), u_input.b.x)));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(func_3(), ~abs(vec2<u32>(u_input.c, ~0u)), Struct_1(true, false, abs(min(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, u_input.a)) | vec2<u32>(7359u, u_input.c)), vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 1i), -5444i, u_input.b.x, max(u_input.b.x, u_input.b.x)), ~vec3<u32>(abs(4294967295u), _wgslsmith_mod_u32(u_input.c, 0u), ~4294967295u)));
    var var_1 = ~74094u;
    var_1 = 1u;
    var_0 = Struct_2(select(var_0.a, vec4<i32>(var_0.c.d.x, abs(-17392i), _wgslsmith_add_i32(var_0.c.d.x, 36768i), u_input.b.x), true), var_0.b, Struct_1(all(!select(vec4<bool>(var_0.c.b, false, true, var_0.c.a), vec4<bool>(var_0.c.a, var_0.c.b, var_0.c.b, true), var_0.c.b)), (var_0.c.a && true) & true, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, 0u), select(var_0.b, var_0.b, var_0.c.a)), var_0.c.c), -abs(~var_0.c.d), max(var_0.c.e, vec3<u32>(u_input.c, 26578u, u_input.a) << (abs(vec3<u32>(u_input.c, 6299u, u_input.c)) % vec3<u32>(32u)))));
    var var_2 = Struct_2(vec4<i32>(1i ^ select(var_0.a.x, var_0.a.x, var_0.c.b), ~(~1i), select(-15661i, -10998i, all(vec2<bool>(var_0.c.b, var_0.c.b))), -6350i >> (min(0u, 0u) % 32u)) ^ var_0.c.d, vec2<u32>(_wgslsmith_mult_u32(~(~var_0.c.e.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(var_0.c.e.x, 34257u), vec2<bool>(true, true)), var_0.b)), 282u >> (firstTrailingBit(var_0.b.x) % 32u)), var_0.c);
    return -(~u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_1(all(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false))), !(!all(vec3<bool>(true, false, true))), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(17820u, u_input.c), vec2<u32>(25900u, 75260u), vec2<u32>(u_input.c, 93126u)) >> (countOneBits(~vec2<u32>(u_input.c, u_input.a)) % vec2<u32>(32u))), reverseBits(countOneBits(~vec4<i32>(-2147483647i, 0i, 37119i, u_input.b.x))) | -(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 20073i, arg_1.x, u_input.b.x)), _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, 829u), vec3<u32>(0u, u_input.a, u_input.c)), ~vec3<u32>(0u, 4294967295u, 673u), ~vec3<u32>(28636u, 3394u, 1u)), countOneBits(vec3<u32>(41946u, u_input.a >> (u_input.c % 32u), u_input.c & u_input.a))));
    var var_1 = Struct_3(Struct_1(!(any(vec3<bool>(false, var_0.b, var_0.a)) && (-1i <= arg_1.x)), var_0.a, vec2<u32>(_wgslsmith_mult_u32(u_input.c << (4294967295u % 32u), 1u), ~(26074u >> (u_input.c % 32u))), ~vec4<i32>(arg_1.x, select(0i, var_0.d.x, false), ~2147483647i, 0i), firstLeadingBit(var_0.e)), Struct_2(var_0.d, vec2<u32>(15681u, var_0.c.x), Struct_1(var_0.a, false, (var_0.c >> (vec2<u32>(var_0.c.x, var_0.c.x) % vec2<u32>(32u))) & max(var_0.e.zy, var_0.c), var_0.d, select(abs(var_0.e), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, var_0.c.x), var_0.e), select(var_0.b, true, var_0.b)))), Struct_1(any(vec3<bool>(var_0.a || var_0.a, false, true)), true, var_0.e.xy, _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, arg_1.x, var_0.d.x, -12441i)), vec4<i32>(-u_input.b.x, 1i, 1i, _wgslsmith_sub_i32(-1i, -19080i))), var_0.e >> (reverseBits(var_0.e) % vec3<u32>(32u))));
    var var_2 = Struct_3(Struct_1(!select(true, false, var_0.a), var_1.a.b, vec2<u32>(~var_1.c.c.x, _wgslsmith_dot_vec2_u32(var_1.a.e.zy, vec2<u32>(2292u, 0u))) ^ ~(~var_1.b.c.c), reverseBits(-countOneBits(vec4<i32>(var_0.d.x, arg_0, u_input.b.x, 16737i))), var_1.b.c.e), var_1.b, Struct_1(!(!(u_input.b.x > 1i)), select(386f <= _wgslsmith_f_op_f32(trunc(-1236f)), !(var_1.b.c.a || false), true), vec2<u32>(~0u, ~(~5563u)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, reverseBits(0i), 1i, -3222i), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0, 0i), vec3<i32>(-17163i, var_1.c.d.x, arg_1.x)), -arg_1.x, _wgslsmith_mult_i32(u_input.b.x, var_0.d.x))), vec3<u32>(~u_input.a, var_0.e.x, min(var_0.c.x, u_input.a)) ^ var_0.e));
    var var_3 = 1f;
    var_1 = Struct_3(Struct_1(var_2.b.c.a, !all(vec4<bool>(false, false, false, true)), ~(~var_1.c.c), abs(var_1.c.d), var_2.a.e), var_1.b, var_1.b.c);
    return countOneBits(reverseBits(var_2.c.d.x << (4294967295u % 32u)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(56601u, u_input.a), vec2<u32>(51137u, u_input.c), vec2<u32>(u_input.a, 92894u)), vec2<u32>(1u, 1u)), firstTrailingBit(vec2<u32>(u_input.c, 0u)) << (abs(vec2<u32>(u_input.c, u_input.a)) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(0u, 45444u));
    let var_1 = ~_wgslsmith_div_vec3_u32(~(vec3<u32>(var_0.x, u_input.c, 4294967295u) & firstTrailingBit(vec3<u32>(u_input.c, var_0.x, 4294967295u))), _wgslsmith_add_vec3_u32(~(~vec3<u32>(1536u, u_input.c, var_0.x)), firstLeadingBit(vec3<u32>(var_0.x, u_input.a, 0u))));
    let var_2 = firstLeadingBit(vec4<u32>(var_0.x, ~abs(55546u), var_0.x, _wgslsmith_mod_u32(u_input.a, 99224u)) & _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, var_1.x), vec4<u32>(1u, 1u, 4294967295u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 38484u, 0u), vec4<u32>(var_1.x, 0u, var_1.x, var_0.x))), vec4<u32>(~var_0.x, _wgslsmith_clamp_u32(11199u, 4294967295u, 4294967295u), u_input.c, 4294967295u & var_0.x)));
    let var_3 = var_1.x;
    var_0 = ~(~(~(~reverseBits(vec2<u32>(var_2.x, 35655u)))));
    return Struct_1(true, arg_0, _wgslsmith_mod_vec2_u32(vec2<u32>(~var_2.x, max(4294967295u, 1u)), vec2<u32>(var_0.x, 1u) << (firstTrailingBit(var_1.xy) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(select(var_1.xz, vec2<u32>(var_0.x, 0u), true), vec2<u32>(var_1.x, var_3) << (abs(vec2<u32>(4294967295u, var_0.x)) % vec2<u32>(32u))), func_3(), ~(~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)) << (var_2.wzz % vec3<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = Struct_2(vec4<i32>(-1i) * -vec4<i32>(arg_1.x, -47731i, firstLeadingBit(arg_1.x), 0i), vec2<u32>(0u, arg_0), func_5(!(!any(vec4<bool>(false, false, true, true))), func_4(func_2(), arg_1 & u_input.b) | 10404i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-964f, -693f))), ~(_wgslsmith_mult_i32(arg_1.x, -32401i) & -2147483647i)));
    var var_1 = _wgslsmith_div_f32(1088f, 664f);
    let var_2 = 2147483647i;
    var_0 = Struct_2(var_0.a, vec2<u32>(69241u, abs(1u & arg_0)), Struct_1(false, false, firstTrailingBit(vec2<u32>(0u, 0u) | vec2<u32>(arg_0, 20079u)), vec4<i32>(arg_1.x, 2147483647i, 5997i, -24478i), ~(~(vec3<u32>(u_input.c, arg_0, 132109u) << (var_0.c.e % vec3<u32>(32u))))));
    var_0 = Struct_2(firstTrailingBit(-(countOneBits(var_0.a) & select(var_0.a, vec4<i32>(var_2, -50234i, var_0.c.d.x, 34777i), vec4<bool>(true, true, true, true)))), ~firstTrailingBit(vec2<u32>(~var_0.c.c.x, firstTrailingBit(var_0.b.x))), Struct_1(var_0.c.a, false, _wgslsmith_add_vec2_u32(var_0.b, vec2<u32>(var_0.b.x, var_0.b.x)), -_wgslsmith_sub_vec4_i32(var_0.a, var_0.a), var_0.c.e));
    return vec4<i32>(-1i, -func_3().x, -1829i, select(_wgslsmith_add_i32(arg_1.x, 8713i), -58159i, true && (func_5(var_0.c.a, 54876i, -439f, 25260i).a && true)));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<bool>(arg_1.b, false, arg_0);
    var var_1 = Struct_3(arg_2.a, Struct_2(~reverseBits(reverseBits(vec4<i32>(21183i, -37918i, arg_2.a.d.x, -1i))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 52373u), arg_2.b.b & arg_1.e.xz, arg_1.e.xy & arg_2.c.c), arg_2.c), Struct_1(arg_2.b.c.a, false, select(vec2<u32>(_wgslsmith_add_u32(arg_2.c.e.x, arg_1.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(24003u, 12964u, arg_2.c.c.x), arg_2.c.e)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_2.a.e.x), arg_2.b.b), vec2<bool>(arg_2.c.b, all(vec4<bool>(arg_2.b.c.a, true, false, false)))), vec4<i32>(0i, _wgslsmith_mult_i32(-29075i, -arg_1.d.x), ~arg_2.b.a.x, -u_input.b.x | firstTrailingBit(arg_2.b.c.d.x)), arg_1.e));
    let var_2 = var_1.b.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f));
    var_1 = arg_2;
    return Struct_1(any(select(!select(vec4<bool>(true, arg_1.b, arg_2.b.c.a, true), vec4<bool>(arg_0, arg_0, true, arg_0), arg_0), select(select(vec4<bool>(arg_1.a, arg_1.a, arg_0, var_1.a.a), vec4<bool>(false, false, true, arg_0), true), !vec4<bool>(arg_2.c.b, false, true, false), all(vec2<bool>(var_1.a.a, false))), var_0.x)), select(arg_1.b, select(true, var_2.b, var_0.x | false) && !(arg_1.a | arg_1.b), !arg_0), countOneBits(var_1.c.e.yy), arg_1.d, vec3<u32>(~var_1.a.e.x, 50205u, u_input.c | 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -12542i;
    let var_1 = u_input.b.x;
    let var_2 = func_6(true, Struct_1(!all(vec2<bool>(false, true)), true, vec2<u32>(u_input.a, 0u) ^ ~abs(vec2<u32>(u_input.c, 4294967295u)), func_1(~1u, u_input.b) & vec4<i32>(-29861i, -u_input.b.x, ~14691i, -var_0), ~(~(vec3<u32>(7478u, u_input.c, 0u) ^ vec3<u32>(1u, 66182u, 0u)))), Struct_3(Struct_1(true, u_input.a != ~u_input.a, ~vec2<u32>(u_input.a, u_input.c), countOneBits(vec4<i32>(var_0, 0i, -1i, u_input.b.x)), vec3<u32>(~38292u, max(u_input.c, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(4294967295u, 140u)))), Struct_2(~(vec4<i32>(var_0, var_1, -16798i, var_0) & vec4<i32>(u_input.b.x, u_input.b.x, var_1, var_0)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 69463u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 43190u), vec2<u32>(0u, 48162u), vec2<u32>(3374u, u_input.c))), Struct_1(all(vec3<bool>(false, true, true)), select(false, false, true), ~vec2<u32>(u_input.c, u_input.a), -vec4<i32>(var_0, -23457i, 2147483647i, 0i), vec3<u32>(4294967295u, 43121u, u_input.c) >> (vec3<u32>(u_input.c, 4294967295u, u_input.a) % vec3<u32>(32u)))), func_5(true, -reverseBits(var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 261f), -1156f), var_0)), 44601u);
    let var_3 = func_6(false & !(_wgslsmith_sub_u32(var_2.c.x, 36365u) == (u_input.a << (u_input.a % 32u))), var_2, Struct_3(var_2, Struct_2(var_2.d, ~vec2<u32>(4294967295u, 4294967295u), Struct_1(!var_2.b, select(true, var_2.b, var_2.a), vec2<u32>(u_input.c, var_2.c.x), var_2.d, ~var_2.e)), func_6(all(select(vec4<bool>(var_2.b, false, false, false), vec4<bool>(var_2.b, false, true, true), vec4<bool>(true, var_2.b, false, true))), Struct_1(u_input.a < 1u, 24465u >= var_2.c.x, func_6(false, var_2, Struct_3(var_2, Struct_2(vec4<i32>(62101i, var_2.d.x, 0i, 25199i), vec2<u32>(var_2.c.x, u_input.c), var_2), Struct_1(var_2.b, var_2.a, vec2<u32>(36174u, u_input.a), var_2.d, var_2.e)), u_input.c).e.yx, _wgslsmith_mod_vec4_i32(var_2.d, vec4<i32>(var_1, 34617i, var_0, u_input.b.x)), var_2.e), Struct_3(var_2, Struct_2(vec4<i32>(31657i, var_0, 1946i, -38684i), var_2.c, var_2), func_5(false, -1i, 1233f, 0i)), _wgslsmith_mod_u32(38799u, u_input.a) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, 7639u), var_2.c))), var_2.e.x >> (41613u % 32u)).d.yzw;
    let var_4 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, 0i), max(1i, var_1), 1i, u_input.b.x ^ 0i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(56508u, var_2.e.x, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.e.x, u_input.a, 32075u, var_2.c.x), vec4<u32>(u_input.c, u_input.c, 4294967295u, var_2.c.x))) % vec4<u32>(32u)), reverseBits(vec4<i32>(~var_0, i32(-1i) * -2147483647i, -2147483647i, u_input.b.x ^ var_0)), ~firstTrailingBit(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, var_3.x)) ^ _wgslsmith_add_vec4_i32(select(var_2.d, vec4<i32>(-1i, -1i, var_3.x, -52597i), var_2.a), firstTrailingBit(var_2.d))), var_2.c, func_6(any(select(vec3<bool>(true, false, var_2.b), !vec3<bool>(var_2.a, var_2.b, var_2.b), select(var_2.a, var_2.b, true))), var_2, Struct_3(func_5(select(var_2.a, var_2.b, var_2.a), _wgslsmith_add_i32(var_3.x, -48217i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1), Struct_2(vec4<i32>(-29687i, u_input.b.x, -1i, -22902i), firstTrailingBit(vec2<u32>(u_input.a, 4294967295u)), Struct_1(var_2.b, false, var_2.e.xy, vec4<i32>(var_0, u_input.b.x, 50116i, 32597i), vec3<u32>(var_2.e.x, u_input.a, var_2.e.x))), var_2), var_2.c.x));
    var var_5 = !(!(func_6(var_4.c.b & var_4.c.a, var_4.c, Struct_3(var_4.c, Struct_2(var_2.d, vec2<u32>(19750u, var_4.c.e.x), var_4.c), var_4.c), ~var_4.c.e.x).b || !var_4.c.a));
    var var_6 = vec2<i32>(~func_3().x, -(~var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, countOneBits(i32(-1i) * -1i), -var_1, ~(~(-48617i))), ~var_2.e.x, _wgslsmith_add_u32(0u, var_2.e.x) & u_input.a, min(vec2<u32>(~var_4.c.c.x, 0u), var_4.b), u_input.c);
}

