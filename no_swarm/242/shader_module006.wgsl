struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + 1f) + 429f), _wgslsmith_sub_i32(i32(-1i) * -(u_input.a >> (77322u % 32u)), global0.b));
    var var_1 = u_input.e;
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.b, select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -2147483647i) ^ var_1.wx, vec2<i32>(var_1.x, 0i)), -(global0.b << (64995u % 32u)), !all(vec2<bool>(true, false))), 1i), vec4<i32>(11432i, _wgslsmith_mult_i32(36103i, ~_wgslsmith_clamp_i32(-26436i, 1i, 2147483647i)), (_wgslsmith_div_i32(var_1.x, global0.b) & 1i) << (firstLeadingBit(arg_0) % 32u), 1i));
    let var_2 = u_input.c;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))))), 21718i);
    return ~abs(abs(u_input.e.x));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = Struct_1(global0.a, ~(global0.b ^ _wgslsmith_dot_vec3_i32(u_input.e.xyy, vec3<i32>(global0.b, global0.b, global0.b))));
    global0 = arg_0;
    global0 = arg_0;
    global0 = Struct_1(-715f, arg_0.b);
    var var_0 = max(_wgslsmith_add_i32(func_3(~0u, arg_0.a), arg_0.b), func_3(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)))) ^ -12168i;
    return select(~(min(global0.b, _wgslsmith_div_i32(u_input.d, 0i)) << (u_input.c % 32u)), global0.b, !(false & (all(vec4<bool>(true, false, false, false)) & true)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(86935u, 1u, 0u, 42169u), vec4<u32>(64285u, u_input.c, 17432u, 36166u)), ~(vec4<u32>(72600u, u_input.c, 4294967295u, u_input.c) >> (vec4<u32>(44835u, 52588u, u_input.c, u_input.c) % vec4<u32>(32u))))) & 20671u;
    var var_1 = reverseBits(max(~(~reverseBits(vec4<u32>(12460u, 1509u, u_input.c, var_0))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(7574u, var_0), ~vec2<u32>(var_0, 1u)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(1u, 24834u))), ~(~u_input.c), _wgslsmith_div_u32(0u, u_input.c) | abs(11239u))));
    var var_2 = !(_wgslsmith_f_op_f32(-1000f * 900f) >= global0.a);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), -2179f)) + _wgslsmith_f_op_f32(346f - _wgslsmith_f_op_f32(794f + arg_1.a)))), 433f, arg_1.a);
    var var_4 = arg_1;
    return !select(!vec3<bool>(arg_0, !arg_0, false), select(select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(true, arg_0, false), vec3<bool>(false, false, true), false), !vec3<bool>(true, true, arg_0)), !vec3<bool>(true, false, arg_0), -global0.b > var_4.b), select((arg_0 && arg_0) & all(vec2<bool>(arg_0, false)), !arg_0, !(!arg_0)));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = func_4(!(func_2(Struct_1(global0.a, 1i)) < countOneBits(i32(-1i) * -103194i)), Struct_1(global0.a, global0.b));
    var var_1 = func_4(func_4(all(var_0.xy), Struct_1(_wgslsmith_f_op_f32(1915f * global0.a), -2972i)).x, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1160f, 1860f)), 632f))), 70275i));
    var_0 = vec3<bool>(~0u < abs(_wgslsmith_dot_vec3_u32(vec3<u32>(24141u, arg_0, 4294967295u), countOneBits(vec3<u32>(arg_0, arg_0, 4294967295u)))), false, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - global0.a), -1322f))) != 897f);
    var var_2 = u_input.e.xz;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 1901f))))), var_2.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1513f, var_3.a) - vec3<f32>(1349f, 1000f, global0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2357f, var_3.a, -440f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 104f, 440f) * vec3<f32>(global0.a, 1980f, var_3.a))))), true)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_2;
    let var_0 = arg_1.x;
    var var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_1.a)), 2147483647i);
    var_1 = Struct_1(arg_1.x, firstTrailingBit(-7951i));
    return Struct_1(arg_1.x, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = Struct_1(146f, -(-_wgslsmith_mult_i32(u_input.d, global0.b) << (150330u % 32u)));
    global0 = func_5(Struct_1(var_1.a, global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -1145f, 158f) - _wgslsmith_f_op_vec3_f32(func_1(var_0))) - vec3<f32>(_wgslsmith_f_op_f32(global0.a + 1061f), _wgslsmith_f_op_vec3_f32(func_1(var_0)).x, var_1.a))), Struct_1(_wgslsmith_f_op_f32(var_1.a - var_1.a), func_2(Struct_1(_wgslsmith_f_op_f32(-1083f - global0.a), _wgslsmith_div_i32(global0.b, global0.b)))));
    var var_2 = select(select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, func_4(true, Struct_1(1507f, 0i)).x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true)), !vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, false)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(global0.a + 2501f), select(1i, 11597i, (var_2.x && !var_2.x) && var_2.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, global0.a, -973f, _wgslsmith_f_op_f32(-var_3.a))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(f32(-1f) * -1293f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(457f, global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 572f, -560f, -542f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, -904f, 472f, -906f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, var_3.a, var_1.a, var_1.a)))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(abs(func_5(func_5(func_5(Struct_1(-248f, u_input.e.x), var_4.zyw, Struct_1(var_1.a, var_3.b)), vec3<f32>(-1000f, -599f, 150f), var_3), _wgslsmith_f_op_vec3_f32(ceil(var_4.zyy)), Struct_1(var_1.a, -3551i)).a)), -var_3.b);
    let var_5 = func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.e, u_input.e), u_input.b), u_input.d)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1738f)) + global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x))), _wgslsmith_f_op_f32(var_3.a - global0.a)), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.c & countOneBits(18253u)), select(-(~abs(-1i)), 1i, !var_2.x));
}

