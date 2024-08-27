struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(vec4<bool>(true, true, true, true), Struct_1(true, _wgslsmith_mod_vec2_i32(select(-vec2<i32>(-24040i, 7092i), vec2<i32>(-12846i, -2147483647i), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), _wgslsmith_div_vec2_i32(~vec2<i32>(-1i, 46509i), ~vec2<i32>(2147483647i, 2147483647i))), vec3<bool>(true, true, false), ~0u ^ u_input.d.x, -1019f));
    let var_1 = Struct_3(vec4<i32>(firstLeadingBit(18105i), var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), Struct_2(vec4<bool>(var_0.b.c.x, true, var_0.b.b.x < abs(-24041i), var_0.a.x), Struct_1(!any(vec2<bool>(var_0.b.a, var_0.a.x)), select(var_0.b.b, ~vec2<i32>(20749i, var_0.b.b.x), var_0.a.x && var_0.a.x), var_0.a.xzw, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f - -827f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1373f, -1297f, var_0.b.e))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(253f, 282f, var_0.b.e))))), vec3<f32>(var_0.b.e, _wgslsmith_f_op_f32(select(-273f, _wgslsmith_f_op_f32(min(var_0.b.e, 1000f)), var_0.b.d >= var_0.b.d)), _wgslsmith_f_op_f32(select(799f, var_0.b.e, var_0.a.x || var_0.b.a))))));
    var_0 = Struct_2(vec4<bool>(var_1.b.a.x, var_1.b.b.a, true, var_0.a.x), var_1.b.b);
    let var_2 = var_1.b.b;
    var_0 = var_1.b;
    return var_1.b.a.x;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(vec4<bool>(!all(vec2<bool>(true, true)), true, func_3() & all(vec3<bool>(true, true, true)), true), Struct_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), false)), vec2<i32>(1i, 1i), vec3<bool>(_wgslsmith_mod_u32(u_input.d.x, 28041u) < _wgslsmith_mod_u32(u_input.a.x, 1u), select(true, true, true), all(vec4<bool>(true, false, false, false))), ~0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(782f, 1614f))))))));
    var var_1 = Struct_5(Struct_2(vec4<bool>(!var_0.a.x | func_3(), select(var_0.a.x, true, true), all(var_0.b.c) && (true & var_0.a.x), !func_3()), Struct_1(true, var_0.b.b, select(var_0.a.wxz, var_0.b.c, var_0.b.c), select(var_0.b.d, var_0.b.d, all(var_0.b.c)), 1000f)), var_0, _wgslsmith_sub_u32(var_0.b.d, 0u), _wgslsmith_clamp_vec3_i32(~max(vec3<i32>(-1i, var_0.b.b.x, var_0.b.b.x) & vec3<i32>(var_0.b.b.x, -35797i, var_0.b.b.x), abs(vec3<i32>(var_0.b.b.x, 20733i, var_0.b.b.x))), vec3<i32>(-42097i, var_0.b.b.x, 1i) >> (vec3<u32>(firstLeadingBit(10122u), var_0.b.d, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_0.b.b.x, -1i, var_0.b.b.x)), -vec3<i32>(50023i, -77651i, 2147483647i)), ~(-vec3<i32>(1i, 0i, var_0.b.b.x)))));
    var var_2 = var_0.b.b.x;
    let var_3 = Struct_3(-(vec4<i32>(_wgslsmith_mult_i32(var_1.a.b.b.x, 2147483647i), var_1.a.b.b.x, _wgslsmith_mod_i32(-25532i, var_0.b.b.x), min(var_0.b.b.x, var_0.b.b.x)) & ~(~vec4<i32>(1i, var_0.b.b.x, 2147483647i, -7418i))), Struct_2(var_0.a, var_1.b.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f))));
    let var_4 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~var_1.d >> (vec3<u32>(4294967295u, 37688u, 1u) % vec3<u32>(32u)), vec3<i32>(abs(0i), -9002i, _wgslsmith_add_i32(var_3.b.b.b.x, var_1.d.x)), vec3<i32>(32151i, 6991i, 1i)) & _wgslsmith_add_vec3_i32(-vec3<i32>(var_0.b.b.x, 19295i, var_3.a.x), firstLeadingBit(var_1.d ^ var_1.d)), var_3.a.xww);
    return Struct_5(Struct_2(!(!(!var_3.b.a)), Struct_1(true && var_1.a.b.c.x, ~_wgslsmith_clamp_vec2_i32(var_0.b.b, vec2<i32>(0i, var_4.x), vec2<i32>(var_1.a.b.b.x, var_4.x)), !(!var_0.a.zxw), 90161u, _wgslsmith_f_op_f32(trunc(124f)))), var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(52979u, _wgslsmith_clamp_u32(var_0.b.d, u_input.a.x, 10503u)) << (min(countOneBits(u_input.d.ww), u_input.b) % vec2<u32>(32u)), vec2<u32>(var_1.b.b.d, var_1.b.b.d)), vec3<i32>(0i, var_3.b.b.b.x, var_1.d.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = func_2();
    let var_2 = var_1;
    var var_3 = vec3<u32>(max(abs(_wgslsmith_mult_u32(~8402u, arg_1)), var_1.b.b.d), abs(~firstLeadingBit(4294967295u)), ~0u);
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-286f, -2456f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1120f, 1787f))))), vec2<f32>(var_2.b.b.e, var_1.a.b.e), arg_2.a.a.x || var_2.a.b.c.x));
    return func_2().a.b;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = -2147483647i;
    var var_1 = func_4(vec2<i32>(~18399i, -arg_0.a.x), ~(~_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(u_input.b.x, 0u))), func_2());
    var_1 = func_4(var_1.b, ~select(38025u, 1u, true), Struct_5(Struct_2(!select(vec4<bool>(false, var_1.c.x, var_1.a, true), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), true), func_2().a.b), Struct_2(select(!vec4<bool>(var_1.a, var_1.a, true, false), select(vec4<bool>(false, var_1.c.x, var_1.a, var_1.c.x), vec4<bool>(false, true, var_1.a, false), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.a)), vec4<bool>(var_1.a, true, true, false)), Struct_1(var_1.c.x, ~vec2<i32>(0i, var_1.b.x), vec3<bool>(false, var_1.a, var_1.c.x), 112141u, _wgslsmith_f_op_f32(f32(-1f) * -445f))), u_input.d.x, ~(-countOneBits(vec3<i32>(-5462i, -7772i, var_0)))));
    var var_2 = Struct_4(-arg_3.a);
    var_1 = Struct_1(!(((0u << (u_input.c % 32u)) <= 1u) != (_wgslsmith_div_f32(1000f, var_1.e) > -297f)), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -24426i, var_0, -2147483647i), vec4<i32>(-1i, -2147483647i, var_2.a.x, var_1.b.x)), vec4<i32>(var_1.b.x, var_2.a.x, 1i, 2147483647i) >> (vec4<u32>(60474u, 0u, var_1.d, 59990u) % vec4<u32>(32u))), _wgslsmith_mult_i32(firstTrailingBit(arg_3.a.x), -12223i | var_0)) >> (u_input.d.zz % vec2<u32>(32u)), select(select(var_1.c, vec3<bool>(var_1.c.x & var_1.a, true, true), any(vec2<bool>(true, true))), func_2().b.a.xww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) < var_1.e), ~48777u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)));
    return arg_3;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    let var_0 = vec2<i32>(~(~0i << (u_input.d.x % 32u)), func_1(func_1(Struct_4(vec3<i32>(1i, arg_0.a.x, 0i)), arg_1.x, vec2<u32>(u_input.a.x, 19894u), arg_0), _wgslsmith_f_op_f32(select(-1006f, _wgslsmith_f_op_f32(1000f - -516f), true)), select(~u_input.a.xw, _wgslsmith_clamp_vec2_u32(u_input.a.yz, u_input.d.wy, vec2<u32>(u_input.a.x, 52850u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 12593u), u_input.b), vec2<bool>(any(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, false)))), Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(8994i, arg_0.a.x, 31531i), -vec3<i32>(-1i, 2147483647i, 2147483647i)))).a.x);
    let var_1 = func_2().a.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-573f, _wgslsmith_f_op_f32(-func_2().a.b.e), -508f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1637f)) + _wgslsmith_f_op_f32(-var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1377f, 245f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(Struct_4(vec3<i32>(60997i, 1i, -1i)), 1076f, vec2<u32>(39359u, u_input.c), Struct_4(vec3<i32>(1i, -9464i, 2147483647i))), vec4<f32>(1009f, -904f, -738f, 1019f), 46166i))))));
    var var_1 = func_1(Struct_4(select(-vec3<i32>(1i, 1i, 1i), vec3<i32>(select(-72856i, 0i, true), -51569i, -1i), true)), var_0.x, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 1u), func_2().c), ~func_2().c), Struct_4(func_2().d));
    var var_2 = false;
    let var_3 = _wgslsmith_dot_vec3_i32(var_1.a, var_1.a);
    let var_4 = Struct_2(func_2().b.a, Struct_1(!any(vec2<bool>(true, true)), select(vec2<i32>(i32(-1i) * -7222i, 61392i >> (u_input.d.x % 32u)), var_1.a.xx, func_4(-var_1.a.yy, firstTrailingBit(u_input.a.x), Struct_5(Struct_2(vec4<bool>(true, false, true, true), Struct_1(true, vec2<i32>(-2147483647i, -1i), vec3<bool>(false, false, false), 38681u, -330f)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(true, vec2<i32>(1i, var_3), vec3<bool>(true, true, false), 4272u, -1810f)), u_input.c, var_1.a)).c.yx), func_2().a.b.c, u_input.c, -1924f));
    let var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_4(vec2<i32>(0i, -1i), u_input.d.x, Struct_5(Struct_2(vec4<bool>(false, true, var_5.c.x, true), var_5), Struct_2(var_4.a, var_5), ~var_4.b.d, var_1.a)).e, _wgslsmith_f_op_f32(-2362f - -1000f), -857f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.b.e, -1000f, var_4.b.e, -608f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.e, var_4.b.e, 830f, -274f) * vec4<f32>(-2150f, var_5.e, 1956f, 2833f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-523f, var_4.b.e, 339f, var_4.b.e)))), var_5.c.x)))));
}

