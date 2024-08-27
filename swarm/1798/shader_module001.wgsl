struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_5, arg_3: Struct_5) -> vec2<bool> {
    let var_0 = !(!all(vec3<bool>(arg_3.b.c.a.x, false, true)));
    let var_1 = Struct_2(!(!select(select(vec4<bool>(false, true, var_0, false), vec4<bool>(false, var_0, true, arg_2.b.a.x), false), select(vec4<bool>(false, false, arg_2.b.c.a.x, arg_3.b.a.x), vec4<bool>(var_0, true, false, true), arg_3.b.a.x), true)), abs(vec3<i32>(-(i32(-1i) * -22505i), -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -63908i, 0i), vec3<i32>(31279i, arg_2.b.b.x, 0i)))), Struct_1(vec2<bool>(select(true, 4242i < u_input.a, true), arg_2.b.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1939f - _wgslsmith_f_op_f32(select(420f, arg_0, true))))), select(_wgslsmith_add_vec4_u32(~arg_2.b.c.c, ~vec4<u32>(4347u, arg_2.b.c.c.x, arg_3.a, 29607u)), vec4<u32>(~13085u, ~arg_3.b.c.c.x, arg_2.a, reverseBits(arg_3.a)), var_0), _wgslsmith_f_op_f32(-105f - -1499f)));
    var var_2 = arg_3.b.a.yw;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.b.c.d)) - arg_3.b.c.b));
    var var_4 = Struct_2(!select(!vec4<bool>(arg_1, false, false, var_2.x), !select(var_1.a, vec4<bool>(arg_3.b.c.a.x, arg_3.b.c.a.x, arg_1, arg_2.b.a.x), arg_3.b.a.x), arg_2.b.c.a.x), arg_3.b.b, Struct_1(select(var_1.c.a, var_1.c.a, !select(vec2<bool>(var_0, false), var_1.a.xz, vec2<bool>(var_2.x, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(572f, 928f)))) - -185f), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_1.c.c.x, arg_2.b.c.c.x, 0u), vec4<u32>(12177u, 1859u, var_1.c.c.x, arg_3.b.c.c.x)) ^ select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_3.b.c.c.x, var_1.c.c.x, var_1.c.c.x), vec4<u32>(arg_3.b.c.c.x, var_1.c.c.x, 1u, arg_3.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(116874u, 26047u, arg_3.a, arg_3.a), vec4<u32>(21840u, 1u, var_1.c.c.x, 31031u)), false), _wgslsmith_f_op_f32(f32(-1f) * -996f)));
    return !select(vec2<bool>(_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(-arg_0), true), var_4.a.zw, arg_3.b.a.wy);
}

