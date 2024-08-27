struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: Struct_4,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> vec3<f32> {
    let var_0 = ~vec4<u32>(1u, ~(~1u), 1u, _wgslsmith_mod_u32(~1808u, 4294967295u));
    var var_1 = select(all(!select(vec4<bool>(false, false, false, arg_3), !vec4<bool>(arg_2, arg_0.x, arg_2, true), true)), arg_3 && !any(vec4<bool>(arg_2, arg_0.x, arg_2, false)), any(select(select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_2, true), vec2<bool>(arg_2, true)), !vec2<bool>(arg_0.x, arg_0.x), -16654i == u_input.c.x)) && ((~var_0.x ^ 34004u) != 81345u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1633f, -1317f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, -272f)))))));
    var_1 = firstLeadingBit(_wgslsmith_sub_u32(var_0.x, min(~0u, ~60235u))) < 0u;
    var var_3 = true;
    return vec3<f32>(-1000f, -861f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
}

fn func_3() -> vec4<i32> {
    var var_0 = select(select(select(vec4<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, false, false, false)), true, select(false, true, true)), vec4<bool>(true, true, true, true), true == any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), false & all(vec2<bool>(true, true)));
    let var_1 = select(select(select(vec4<bool>(!var_0.x, var_0.x && var_0.x, true, true), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, false), all(var_0.xxx)), var_0.x), !select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, false)), select(select(!vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, false, true, false), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, false, true, var_0.x | var_0.x), vec4<bool>(false, any(vec2<bool>(var_0.x, false)), var_0.x, !var_0.x))), vec4<bool>(all(select(!var_0.xwz, !vec3<bool>(true, var_0.x, false), true)), false, var_0.x, false), select(vec4<bool>(any(vec4<bool>(true, var_0.x, false, false)), false, var_0.x, false), !(!vec4<bool>(var_0.x, var_0.x, true, false)), select(vec4<bool>(true || var_0.x, select(false, var_0.x, false), true || var_0.x, any(vec4<bool>(true, var_0.x, false, var_0.x))), vec4<bool>(var_0.x, true, false, false), var_0.x)));
    var var_2 = true;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-101f, -466f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1391f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 660f) + _wgslsmith_f_op_f32(floor(1135f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(-1000f)))));
    var_0 = select(vec4<bool>(false, !any(!vec4<bool>(false, var_1.x, var_1.x, var_1.x)), false, true), vec4<bool>(!any(!vec3<bool>(var_0.x, false, var_1.x)), true, var_3.a <= _wgslsmith_f_op_vec3_f32(func_1(var_1.xyy, reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, -38503i, 0i)), u_input.c.x < 1i, any(vec4<bool>(var_0.x, var_0.x, var_1.x, var_0.x)))).x, true), var_0.x);
    return countOneBits(_wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(u_input.c.x, u_input.b, -1110i, 10695i)), select(vec4<i32>(-8418i, 2147483647i, u_input.a.x, u_input.b), abs(vec4<i32>(-2147483647i, 51602i, -2147483647i, u_input.b)), vec4<bool>(var_1.x, var_0.x, var_1.x, false))) | (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -32402i, 0i, -43004i), vec4<i32>(-24136i, 31343i, u_input.b, -2147483647i) | vec4<i32>(u_input.a.x, 8993i, u_input.b, 22239i)) >> (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_4) -> bool {
    let var_0 = Struct_2(Struct_1(arg_2.c.b, !arg_2.e, func_3()), vec4<bool>(false, -_wgslsmith_sub_i32(1i, u_input.b) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, 31379i) << (vec3<u32>(9186u, arg_2.b.x, arg_2.a) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.b, u_input.a.x)), arg_0, -1136f == arg_2.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-848f)))), arg_3.a, -282f)), !vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_2.e.x, arg_2.e.x))), all(!vec3<bool>(arg_0, false, arg_2.e.x)), true, arg_2.e.x), arg_2.e);
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x + 230f), _wgslsmith_div_f32(arg_2.c.b, -1552f), _wgslsmith_f_op_f32(f32(-1f) * -928f), 699f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1065f, arg_3.a, arg_3.b, 1416f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, -839f, -1000f, var_0.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1153f, arg_1.a, arg_3.a, var_0.c.x), vec4<f32>(arg_3.b, arg_1.a, arg_3.b, arg_2.d.x))))) + vec4<f32>(arg_3.a, -923f, _wgslsmith_div_f32(var_0.c.x, arg_3.a), _wgslsmith_f_op_f32(-arg_1.a)))));
    let var_3 = arg_0;
    var var_4 = arg_2.d;
    return !(!var_0.a.b.x);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    let var_0 = Struct_2(arg_0.a, !vec4<bool>(!(-1i > arg_0.a.c.x), all(select(arg_0.d, arg_0.b, arg_0.b)), !arg_0.d.x, false), arg_0.c, vec4<bool>(!((-1000f == arg_0.a.a) == (arg_0.a.b.x || arg_0.e.x)), true, !arg_0.b.x, !(true || (u_input.a.x <= 24731i))), arg_0.b.xw);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(var_0.d.x, false, true), vec4<i32>(var_0.a.c.x, -2147483647i, 33782i, -1i), false & var_0.d.x, func_2(arg_0.e.x, Struct_3(-1000f), Struct_5(40521u, vec3<u32>(0u, 67233u, 74965u), Struct_4(-1000f, arg_0.c.x), vec2<f32>(-679f, var_0.c.x), vec2<bool>(true, arg_0.a.b.x)), Struct_4(843f, 1546f)))).x, var_0.a.a))), var_0.a.a);
    var var_2 = 1u;
    var_2 = ~firstTrailingBit(35053u);
    var var_3 = Struct_4(-210f, _wgslsmith_f_op_f32(f32(-1f) * -193f));
    return Struct_4(var_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b - var_0.c.x))))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(1u, ~1u);
    let var_1 = Struct_5(select(_wgslsmith_sub_u32(max(var_0, 90183u), ~(~var_0)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(0u, 52552u) & vec2<u32>(var_0, 0u)), false), select(abs(vec3<u32>(firstLeadingBit(var_0), _wgslsmith_sub_u32(var_0, 101233u), _wgslsmith_mult_u32(var_0, 4294967295u))), ~max(vec3<u32>(var_0, 40267u, 3035u), vec3<u32>(19087u, 4294967295u, var_0)), arg_3.d.xxy), arg_0, _wgslsmith_f_op_vec2_f32(arg_3.c.zy - arg_3.c.xy), vec2<bool>(true, true));
    let var_2 = 1f;
    let var_3 = all(select(vec2<bool>(!(!var_1.e.x), true), arg_3.a.b, select(arg_3.e.x, _wgslsmith_f_op_f32(floor(148f)) > var_1.c.a, true)));
    let var_4 = Struct_4(arg_0.b, -589f);
    return vec4<bool>(arg_3.a.b.x, true, var_1.a > var_0, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(68192u, 24070u), var_1.b.xz), 84481u), ~_wgslsmith_div_u32(var_0, var_0)) <= abs(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1f - -152f);
    var var_1 = func_5(func_4(Struct_2(Struct_1(-888f, vec2<bool>(false, true), ~vec4<i32>(u_input.a.x, -1i, -27487i, -1i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, true, true), ~vec4<i32>(u_input.b, 10230i, 2147483647i, u_input.b), false, true)), vec4<bool>(true, true, func_2(false, Struct_3(1268f), Struct_5(4294967295u, vec3<u32>(82906u, 1u, 1u), Struct_4(115f, 871f), vec2<f32>(844f, 2891f), vec2<bool>(false, false)), Struct_4(818f, -884f)), false), vec2<bool>(true, true))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -u_input.a.x, -u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.c.x), vec4<i32>(u_input.a.x, -1i, -1i, u_input.b))), vec4<i32>(u_input.b, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, u_input.c.x), u_input.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -47420i, -1i, u_input.b), vec4<i32>(12422i, u_input.c.x, 0i, 32218i) ^ vec4<i32>(u_input.c.x, u_input.c.x, 0i, -1i)), -7202i)), vec2<i32>(52606i, u_input.a.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, true, true), -vec4<i32>(u_input.b, u_input.a.x, 2147483647i, 0i), false, true)).x, vec2<bool>(true, true), vec4<i32>(-34059i, 2147483647i, _wgslsmith_add_i32(-11836i, 765i), u_input.b)), vec4<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), !all(vec4<bool>(false, false, true, false)), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1154f))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !vec2<bool>(1i >= u_input.c.x, true)));
    var var_2 = -u_input.b;
    var_0 = -1725f;
    var var_3 = 0i;
    var_3 = i32(-1i) * -func_3().x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -22364i);
}

