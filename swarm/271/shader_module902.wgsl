struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(vec4<bool>(false, true, true, false)), Struct_5(vec4<bool>(true, true, false, false)), Struct_5(vec4<bool>(true, true, false, false)), Struct_5(vec4<bool>(false, false, false, true)), Struct_5(vec4<bool>(false, false, true, false)), Struct_5(vec4<bool>(false, false, true, true)), Struct_5(vec4<bool>(false, false, false, true)), Struct_5(vec4<bool>(true, true, true, true)), Struct_5(vec4<bool>(false, true, true, false)), Struct_5(vec4<bool>(false, true, false, false)), Struct_5(vec4<bool>(true, false, false, true)), Struct_5(vec4<bool>(false, true, true, false)), Struct_5(vec4<bool>(true, false, false, false)), Struct_5(vec4<bool>(false, false, true, false)), Struct_5(vec4<bool>(true, true, false, false)), Struct_5(vec4<bool>(true, false, false, false)), Struct_5(vec4<bool>(false, false, false, false)), Struct_5(vec4<bool>(false, false, true, true)), Struct_5(vec4<bool>(true, false, false, false)), Struct_5(vec4<bool>(false, false, false, true)), Struct_5(vec4<bool>(true, true, true, false)), Struct_5(vec4<bool>(true, false, true, false)), Struct_5(vec4<bool>(false, true, true, true)), Struct_5(vec4<bool>(false, true, false, true)), Struct_5(vec4<bool>(true, false, true, false)), Struct_5(vec4<bool>(true, true, false, false)), Struct_5(vec4<bool>(false, true, true, true)), Struct_5(vec4<bool>(true, false, false, true)), Struct_5(vec4<bool>(false, true, false, true)));

var<private> global1: array<vec4<bool>, 1>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(~(~vec2<i32>(_wgslsmith_add_i32(1010i, u_input.a), ~20512i)), countOneBits(_wgslsmith_div_vec2_i32(select(min(vec2<i32>(2147483647i, 9383i), vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)), -(~vec2<i32>(-1i, -2147483647i)))));
    let var_1 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))));
    global0 = array<Struct_5, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1006f, _wgslsmith_f_op_f32(-813f + arg_0.x), _wgslsmith_f_op_f32(550f + 1654f), _wgslsmith_div_f32(arg_0.x, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(270f, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(arg_0.x, 1000f, arg_0.x, arg_0.x), var_1.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2069f, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, 493f, -669f, 728f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -3051f, -274f)))))), vec4<f32>(_wgslsmith_f_op_f32(-878f * _wgslsmith_f_op_f32(sign(arg_0.x))), -766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(117f, arg_0.x))), arg_0.x))));
    let var_3 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1.x, 15952u, 3508u) << (vec4<u32>(u_input.d, 48275u, arg_1.x, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(44452u, 4294967295u, u_input.c.x, arg_1.x)), _wgslsmith_clamp_u32(4294967295u, ~u_input.b.x, ~u_input.b.x) | abs(arg_1.x)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * -1248f), var_2.x)))));
    return _wgslsmith_f_op_f32(min(168f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(483f, -1337f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.c - -640f), _wgslsmith_f_op_f32(-var_3.c)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1107f - arg_0.x) - -1361f) + var_3.c) + -309f);
}

