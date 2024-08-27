struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~(~u_input.b.xww), u_input.b.wwy), reverseBits(_wgslsmith_div_i32(-2147483647i, 1i)));
    var var_1 = !select(vec4<bool>(any(vec2<bool>(true, true)), 1i <= _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec4<bool>(true, true, false, false)), false, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true), !all(vec2<bool>(true, false))));
    var_0 = -1i;
    var var_2 = Struct_3(Struct_2(_wgslsmith_clamp_u32(1u, abs(~0u), 7701u), Struct_1(min(vec4<u32>(7140u, u_input.d, 27855u, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 42651u, 6114u), vec4<u32>(45421u, u_input.c.x, u_input.c.x, 66558u))), abs(abs(vec4<u32>(6988u, u_input.d, 4294967295u, 0u))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, 149817u), u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(24351u, 14810u), vec2<u32>(u_input.d, 0u))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, -691f, 520f) * vec3<f32>(-110f, -131f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1103f, -1048f) - vec3<f32>(1747f, 371f, 357f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 2770f, 226f)))))))), u_input.c.x, vec3<bool>(any(!var_1.yz), false, false), u_input.b.xz, ~(~51159u));
    let var_3 = Struct_2(4294967295u, Struct_1(vec4<u32>(21291u, var_2.a.a, 1u, u_input.e), var_2.a.b.a, ~(~(vec2<u32>(5826u, 25427u) >> (var_2.a.b.b.xz % vec2<u32>(32u)))), vec3<f32>(var_2.a.b.d.x, 1981f, var_2.a.b.d.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_2.a.c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.c.x, var_2.a.b.d.x, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.c * vec3<f32>(269f, var_2.a.c.x, 1177f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-912f, -373f, 1000f)))))));
    return min(-u_input.a, ~var_2.d.x) < countOneBits(u_input.b.x);
}

