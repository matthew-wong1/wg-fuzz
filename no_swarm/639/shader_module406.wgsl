struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = Struct_1(abs(~arg_1.a), 0u, arg_0, ~select(u_input.a, arg_1.a.x, false), -2147483647i);
    var var_1 = vec2<bool>(var_0.c, (_wgslsmith_f_op_f32(-153f - _wgslsmith_f_op_f32(sign(363f))) > _wgslsmith_f_op_f32(-119f - -196f)) | !all(select(vec4<bool>(false, arg_1.c, arg_0, true), vec4<bool>(true, var_0.c, true, true), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(119f))), 1000f)));
    let var_3 = Struct_1(vec3<u32>(0u, ~(~abs(4294967295u)), 41811u), abs(1u), true, 51460u, arg_1.e ^ _wgslsmith_add_i32(-2147483647i, 2147483647i));
    let var_4 = any(!(!select(!vec4<bool>(true, true, true, var_0.c), vec4<bool>(true, true, true, false), select(vec4<bool>(var_0.c, var_1.x, false, true), vec4<bool>(arg_0, arg_1.c, false, var_3.c), vec4<bool>(true, true, var_3.c, var_1.x)))));
    return countOneBits(~_wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(var_3.d, ~var_0.b, 4294967295u)));
}

