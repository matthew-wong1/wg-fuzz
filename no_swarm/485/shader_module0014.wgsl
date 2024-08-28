struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = Struct_3(arg_2.a, arg_2.b, arg_2.c, ~vec2<u32>(arg_2.b.x, 14168u), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, firstTrailingBit(~(-14429i)), arg_2.e.x), select(vec3<i32>(2147483647i, -1i, 63820i) >> (u_input.b.xyy % vec3<u32>(32u)), -vec3<i32>(0i, u_input.a, arg_2.e.x) >> (~u_input.b.wzx % vec3<u32>(32u)), vec3<bool>(!arg_2.c, arg_2.a.a && arg_2.a.a, true)), firstTrailingBit(vec3<i32>(0i, 1i | u_input.a, firstLeadingBit(27539i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 911f, 810f, -2122f), vec4<f32>(796f, arg_0, arg_1, 392f), vec4<bool>(arg_2.a.a, true, true, true))))) * vec4<f32>(arg_0, arg_0, _wgslsmith_div_f32(-332f, 1713f), _wgslsmith_f_op_f32(arg_1 * -305f))), vec4<f32>(arg_1, arg_0, 199f, _wgslsmith_f_op_f32(min(1703f, _wgslsmith_f_op_f32(f32(-1f) * -724f)))))));
    let var_2 = arg_2.d.x;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(arg_0)))));
    var_0 = Struct_3(arg_2.a, arg_2.b, reverseBits(_wgslsmith_add_u32(arg_2.d.x ^ 4294967295u, ~70706u)) >= _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2, arg_2.b.x), 12786u, _wgslsmith_sub_u32(~1u, ~78941u)), ~firstLeadingBit(select(~vec2<u32>(48911u, var_2), ~var_0.b.yx, !vec2<bool>(var_0.a.a, true))), ~var_0.e);
    return vec3<bool>(!(!(!arg_2.c)), arg_2.c, true);
}

