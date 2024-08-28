struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = Struct_1(firstLeadingBit(~0u), ~var_1.b, _wgslsmith_div_i32(6180i, -_wgslsmith_clamp_i32(arg_1.c, arg_2.x, _wgslsmith_mod_i32(151i, 1i))), var_0.d);
    var var_3 = !select(vec4<bool>(true, false, all(vec2<bool>(false, true)), ~var_0.c == ~18311i), !vec4<bool>(any(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, true, false, false)), true, true), !vec4<bool>(select(true, true, false), select(false, false, false), true, -2147483647i > arg_2.x));
    return ~arg_3;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = ~(i32(-1i) * -1i);
    var var_1 = Struct_1(2218u, ~func_3(~(~vec2<u32>(4294967295u, 4294967295u)), Struct_1(56273u, firstLeadingBit(4294967295u), i32(-1i) * -40608i, max(vec3<u32>(61689u, 4294967295u, 42593u), vec3<u32>(25737u, 1u, 21466u))), u_input.a, _wgslsmith_sub_u32(~838u, 1u)), u_input.a.x, max(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(~1u, _wgslsmith_mod_u32(11133u, _wgslsmith_dot_vec4_u32(vec4<u32>(18347u, 0u, 4294967295u, 1u), vec4<u32>(68902u, 0u, 16524u, 41106u))), 1u)));
    var var_2 = 83719u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(261f - 497f))), 1f, any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1097f, -107f)) - -1350f) + -1075f))));
    var_1 = Struct_1(61426u, var_1.b >> (_wgslsmith_sub_u32(var_1.b, 1u) % 32u), _wgslsmith_mult_i32(var_1.c, arg_0), vec3<u32>(~abs(_wgslsmith_sub_u32(14064u, var_1.d.x)), 66582u, 1u));
    return Struct_1(64072u, var_1.a << (13721u % 32u), 17186i, _wgslsmith_div_vec3_u32(var_1.d, ~vec3<u32>(select(var_1.a, var_1.d.x, true), ~23907u, max(13216u, var_1.b))));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -711f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-294f * _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_div_f32(-451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1550f - -1368f) * _wgslsmith_f_op_f32(select(1466f, 1599f, true))))))));
    let var_1 = _wgslsmith_sub_vec3_i32(-vec3<i32>(-9013i, -2147483647i, u_input.a.x), vec3<i32>(1i, u_input.a.x, -(~1i)));
    return func_2(max(abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(25992i, var_1.x), 1i)), _wgslsmith_mult_i32(~u_input.a.x, min(-2147483647i, _wgslsmith_clamp_i32(arg_2.c, arg_2.c, -2147483647i)))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    var var_0 = func_4(~(~(~(~31545u))), _wgslsmith_add_vec2_u32(vec2<u32>(~reverseBits(3880u), ~(~0u)), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(59817u, 43573u), vec2<u32>(51681u, 19820u)), vec2<u32>(1u, 1u), !any(vec3<bool>(true, false, true)))), func_2(arg_1), select(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 38013u, 4294967295u), vec3<u32>(4199u, 1u, 7610u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), select(vec3<u32>(1u, 0u, 34658u), vec3<u32>(56529u, 0u, 100840u), false)) ^ vec3<u32>(4294967295u, 39532u, 4294967295u), arg_2.x > -264f));
    var_0 = Struct_1(3811u, var_0.d.x, i32(-1i) * -2147483647i, _wgslsmith_div_vec3_u32(~var_0.d, var_0.d));
    var_0 = Struct_1(~(var_0.a >> (4294967295u % 32u)), countOneBits(var_0.b), ~countOneBits(~arg_1 >> (~81237u % 32u)), _wgslsmith_add_vec3_u32(select(~var_0.d, vec3<u32>(26056u, 10420u, 1u), true), min(vec3<u32>(23617u, 0u, var_0.d.x), var_0.d) ^ select(vec3<u32>(1u, var_0.d.x, 36874u), vec3<u32>(14979u, 3691u, 1u), true)) & ~(~var_0.d));
    let var_1 = vec2<bool>(!(!all(vec2<bool>(true, false)) || true), any(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), !all(vec2<bool>(true, true)))));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(arg_0, ~_wgslsmith_div_i32(1i, arg_0) ^ 36002i), firstLeadingBit(firstTrailingBit(-28548i)));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(reverseBits(1u), 43458u, 42192u);
    let var_1 = all(vec3<bool>(42639u != select(~21285u, _wgslsmith_dot_vec3_u32(var_0, var_0), true), (_wgslsmith_clamp_u32(var_0.x, 27586u, var_0.x) << (~4294967295u % 32u)) <= ~(1u >> (0u % 32u)), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(23657i, -2147483647i, vec4<f32>(-527f, 179f, -2548f, 554f)))), -659f));
    var var_3 = func_2(-1i);
    let var_4 = Struct_1(var_3.a, 84163u, u_input.a.x, vec3<u32>(var_0.x, ~reverseBits(_wgslsmith_div_u32(var_3.d.x, 4294967295u)), _wgslsmith_add_u32(var_0.x, ~_wgslsmith_div_u32(0u, var_3.a))));
    var var_5 = Struct_1(var_4.d.x, 0u, var_4.c, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 29587u, 20310u), var_0) << (~(~var_3.d) % vec3<u32>(32u)), vec3<u32>(func_2(-2147483647i).a, _wgslsmith_clamp_u32(38019u, max(var_0.x, 42761u), var_4.a), var_4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.a.x), vec3<i32>(-1i, -11450i, var_3.c)), -abs(vec3<i32>(0i, u_input.a.x, var_3.c))) | ~(-1i), ~select(~vec3<i32>(var_4.c, -1i, -17367i), vec3<i32>(var_3.c, -1i, u_input.a.x) & vec3<i32>(var_5.c, 2147483647i, -1i), vec3<bool>(true, var_1, false)) & (abs(~vec3<i32>(0i, -2147483647i, u_input.a.x)) << ((~vec3<u32>(4294967295u, 1u, 12851u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_5.d.x, var_3.a, 1u), var_5.d)) % vec3<u32>(32u))));
}

