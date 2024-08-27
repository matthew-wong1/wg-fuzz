struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = arg_2.xx;
    var_0 = max(_wgslsmith_mult_vec2_i32(arg_2.zz, reverseBits(vec2<i32>(arg_0.b, arg_2.x))), vec2<i32>(arg_2.x, ~arg_0.b));
    var var_1 = Struct_2(arg_0, arg_0, _wgslsmith_div_f32(585f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1154f)) + _wgslsmith_f_op_f32(-744f - -495f))))), Struct_1(arg_1, min(reverseBits(_wgslsmith_clamp_i32(25676i, u_input.a, arg_2.x)), countOneBits(_wgslsmith_mod_i32(42334i, u_input.a))), vec4<u32>(arg_1 << (min(44307u, 0u) % 32u), u_input.b, ~_wgslsmith_dot_vec3_u32(arg_3, arg_0.c.zwz), _wgslsmith_div_u32(arg_3.x, abs(1u)))));
    let var_2 = arg_0.b == _wgslsmith_mult_i32(_wgslsmith_div_i32(~var_0.x, arg_0.b), countOneBits(var_1.b.b));
    var var_3 = Struct_3(Struct_2(Struct_1(~max(21043u, 1u), _wgslsmith_add_i32(28937i, _wgslsmith_sub_i32(var_0.x, -20462i)), firstTrailingBit(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(arg_0.a, u_input.c.x, 1u, var_1.a.c.x)))), Struct_1(~(~2980u), -(arg_2.x | var_0.x), u_input.c), var_1.c, Struct_1(abs(0u), firstTrailingBit(-9494i) ^ 2147483647i, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.c.x, u_input.b, u_input.d, arg_0.c.x), _wgslsmith_sub_vec4_u32(var_1.a.c, vec4<u32>(6644u, 4294967295u, 0u, 0u)), firstLeadingBit(var_1.a.c)))), vec4<bool>(true, var_1.b.c.x != _wgslsmith_add_u32(_wgslsmith_mod_u32(45131u, arg_0.c.x), 0u), var_2, true), all(vec4<bool>(var_2, all(!vec2<bool>(false, var_2)), select(true, select(true, true, var_2), true && var_2), var_2)));
    return -select(vec3<i32>(select(2147483647i >> (arg_1 % 32u), 1i, var_3.c), u_input.a & ~9143i, var_1.b.b), max(-arg_2.zwy, arg_2.xzz) | arg_2.zxw, select(select(select(var_3.b.xwy, vec3<bool>(false, false, var_3.c), false), !var_3.b.wzz, !var_3.b.yxz), select(select(vec3<bool>(true, false, var_3.b.x), var_3.b.wwx, vec3<bool>(var_2, var_2, var_2)), select(var_3.b.zxw, vec3<bool>(false, false, false), true), true), var_3.b.x));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = reverseBits(firstLeadingBit(func_3(arg_0.a.b, ~u_input.b, vec4<i32>(0i, u_input.a >> (arg_0.a.b.c.x % 32u), select(16830i, 2147483647i, arg_0.c), _wgslsmith_add_i32(500i, arg_0.a.d.b)), min(arg_0.a.a.c.wwx | u_input.c.xwz, _wgslsmith_mult_vec3_u32(arg_0.a.a.c.zxz, vec3<u32>(u_input.d, 35824u, u_input.c.x))))));
    var var_1 = !any(!(!vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.c)));
    var var_2 = arg_0.a;
    let var_3 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, abs(_wgslsmith_mult_u32(var_2.b.c.x, u_input.d)), ~(60004u ^ u_input.d)), _wgslsmith_div_vec3_u32(~arg_0.a.a.c.wwx, reverseBits(vec3<u32>(39630u, arg_0.a.b.a, 1u))) << (reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 38690u, var_2.d.a), vec3<u32>(4364u, u_input.b, arg_0.a.d.c.x))) % vec3<u32>(32u)));
    var var_4 = countOneBits(~vec4<u32>(~1u, arg_0.a.b.c.x, 50461u, u_input.c.x >> (var_3.x % 32u)) & ~reverseBits(_wgslsmith_mult_vec4_u32(var_2.d.c, vec4<u32>(var_2.d.a, u_input.c.x, var_2.d.a, arg_0.a.a.a))));
    return arg_0.a.d;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(u_input.d, 2147483647i, ~(vec4<u32>(arg_1.c.x, 30806u, 0u, 35423u) | u_input.c)), Struct_1(~(~arg_2.c.x), 1650i, vec4<u32>(~arg_1.c.x, ~0u, 3842u, ~arg_0.x)), 1f, arg_1), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, false), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3) -> i32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1098f) * _wgslsmith_f_op_f32(290f - -1241f)), 1297f), _wgslsmith_f_op_f32(-arg_1.a.c)), var_1));
    let var_3 = reverseBits(~vec3<i32>(-arg_1.a.b.b << (56278u % 32u), -2147483647i, ~u_input.e));
    var var_4 = reverseBits(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(-var_3.zx), func_3(arg_1.a.d, var_0, arg_0, vec3<u32>(arg_1.a.a.a, 4294967295u, var_0)).zy), var_3.yz));
    return -arg_0.x;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_4 {
    var var_0 = func_4(vec2<u32>(30849u, firstTrailingBit(38988u)), func_2(func_4(u_input.c.xy, func_2(Struct_3(Struct_2(Struct_1(4294967295u, 1124i, vec4<u32>(507u, u_input.c.x, u_input.d, 0u)), Struct_1(40335u, 37267i, u_input.c), arg_0, Struct_1(u_input.d, u_input.a, u_input.c)), vec4<bool>(true, false, true, true), false)), func_2(func_4(u_input.c.xw, Struct_1(u_input.b, 1i, u_input.c), Struct_1(u_input.c.x, arg_2, vec4<u32>(u_input.b, u_input.d, u_input.d, 21137u)), arg_1)), _wgslsmith_mod_i32(1i, ~arg_1))), Struct_1(0u, 10537i, ~u_input.c), _wgslsmith_mult_i32(~u_input.e, 1i | arg_2)).b.yy;
    let var_1 = func_4(u_input.c.wz, Struct_1(_wgslsmith_mult_u32(u_input.b, u_input.c.x ^ 43739u) >> (146u % 32u), -1i, ~vec4<u32>(~u_input.c.x, abs(u_input.c.x), u_input.b & u_input.d, 0u)), func_2(func_4(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(3690u, u_input.d)), min(u_input.c.ww, vec2<u32>(0u, u_input.b))), func_2(func_4(u_input.c.yx, Struct_1(61385u, -17657i, u_input.c), Struct_1(51048u, 2147483647i, u_input.c), -12189i)), func_2(func_4(u_input.c.zw, Struct_1(u_input.b, u_input.a, vec4<u32>(4294967295u, 58405u, u_input.b, 1u)), Struct_1(u_input.d, -38080i, u_input.c), arg_2)), func_3(func_2(Struct_3(Struct_2(Struct_1(u_input.c.x, u_input.a, vec4<u32>(1u, u_input.d, 4294967295u, u_input.d)), Struct_1(u_input.d, 59277i, vec4<u32>(4294967295u, u_input.d, u_input.d, 23280u)), arg_0, Struct_1(u_input.c.x, u_input.a, u_input.c)), vec4<bool>(var_0.x, false, true, var_0.x), false)), u_input.b, ~vec4<i32>(u_input.e, -2147483647i, 1i, arg_2), vec3<u32>(u_input.b, u_input.c.x, u_input.c.x)).x)), -20596i).a.b;
    let var_2 = Struct_4(Struct_3(Struct_2(Struct_1(0u, abs(28572i), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 51125u, 13447u, 4294967295u), vec4<u32>(u_input.d, u_input.d, 13104u, var_1.c.x))), var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0)))), var_1), select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), all(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, false, var_0.x, false)))), false), Struct_3(Struct_2(var_1, func_4(vec2<u32>(4294967295u, 20440u), func_4(u_input.c.xz, var_1, Struct_1(44682u, var_1.b, u_input.c), -1i).a.a, var_1, min(1i, arg_1)).a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), Struct_1(countOneBits(4294967295u), -var_1.b, ~var_1.c)), select(select(func_4(var_1.c.yz, var_1, var_1, 19564i).b, select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true))), select(func_4(vec2<u32>(4294967295u, var_1.a), var_1, var_1, var_1.b).b, select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, true, var_0.x, false), true), var_0.x), -237f == arg_0), false), vec2<u32>(~(~(~1u)), 4294967295u));
    var_0 = select(var_2.a.b.xz, vec2<bool>(all(var_2.b.b.zx), false), false);
    let var_3 = firstTrailingBit(func_2(func_4(select(~var_1.c.yw, vec2<u32>(51822u, var_1.a), vec2<bool>(true, var_2.b.b.x)), func_4(vec2<u32>(0u, u_input.d), func_2(Struct_3(Struct_2(Struct_1(4294967295u, var_2.a.a.a.b, vec4<u32>(var_2.c.x, 64302u, var_1.a, u_input.d)), Struct_1(1u, -2147483647i, vec4<u32>(4294967295u, u_input.c.x, var_1.a, 4294967295u)), -280f, Struct_1(u_input.c.x, arg_1, vec4<u32>(1u, 4294967295u, 4294967295u, var_2.c.x))), var_2.b.b, var_2.a.b.x)), func_4(vec2<u32>(var_2.b.a.d.c.x, u_input.c.x), var_1, var_2.a.a.a, -19582i).a.a, u_input.a).a.b, Struct_1(_wgslsmith_mult_u32(u_input.c.x, 1u), -u_input.a, reverseBits(var_1.c)), u_input.e)).a);
    return Struct_4(Struct_3(Struct_2(var_2.a.a.d, func_2(Struct_3(Struct_2(var_2.b.a.d, var_1, var_2.a.a.c, var_1), vec4<bool>(var_0.x, var_2.a.c, var_2.b.b.x, var_0.x), true)), -729f, var_1), select(select(vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_2.b.b.x), var_2.b.b, vec4<bool>(true, false, var_2.a.c, false)), !vec4<bool>(false, var_2.a.b.x, var_0.x, false)), select(vec4<bool>(var_0.x, false, true, var_2.a.b.x), !vec4<bool>(true, var_0.x, var_2.a.c, var_0.x), false), select(true, var_0.x & true, true)), all(func_4(~vec2<u32>(74080u, 1u), func_2(var_2.a), Struct_1(1u, var_1.b, var_1.c), _wgslsmith_add_i32(var_1.b, -8995i)).b.wxy)), var_2.a, vec2<u32>(~(firstTrailingBit(1u) & 11682u), func_2(func_4(vec2<u32>(15148u, 7413u) ^ vec2<u32>(var_3, 76961u), var_2.a.a.a, var_1, -12778i)).a));
}

