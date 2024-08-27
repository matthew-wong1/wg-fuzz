struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), -64750i, -26111i);

var<private> global1: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = !any(!select(vec3<bool>(arg_0.b, false, arg_0.a), vec3<bool>(true, true, true), !vec3<bool>(arg_0.a, arg_0.b, false)));
    global1 = -arg_0.d.x;
    return ~reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u));
}

fn func_1() -> vec4<u32> {
    global0 = ~vec4<i32>(1i << ((_wgslsmith_mod_u32(u_input.a, u_input.a) ^ _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a)) % 32u), select(_wgslsmith_clamp_i32(global0.x, ~40815i, 29475i), global0.x, true), firstTrailingBit(2147483647i), global0.x);
    return ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u & u_input.a, ~u_input.a, reverseBits(u_input.a), u_input.a << (u_input.a % 32u)), ~(~func_2(Struct_1(false, true, 8736i, vec4<i32>(global0.x, global0.x, global0.x, global0.x)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-800f, 535f, 1547f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, 1000f, 275f))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(754f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(373f, -1695f), _wgslsmith_div_f32(-658f, 303f), true)), 1f))));
    let var_1 = 330f;
    let var_2 = arg_0.x;
    global0 = firstTrailingBit(vec4<i32>(~_wgslsmith_clamp_i32(0i, 79462i, global0.x) << (~1u % 32u), global0.x ^ _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(global0.yy, arg_3.d.zx)), reverseBits(-7868i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d.x, _wgslsmith_sub_i32(arg_2.x, global0.x), 1i, -1i), ~arg_3.d)));
    global0 = countOneBits(vec4<i32>(_wgslsmith_clamp_i32(abs(1i), _wgslsmith_clamp_i32(-33841i, -global0.x, i32(-1i) * -21637i), -30514i), global0.x, firstTrailingBit(_wgslsmith_add_i32(~arg_1.c, _wgslsmith_div_i32(0i, 1i))), _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(arg_3.c, 0i, -43982i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 32670i, global0.x, arg_2.x), arg_3.d), -arg_1.d.x))));
    return _wgslsmith_dot_vec3_i32(-global0.yyz, ~arg_3.d.xxw >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_2, var_2, func_2(Struct_1(true, true, arg_2.x, vec4<i32>(arg_1.c, -2147483647i, arg_3.c, global0.x))).x), arg_0.wzw ^ _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 5118u), arg_0.xxz)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, false, func_3(func_1(), Struct_1(false, !(global0.x > -32068i), global0.x, -vec4<i32>(global0.x, global0.x, 0i, global0.x)), abs(_wgslsmith_add_vec3_i32(global0.wzz, vec3<i32>(14862i, 0i, -2147483647i))), Struct_1(true, false, global0.x | (global0.x ^ global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -1i), vec4<i32>(2147483647i, global0.x, 0i, global0.x)) ^ vec4<i32>(global0.x, global0.x, global0.x, global0.x))), abs(-(~abs(vec4<i32>(-2147483647i, global0.x, 1i, -1i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1403f, -2332f)) + _wgslsmith_f_op_f32(-392f + 377f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = select(!vec4<bool>(all(vec2<bool>(true, true)), var_0.a, any(vec4<bool>(var_0.b, true, false, true)), true), select(select(!vec4<bool>(false, var_0.b, var_0.b, var_0.a), select(!vec4<bool>(true, var_0.b, false, var_0.b), select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(false, false, var_0.a, false), false), select(vec4<bool>(var_0.a, var_0.b, true, var_0.b), vec4<bool>(false, var_0.b, false, true), var_0.b)), select(vec4<bool>(var_0.b, true, var_0.a, var_0.b), !vec4<bool>(true, true, var_0.b, true), false)), !vec4<bool>(all(vec2<bool>(var_0.b, false)), all(vec3<bool>(false, var_0.a, false)), var_0.b, var_1.x != var_1.x), vec4<bool>(!var_0.b, !all(vec4<bool>(false, var_0.b, true, true)), (var_0.a & false) | var_0.a, var_0.b)), !select(vec4<bool>(var_0.b && var_0.a, !var_0.a, all(vec2<bool>(var_0.a, false)), all(vec3<bool>(var_0.b, var_0.b, var_0.a))), select(vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(var_0.b, false, var_0.a, true), true), select(select(vec4<bool>(var_0.b, var_0.a, true, var_0.a), vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(true, false, true, true)), !vec4<bool>(var_0.b, true, true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false))));
    var var_3 = _wgslsmith_div_f32(-202f, -1140f);
    var var_4 = max(var_0.c, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(var_0.c, -29983i)) ^ global0.x) >= 0i;
    let var_5 = !(!select(vec3<bool>(true, true, true), select(select(var_2.xxy, var_2.wzx, var_0.a), select(var_2.wyz, var_2.zyx, var_2.x), var_0.a), true));
    let var_6 = -_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(var_0.c, global0.x, -1i), -vec3<i32>(global0.x, -1i, var_0.c)), -vec3<i32>(22050i, 8969i, var_0.d.x)) ^ abs(abs(_wgslsmith_clamp_vec3_i32(var_0.d.zzz, global0.wxw | global0.yzx, -vec3<i32>(-10159i, global0.x, 1i))));
    let var_7 = max(global0.x, _wgslsmith_div_i32(10652i, -_wgslsmith_mult_i32(1i, var_6.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(164f - 437f))), vec3<i32>(~_wgslsmith_sub_i32(1i, 2147483647i), 16533i, 4734i), vec3<i32>(28584i, var_0.c, -33026i));
}

