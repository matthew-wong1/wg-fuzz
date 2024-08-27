struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    return select(arg_0, true, true) && !arg_0;
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = abs(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))));
    global0 = array<Struct_1, 20>();
    var var_1 = reverseBits(max(18591i, 850i) << (var_0.x % 32u));
    var_1 = 1i;
    var var_2 = var_0.x < ~0u;
    return select(vec3<bool>(all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, all(vec2<bool>(false, false)))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true))), true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), select(vec3<bool>(false, false, any(vec2<bool>(true, true))), vec3<bool>(false, true, var_0.x != 52011u), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), true)), vec3<bool>(func_2(all(vec3<bool>(false, true, false)), Struct_1(1i, vec3<i32>(72936i, arg_0.x, -2147483647i), arg_0), global0[_wgslsmith_index_u32(~0u, 20u)]), !any(vec3<bool>(true, true, false)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))))), true);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: u32) -> vec4<bool> {
    global0 = array<Struct_1, 20>();
    let var_0 = abs(max(_wgslsmith_div_vec2_u32(arg_1, _wgslsmith_mult_vec2_u32(vec2<u32>(29491u, 46334u), arg_1)), vec2<u32>(4294967295u, arg_1.x) << (vec2<u32>(arg_2, 0u) % vec2<u32>(32u)))) | vec2<u32>(min(abs(arg_1.x >> (arg_1.x % 32u)), 82928u), _wgslsmith_mult_u32(arg_1.x, ~arg_2 | 4294967295u));
    var var_1 = all(select(select(vec4<bool>(arg_0.x, any(vec2<bool>(true, arg_0.x)), arg_0.x, true), vec4<bool>(func_2(true, Struct_1(u_input.a, vec3<i32>(u_input.a, 0i, 1i), vec2<i32>(u_input.a, -7226i)), global0[_wgslsmith_index_u32(arg_2, 20u)]), arg_0.x || false, !arg_0.x, arg_0.x), arg_0.x), !select(select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(false, arg_0.x, true, false), arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), !arg_0.x), true));
    var_1 = arg_0.x;
    var var_2 = reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c) & -vec3<i32>(-2147483647i, 21223i, u_input.a), -(vec3<i32>(2147483647i, u_input.b, u_input.c) | vec3<i32>(u_input.b, -10915i, -24322i))), vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, 0i, u_input.b))));
    return !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_div_f32(176f, -441f), _wgslsmith_f_op_f32(step(-606f, -301f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1778f)) * _wgslsmith_f_op_f32(min(-1814f, 278f))), arg_0.x, true, any(func_3(_wgslsmith_mult_vec2_i32(var_2.yx, vec2<i32>(2147483647i, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), func_1(vec2<bool>(false, false), ~vec2<u32>(19098u, 21055u), 28612u)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), !select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1292f, -1122f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f), -811f))), _wgslsmith_f_op_f32(-1f));
    let var_2 = var_0.wwx;
    var_0 = vec4<bool>(func_2(true, global0[_wgslsmith_index_u32(max(~24723u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 14560u), vec3<u32>(116018u, 0u, 36889u)), ~reverseBits(1u)), 20u)], Struct_1(u_input.c, select(firstLeadingBit(vec3<i32>(2147483647i, u_input.c, u_input.b)), -vec3<i32>(u_input.a, -1i, -1i), func_1(vec2<bool>(true, var_0.x), vec2<u32>(9562u, 1u), 2674u).wwz), vec2<i32>(~(-2147483647i), -2147483647i))), true, true && var_0.x, any(!select(vec4<bool>(true, var_0.x, true, var_2.x), !vec4<bool>(var_2.x, var_2.x, false, var_0.x), !vec4<bool>(var_0.x, var_2.x, false, true))));
    var_0 = select(vec4<bool>(var_0.x, true, !var_2.x, !(!(var_1.x != var_1.x))), !(!(!select(vec4<bool>(var_0.x, true, var_2.x, true), vec4<bool>(true, false, false, true), false))), vec4<bool>(true | any(!vec4<bool>(false, true, var_2.x, var_0.x)), true, true, all(func_3(vec2<i32>(u_input.a, u_input.c))) || all(!vec4<bool>(true, var_0.x, false, true))));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-898f, 1000f))) - vec2<f32>(_wgslsmith_f_op_f32(floor(852f)), 629f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(~max(vec4<i32>(60550i, u_input.b, 0i, u_input.b), vec4<i32>(-69630i, u_input.a, -1i, u_input.c)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, u_input.a, 2147483647i), vec4<i32>(u_input.b, u_input.a, u_input.c, u_input.c), vec4<i32>(u_input.a, u_input.b, u_input.c, u_input.a)), select(vec4<i32>(u_input.a, 0i, 0i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, u_input.b), var_2.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(max(abs(vec3<i32>(u_input.b, 55365i, -2147483647i)), countOneBits(vec3<i32>(16197i, 1366i, u_input.b))), ~vec3<i32>(-2147483647i, u_input.a, 46603i), ~vec3<i32>(-58019i, u_input.b, -27137i)), vec3<i32>(_wgslsmith_div_i32(countOneBits(u_input.a), -u_input.b), 0i, countOneBits(u_input.c) & u_input.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(abs(105116u)), ~0u), vec2<u32>(0u, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 31897u), vec3<u32>(0u, 40279u, 18954u))))));
}

