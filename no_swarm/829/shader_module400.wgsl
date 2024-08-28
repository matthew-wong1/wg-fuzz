struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(434f, 1498f, arg_0, 245f) - vec4<f32>(arg_0, arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -345f, -1124f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -294f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1000f, -1752f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1002f, -515f, arg_0, 733f), vec4<f32>(-916f, 218f, 1118f, arg_0))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -427f, 1602f, -687f) - vec4<f32>(-1486f, arg_0, -438f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, -639f, arg_0, arg_0)))))), select(select(vec4<bool>(true, true, arg_2.x, any(vec4<bool>(arg_2.x, arg_1.a.x, false, true))), !select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_2.x), vec4<bool>(false, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_1.a.x, true, arg_2.x)), all(vec4<bool>(arg_2.x, false, false, false))), vec4<bool>(any(!arg_2), reverseBits(-2147483647i) <= (u_input.b.x >> (0u % 32u)), true, arg_1.a.x), false)));
    var var_1 = arg_2;
    var_1 = !select(select(arg_2, arg_1.a, vec2<bool>(true, any(vec2<bool>(arg_1.a.x, arg_1.a.x)))), !arg_2, !arg_1.a);
    let var_2 = 50724i;
    var var_3 = Struct_2(Struct_1(!(!select(vec3<bool>(true, false, true), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), true))), max(1u, _wgslsmith_div_u32(~(~0u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 99689u, 4294967295u), vec3<u32>(20644u, 8518u, 34725u)), countOneBits(1u), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + 315f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)))), max(vec3<u32>(112u, 7988u, 4294967295u), firstTrailingBit(vec3<u32>(1u, abs(4294967295u), ~101210u))), Struct_1(!select(select(vec3<bool>(true, arg_1.a.x, true), vec3<bool>(arg_2.x, false, arg_1.a.x), vec3<bool>(false, false, arg_1.a.x)), vec3<bool>(false, true, true), false)));
    return u_input.b;
}

