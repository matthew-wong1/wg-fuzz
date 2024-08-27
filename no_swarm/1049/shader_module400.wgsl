struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_3) -> f32 {
    let var_0 = arg_3.a;
    var var_1 = -284f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -131f)))), arg_0.d)), -327f);
    var var_3 = true;
    var var_4 = vec4<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(~arg_3.b.wwz, arg_3.b.zzy), arg_3.b.x, 30129u);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.a.a.a.x), _wgslsmith_f_op_f32(-1146f + 592f), arg_3.d)))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    var var_0 = any(select(vec2<bool>(true, true), vec2<bool>(-553f <= arg_2.d, true), true)) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b.x, arg_2.a.x, false)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-152f, _wgslsmith_f_op_f32(-arg_2.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1660f - -1137f)));
    var_1 = -479f;
    var_0 = u_input.b > 43580u;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(300f * arg_2.d), -1433f))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(select(-387f, _wgslsmith_f_op_f32(f32(-1f) * -199f), false)), true)), arg_2.d) != arg_2.a.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(363f, -1111f, -1135f, -1097f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1261f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1184f, 398f)))), select(vec3<i32>(u_input.d, 2147483647i, u_input.d << (u_input.a % 32u)), vec3<i32>(u_input.d, -48977i, 2147483647i) ^ -vec3<i32>(-18840i, 1i, u_input.d), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 553f), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, false), true)), 1i, 1422f, func_4(vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -34094i, ~u_input.d, abs(u_input.d)), -(i32(-1i) * -70274i), u_input.d), abs(abs(~vec4<u32>(4294967295u, 13162u, 1u, u_input.b))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(341f, 1778f, -503f, -1635f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, -370f, 859f, 932f)), true)), vec2<f32>(1f, 1f), -vec3<i32>(15576i, u_input.d, u_input.d) >> (~vec3<u32>(24664u, u_input.c, 63251u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(987f, 231f, 617f, -429f), vec2<f32>(1363f, -546f), vec3<i32>(-13729i, u_input.d, 46098i), -1000f), u_input.d, vec3<f32>(320f, -786f, 859f), Struct_3(Struct_2(Struct_1(vec4<f32>(284f, -216f, -260f, -579f), vec2<f32>(1000f, 1023f), vec3<i32>(u_input.d, -26296i, u_input.d), -1458f), false, u_input.d, -477f, false), vec4<u32>(u_input.a, 4294967295u, 1u, u_input.b), Struct_2(Struct_1(vec4<f32>(-1111f, -223f, 1499f, -386f), vec2<f32>(1865f, -199f), vec3<i32>(10931i, u_input.d, 0i), -116f), true, u_input.d, -485f, false), true))))), vec4<u32>(select(~u_input.a, _wgslsmith_mult_u32(u_input.b, 55123u), true), u_input.a, 7561u, 6661u)));
    var var_1 = Struct_4(Struct_2(var_0.a, var_0.e, var_0.c, -235f, false), var_0.a, !(!select(select(vec3<bool>(false, true, var_0.b), vec3<bool>(var_0.e, false, var_0.b), vec3<bool>(var_0.b, true, var_0.e)), vec3<bool>(true, true, true), select(false, var_0.b, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.a.x)))));
    let var_2 = Struct_4(var_1.a, Struct_1(var_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1337f), -329f)), reverseBits(vec3<i32>(u_input.d, -12245i, var_1.b.c.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.c, 35355u, u_input.c)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), var_1.c, 605f);
    var var_3 = vec2<i32>(countOneBits(var_0.c), ~_wgslsmith_mult_i32(var_0.c, -(~var_1.a.c)));
    var var_4 = var_0.a;
    return 31345u;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> bool {
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_add_vec4_i32(abs(-vec4<i32>(u_input.d, _wgslsmith_div_i32(1i, -84632i), -22871i, 2147483647i)), abs(min(min(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(2147483647i, -1i, 0i, 2147483647i)), vec4<i32>(u_input.d, 0i, u_input.d, -26038i) | vec4<i32>(1i, u_input.d, u_input.d, 1i)) ^ vec4<i32>(2147483647i >> (arg_0 % 32u), u_input.d, u_input.d >> (arg_2.x % 32u), u_input.d)));
    let var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 495f, -553f, -1809f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(849f, -1068f, -296f, 237f) - vec4<f32>(-365f, 628f, -682f, 1000f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, -1003f)))), _wgslsmith_add_vec3_i32(~var_1.wxz, var_1.ywx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f * 137f))), arg_1.x, ~0i, _wgslsmith_f_op_f32(296f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-433f, -176f)))), true), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, -320f, -1597f, -818f) - vec4<f32>(-953f, 310f, 615f, -529f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1080f + 1036f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(573f - 386f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(511f, -1557f), -651f) - vec2<f32>(688f, _wgslsmith_f_op_f32(abs(-1180f)))), firstLeadingBit(countOneBits(var_1.yzz)), 805f), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1042f));
    var_1 = vec4<i32>(var_1.x, u_input.d, _wgslsmith_mod_i32(var_2.a.a.c.x, 1i >> (max(arg_0, 0u) % 32u)), firstTrailingBit(47972i));
    var var_3 = arg_2.yz;
    return var_2.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec4<bool>(func_5(~func_2(), arg_1.c, ~select(arg_0, ~vec3<u32>(21111u, 10570u, 85050u), !arg_1.a.b)), select(false, false, any(vec4<bool>(false, arg_1.a.b, true, false)) == arg_1.c.x), all(select(arg_1.c.zx, vec2<bool>(select(arg_1.a.e, true, false), arg_1.b.b.x != 750f), vec2<bool>(any(vec2<bool>(arg_1.a.e, arg_1.a.b)), arg_1.b.c.x >= u_input.d))), arg_1.a.b);
    var var_1 = -1000f;
    var_1 = _wgslsmith_f_op_f32(-arg_1.b.b.x);
    var var_2 = Struct_3(arg_1.a, ~vec4<u32>(0u, _wgslsmith_clamp_u32(1u, 10465u, 3186u), u_input.c >> (2620u % 32u), arg_0.x) & (countOneBits(max(vec4<u32>(u_input.a, arg_0.x, arg_0.x, u_input.c), vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x))) << (~(~vec4<u32>(44253u, 25824u, arg_0.x, u_input.b)) % vec4<u32>(32u))), Struct_2(arg_1.a.a, false, u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1999f)), true), all(select(var_0, select(var_0, vec4<bool>(arg_1.a.e, var_0.x, true, true), !vec4<bool>(arg_1.c.x, false, var_0.x, var_0.x)), select(!var_0.x, !var_0.x, true))));
    var var_3 = arg_1.a.a;
    return var_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    let var_0 = max(arg_2.a.a.c, _wgslsmith_mod_vec3_i32((vec3<i32>(2147483647i, -7646i, u_input.d) ^ vec3<i32>(arg_2.b.c.x, 0i, 2147483647i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.a.c.x, arg_2.b.c.x, arg_0.c.x), vec3<i32>(50829i, 31492i, u_input.d), arg_2.b.c), max(select(vec3<i32>(-29088i, 1i, arg_2.b.c.x), arg_0.c, arg_2.c), arg_2.b.c)) & arg_0.c);
    let var_1 = arg_3;
    let var_2 = select(abs((_wgslsmith_clamp_vec4_i32(vec4<i32>(-3957i, u_input.d, var_0.x, 22065i), vec4<i32>(arg_2.b.c.x, -1i, -2147483647i, 17706i), vec4<i32>(u_input.d, -8390i, arg_0.c.x, 23848i)) | (vec4<i32>(u_input.d, 53293i, 2147483647i, -8491i) | vec4<i32>(arg_2.b.c.x, 2147483647i, -23934i, var_0.x))) | select(firstLeadingBit(vec4<i32>(-17558i, u_input.d, -52633i, u_input.d)), vec4<i32>(var_0.x, -41831i, var_0.x, arg_0.c.x) ^ vec4<i32>(arg_2.b.c.x, -81475i, 14536i, arg_0.c.x), arg_2.a.e & true)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, var_0.x), -arg_2.a.c, 1i, func_1(vec3<u32>(17739u, u_input.c, 24320u), Struct_4(Struct_2(arg_2.a.a, arg_3, var_0.x, 1000f, true), Struct_1(vec4<f32>(arg_0.d, 165f, arg_1, -1000f), vec2<f32>(arg_0.a.x, arg_0.b.x), vec3<i32>(2147483647i, arg_0.c.x, u_input.d), -1000f), vec3<bool>(true, true, arg_3), -862f)).a.c.x), vec4<i32>(1i, -arg_2.b.c.x, arg_0.c.x, _wgslsmith_div_i32(var_0.x, var_0.x))) | ((_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, -1i, u_input.d, arg_0.c.x), vec4<i32>(-13761i, u_input.d, arg_2.b.c.x, 0i)) | -vec4<i32>(arg_0.c.x, 19341i, -3276i, var_0.x)) >> (~vec4<u32>(35842u, u_input.a, u_input.b, u_input.c) % vec4<u32>(32u))), !(!vec4<bool>(arg_2.a.e, !arg_2.c.x, true, arg_2.c.x)));
    var var_3 = func_1(~_wgslsmith_mult_vec3_u32(~select(vec3<u32>(36256u, u_input.c, 6903u), vec3<u32>(4294967295u, 8333u, 65440u), arg_2.c), firstTrailingBit(reverseBits(vec3<u32>(4294967295u, u_input.c, 1u)))), arg_2);
    let var_4 = true;
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(arg_0.a.yz - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_3.a.a.ww, arg_2.b.a.yz)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_0.d), var_3.a.b))), _wgslsmith_f_op_vec2_f32(-arg_2.b.a.yw)))), vec3<i32>(_wgslsmith_sub_i32(u_input.d, i32(-1i) * -63205i) & u_input.d, 13188i, arg_2.a.c), _wgslsmith_f_op_f32(max(var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1889f, 1420f, var_3.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, false);
    var var_1 = Struct_5(u_input.d << (~select(u_input.a, ~u_input.c, !var_0.x) % 32u), Struct_2(func_6(Struct_1(vec4<f32>(722f, 121f, -394f, 812f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1268f, -502f)), vec3<i32>(-40789i, 1i, u_input.d) >> (vec3<u32>(0u, u_input.c, 4294967295u) % vec3<u32>(32u)), -1147f), _wgslsmith_f_op_f32(max(458f, -434f)), Struct_4(func_1(vec3<u32>(80216u, 17509u, u_input.c), Struct_4(Struct_2(Struct_1(vec4<f32>(681f, -537f, 1706f, 104f), vec2<f32>(-294f, -743f), vec3<i32>(7852i, u_input.d, 1i), -453f), var_0.x, -2147483647i, 646f, var_0.x), Struct_1(vec4<f32>(-629f, 1185f, 492f, 696f), vec2<f32>(-831f, 226f), vec3<i32>(0i, u_input.d, u_input.d), 327f), vec3<bool>(false, true, var_0.x), 2522f)), func_1(vec3<u32>(52209u, u_input.c, 0u), Struct_4(Struct_2(Struct_1(vec4<f32>(-204f, 470f, -1056f, -801f), vec2<f32>(859f, -1100f), vec3<i32>(u_input.d, u_input.d, -2147483647i), -1000f), var_0.x, u_input.d, 111f, true), Struct_1(vec4<f32>(-535f, 434f, -218f, 1102f), vec2<f32>(893f, -790f), vec3<i32>(u_input.d, u_input.d, u_input.d), -1271f), vec3<bool>(var_0.x, true, false), 1000f)).a, vec3<bool>(true, var_0.x, false), _wgslsmith_f_op_f32(-502f * 2118f)), true), var_0.x, ~func_1(~vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_4(Struct_2(Struct_1(vec4<f32>(154f, -1000f, -802f, -470f), vec2<f32>(-341f, -2669f), vec3<i32>(22412i, 1i, u_input.d), 763f), false, -1i, -821f, var_0.x), Struct_1(vec4<f32>(-1009f, -205f, 2503f, -1127f), vec2<f32>(-1303f, 644f), vec3<i32>(u_input.d, 0i, -2147483647i), -253f), vec3<bool>(var_0.x, true, var_0.x), 733f)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) + _wgslsmith_f_op_f32(floor(-774f)))), true), vec3<bool>(var_0.x, var_0.x & (var_0.x || false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -948f))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -705f)))));
    let var_2 = Struct_5(select(15617i, 0i, !all(!var_1.c)), var_1.b, vec3<bool>(var_0.x, !(func_6(var_1.b.a, 360f, Struct_4(Struct_2(var_1.b.a, false, -52619i, 453f, true), Struct_1(vec4<f32>(890f, var_1.b.a.b.x, var_1.b.a.d, -147f), var_1.b.a.b, var_1.b.a.c, var_1.b.d), var_1.c, var_1.b.d), var_1.c.x).a.x == _wgslsmith_f_op_f32(var_1.b.a.a.x + var_1.b.a.a.x)), var_1.b.e == any(select(var_1.c.zx, var_0, vec2<bool>(var_0.x, var_0.x)))));
    let var_3 = _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, ~12708u, 0u, u_input.a), vec4<u32>(4294967295u, u_input.c | 113149u, u_input.b, max(u_input.b, 38983u))), ~vec4<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.c, u_input.c), 41219u & u_input.c, abs(16710u))) ^ countOneBits(~reverseBits(vec4<u32>(4294967295u, 5244u, u_input.b, 0u) << (vec4<u32>(4294967295u, u_input.c, 11252u, u_input.a) % vec4<u32>(32u))));
    var var_4 = -1439f;
    let var_5 = vec2<f32>(var_1.b.a.b.x, 2039f);
    let var_6 = var_2.b.c;
    let var_7 = Struct_4(func_1(vec3<u32>(7926u, 0u, 31873u), Struct_4(func_1(~vec3<u32>(var_3.x, 1u, 0u), Struct_4(Struct_2(var_1.b.a, var_1.b.e, 1i, var_5.x, var_0.x), var_2.b.a, var_2.c, var_1.b.d)), var_1.b.a, var_1.c, _wgslsmith_f_op_f32(var_1.b.d + _wgslsmith_f_op_f32(floor(-716f))))), Struct_1(var_1.b.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), var_2.b.d)), func_6(var_1.b.a, func_6(func_6(var_1.b.a, -1960f, Struct_4(var_1.b, Struct_1(var_1.b.a.a, var_1.b.a.b, vec3<i32>(var_6, var_2.b.c, -38599i), 1250f), vec3<bool>(var_0.x, false, false), -1662f), var_2.b.e), var_5.x, Struct_4(Struct_2(Struct_1(var_1.b.a.a, var_5, vec3<i32>(var_1.b.a.c.x, 43518i, var_2.b.c), var_5.x), false, var_6, var_2.b.a.d, var_1.c.x), var_2.b.a, var_1.c, var_2.b.a.d), true).b.x, Struct_4(func_1(var_3.xwz, Struct_4(Struct_2(var_2.b.a, true, 2147483647i, -281f, var_2.c.x), var_2.b.a, var_2.c, var_2.b.a.a.x)), var_2.b.a, vec3<bool>(false, var_0.x, var_2.c.x), _wgslsmith_f_op_f32(-288f - 163f)), var_1.b.e).c, -338f), vec3<bool>(false, !var_1.b.b, true), var_2.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(~2147483647i, var_1.b.a.c.x), -1611f, ~var_3.zwz);
}

