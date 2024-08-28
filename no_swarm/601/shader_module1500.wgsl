struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1019f, 1000f), vec4<u32>(1u, 0u, 81433u, 226u), 1i, -770f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    let var_0 = ((_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.a.x)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f))) || (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(384f, 1251f)) != arg_2.x)) || false;
    global0 = Struct_1(global0.a, firstLeadingBit(vec4<u32>(arg_0.b.x, global0.b.x, max(global0.b.x | arg_0.b.x, global0.b.x << (4294967295u % 32u)), ~u_input.b)), _wgslsmith_add_i32(-12725i, -5740i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.d)))));
    let var_1 = vec2<bool>(var_0, global0.b.x == abs(firstLeadingBit(3251u) << (firstTrailingBit(0u) % 32u)));
    var var_2 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1, u_input.a, arg_1, -26231i) | ((vec4<i32>(global0.c, global0.c, global0.c, u_input.a) >> (arg_0.b % vec4<u32>(32u))) >> (~arg_0.b % vec4<u32>(32u))), vec4<i32>(arg_0.c, ~(~arg_0.c), u_input.a | global0.c, select(15439i, -arg_1, var_0)));
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_2.xx + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -784f) + arg_0.a));
    return arg_2.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a, arg_1.b, 2147483647i, global0.d), global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1941f, 1084f, -1064f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.d * 339f))) + arg_1.d)), vec4<u32>(reverseBits(~abs(arg_1.b.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 26033u), global0.b.yw) | firstTrailingBit(global0.b.x), ~4294967295u, ~_wgslsmith_dot_vec4_u32(abs(arg_1.b), ~global0.b)), max(u_input.a, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, arg_1.c, -2147483647i, -2147483647i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, arg_1.c, 0i, -1i), vec4<i32>(60160i, 2147483647i, -2147483647i, -2147483647i), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), vec4<i32>(2612i, -7394i, -1i, global0.c) & vec4<i32>(global0.c, arg_1.c, 0i, 886i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-943f, -524f)) * _wgslsmith_f_op_f32(select(-630f, 1000f, arg_0.x))) - -1307f)));
    global0 = Struct_1(arg_1.a, arg_1.b, ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1103f, _wgslsmith_f_op_f32(217f * arg_1.d))))));
    global0 = arg_1;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.a, vec2<f32>(855f, global0.a.x)))), _wgslsmith_f_op_vec2_f32(trunc(arg_1.a)), arg_0))), firstTrailingBit(~reverseBits(vec4<u32>(79327u, 1u, 0u, 42831u))), arg_1.c, _wgslsmith_div_f32(1000f, -1878f));
    global0 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(select(arg_0.yz, arg_0.yw, arg_0.x), Struct_1(vec2<f32>(-1964f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(185f)), global0.d)), select(firstLeadingBit(global0.b), vec4<u32>(62675u, 13106u, u_input.c, global0.b.x), arg_0) & ~vec4<u32>(global0.b.x, 24569u, u_input.b, u_input.c), i32(-1i) * -27000i, _wgslsmith_f_op_f32(global0.d + global0.d)));
    let var_1 = ~_wgslsmith_div_u32(~(~4294967295u), 4372u) >> (((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.b.x), max(vec2<u32>(0u, 4294967295u), var_0.b.wy)) >> (global0.b.x % 32u)) & 1u) % 32u);
    var_0 = func_2(!arg_0.yy, func_2(!(!select(arg_0.zw, arg_0.wx, vec2<bool>(arg_0.x, true))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.d + global0.a.x), 239f), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, u_input.b, var_1, u_input.b), _wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(1u, 4294967295u, 4294967295u, 16359u), var_0.b)), -17456i, 745f)));
    var_0 = Struct_1(global0.a, var_0.b, _wgslsmith_div_i32(global0.c, _wgslsmith_sub_i32(countOneBits(u_input.a), -2930i)), _wgslsmith_f_op_f32(-585f * var_0.d));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(130125u, u_input.c), ~(~(global0.b.x | u_input.c)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global0.a)), vec4<u32>(var_0.b.x, global0.b.x, ~var_1, 4294967295u), global0.c, -365f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.a) > u_input.a;
    let var_1 = !(true && var_0) || var_0;
    let var_2 = firstLeadingBit(-reverseBits(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-29367i, -1i, u_input.a), vec3<i32>(3500i, u_input.a, u_input.a), vec3<i32>(69910i, 23288i, global0.c)))));
    global0 = func_1(vec4<bool>(false, select(true, var_0, 23963i >= _wgslsmith_mult_i32(u_input.a, global0.c)), !any(!vec3<bool>(var_1, false, var_0)), false));
    let var_3 = ~_wgslsmith_dot_vec3_i32(-(vec3<i32>(global0.c, 33939i, var_2.x) & vec3<i32>(var_2.x, 14021i, global0.c)) << (~countOneBits(global0.b.ywx) % vec3<u32>(32u)), vec3<i32>(global0.c, -1i, -global0.c) & _wgslsmith_clamp_vec3_i32(var_2, var_2, _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c, 9655i, global0.c), vec3<i32>(0i, var_2.x, 8353i), var_2)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(299f, global0.d))))), global0.b, -15264i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(657f, _wgslsmith_f_op_f32(-915f + -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1708f) * global0.d)) - -1423f));
    let var_4 = func_1(vec4<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(var_1, var_0, true), vec3<bool>(true, true, var_0))) && var_0, any(select(select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, var_0, true, var_0), var_0), select(vec4<bool>(false, var_0, var_1, false), vec4<bool>(var_1, false, false, false), true), !vec4<bool>(true, var_1, true, var_0))), false));
    global0 = func_1(select(vec4<bool>(any(vec2<bool>(true, true)), select(false, false, all(vec2<bool>(var_0, true))), false, 0u >= countOneBits(u_input.c)), select(select(!vec4<bool>(true, false, var_1, false), !vec4<bool>(false, var_0, var_1, var_0), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1, var_1, var_1, var_0), vec4<bool>(false, false, var_0, false), true), !var_1), true), !select(select(vec4<bool>(var_0, var_1, var_1, true), vec4<bool>(var_0, var_1, false, false), var_0), vec4<bool>(var_1, var_0, false, false), var_1)));
    var var_5 = vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c, 2147483647i, global0.c, 0i), vec4<i32>(u_input.a, -2147483647i, -8720i, u_input.a)) ^ reverseBits(_wgslsmith_mod_i32(0i, abs(12910i))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~1i, global0.c), global0.c), _wgslsmith_mod_i32(-(~1i) | func_1(!vec4<bool>(false, true, true, var_1)).c, var_2.x), abs(-u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.b.yx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(!vec4<bool>(false, false, var_0, var_1)).d, -1293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.a.x, global0.a.x, var_1)) + global0.d))));
}

