struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_div_f32(global0.a.x, global0.a.x) != global0.a.x, global0.c, select(select(select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, false)), !vec4<bool>(arg_0, arg_0, false, false), select(arg_0, true, arg_0)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, arg_0, true), arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, false, false, arg_0)), any(!vec2<bool>(arg_0, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1124f, -2321f, global0.a.x), global0.a.zwy)))), 1i, Struct_4(4294967295u, arg_0, ~abs(-1i), _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) * _wgslsmith_f_op_f32(min(103f, global0.a.x))))), countOneBits(_wgslsmith_dot_vec2_u32(global0.d, global0.d)) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global0.d.x, global0.d.x), vec3<u32>(12927u, 0u, 4294967295u)), abs(1u), global0.b | global0.b) % 32u)), u_input.b);
    let var_1 = Struct_4(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(global0.d.x, _wgslsmith_add_u32(global0.b, 66119u), ~global0.d.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(69221u, var_0.c.e, var_0.c.a, var_0.c.e)), ~(~vec4<u32>(global0.b, 0u, global0.d.x, 50597u)))), all(!vec4<bool>(!var_0.c.b, false | var_0.c.b, var_0.a.a, any(var_0.a.c.wz))), u_input.a, -510f, ~var_0.c.a);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2317f), _wgslsmith_f_op_f32(global0.a.x - var_0.c.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * global0.a))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2208f, 1099f, global0.a.x, 875f) + vec4<f32>(global0.a.x, var_1.d, -1000f, -314f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))), ~countOneBits(_wgslsmith_add_u32(var_0.c.e & var_1.a, _wgslsmith_mult_u32(global0.d.x, 23749u))), select(-_wgslsmith_dot_vec3_i32(vec3<i32>(-58290i, 0i, global0.c), vec3<i32>(4228i, global0.c, 1i)), global0.c, all(vec3<bool>(var_1.b, var_0.c.b, var_1.b))) | ~u_input.c.x, vec2<u32>(firstLeadingBit(var_1.a) | (max(var_0.c.e, 0u) >> (_wgslsmith_dot_vec2_u32(global0.d, global0.d) % 32u)), abs(abs(~9245u))));
    let var_2 = countOneBits(u_input.c);
    var var_3 = var_0;
    return 870f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = arg_1;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -965f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(func_3(true)))), global0.a.x);
    var var_2 = -vec4<i32>(_wgslsmith_div_i32(90575i & arg_0.c, _wgslsmith_mult_i32(global0.c, 2147483647i)) << (arg_0.b % 32u), -min(_wgslsmith_div_i32(32739i, 1i), -arg_0.c), _wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(-15074i), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 1i, global0.c), vec4<i32>(u_input.c.x, u_input.a, u_input.b, 2147483647i)) << (global0.d.x % 32u)), global0.c);
    let var_3 = any(!vec4<bool>(!(!arg_1), true, !(!arg_1), !all(vec3<bool>(arg_1, arg_1, false))));
    let var_4 = Struct_2(false, firstTrailingBit((i32(-1i) * -arg_0.c) | ((i32(-1i) * -53543i) & _wgslsmith_mod_i32(1i, u_input.a))), select(vec4<bool>(any(vec4<bool>(true, true, var_3, arg_1)), false, !arg_1 | var_3, true), !vec4<bool>(var_3 | false, select(arg_1, var_3, false), any(vec3<bool>(var_3, true, false)), false), !vec4<bool>(!arg_1, true, true, any(vec3<bool>(var_3, arg_1, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -1242f, arg_0.a.x) - arg_0.a.xyw) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 2811f, 585f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(-488f, arg_0.a.x, 1081f))))), vec3<f32>(arg_0.a.x, 1192f, _wgslsmith_f_op_f32(ceil(var_1.x)))));
    return (-countOneBits(-28626i << (0u % 32u)) << (_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, 23482u, 2078u), vec3<u32>(arg_0.b, 0u, 1u), vec3<u32>(arg_0.d.x, global0.b, global0.d.x)), vec3<u32>(arg_0.b & arg_0.d.x, abs(15917u), _wgslsmith_div_u32(70223u, global0.b))) % 32u)) << (global0.d.x % 32u);
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = select(~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.b, global0.d.x, global0.d.x, 1u), vec4<u32>(4294967295u, global0.b, global0.d.x, global0.b)), vec4<u32>(~0u, global0.b << (global0.b % 32u), global0.d.x, _wgslsmith_div_u32(global0.b, global0.d.x))), vec4<u32>(3564u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 46843u, global0.b), vec3<u32>(4294967295u, global0.b, 93993u)), ~142023u, _wgslsmith_add_u32(global0.d.x, 1u)), vec4<bool>(true, false, !select(true, false, false), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)))));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-691f))) + -944f), arg_0.b.x, -373f, -219f), _wgslsmith_clamp_u32(global0.b, global0.d.x, _wgslsmith_dot_vec2_u32(min(global0.d, var_0.yw), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 0u), global0.d))), countOneBits(u_input.a), reverseBits(var_0.wz));
    return _wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(19342i, arg_0.a, min(u_input.c.x, -1i), firstTrailingBit(global0.c))), _wgslsmith_clamp_vec4_i32(max(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-26565i, -8416i, -17300i, -20163i)), max(vec4<i32>(u_input.a, -37217i, -2147483647i, global0.c), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, arg_0.a))), -vec4<i32>(-1i, -9038i, global0.c, arg_0.a)), (-vec4<i32>(2147483647i, -33016i, -28682i, -2147483647i) >> (vec4<u32>(39175u, var_0.x, var_0.x, 517u) % vec4<u32>(32u))) >> (abs(vec4<u32>(1u, global0.d.x, 0u, var_0.x)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 1i, u_input.c.x), vec4<i32>(3247i, arg_0.a, -11351i, global0.c)), -vec4<i32>(arg_0.a, 40708i, arg_0.a, global0.c))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_4(4294967295u, arg_2.a, _wgslsmith_dot_vec4_i32(func_4(Struct_3(func_2(Struct_1(global0.a, 55082u, -1i, vec2<u32>(4294967295u, 9910u)), arg_2.a), _wgslsmith_f_op_vec3_f32(-arg_2.d))), select(vec4<i32>(-15949i, _wgslsmith_add_i32(u_input.b, 43217i), 1i, u_input.b << (global0.b % 32u)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, arg_2.b, global0.c, 36707i), vec4<i32>(-17488i, global0.c, 0i, u_input.c.x), arg_2.c), vec4<i32>(-1i, 14130i, -51660i, 2147483647i)), select(!arg_2.c, vec4<bool>(true, true, true, true), false || arg_2.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1133f))))), global0.d.x);
    let var_1 = abs(_wgslsmith_add_vec2_i32(u_input.c, -u_input.c));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(global0.a, global0.a), ~(_wgslsmith_add_u32(global0.d.x, var_0.e) | 28709u) | _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.d ^ vec2<u32>(var_0.a, 4294967295u), vec2<u32>(global0.b, global0.b)), 4294967295u), -(~(-var_0.c ^ -1i)), firstLeadingBit(firstTrailingBit(global0.d)));
    var var_2 = Struct_3(global0.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1303f, var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -441f)))));
    var var_3 = vec4<bool>(var_0.b, var_0.b & arg_2.c.x, true, false);
    return arg_2.c.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), global0.b, 48047i, ~countOneBits(countOneBits(vec2<u32>(global0.b, global0.d.x) << (vec2<u32>(56697u, global0.d.x) % vec2<u32>(32u)))));
    var var_0 = select(vec2<bool>(~_wgslsmith_sub_u32(global0.d.x, global0.d.x) >= _wgslsmith_mod_u32(42583u, ~0u), _wgslsmith_mult_i32(-global0.c, global0.c) < -u_input.c.x), vec2<bool>(_wgslsmith_sub_i32(-global0.c, i32(-1i) * -1i) < 1i, true), false);
    var_0 = select(vec2<bool>(false, any(func_1(~global0.d.x, _wgslsmith_f_op_vec2_f32(-global0.a.zy), Struct_2(true, -2147483647i, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global0.a.yyx)))), select(!(!vec2<bool>(var_0.x, var_0.x)), !select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, false)), var_0.x), !(!vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), var_0.x)));
    var var_1 = false;
    let var_2 = Struct_3(~(6678i | u_input.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) + _wgslsmith_f_op_f32(func_3(var_0.x))), -366f, -1000f));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(-var_2.b.x), 615f, var_2.b.x)))), global0.b, -2147483647i, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.d.x, 4294967295u, global0.b, global0.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.d.x, global0.b, 0u, 1u), vec4<u32>(global0.d.x, 102190u, global0.d.x, global0.b))), 4294967295u), ~0u));
    var_0 = func_1(_wgslsmith_add_u32(1u, countOneBits(~(~4294967295u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-238f, -565f)), var_3.a.zy)), Struct_2(true, var_2.a, vec4<bool>(firstLeadingBit(var_3.d.x) != countOneBits(51880u), any(vec3<bool>(var_0.x, true, var_0.x)), !(u_input.c.x > -35819i), !var_0.x), _wgslsmith_f_op_vec3_f32(global0.a.wwz - vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.x, 994f, var_0.x)), _wgslsmith_f_op_f32(round(-1018f)), 398f)))).xz;
    let var_4 = var_0.x;
    var var_5 = Struct_4(abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(27799u, 46267u, 4294967295u) >> (vec3<u32>(11878u, 94507u, global0.b) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0.d.x, 4294967295u), vec3<u32>(var_3.b, var_3.d.x, global0.b))))), true, (i32(-1i) * -1i) >> (_wgslsmith_sub_u32(1u, var_3.b) % 32u), var_3.a.x, _wgslsmith_mod_u32(var_3.d.x, global0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.d, _wgslsmith_f_op_f32(max(var_2.b.x, 1132f)), _wgslsmith_f_op_f32(sign(var_2.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1150f, 404f)))) - global0.a.xyy), 16739u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.x + 1864f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f * var_2.b.x))), var_2.b.x, var_3.a.x));
}

