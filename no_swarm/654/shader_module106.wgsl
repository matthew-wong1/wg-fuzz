struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(1f, 1u), Struct_2(-250f, firstTrailingBit(countOneBits(~37347u))), reverseBits(~_wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(19816u, 39796u))));
    let var_1 = ~abs(max(_wgslsmith_add_u32(4294967295u, firstTrailingBit(var_0.c)), 1u));
    var var_2 = all(select(vec3<bool>(var_0.c > var_0.c, false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), vec3<bool>(_wgslsmith_f_op_f32(sign(var_0.a.a)) == 1f, true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), false));
    var var_3 = var_0.a;
    var var_4 = Struct_2(var_0.b.a, max(countOneBits(~var_3.b), abs(select(var_3.b, abs(var_3.b), true))));
    return any(vec2<bool>(!any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
}

fn func_2() -> f32 {
    let var_0 = !any(vec2<bool>(func_3(), func_3()));
    let var_1 = select(select(!vec2<bool>(var_0 && var_0, false), !(!select(vec2<bool>(var_0, true), vec2<bool>(false, true), var_0)), func_3()), !vec2<bool>(any(vec2<bool>(true, var_0)) && !var_0, true != any(vec3<bool>(true, var_0, var_0))), func_3());
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(627f, -571f)) * _wgslsmith_f_op_f32(f32(-1f) * -496f))), -124f)));
    let var_3 = Struct_3(Struct_2(var_2.x, 1u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)) - var_2.x), 4294967295u), 4294967295u);
    let var_4 = vec4<bool>(var_0, all(select(vec3<bool>(all(vec4<bool>(var_0, var_1.x, false, false)), true, true), vec3<bool>(true, var_1.x, var_0), var_1.x)), var_0, var_1.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-854f + var_3.a.a)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = vec2<u32>(24975u, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(arg_2.a.b, 65845u, 0u)), vec3<u32>(reverseBits(arg_2.b.b), arg_2.c, reverseBits(arg_2.a.b))));
    let var_1 = ~(arg_2.b.b ^ arg_2.b.b);
    var var_2 = Struct_2(-1532f, ~var_0.x);
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(236f * _wgslsmith_f_op_f32(abs(585f))) + _wgslsmith_f_op_f32(min(-405f, _wgslsmith_f_op_f32(sign(arg_0.x)))))), var_1);
    let var_3 = arg_2;
    return arg_2.a.b;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 113543u), 1u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 42867u, 0u, 16492u), vec4<u32>(72732u, 0u, 1u, 1u)))), 19111u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1823f, 956f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-arg_2))), !(!vec3<bool>(false, arg_1, false)), Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(arg_2)), 1u), Struct_2(451f, min(42389u, 1u)), ~1u)), ~22860u, ~(~reverseBits(min(39347u, 4294967295u))));
    var_0 = ~min(~vec4<u32>(var_0.x, var_0.x, 92346u, countOneBits(var_0.x)), _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(30690u, var_0.x, var_0.x, 1u), vec4<u32>(66756u, 1u, var_0.x, var_0.x))), ~(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) | vec4<u32>(15104u, var_0.x, var_0.x, var_0.x))));
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~0i, u_input.a & -2147483647i), (_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.b.x, arg_0)) & firstLeadingBit(vec2<i32>(arg_0, u_input.b.x))) >> (vec2<u32>(reverseBits(var_0.x), max(0u, 0u)) % vec2<u32>(32u))), u_input.b);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-272f)) - arg_2) * arg_2), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, var_0.x) >> (vec2<u32>(0u, 48844u) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(var_0.yz, vec2<u32>(34270u, 4294967295u)))), Struct_2(-850f, ~((var_0.x & 73555u) & _wgslsmith_dot_vec4_u32(vec4<u32>(25984u, var_0.x, 69415u, var_0.x), vec4<u32>(var_0.x, 57095u, 0u, var_0.x)))), var_0.x);
    let var_3 = ~vec4<u32>(var_2.b.b, 0u, 2997u, _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(var_2.a.b, var_0.x, 8038u, var_2.b.b))), abs(abs(vec4<u32>(0u, 5209u, 1u, 0u)))));
    return false;
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-448f * -671f) - 2055f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-464f)) - _wgslsmith_f_op_f32(-1173f - -1461f)), 1421f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -877f))))))));
    var var_1 = Struct_3(Struct_2(-490f, min(9080u, ~(0u << (0u % 32u)))), Struct_2(-369f, ~3365u), 65274u);
    let var_2 = select(vec4<u32>(var_1.a.b, firstLeadingBit(4294967295u), ~reverseBits(4294967295u), ~var_1.b.b), _wgslsmith_div_vec4_u32(abs(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.b, 8604u, 1u, var_1.a.b), vec4<u32>(var_1.c, var_1.b.b, 0u, 4294967295u)))), _wgslsmith_div_vec4_u32(vec4<u32>(~95957u, 4294967295u, var_1.a.b, var_1.c), _wgslsmith_div_vec4_u32(vec4<u32>(79613u, var_1.c, 0u, 1u), vec4<u32>(0u, var_1.b.b, var_1.a.b, 0u)) >> (vec4<u32>(var_1.c, var_1.c, var_1.c, 72806u) % vec4<u32>(32u)))), func_3());
    let var_3 = 1u;
    var var_4 = func_1(_wgslsmith_mult_i32(13417i, _wgslsmith_mult_i32(~u_input.c, min(u_input.a, u_input.b.x))), !arg_0, -1000f);
    return Struct_1(vec4<u32>(var_3, ~_wgslsmith_div_u32(~0u, ~var_3), _wgslsmith_mult_u32(~var_3 << (~6400u % 32u), 0u), 0u), true, u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(abs(var_1.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = func_5(all(vec4<bool>(true, true, true, func_1(-1738i, true, _wgslsmith_f_op_f32(f32(-1f) * -1544f)))));
    var_0 = all(!select(select(!vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, false), !var_1.b), !vec2<bool>(var_1.b, var_1.b), vec2<bool>(all(vec2<bool>(var_1.b, false)), true)));
    var var_2 = Struct_2(var_1.d, var_1.a.x | min(abs(~42381u), select(var_1.a.x, var_1.a.x, var_1.a.x != 1u)));
    var var_3 = max(-2147483647i, firstLeadingBit((i32(-1i) * -u_input.a) >> (var_2.b % 32u)));
    var var_4 = var_1.a;
    let var_5 = !vec3<bool>(var_1.b, !var_1.b, any(vec2<bool>(var_1.b && var_1.b, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(abs(_wgslsmith_add_i32(~u_input.a, abs(-1855i))), 1i >> (~(~var_2.b) % 32u), _wgslsmith_dot_vec2_i32(abs(u_input.b), vec2<i32>(_wgslsmith_sub_i32(u_input.a, -4038i), var_1.c))));
}

