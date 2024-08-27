struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -617f);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = -firstLeadingBit(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -29700i), vec2<i32>(-1i, u_input.a.x))), u_input.b.x, -1i));
    let var_1 = Struct_5(u_input.a.x);
    return vec3<f32>(_wgslsmith_f_op_f32(floor(1158f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-936f * 182f) + _wgslsmith_f_op_f32(floor(1000f))), vec2<bool>(true, true), arg_2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(func_3(false, _wgslsmith_f_op_f32(f32(-1f) * -385f), select(vec2<bool>(true, true), vec2<bool>(false, true), true), arg_0 << (4294967295u % 32u))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_5 {
    var var_0 = arg_0.d.x;
    return Struct_5(u_input.a.x);
}

fn func_1(arg_0: Struct_5, arg_1: bool, arg_2: vec2<bool>) -> Struct_5 {
    let var_0 = arg_2;
    let var_1 = Struct_5(u_input.d);
    var var_2 = !arg_2;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(306f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2706f, -514f)) * _wgslsmith_f_op_f32(round(-592f)))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-751f + 1000f), _wgslsmith_f_op_f32(ceil(-1426f))))) - -773f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1228f, -105f, false)), _wgslsmith_f_op_f32(1070f - -844f)))));
    return func_4(Struct_3(vec4<i32>(u_input.d, 6907i, -arg_0.a, _wgslsmith_mod_i32(i32(-1i) * -11928i, 31376i & u_input.d)), vec2<i32>(4678i, ~(-12189i)), 10757u, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(func_2(4294967295u, u_input.c, ~select(vec2<u32>(64634u, u_input.c) << (vec2<u32>(1u, 26655u) % vec2<u32>(32u)), vec2<u32>(1u, 23435u) | vec2<u32>(u_input.c, u_input.c), !var_0))));
}

fn func_5(arg_0: Struct_5) -> bool {
    var var_0 = false;
    let var_1 = Struct_5(select(9678i >> (_wgslsmith_add_u32(u_input.c ^ u_input.c, 67562u) % 32u), -2147483647i, !all(vec2<bool>(true, false))));
    var_0 = select(false, !select(true, false, true) || false, all(vec4<bool>(true, true, true, true))) == (((~22922i | ~u_input.b.x) > -2147483647i) || true);
    var_0 = false;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), true)), !(any(vec2<bool>(false, true)) || true)));
    let var_1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var_0 = func_5(func_1(Struct_5(_wgslsmith_mult_i32(20793i, i32(-1i) * -1i)), var_1, !select(!vec2<bool>(true, var_1), vec2<bool>(true, true), var_1 && false)));
    let var_2 = Struct_4(Struct_1(vec4<u32>(firstLeadingBit(~u_input.c), u_input.c, ~u_input.c << (u_input.c % 32u), u_input.c), any(!vec3<bool>(var_1, var_1, true)), true, firstLeadingBit(u_input.a), vec3<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2260f)) + -608f))), func_1(func_1(func_4(Struct_3(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 4712i), vec2<i32>(-34789i, -1i), u_input.c, vec3<bool>(true, var_1, var_1)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(224f, -626f, 453f), vec3<f32>(-406f, 370f, -1000f)))), var_1, select(select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), vec2<bool>(true, false)), !vec2<bool>(true, var_1), any(vec2<bool>(true, true)))), var_1, vec2<bool>(func_5(func_1(Struct_5(u_input.a.x), true, vec2<bool>(false, false))), !var_1)).a, -vec4<i32>(-u_input.a.x, (2147483647i << (u_input.c % 32u)) & firstLeadingBit(u_input.a.x), ~(~21193i), -u_input.b.x), -2147483647i, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(1u, 1u, u_input.c, u_input.c)), countOneBits(~vec4<u32>(u_input.c, 1u, u_input.c, u_input.c))), vec4<u32>(_wgslsmith_mult_u32(u_input.c, 79407u), min(1u, _wgslsmith_sub_u32(u_input.c, u_input.c)), u_input.c ^ u_input.c, 0u)));
    var var_3 = ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 454i, var_2.a.d.x), vec3<i32>(24054i, -1i, _wgslsmith_dot_vec3_i32(abs(var_2.c.yyw), ~vec3<i32>(u_input.d, 47094i, 10642i))));
    let var_4 = _wgslsmith_f_op_vec3_f32(func_2(var_2.a.a.x, u_input.c, var_2.a.a.yy)).yy;
    var var_5 = Struct_4(Struct_1(var_2.e, !(!var_2.a.c), !all(vec3<bool>(var_2.a.b, var_2.a.c, var_2.a.b)), vec3<i32>(1i, var_3.x, u_input.d), var_2.a.e), 11634i >> (_wgslsmith_clamp_u32(42410u, _wgslsmith_mult_u32(~1u, var_2.a.a.x), abs(var_2.a.a.x)) % 32u), -firstTrailingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, 1i, 2147483647i, u_input.a.x), var_2.c, vec4<i32>(5419i, var_3.x, 23565i, var_3.x))), 0i, ~var_2.a.a);
    let var_6 = Struct_3((max(vec4<i32>(-1i, -1566i, 38369i, var_3.x), _wgslsmith_mod_vec4_i32(var_2.c, vec4<i32>(var_5.d, 10311i, -1i, -18224i))) ^ abs(~var_2.c)) & (_wgslsmith_mod_vec4_i32(select(var_2.c, var_5.c, false), var_5.c) & vec4<i32>(1i, var_3.x & -2147483647i, -55240i, _wgslsmith_dot_vec4_i32(var_2.c, vec4<i32>(var_5.b, var_5.c.x, 2147483647i, -24860i)))), vec2<i32>(var_3.x, firstTrailingBit(i32(-1i) * -18669i)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(41636u, min(0u, var_5.e.x), var_5.e.x) | 0u, ~var_2.e.x), vec3<bool>(!all(vec3<bool>(true, var_5.a.c, true)), var_1, !func_5(Struct_5(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.e.xw, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.x, -772f, _wgslsmith_f_op_f32(ceil(603f)), _wgslsmith_f_op_f32(trunc(-490f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_4.x)), var_4.x, -3432f, -537f)))));
}