fn func_2() -> f32 {
    var var_0 = -u_input.b;
    let var_1 = max(35702u, ~(~0u));
    let var_2 = Struct_3(vec2<bool>(true, !select(true, any(vec2<bool>(true, true)), true)));
    var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -816f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-839f, 2191f) - -646f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, 1413f))) * 582f)), Struct_3(var_2.a), var_2.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(611f - 509f))))));
    return _wgslsmith_f_op_f32(1000f * 695f);
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_3 {
    var var_0 = select(arg_0, arg_0, vec2<bool>(true, any(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x), !vec3<bool>(true, arg_0.x, arg_0.x)))));
    var var_1 = Struct_1(vec3<bool>(var_0.x, select(var_0.x, false, true | any(vec4<bool>(false, false, false, var_0.x))), true));
    var var_2 = !(!(!vec4<bool>(var_1.a.x, true, true, false)));
    let var_3 = Struct_3(!select(var_2.xx, vec2<bool>(true, true), select(select(var_2.wy, var_1.a.xy, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(var_1.a.x, var_1.a.x), true), arg_2 < arg_2)));
    var var_4 = vec4<bool>(select(var_3.a.x, arg_0.x, false), var_0.x, true, any(select(!arg_0, vec2<bool>(all(vec4<bool>(var_2.x, true, var_0.x, var_0.x)), true), var_2.wy)));
    return var_3;
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211f * -1880f))) > _wgslsmith_f_op_f32(select(1f, -197f, any(vec2<bool>(true, true)))), false);
    let var_1 = func_4(vec2<bool>(true, true), -2147483647i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), -abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, u_input.c), ~u_input.a)));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, firstLeadingBit(u_input.a)), abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -15577i), vec2<i32>(u_input.a, 17568i)), -40094i)));
    var_2 = u_input.b.yz;
    var_2 = _wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_clamp_vec2_i32(~firstLeadingBit(vec2<i32>(-2147483647i, 1i)), u_input.b.wx, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, 31544i), vec2<i32>(2658i, var_2.x)) ^ ~vec2<i32>(1i, var_2.x))), reverseBits(reverseBits(u_input.b.ww)));
    return Struct_3(select(var_1.a, !(!(!var_1.a)), any(!(!vec4<bool>(false, var_1.a.x, true, var_1.a.x)))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = vec4<u32>(1u, ~(~reverseBits(0u)), abs(1u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 39491u)), vec2<u32>(_wgslsmith_div_u32(1u, 21404u), 4294967295u))) >> (vec4<u32>(44379u, _wgslsmith_add_u32(0u, firstLeadingBit(min(97858u, 4294967295u))), ~(~select(28159u, 2465u, false)), abs(4294967295u)) % vec4<u32>(32u));
    var_0 = vec4<u32>(firstLeadingBit(var_0.x), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, var_0.x), _wgslsmith_mod_u32(var_0.x, 30843u)) << (4294967295u % 32u), ~var_0.x, 33885u) >> (vec4<u32>(~(~0u) >> (var_0.x % 32u), var_0.x, var_0.x, _wgslsmith_mult_u32(var_0.x, var_0.x)) % vec4<u32>(32u));
    let var_1 = max(max(abs(abs(abs(u_input.a))), 22645i), (((-875i >> (var_0.x % 32u)) & -1i) & (arg_1 & u_input.d.x)) >> (~var_0.x % 32u));
    let var_2 = Struct_4(abs(u_input.b.wxx) << (vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, 8063u, 4294967295u), 31310u >> (1u % 32u), 43926u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, 354f, -678f, -1000f)))))));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -593f)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.c);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1.c) + _wgslsmith_f_op_f32(func_5(arg_0, 1i, !arg_0.a.x)));
    var var_1 = Struct_1(select(!arg_1.a.a, select(vec3<bool>(arg_1.a.a.x | arg_0.a.x, arg_1.e.a.x, arg_1.a.a.x), arg_1.a.a, !select(false, arg_0.a.x, arg_0.a.x)), vec3<bool>(true, true, all(select(vec2<bool>(arg_0.a.x, arg_1.e.a.x), arg_0.a, vec2<bool>(arg_1.e.a.x, true))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(673f, arg_1.c, arg_1.c, -655f), vec4<f32>(arg_1.c, arg_1.c, -596f, arg_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -543f, arg_1.c, -1037f) * vec4<f32>(arg_1.c, arg_1.c, arg_1.c, -375f)), !vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(sign(arg_1.c)), all(arg_1.e.a.yz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-arg_1.c))));
    var var_3 = arg_1.d.x;
    return Struct_1(!select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(false, arg_1.a.a.x, !var_1.a.x), vec3<bool>(arg_1.a.a.x, true, func_1().a.x)));
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-140f));
    var var_1 = _wgslsmith_f_op_f32(select(376f, _wgslsmith_f_op_f32(func_2()), true));
    var_0 = -1000f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2110f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1666f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1242f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-892f)) + _wgslsmith_f_op_f32(1010f * -1153f)), _wgslsmith_f_op_f32(ceil(-2150f)), any(select(arg_0.a.yy, vec2<bool>(arg_0.a.x, false), true)))) - _wgslsmith_f_op_f32(f32(-1f) * -1337f)));
    return func_6(Struct_3(arg_0.a.yy), Struct_2(arg_0, _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(49885u, 102338u, 13518u)) ^ 1u, -460f, select(firstLeadingBit(vec3<u32>(0u, 85505u, 1u)), vec3<u32>(25595u, 1u, 4294967295u), true) | ~vec3<u32>(1u, 1u, 1u), func_6(Struct_3(func_1().a), Struct_2(func_6(Struct_3(arg_0.a.xx), Struct_2(Struct_1(arg_0.a), 66515u, var_3, vec3<u32>(164227u, 33922u, 1357u), Struct_1(vec3<bool>(false, arg_0.a.x, true)))), 1u, var_3, ~vec3<u32>(152266u, 1u, 7719u), func_6(Struct_3(vec2<bool>(false, arg_0.a.x)), Struct_2(Struct_1(arg_0.a), 48611u, var_3, vec3<u32>(1u, 32067u, 88011u), Struct_1(arg_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_3(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), Struct_2(Struct_1(vec3<bool>(true, false, true)), ~(~94126u), _wgslsmith_f_op_f32(func_5(func_1(), ~0i, any(vec4<bool>(false, true, true, true)))), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(84142u, 25849u, 1u)), countOneBits(vec3<u32>(1u, 1u, 0u))), Struct_1(vec3<bool>(false, true, false)))));
    let var_1 = Struct_1(var_0.a);
    var var_2 = var_0.a.yx;
    let var_3 = func_1();
    var var_4 = ~u_input.b;
    let var_5 = func_6(func_1(), Struct_2(func_6(func_1(), Struct_2(var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 40154u, 12717u, 75228u), vec4<u32>(48327u, 1u, 35039u, 75068u)), _wgslsmith_f_op_f32(step(-395f, -879f)), vec3<u32>(1u, 1u, 1u), func_7(var_0))), 0u, 662f, ~firstLeadingBit(select(vec3<u32>(51036u, 22608u, 51893u), vec3<u32>(102623u, 59440u, 9995u), var_1.a)), Struct_1(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(14471u, 0u, 27610u), min(vec3<u32>(9930u, 3246u, 27010u), vec3<u32>(4294967295u, 0u, 77192u))), vec3<u32>(1u, 1u, 1u)), ~(~(u_input.b.x & -62593i)) ^ -39711i, 1u, ~2147483647i, var_4.x);
}