fn func_2() -> u32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_div_f32(-1587f, _wgslsmith_f_op_f32(ceil(-1000f))) != -310f, reverseBits((u_input.b >> (u_input.b % vec2<u32>(32u))) ^ reverseBits(u_input.c.zz)), false && func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(348f, -969f, -821f)), u_input.b), Struct_1(max(u_input.b ^ u_input.c.yx, u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec2<bool>(false, true))), -120f)), _wgslsmith_sub_i32(reverseBits(2147483647i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)), reverseBits(u_input.a)) ^ u_input.a), Struct_1(vec2<u32>(~(~1u), ~countOneBits(u_input.c.x)), vec2<bool>(!select(true, true, false), func_3(vec3<f32>(-129f, -1904f, 484f), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.d, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1510f, 106f)))) + -670f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-794f, -146f, 1163f, -1710f) * vec4<f32>(-274f, 565f, -324f, 1861f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(217f, 1159f, 286f, -718f), vec4<f32>(-1366f, 845f, -506f, 751f)))))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1091f - -1000f) + _wgslsmith_f_op_f32(sign(var_0.c.c))), 763f))))));
    var_0 = Struct_3(var_0.a, u_input.a, Struct_1(vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.d, u_input.d)), ~44682u), vec2<bool>(var_0.a.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-398f))))), _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(step(var_0.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.c, -961f, 1156f, -708f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.c, var_0.c.c, var_0.d.x, 1257f) * var_0.d), true))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.d.wx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_f_op_f32(-var_0.a.d.c)))));
    var var_3 = Struct_4(var_0.c, Struct_1(var_0.c.a, select(var_0.a.d.b, vec2<bool>(!var_0.c.b.x, true), !select(var_0.c.b, vec2<bool>(false, false), true)), -1152f), _wgslsmith_f_op_f32(471f * _wgslsmith_f_op_f32(ceil(-2164f))), Struct_3(var_0.a, -_wgslsmith_mult_i32(u_input.a, ~u_input.a), Struct_1(~(~vec2<u32>(4294967295u, u_input.d)), vec2<bool>(var_0.a.d.b.x, all(vec2<bool>(false, var_0.c.b.x))), var_0.a.d.c), _wgslsmith_f_op_vec4_f32(-var_0.d)));
    return _wgslsmith_mult_u32(~var_0.c.a.x, 0u);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_5 {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(48495u, u_input.b.x), vec2<u32>(5112u, _wgslsmith_sub_u32(max(u_input.c.x, 112197u), 0u))));
    var var_1 = _wgslsmith_f_op_f32(select(arg_0.d.c, arg_0.d.c, true));
    global1 = array<vec4<bool>, 1>();
    var var_2 = u_input.a;
    global0 = array<Struct_5, 29>();
    return Struct_5(select(!select(global1[_wgslsmith_index_u32(~48304u, 1u)], !global1[_wgslsmith_index_u32(29009u, 1u)], !vec4<bool>(arg_1, false, true, true)), vec4<bool>(false, false, arg_1, true), false));
}

fn func_1() -> bool {
    var var_0 = func_4(Struct_2(false, vec2<u32>(~func_2(), _wgslsmith_add_u32(abs(73443u), u_input.d ^ 1u)), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), Struct_1(u_input.c.yz, vec2<bool>(true, select(true, true, false)), _wgslsmith_f_op_f32(floor(-207f)))), func_3(vec3<f32>(_wgslsmith_f_op_f32(sign(-851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f * 1333f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-268f, -628f)))), abs(abs(~vec2<u32>(u_input.c.x, 12079u)))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(~u_input.b, reverseBits(u_input.b >> (u_input.b % vec2<u32>(32u)))), vec2<u32>(~u_input.d, u_input.d)), 29u)];
    let var_2 = global0[_wgslsmith_index_u32(22862u, 29u)];
    let var_3 = 0u;
    let var_4 = true;
    return (reverseBits(1i) < _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 12824i), vec2<i32>(u_input.a, 11231i)), u_input.a)) & var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec4<bool>(!func_1(), true, true, true));
    global1 = array<vec4<bool>, 1>();
    global1 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-556f, -977f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1002f, -782f))), vec2<u32>(_wgslsmith_mod_u32(~func_2(), 9746u & u_input.b.x), u_input.b.x), 1000f, ~vec2<u32>(firstTrailingBit(u_input.c.x), abs(13509u)) >> (vec2<u32>((4294967295u << (u_input.c.x % 32u)) << (reverseBits(u_input.d) % 32u), ~u_input.b.x) % vec2<u32>(32u)));
}