fn func_2() -> vec4<bool> {
    var var_0 = ~(-2147483647i);
    var var_1 = Struct_2(0u, Struct_1(firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, 116977u) & vec3<u32>(u_input.b, u_input.b, 0u)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(931f * -1192f)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -907f), 1f)), ~_wgslsmith_div_u32(~u_input.a, abs(u_input.b)), ~max(-2147483647i >> (0u % 32u), ~(-1i))), Struct_1(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(35325u, u_input.b, u_input.a)), func_3(false, Struct_1(vec3<u32>(57924u, 1u, 49614u), 10745u, true, 83497u, -1i), -vec3<i32>(2147483647i, -57306i, 19663i))), max(22303u & u_input.b, _wgslsmith_div_u32(u_input.b & u_input.b, 31772u)), true | (-20817i < _wgslsmith_dot_vec3_i32(vec3<i32>(4685i, 42003i, -30619i), vec3<i32>(-1i, -1i, 1i))), abs(u_input.a), 1i), vec4<bool>(true, false, true | !(37560u != u_input.b), false), 1u);
    let var_2 = var_1.b;
    var var_3 = Struct_2(~abs(var_1.c.a.x), var_1.c, Struct_1(vec3<u32>(u_input.a, abs(66131u), var_1.b.b), _wgslsmith_dot_vec3_u32(var_1.b.a, ~vec3<u32>(var_1.e, 42067u, 18236u) << (var_1.b.a % vec3<u32>(32u))), true, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.b.b, 0u, var_2.d, var_1.b.d)), vec4<u32>(_wgslsmith_clamp_u32(0u, 52148u, 42119u), min(1u, 76629u), max(var_1.e, 8272u), 23784u)), 29488i), !select(!var_1.d, var_1.d, var_2.c), ~(~(1u << (_wgslsmith_mod_u32(38764u, var_2.b) % 32u))));
    var_0 = _wgslsmith_div_i32(firstTrailingBit(max(reverseBits(-5944i), var_3.b.e)), min(select(firstTrailingBit(var_2.e), firstTrailingBit(-var_2.e), false), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.b.e, ~52556i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(16737i, 36179i), vec2<i32>(-22950i, 38873i)))));
    return var_3.d;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_2(1u, Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, arg_0.b, 3965u, arg_1.d), vec4<u32>(arg_1.d, arg_1.a.x, u_input.b, arg_0.d)), 4294967295u, abs(44987u)), ~(firstLeadingBit(1u) & u_input.a), arg_0.b != min(43892u, arg_0.d), arg_1.a.x, i32(-1i) * -arg_1.e), arg_1, select(vec4<bool>(!(80456u >= u_input.b), true, all(vec3<bool>(true, arg_1.c, false)), arg_0.c), select(select(func_2(), !vec4<bool>(arg_0.c, true, arg_0.c, arg_1.c), all(vec3<bool>(arg_1.c, true, false))), vec4<bool>(select(true, false, arg_1.c), arg_0.c || arg_0.c, false, true), vec4<bool>(arg_1.c || true, true, arg_1.c, true)), !(!vec4<bool>(false, arg_0.c, arg_1.c, arg_1.c))), firstLeadingBit(97074u));
    var var_1 = 85796u;
    global0 = arg_0.d;
    var_0 = Struct_2(arg_0.d, arg_1, arg_1, vec4<bool>(!(!(arg_0.e < 31721i)), false, (true && any(var_0.d)) && !(arg_1.c && false), any(select(!vec4<bool>(false, true, true, arg_0.c), var_0.d, func_2()))), arg_1.d | arg_1.a.x);
    var_1 = reverseBits(~_wgslsmith_div_u32(~(~u_input.a), var_0.e));
    return 62256i;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    global0 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(~vec4<u32>(66338u, u_input.b, arg_1, arg_2.c.d), vec4<u32>(1u, u_input.b, arg_2.a, arg_1), vec4<bool>(arg_2.d.x, false, true, false)), select(firstLeadingBit(vec4<u32>(12337u, arg_2.b.a.x, arg_2.a, u_input.a)), vec4<u32>(arg_1, 0u, 1u, arg_2.e), arg_2.d)), countOneBits(firstTrailingBit(vec4<u32>(97407u, u_input.a, 0u, arg_2.a))) << (vec4<u32>(~26173u, reverseBits(1u), ~18785u, countOneBits(46705u)) % vec4<u32>(32u))));
    var var_0 = any(select(func_2(), arg_2.d, select(select(vec4<bool>(arg_2.c.c, arg_2.d.x, true, true), !vec4<bool>(arg_2.b.c, arg_2.d.x, true, false), arg_2.d), vec4<bool>(false, arg_2.b.c, all(vec3<bool>(true, arg_2.c.c, arg_2.d.x)), all(vec2<bool>(arg_2.d.x, arg_2.d.x))), !any(arg_2.d))));
    let var_1 = arg_1;
    var var_2 = arg_2.b.b;
    var_0 = arg_2.d.x;
    return ~(~_wgslsmith_mult_u32(~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, arg_2.a, var_1, var_1), vec4<u32>(u_input.b, 54683u, arg_1, arg_2.c.a.x))) >> (28858u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec3<i32>(-_wgslsmith_clamp_i32(-2147483647i, 1i << (u_input.b % 32u), -32911i), _wgslsmith_add_i32(-func_1(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.a), u_input.b, false, 17914u, -1i), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), 1u, true, 1u, 1i)), -52488i), ~26355i), u_input.a, Struct_2(u_input.a, Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(1307u, 57500u, 37444u), ~vec3<u32>(u_input.b, 11482u, 77466u)), max(reverseBits(u_input.a), _wgslsmith_clamp_u32(u_input.a, 1u, 34030u)), true, u_input.a, -8152i), Struct_1(vec3<u32>(u_input.b | 27563u, _wgslsmith_clamp_u32(4294967295u, u_input.a, 6248u), u_input.b), u_input.a, !any(vec2<bool>(false, true)), firstLeadingBit(~u_input.a), 49894i), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_mod_u32(~u_input.b, 1u)));
    let var_0 = vec3<bool>(true | (true || !(u_input.a < u_input.a)), true, _wgslsmith_sub_u32(abs(1u ^ u_input.b), u_input.b) < 0u);
    var var_1 = 13332i;
    let var_2 = 2147483647i;
    let var_3 = Struct_1((~vec3<u32>(u_input.b, 1u, 121093u) << (vec3<u32>(func_3(var_0.x, Struct_1(vec3<u32>(0u, u_input.a, 49705u), 28175u, var_0.x, 1u, var_2), vec3<i32>(1i, -1i, 0i)).x, 29069u >> (u_input.b % 32u), ~u_input.a) % vec3<u32>(32u))) << (~_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, u_input.b, u_input.a), vec3<u32>(u_input.b, 13410u, 4294967295u), var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b, 19937u), vec3<u32>(51348u, u_input.a, 0u))) % vec3<u32>(32u)), u_input.b, any(vec2<bool>(_wgslsmith_f_op_f32(round(1815f)) <= _wgslsmith_f_op_f32(f32(-1f) * -468f), false)), ~u_input.b, _wgslsmith_mult_i32(var_2 ^ ~(i32(-1i) * -22458i), min(firstLeadingBit(i32(-1i) * -2147483647i), var_2)));
    global0 = ~var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(select(-687f, 105f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, 154f)), 1f)))), firstLeadingBit(func_1(Struct_1(firstTrailingBit(var_3.a), 0u, var_0.x & true, reverseBits(u_input.b), 19214i), Struct_1(vec3<u32>(var_3.d, 35721u, 4294967295u), u_input.a, !var_3.c, var_3.a.x, var_3.e))));
}

