struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(98485u, 73905u, vec4<f32>(-859f, 1000f, 1885f, -582f), 4294967295u), Struct_1(4294967295u, 4294967295u, vec4<f32>(-194f, 322f, -2075f, 1088f), 9140u));

var<private> global1: u32 = 24877u;

var<private> global2: bool = true;

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-319f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(459f + global0.b.c.x))))));
    global1 = 19175u;
    let var_1 = global0.b;
    let var_2 = Struct_1(_wgslsmith_mod_u32((_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, 4294967295u), vec2<u32>(global0.b.a, 45937u)) & global0.b.d) ^ 1u, ~global0.a.a), 38372u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(var_0, 891f)), var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(select(-1035f, _wgslsmith_f_op_f32(-global0.a.c.x), global3.x))))), ~206u);
    var var_3 = var_2;
    return ~_wgslsmith_div_u32(~4294967295u, global0.b.b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> vec4<bool> {
    global0 = Struct_2(Struct_1(countOneBits(arg_0.a), ~_wgslsmith_mult_u32(global0.b.d, 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(30065u, 0u, global0.b.a, arg_0.d) ^ vec4<u32>(4294967295u, 4294967295u, global0.a.b, arg_0.d), vec4<u32>(1u, 78604u, global0.a.a, 0u)) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(208f, arg_0.c.x)), arg_0.c.x, _wgslsmith_f_op_f32(arg_0.c.x + 793f), -723f) + arg_0.c), ~firstTrailingBit(~4294967295u)), arg_0);
    global1 = ~func_3();
    var var_0 = global0.a;
    var var_1 = !select(select(vec3<bool>(true, var_0.c.x >= -1000f, global3.x | global3.x), !vec3<bool>(global3.x, true, true), !(88726i != arg_1.x)), vec3<bool>(true, true, true), select(!vec3<bool>(global3.x, global3.x, true), vec3<bool>(!global3.x, false, global3.x), !(!vec3<bool>(global3.x, global3.x, global3.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x));
    return select(vec4<bool>(true, var_1.x || var_1.x, true, global3.x), vec4<bool>(true, all(!(!vec3<bool>(global3.x, true, true))), !var_1.x, any(!(!vec4<bool>(false, false, var_1.x, false)))), select(select(vec4<bool>(all(vec4<bool>(var_1.x, var_1.x, true, false)), !global3.x, true, var_1.x), vec4<bool>(var_1.x, !global3.x, global3.x, var_1.x), select(select(vec4<bool>(true, global3.x, false, false), vec4<bool>(true, var_1.x, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, global3.x, global3.x), var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, global3.x, true, false), vec4<bool>(true, global3.x, false, global3.x)))), !select(!vec4<bool>(global3.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, global3.x, true, false), !vec4<bool>(true, var_1.x, true, global3.x)), !(!global3.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_2 {
    global1 = arg_1.x;
    var var_0 = Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(0u, ~(~1u))), countOneBits(global0.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.c.x, 763f)) + -426f), -1038f, global0.b.c.x, global0.a.c.x)), ~(~global0.b.d));
    var var_1 = ~abs(u_input.c.x) >> (0u % 32u);
    var_0 = Struct_1(~(~arg_0), global0.a.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.c)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.x) + -562f), _wgslsmith_f_op_f32(-var_0.c.x), 2275f, -684f)), arg_0);
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_u32(countOneBits(~var_0.b), 22082u), ~var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1580f, -1417f, -786f, var_0.c.x)))), func_3()), global0.a);
    return var_2;
}

fn func_1(arg_0: bool, arg_1: bool) -> vec3<bool> {
    var var_0 = func_4(~34344u, max(vec2<u32>(1u, 4294967295u << (0u % 32u)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u) << (vec2<u32>(global0.a.a, 44487u) % vec2<u32>(32u)), ~vec2<u32>(0u, 1u)), reverseBits(firstLeadingBit(vec2<u32>(4294967295u, 5269u))))), select(!(!func_2(Struct_1(global0.a.b, global0.b.d, vec4<f32>(global0.b.c.x, 1022f, 348f, -996f), global0.b.d), vec2<i32>(2147483647i, 35687i), u_input.a.x)), select(func_2(Struct_1(global0.a.b, global0.b.a, vec4<f32>(820f, -1380f, global0.a.c.x, global0.a.c.x), global0.a.b), vec2<i32>(u_input.c.x, 0i), ~u_input.c.x), !vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, true, true, true)), vec4<bool>(all(!vec3<bool>(false, arg_1, false)), any(vec2<bool>(true, false)), true & (arg_0 & arg_0), arg_0)));
    global1 = ~_wgslsmith_clamp_u32(var_0.b.a, ~global0.a.a, (~var_0.b.d >> (global0.a.b % 32u)) & global0.b.d);
    let var_1 = Struct_1(79459u >> (_wgslsmith_div_u32(select(global0.b.d, 6907u, false), ~_wgslsmith_div_u32(7297u, 67576u)) % 32u), _wgslsmith_mult_u32(func_4(var_0.b.b, ~vec2<u32>(0u, var_0.b.b), !vec4<bool>(global3.x, true, false, arg_0)).a.a & abs(~var_0.b.b), _wgslsmith_mult_u32(var_0.b.a, _wgslsmith_div_u32(1u, abs(46899u)))), _wgslsmith_f_op_vec4_f32(global0.a.c * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global0.a.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, var_0.a.c.x, global0.a.c.x, -356f))))), 25039u);
    global3 = !func_2(func_4(~global0.b.a, abs(select(vec2<u32>(var_0.b.a, global0.a.d), vec2<u32>(50940u, 1u), true)), vec4<bool>(false, true, true, any(vec4<bool>(global3.x, true, arg_1, arg_0)))).b, u_input.a, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, u_input.c.x), u_input.a.x)).xy;
    global3 = vec2<bool>(true, arg_0);
    return vec3<bool>(global3.x, !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.b.c.x)), var_1.c.x)) != _wgslsmith_f_op_f32(f32(-1f) * -2820f)), true && (~global0.b.a == 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(u_input.a.x, -5125i), min(0i, u_input.c.x)), _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, u_input.c.x ^ u_input.a.x, u_input.b), select(~vec3<i32>(2147483647i, 0i, 0i), abs(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), func_1(global3.x, global3.x)))), ~firstLeadingBit(abs(abs(vec3<i32>(-1i, 64910i, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c | u_input.a, vec4<i32>(-1070i, _wgslsmith_sub_i32(-1i, abs(abs(var_0))), reverseBits(max(17067i | u_input.c.x, _wgslsmith_add_i32(-42736i, 0i))), -44373i), global0.a.c.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2038f, _wgslsmith_div_f32(global0.a.c.x, _wgslsmith_f_op_f32(step(1111f, 501f))), -386f))), -34997i);
}

