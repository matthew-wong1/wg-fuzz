struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    var var_0 = any(select(vec3<bool>(false, !arg_2.x, _wgslsmith_f_op_f32(global0.a + -1250f) < global0.a), vec3<bool>(true, true, true), !select(!vec3<bool>(false, false, arg_2.x), vec3<bool>(false, arg_2.x, true), select(vec3<bool>(false, true, arg_2.x), vec3<bool>(false, true, true), false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a, arg_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_3, arg_3), global0.a) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-991f, global0.a))), _wgslsmith_div_vec2_f32(vec2<f32>(1593f, global0.a), vec2<f32>(-1310f, 658f))))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-195f))), select(vec4<bool>(any(select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, true), arg_2)), arg_2.x, !any(arg_2), abs(1u) >= u_input.b), vec4<bool>((true | arg_2.x) == arg_2.x, true, any(vec3<bool>(true, arg_2.x, false)), arg_2.x || arg_2.x), (u_input.a << (_wgslsmith_sub_u32(u_input.b, 0u) % 32u)) <= ~u_input.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + 557f))), !(42999i > -arg_1) & arg_2.x);
    var var_3 = Struct_3(abs(vec4<i32>(arg_0, ~(arg_0 ^ arg_1), -17302i, -2147483647i)), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1739f));
    var_3 = Struct_3(_wgslsmith_mod_vec4_i32(abs(~(var_3.a >> (vec4<u32>(var_3.b, u_input.b, var_3.b, var_3.b) % vec4<u32>(32u)))), -(~(-var_3.a))), (max(u_input.b, u_input.b & var_3.b) ^ u_input.b) ^ u_input.a, 662f);
    return _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, var_3.b), ~vec3<u32>(u_input.b, 4294967295u, 13066u)) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(35514u, var_3.b, u_input.a), vec3<u32>(u_input.b, 43170u, 0u)) << (u_input.b % 32u)) % 32u)) ^ reverseBits(1u);
}

fn func_2() -> Struct_3 {
    let var_0 = -(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(6801i, -1i, -32149i), vec3<i32>(1i, 1i, 1i)), 16052i) | -2147483647i);
    var var_1 = max(~(vec3<u32>(0u, func_3(var_0, -37172i, vec2<bool>(false, false), global0.a), 111962u) | _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.a, u_input.a, 4294967295u))), select(max(vec3<u32>(~1u, u_input.a, u_input.b), ~vec3<u32>(u_input.a, u_input.a, 19076u)), firstLeadingBit(~vec3<u32>(1u, 0u, 1u)), true));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_0, ~var_0, -2147483647i, -var_0), vec4<i32>(0i, max(-29348i, -9717i), var_0, _wgslsmith_div_i32(-1i, var_0))), _wgslsmith_add_i32(_wgslsmith_mod_i32(countOneBits(-2147483647i), -40819i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0, var_0), vec3<i32>(-4085i, var_0, 57701i)), max(-2147483647i, var_0))), reverseBits(~_wgslsmith_div_i32(0i, -36760i))), -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-30988i, var_0, 10891i, var_0), vec4<i32>(1i, var_0, -1i, var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -1i, var_0), vec3<i32>(var_0, var_0, var_0))), var_0, var_0 >> (1u % 32u)));
    var_1 = select(min(~(~(vec3<u32>(var_1.x, 48528u, var_1.x) >> (vec3<u32>(u_input.a, u_input.b, 1u) % vec3<u32>(32u)))), vec3<u32>(~(~0u), select(33927u, var_1.x, true), 0u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(60362u, u_input.b, u_input.a), vec3<u32>(44272u, 75152u, var_1.x))), select(firstLeadingBit(vec3<u32>(1u, u_input.a, u_input.b)), vec3<u32>(var_1.x, u_input.b, 51611u), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))), vec3<u32>(u_input.b, ~_wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(u_input.a, 56415u)), select(~98487u, _wgslsmith_mod_u32(u_input.b, 1u), true))), true);
    var_1 = vec3<u32>(4294967295u, 4294967295u, u_input.b);
    return Struct_3(abs(-((vec4<i32>(var_0, 2147483647i, 31742i, 0i) >> (vec4<u32>(var_1.x, 1u, 19518u, u_input.b) % vec4<u32>(32u))) ^ ~vec4<i32>(var_0, var_2, var_2, -2147483647i))), _wgslsmith_add_u32(u_input.b, 0u), global0.a);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> f32 {
    global0 = Struct_1(2202f);
    var var_0 = global0.a;
    let var_1 = ~(~_wgslsmith_div_u32(~u_input.b, ~(~0u)));
    var_0 = 333f;
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(arg_2.c)));
    return arg_2.c;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(~4294967295u >= ~(u_input.a & 0u), false, func_2())), -298f);
    let var_1 = max(_wgslsmith_div_u32(func_3(1i, min(-1i, -1i), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(~u_input.b)), _wgslsmith_div_u32(~(u_input.b ^ u_input.b), ~u_input.b)) ^ reverseBits(49071u);
    global0 = Struct_1(423f);
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(28334u, u_input.b, _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, var_1) | vec2<u32>(u_input.a, u_input.a)), vec2<u32>(29601u, 0u)), func_2().b), _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 2086u, var_1, 70513u), vec4<u32>(var_1, 4294967295u, u_input.b, 15175u)) >> (vec4<u32>(1u, ~4294967295u, ~var_1, 4294967295u) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.a, 0u, u_input.a, 24918u)))));
    global0 = Struct_1(var_0);
    return Struct_1(_wgslsmith_f_op_f32(floor(491f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(-1000f);
    let var_0 = Struct_2(Struct_1(global0.a), vec4<bool>(true & (-298f == _wgslsmith_f_op_f32(global0.a * global0.a)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true))), true, any(vec2<bool>(true, true))), Struct_1(-1481f), false);
    let var_1 = abs(~u_input.a);
    global0 = var_0.a;
    global0 = Struct_1(var_0.c.a);
    var var_2 = 17940i;
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_1 >> (reverseBits(~_wgslsmith_sub_u32(2850u, 0u)) % 32u), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(func_2().a, vec4<i32>(min(1i, 0i), -1i, 1i, i32(-1i) * -1i)), _wgslsmith_mod_vec4_i32(func_2().a, vec4<i32>(1i, min(2147483647i, 2147483647i), 44693i, i32(-1i) * -1010i))), _wgslsmith_sub_i32(0i, max(-1i, ~1i)), _wgslsmith_f_op_f32(-var_0.c.a), firstTrailingBit(~_wgslsmith_clamp_u32(var_1 ^ u_input.b, u_input.a >> (u_input.a % 32u), 5606u)));
}

