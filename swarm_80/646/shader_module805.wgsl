struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_0;
    var var_1 = arg_3;
    var_0 = arg_0;
    var_1 = Struct_2(Struct_1(var_1.a.a), !(!select(var_1.b, var_1.b, true)), reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, u_input.b, var_1.c, arg_0.x), vec4<u32>(var_0.x, var_0.x, u_input.a.x, arg_3.c)), arg_3.c, select(arg_0.x, 50161u, true)))), !(max(arg_3.c, arg_0.x) > arg_3.c), !(!all(select(vec4<bool>(false, true, false, arg_2.x), vec4<bool>(arg_3.d, arg_3.b.x, false, arg_3.b.x), arg_3.e))));
    var_1 = arg_3;
    return arg_1;
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_sub_i32(arg_0.x, ~arg_0.x), abs(arg_0.x ^ func_3(u_input.a.zx, reverseBits(34457i), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<f32>(-343f, 1119f, 516f, 1338f)), vec2<bool>(true, true), 4294967295u, false, false))));
    let var_1 = ~vec4<u32>(u_input.b, ~(~firstLeadingBit(71201u)), ~u_input.b, u_input.b);
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-400f)) - -439f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2044f, -1353f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), 1000f)), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), all(vec3<bool>(true, var_1.x >= 82205u, true))), ~var_1.x, !any(vec2<bool>(true, true)), true);
    let var_3 = var_2.a;
    var var_4 = var_2.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_4.a, var_3.a, vec4<bool>(var_2.d, var_2.b.x, var_2.e, true))), _wgslsmith_f_op_vec4_f32(var_2.a.a - var_4.a))))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = ~_wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(17815i, 14070i), vec2<i32>(-4661i, -1i), vec2<i32>(-2147483647i, -2147483647i))) | ~vec2<i32>(2147483647i, -1i), select(~abs(vec2<i32>(-46555i, 3149i)), vec2<i32>(abs(-1i), _wgslsmith_mult_i32(-32308i, -41543i)), vec2<bool>(any(vec3<bool>(true, true, true)), false)));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, -1129f, arg_0.x, 1138f)) + vec4<f32>(123f, arg_0.x, arg_0.x, -826f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 1332f, -440f, arg_0.x), _wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(0i, -44670i, var_0.x, var_0.x))), !vec4<bool>(var_1, var_1, false, var_1))))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), true)), !vec2<bool>(var_1, var_1), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), true), ~(~(u_input.b >> (~u_input.b % 32u))), true, !(false & any(vec3<bool>(false, true, true))));
    let var_3 = var_2.b;
    var_0 = vec2<i32>(_wgslsmith_div_i32(max(-func_3(u_input.a.yw, var_0.x, vec3<bool>(var_2.b.x, true, false), var_2), 0i << (0u % 32u)), var_0.x), min(abs(_wgslsmith_clamp_i32(-2147483647i, -var_0.x, _wgslsmith_div_i32(var_0.x, 0i))), var_0.x));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(select(-2099f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-685f)))), !all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-595f - -1000f) * _wgslsmith_f_op_f32(max(-356f, _wgslsmith_f_op_f32(step(1000f, 258f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(-568f, -1088f, -449f))), _wgslsmith_f_op_f32(f32(-1f) * -403f)), 291f)));
    var_0 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1966f))), var_0.a.x, var_0.a.x));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.b, 39175u), 19603u, _wgslsmith_mult_u32(4294967295u, u_input.b), _wgslsmith_div_u32(1267u, 4294967295u)) ^ ~select(u_input.a, u_input.a, vec4<bool>(false, true, true, true)), ~abs(u_input.a)) ^ ~select(vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(55347u, u_input.a.x, 4294967295u), 15042u, u_input.b), ~reverseBits(vec4<u32>(u_input.b, u_input.a.x, 1u, 0u)), true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(970f + var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -209f), -332f))), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) <= _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))), ~_wgslsmith_clamp_u32(24189u, ~_wgslsmith_mod_u32(u_input.a.x, var_1.x), ~(var_1.x >> (4294967295u % 32u))), true, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_2.a.a.yyy, var_0.a.wyz), _wgslsmith_f_op_vec3_f32(-var_0.a.wyw), true)), _wgslsmith_f_op_vec3_f32(-var_0.a.zxx)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(330f, 1687f, -177f) * var_0.a.wyy))), var_0.a.yzy, !(var_2.e || false))))));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b ^ 0u);
}

