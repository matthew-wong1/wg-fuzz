struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> bool {
    let var_0 = arg_0.c.c.c.b.yyx;
    var var_1 = vec4<bool>(!select(true, !(arg_1 >= 1649f), arg_0.c.a.x), true, false, !all(arg_0.c.a));
    var_1 = vec4<bool>(arg_0.c.a.x, any(var_1.xxy), true, var_1.x);
    return any(vec4<bool>(arg_0.c.a.x, any(vec4<bool>(any(vec4<bool>(arg_0.c.a.x, false, true, arg_0.c.a.x)), all(vec4<bool>(var_1.x, var_1.x, arg_0.c.a.x, true)), false, var_1.x)), select(arg_0.a, true, all(vec4<bool>(var_1.x, arg_0.a, var_1.x, var_1.x))), !(!(true || arg_0.c.a.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(all(vec4<bool>(any(vec2<bool>(true, true)), u_input.b.x < -1225i, func_3(Struct_5(false, -948f, Struct_4(vec2<bool>(false, false), 856f, Struct_3(u_input.a.wzw, Struct_1(vec3<i32>(-2147483647i, 2555i, u_input.a.x), vec4<u32>(u_input.c, u_input.c, u_input.c, 39729u), u_input.b, u_input.a.zxz), Struct_1(u_input.a.yxx, vec4<u32>(0u, u_input.c, 15187u, u_input.c), u_input.a.xy, vec3<i32>(52558i, -1i, -2147483647i)))), Struct_3(u_input.a.xyx, Struct_1(u_input.a.ywx, vec4<u32>(0u, 0u, 32276u, u_input.c), vec2<i32>(u_input.a.x, 13858i), u_input.a.zzy), Struct_1(vec3<i32>(u_input.b.x, 25555i, u_input.a.x), vec4<u32>(42344u, 1850u, u_input.c, u_input.c), vec2<i32>(u_input.b.x, -32242i), vec3<i32>(0i, -1i, u_input.b.x)))), 335f), true)), all(!vec2<bool>(true, all(vec4<bool>(false, true, false, true)))));
    let var_1 = Struct_2(Struct_1(vec3<i32>((i32(-1i) * -23285i) ^ reverseBits(u_input.b.x), u_input.b.x, _wgslsmith_sub_i32(u_input.a.x, -u_input.b.x)), ~(~vec4<u32>(u_input.c, u_input.c, 23293u, u_input.c)), ~_wgslsmith_mod_vec2_i32(abs(u_input.b), u_input.a.zz << (vec2<u32>(15257u, u_input.c) % vec2<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(0i, u_input.b.x >> (u_input.c % 32u)), u_input.b.x | 39555i, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)))), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.a.x, -50271i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i), u_input.a), _wgslsmith_add_i32(i32(-1i) * -21923i, -u_input.a.x), min(0i, 1i << (u_input.c % 32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 28121u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u)), min(~4294967295u, 0u), 0u, _wgslsmith_div_u32(~4294967295u, u_input.c)), vec2<i32>((u_input.b.x >> (95408u % 32u)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 57249i), vec2<i32>(49461i, u_input.b.x)), abs(-2147483647i)), select(_wgslsmith_mult_vec3_i32(select(u_input.a.yyz, vec3<i32>(-23282i, 2147483647i, -38424i), vec3<bool>(var_0.x, var_0.x, false)), u_input.a.ywy), countOneBits(vec3<i32>(u_input.b.x, -2147483647i, -20047i)), !(!vec3<bool>(true, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-2137f * _wgslsmith_f_op_f32(-422f - 1f)));
    var var_2 = Struct_3(vec3<i32>(6877i, u_input.b.x, -1i) << (min(var_1.a.b.xxy, ~vec3<u32>(u_input.c, u_input.c, 4294967295u)) % vec3<u32>(32u)), Struct_1(var_1.b.d, var_1.b.b, _wgslsmith_mod_vec2_i32(abs(select(vec2<i32>(-18928i, u_input.a.x), vec2<i32>(-37418i, u_input.a.x), vec2<bool>(var_0.x, var_0.x))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), u_input.b, vec2<i32>(u_input.a.x, u_input.a.x))), min(vec3<i32>(30460i, var_1.a.d.x, u_input.b.x), u_input.a.ywz)), Struct_1(abs(vec3<i32>(u_input.b.x, 23077i, -var_1.b.a.x)), firstLeadingBit(~select(vec4<u32>(6112u, var_1.b.b.x, 0u, 0u), vec4<u32>(var_1.b.b.x, 0u, u_input.c, 1u), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(27598i, var_1.a.c.x), -u_input.a.xw), vec3<i32>(_wgslsmith_add_i32(var_1.b.a.x, var_1.b.c.x), abs(1i), 11763i) << (var_1.a.b.xyw % vec3<u32>(32u))));
    var_0 = !select(select(vec2<bool>(var_0.x, false), select(vec2<bool>(var_0.x, true), select(vec2<bool>(var_0.x, true), vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, false)), !select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true))), vec2<bool>(select(false != var_0.x, true, !var_0.x), !var_0.x), !vec2<bool>(!var_0.x, false));
    var_2 = Struct_3(_wgslsmith_clamp_vec3_i32(firstLeadingBit(reverseBits(var_2.b.d)), vec3<i32>(2147483647i, abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -23707i), u_input.a.xy)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(12836u, 35573u, var_2.b.b.x), var_2.c.b.yzz) % vec3<u32>(32u)), ~(vec3<i32>(var_1.b.d.x, 0i, u_input.a.x) ^ _wgslsmith_mult_vec3_i32(u_input.a.xyw, vec3<i32>(1i, -2806i, u_input.a.x)))), Struct_1(max(_wgslsmith_mult_vec3_i32(select(u_input.a.yzx, u_input.a.wyy, var_0.x), firstLeadingBit(vec3<i32>(var_1.a.d.x, var_2.c.d.x, 2147483647i))), var_1.b.d), var_1.a.b, _wgslsmith_div_vec2_i32((vec2<i32>(var_1.a.d.x, u_input.b.x) ^ var_1.b.a.zz) | -vec2<i32>(var_2.a.x, -33509i), vec2<i32>(46774i, -16401i)), _wgslsmith_div_vec3_i32(select(-u_input.a.wzw, var_1.a.d, true), _wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, var_2.a.x, 1i), _wgslsmith_mult_vec3_i32(var_1.a.a, vec3<i32>(u_input.a.x, -2147483647i, 47054i))))), var_1.b);
    return Struct_1(~(-min(_wgslsmith_clamp_vec3_i32(vec3<i32>(15498i, 10610i, -40670i), u_input.a.zwz, vec3<i32>(28679i, -2147483647i, var_1.a.c.x)), _wgslsmith_add_vec3_i32(u_input.a.xwx, vec3<i32>(var_1.a.d.x, u_input.b.x, u_input.b.x)))), abs(~(~var_2.b.b) << (vec4<u32>(61656u, _wgslsmith_clamp_u32(1u, var_1.a.b.x, var_1.a.b.x), _wgslsmith_sub_u32(60941u, 0u), 2771u) % vec4<u32>(32u))), vec2<i32>(~(-var_2.b.d.x), _wgslsmith_sub_i32(-var_2.b.a.x << (~0u % 32u), var_2.a.x | (i32(-1i) * -2147483647i))), vec3<i32>(var_2.a.x, 9475i, -26864i));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(firstTrailingBit(u_input.a.xwz), func_2(), Struct_1(vec3<i32>(countOneBits(-u_input.a.x), ~(1i >> (u_input.c % 32u)), 2147483647i), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), u_input.a.zx, u_input.a.xwx));
    var var_1 = !vec2<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)));
    var var_2 = Struct_4(vec2<bool>(!any(!vec2<bool>(var_1.x, var_1.x)), var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1465f)), _wgslsmith_f_op_f32(select(-646f, -1515f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-599f))))), var_0);
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, firstTrailingBit(51547u), min(_wgslsmith_add_u32(2330u, var_0.c.b.x), ~var_0.b.b.x), 4294967295u), vec4<u32>(46919u, u_input.c | 39427u, _wgslsmith_mod_u32(53752u, var_2.c.c.b.x) | (u_input.c ^ var_2.c.b.b.x), var_0.b.b.x)), select(min(vec4<u32>(~11316u, abs(var_2.c.b.b.x), countOneBits(13810u), reverseBits(8564u)), select(vec4<u32>(70990u, var_0.b.b.x, 51133u, 0u) ^ var_0.b.b, var_2.c.b.b, true)), vec4<u32>(~abs(8461u), u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.c.b.x, 90236u, var_0.c.b.x), var_0.b.b.xzx), 8237u), !select(select(vec4<bool>(var_1.x, true, var_1.x, var_2.a.x), vec4<bool>(var_2.a.x, true, var_2.a.x, var_1.x), var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, false, true, false), vec4<bool>(var_1.x, false, false, true)), !vec4<bool>(var_1.x, var_2.a.x, false, false))));
    var_2 = Struct_4(!vec2<bool>(func_3(Struct_5(var_2.a.x, -1170f, Struct_4(vec2<bool>(true, true), var_2.b, Struct_3(vec3<i32>(var_2.c.a.x, u_input.a.x, u_input.b.x), Struct_1(vec3<i32>(-58287i, u_input.a.x, 1i), var_0.b.b, var_2.c.c.d.zx, vec3<i32>(2147483647i, u_input.b.x, -52355i)), Struct_1(var_2.c.a, vec4<u32>(var_3.x, var_2.c.c.b.x, var_0.c.b.x, var_2.c.b.b.x), vec2<i32>(u_input.a.x, -24772i), u_input.a.zzy))), Struct_3(var_2.c.c.a, Struct_1(vec3<i32>(u_input.a.x, u_input.b.x, var_2.c.c.d.x), var_0.b.b, vec2<i32>(-37118i, 71381i), vec3<i32>(var_0.a.x, var_0.b.a.x, var_0.c.c.x)), Struct_1(var_2.c.c.d, var_3, var_2.c.b.a.yx, vec3<i32>(u_input.b.x, var_2.c.b.d.x, 54872i)))), var_2.b), all(select(var_2.a, vec2<bool>(true, false), var_1.x))), _wgslsmith_f_op_f32(-var_2.b), var_0);
    return func_2();
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_5 {
    return Struct_5(true & !((1383f > arg_2.c) == true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.c, -1049f)))))), Struct_4(select(vec2<bool>(true, false), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), true), -541f, Struct_3(vec3<i32>(2147483647i, -8457i, 0i) & -u_input.a.yxx, Struct_1(arg_2.b.a, vec4<u32>(1u, 4294967295u, u_input.c, arg_3), vec2<i32>(-20324i, -1i) >> (arg_2.b.b.xy % vec2<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.d.x, arg_2.a.d.x, u_input.a.x), u_input.a.wzz)), arg_2.b)), Struct_3(select(-u_input.a.zzz, countOneBits(vec3<i32>(-2147483647i, u_input.b.x, 0i)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), arg_2.a, Struct_1(~vec3<i32>(-5598i, u_input.a.x, u_input.b.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, arg_3, 4294967295u, 48700u), firstLeadingBit(arg_2.a.b)), vec2<i32>(u_input.b.x, i32(-1i) * -59470i), func_1().a)));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_5) -> f32 {
    var var_0 = select(select(!(!vec3<bool>(arg_2.c.a.x, arg_2.a, arg_2.a)), vec3<bool>(true, true, true), true == arg_2.c.a.x), vec3<bool>(false, arg_2.c.a.x, true), true);
    var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(var_0.x, any(select(select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(arg_2.a, arg_2.a, false), arg_2.c.a.x), select(vec3<bool>(arg_2.a, false, arg_2.c.a.x), vec3<bool>(var_0.x, false, arg_2.a), false), all(vec3<bool>(true, var_0.x, var_0.x))), select(!vec3<bool>(arg_2.a, false, var_0.x), vec3<bool>(var_0.x, arg_2.a, true), func_3(Struct_5(false, 451f, Struct_4(arg_2.c.a, 1000f, Struct_3(arg_2.c.c.a, Struct_1(vec3<i32>(2147483647i, 1i, arg_2.c.c.a.x), arg_2.c.c.b.b, arg_2.d.c.c, vec3<i32>(0i, arg_2.c.c.b.d.x, -9659i)), Struct_1(vec3<i32>(1i, 54850i, u_input.a.x), vec4<u32>(u_input.c, 21829u, 0u, 4294967295u), u_input.a.zz, arg_2.c.c.b.a))), arg_2.d), -1271f)), false)), _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-639f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f * 2434f)));
    var var_1 = u_input.b.x;
    var var_2 = arg_2.d.c.b.x;
    return _wgslsmith_f_op_f32(-arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), 1f), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1111f))))), ~vec2<u32>(1u, 43771u), Struct_2(func_1(), Struct_1(~vec3<i32>(1i, 1i, u_input.b.x), func_1().b, _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, u_input.b), u_input.a.wwy), _wgslsmith_f_op_f32(min(2754f, -1045f))), u_input.c)));
    let var_1 = false;
    var var_2 = vec3<bool>(var_1, any(!(!vec3<bool>(var_1, var_1, var_1))) & select(any(vec3<bool>(true, true, true)), var_1, _wgslsmith_f_op_f32(trunc(-1200f)) < _wgslsmith_f_op_f32(1213f * var_0)), !(!(true & func_4(var_0, vec2<u32>(u_input.c, 1u), Struct_2(Struct_1(vec3<i32>(u_input.b.x, 1i, u_input.a.x), vec4<u32>(u_input.c, 4294967295u, 4294967295u, 21006u), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xyw), Struct_1(u_input.a.xwz, vec4<u32>(u_input.c, u_input.c, 41471u, u_input.c), u_input.a.wz, u_input.a.wyw), var_0), u_input.c).a)));
    var var_3 = func_4(_wgslsmith_f_op_f32(-1000f - 617f), abs(firstTrailingBit(abs(vec2<u32>(0u, u_input.c))) ^ vec2<u32>(71079u, _wgslsmith_mult_u32(14300u, u_input.c))), Struct_2(func_4(var_0, _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, 1u)), Struct_2(func_4(var_0, vec2<u32>(0u, 6269u), Struct_2(Struct_1(u_input.a.zxz, vec4<u32>(u_input.c, u_input.c, 1u, 1u), vec2<i32>(1219i, 28662i), u_input.a.zxy), Struct_1(u_input.a.zxx, vec4<u32>(u_input.c, 1u, 42419u, u_input.c), vec2<i32>(u_input.a.x, -1i), vec3<i32>(u_input.b.x, 1i, u_input.b.x)), 1000f), 21938u).d.b, Struct_1(u_input.a.zyx, vec4<u32>(u_input.c, 84930u, u_input.c, 4294967295u), u_input.a.zy, u_input.a.yzy), _wgslsmith_f_op_f32(f32(-1f) * -1455f)), 107725u).c.c.c, Struct_1(u_input.a.zzw, ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, 4294967295u, 4294967295u, 1u)), select(vec2<i32>(-46170i, u_input.b.x) | vec2<i32>(-28506i, u_input.a.x), select(u_input.a.yw, vec2<i32>(6354i, 0i), var_2.x), var_2.xy), ~(-vec3<i32>(u_input.a.x, 0i, 1i))), 927f), abs(0u)).c;
    var var_4 = var_3.c.b.b.yw;
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

