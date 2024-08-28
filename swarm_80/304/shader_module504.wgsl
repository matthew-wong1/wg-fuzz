struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: i32) -> vec3<bool> {
    var var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0, 1639f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(exp2(arg_0))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + _wgslsmith_f_op_f32(-600f * -1732f)), _wgslsmith_f_op_f32(round(974f))) + -1402f), var_0.x, arg_0);
    var var_1 = -_wgslsmith_sub_i32(i32(-1i) * -u_input.b, -arg_3);
    var_0 = vec3<f32>(710f, 958f, _wgslsmith_div_f32(arg_0, arg_0));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(var_0.zz, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_0.xy, var_0.zy)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, -1628f))), arg_2)), var_0.yx))));
    return vec3<bool>(select(true, false && (1453f != var_2.x), !arg_2.x), false, false);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_2.a)), 1537f) - vec3<f32>(-1046f, _wgslsmith_f_op_f32(arg_2.a * arg_0), arg_2.a))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -552f))))), all(vec4<bool>(!(!arg_2.d.x), arg_2.b, true, arg_2.d.x)), -vec2<i32>(_wgslsmith_clamp_i32(arg_1, countOneBits(-3046i), _wgslsmith_div_i32(-5274i, arg_2.c.x)), ~arg_1), !arg_2.d);
    let var_2 = arg_2;
    let var_3 = ~(~vec3<u32>(55317u, u_input.c, ~u_input.c));
    let var_4 = var_1.a;
    return vec2<bool>(func_3(-1000f, var_3, vec2<bool>(true, true), var_2.c.x).x, var_2.b);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(-605f, ~(arg_0.x ^ 1i), Struct_1(-407f, true, arg_0.zz, vec4<bool>(true, !any(vec2<bool>(true, false)), any(func_3(1706f, vec3<u32>(4294967295u, u_input.a.x, u_input.c), vec2<bool>(false, true), 22876i)), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(310f)) - -877f))), false, _wgslsmith_div_vec2_i32(~(~vec2<i32>(u_input.b, 23449i)) >> (~vec2<u32>(u_input.c, 48563u) % vec2<u32>(32u)), arg_0.zx), vec4<bool>(true, false, func_3(_wgslsmith_f_op_f32(step(-378f, -911f)), vec3<u32>(76929u, reverseBits(67120u), firstLeadingBit(0u)), select(var_0, var_0, func_4(668f, 29613i, Struct_1(641f, true, vec2<i32>(u_input.b, arg_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x))).x), -(2147483647i << (u_input.c % 32u))).x, true));
    var var_2 = Struct_1(var_1.a, true, abs(-var_1.c), select(!(!var_1.d), vec4<bool>(true, select(var_0.x, true, !var_0.x), var_0.x, func_3(var_1.a, vec3<u32>(u_input.c, u_input.c, 0u), var_1.d.yw, -2147483647i).x || func_3(-740f, u_input.a, vec2<bool>(var_0.x, false), arg_0.x).x), var_1.d));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(342f))), var_2.a))), !var_2.d.x, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, u_input.b, 3640i), 0i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_2.c.x, var_2.c.x), var_1.c.x)), 1i), select(vec4<bool>(false, select(any(var_1.d.wyy), var_1.a >= 2078f, var_0.x), var_2.b, true), vec4<bool>(var_1.d.x, all(vec4<bool>(true, var_0.x, false, false)), any(select(vec2<bool>(var_0.x, var_1.b), var_1.d.wy, var_0.x)), all(var_2.d) & all(var_2.d)), select(select(select(var_2.d, vec4<bool>(var_2.b, true, var_2.d.x, false), vec4<bool>(true, false, var_1.b, var_1.b)), !vec4<bool>(true, var_2.d.x, false, false), var_2.d), !var_2.d, false)));
    var_2 = Struct_1(var_2.a, ((true & !var_0.x) | false) & all(var_1.d.wwy), countOneBits(firstTrailingBit(vec2<i32>(var_1.c.x, ~20956i))), vec4<bool>(!any(vec2<bool>(var_1.d.x, var_2.b)), false, select(~arg_0.x, var_1.c.x & 1i, var_0.x) <= ~(~(-7898i)), select(true, _wgslsmith_f_op_f32(-var_2.a) < _wgslsmith_f_op_f32(select(-1405f, -541f, true)), !var_0.x)));
    return Struct_1(-221f, !any(!(!var_2.d.zwx)), ~var_1.c, var_2.d);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_mod_vec3_i32(abs(firstTrailingBit(-vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(~u_input.b, -_wgslsmith_sub_i32(u_input.b, u_input.b), 0i)));
    var var_1 = Struct_1(var_0.a, true, var_0.c, func_2(~(~vec3<i32>(u_input.b, var_0.c.x, var_0.c.x) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(-2147483647i, var_0.c.x, -1i)))).d);
    let var_2 = vec4<u32>(19349u, u_input.c, ~u_input.a.x, u_input.a.x);
    var_1 = Struct_1(-249f, select(select(func_3(_wgslsmith_f_op_f32(f32(-1f) * -209f), u_input.a ^ vec3<u32>(1u, u_input.c, 4294967295u), var_1.d.ww, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 3873i, var_1.c.x), vec3<i32>(-36138i, var_0.c.x, var_1.c.x))).x, select(true, !var_1.b, all(var_0.d)), true), false, var_0.d.x), ~var_0.c, func_2(select(reverseBits(firstTrailingBit(vec3<i32>(32841i, -36422i, var_1.c.x))), -firstTrailingBit(vec3<i32>(-24785i, 39424i, var_1.c.x)), false)).d);
    var var_3 = max(1i, abs(var_0.c.x)) >> (abs(u_input.a.x) % 32u);
    return var_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.a.x, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14938u, u_input.c, u_input.a.x), vec4<u32>(1u, 1491u, u_input.c, u_input.c)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), reverseBits(~(~vec4<u32>(28101u, u_input.c, u_input.a.x, 0u)))));
    let var_1 = arg_1;
    var_0 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.x, u_input.c, max(24136u, var_0.x)), u_input.a), 0u, _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(2973u, u_input.c, 0u), vec3<u32>(18555u, 8218u, var_0.x))), 34512u), var_0.x);
    var_0 = vec4<u32>(0u, _wgslsmith_div_u32(var_0.x, abs(u_input.a.x)), _wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(25337u, 31023u, 60980u, var_0.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 30933u, 33923u, 4294967295u), vec4<u32>(u_input.c, u_input.a.x, 0u, 4294967295u)), vec4<u32>(1u, 77383u, _wgslsmith_add_u32(0u, 1u), _wgslsmith_clamp_u32(u_input.a.x, var_0.x, 70655u)), !var_1.d), vec4<u32>(4294967295u, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), 4294967295u), 7757u, select(~var_0.x, 61337u, false))), 0u);
    var_0 = vec4<u32>(var_0.x, reverseBits(var_0.x), abs(~firstTrailingBit(4294967295u)) ^ abs(~2969u), countOneBits(~1u));
    return arg_1.d.x;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = ~vec2<i32>(u_input.b, 71256i);
    let var_1 = true | any(func_2(~(vec3<i32>(u_input.b, -2147483647i, var_0.x) << (vec3<u32>(arg_1, arg_2, 1954u) % vec3<u32>(32u)))).d.xzy);
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(sign(var_2.a));
    let var_4 = !vec4<bool>(var_1, !(!(!var_2.b)), true, false);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 987f;
    var var_1 = Struct_1(var_0, !(!(var_0 >= var_0)) && any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 0u >= u_input.c)), vec2<i32>(_wgslsmith_mult_i32(u_input.b, 10054i), u_input.b), vec4<bool>(false, true, false, true & (true & all(vec4<bool>(true, false, true, false)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_6(func_5(vec2<f32>(1825f, var_1.a), func_1()), 0u, 1u)))), var_1.d.x, vec2<i32>(2147483647i, 1i), var_1.d);
    let var_2 = var_1.b;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1693f, 1000f)) - _wgslsmith_f_op_f32(var_1.a - var_1.a)))), func_1().b, abs(~(~var_1.c)), var_1.d);
    var_3 = func_1();
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

