struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1636f, 4294967295u, 0u, vec3<u32>(0u, 1u, 0u), vec3<bool>(false, true, false));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(abs(arg_2.d.zz), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~global0.d.zx, reverseBits(arg_3.d.yz)), arg_3.d.yy)), Struct_1(_wgslsmith_f_op_f32(min(arg_2.a, arg_3.a)), u_input.a, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(arg_3.d.xx), global0.d.xx)), select(~arg_2.d, ~arg_2.d, all(arg_0)) & abs(vec3<u32>(18390u, arg_2.b, global0.d.x)), select(arg_3.e, vec3<bool>(any(vec4<bool>(true, false, arg_2.e.x, arg_3.e.x)), arg_3.a > -485f, !global0.e.x), vec3<bool>(all(arg_0.yx), all(vec3<bool>(false, global0.e.x, arg_0.x)), true))), arg_1.x, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, reverseBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.x, 1i, -71100i), ~vec4<i32>(arg_1.x, -11202i, arg_1.x, arg_1.x))), vec4<i32>(-1i) * -countOneBits(vec4<i32>(2147483647i, -2147483647i, arg_1.x, arg_1.x))));
    var_0 = Struct_2(1u, arg_2, var_0.c, -var_0.d & ~var_0.d);
    global0 = arg_3;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, _wgslsmith_f_op_f32(-var_0.b.a)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-arg_3.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1799f * arg_2.a)), arg_3.a)), vec2<f32>(714f, _wgslsmith_f_op_f32(round(1062f))));
    var_0 = Struct_2(_wgslsmith_mod_u32((_wgslsmith_dot_vec3_u32(global0.d, arg_3.d) ^ abs(arg_2.d.x)) & ~(~0u), var_0.a), Struct_1(1000f, 0u, abs(arg_3.d.x), ~global0.d, !vec3<bool>(any(arg_0.xzx), arg_3.e.x, true)), var_0.d.x, _wgslsmith_mult_vec4_i32(abs(~(vec4<i32>(-41901i, 1i, 1i, var_0.d.x) << (vec4<u32>(u_input.a, arg_2.c, 4294967295u, arg_2.b) % vec4<u32>(32u)))), vec4<i32>(arg_1.x, arg_1.x | arg_1.x, arg_1.x, var_0.d.x >> (0u % 32u)) << (vec4<u32>(select(34784u, 1u, var_0.b.e.x), reverseBits(0u), global0.d.x, u_input.a) % vec4<u32>(32u))));
    return max(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_div_u32(arg_2.d.x, arg_3.d.x), global0.c, _wgslsmith_mult_u32(u_input.a, 21191u)) ^ _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(23965u, global0.c, 1u, 0u)), select(vec4<u32>(arg_3.c, 4294967295u, 1u, 0u), vec4<u32>(arg_3.b, 4294967295u, 0u, 0u), true)), ~(~(~vec4<u32>(30644u, 94526u, arg_3.c, arg_3.b)))), u_input.a);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    let var_0 = global0.d.yz;
    var var_1 = max(~global0.d.yy, vec2<u32>(~(~1u), abs(var_0.x))) ^ (_wgslsmith_add_vec2_u32(vec2<u32>(func_3(vec4<bool>(true, global0.e.x, arg_3.e.x, arg_3.e.x), vec3<i32>(7622i, arg_1.x, arg_1.x), arg_3, Struct_1(global0.a, global0.d.x, var_0.x, vec3<u32>(34636u, var_0.x, 4294967295u), vec3<bool>(arg_2, global0.e.x, arg_3.e.x))), ~global0.b), firstTrailingBit(vec2<u32>(20942u, arg_3.d.x) & vec2<u32>(global0.c, 44948u))) & ~(~abs(vec2<u32>(arg_3.d.x, 1u))));
    var var_2 = Struct_2(~(~firstLeadingBit(u_input.a)) >> (arg_3.d.x % 32u), Struct_1(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1251f), select(true, true, any(vec4<bool>(true, arg_2, global0.e.x, arg_2))))), reverseBits(var_1.x), u_input.a, global0.d, arg_3.e), 2147483647i, _wgslsmith_div_vec4_i32(vec4<i32>(~41648i, -23540i, arg_1.x, -arg_1.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, 9574i, arg_1.x, 2147483647i)) ^ 46339i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -4443i, arg_1.x, -6806i), vec4<i32>(arg_1.x, -31066i, arg_1.x, 27335i)), ~reverseBits(-6921i), -29037i)));
    let var_3 = ~(~(~max(-12127i, var_2.c)) << (firstLeadingBit(arg_3.b >> (global0.b % 32u)) % 32u));
    var var_4 = _wgslsmith_f_op_f32(min(-1123f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-487f, _wgslsmith_f_op_f32(abs(global0.a))))))));
    return Struct_3(var_3, var_2.b.d.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-337f, arg_3.a, false)) + _wgslsmith_f_op_f32(round(-281f))) * var_2.b.a) - -503f), arg_3);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -375f);
    var var_1 = Struct_3(-select(func_2(any(arg_0.d.e), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a, -10458i), vec2<i32>(63186i, arg_0.a)), true, Struct_1(arg_0.d.a, 0u, 30138u, vec3<u32>(u_input.a, 0u, 34868u), arg_0.d.e)).a, arg_1, false), arg_0.b, 264f, arg_0.d);
    let var_2 = func_2(any(vec2<bool>(!arg_0.d.e.x, false)) == (select(false, !var_1.d.e.x, arg_0.d.e.x) || !(479f != var_0)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a, -1i), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(var_1.a, 2147483647i) << (vec2<u32>(77585u, u_input.a) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_1), vec2<i32>(var_1.a, arg_0.a), vec2<i32>(var_1.a, arg_1)), -vec2<i32>(var_1.a, 30180i)))), any(select(vec4<bool>(var_1.d.e.x, true, true, arg_0.d.e.x), !vec4<bool>(global0.e.x, var_1.d.e.x, true, true), var_1.d.e.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1324f, 219f)), ~(~(~56848u)), _wgslsmith_add_u32(arg_0.d.d.x, var_1.b.x), ~vec3<u32>(_wgslsmith_mod_u32(36855u, 1u), arg_0.d.b, arg_2 & arg_0.d.c), vec3<bool>(arg_0.d.e.x, true, _wgslsmith_dot_vec3_u32(global0.d, vec3<u32>(global0.c, 4294967295u, 55432u)) <= _wgslsmith_div_u32(global0.d.x, 1u)))).d;
    let var_3 = var_2.e.yy;
    var_1 = Struct_3(-2147483647i, ~(~(~_wgslsmith_sub_vec2_u32(var_2.d.xx, vec2<u32>(arg_0.d.c, 3299u)))), -591f, func_2(var_3.x, firstTrailingBit(vec2<i32>(~arg_1, var_1.a)), arg_0.d.e.x, Struct_1(628f, countOneBits(59194u), 0u, abs(~arg_0.d.d), var_2.e)).d);
    return arg_0.d;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = -60684i;
    let var_1 = vec3<f32>(1316f, -669f, _wgslsmith_f_op_f32(1305f - 494f));
    var var_2 = ~(~(~(~arg_0.xw)));
    let var_3 = vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(countOneBits(arg_2.b.d), vec3<u32>(firstLeadingBit(~1237u), arg_0.x, var_2.x)), global0.b);
    let var_4 = 30525i;
    return Struct_3(var_4 & var_4, _wgslsmith_mod_vec2_u32(arg_0.zz, vec2<u32>(~(~5976u), _wgslsmith_dot_vec3_u32(vec3<u32>(6827u, u_input.a, arg_2.a), ~vec3<u32>(arg_0.x, arg_0.x, u_input.a)))), _wgslsmith_f_op_f32(arg_2.b.a + 1646f), arg_2.b);
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_mult_u32(u_input.a, 4294967295u);
    let var_2 = 1u;
    let var_3 = func_2(all(func_5(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, 1u), vec4<u32>(0u, var_1, global0.d.x, var_2)), -vec2<i32>(1i, 1i), Struct_2(func_5(vec4<u32>(global0.d.x, global0.d.x, 1u, arg_1.d.d.x), vec2<i32>(2147483647i, arg_2), Struct_2(var_1, Struct_1(arg_3.x, 4294967295u, arg_1.b.x, global0.d, global0.e), 40299i, vec4<i32>(25576i, -37041i, -1i, arg_1.a))).b.x, arg_1.d, 4657i, ~vec4<i32>(arg_2, arg_2, 2147483647i, 2147483647i))).d.e.yx), vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(2147483647i), ~arg_2), _wgslsmith_add_i32(44157i, _wgslsmith_clamp_i32(-13632i, arg_2, arg_2))) << (~vec2<u32>(var_1, u_input.a) % vec2<u32>(32u)), global0.e.x, func_5(~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 31754u, arg_1.d.c, 1u), vec4<u32>(global0.c, var_1, global0.c, 4294967295u))), -countOneBits(-vec2<i32>(arg_2, -3306i)), Struct_2(var_1, Struct_1(_wgslsmith_f_op_f32(-arg_3.x), 1u, _wgslsmith_mult_u32(0u, global0.d.x), func_4(arg_1, arg_1.a, global0.b).d, vec3<bool>(true, true, true)), arg_2, ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, -47762i, arg_2, arg_1.a), vec4<i32>(0i, arg_1.a, arg_1.a, arg_2)))).d).d.e;
    let var_4 = reverseBits(_wgslsmith_add_vec3_u32(reverseBits(arg_1.d.d | global0.d), func_2(true, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -19396i), vec2<i32>(arg_1.a, -2147483647i), vec2<i32>(arg_1.a, arg_2)), 21854u == arg_1.b.x, func_4(Struct_3(arg_1.a, arg_1.d.d.xy, -1016f, arg_1.d), 2896i, u_input.a)).d.d)) & _wgslsmith_div_vec3_u32(~vec3<u32>(30640u, 4294967295u, 92u), _wgslsmith_mult_vec3_u32(arg_1.d.d, global0.d));
    return Struct_2(_wgslsmith_div_u32(54577u, ~0u), Struct_1(func_5(min(vec4<u32>(1u, global0.c, u_input.a, 5499u), vec4<u32>(23736u, u_input.a, 84610u, 1u) >> (vec4<u32>(u_input.a, 60102u, arg_1.d.c, global0.d.x) % vec4<u32>(32u))), ~vec2<i32>(arg_1.a, 39455i), Struct_2(25086u, func_2(false, vec2<i32>(-42446i, 0i), true, arg_1.d).d, 1i, select(vec4<i32>(arg_1.a, arg_2, -1989i, -26023i), vec4<i32>(arg_2, 1i, arg_2, arg_1.a), true))).c, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_4, global0.d), vec3<u32>(arg_1.b.x, 74949u, 5996u)), var_2, arg_1.d.d, select(func_4(Struct_3(-54905i, vec2<u32>(arg_1.b.x, global0.b), -899f, Struct_1(arg_3.x, 1u, 4294967295u, arg_1.d.d, vec3<bool>(false, true, true))), -2147483647i, 1u).e, select(select(vec3<bool>(false, false, true), vec3<bool>(var_3.x, var_3.x, var_3.x), arg_1.d.e.x), func_4(Struct_3(arg_2, vec2<u32>(var_4.x, u_input.a), 448f, Struct_1(arg_3.x, 64209u, var_4.x, global0.d, var_3)), -26046i, 76075u).e, true), true)), arg_1.a, ~vec4<i32>(_wgslsmith_mult_i32(38094i, arg_2), _wgslsmith_mod_i32(arg_2, arg_1.a), arg_2 << (u_input.a % 32u), 1i) | abs(-vec4<i32>(arg_1.a, -52118i, -1i, arg_2)));
}

