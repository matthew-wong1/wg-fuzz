struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_3) -> bool {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-1000f - arg_1);
    let var_2 = -vec2<i32>(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(-21323i, var_0.x, 2147483647i)), countOneBits(var_0.ywx) ^ abs(vec3<i32>(arg_2.x, 0i, -40457i))), -24098i);
    let var_3 = !vec2<bool>(arg_0.c, !(!(arg_0.c || false)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_3.a.a)));
    return true;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_0), _wgslsmith_f_op_f32(sign(arg_0)))), ~vec4<u32>(abs(u_input.b), 0u, abs(46272u), ~(0u & u_input.b)));
    let var_1 = u_input.c;
    var var_2 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2562f, _wgslsmith_f_op_f32(-var_0.a.a.x))), arg_0, false, ~abs(firstLeadingBit(vec4<u32>(15445u, var_0.b.x, 0u, var_0.b.x)))), -604f, vec4<i32>(var_1.x, ~_wgslsmith_mult_i32(u_input.c.x, u_input.a.x), var_1.x, _wgslsmith_add_i32(var_1.x, 15033i)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(-12722i, -30724i, var_1.x, -58583i) | vec4<i32>(-2147483647i, -25350i, u_input.d.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 14638i, var_1.x, 49579i), vec4<i32>(var_1.x, -2147483647i, u_input.d.x, u_input.c.x))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, 28007u), min(vec4<u32>(36802u, 21538u, 58730u, var_0.b.x), vec4<u32>(u_input.b, u_input.b, var_0.b.x, var_0.b.x))) % vec4<u32>(32u))), var_0);
    let var_3 = vec4<bool>(all(select(vec2<bool>(select(true, false, false), -350f > arg_1), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), func_3(Struct_1(var_0.a.a, arg_0, false, var_0.b), -1000f, vec4<i32>(var_1.x, u_input.c.x, var_1.x, var_1.x), Struct_3(Struct_2(vec2<f32>(arg_0, 340f)), var_0.b))), ~u_input.b < u_input.b)), any(!vec4<bool>(true, select(false, true, false), func_3(Struct_1(vec2<f32>(arg_1, arg_0), arg_1, false, var_0.b), -1159f, vec4<i32>(-1i, u_input.c.x, 51469i, var_1.x), Struct_3(var_0.a, var_0.b)), false)), true, false);
    let var_4 = Struct_4(-countOneBits(_wgslsmith_div_i32(var_1.x, var_1.x >> (1u % 32u))));
    return -u_input.d;
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = ~(~vec2<u32>(_wgslsmith_mult_u32(~4294967295u, 1u), _wgslsmith_clamp_u32(~3082u, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), abs(1u))));
    let var_1 = min(_wgslsmith_div_vec4_i32(~(~reverseBits(vec4<i32>(11525i, arg_0.x, 0i, arg_0.x))), vec4<i32>(-1i, min(arg_0.x, -21176i), i32(-1i) * -45622i, select(0i, ~arg_0.x, true))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a.x, 8457i, u_input.c.x) | vec4<i32>(2147483647i, 0i, 1i, 13910i), ~vec4<i32>(12456i, u_input.a.x, arg_0.x, 28391i), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(11100i, arg_0.x, 72176i, u_input.a.x)), vec4<i32>(1i, 6028i, 1i, arg_0.x) ^ vec4<i32>(-13255i, arg_0.x, arg_0.x, u_input.d.x))), -abs(vec4<i32>(0i, -2147483647i, u_input.c.x, u_input.c.x)) << (reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_0.x, 1u), vec4<u32>(102909u, u_input.b, u_input.b, 1633u), vec4<u32>(var_0.x, 4294967295u, u_input.b, var_0.x))) % vec4<u32>(32u)), max(~vec4<i32>(u_input.d.x, u_input.d.x, -14025i, -1i) | vec4<i32>(17477i, arg_0.x, u_input.a.x, 2147483647i), ~vec4<i32>(u_input.a.x, 0i, 2147483647i, 28830i))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1460f, 309f), vec2<f32>(-2114f, 203f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, 464f))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_2.d.x;
    let var_1 = !select(!vec2<bool>(arg_2.c, true && arg_2.c), vec2<bool>(true, arg_2.c), vec2<bool>(false, arg_2.c));
    var_0 = ~u_input.b;
    let var_2 = ~select(~_wgslsmith_mod_vec4_u32(~arg_2.d, _wgslsmith_mod_vec4_u32(vec4<u32>(24905u, 0u, u_input.b, 0u), arg_2.d)), _wgslsmith_mult_vec4_u32(~arg_2.d, arg_2.d), !(!vec4<bool>(true, true, arg_2.c, arg_2.c)));
    let var_3 = Struct_4(~countOneBits(u_input.c.x));
    return arg_1;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> bool {
    let var_0 = Struct_3(func_5(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, 27398u) ^ vec3<u32>(1u, 21915u, 43938u)), max(vec3<u32>(u_input.b, u_input.b, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 33471u, 0u), vec3<u32>(u_input.b, u_input.b, 1u))), vec3<u32>(u_input.b, abs(4294967295u), ~u_input.b)), func_4(_wgslsmith_div_vec3_i32(min(u_input.c, vec3<i32>(23701i, arg_1.a, arg_1.a)), func_2(arg_2, -479f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, arg_2)))), 908f, true, abs(~vec4<u32>(u_input.b, 0u, 4294967295u, 30136u))), Struct_4(max(-15414i, -24110i))), ~((~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) | ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)) & (min(vec4<u32>(1u, u_input.b, 48535u, 93960u), vec4<u32>(0u, u_input.b, 1u, u_input.b)) >> (vec4<u32>(44000u, u_input.b, 32348u, u_input.b) % vec4<u32>(32u)))));
    var var_1 = vec2<i32>(0i, u_input.c.x);
    var var_2 = min(~31794i, 2147483647i);
    var_2 = -2147483647i;
    let var_3 = vec3<u32>(~countOneBits(49580u), countOneBits(~reverseBits(reverseBits(8367u))), 0u);
    return all(vec3<bool>(true, true, true));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(-(~1i));
    var var_1 = Struct_3(func_5(~vec3<u32>(arg_3.d.x >> (u_input.b % 32u), ~0u, _wgslsmith_mult_u32(16211u, arg_3.d.x)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(592f, arg_2.a.x) * arg_2.a))), Struct_1(_wgslsmith_div_vec2_f32(arg_2.a, _wgslsmith_f_op_vec2_f32(-arg_3.a)), -1100f, true, vec4<u32>(arg_3.d.x << (18271u % 32u), _wgslsmith_clamp_u32(4294967295u, 0u, arg_3.d.x), arg_3.d.x, 11972u)), Struct_4(var_0.a)), ~(~arg_3.d));
    var_1 = Struct_3(func_4(vec3<i32>(var_0.a, _wgslsmith_dot_vec3_i32(u_input.c, ~vec3<i32>(-74523i, 21101i, var_0.a)), var_0.a)), _wgslsmith_add_vec4_u32(abs(~abs(var_1.b)), ~var_1.b));
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(20336i, _wgslsmith_mult_i32(1i, 1i), func_2(_wgslsmith_f_op_f32(1646f + -1471f), 2559f).x);
    var var_3 = func_5(var_1.b.zxy, Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(369f, 387f), arg_0.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(632f, -1401f), arg_2.a, arg_1))))))), Struct_1(arg_2.a, -526f, any(select(select(vec4<bool>(arg_3.c, arg_3.c, true, true), vec4<bool>(true, arg_3.c, true, false), vec4<bool>(arg_1.x, true, false, false)), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false), true), false)), vec4<u32>(arg_3.d.x, min(u_input.b, ~20925u), ~0u, var_1.b.x)), Struct_4(-var_2.x));
    return arg_3;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(func_5(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 36301u, u_input.b)), vec3<u32>(~arg_0.d.x, arg_0.d.x, ~u_input.b)), func_4(-firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x))), func_6(Struct_2(arg_0.a), vec2<bool>(false, true), Struct_2(vec2<f32>(arg_0.a.x, arg_0.b)), func_6(Struct_2(vec2<f32>(-2068f, arg_0.a.x)), vec2<bool>(arg_0.c, arg_0.c), func_5(vec3<u32>(15271u, 4294967295u, 44019u), Struct_2(vec2<f32>(125f, arg_0.a.x)), arg_0, Struct_4(-4306i)), func_6(Struct_2(vec2<f32>(arg_0.b, arg_0.b)), vec2<bool>(arg_0.c, arg_0.c), Struct_2(arg_0.a), Struct_1(arg_0.a, arg_0.b, arg_0.c, vec4<u32>(0u, arg_0.d.x, u_input.b, 22540u))))), Struct_4(1i)), ~((vec4<u32>(arg_0.d.x, u_input.b, u_input.b, 3441u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, arg_0.d.x, 4294967295u), arg_0.d) % vec4<u32>(32u))) & arg_0.d));
    let var_1 = var_0.a;
    let var_2 = func_6(func_4(u_input.d), !vec2<bool>(false, arg_0.c), func_5(var_0.b.ywx, var_1, func_6(func_5(~vec3<u32>(4294967295u, u_input.b, 4294967295u), func_5(vec3<u32>(21545u, arg_0.d.x, u_input.b), Struct_2(vec2<f32>(arg_0.a.x, -106f)), arg_0, Struct_4(1i)), arg_0, Struct_4(u_input.a.x)), !vec2<bool>(true, arg_0.c), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.a.x, -451f), vec2<f32>(arg_0.a.x, 149f))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -141f), true, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.b.x, var_0.b.x, 1413u), vec4<u32>(29108u, u_input.b, u_input.b, arg_0.d.x)))), Struct_4(func_2(var_0.a.a.x, _wgslsmith_f_op_f32(var_1.a.x - -832f)).x)), func_6(var_1, select(select(!vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, arg_0.c)), vec2<bool>(arg_0.c, arg_0.c)), !vec2<bool>(false, arg_0.c), min(33925u, 12243u) != u_input.b), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(789f, arg_0.a.x) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-533f, arg_0.a.x))))), func_6(var_1, vec2<bool>(arg_0.c, func_6(var_0.a, vec2<bool>(arg_0.c, true), Struct_2(var_0.a.a), Struct_1(vec2<f32>(310f, 333f), -144f, arg_0.c, vec4<u32>(0u, var_0.b.x, 60683u, 0u))).c), Struct_2(vec2<f32>(-339f, arg_0.a.x)), Struct_1(arg_0.a, _wgslsmith_f_op_f32(ceil(var_0.a.a.x)), arg_0.c & arg_0.c, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, var_0.b.x), vec4<u32>(16639u, arg_0.d.x, 66051u, 40520u))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(520f + 1001f)), var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1022f - func_5(~vec3<u32>(var_0.b.x, 16471u, 9532u), var_0.a, arg_0, Struct_4(38344i)).a.x) - var_2.b), func_3(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(1000f * -209f))), ~countOneBits(reverseBits(vec4<i32>(u_input.d.x, -2147483647i, u_input.c.x, u_input.c.x))), Struct_3(var_1, _wgslsmith_div_vec4_u32(vec4<u32>(13157u, var_0.b.x, 36718u, 74001u) & arg_0.d, vec4<u32>(7588u, 0u, var_2.d.x, 34503u)))), _wgslsmith_div_vec4_u32(arg_0.d, _wgslsmith_div_vec4_u32(var_0.b, _wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(0u, u_input.b, arg_0.d.x, 25269u)) >> (_wgslsmith_mult_vec4_u32(arg_0.d, var_2.d) % vec4<u32>(32u)))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = -max(vec4<i32>(_wgslsmith_mod_i32(0i, abs(arg_1.a)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, u_input.d.x, arg_1.a, 8970i), vec4<i32>(-1i, -2147483647i, -2147483647i, arg_1.a)), ~select(-41953i, -1i, arg_0.c), -2147483647i), vec4<i32>(1i, -29539i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, 0i, -30362i), countOneBits(arg_1.a)), 13866i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))) * -1886f);
    return func_7(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), false, select(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 3027u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), ~vec4<u32>(arg_0.d.x, 0u, 28555u, 19381u), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_6(Struct_2(vec2<f32>(418f, 763f)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, 625f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-905f, -130f)), _wgslsmith_f_op_f32(step(-1131f, 654f)), func_1(Struct_4(-15099i), Struct_4(u_input.a.x), -983f), vec4<u32>(1u, u_input.b, 4294967295u, 1u) | vec4<u32>(u_input.b, u_input.b, 23107u, u_input.b)))), Struct_4(abs(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.d))), all(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    let var_1 = Struct_3(func_5(vec3<u32>(u_input.b, _wgslsmith_mult_u32(var_0.d.x, ~1u), ~(~57597u)), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(var_0.a))), var_0, Struct_4(-u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>((u_input.b << (u_input.b % 32u)) | ~u_input.b, var_0.d.x, var_0.d.x, u_input.b & var_0.d.x), ~var_0.d));
    var var_2 = 1i;
    let var_3 = 0u;
    let var_4 = var_0;
    var var_5 = vec3<i32>(9023i, 0i, -49863i);
    var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(var_4.d.wz, ~vec2<u32>(4294967295u, 4294967295u)), ~firstTrailingBit(var_1.b.x), ~81703u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_3, u_input.b, 68850u), vec4<u32>(33995u, 8136u, u_input.b, 8521u)) ^ _wgslsmith_add_u32(~21306u, func_6(Struct_2(vec2<f32>(-523f, var_0.b)), vec2<bool>(var_0.c, var_0.c), var_1.a, var_4).d.x)), vec3<i32>(-1i, _wgslsmith_add_i32(9755i, u_input.d.x), 0i), reverseBits(var_4.d.zyz), ~_wgslsmith_mult_vec2_i32(u_input.d.yz, -(vec2<i32>(0i, var_5.x) >> (vec2<u32>(16973u, 41270u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(step(var_1.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_1.a.a, vec2<f32>(var_0.b, -103f)), vec2<f32>(-166f, var_1.a.a.x), var_0.c))))));
}