fn func_2(arg_0: vec4<u32>) -> Struct_5 {
    var var_0 = u_input.a;
    var_0 = ~u_input.b;
    var_0 = firstTrailingBit(~(i32(-1i) * -(u_input.b & u_input.b)));
    var_0 = _wgslsmith_mod_i32(1i, -_wgslsmith_div_i32(37014i, _wgslsmith_div_i32(-u_input.a, -5073i)));
    let var_1 = vec3<u32>(79650u, _wgslsmith_add_u32(reverseBits(arg_0.x), 4294967295u), 43377u);
    return Struct_5(abs(var_1.x), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), false, true, true), !select(true, false, true)), vec3<i32>(38684i, 46374i, _wgslsmith_add_i32(0i, u_input.b) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-55508i, 1i, u_input.a, u_input.b), vec4<i32>(u_input.b, -1264i, u_input.b, -1i))), Struct_1(func_3(1f, true, Struct_5(15450u, Struct_2(vec4<bool>(true, true, false, false), vec3<i32>(u_input.a, u_input.a, u_input.b), Struct_1(vec2<bool>(false, false), 1000f, arg_0, -2224f))), Struct_5(0u, Struct_2(vec4<bool>(false, true, false, true), vec3<i32>(u_input.b, 0i, u_input.b), Struct_1(vec2<bool>(false, false), -196f, arg_0, 148f)))), 486f, _wgslsmith_div_vec4_u32(reverseBits(arg_0), _wgslsmith_add_vec4_u32(vec4<u32>(48410u, 59236u, arg_0.x, var_1.x), vec4<u32>(arg_0.x, var_1.x, 0u, arg_0.x))), _wgslsmith_f_op_f32(-1f))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = func_2(vec4<u32>(firstTrailingBit(14197u) | 1u, _wgslsmith_mod_u32(34791u, _wgslsmith_clamp_u32(21314u, ~11033u, 1u)), ~(~42927u), 4294967295u >> (1u % 32u)));
    var_0 = func_2(~(~abs(vec4<u32>(var_0.b.c.c.x, var_0.b.c.c.x, 1u, 0u) << (vec4<u32>(54062u, 0u, 1u, var_0.a) % vec4<u32>(32u)))));
    var_0 = Struct_5(firstTrailingBit(_wgslsmith_mult_u32(79578u, ~(~17585u))), var_0.b);
    let var_1 = Struct_4(~var_0.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) + 340f);
    return 1u;
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> Struct_1 {
    var var_0 = ~vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~arg_1.b.c.c.zx), ~arg_1.a);
    var_0 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32((arg_1.b.c.c.yx << (vec2<u32>(0u, 1u) % vec2<u32>(32u))) << (select(vec2<u32>(3668u, var_0.x), vec2<u32>(var_0.x, arg_1.a), vec2<bool>(true, arg_1.b.a.x)) % vec2<u32>(32u)), vec2<u32>(~22986u, 1u)), arg_1.b.c.c.zy, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41974u, arg_1.a, 1u), arg_1.b.c.c.wwz >> (vec3<u32>(var_0.x, 0u, var_0.x) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 1u), _wgslsmith_sub_vec3_u32(arg_1.b.c.c.zxy, arg_1.b.c.c.zyy))), ~(~112240u)));
    var var_1 = max(_wgslsmith_mod_vec4_u32(arg_1.b.c.c, vec4<u32>(~arg_1.b.c.c.x, 1u ^ (4294967295u << (arg_1.a % 32u)), arg_1.b.c.c.x, ~abs(var_0.x))), vec4<u32>(~var_0.x, ~(~func_2(arg_1.b.c.c).b.c.c.x), 4294967295u >> (_wgslsmith_clamp_u32(~arg_1.b.c.c.x, min(5274u, var_0.x), select(arg_1.a, var_0.x, arg_1.b.a.x)) % 32u), min(var_0.x, 44950u)));
    let var_2 = !select(select(select(arg_1.b.a, vec4<bool>(arg_1.b.c.a.x, false, false, arg_1.b.c.a.x), arg_1.b.a), vec4<bool>(arg_1.b.a.x, any(vec3<bool>(true, arg_1.b.c.a.x, arg_1.b.c.a.x)), func_2(vec4<u32>(arg_1.a, 103242u, arg_1.a, arg_1.a)).b.a.x, all(vec4<bool>(true, true, arg_1.b.c.a.x, false))), select(select(arg_1.b.a, vec4<bool>(true, arg_1.b.a.x, false, arg_1.b.c.a.x), arg_1.b.a.x), func_2(vec4<u32>(var_1.x, var_0.x, var_0.x, arg_1.b.c.c.x)).b.a, any(arg_1.b.c.a))), arg_1.b.a, vec4<bool>(func_2(arg_1.b.c.c ^ arg_1.b.c.c).b.c.a.x, false, true, arg_1.b.c.a.x));
    return Struct_1(vec2<bool>(var_2.x, all(var_2.xx)), -802f, vec4<u32>(_wgslsmith_div_u32(24636u, _wgslsmith_div_u32(~var_1.x, ~1u)), ~(~20699u) & _wgslsmith_mult_u32(13924u, arg_1.b.c.c.x), 30049u, (arg_1.a >> (~19384u % 32u)) | var_0.x), _wgslsmith_f_op_f32(arg_1.b.c.b + arg_1.b.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b, Struct_5(_wgslsmith_mult_u32(_wgslsmith_mult_u32(func_1(vec4<f32>(2916f, 1000f, 565f, 726f), vec2<bool>(false, true)), 4294967295u), 4294967295u), Struct_2(func_2(vec4<u32>(49670u, 22820u, 10782u, 1u)).b.a, func_2(vec4<u32>(1u, 1u, 1u, 1u)).b.b, func_2(vec4<u32>(1u, 1u, 1u, 1u)).b.c)));
    let var_1 = reverseBits(-_wgslsmith_clamp_i32(firstTrailingBit(-u_input.a), countOneBits(_wgslsmith_mod_i32(0i, u_input.b)), u_input.b));
    let var_2 = Struct_5(_wgslsmith_add_u32(var_0.c.x, min(var_0.c.x, var_0.c.x)), func_2(~(vec4<u32>(3685u, var_0.c.x, 1u, 42965u) & (vec4<u32>(57726u, 1u, 1u, 4294967295u) >> (var_0.c % vec4<u32>(32u))))).b);
    let var_3 = func_2(var_0.c);
    var var_4 = Struct_5(~var_2.b.c.c.x, func_2(~var_0.c).b);
    var_4 = Struct_5(func_2(vec4<u32>(0u, 0u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.a, var_2.a), var_2.b.c.c.xxz >> (vec3<u32>(4294967295u, 0u, var_4.a) % vec3<u32>(32u))))).a, Struct_2(select(!var_2.b.a, func_2(var_2.b.c.c >> (var_3.b.c.c % vec4<u32>(32u))).b.a, !var_4.b.a), reverseBits(vec3<i32>(~var_4.b.b.x, 26773i, reverseBits(var_3.b.b.x))), Struct_1(func_4(func_2(var_2.b.c.c).b.b.x, Struct_5(var_3.b.c.c.x, var_2.b)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b.c.b))), ~(~var_2.b.c.c), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_f32(426f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_3.b.c.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b.c.b)))))), abs(~(vec2<u32>(3889u, var_2.a) >> (vec2<u32>(var_4.a, var_3.b.c.c.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, var_4.b.c.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1667f, -757f)))))), 1938f);
}

