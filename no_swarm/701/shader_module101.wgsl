struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> vec2<f32> {
    let var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_2.d.c)), _wgslsmith_f_op_f32(arg_1.d.c * _wgslsmith_div_f32(arg_1.a.c, -809f)), arg_2.a.c)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.d.c, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, 393f, -452f), vec3<f32>(857f, var_0.c, 1010f)), vec3<f32>(var_0.c, arg_2.d.c, 664f), all(vec2<bool>(false, var_0.a))))))), all(select(vec4<bool>(!arg_2.a.a, arg_2.a.a, arg_2.d.a, select(false, var_0.a, false)), select(vec4<bool>(arg_2.d.a, false, arg_2.a.a, true), select(vec4<bool>(arg_1.d.a, arg_2.a.a, true, var_0.a), vec4<bool>(false, arg_1.a.a, var_0.a, var_0.a), vec4<bool>(var_0.a, false, arg_1.a.a, arg_2.d.a)), vec4<bool>(true, true, true, true)), true))));
    var var_2 = arg_2.a;
    let var_3 = min(arg_1.d.b, var_2.b);
    return var_1.zy;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    let var_0 = !vec2<bool>(!arg_1.a.a, any(vec3<bool>(true, true, true)));
    let var_1 = vec4<bool>(!(!select(all(var_0), any(vec3<bool>(var_0.x, true, arg_1.d.a)), all(vec4<bool>(true, var_0.x, arg_2.a.a, true)))), var_0.x, arg_2.a.a, var_0.x);
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(arg_0.d, arg_0.d, arg_1.d.d, 82185u))), min(_wgslsmith_div_vec4_u32(max(~vec4<u32>(131848u, arg_1.d.d, arg_0.d, arg_1.a.d), ~vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d)), vec4<u32>(abs(u_input.d), arg_0.d, arg_1.a.d, ~arg_0.d)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(arg_2.a.d, arg_0.d, 7825u, 0u) & vec4<u32>(4294967295u, u_input.d, u_input.d, 1u)), ~vec4<u32>(u_input.d, arg_0.d, 25114u, u_input.d) | vec4<u32>(arg_0.d, arg_0.d, 0u, 4294967295u))), vec4<u32>(firstTrailingBit(abs(arg_0.d)), ~reverseBits(~16196u), firstLeadingBit(arg_2.c.x), 4294967295u));
    let var_3 = arg_0.b.zy;
    var var_4 = Struct_2(Struct_1(all(!var_0), vec4<i32>(18510i, -1i, firstTrailingBit(-14644i), _wgslsmith_mod_i32(~(-24770i), _wgslsmith_mod_i32(arg_0.b.x, u_input.a))), _wgslsmith_f_op_f32(-arg_1.d.c), _wgslsmith_mod_u32(1u, reverseBits(u_input.d))), firstLeadingBit(u_input.b), vec2<u32>(firstLeadingBit(firstTrailingBit(countOneBits(4294967295u))), arg_1.c.x), Struct_1(u_input.c.x == _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-15839i, 8983i)), arg_0.b.yy), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, -2147483647i, -20983i, arg_0.b.x) ^ vec4<i32>(-2147483647i, -1i, var_3.x, var_3.x), vec4<i32>(-25213i, -1i, 29288i, 0i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-arg_1.d.c)))), 48258u), _wgslsmith_dot_vec4_u32(~var_2, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.x, 4294967295u, arg_1.d.d, arg_2.e), vec4<u32>(4294967295u, 23540u, u_input.d, 26309u)), select(vec4<u32>(arg_0.d, var_2.x, 1u, 4294967295u), abs(vec4<u32>(1u, arg_0.d, arg_2.e, u_input.d)), vec4<bool>(arg_0.a, true, false, false)))));
    return ~countOneBits(select(min(var_2.x, 28586u), _wgslsmith_dot_vec4_u32(select(var_2, var_2, true), ~vec4<u32>(arg_0.d, var_4.e, u_input.d, 4294967295u)), any(vec2<bool>(var_1.x, arg_0.a))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.d, ~(u_input.d >> (u_input.d % 32u))), func_4(Struct_1(true, u_input.c, 1169f, ~4294967295u), Struct_2(Struct_1(arg_0.x, vec4<i32>(1i, u_input.a, 1i, u_input.a), -778f, u_input.d), _wgslsmith_div_vec3_i32(u_input.b, u_input.c.zzz), vec2<u32>(u_input.d, 37353u) | vec2<u32>(u_input.d, u_input.d), Struct_1(true, vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 40140i), 1765f, 1u), 1u), Struct_2(Struct_1(true, vec4<i32>(u_input.b.x, -10061i, u_input.a, u_input.b.x), -935f, 49586u), ~vec3<i32>(22316i, u_input.a, -50605i), vec2<u32>(u_input.d, u_input.d), Struct_1(true, u_input.c, -1064f, 6530u), ~1u), _wgslsmith_f_op_vec2_f32(func_3(411f, Struct_2(Struct_1(arg_1.x, vec4<i32>(u_input.c.x, 1i, u_input.b.x, u_input.b.x), -158f, u_input.d), u_input.b, vec2<u32>(0u, u_input.d), Struct_1(false, u_input.c, -833f, u_input.d), u_input.d), Struct_2(Struct_1(true, u_input.c, -831f, u_input.d), vec3<i32>(u_input.b.x, -20825i, 0i), vec2<u32>(u_input.d, u_input.d), Struct_1(arg_1.x, vec4<i32>(u_input.b.x, -28951i, u_input.a, 2147483647i), 301f, 1u), u_input.d), ~u_input.d))), ~u_input.d, _wgslsmith_clamp_u32(u_input.d, ~u_input.d, (u_input.d | 30255u) | ~u_input.d)), vec4<u32>(u_input.d, ~_wgslsmith_sub_u32(u_input.d, 16329u) >> (reverseBits(_wgslsmith_add_u32(u_input.d, 0u)) % 32u), _wgslsmith_div_u32(max(_wgslsmith_add_u32(u_input.d, u_input.d), ~332u), ~1u), ~91749u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, ~u_input.d, ~u_input.d, u_input.d), abs(~(~vec4<u32>(u_input.d, 0u, u_input.d, 41206u)))));
    let var_1 = 0i;
    return firstLeadingBit(_wgslsmith_sub_i32(select(var_1, var_1, true), u_input.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = ~(~reverseBits(4294967295u));
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.c, vec4<i32>(-1i) * -vec4<i32>(var_0.b.x, -2147483647i, var_0.b.x, 2147483647i))), func_2(vec2<bool>(true, arg_0.a.a), !(!(!vec2<bool>(arg_2.a, var_0.a)))));
    var_2 = -47584i << (arg_0.e % 32u);
    var_2 = u_input.a;
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = func_1(Struct_2(arg_2, -vec3<i32>(_wgslsmith_clamp_i32(0i, -8432i, -63984i), u_input.b.x & 36132i, countOneBits(30221i)), firstTrailingBit(arg_1.zw), func_1(Struct_2(func_1(Struct_2(Struct_1(arg_2.a, arg_3.b, -468f, arg_2.d), arg_2.b.xzw, vec2<u32>(arg_0, 39720u), arg_3, arg_2.d), 1i, Struct_1(false, vec4<i32>(u_input.c.x, 2147483647i, 1i, 1i), 1000f, arg_3.d)), arg_3.b.wzz, select(arg_1.wz, arg_1.xz, false), func_1(Struct_2(arg_2, vec3<i32>(2147483647i, -2147483647i, u_input.c.x), vec2<u32>(arg_0, arg_1.x), arg_3, 4294967295u), arg_2.b.x, arg_3), func_4(Struct_1(true, vec4<i32>(arg_3.b.x, -11739i, u_input.a, 28365i), arg_3.c, 79488u), Struct_2(Struct_1(true, u_input.c, arg_3.c, 4294967295u), u_input.b, arg_1.yx, Struct_1(arg_3.a, arg_3.b, arg_3.c, arg_0), 67647u), Struct_2(Struct_1(true, arg_2.b, arg_2.c, 4294967295u), vec3<i32>(arg_2.b.x, 1i, u_input.a), vec2<u32>(1u, 0u), arg_2, arg_2.d), vec2<f32>(705f, arg_2.c))), 2147483647i, arg_2), arg_2.d >> (arg_2.d % 32u)), u_input.a, arg_2);
    let var_1 = func_1(Struct_2(Struct_1(var_0.a, -vec4<i32>(arg_2.b.x, -22227i, 45157i, var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-777f)) - _wgslsmith_f_op_f32(min(arg_3.c, 303f))), 13937u), vec3<i32>(1i, func_2(vec2<bool>(var_0.a, arg_2.a), vec2<bool>(true, true)), _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(arg_2.b.x, -12032i, u_input.a, arg_3.b.x))) ^ u_input.c.xyw, firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 54684u), arg_1.xx)), arg_2, ~u_input.d), _wgslsmith_div_i32(1i ^ abs(var_0.b.x), -(arg_2.b.x << (arg_3.d % 32u)) << (arg_0 % 32u)), Struct_1(var_0.a, ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2259i, arg_3.b.x, 23584i, arg_2.b.x) ^ var_0.b, vec4<i32>(-20719i, -2147483647i, 29197i, u_input.c.x)), arg_2.c, ~arg_2.d));
    var_0 = func_1(Struct_2(var_1, select(u_input.b, vec3<i32>(u_input.c.x | 2129i, arg_2.b.x & -1i, ~u_input.b.x), vec3<bool>(false, arg_1.x < 10114u, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(5657u, 1u), arg_1.zx), func_1(Struct_2(func_1(Struct_2(Struct_1(true, vec4<i32>(1i, -2147483647i, var_1.b.x, arg_2.b.x), 2252f, 0u), u_input.b, vec2<u32>(var_0.d, var_1.d), Struct_1(var_1.a, arg_2.b, 786f, 4294967295u), var_1.d), var_0.b.x, var_1), vec3<i32>(0i, -2147483647i, arg_3.b.x), countOneBits(arg_1.zw), arg_3, _wgslsmith_mod_u32(var_1.d, arg_3.d)), ~(~33287i), arg_2), 59911u), ~func_2(vec2<bool>(true, true), vec2<bool>(true, !var_0.a)), var_1);
    var var_2 = func_1(Struct_2(arg_3, u_input.c.yzw, select(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, arg_2.d), ~arg_1.wz), arg_1.yz, ~var_0.d == firstLeadingBit(0u)), var_1, arg_2.d), var_1.b.x, func_1(Struct_2(Struct_1(true, var_1.b, var_1.c, _wgslsmith_clamp_u32(0u, 4294967295u, var_0.d)), var_1.b.zyx, arg_1.zw, Struct_1(var_0.a, ~arg_2.b, var_1.c, ~arg_2.d), 90218u), _wgslsmith_dot_vec4_i32(vec4<i32>(~var_1.b.x, _wgslsmith_mod_i32(-1i, arg_2.b.x), 1i, arg_3.b.x), abs(~var_1.b)), func_1(Struct_2(var_1, var_1.b.wxy >> (arg_1.wxy % vec3<u32>(32u)), arg_1.yw, Struct_1(false, vec4<i32>(arg_3.b.x, 58281i, u_input.c.x, u_input.b.x), arg_3.c, 21875u), 4294967295u), _wgslsmith_mult_i32(func_2(vec2<bool>(false, false), vec2<bool>(arg_2.a, arg_3.a)), -39673i), func_1(Struct_2(Struct_1(var_1.a, vec4<i32>(arg_2.b.x, -31765i, u_input.c.x, var_0.b.x), 1000f, 24178u), vec3<i32>(33575i, var_1.b.x, arg_3.b.x), arg_1.yy, Struct_1(arg_3.a, var_1.b, 513f, arg_1.x), 62695u), firstLeadingBit(var_0.b.x), arg_3))));
    var_2 = arg_3;
    return -630f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var var_1 = false;
    let var_2 = Struct_1(true, ~u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -3041f), 37626u & ~(u_input.d << (u_input.d % 32u)));
    var var_3 = var_2;
    var_0 = var_3.d;
    var_3 = Struct_1(!var_2.a, -vec4<i32>(var_3.b.x, u_input.c.x, var_3.b.x, ~(u_input.a & var_2.b.x)), _wgslsmith_f_op_f32(func_5(1u, firstLeadingBit(~(~vec4<u32>(var_2.d, var_2.d, 0u, u_input.d))), Struct_1(any(vec3<bool>(false, var_2.a, false)) & select(true, var_3.a, false), ~u_input.c, var_2.c, ~(~1u)), func_1(Struct_2(Struct_1(true, vec4<i32>(2147483647i, -1i, var_3.b.x, var_3.b.x), -1404f, u_input.d), countOneBits(var_3.b.zzy), ~vec2<u32>(22527u, 0u), Struct_1(var_3.a, vec4<i32>(-1i, var_2.b.x, 44491i, u_input.b.x), -611f, 59942u), 24022u), var_2.b.x, Struct_1(var_3.a, select(var_3.b, vec4<i32>(-1i, -19448i, -2147483647i, 1i), true), -595f, var_2.d)))), ~var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -1000f, var_2.c, -1602f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, var_2.c, var_2.c) + vec4<f32>(-359f, -558f, var_2.c, 430f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, var_3.c, -855f, var_2.c) - vec4<f32>(var_2.c, var_2.c, var_2.c, var_2.c))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_3.c, 1198f, var_3.c)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-788f, -165f, 398f, -627f))))))), _wgslsmith_dot_vec3_i32(min(u_input.c.zzz, u_input.b), var_3.b.wxz), -var_2.b.x >> (~1u % 32u));
}