fn func_1() -> f32 {
    let var_0 = vec2<i32>(~(-10274i) << (u_input.b % 32u), 2147483647i);
    var var_1 = Struct_1(u_input.b, 1i, u_input.c);
    var var_2 = true;
    let var_3 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1170f, _wgslsmith_f_op_f32(step(453f, -665f)), any(vec3<bool>(true, true, true)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(f32(-1f) * -328f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f + _wgslsmith_f_op_f32(1019f * 293f)))), func_5(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -32471i, ~u_input.e), 4563i, -var_0.x, 23256i), func_4(countOneBits(reverseBits(var_1.c.yw)), Struct_1(16667u, var_0.x, var_1.c), func_2(Struct_3(Struct_2(Struct_1(var_1.a, 0i, u_input.c), Struct_1(21023u, 0i, vec4<u32>(1u, 32773u, 0u, u_input.b)), -361f, Struct_1(var_1.a, 2147483647i, vec4<u32>(33615u, u_input.d, var_1.a, 0u))), vec4<bool>(false, true, true, true), true)), 23722i)), -11639i);
    var var_4 = _wgslsmith_add_vec4_i32(~select(-vec4<i32>(0i, 17101i, var_3.b.a.b.b, -11459i), vec4<i32>(1i, -40017i, var_0.x, 30797i), false) & -firstTrailingBit(vec4<i32>(u_input.e, var_0.x, 1i, u_input.a)), vec4<i32>(~(~var_0.x), var_3.b.a.b.b, -38553i, var_1.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.c)), -244f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a.a.c, _wgslsmith_f_op_f32(sign(-125f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = -9163i << (~(~(~(1u << (u_input.b % 32u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_6(_wgslsmith_f_op_f32(select(628f, 702f, select(true, true, true))), 14261i, var_1).b.a.d.c.xz, var_0, ~(-17150i));
}