fn func_1() -> Struct_2 {
    var var_0 = func_6(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2101f)), _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(global0.a - global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -1429f))))), func_5(~(~vec4<u32>(global0.d.x, 4294967295u, 1u, 40045u)), abs(vec2<i32>(1i, 1i)), Struct_2(abs(u_input.a), func_4(func_2(true, vec2<i32>(-2147483647i, -1i), global0.e.x, Struct_1(global0.a, 1u, u_input.a, vec3<u32>(9659u, u_input.a, u_input.a), global0.e)), _wgslsmith_dot_vec3_i32(vec3<i32>(9580i, -22832i, -12399i), vec3<i32>(35889i, 38703i, -6264i)), u_input.a), 1i, vec4<i32>(2147483647i, -70176i, 2147483647i, -26321i) << ((vec4<u32>(90925u, 61195u, 6286u, 0u) ^ vec4<u32>(global0.c, 0u, global0.c, u_input.a)) % vec4<u32>(32u)))), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-669f)), _wgslsmith_f_op_f32(1453f + global0.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1974f, global0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1000f))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), var_0.b.d.x, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(26091u, ~u_input.a, 0u)), var_0.b.d), global0.d, func_2(false, vec2<i32>(-1i, countOneBits(func_6(-120f, Struct_3(var_0.c, vec2<u32>(var_0.a, global0.c), 169f, var_0.b), var_0.c, vec2<f32>(global0.a, -376f)).d.x)), all(global0.e), Struct_1(-2264f, var_0.a << (select(1u, 11693u, global0.e.x) % 32u), countOneBits(_wgslsmith_mult_u32(global0.d.x, 17873u)), vec3<u32>(u_input.a | u_input.a, u_input.a >> (global0.b % 32u), func_5(vec4<u32>(0u, var_0.b.b, var_0.b.c, var_0.a), vec2<i32>(var_0.c, var_0.c), Struct_2(global0.c, Struct_1(var_0.b.a, 16599u, 22579u, var_0.b.d, vec3<bool>(false, true, var_0.b.e.x)), 40820i, vec4<i32>(2147483647i, -28270i, var_0.d.x, var_0.c))).d.d.x), func_6(_wgslsmith_f_op_f32(-541f + var_0.b.a), func_2(var_0.b.e.x, var_0.d.xx, true, Struct_1(-230f, global0.b, u_input.a, vec3<u32>(var_0.b.d.x, 0u, 34251u), vec3<bool>(var_0.b.e.x, false, var_0.b.e.x))), -2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1989f, 627f) - vec2<f32>(-595f, var_0.b.a))).b.e)).d.e);
    var_0 = Struct_2(global0.b, Struct_1(-2159f, _wgslsmith_add_u32(reverseBits(~13118u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0.c), vec2<u32>(var_0.b.b, u_input.a))), 4294967295u, func_4(Struct_3(reverseBits(var_0.d.x), var_0.b.d.xx, -741f, Struct_1(global0.a, 1u, u_input.a, global0.d, var_0.b.e)), func_2(!global0.e.x, vec2<i32>(4582i, -1i), global0.a >= var_0.b.a, func_4(Struct_3(var_0.c, var_0.b.d.zy, -869f, var_0.b), -1i, 0u)).a, min(var_0.a, var_0.a)).d, var_0.b.e), 0i, firstLeadingBit(var_0.d));
    global0 = var_0.b;
    var var_1 = ~u_input.a;
    return func_6(func_5(vec4<u32>(~(~23630u), ~u_input.a, reverseBits(4036u), 1u), _wgslsmith_add_vec2_i32(var_0.d.ww, vec2<i32>(-4341i, ~2147483647i)), Struct_2(_wgslsmith_dot_vec3_u32(func_4(Struct_3(var_0.d.x, vec2<u32>(0u, 23933u), 591f, var_0.b), var_0.d.x, 0u).d, var_0.b.d), var_0.b, var_0.c, vec4<i32>(firstTrailingBit(var_0.c), ~var_0.d.x, func_2(global0.e.x, vec2<i32>(2147483647i, var_0.d.x), global0.e.x, var_0.b).a, var_0.d.x))).c, Struct_3(-1i, (~global0.d.zz >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.c, 6945u), global0.d.zy, vec2<u32>(21122u, var_0.a)) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a | 15727u, func_3(vec4<bool>(false, var_0.b.e.x, global0.e.x, true), vec3<i32>(44450i, 39408i, -20105i), var_0.b, var_0.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(1306f - 1f), func_4(func_5(~vec4<u32>(4294967295u, var_0.a, global0.b, 1u), vec2<i32>(var_0.c, 13854i) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), func_6(var_0.b.a, Struct_3(var_0.d.x, vec2<u32>(global0.c, u_input.a), var_0.b.a, var_0.b), var_0.c, vec2<f32>(-511f, global0.a))), var_0.d.x & (var_0.d.x ^ var_0.d.x), ~(~global0.b))), func_5(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 48447u, global0.d.x)), vec4<u32>(1u, u_input.a, global0.d.x, u_input.a)), ~vec2<i32>(13166i, ~var_0.d.x), Struct_2(func_2(var_0.b.e.x, vec2<i32>(var_0.d.x, var_0.d.x), all(vec3<bool>(true, global0.e.x, var_0.b.e.x)), var_0.b).d.c, func_2(func_5(vec4<u32>(1u, 4294967295u, u_input.a, 0u), vec2<i32>(var_0.c, var_0.c), Struct_2(global0.c, Struct_1(global0.a, var_0.a, 0u, global0.d, vec3<bool>(var_0.b.e.x, false, global0.e.x)), -2147483647i, var_0.d)).d.e.x, -var_0.d.xz, !var_0.b.e.x, func_2(var_0.b.e.x, var_0.d.wz, global0.e.x, Struct_1(var_0.b.a, global0.b, var_0.a, global0.d, global0.e)).d).d, var_0.d.x & firstTrailingBit(var_0.c), -var_0.d)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, var_0.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = var_0.b;
    var var_1 = !var_0.b.e;
    let var_2 = func_4(func_2(var_0.b.e.x, var_0.d.xz, var_0.b.e.x, var_0.b), func_5(vec4<u32>(47452u, ~abs(var_0.b.c), u_input.a, 260u), var_0.d.wy, Struct_2(~1u, Struct_1(global0.a, u_input.a, global0.c, vec3<u32>(var_0.a, 5497u, global0.b), vec3<bool>(var_0.b.e.x, false, var_1.x)), var_0.d.x, var_0.d)).a, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a, 0u, global0.d.x)), vec3<u32>(global0.c & 4294967295u, func_1().b.c, 0u))).a;
    var var_3 = var_0.a;
    let var_4 = ~(~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(4294967295u, var_0.a), 7128u >> (u_input.a % 32u)));
    var var_5 = vec4<i32>(var_0.d.x << (u_input.a % 32u), -10476i, -1i, reverseBits(_wgslsmith_div_i32(-var_0.d.x, 33528i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_i32(var_0.d, vec4<i32>(var_0.c, var_0.d.x, -7655i, var_5.x)) >> ((firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 30710u, 1u)) | vec4<u32>(u_input.a, global0.d.x, u_input.a, 4294967295u)) % vec4<u32>(32u)), countOneBits(var_0.d), !(!var_1.x)), ~(~vec2<u32>(func_5(vec4<u32>(var_0.a, var_0.b.b, 72839u, var_0.a), var_0.d.xz, Struct_2(global0.d.x, Struct_1(1000f, 15371u, var_0.b.d.x, vec3<u32>(u_input.a, 57791u, 32576u), vec3<bool>(false, false, false)), var_5.x, vec4<i32>(-2147483647i, var_5.x, var_5.x, -12452i))).b.x, ~116132u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 226f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a))))));
}

