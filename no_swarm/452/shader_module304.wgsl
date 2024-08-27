struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-753f + _wgslsmith_f_op_f32(f32(-1f) * -363f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-539f, 2387f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(884f, 1136f)))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1273f * -1830f), _wgslsmith_div_f32(402f, 322f))) * _wgslsmith_f_op_f32(step(-712f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) * _wgslsmith_div_f32(875f, _wgslsmith_f_op_f32(sign(-114f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-591f, 1709f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1878f, 955f)))) + 442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -317f), 1235f)))));
    let var_2 = abs(vec2<u32>(firstTrailingBit(12665u), 1u)) ^ vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, ~0u), 1u, ~(~44039u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    var var_3 = arg_1;
    return select(~min(~(~var_2.x), max(reverseBits(83682u), 38646u)), ~_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x))) >> (abs(15149u) % 32u), !(false || !arg_1.a));
}

fn func_2() -> i32 {
    let var_0 = false;
    var var_1 = firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(~u_input.a.x | -10119i, 1i)));
    var_1 = vec3<i32>(u_input.a.x, select((i32(-1i) * -1i) << (_wgslsmith_add_u32(func_3(-1i, Struct_1(var_0, u_input.a.x)), 1u) % 32u), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 40439i, var_1.x, var_1.x), vec4<i32>(-50254i, 2147483647i, -8781i, 0i)), true), 0i);
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.a.x, var_1.x), u_input.a.x), -27605i, i32(-1i) * -40252i), 25450i);
    var_1 = vec3<i32>(firstLeadingBit(-69732i), var_1.x, reverseBits(-63593i));
    return _wgslsmith_sub_i32(-((var_2.x << (~1u % 32u)) >> (func_3(_wgslsmith_dot_vec3_i32(u_input.a.ywy, u_input.a.xzy), Struct_1(var_0, 2147483647i)) % 32u)), max(0i ^ _wgslsmith_dot_vec2_i32(-var_1.yy, -vec2<i32>(2147483647i, var_1.x)), abs(var_1.x) >> (select(~32702u, abs(4294967295u), true) % 32u)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = ~func_2();
    let var_1 = u_input.a;
    return Struct_2(Struct_1(true, 1i), Struct_1(true, u_input.a.x), 4294967295u | ~(~(arg_0.x << (4294967295u % 32u))), Struct_1(true, ~reverseBits(min(u_input.a.x, -1i))), Struct_1(false, ~_wgslsmith_mult_i32(var_1.x, 0i) >> (firstTrailingBit(1u) % 32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1.e;
    let var_1 = arg_1.b;
    var_0 = Struct_1(var_0.a, ~min(-41814i, _wgslsmith_sub_i32(~(-4888i), 1i)));
    let var_2 = Struct_1(!all(select(!vec3<bool>(arg_1.b.a, var_0.a, true), vec3<bool>(false, false, true), select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(true, true, false), false))), _wgslsmith_div_i32(abs(_wgslsmith_add_i32(0i, var_1.b) >> (5411u % 32u)), _wgslsmith_mult_i32(arg_1.e.b, ~(-u_input.a.x))));
    var var_3 = 4294967295u;
    return arg_1;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = func_4(~(~(arg_0.c >> (arg_0.c % 32u))) ^ 1u, func_1(vec3<u32>(~arg_0.c >> (_wgslsmith_mod_u32(arg_0.c, arg_0.c) % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.c, 17459u)), select(vec2<u32>(91805u, arg_0.c), vec2<u32>(arg_0.c, arg_0.c), true)), 22485u)));
    var var_2 = 1i;
    var var_3 = var_1;
    var var_4 = vec2<bool>(0u == min(_wgslsmith_clamp_u32(var_3.c >> (var_1.c % 32u), var_3.c, _wgslsmith_add_u32(17687u, 1700u)), 4294967295u), true);
    return Struct_2(Struct_1(true, ~func_2()), var_0, max(0u >> (var_1.c % 32u), ~arg_0.c), func_1(~(~firstLeadingBit(vec3<u32>(0u, var_1.c, var_1.c)))).e, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(firstLeadingBit(~(~37357u)), func_1(vec3<u32>(1u, 12662u, countOneBits(0u)))));
    var var_1 = !vec3<bool>(var_0.d.a, var_0.d.a, var_0.b.a);
    var_1 = !vec3<bool>(any(!vec3<bool>(true, var_1.x, var_0.e.a)), var_1.x, true);
    var_1 = vec3<bool>(var_0.c > 46347u, !var_0.d.a | var_0.a.a, var_0.b.a);
    var var_2 = ~(~3839u);
    let var_3 = func_1(~(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, var_0.c, 5463u), vec3<u32>(4294967295u, var_0.c, var_0.c)) << (vec3<u32>(var_0.c, 4294967295u, 1u) % vec3<u32>(32u))) | vec3<u32>(38211u, ~var_0.c, func_1(~vec3<u32>(var_0.c, var_0.c, var_0.c)).c));
    var var_4 = true;
    var var_5 = ~(~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_3.c, 28470u), ~vec3<u32>(var_3.c, 0u, var_3.c)) << (~(vec3<u32>(33829u, var_0.c, var_3.c) & vec3<u32>(var_0.c, 37794u, 57147u)) % vec3<u32>(32u))));
}

