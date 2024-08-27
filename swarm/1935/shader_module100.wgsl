struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = 923f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(209f, -360f), 414f))));
    var_0 = _wgslsmith_f_op_f32(step(-1098f, -263f));
    global0 = vec3<bool>(_wgslsmith_add_u32(0u, ~_wgslsmith_mod_u32(4294967295u, arg_0.b.x)) > ~(~arg_1.x), all(select(vec3<bool>(all(vec3<bool>(true, global0.x, arg_2.x)), all(vec2<bool>(true, true)), any(vec2<bool>(false, global0.x))), select(vec3<bool>(arg_2.x, global0.x, arg_2.x), arg_2.zzx, true), false)), arg_2.x);
    return max(select(vec3<i32>(-_wgslsmith_div_i32(2093i, u_input.a), 1i, _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(-1i, arg_0.a.x))), ~vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.a), arg_0.d.wzw), 0i), arg_2.xzw), vec3<i32>(i32(-1i) * -2147483647i, u_input.a, -2147483647i));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec3_i32(~abs(vec3<i32>(73198i, -1i, u_input.a) | vec3<i32>(-40630i, u_input.a, u_input.a)), func_3(Struct_1(vec3<i32>(-1i, 0i, -26883i), vec4<u32>(2628u, 4294967295u, 1u, 3366u), countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 34183i)), vec4<i32>(2147483647i, u_input.a, u_input.a, -21834i)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(10351u, arg_0), vec2<u32>(39253u, arg_0)), vec2<u32>(0u, arg_0)), !(!vec4<bool>(arg_1, true, global0.x, true)))), vec4<u32>(arg_0, countOneBits(~arg_0), _wgslsmith_div_u32(1u, ~(~4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(arg_0, arg_0, 1u), vec3<bool>(arg_1, true, true)), select(vec3<u32>(3605u, arg_0, arg_0), vec3<u32>(4294967295u, arg_0, arg_0), vec3<bool>(arg_1, false, global0.x)), vec3<u32>(arg_0, arg_0, arg_0)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(9212u, arg_0, arg_0), vec3<u32>(4294967295u, 8649u, arg_0)), vec3<u32>(8876u, 29105u, 1u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, reverseBits(u_input.a), reverseBits(u_input.a), abs(u_input.a)), -_wgslsmith_add_vec4_i32(vec4<i32>(17255i, -2147483647i, u_input.a, u_input.a) >> (vec4<u32>(25603u, arg_0, 122697u, 23282u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.a) >> (vec4<u32>(0u, arg_0, arg_0, arg_0) % vec4<u32>(32u)))), ~(firstLeadingBit(vec4<i32>(u_input.a, 3996i, u_input.a, 2147483647i)) << (vec4<u32>(48007u, 86838u, 15119u, 79479u) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(1i, -40891i, 45414i), abs(2147483647i), abs(1i), _wgslsmith_add_i32(u_input.a, -52617i)), vec4<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(1i, -33365i), u_input.a, 6646i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_1(arg_0.c.yzy, _wgslsmith_div_vec4_u32(select(~(~vec4<u32>(32627u, 4294967295u, 4294967295u, 0u)), ~arg_0.b, select(vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, global0.x, false, false), false), true)), select(arg_0.b, arg_0.b, any(vec2<bool>(true, true)))), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a << (arg_0.b.x % 32u), arg_0.a.x >> (arg_1.x % 32u), u_input.a), max(vec3<i32>(u_input.a, -2147483647i, u_input.a) | arg_0.d.xyy, -arg_0.c.xyy)), ~(~_wgslsmith_mod_i32(-9442i, arg_0.a.x)), arg_0.c.x), min(vec4<i32>(-2147483647i, -abs(u_input.a), arg_0.c.x, 530i), -select(_wgslsmith_sub_vec4_i32(arg_0.d, vec4<i32>(u_input.a, u_input.a, 1i, arg_0.c.x)), arg_0.d, true)));
    let var_1 = var_0;
    global0 = select(!(!vec3<bool>(true, true, all(vec3<bool>(false, true, global0.x)))), vec3<bool>((firstTrailingBit(arg_0.c.x) == abs(arg_0.c.x)) && global0.x, true, any(vec2<bool>(true, true)) && !(3057i <= u_input.a)), vec3<bool>(all(select(vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x), all(vec4<bool>(false, false, true, global0.x)))), all(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), false)), !(!global0.x)));
    global0 = !(!vec3<bool>(true || all(global0.yx), false, select(all(vec3<bool>(false, global0.x, global0.x)), false, global0.x)));
    var var_2 = func_2(4294967295u, global0.x);
    return vec3<bool>(global0.x, (var_1.b.x != (var_0.b.x << (arg_0.b.x % 32u))) & global0.x, all(!vec3<bool>(select(true, true, global0.x), global0.x, false)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: i32) -> vec4<bool> {
    global0 = func_4(func_2(1u, false), func_2(~0u, false).b.yzw);
    global0 = select(vec3<bool>(any(vec2<bool>(true, global0.x & global0.x)), true, func_4(Struct_1(-vec3<i32>(arg_2, 0i, -2147483647i), vec4<u32>(4294967295u, 85270u, 68959u, 20336u), select(vec4<i32>(25431i, -1i, -2147483647i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, -75318i, u_input.a), vec4<bool>(true, true, global0.x, false)), min(vec4<i32>(0i, arg_0.x, u_input.a, -7481i), arg_0)), select(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(68073u, 1u, 35917u), !global0.x)).x), select(!select(!vec3<bool>(false, global0.x, false), select(vec3<bool>(true, true, false), vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, false, false), false)), vec3<bool>(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 33174i, arg_0.x), vec3<i32>(30533i, u_input.a, 8652i)) <= 2147483647i, true && (global0.x | global0.x)), vec3<bool>(global0.x, true, global0.x)), global0.x);
    global0 = vec3<bool>(all(select(vec4<bool>(all(vec3<bool>(false, global0.x, true)), true, global0.x || global0.x, true), select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, false), vec4<bool>(true, true, global0.x, global0.x)), !vec4<bool>(global0.x, global0.x, true, false), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, global0.x, false, true))), global0.x)), !global0.x, global0.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 231f) * vec2<f32>(-1936f, arg_1.x)))))) - arg_1.zw);
    var var_1 = arg_0.xww;
    return vec4<bool>(!all(!vec4<bool>(true, true, global0.x, global0.x)) & true, false, true, !(_wgslsmith_div_i32(-2147483647i, arg_0.x << (0u % 32u)) >= -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -13059i;
    let var_1 = 1i;
    global0 = !select(vec3<bool>(global0.x, !global0.x, any(vec4<bool>(false, true, true, false))), select(vec3<bool>(true, true, true), !(!vec3<bool>(global0.x, false, false)), _wgslsmith_f_op_f32(min(-365f, -489f)) != _wgslsmith_f_op_f32(ceil(-1053f))), !(!(!vec3<bool>(global0.x, global0.x, global0.x))));
    let var_2 = true;
    let var_3 = vec2<i32>(var_0, _wgslsmith_add_i32(_wgslsmith_mult_i32(-47658i, u_input.a), var_0));
    let var_4 = Struct_1(abs(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(2147483647i, -2147483647i, 0i)), vec3<i32>(-22935i, -48297i, var_3.x), -vec3<i32>(2438i, var_0, 32309i))) ^ _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(-22835i, u_input.a, var_1)), vec3<i32>(40338i, _wgslsmith_mod_i32(-2147483647i, -1i), -u_input.a)), ~(~vec4<u32>(~1u, 1u, 1u, _wgslsmith_clamp_u32(0u, 1u, 74394u))), _wgslsmith_add_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, -1i, -2147483647i, u_input.a), ~vec4<i32>(-17496i, 20556i, var_3.x, var_3.x)), select(countOneBits(vec4<i32>(-1i, var_1, var_3.x, var_1)), ~vec4<i32>(u_input.a, var_3.x, var_3.x, var_0), true), !func_1(vec4<i32>(u_input.a, u_input.a, var_3.x, -707i), vec4<f32>(-1000f, 1347f, -388f, 234f), -34042i)), min(-vec4<i32>(-2147483647i, 52855i, var_1, var_3.x), vec4<i32>(var_0, u_input.a, var_3.x, var_0)) & (~vec4<i32>(var_1, -60446i, 1i, -1i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -39543i, var_1, 38614i), vec4<i32>(1i, -1i, u_input.a, -23167i)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, var_1, -30491i, var_3.x), ~vec4<i32>(-55097i, -2147483647i, -2147483647i, var_0)) & vec4<i32>(abs(var_0), -var_0, var_3.x, -(~0i)));
    global0 = !func_4(var_4, var_4.b.yxw);
    let var_5 = select(global0.x, !any(select(select(vec2<bool>(var_2, global0.x), global0.xx, global0.xx), select(vec2<bool>(global0.x, var_2), global0.xz, vec2<bool>(global0.x, false)), global0.zx)), _wgslsmith_f_op_f32(min(1680f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -721f))))) < _wgslsmith_f_op_f32(f32(-1f) * -317f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(662f, -1063f, 1468f, -447f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-598f * -603f), _wgslsmith_f_op_f32(select(-375f, 902f, true)), -335f, 1000f)))));
}