fn func_2() -> Struct_2 {
    var var_0 = false;
    return Struct_2(any(select(vec3<bool>(select(true, false, false), all(vec4<bool>(true, true, false, true)), true), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(137f - 1839f), Struct_3(Struct_2(true), vec4<u32>(u_input.b.x, 7393u, u_input.b.x, u_input.b.x), true, vec2<u32>(26668u, u_input.b.x), vec3<i32>(-28038i, -31569i, u_input.a))), !(0u < u_input.c.x))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    let var_0 = ~vec3<i32>(6884i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, u_input.a, 0i)), vec3<i32>(1i, u_input.d, u_input.e)), select(_wgslsmith_mod_i32(u_input.a, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, u_input.a) | vec4<i32>(u_input.d, u_input.d, u_input.e, 2147483647i), select(vec4<i32>(u_input.d, 627i, u_input.e, u_input.a), vec4<i32>(u_input.a, u_input.d, 72240i, -6973i), arg_3)), arg_0.a));
    let var_1 = func_2();
    let var_2 = Struct_3(Struct_2(arg_1 <= arg_1), vec4<u32>(~firstLeadingBit(4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2.x, 73444u), 17432u) | 0u, arg_2.x, arg_2.x), true, _wgslsmith_clamp_vec2_u32(~(~u_input.b.ww), abs(arg_2), min(_wgslsmith_add_vec2_u32(u_input.c, arg_2 | u_input.b.xy), min(~vec2<u32>(0u, arg_2.x), ~vec2<u32>(arg_2.x, arg_2.x)))), ~select(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.x, u_input.e), var_0), vec3<i32>(var_0.x, 2147483647i, 1i)), firstTrailingBit(vec3<i32>(u_input.e, var_0.x, var_0.x)), false));
    let var_3 = -173f;
    let var_4 = all(func_3(1000f, _wgslsmith_f_op_f32(select(var_3, var_3, any(!vec4<bool>(true, var_2.c, var_1.a, var_1.a)))), Struct_3(Struct_2(false), ~(~vec4<u32>(u_input.b.x, arg_2.x, 0u, 3451u)), all(vec2<bool>(true, var_2.c)), abs(vec2<u32>(u_input.b.x, u_input.c.x)), firstTrailingBit(var_0))).xx);
    return -365f;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-528f, arg_0, arg_0), vec3<f32>(1448f, -789f, arg_0))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-439f - arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0)), !(!arg_1)))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_2(), arg_0, abs(u_input.c), !arg_2.b)), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -458f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 231f)) + _wgslsmith_f_op_f32(sign(-180f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0)))))));
    let var_1 = arg_2.a.x;
    var var_2 = Struct_3(func_2(), _wgslsmith_div_vec4_u32(~select(arg_2.a, ~arg_2.a, vec4<bool>(arg_1, arg_2.b, arg_2.b, true)), vec4<u32>(~1u, ~7309u ^ ~var_1, countOneBits(4294967295u), arg_2.a.x)), arg_2.b, u_input.b.zy, abs(countOneBits(-select(vec3<i32>(u_input.e, 54443i, u_input.d), vec3<i32>(u_input.a, u_input.a, -9653i), false))));
    let var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_2.e.zz, var_2.e.zx), ~var_2.e.zy), vec2<i32>(~var_2.e.x, abs(-8827i)), _wgslsmith_mult_vec2_i32(var_2.e.zx, -vec2<i32>(var_2.e.x, 0i))), var_2.e.yy) & ~vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, -10155i, u_input.d), vec4<i32>(33376i, 11117i, -1i, -2147483647i)), vec4<i32>(var_2.e.x, 2147483647i, var_2.e.x, var_2.e.x)));
    var_2 = Struct_3(func_2(), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21730u, u_input.b.x, arg_2.a.x), u_input.b.xzz), _wgslsmith_dot_vec2_u32(vec2<u32>(22842u, var_1), arg_2.a.wz), ~u_input.c.x, var_1), _wgslsmith_add_vec4_u32(~u_input.b, var_2.b), ~(~arg_2.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(max(arg_2.a, var_2.b), ~u_input.b), ~_wgslsmith_add_vec4_u32(var_2.b, vec4<u32>(44322u, var_2.b.x, u_input.b.x, u_input.c.x)))), true, firstLeadingBit(~(~var_2.b.xw)), var_2.e ^ abs(select(_wgslsmith_div_vec3_i32(var_2.e, vec3<i32>(1i, u_input.d, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.e.x, u_input.a, -1i), var_2.e), !arg_1)));
    return ~_wgslsmith_sub_i32(firstTrailingBit(15282i), -abs(abs(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~u_input.c.x);
    var_0 = u_input.c.x;
    var var_1 = ~(vec2<i32>(37728i, min(_wgslsmith_sub_i32(u_input.e, 5407i), u_input.d)) & vec2<i32>(select(u_input.a, reverseBits(0i), true), abs(func_1(-473f, false, Struct_1(vec4<u32>(u_input.b.x, u_input.c.x, 0u, u_input.c.x), false)))));
    var_1 = -(~vec2<i32>(1i, _wgslsmith_mult_i32(var_1.x, ~2147483647i)));
    var_1 = vec2<i32>(63292i, ~1i);
    var var_2 = Struct_3(func_2(), _wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, abs(22143u), countOneBits(u_input.b.x), u_input.b.x) & u_input.b, u_input.b | u_input.b), true, min(vec2<u32>(~(~u_input.c.x), ~min(u_input.b.x, u_input.b.x)), ~u_input.c >> (max(vec2<u32>(7027u, 4294967295u), ~u_input.c) % vec2<u32>(32u))), abs(_wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.x, var_1.x), vec3<i32>(-1i, var_1.x, var_1.x)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 5262i, -1i), vec3<i32>(1i, var_1.x, u_input.a)), -vec3<i32>(41615i, 9089i, u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)))));
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_u32(4294967295u >> (firstLeadingBit(67011u) % 32u), u_input.b.x)), var_2.e, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, _wgslsmith_f_op_f32(389f + -449f), 542f)))), _wgslsmith_div_i32(var_1.x, -11327i), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(31060u, u_input.b.x, ~6259u, ~var_2.d.x), ~var_2.b), u_input.c.x, var_2.d.x));
}

