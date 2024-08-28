struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: array<vec3<u32>, 27>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -556f))));
    return Struct_1(vec3<bool>(false, true, false & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), u_input.b.x, ~vec4<u32>(~min(4294967295u, 37099u), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 5604u, u_input.a.x, u_input.d) & vec4<u32>(53606u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 58005u, u_input.a.x)), 53394u), _wgslsmith_f_op_f32(-var_0.a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_5) -> vec3<bool> {
    let var_0 = !vec4<bool>(_wgslsmith_dot_vec2_u32(~arg_2.c.wy, vec2<u32>(4294967295u, 35529u)) > arg_0.a.c.x, arg_1.a.a.x, true, false);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.d, 1124f)))))) + arg_3.c.yy), Struct_1(var_0.wzx, _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_1.a.b, -1i, 1i, arg_2.b), arg_3.a), arg_1.a.c, _wgslsmith_f_op_f32(f32(-1f) * -235f)), Struct_1(vec3<bool>(func_1().a.x, true, true), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.b.x, firstLeadingBit(arg_1.a.b)), -36010i), _wgslsmith_mod_vec4_u32(arg_1.a.c, abs(vec4<u32>(u_input.a.x, 1u, arg_2.c.x, 0u))) ^ func_1().c, arg_1.a.d));
    let var_2 = -var_1.b.b;
    var var_3 = Struct_4(arg_3.c.x);
    global0 = array<vec3<u32>, 30>();
    return vec3<bool>(false && (-354f <= var_1.a.x), any(func_1().a.yx) | false, var_1.c.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<u32>) -> f32 {
    global0 = array<vec3<u32>, 30>();
    let var_0 = Struct_3(Struct_1(func_3(arg_0, Struct_3(Struct_1(arg_0.a.a, 2147483647i, vec4<u32>(u_input.a.x, arg_0.b, arg_3.x, 4294967295u), arg_1), 36957u), Struct_1(arg_0.a.a, _wgslsmith_sub_i32(u_input.b.x, 0i), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 30643u, arg_3.x, u_input.c), vec4<u32>(1u, u_input.d, u_input.c, u_input.c)), _wgslsmith_f_op_f32(193f - arg_0.a.d)), Struct_5(firstLeadingBit(vec4<i32>(u_input.b.x, arg_0.a.b, 0i, u_input.b.x)), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1505f, -2177f, arg_0.a.d, 518f)), Struct_2(vec2<f32>(arg_1, arg_1), arg_0.a, Struct_1(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, false), -1i, arg_0.a.c, 635f)))), u_input.b.x << ((~arg_3.x ^ arg_3.x) % 32u), vec4<u32>(_wgslsmith_sub_u32(func_1().c.x, arg_3.x ^ 21481u), 31957u, ~(~arg_0.a.c.x), arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1582f * _wgslsmith_div_f32(arg_0.a.d, arg_1)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1)), 718f)))), 4294967295u);
    global0 = array<vec3<u32>, 30>();
    let var_1 = !arg_0.a.a.yx;
    return var_0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(abs(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x & u_input.b.x, ~8637i)) >> (~(_wgslsmith_add_u32(u_input.d, u_input.d) << ((u_input.c << (4294967295u % 32u)) % 32u)) % 32u), u_input.b.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(~1i, ~42171i), countOneBits(~u_input.b.zy)), u_input.b.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(func_1(), 15985u), 1f, func_1().a, vec3<u32>(47272u, ~4294967295u, u_input.d))) * func_1().d), -105f);
    var var_2 = var_0.x;
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-119f)), _wgslsmith_div_f32(1128f, -897f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1523f, -1366f), vec2<f32>(106f, -623f), var_3)) - vec2<f32>(288f, 1886f)))));
    var var_5 = Struct_3(Struct_1(vec3<bool>(1u < firstLeadingBit(u_input.d), var_3, _wgslsmith_mult_u32(14904u, 1u) >= ~u_input.d), -max(u_input.b.x, 2147483647i), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(81261u, 0u, 109974u, 0u), vec4<u32>(u_input.a.x, u_input.d, 79735u, 16922u)) << (~vec4<u32>(u_input.a.x, u_input.c, 33199u, u_input.d) % vec4<u32>(32u))), -1438f), u_input.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~(u_input.a & vec2<u32>(u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.d, var_4.x, -577f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(545f, -520f, 822f)))))), -_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, 1i), _wgslsmith_add_i32(var_5.a.b, 11500i)) | var_5.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(vec2<i32>(~2147483647i, abs(u_input.b.x) | -var_0.x), firstTrailingBit(select(vec2<i32>(42349i, u_input.b.x), u_input.b.zx, var_5.a.a.xz) << (~vec2<u32>(var_5.b, var_5.a.c.x) % vec2<u32>(32u))), !vec2<bool>(var_5.a.a.x, true)));
}

