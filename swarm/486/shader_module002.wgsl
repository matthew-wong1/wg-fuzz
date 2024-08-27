struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = ~vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.c), _wgslsmith_sub_u32(u_input.c, u_input.c)), 74134u, u_input.c);
    var_0 = firstLeadingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, var_0.x, 4294967295u), ~vec3<u32>(var_0.x, 1u, 7906u), ~vec3<u32>(49407u, u_input.c, var_0.x)), vec3<u32>(0u, var_0.x, var_0.x)));
    let var_1 = Struct_2(~_wgslsmith_add_u32(u_input.c, 1u), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(true, false, true, true))), min(max(vec2<u32>(u_input.c, u_input.a), var_0.zy), ~vec2<u32>(1620u, u_input.c)), vec2<bool>(true, true), any(vec2<bool>(true, true)), var_0.x <= 4294967295u));
    var var_2 = Struct_3(Struct_2(u_input.c, var_1.b), -vec4<i32>(u_input.b.x, u_input.b.x, abs(u_input.b.x | u_input.b.x), u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), -957f, var_1.b);
    var var_3 = Struct_3(Struct_2(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(3440u, var_2.a.b.b.x)), var_1.b.b.x), Struct_1(vec2<bool>(true, false & var_1.b.a.x), reverseBits(vec2<u32>(0u, 4294967295u)), select(var_1.b.a, select(var_2.e.a, var_2.e.a, false), !var_1.b.c), !var_2.e.d, false && any(var_1.b.c))), var_2.c, _wgslsmith_mult_vec4_i32(var_2.c, min(var_2.b | (vec4<i32>(u_input.b.x, var_2.b.x, var_2.b.x, var_2.c.x) >> (vec4<u32>(14612u, var_0.x, 4294967295u, 1u) % vec4<u32>(32u))), vec4<i32>(2147483647i, 1562i, var_2.c.x, u_input.b.x) >> (~vec4<u32>(var_0.x, u_input.a, 48840u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(select(var_2.d, 461f, var_1.b.d))))))), Struct_1(!(!select(var_1.b.c, var_1.b.c, vec2<bool>(false, var_2.a.b.d))), ~(var_2.a.b.b & _wgslsmith_mult_vec2_u32(var_0.xz, vec2<u32>(var_1.b.b.x, 29559u))), select(vec2<bool>(!var_2.e.c.x, false | var_1.b.d), vec2<bool>(var_2.e.e, var_1.b.e && var_1.b.c.x), vec2<bool>(true, all(vec3<bool>(true, true, false)))), true, all(var_1.b.a)));
    return !var_3.e.a;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_5(Struct_3(Struct_2(_wgslsmith_add_u32(u_input.c, 1u), Struct_1(func_3(), abs(vec2<u32>(u_input.c, u_input.c)), vec2<bool>(true, true), true, arg_0.x >= arg_0.x)), min(firstTrailingBit(min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 22872i), vec4<i32>(-27259i, 2147483647i, 0i, -24739i))), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), -abs(-vec4<i32>(-16651i, u_input.b.x, -17503i, u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f) + arg_0.x) * 950f), Struct_1(vec2<bool>(true, true), ~reverseBits(vec2<u32>(4294967295u, 23385u)), vec2<bool>(true, true), select(true, false, 1219u == u_input.c), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))))), Struct_3(Struct_2(_wgslsmith_clamp_u32(select(33166u, 34610u, false), u_input.c, 24856u), Struct_1(vec2<bool>(true, true), ~vec2<u32>(u_input.c, 0u), func_3(), true, u_input.a < 1u)), vec4<i32>(-1i, -u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(2147483647i, u_input.b.x)), u_input.b.x), ~(~u_input.b.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), ~vec4<i32>(u_input.b.x, u_input.b.x, 0i, 48658i)) >> (vec4<u32>(abs(u_input.c), reverseBits(65519u), _wgslsmith_sub_u32(1u, u_input.c), _wgslsmith_div_u32(u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-arg_0.x), Struct_1(vec2<bool>(true, true), ~(~vec2<u32>(4294967295u, u_input.a)), vec2<bool>(true, true), !any(vec2<bool>(false, false)), false)), u_input.c);
    let var_1 = u_input.b.x;
    let var_2 = select(vec3<bool>((-1i ^ var_0.a.c.x) <= ((var_1 & 0i) & _wgslsmith_dot_vec2_i32(var_0.a.c.yy, vec2<i32>(var_1, -87566i))), all(var_0.b.e.a), false), !select(vec3<bool>(!var_0.b.e.e, var_0.b.a.b.a.x, all(vec3<bool>(true, var_0.b.e.e, var_0.a.a.b.c.x))), select(!vec3<bool>(true, var_0.b.e.c.x, true), !vec3<bool>(var_0.a.a.b.a.x, var_0.a.e.a.x, true), select(vec3<bool>(var_0.b.a.b.d, var_0.a.a.b.d, var_0.b.e.a.x), vec3<bool>(true, true, var_0.b.a.b.c.x), vec3<bool>(true, var_0.a.a.b.a.x, var_0.a.e.d))), select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.e.e, var_0.b.a.b.e, var_0.b.e.d), vec3<bool>(var_0.a.e.c.x, var_0.a.e.e, true)), !vec3<bool>(var_0.b.e.a.x, var_0.a.a.b.d, true), !vec3<bool>(var_0.b.a.b.d, var_0.a.e.d, var_0.b.a.b.e))), !(max(-2147483647i, _wgslsmith_dot_vec3_i32(var_0.b.c.xyy, vec3<i32>(2147483647i, u_input.b.x, 0i))) > 7575i));
    var var_3 = var_1;
    var_3 = 22383i;
    return i32(-1i) * -(~var_0.a.b.x);
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-537f, -1043f) + vec2<f32>(-178f, 1000f))), ~u_input.b.x & u_input.b.x, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-116f, -815f) * vec2<f32>(469f, -297f))), 1i), _wgslsmith_sub_vec4_i32(-firstTrailingBit(firstTrailingBit(vec4<i32>(-44813i, u_input.b.x, 0i, u_input.b.x))), -(-vec4<i32>(u_input.b.x, u_input.b.x, -1i, 0i) & vec4<i32>(-12200i, -2350i, u_input.b.x, 21838i))));
    let var_1 = vec4<bool>(func_3().x | !(!any(vec3<bool>(true, false, false))), (all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)) | false) | func_3().x, all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), func_3().x)), true);
    global0 = array<vec3<f32>, 22>();
    let var_2 = abs(~1u);
    let var_3 = !(!all(!var_1));
    return !(!(!vec2<bool>(var_1.x, select(var_3, var_3, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, select((u_input.c << (max(1u, 0u) % 32u)) != ~u_input.a, !(!(u_input.c < u_input.c)), select(true, all(func_1()), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-543f)), _wgslsmith_f_op_f32(select(833f, _wgslsmith_f_op_f32(select(-1000f, 1000f, false)), u_input.c != 4294967295u)), true)) >= _wgslsmith_f_op_f32(-1000f - 586f));
    global0 = array<vec3<f32>, 22>();
    let var_1 = ~vec3<i32>(~(~min(-65886i, u_input.b.x)), u_input.b.x, -2147483647i);
    global0 = array<vec3<f32>, 22>();
    var var_2 = Struct_2(_wgslsmith_mult_u32(0u, u_input.a), Struct_1(!(!var_0.xx), vec2<u32>(countOneBits(u_input.a), 1u), !func_3(), false, var_0.x));
    let var_3 = Struct_5(Struct_3(Struct_2(~0u, Struct_1(vec2<bool>(var_0.x, false), _wgslsmith_clamp_vec2_u32(var_2.b.b, vec2<u32>(1u, u_input.c), var_2.b.b), !vec2<bool>(var_2.b.d, true), !var_2.b.c.x, false)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x ^ u_input.b.x, firstLeadingBit(u_input.b.x)), ~1i & abs(var_1.x), -1i), -(~(vec4<i32>(var_1.x, u_input.b.x, var_1.x, 2147483647i) ^ vec4<i32>(u_input.b.x, var_1.x, var_1.x, u_input.b.x))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1879f + -364f)))), var_2.b), Struct_3(Struct_2(~0u, Struct_1(vec2<bool>(true, var_2.b.e), abs(var_2.b.b), select(var_0.yy, vec2<bool>(var_2.b.e, var_2.b.c.x), var_2.b.a), all(vec2<bool>(var_0.x, false)), any(var_0.zy))), ~(-vec4<i32>(0i, u_input.b.x, -5251i, 24516i)) & vec4<i32>(u_input.b.x ^ u_input.b.x, i32(-1i) * -10622i, var_1.x | var_1.x, var_1.x), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, -1i, var_1.x), 679f, var_2.b), select(var_2.a, 6318u, true));
    let var_4 = var_3;
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_3.a.d, var_4.b.d)), _wgslsmith_f_op_f32(-var_4.b.d))) + _wgslsmith_f_op_f32(f32(-1f) * -729f)), func_1().x | any(select(var_0, vec3<bool>(true, var_4.b.a.b.e, true), var_0)))), 816f);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(1142f - _wgslsmith_f_op_f32(f32(-1f) * -1673f)));
}

