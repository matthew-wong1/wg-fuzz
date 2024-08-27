struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_5, arg_3: bool) -> vec4<u32> {
    let var_0 = u_input.c;
    let var_1 = ~arg_2.a.e.b.b.x;
    var var_2 = select(vec2<bool>(!all(arg_2.a.b), !(30801i < (arg_0.b.d & arg_2.a.a.x))), vec2<bool>(!arg_3, arg_3), !vec2<bool>(any(select(vec2<bool>(false, arg_2.a.b.x), arg_2.a.c.zy, true)), true));
    var_2 = select(vec2<bool>(any(vec2<bool>(true, true)), arg_2.a.d.a > _wgslsmith_f_op_f32(f32(-1f) * -1373f)), select(vec2<bool>(!var_2.x, all(vec4<bool>(false, false, var_2.x, arg_3))), select(select(vec2<bool>(true, arg_2.a.b.x), !vec2<bool>(arg_3, true), select(false, true, arg_3)), !arg_2.a.b.zz, !(!arg_2.a.b.zy)), arg_3), all(vec2<bool>(any(arg_2.a.c.yz), any(vec4<bool>(arg_3, true, var_2.x, arg_3)))));
    var var_3 = _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(arg_0.b.b.b.xzy, ~firstTrailingBit(vec3<u32>(arg_2.a.e.b.b.x, 19086u, var_1))), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1, arg_0.b.b.b.x, var_1), u_input.b.zxz), (vec3<u32>(arg_2.a.d.c.b.x, arg_2.a.d.b.b.x, 7236u) | arg_0.b.c.b.xzw) << (vec3<u32>(89449u, u_input.b.x, 4294967295u) % vec3<u32>(32u))) | u_input.e.yyy);
    return ~arg_0.b.b.b;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(1f, Struct_1(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, 17082i, u_input.c), ~vec4<i32>(u_input.c, u_input.c, 21790i, -1i))), ~(func_3(Struct_4(vec3<i32>(u_input.c, u_input.c, -6632i), Struct_2(864f, Struct_1(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), u_input.b), Struct_1(vec4<i32>(u_input.c, 0i, u_input.c, 42156i), vec4<u32>(16102u, 75520u, 4294967295u, u_input.e.x)), 2147483647i, vec4<i32>(0i, 2147483647i, u_input.c, 0i))), u_input.c, Struct_5(Struct_3(vec4<i32>(u_input.c, 12302i, u_input.c, u_input.c), vec3<bool>(false, true, true), vec3<bool>(true, false, true), Struct_2(-1020f, Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), u_input.d), Struct_1(vec4<i32>(-1i, -1i, u_input.c, -1i), vec4<u32>(u_input.b.x, 4294967295u, 13358u, 28279u)), u_input.c, vec4<i32>(1i, u_input.c, u_input.c, -2147483647i)), Struct_2(-2059f, Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, -38026i), u_input.d), Struct_1(vec4<i32>(1i, u_input.c, u_input.c, u_input.c), vec4<u32>(13832u, 49603u, 58481u, u_input.a)), u_input.c, vec4<i32>(u_input.c, 2147483647i, -1i, -10362i)))), true) & vec4<u32>(1u, u_input.b.x, u_input.e.x, u_input.a))), Struct_1(~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, -1i, u_input.c, 34687i), vec4<i32>(u_input.c, -53212i, u_input.c, 1i)), ~vec4<i32>(u_input.c, -2486i, -2147483647i, -20337i)), reverseBits(u_input.d)), i32(-1i) * -1i, _wgslsmith_clamp_vec4_i32(min(reverseBits(~vec4<i32>(u_input.c, 85120i, -6378i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, -41061i), -vec4<i32>(u_input.c, u_input.c, 2147483647i, -34690i))), ~vec4<i32>(u_input.c, 2827i, -40693i, u_input.c), vec4<i32>(abs(~14292i), countOneBits(~(-2147483647i)), -29617i, _wgslsmith_div_i32(u_input.c, u_input.c))));
    var var_1 = Struct_3(vec4<i32>(-52660i, -(~reverseBits(0i)), u_input.c, 4253i), vec3<bool>(~u_input.e.x == u_input.a, !(var_0.c.b.x < 75745u), ~u_input.a < 125u), vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), u_input.c > ((var_0.b.a.x ^ 36026i) ^ firstLeadingBit(u_input.c))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1635f + var_0.a), 1463f, any(vec2<bool>(false, true))))), var_0.c, Struct_1(~(-vec4<i32>(0i, var_0.c.a.x, 673i, var_0.b.a.x)), abs(~u_input.b)), _wgslsmith_sub_i32(11345i, -7654i), vec4<i32>(var_0.e.x, -(-2147483647i ^ var_0.b.a.x), abs(firstTrailingBit(var_0.d)), -u_input.c)), var_0);
    var var_2 = Struct_3(var_1.e.b.a, !select(vec3<bool>(true, false, true), !(!var_1.c), !select(var_1.c, var_1.b, false)), vec3<bool>(var_1.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), var_0.c.b.ww), 32982u) < _wgslsmith_dot_vec2_u32(u_input.b.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.d.x), var_1.d.c.b.wz)), var_1.c.x), var_1.d, var_1.d);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(409f, 598f)))) - var_1.d.a), _wgslsmith_f_op_f32(-var_0.a));
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1332f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.a)))), _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, var_3) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.e.a, var_0.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, 290f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.a, -1055f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1045f), vec2<f32>(var_1.d.a, 765f)))))));
    return var_2.e.c.b.ww;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(u_input.c, i32(-1i) * -14952i);
    var var_1 = _wgslsmith_sub_u32(~(~0u) >> (0u % 32u), _wgslsmith_mod_u32(abs(0u), u_input.d.x & 36659u));
    let var_2 = ~func_2();
    var var_3 = (_wgslsmith_sub_u32(select(u_input.a << (var_2.x % 32u), var_2.x, true), func_2().x) != 43864u) | false;
    var_1 = firstTrailingBit(u_input.e.x) ^ (~_wgslsmith_dot_vec2_u32(~u_input.d.xz, countOneBits(vec2<u32>(82543u, var_2.x))) ^ var_2.x);
    return Struct_1(-vec4<i32>(firstTrailingBit(var_0), 38819i, 14477i, -u_input.c), u_input.d);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = -(abs(arg_1.x) >> (u_input.d.x % 32u));
    var var_1 = arg_2;
    var var_2 = arg_2;
    var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(-1000f)), var_1.b, func_1(), 1i, _wgslsmith_div_vec4_i32(-(~var_1.c.a), min(~vec4<i32>(2703i, u_input.c, var_1.c.a.x, 2147483647i), vec4<i32>(-4431i, var_2.d, var_1.b.a.x, -442i))) | vec4<i32>(~1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 1i, arg_1.x), vec3<i32>(2147483647i, var_2.e.x, -685i)), arg_2.e.x | _wgslsmith_mult_i32(0i, var_0), reverseBits(21759i)));
    let var_3 = _wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(-arg_3));
    return select(!vec2<bool>(_wgslsmith_f_op_f32(-300f - 696f) != arg_3.x, any(vec2<bool>(true, true))), select(vec2<bool>(-653f < _wgslsmith_f_op_f32(step(221f, var_2.a)), true), select(vec2<bool>(false, select(false, true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), any(vec2<bool>(false, false))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 0u), vec3<u32>(var_2.b.b.x, 4294967295u, var_2.b.b.x)) <= 41450u)), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = vec3<f32>(738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1742f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1047f, 1362f))));
    let var_1 = countOneBits(0i);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -281f), -180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_2 = _wgslsmith_add_u32(127729u, _wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.d.xz), ~(~vec2<u32>(71074u, u_input.b.x)))));
    var var_3 = ~vec2<i32>(-_wgslsmith_div_i32(-34647i, -2147483647i), ~(~(var_1 << (8676u % 32u))));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1627f), func_1(), Struct_1(func_1().a, vec4<u32>(~u_input.b.x, _wgslsmith_sub_u32(select(u_input.d.x, u_input.e.x, arg_0.x), u_input.d.x ^ 4294967295u), ~_wgslsmith_clamp_u32(0u, u_input.a, u_input.d.x), 24713u)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~var_3.x, 44024i & var_1, _wgslsmith_clamp_i32(2147483647i, var_1, var_3.x), 53922i), _wgslsmith_mult_vec4_i32(select(arg_1, vec4<i32>(-1i, 0i, -1i, -3326i), arg_0.x), vec4<i32>(var_1, arg_1.x, -2147483647i, var_1))), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1, var_1, u_input.c, -33873i), vec4<i32>(55393i, 0i, -2147483647i, 2147483647i))), _wgslsmith_mod_vec4_i32(arg_1, -arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -767f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(941f + var_0) + _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-459f - _wgslsmith_f_op_f32(step(var_0, -831f))), true)));
    let var_2 = func_5(func_4(-441f, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, u_input.c), countOneBits(-3827i)), ~(~u_input.c), -2147483647i), Struct_2(_wgslsmith_f_op_f32(-var_1), func_1(), func_1(), -10254i, vec4<i32>(_wgslsmith_mult_i32(u_input.c, -2147483647i), u_input.c, -u_input.c, 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0, -861f, 1648f)))))), vec4<i32>(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-366i, u_input.c), -firstLeadingBit(vec2<i32>(2147483647i, 3003i))), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, u_input.c), vec4<i32>(0i, 2147483647i, u_input.c, u_input.c)), vec4<i32>(-2147483647i, u_input.c, u_input.c, -2147483647i) << (u_input.d % vec4<u32>(32u)))), 4403i));
    var var_3 = Struct_4(var_2.e.xxy << (((~u_input.e.xyw ^ vec3<u32>(0u, 1u, 4294967295u)) ^ vec3<u32>(~0u, u_input.d.x, u_input.e.x)) % vec3<u32>(32u)), func_5(vec2<bool>(all(vec2<bool>(false, false)), false), _wgslsmith_sub_vec4_i32(-vec4<i32>(16142i, 35145i, -1i, -1i), vec4<i32>(var_2.d, var_2.d, _wgslsmith_mult_i32(var_2.c.a.x, var_2.b.a.x), ~23819i))));
    var var_4 = any(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), u_input.c >= var_2.b.a.x), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(true, true, true)), select(vec3<bool>(true, var_1 <= var_3.b.a, all(vec4<bool>(true, true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), all(vec3<bool>(false, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(var_2.b.a, vec4<i32>(var_3.a.x, abs(i32(-1i) * -2147483647i), 30284i, abs(2147483647i))), -var_2.b.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1389f * 1f), -1414f)), min(vec3<i32>(_wgslsmith_clamp_i32(var_3.a.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-17702i, u_input.c, -2147483647i, -1i), vec4<i32>(4842i, -1i, -1i, -1i))), -11955i, _wgslsmith_dot_vec2_i32(~var_2.e.ww, func_5(vec2<bool>(true, true), vec4<i32>(-2147483647i, -30926i, u_input.c, 5321i)).c.a.xw)), _wgslsmith_sub_vec3_i32(var_2.b.a.wwz >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c.b.x, u_input.b.x, 20136u), vec3<u32>(45008u, var_2.c.b.x, u_input.b.x)) % vec3<u32>(32u)), var_3.a)));
}