fn func_2() -> u32 {
    let var_0 = !(!func_3());
    let var_1 = Struct_1(~(~vec4<u32>(u_input.e, ~u_input.d, select(u_input.d, u_input.e, var_0), ~u_input.d)), reverseBits(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(u_input.c.x, u_input.d, u_input.d, u_input.d), ~vec4<u32>(4294967295u, u_input.e, 11612u, u_input.d), any(vec2<bool>(var_0, var_0))), select(vec4<u32>(0u, u_input.d, 0u, 1u), vec4<u32>(u_input.d, u_input.d, 41995u, u_input.e), vec4<bool>(var_0, var_0, true, var_0)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 27312u, 63749u, u_input.c.x), vec4<u32>(u_input.c.x, 3293u, u_input.d, u_input.e), vec4<u32>(22015u, 7692u, u_input.d, u_input.d)), select(~vec4<u32>(60546u, 24945u, 57606u, u_input.d), ~vec4<u32>(0u, 64918u, u_input.e, 0u), vec4<bool>(true, true, var_0, var_0)))), vec2<u32>(~(~reverseBits(0u)), u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1531f, -664f) * -1251f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))), _wgslsmith_f_op_f32(304f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(732f)) * _wgslsmith_f_op_f32(select(-354f, -215f, var_0))))));
    let var_2 = -294f;
    let var_3 = var_1;
    var var_4 = ~((u_input.b.x ^ u_input.a) >> ((abs(firstLeadingBit(u_input.c.x)) << (max(_wgslsmith_sub_u32(u_input.d, 1u), firstTrailingBit(var_1.b.x)) % 32u)) % 32u));
    return 68821u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(countOneBits(~abs(vec4<u32>(89294u, arg_0.a, 4294967295u, 0u)) >> (vec4<u32>(countOneBits(arg_0.b.a.x), firstLeadingBit(arg_1.a.a), 1u << (arg_0.b.a.x % 32u), _wgslsmith_sub_u32(1u, u_input.d)) % vec4<u32>(32u))), vec4<u32>(countOneBits(min(abs(31414u), countOneBits(1u))), ~firstLeadingBit(30206u), _wgslsmith_mod_u32(arg_1.a.b.c.x, u_input.d), _wgslsmith_clamp_u32(1806u & ~u_input.c.x, arg_0.b.c.x, 31494u)), abs(u_input.c), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.d.x, -615f)), 857f, _wgslsmith_f_op_f32(f32(-1f) * -126f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(arg_1.a.c)), _wgslsmith_f_op_vec3_f32(-arg_0.c)))));
    let var_1 = 23411u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f * var_0.d.x)))));
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d.x, (max(-2147483647i, arg_1.d.x) << (2984u % 32u)) & 46830i, 1i, 2147483647i << (_wgslsmith_mod_u32(arg_1.a.a, 92168u) % 32u)), u_input.b);
    var_2 = -280f;
    return arg_1;
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = func_4(Struct_2(u_input.e, Struct_1(vec4<u32>(u_input.d, u_input.e, 55584u >> (u_input.e % 32u), func_2()), ~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.e, 1u) & vec4<u32>(5673u, u_input.e, 1u, 1u)), ~u_input.c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-766f, -135f, 741f), vec3<f32>(2218f, -1119f, 940f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 131f))), -702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2542f, 342f))))), Struct_3(Struct_2(select(reverseBits(27690u), u_input.c.x ^ 101573u, any(vec4<bool>(true, true, true, false))), Struct_1(~vec4<u32>(u_input.d, u_input.c.x, 1u, u_input.c.x), ~vec4<u32>(0u, u_input.e, 79220u, 46u), ~u_input.c, vec3<f32>(-1152f, -403f, 486f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -486f, 735f), vec3<f32>(-2025f, -391f, 1048f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1805f, 1038f, -1000f))))), _wgslsmith_div_u32(abs(1u), ~u_input.c.x), vec3<bool>(true, true, true), firstLeadingBit(vec2<i32>(2940i, -30880i)), ~u_input.c.x));
    var_0 = Struct_3(func_4(Struct_2(~45975u << (_wgslsmith_mult_u32(u_input.d, 1u) % 32u), var_0.a.b, _wgslsmith_f_op_vec3_f32(var_0.a.b.d - var_0.a.c)), func_4(func_4(func_4(Struct_2(u_input.d, var_0.a.b, vec3<f32>(var_0.a.c.x, -451f, 193f)), Struct_3(Struct_2(1u, Struct_1(var_0.a.b.a, vec4<u32>(940u, var_0.b, 1u, 5619u), u_input.c, vec3<f32>(var_0.a.c.x, 1427f, var_0.a.b.d.x)), var_0.a.c), var_0.e, var_0.c, vec2<i32>(u_input.b.x, 73153i), u_input.c.x)).a, Struct_3(var_0.a, 52702u, var_0.c, vec2<i32>(arg_0.x, 22352i), 0u)).a, func_4(var_0.a, Struct_3(Struct_2(1u, Struct_1(var_0.a.b.b, var_0.a.b.a, u_input.c, var_0.a.c), vec3<f32>(279f, var_0.a.b.d.x, var_0.a.c.x)), 4294967295u, vec3<bool>(var_0.c.x, false, var_0.c.x), vec2<i32>(9566i, 17465i), u_input.e)))).a, ~(~u_input.d), vec3<bool>(var_0.e != u_input.e, var_0.c.x, all(vec3<bool>(false, true, true != var_0.c.x))), u_input.b.xy, ~_wgslsmith_div_u32(u_input.e << (_wgslsmith_mod_u32(u_input.e, var_0.e) % 32u), max(4294967295u, _wgslsmith_sub_u32(var_0.e, u_input.d))));
    var_0 = Struct_3(Struct_2(u_input.d, var_0.a.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1098f, 1654f, 558f))), _wgslsmith_f_op_vec3_f32(-var_0.a.b.d))), ~_wgslsmith_sub_u32(u_input.d & ~var_0.e, 0u), !select(!(!var_0.c), vec3<bool>(true, true, var_0.c.x), !var_0.c), ~select(arg_0.yz, (arg_0.zx >> (vec2<u32>(1u, var_0.a.a) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(364u, u_input.d), vec2<u32>(var_0.a.b.b.x, u_input.e)) % vec2<u32>(32u)), var_0.c.x), ~(~_wgslsmith_mod_u32(u_input.d, var_0.b)));
    let var_1 = func_4(var_0.a, Struct_3(Struct_2(23889u, Struct_1(var_0.a.b.b, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a, 4294967295u, u_input.e, 31576u), var_0.a.b.b), vec2<u32>(u_input.e, 4294967295u) & vec2<u32>(14324u, var_0.a.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1509f, 510f, -1330f)))), var_0.a.c), 4294967295u, vec3<bool>(false, func_3(), any(var_0.c)), vec2<i32>(1i, func_4(func_4(var_0.a, Struct_3(Struct_2(var_0.b, var_0.a.b, vec3<f32>(-1212f, var_0.a.b.d.x, -1345f)), u_input.d, var_0.c, arg_0.xy, u_input.d)).a, Struct_3(Struct_2(34254u, var_0.a.b, vec3<f32>(303f, var_0.a.c.x, var_0.a.c.x)), 23114u, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec2<i32>(u_input.a, var_0.d.x), 1540u)).d.x), ~4294967295u)).a.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(var_0.a.b.d));
    return _wgslsmith_sub_vec3_u32(~var_1.a.xwz, ~(~select(vec3<u32>(var_0.e, u_input.e, 0u), var_1.b.xyz << (vec3<u32>(1u, var_0.a.b.b.x, 4793u) % vec3<u32>(32u)), vec3<bool>(true, var_0.c.x, true))));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(max(4294967295u, ~arg_0), ~4294967295u), 4294967295u, arg_0, _wgslsmith_mult_u32(~(4294967295u << (u_input.d % 32u)), u_input.c.x)), firstTrailingBit(vec4<u32>(arg_0, arg_0, 0u, u_input.e) | (vec4<u32>(u_input.c.x, u_input.c.x, 23080u, 4294967295u) | (vec4<u32>(u_input.c.x, 4294967295u, 16165u, u_input.d) << (vec4<u32>(35327u, 14144u, arg_0, 865u) % vec4<u32>(32u))))), vec2<u32>(16415u, u_input.e), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - 1416f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-736f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f))));
    var_0 = func_4(Struct_2(u_input.d, func_4(func_4(Struct_2(81828u, Struct_1(var_0.a, vec4<u32>(72797u, 163u, arg_0, 4294967295u), u_input.c, var_0.d), var_0.d), func_4(Struct_2(var_0.b.x, Struct_1(var_0.a, vec4<u32>(arg_0, arg_0, 0u, u_input.e), vec2<u32>(var_0.c.x, 4294967295u), var_0.d), var_0.d), Struct_3(Struct_2(arg_0, Struct_1(vec4<u32>(60582u, u_input.c.x, 54149u, 1u), vec4<u32>(var_0.a.x, u_input.d, u_input.e, 11269u), vec2<u32>(u_input.d, arg_0), vec3<f32>(285f, var_0.d.x, 339f)), vec3<f32>(-289f, 670f, 856f)), 74158u, arg_1.yyw, u_input.b.wx, 0u))).a, Struct_3(func_4(Struct_2(6307u, Struct_1(vec4<u32>(1u, arg_0, u_input.d, 30636u), var_0.b, vec2<u32>(u_input.d, 15690u), vec3<f32>(var_0.d.x, -715f, -143f)), vec3<f32>(var_0.d.x, var_0.d.x, -242f)), Struct_3(Struct_2(var_0.c.x, Struct_1(vec4<u32>(0u, u_input.e, 4294967295u, 16120u), vec4<u32>(32264u, var_0.a.x, 15963u, arg_0), u_input.c, var_0.d), vec3<f32>(-891f, var_0.d.x, -1000f)), 4294967295u, arg_1.zyz, vec2<i32>(-34481i, u_input.a), 1u)).a, countOneBits(arg_0), select(vec3<bool>(true, arg_1.x, true), arg_1.yzx, vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), vec2<i32>(u_input.a, -49903i) | vec2<i32>(u_input.a, 2147483647i), ~0u)).a.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(2497f)), _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), -109f) + _wgslsmith_f_op_vec3_f32(-func_4(Struct_2(var_0.b.x, Struct_1(var_0.a, vec4<u32>(arg_0, var_0.c.x, u_input.d, 4294967295u), u_input.c, vec3<f32>(1131f, var_0.d.x, var_0.d.x)), vec3<f32>(-109f, var_0.d.x, -1335f)), Struct_3(Struct_2(39121u, Struct_1(var_0.b, vec4<u32>(u_input.d, u_input.d, 4294967295u, 22736u), u_input.c, vec3<f32>(104f, 1000f, 2415f)), var_0.d), arg_0, vec3<bool>(arg_1.x, false, false), vec2<i32>(u_input.a, u_input.b.x), 92750u)).a.c))), func_4(Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(91996u, 45224u, 0u), select(vec3<u32>(34365u, 5622u, var_0.b.x), var_0.a.wwz, arg_1.x)), func_4(Struct_2(arg_0, Struct_1(var_0.a, vec4<u32>(46815u, u_input.c.x, 4294967295u, var_0.b.x), var_0.b.wx, var_0.d), vec3<f32>(-1918f, var_0.d.x, 381f)), Struct_3(Struct_2(var_0.a.x, Struct_1(vec4<u32>(u_input.e, 0u, 0u, arg_0), var_0.b, vec2<u32>(4294967295u, 74567u), vec3<f32>(var_0.d.x, 505f, 959f)), vec3<f32>(-215f, 891f, var_0.d.x)), arg_0, vec3<bool>(arg_1.x, arg_1.x, false), vec2<i32>(-2147483647i, u_input.b.x), var_0.a.x)).a.b, _wgslsmith_f_op_vec3_f32(func_4(Struct_2(u_input.c.x, Struct_1(var_0.a, var_0.b, var_0.a.zz, vec3<f32>(440f, var_0.d.x, -774f)), vec3<f32>(var_0.d.x, var_0.d.x, -303f)), Struct_3(Struct_2(arg_0, Struct_1(var_0.a, var_0.b, vec2<u32>(24440u, arg_0), vec3<f32>(195f, var_0.d.x, var_0.d.x)), var_0.d), var_0.a.x, arg_1.yyw, vec2<i32>(u_input.a, u_input.b.x), 15917u)).a.c - var_0.d)), func_4(func_4(func_4(Struct_2(4294967295u, Struct_1(var_0.b, var_0.b, var_0.c, vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)), vec3<f32>(var_0.d.x, var_0.d.x, -1000f)), Struct_3(Struct_2(4294967295u, Struct_1(var_0.a, var_0.b, vec2<u32>(u_input.d, u_input.c.x), var_0.d), vec3<f32>(var_0.d.x, 248f, var_0.d.x)), arg_0, arg_1.xxz, vec2<i32>(u_input.b.x, u_input.b.x), u_input.e)).a, func_4(Struct_2(1u, Struct_1(vec4<u32>(4294967295u, 1u, arg_0, arg_0), vec4<u32>(u_input.c.x, arg_0, arg_0, 18904u), var_0.b.zx, vec3<f32>(1245f, 575f, 114f)), var_0.d), Struct_3(Struct_2(0u, Struct_1(var_0.a, var_0.a, vec2<u32>(arg_0, var_0.a.x), var_0.d), vec3<f32>(1000f, 582f, -502f)), var_0.b.x, vec3<bool>(true, arg_1.x, arg_1.x), u_input.b.wx, var_0.b.x))).a, Struct_3(Struct_2(0u, Struct_1(var_0.b, vec4<u32>(var_0.b.x, arg_0, 4294967295u, u_input.c.x), u_input.c, vec3<f32>(var_0.d.x, 1889f, 680f)), var_0.d), arg_0, arg_1.xzx, vec2<i32>(2147483647i, 1i), 63442u)))).a.b;
    var_0 = func_4(Struct_2(~arg_0, Struct_1(var_0.b, var_0.b, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(arg_0, 38748u)), select(u_input.c, vec2<u32>(90040u, var_0.c.x), arg_1.xx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1260f, -420f, var_0.d.x), vec3<f32>(620f, 192f, var_0.d.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-906f + var_0.d.x)))), func_4(func_4(func_4(Struct_2(12886u, Struct_1(vec4<u32>(26779u, u_input.d, 0u, u_input.c.x), var_0.b, vec2<u32>(u_input.c.x, arg_0), var_0.d), vec3<f32>(-708f, -445f, var_0.d.x)), func_4(Struct_2(var_0.c.x, Struct_1(var_0.b, vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u), var_0.c, var_0.d), var_0.d), Struct_3(Struct_2(1u, Struct_1(var_0.a, var_0.a, u_input.c, var_0.d), var_0.d), 40307u, vec3<bool>(arg_1.x, false, arg_1.x), u_input.b.zy, u_input.c.x))).a, func_4(func_4(Struct_2(1u, Struct_1(vec4<u32>(14582u, 0u, var_0.a.x, arg_0), var_0.b, var_0.c, vec3<f32>(-602f, -268f, -927f)), vec3<f32>(1290f, var_0.d.x, var_0.d.x)), Struct_3(Struct_2(4212u, Struct_1(var_0.a, vec4<u32>(u_input.e, 0u, arg_0, 42062u), vec2<u32>(1u, u_input.d), var_0.d), vec3<f32>(var_0.d.x, var_0.d.x, -251f)), 17637u, arg_1.wzx, vec2<i32>(1i, u_input.a), arg_0)).a, Struct_3(Struct_2(1u, Struct_1(var_0.a, var_0.b, vec2<u32>(34190u, u_input.e), var_0.d), var_0.d), 0u, arg_1.wzx, vec2<i32>(u_input.b.x, -16128i), 0u))).a, Struct_3(Struct_2(1u, func_4(Struct_2(23707u, Struct_1(vec4<u32>(u_input.e, 1u, 1u, u_input.d), var_0.a, vec2<u32>(0u, arg_0), vec3<f32>(var_0.d.x, 649f, -1000f)), var_0.d), Struct_3(Struct_2(4294967295u, Struct_1(vec4<u32>(var_0.c.x, arg_0, 0u, 1u), vec4<u32>(arg_0, u_input.e, 17596u, 43880u), var_0.a.yy, vec3<f32>(1683f, var_0.d.x, 886f)), var_0.d), var_0.a.x, vec3<bool>(false, arg_1.x, arg_1.x), vec2<i32>(u_input.b.x, -1i), 1u)).a.b, _wgslsmith_f_op_vec3_f32(-var_0.d)), reverseBits(arg_0), vec3<bool>(any(arg_1), true, true), _wgslsmith_clamp_vec2_i32(~u_input.b.zw, -u_input.b.zw, -vec2<i32>(2147483647i, u_input.a)), ~var_0.a.x))).a.b;
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(7658u, arg_0, 0u, 0u), var_0.a), reverseBits(var_0.b)), vec4<u32>(~arg_0, u_input.c.x, firstLeadingBit(37179u), firstTrailingBit(arg_0))), Struct_1(abs(~var_0.a), var_0.a, vec2<u32>(1u, 41403u), vec3<f32>(_wgslsmith_f_op_f32(-1106f + var_0.d.x), _wgslsmith_f_op_f32(trunc(1444f)), _wgslsmith_div_f32(-935f, var_0.d.x))), func_4(func_4(Struct_2(arg_0, Struct_1(vec4<u32>(u_input.d, var_0.a.x, u_input.d, 0u), var_0.a, var_0.b.wz, var_0.d), var_0.d), Struct_3(Struct_2(arg_0, Struct_1(vec4<u32>(61300u, arg_0, u_input.e, arg_0), vec4<u32>(24826u, arg_0, u_input.c.x, 4294967295u), vec2<u32>(var_0.c.x, 8583u), var_0.d), vec3<f32>(var_0.d.x, 1000f, -1396f)), u_input.e, vec3<bool>(true, false, arg_1.x), vec2<i32>(u_input.a, 0i), 10029u)).a, Struct_3(Struct_2(arg_0, Struct_1(var_0.a, var_0.b, vec2<u32>(u_input.d, 1u), var_0.d), var_0.d), ~u_input.d, arg_1.xwy, vec2<i32>(u_input.b.x, -42640i), ~61559u)).a.c), u_input.d, vec3<bool>(arg_1.x, arg_1.x, true && !(u_input.a >= 2147483647i)), u_input.b.wx, max(22811u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, u_input.c.x) ^ var_0.c, _wgslsmith_mult_vec2_u32(u_input.c, var_0.b.wz)), ~var_0.b.xz)));
    return Struct_2(var_0.a.x, Struct_1(var_0.a, ~(~(vec4<u32>(arg_0, 24691u, 6993u, 0u) << (var_0.b % vec4<u32>(32u)))), var_0.a.yy, var_1.a.b.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-243f, _wgslsmith_div_f32(var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)), vec3<f32>(_wgslsmith_f_op_f32(1968f * 1613f), -1413f, func_4(Struct_2(86176u, Struct_1(var_0.a, vec4<u32>(30042u, var_0.a.x, 19933u, 0u), vec2<u32>(var_1.a.b.a.x, var_0.b.x), var_1.a.c), vec3<f32>(var_0.d.x, var_0.d.x, 1101f)), var_1).a.c.x), arg_1.yzx)) - vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1145f)) + _wgslsmith_f_op_f32(round(1000f))), -127f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 22705u, u_input.d), func_1(vec3<i32>(1i, u_input.a, u_input.a))) & ~50549u, vec4<bool>(true, true, true, true)), ~_wgslsmith_sub_u32(min(u_input.d & u_input.e, 1u), u_input.c.x), vec3<bool>(true, !(_wgslsmith_f_op_f32(step(-530f, -435f)) > _wgslsmith_f_op_f32(max(-1554f, -291f))), select(true, u_input.e >= u_input.c.x, func_4(Struct_2(4294967295u, Struct_1(vec4<u32>(76983u, 1u, 11911u, 4294967295u), vec4<u32>(u_input.e, 4294967295u, 48193u, u_input.c.x), u_input.c, vec3<f32>(-155f, 620f, 1495f)), vec3<f32>(-1525f, 404f, -2066f)), Struct_3(Struct_2(0u, Struct_1(vec4<u32>(1u, 0u, 0u, u_input.e), vec4<u32>(1653u, 0u, 28906u, 32424u), u_input.c, vec3<f32>(-1706f, -606f, -101f)), vec3<f32>(-1000f, -195f, -777f)), u_input.e, vec3<bool>(false, true, false), vec2<i32>(-2147483647i, 0i), u_input.d)).c.x)), vec2<i32>(1i, -2147483647i), func_4(func_5(~25009u, select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), func_4(func_4(Struct_2(32968u, Struct_1(vec4<u32>(0u, 22908u, u_input.e, u_input.d), vec4<u32>(28843u, u_input.c.x, 4294967295u, u_input.c.x), vec2<u32>(54223u, 77429u), vec3<f32>(-315f, 128f, -428f)), vec3<f32>(741f, -753f, -1046f)), Struct_3(Struct_2(u_input.e, Struct_1(vec4<u32>(u_input.d, 40997u, u_input.d, 1u), vec4<u32>(1u, u_input.d, u_input.d, 4294967295u), u_input.c, vec3<f32>(225f, -463f, 1773f)), vec3<f32>(771f, -1587f, 774f)), 4294967295u, vec3<bool>(true, true, true), u_input.b.wz, 0u)).a, Struct_3(func_4(Struct_2(1u, Struct_1(vec4<u32>(u_input.e, 77042u, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.e, u_input.d, 80151u), vec2<u32>(1u, u_input.c.x), vec3<f32>(-1000f, 398f, 603f)), vec3<f32>(796f, 113f, 1090f)), Struct_3(Struct_2(u_input.c.x, Struct_1(vec4<u32>(56945u, 0u, u_input.e, u_input.c.x), vec4<u32>(67635u, 11127u, 0u, u_input.d), u_input.c, vec3<f32>(-1584f, 1000f, 1000f)), vec3<f32>(-1000f, -564f, -176f)), u_input.e, vec3<bool>(true, true, true), vec2<i32>(19865i, -32096i), u_input.d)).a, 1u, vec3<bool>(true, true, true), u_input.b.xy, u_input.c.x))).b);
    let var_1 = Struct_1(var_0.a.b.b, firstTrailingBit(firstTrailingBit(countOneBits(vec4<u32>(1u, 16208u, u_input.d, 4294967295u))) >> (_wgslsmith_div_vec4_u32(var_0.a.b.b, var_0.a.b.a) % vec4<u32>(32u))), u_input.c, _wgslsmith_f_op_vec3_f32(-var_0.a.b.d));
    let var_2 = _wgslsmith_mult_i32(1i, firstTrailingBit(~_wgslsmith_clamp_i32(var_0.d.x >> (0u % 32u), ~var_0.d.x, -u_input.a)));
    var_0 = Struct_3(func_5(18347u, vec4<bool>(true, var_0.c.x, !var_0.c.x | func_3(), select(true, any(vec4<bool>(var_0.c.x, false, var_0.c.x, false)), all(var_0.c)))), abs(reverseBits(_wgslsmith_sub_u32(countOneBits(8242u), ~var_1.a.x))), var_0.c, var_0.d, 1u ^ var_1.c.x);
    var_0 = func_4(var_0.a, func_4(var_0.a, Struct_3(func_4(var_0.a, Struct_3(var_0.a, 111727u, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec2<i32>(0i, -1i), 27215u)).a, _wgslsmith_add_u32(1u, min(4294967295u, u_input.c.x)), vec3<bool>(var_0.c.x, true, var_0.c.x & false), _wgslsmith_mult_vec2_i32(-u_input.b.ww, var_0.d), 1u)));
    var var_3 = var_0.a.b;
    let var_4 = ~vec2<u32>(u_input.e, firstTrailingBit(var_0.a.a));
    var var_5 = ~vec3<i32>(var_0.d.x, 0i, firstLeadingBit(var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_3.d, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2854f, var_1.d.x, -559f)))))) * vec3<f32>(_wgslsmith_f_op_f32(-func_5(80950u, vec4<bool>(false, true, var_0.c.x, true)).c.x), 362f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(735f + 569f), 369f))), -10287i, func_4(var_0.a, Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, var_4.x), vec2<u32>(u_input.c.x, 23814u)), Struct_1(vec4<u32>(var_4.x, 4294967295u, var_3.a.x, var_0.a.b.c.x), vec4<u32>(4938u, 4294967295u, u_input.d, 1u), vec2<u32>(1u, var_3.a.x), var_3.d), var_1.d), select(func_1(vec3<i32>(0i, var_2, var_5.x)).x, var_0.b << (var_3.c.x % 32u), false), select(!var_0.c, select(var_0.c, vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(false, var_0.c.x, true)), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), firstLeadingBit(-var_0.d), ~4294967295u)).d.x, -(~func_4(Struct_2(var_1.b.x, Struct_1(vec4<u32>(var_0.a.a, 0u, var_4.x, 8874u), var_3.a, vec2<u32>(var_4.x, 11504u), vec3<f32>(var_0.a.b.d.x, var_3.d.x, -554f)), vec3<f32>(1292f, var_1.d.x, 1000f)), Struct_3(var_0.a, var_0.b, var_0.c, var_0.d, 17827u)).d.x));
}

