struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = firstTrailingBit(abs(vec3<i32>(-17499i, -1i, 7630i)));
    let var_1 = ~(~(~var_0.x));
    global0 = arg_0;
    let var_2 = vec4<bool>(arg_0 >= 50313u, true, true, all(select(vec3<bool>(true, any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, false))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true)));
    var var_3 = Struct_2(vec2<u32>(arg_0, ~min(20790u >> (arg_0 % 32u), arg_0 ^ 82059u)), Struct_1(u_input.a >= _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, var_1, 8148i), select(vec3<i32>(var_1, 1i, var_1), vec3<i32>(1i, -29977i, -1i), true)), false, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.c.x, 36579i), vec3<i32>(-1i, var_0.x, 1i)), -vec3<i32>(1i, u_input.b.x, -2147483647i)), vec3<i32>(u_input.b.x, var_0.x, 0i)), ~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(572f)) * -403f), -1000f))), Struct_1(~arg_0 < select(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), 4294967295u, true & var_2.x), !(!var_2.x || var_2.x), ~vec3<i32>(var_1, _wgslsmith_mult_i32(13269i, u_input.a), -15008i), arg_0), u_input.d.x);
    return 56337u;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: i32) -> u32 {
    global0 = ~25111u;
    global0 = _wgslsmith_sub_u32(func_3(4294967295u), ~(~firstLeadingBit(~arg_0)));
    var var_0 = 34642u;
    var var_1 = vec4<i32>(abs(arg_3), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_2, abs(1i)), arg_3), abs(_wgslsmith_dot_vec2_i32(u_input.b ^ u_input.c, u_input.c)) >> (abs(1u) % 32u), arg_2);
    let var_2 = ~vec2<u32>(_wgslsmith_sub_u32(~(u_input.d.x & 32355u), ~1u), (~u_input.d.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(6593u, 0u, arg_0), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))) >> (10938u % 32u));
    return ~var_2.x;
}

fn func_1() -> u32 {
    let var_0 = abs(~_wgslsmith_add_u32(43891u | u_input.d.x, abs(u_input.d.x)) ^ u_input.d.x);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, var_0, 1u, 4294967295u), reverseBits(vec4<u32>(var_0, var_0, 43443u, u_input.d.x)) | select(vec4<u32>(34738u, u_input.d.x, var_0, 1u), vec4<u32>(var_0, 23327u, 4294967295u, 37729u), vec4<bool>(true, false, false, true))), ~(var_0 >> (u_input.d.x % 32u)), var_0 & min(func_2(u_input.d.x, u_input.b.x, -13620i, u_input.e), _wgslsmith_add_u32(u_input.d.x, 4294967295u))), vec4<u32>(var_0, 4294967295u, var_0, _wgslsmith_add_u32(4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.d.x, var_0), vec3<u32>(4294967295u, u_input.d.x, 24974u)) % 32u), u_input.d.x)));
    global0 = ~(~(~84764u));
    global0 = _wgslsmith_mult_u32(u_input.d.x, ~1u) ^ (firstTrailingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0, 68210u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 4294967295u, 0u, 1u)), vec4<u32>(u_input.d.x, 44302u, u_input.d.x, u_input.d.x) & vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x))) << (_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u) ^ u_input.d, vec2<u32>(var_0, var_0))) % 32u));
    var var_1 = 664f;
    return _wgslsmith_mult_u32(~74421u, _wgslsmith_sub_u32(~var_0, u_input.d.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = func_3(18205u);
    global0 = arg_1.a.x;
    global0 = _wgslsmith_mult_u32(~(~firstTrailingBit(~arg_1.d.d)), 37914u);
    global0 = max(_wgslsmith_div_u32(u_input.d.x, 1u), 2573u);
    global0 = ~arg_0;
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!all(vec3<bool>(true, true, false)))));
    let var_1 = func_4(_wgslsmith_mult_u32(~(~firstTrailingBit(u_input.d.x)), ~func_1() >> (997u % 32u)), Struct_2(~_wgslsmith_clamp_vec2_u32(~u_input.d, u_input.d | vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.d.x, u_input.d.x)), Struct_1(var_0, !(u_input.d.x >= 41952u), -vec3<i32>(u_input.e, -2147483647i, u_input.b.x), 27934u), 1527f, Struct_1(reverseBits(u_input.c.x) >= 41953i, !(var_0 && true), ~select(vec3<i32>(-2147483647i, u_input.c.x, -2147483647i), vec3<i32>(-1i, u_input.e, u_input.b.x), var_0), func_1()), select(1u, 1u, !var_0)));
    let var_2 = u_input.d;
    let var_3 = Struct_1(!(_wgslsmith_f_op_f32(trunc(-2241f)) < _wgslsmith_f_op_f32(f32(-1f) * -624f)) | all(select(!vec3<bool>(var_0, true, var_0), vec3<bool>(true, false, var_0), select(vec3<bool>(false, true, false), vec3<bool>(false, var_1.a, var_1.b), vec3<bool>(var_1.b, var_0, true)))), func_4(15786u, Struct_2(abs(countOneBits(var_2)), func_4(var_2.x, Struct_2(var_2, Struct_1(var_1.a, false, vec3<i32>(var_1.c.x, var_1.c.x, var_1.c.x), 25060u), 235f, Struct_1(false, true, var_1.c, 4294967295u), 12621u)), _wgslsmith_f_op_f32(f32(-1f) * -813f), Struct_1(true, false, ~var_1.c, _wgslsmith_mod_u32(4294967295u, var_1.d)), var_2.x)).b, vec3<i32>(-(-2147483647i ^ (2147483647i & u_input.b.x)), 2147483647i, _wgslsmith_add_i32(abs(28234i), ~u_input.c.x)), 2176u | ~var_1.d);
    var var_4 = vec4<u32>(abs(select(var_3.d, ~32693u, var_1.a)), func_1(), var_1.d, ~((var_3.d ^ 15119u) << ((var_3.d >> (var_3.d % 32u)) % 32u))) & firstTrailingBit(countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(27651u, 10507u, var_2.x, u_input.d.x), vec4<u32>(var_1.d, 41688u, var_1.d, var_1.d))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) + 1f)) > _wgslsmith_f_op_f32(floor(-251f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, vec2<i32>(-1i) * -(-vec2<i32>(var_3.c.x, var_3.c.x) ^ var_1.c.yx), var_1.d);
}

