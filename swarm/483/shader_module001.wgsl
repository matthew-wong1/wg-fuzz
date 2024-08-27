struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-27881i, i32(-2147483648));

var<private> global1: u32 = 1u;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.b.x;
    var var_1 = global0.x;
    global1 = 0u;
    global0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(~_wgslsmith_mod_i32(global0.x, 28838i), 50280i), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b) >> ((arg_1.b.xy >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(-global0.x, i32(-1i) * -1i)));
    var var_2 = arg_1;
    return vec3<bool>(true, !(!all(vec2<bool>(true, false))), var_0 == (var_0 << (_wgslsmith_mod_u32(abs(var_0), var_2.c) % 32u)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(367f, -171f)), _wgslsmith_f_op_f32(round(-707f)), _wgslsmith_f_op_f32(f32(-1f) * -1483f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-615f, 945f, -576f), vec3<f32>(-1605f, -1525f, -1179f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-294f)), _wgslsmith_div_f32(721f, -412f), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(718f, 845f, -677f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-871f, 647f, 1076f), vec3<f32>(1426f, 665f, 1968f))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), func_3(u_input.c.x, Struct_1(4294967295u, vec3<u32>(u_input.c.x, u_input.c.x, 46779u), u_input.a)), any(vec3<bool>(true, true, true)))))));
    let var_1 = Struct_1(~abs(firstTrailingBit(u_input.d) | _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, u_input.c.x, 7641u))), u_input.c, 34843u);
    global1 = ~min(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, var_1.b.x), u_input.a ^ _wgslsmith_sub_u32(u_input.d, u_input.d)), var_1.b.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1093f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -220f));
    global1 = 4294967295u >> (reverseBits(select(1u, u_input.d, all(vec4<bool>(true, true, true, true)))) % 32u);
    return ~u_input.d;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<f32>(271f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(2124f, 468f))))))), -245f, 325f);
    var var_1 = 50011i;
    var_1 = countOneBits(arg_1);
    global0 = vec2<i32>(2147483647i, global0.x);
    var var_2 = Struct_1(134356u & _wgslsmith_add_u32(_wgslsmith_sub_u32(15853u << (arg_2 % 32u), 18927u), 36545u), select(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 6745u, 71477u, u_input.c.x), vec4<u32>(1u, 1u, 4294967295u, arg_2)), 1u, func_2()), u_input.c, true), _wgslsmith_div_u32(firstTrailingBit(arg_2), ~u_input.c.x) | ~_wgslsmith_dot_vec4_u32(~vec4<u32>(14011u, u_input.c.x, 8803u, 434u), vec4<u32>(1u, 66654u, 19441u, 0u)));
    return Struct_1(arg_2, ~(~reverseBits(_wgslsmith_add_vec3_u32(u_input.c, var_2.b))), _wgslsmith_sub_u32(u_input.d, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_1(vec3<bool>((2084u <= u_input.d) && true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-47831i, -3476i, -45236i) ^ vec3<i32>(0i, 1i, u_input.b)) << (u_input.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.b, global0.x >> (55752u % 32u), 23338i), -abs(vec3<i32>(global0.x, global0.x, u_input.b)))), ~(3236u >> ((~49112u & (var_0.x & 6146u)) % 32u)));
    var var_2 = !select(func_3(~_wgslsmith_add_u32(0u, 1u), Struct_1(func_1(vec3<bool>(true, false, false), global0.x, u_input.d).a, firstLeadingBit(vec3<u32>(var_1.c, 34037u, u_input.c.x)), ~39413u)).xz, vec2<bool>(true, true), true);
    let var_3 = firstTrailingBit(~vec3<i32>(global0.x, _wgslsmith_add_i32(1i, global0.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(6310i, 2147483647i, u_input.b, -13732i), vec4<i32>(1i, 1i, u_input.b, 1i)), -2147483647i));
    var_1 = func_1(select(vec3<bool>(false, select(var_2.x, var_2.x, any(vec3<bool>(var_2.x, false, var_2.x))), true), func_3(abs(~1u), func_1(select(vec3<bool>(true, false, var_2.x), vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, false, var_2.x)), 1i, var_0.x)), func_3(36597u, Struct_1(min(4322u, 1u), max(vec3<u32>(var_1.b.x, 64332u, var_0.x), vec3<u32>(0u, 4294967295u, 32836u)), func_1(vec3<bool>(false, var_2.x, var_2.x), var_3.x, 26547u).b.x))), _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, global0.x, 1i)), var_3), min(_wgslsmith_dot_vec3_i32(select(var_3, vec3<i32>(u_input.b, u_input.b, global0.x), vec3<bool>(false, true, var_2.x)), firstLeadingBit(var_3)), _wgslsmith_mult_i32(firstLeadingBit(u_input.b), 31563i))), ~(~49814u));
    global0 = -vec2<i32>(_wgslsmith_clamp_i32(-3430i, u_input.b, 0i), ~global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(814f, -693f, -172f, 1108f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -484f, -359f, -799f)), all(vec3<bool>(true, var_2.x, var_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, 1000f, 1000f, 2444f))))), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(39178u, u_input.a), _wgslsmith_clamp_u32(~(~var_0.x), 4294967295u, var_0.x), var_0.x << (_wgslsmith_dot_vec2_u32(var_1.b.yz >> (var_1.b.xy % vec2<u32>(32u)), abs(vec2<u32>(u_input.a, 28489u))) % 32u)));
}

