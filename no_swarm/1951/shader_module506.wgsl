struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 0u, 82141u, 4294967295u), vec4<i32>(-20821i, 0i, -3637i, -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    let var_0 = Struct_1(global0.a, abs(vec4<i32>(21719i, -47976i & global0.b.x, -global0.b.x, global0.b.x) << (global0.a % vec4<u32>(32u))));
    global0 = var_0;
    global0 = var_0;
    var var_1 = arg_2;
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-814f)));
}

fn func_1() -> vec2<f32> {
    let var_0 = !(true & (~_wgslsmith_div_i32(u_input.a.x, u_input.a.x) <= -32704i));
    var var_1 = global0.a.yxz;
    var var_2 = vec4<f32>(1351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.b, vec2<bool>(!var_0, !var_0), _wgslsmith_sub_u32(15418u, u_input.b) >= ~10103u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1034f + -1396f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f + 1441f) - -280f))), -210f);
    let var_3 = vec2<bool>(var_0, true || (select(true, any(vec2<bool>(var_0, var_0)), true) & false));
    var var_4 = Struct_1(countOneBits(vec4<u32>(_wgslsmith_div_u32(4294967295u, ~var_1.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_mod_u32(8819u, 57065u)), _wgslsmith_sub_u32(global0.a.x, max(10900u, 0u)), 4294967295u)), global0.b);
    return var_2.zw;
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = 271f;
    let var_2 = !select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(!any(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, false, true, false)) && true), false);
    let var_3 = min(arg_2.b.wzy, _wgslsmith_mod_vec3_i32(~firstLeadingBit(global0.b.zxy), ~(-vec3<i32>(arg_3.b.x, 2147483647i, 2147483647i))) ^ vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.b.x, u_input.a.x, arg_2.b.x), vec4<i32>(u_input.a.x, u_input.a.x, global0.b.x, arg_3.b.x)), -12129i, _wgslsmith_div_i32(arg_2.b.x, arg_3.b.x)), _wgslsmith_dot_vec4_i32(-global0.b, arg_3.b), -34026i));
    var var_4 = arg_2;
    return Struct_1(vec4<u32>(18711u, countOneBits(_wgslsmith_clamp_u32(~19806u, arg_3.a.x, ~54529u)), abs(14299u), 4294967295u), -vec4<i32>(arg_2.b.x, 0i, ~abs(1i), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(firstLeadingBit(countOneBits(global0.b.x)), _wgslsmith_sub_i32(global0.b.x, global0.b.x), ~(-global0.b.x), ~(i32(-1i) * -1i) ^ u_input.a.x);
    var var_1 = u_input.c;
    let var_2 = func_3(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -632f))), Struct_1(vec4<u32>(abs(u_input.c), global0.a.x, _wgslsmith_dot_vec4_u32(global0.a << (global0.a % vec4<u32>(32u)), vec4<u32>(0u, 36241u, global0.a.x, global0.a.x)), 0u), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~global0.b, -global0.b), _wgslsmith_div_vec4_i32(vec4<i32>(global0.b.x, u_input.a.x, global0.b.x, var_0.x), vec4<i32>(var_0.x, 18732i, u_input.a.x, 48153i)))), Struct_1(global0.a, global0.b));
    var var_3 = Struct_1(var_2.a, ~vec4<i32>(var_0.x & _wgslsmith_mod_i32(15632i, 9476i), -30794i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.b.x), vec2<i32>(-7369i, var_2.b.x)) & ~global0.b.x, ~(-2147483647i)));
    let var_4 = ~_wgslsmith_div_vec3_u32(vec3<u32>(~(var_3.a.x << (global0.a.x % 32u)), 33485u, 1u << (u_input.b % 32u)), ~global0.a.zyy);
    let x = u_input.a;
    s_output = StorageBuffer(-func_3(vec2<f32>(-201f, -776f), _wgslsmith_f_op_vec2_f32(func_1()).x, func_3(vec2<f32>(928f, 130f), _wgslsmith_f_op_f32(1000f - -143f), Struct_1(var_3.a, vec4<i32>(5719i, var_0.x, -2147483647i, u_input.a.x)), var_2), Struct_1(vec4<u32>(95079u, 4294967295u, 28211u, 1u) ^ var_3.a, firstTrailingBit(vec4<i32>(1i, global0.b.x, var_0.x, 2147483647i)))).b.x, vec2<u32>(0u, max(1689u, ~(0u >> (global0.a.x % 32u)))), vec2<i32>(abs(countOneBits(~4382i)), -2147483647i), 1236f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1974f)), _wgslsmith_f_op_f32(ceil(-1384f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1177f - 1102f) * -1586f)))));
}

