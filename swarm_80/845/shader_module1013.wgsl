struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true));
    var_0 = !vec3<bool>(true, select(var_0.x, var_0.x, true), any(!vec2<bool>(var_0.x, true)));
    var_0 = !vec3<bool>(any(vec2<bool>(true, var_0.x)), true, all(!vec4<bool>(true, false, var_0.x, var_0.x)) & var_0.x);
    var_0 = select(select(!select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x, true, true)), vec3<bool>(u_input.a.x >= u_input.a.x, true, 1i < u_input.a.x), vec3<bool>((var_0.x & false) & any(vec3<bool>(var_0.x, var_0.x, false)), all(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, true, var_0.x, var_0.x))), true)), vec3<bool>(-385f != _wgslsmith_f_op_f32(trunc(-2407f)), !var_0.x, var_0.x), select(select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0.x, var_0.x, true)), select(!vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true)), vec3<bool>(select(!var_0.x, var_0.x, true), var_0.x, false), !vec3<bool>(var_0.x, any(var_0.xy), true)));
    global0 = _wgslsmith_f_op_f32(-1f);
    return true || var_0.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> bool {
    global0 = 1429f;
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-13774i, _wgslsmith_mult_i32(-1i, arg_1.a.x), 2147483647i), firstTrailingBit(select(arg_1.a, vec3<i32>(-18903i, 2147483647i, -16419i), arg_1.e))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, firstLeadingBit(-6244i), firstLeadingBit(0i)), _wgslsmith_clamp_vec3_i32(arg_1.a, ~vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a >> (arg_2 % vec3<u32>(32u))))), any(vec3<bool>(arg_2.x == ~50315u, arg_0.x, arg_0.x)), arg_2.yx, select(arg_1.d, arg_1.d, arg_1.e), !any(vec2<bool>(false, true)) || true);
    let var_1 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(var_0.c.x), ~4294967295u, ~19286u), vec3<u32>(var_0.c.x, max(arg_1.c.x, 1u), var_0.c.x)), _wgslsmith_clamp_vec3_u32(arg_2, ~(~vec3<u32>(18246u, var_0.c.x, 91662u)), arg_2));
    var_0 = arg_1;
    var_0 = Struct_1(~arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-882f + _wgslsmith_f_op_f32(1738f + -360f)), -446f)) > _wgslsmith_div_f32(-1408f, 1f), select(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.c, vec2<u32>(arg_2.x, arg_2.x)), ~arg_1.c), max(104805u, ~73051u)), abs(vec2<u32>(~64642u, _wgslsmith_add_u32(arg_2.x, 6194u))), arg_1.d), !(!vec2<bool>(true, all(vec3<bool>(arg_0.x, arg_1.d.x, false)))), !any(vec3<bool>(true, true, true | arg_1.b)));
    return true;
}

