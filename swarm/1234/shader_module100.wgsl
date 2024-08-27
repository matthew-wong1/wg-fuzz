struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(8889u, 28845u), vec2<u32>(89282u, 91061u), vec2<u32>(581u, 4294967295u), vec2<u32>(24628u, 1u), vec2<u32>(19017u, 71928u), vec2<u32>(1u, 56821u), vec2<u32>(65034u, 30860u), vec2<u32>(0u, 1u), vec2<u32>(18544u, 0u), vec2<u32>(164725u, 61428u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_i32(~(-42205i), ~_wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_0.b.a.x, -2147483647i, -1i)), vec3<i32>(-81741i, -33202i, 5107i)));
    var var_1 = Struct_3(Struct_1(select(~vec2<i32>(arg_0.b.a.x, 1i), arg_0.b.a, arg_0.b.a.x > 0i), arg_0.b.b, countOneBits(max(0u, ~arg_0.b.c))), arg_0, vec2<bool>(true && !(arg_0.b.a.x == 1i), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), Struct_1(-(~arg_0.b.a), abs(firstLeadingBit(u_input.a)), ~select(arg_0.a, 12888u, any(vec4<bool>(false, true, true, true)))));
    var var_2 = true | (!(!all(vec4<bool>(false, false, true, true))) && any(var_1.c));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-212f, -1000f, 2278f, -1024f) * vec4<f32>(-906f, -327f, 408f, 1027f)))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1203f, _wgslsmith_f_op_f32(round(1020f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) - -820f)), _wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_f_op_f32(abs(605f)), -385f));
    let var_4 = _wgslsmith_f_op_f32(-var_3.x);
    return vec2<i32>(_wgslsmith_div_i32(-reverseBits(arg_0.b.a.x), _wgslsmith_sub_i32(2147483647i >> (1u % 32u), firstLeadingBit(var_1.a.a.x))) ^ arg_0.b.a.x, -1i);
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = true;
    let var_1 = 1u;
    let var_2 = false;
    global1 = array<vec2<u32>, 10>();
    global1 = array<vec2<u32>, 10>();
    return Struct_3(Struct_1(countOneBits(vec2<i32>(1i, _wgslsmith_add_i32(47635i, 3136i))), u_input.a, ~firstTrailingBit(arg_0.x)), Struct_2(~(~51585u), Struct_1(func_3(Struct_2(17925u, Struct_1(vec2<i32>(-1i, -2147483647i), u_input.a, var_1)), select(vec3<u32>(44685u, 0u, u_input.b), u_input.a, vec3<bool>(false, true, var_0))), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(arg_0.x, 35936u, var_1)), 11980u & (u_input.b & var_1))), vec2<bool>((var_1 < u_input.a.x) && (var_2 | (u_input.b <= var_1)), any(!(!vec3<bool>(var_0, var_0, true)))), Struct_1(max(~vec2<i32>(24097i, -1i), max(vec2<i32>(-27020i, 13672i), vec2<i32>(-30885i, -1i))) >> ((vec2<u32>(51137u, arg_0.x) & (arg_0 << (vec2<u32>(u_input.b, var_1) % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, arg_0.x, 1u) | u_input.a, vec3<u32>(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], vec2<u32>(arg_0.x, 1u)), 1u, 0u), u_input.a), ~arg_0.x));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(ceil(-360f));
    let var_2 = func_2(vec2<u32>(~0u, arg_0.c));
    var var_3 = Struct_3(func_2(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.a, var_2.d.c, 4294967295u, 57766u), ~vec4<u32>(26175u, u_input.b, 9069u, arg_0.c)))).b.b, Struct_2(u_input.b ^ ~arg_0.c, arg_0), !var_2.c, Struct_1(arg_0.a, vec3<u32>(_wgslsmith_sub_u32(~633u, _wgslsmith_div_u32(55284u, u_input.b)), ~(~u_input.a.x), var_2.b.a & arg_0.b.x), max(select(var_2.d.c & 1u, u_input.a.x ^ 0u, any(var_2.c)), 35146u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(389f * 132f)) + var_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))), 1967f)));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_mod_u32(1u, arg_3);
    var var_1 = 4625u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1686f, -272f, 2191f)), vec3<f32>(_wgslsmith_f_op_f32(883f * -847f), _wgslsmith_f_op_f32(-505f - 734f), -1891f))))));
    global1 = array<vec2<u32>, 10>();
    let var_3 = 73274u;
    return false;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(553f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(514f * _wgslsmith_div_f32(-432f, -289f)), _wgslsmith_f_op_f32(max(-830f, _wgslsmith_div_f32(-313f, -1000f)))))));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.b.x, func_1(arg_0).c), u_input.b >> (~(arg_0.c ^ 79346u) % 32u)), ~1u);
    var_0 = -786f;
    var var_2 = Struct_1(arg_0.a, min(abs(vec3<u32>(45075u, func_2(arg_0.b.yy).b.a, arg_0.b.x >> (var_1 % 32u))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c, 12738u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, 0u, 138417u), vec3<u32>(35595u, var_1, var_1) ^ u_input.a))), ~reverseBits(_wgslsmith_mult_u32(~var_1, arg_0.b.x)));
    let var_3 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, 678f, 359f) * vec3<f32>(-415f, -1662f, 216f))) + vec3<f32>(-1915f, _wgslsmith_f_op_f32(-870f * 876f), 981f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-500f, -1649f, 366f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(-(~vec2<i32>(9003i, 68157i)) << (_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 1u), 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)] << (u_input.a.zy % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a, ~(~(~u_input.a.x))), !func_4(func_1(Struct_1(vec2<i32>(0i, 1i), vec3<u32>(0u, u_input.b, 1u), u_input.b)), Struct_3(Struct_1(vec2<i32>(4691i, 0i), vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a.x), Struct_2(4294967295u, Struct_1(vec2<i32>(6491i, -26623i), vec3<u32>(u_input.a.x, 9120u, 0u), 129992u)), vec2<bool>(true, true), Struct_1(vec2<i32>(2147483647i, -83859i), u_input.a, u_input.b)), max(~2147483647i, 1i), u_input.b));
}