fn func_2(arg_0: u32) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1746f) - _wgslsmith_f_op_f32(843f * 535f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(636f)) + _wgslsmith_f_op_f32(-483f + -102f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-561f)) * _wgslsmith_f_op_f32(-659f - 990f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-970f, _wgslsmith_f_op_f32(abs(901f))));
    let var_0 = vec4<f32>(-744f, -638f, _wgslsmith_f_op_f32(f32(-1f) * -660f), 102f);
    var var_1 = Struct_1(abs(~(~vec3<i32>(-27322i, u_input.a.x, -1i))) & reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-13643i, u_input.a.x, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(2147483647i, u_input.a.x, -10994i))), true, ~countOneBits(select(vec2<u32>(10315u, 1u), abs(vec2<u32>(arg_0, 0u)), vec2<bool>(true, true))), vec2<bool>(func_4(vec3<bool>(true, true, true), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -16638i), vec3<i32>(u_input.a.x, u_input.a.x, -47273i)), true, vec2<u32>(0u, arg_0), vec2<bool>(true, true), func_3()), reverseBits(vec3<u32>(63887u, 40059u, arg_0)), !(var_0.x < var_0.x)), true), any(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true))));
    return !select(any(vec3<bool>(arg_0 <= arg_0, true, false)), !(!func_4(vec3<bool>(false, true, true), Struct_1(vec3<i32>(u_input.a.x, var_1.a.x, 2147483647i), var_1.b, var_1.c, var_1.d, false), vec3<u32>(var_1.c.x, arg_0, 0u), var_1.d.x)), var_1.b);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_div_f32(arg_2, -1000f));
    global0 = 119f;
    let var_0 = vec3<i32>(-18273i, ~(-u_input.a.x) ^ ~(~_wgslsmith_div_i32(2147483647i, u_input.a.x)), max(countOneBits(11972i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 1i) | vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), _wgslsmith_div_vec4_i32(select(vec4<i32>(27124i, 34069i, -2147483647i, -1i), vec4<i32>(0i, u_input.a.x, 500i, u_input.a.x), false), vec4<i32>(1i, u_input.a.x, -2147483647i, -2147483647i)))));
    let var_1 = vec4<bool>(true, func_3(), true, true);
    global0 = -1886f;
    return Struct_1(select(var_0 | countOneBits(vec3<i32>(var_0.x, u_input.a.x, var_0.x) ^ vec3<i32>(var_0.x, u_input.a.x, 1i)), vec3<i32>(abs(-1066i), 37433i, u_input.a.x), arg_1.x), true, abs(vec2<u32>(1u, 1u)), vec2<bool>(all(!arg_1), false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(max(-1149f, arg_2))))) < _wgslsmith_f_op_f32(f32(-1f) * -2153f));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = countOneBits(u_input.a.x);
    let var_1 = func_5(select(vec2<bool>(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.c.x, 0u), vec3<u32>(18628u, arg_0.c.x, 0u))), true), !(!select(arg_1.xy, arg_1.zz, arg_1.x)), true), !(!select(arg_1.yx, !arg_1.xz, select(vec2<bool>(arg_1.x, true), arg_0.d, vec2<bool>(arg_1.x, arg_0.b)))), 248f);
    var var_2 = _wgslsmith_div_u32(~30553u, select(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30490u, arg_0.c.x, var_1.c.x), vec3<u32>(0u, 0u, 4294967295u)), ~0u) ^ var_1.c.x, _wgslsmith_mult_u32(35904u << (arg_0.c.x % 32u), arg_0.c.x), var_1.b));
    let var_3 = !func_2(var_1.c.x);
    var_2 = abs(~reverseBits(max(~4294967295u, 1u)));
    return vec2<u32>(0u, firstTrailingBit(arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, max(-2147483647i | u_input.a.x, u_input.a.x)), false, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(26252u, 4294967295u), func_1(Struct_1(vec3<i32>(0i, u_input.a.x, u_input.a.x), true, vec2<u32>(0u, 64171u), vec2<bool>(false, true), false), vec3<bool>(false, false, true), vec3<f32>(-403f, 388f, 518f))), vec2<u32>(1u, 1u)), vec2<u32>(20548u, 32046u)), select(func_5(vec2<bool>(true, true), vec2<bool>(true, func_4(vec3<bool>(false, false, false), Struct_1(vec3<i32>(0i, -12530i, 20518i), true, vec2<u32>(3811u, 7193u), vec2<bool>(true, true), true), vec3<u32>(0u, 0u, 4294967295u), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * 911f)).d, vec2<bool>(false, select(all(vec2<bool>(true, true)), u_input.a.x > 28922i, all(vec3<bool>(true, true, false)))), !vec2<bool>(func_2(3187u), true)), !func_3());
    var_0 = func_5(!select(select(var_0.d, !var_0.d, !var_0.b), !(!var_0.d), var_0.d), var_0.d, -719f);
    var_0 = Struct_1(~vec3<i32>(1i, -27278i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a.x, 26572i, -10691i), -vec3<i32>(u_input.a.x, 1i, -2147483647i))), select(true, false, all(select(vec4<bool>(var_0.b, var_0.b, var_0.e, var_0.e), vec4<bool>(var_0.b, true, var_0.d.x, var_0.e), vec4<bool>(var_0.e, false, true, false)))) & var_0.d.x, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(12897u, var_0.c.x, var_0.c.x, var_0.c.x), vec4<u32>(var_0.c.x, 4294967295u, var_0.c.x, var_0.c.x), false), ~vec4<u32>(0u, var_0.c.x, 60455u, var_0.c.x)), var_0.c.x), 1u), select(vec2<bool>(!(!var_0.d.x), func_5(select(vec2<bool>(true, var_0.b), var_0.d, vec2<bool>(var_0.e, false)), !vec2<bool>(var_0.d.x, var_0.e), _wgslsmith_div_f32(335f, -1000f)).e), vec2<bool>(func_5(vec2<bool>(var_0.d.x, true), var_0.d, 1000f).c.x <= ~var_0.c.x, !var_0.b), !(!var_0.d)), false);
    let var_1 = Struct_1(reverseBits((firstTrailingBit(var_0.a) ^ ~vec3<i32>(var_0.a.x, 41977i, -1i)) << (~(~vec3<u32>(0u, var_0.c.x, var_0.c.x)) % vec3<u32>(32u))), true, var_0.c, var_0.d, !func_4(vec3<bool>(true, true, false), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, u_input.a.x, u_input.a.x), var_0.a), true, _wgslsmith_sub_vec2_u32(vec2<u32>(118161u, 0u), var_0.c), vec2<bool>(true, false), var_0.c.x >= var_0.c.x), vec3<u32>(~var_0.c.x, var_0.c.x, ~1u), true));
    var_0 = Struct_1(~(abs(reverseBits(var_1.a)) << (vec3<u32>(71509u, var_1.c.x, 109951u << (var_0.c.x % 32u)) % vec3<u32>(32u))), true, func_1(func_5(vec2<bool>(var_1.b, true), select(select(vec2<bool>(var_1.d.x, var_0.d.x), var_1.d, var_1.d), var_0.d, vec2<bool>(true, true)), -1354f), !select(!vec3<bool>(var_0.b, var_1.e, var_1.e), vec3<bool>(false, var_0.b, false), var_0.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1189f, 1582f, 1171f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1934f, 2907f, -1000f)))))), !var_1.d, -781f > _wgslsmith_f_op_f32(floor(-261f)));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, var_1.a), !var_1.e, var_1.c, var_1.d, any(select(select(select(vec3<bool>(var_1.d.x, false, var_1.e), vec3<bool>(false, false, var_0.e), true), select(vec3<bool>(var_1.d.x, var_1.b, var_0.e), vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(false, var_1.b, var_1.b)), vec3<bool>(var_1.e, var_1.d.x, var_0.d.x)), select(vec3<bool>(true, true, var_1.d.x), !vec3<bool>(var_1.d.x, true, false), vec3<bool>(var_1.d.x, var_0.b, var_1.d.x)), vec3<bool>(true, func_3(), !var_0.b))));
    var var_3 = vec4<bool>(true, true, false, any(!vec4<bool>(var_1.d.x, true, true, 20714i < u_input.a.x)));
    var var_4 = var_3.www;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(694f, -659f, -534f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-751f, -1103f, -116f), vec3<f32>(-1482f, 369f, -745f))), var_1.b)))), vec3<u32>(~1u, _wgslsmith_sub_u32(~abs(var_0.c.x), func_5(vec2<bool>(var_2.e, var_2.d.x), var_4.zz, -658f).c.x | ~54478u), ~min(4294967295u >> (var_0.c.x % 32u), 1u)), select(abs(select(abs(-45435i), _wgslsmith_sub_i32(var_2.a.x, var_0.a.x), true)), 42336i, !(!var_4.x)), -70470i, _wgslsmith_f_op_f32(-1043f + _wgslsmith_f_op_f32(f32(-1f) * -2023f)));
}

