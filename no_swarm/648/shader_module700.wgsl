struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(select(~(~abs(0u)), ~countOneBits(~4294967295u), global1.x)), 3u)];
    var var_1 = Struct_1(-18527i, vec2<i32>(1i, _wgslsmith_div_i32(arg_3, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, arg_3, -66497i, var_0.a), vec4<i32>(u_input.a.x, u_input.a.x, 43896i, 2147483647i)), vec4<i32>(u_input.a.x, 31231i, -9191i, var_0.a)))), vec2<i32>(-var_0.b.x, arg_3), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(round(-1014f)))));
    global2 = 16633u;
    global2 = ~(_wgslsmith_add_u32(0u, min(16915u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37948u, 28660u), vec3<u32>(4294967295u, 30999u, 1u)))) << (1u % 32u));
    global0 = array<Struct_1, 3>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e.x, -874f, 1000f, var_0.e.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1190f, 667f, var_0.e.x, -380f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1525f, _wgslsmith_f_op_f32(f32(-1f) * -929f), 385f, -1081f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1615f, -689f, 127f, -1146f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_1.e.x, -105f, var_0.e.x))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<f32>) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_i32(~firstLeadingBit(arg_0.x & arg_1.x) | 5270i, arg_0.x);
    global1 = !select(select(vec2<bool>(global1.x, true), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), false), select(select(vec2<bool>(true, false), vec2<bool>(false, global1.x), global1.x), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)), true)), !vec2<bool>(any(vec3<bool>(true, global1.x, global1.x)), !global1.x), all(select(vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, false), true)));
    let var_1 = vec3<bool>(true, !(global1.x && global1.x), all(vec2<bool>(any(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, false), vec3<bool>(true, global1.x, false))), all(!vec2<bool>(global1.x, true)))));
    let var_2 = -2147483647i;
    global0 = array<Struct_1, 3>();
    return vec2<i32>(countOneBits(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(arg_1.x, -2147483647i))) | _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, -arg_1.x), i32(-1i) * -1i), _wgslsmith_sub_i32(arg_0.x & (i32(-1i) * -1i), 6951i));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = countOneBits(arg_0.b.x);
    global0 = array<Struct_1, 3>();
    var var_1 = _wgslsmith_f_op_f32(-arg_0.e.x);
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    return vec2<bool>(!global1.x, global1.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> bool {
    global1 = select(func_5(Struct_1(0i, func_4(arg_1.yy >> (vec2<u32>(54063u, 44170u) % vec2<u32>(32u)), _wgslsmith_add_vec4_i32(arg_1, vec4<i32>(9710i, arg_1.x, 41381i, 355i)), -968f, _wgslsmith_f_op_vec4_f32(func_3(arg_0.d, false, Struct_1(arg_1.x, vec2<i32>(1i, arg_1.x), arg_1.yz, false, vec3<f32>(arg_0.e.x, 947f, arg_0.e.x)), -1i))), vec2<i32>(~arg_0.c.x, arg_1.x), !global1.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1599f, arg_0.e.x, -844f)))), abs(vec4<u32>(_wgslsmith_add_u32(16848u, 143u), ~4294967295u, ~4294967295u, 1u))), select(select(vec2<bool>(global1.x, arg_2), !vec2<bool>(true, global1.x), global1.x), vec2<bool>(arg_2, false), vec2<bool>(true, false)), true || (arg_0.e.x >= arg_0.e.x));
    let var_0 = _wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x)) - arg_0.e.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-931f - _wgslsmith_f_op_f32(-1000f + 1069f)))));
    var var_1 = Struct_1(u_input.a.x, vec2<i32>(0i, arg_0.b.x), vec2<i32>(_wgslsmith_clamp_i32(func_4(arg_0.c, _wgslsmith_clamp_vec4_i32(arg_1, arg_1, vec4<i32>(-49195i, 20695i, -2147483647i, arg_0.c.x)), _wgslsmith_f_op_f32(arg_0.e.x + 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, -172f, arg_0.e.x, -1000f) - vec4<f32>(-968f, 212f, -890f, arg_0.e.x))).x, max(31984i, _wgslsmith_mult_i32(arg_1.x, arg_1.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_1.xx, u_input.a), -6098i)), arg_1.x), all(vec4<bool>(global1.x, true, false, arg_2 && true)) && true, _wgslsmith_f_op_vec3_f32(vec3<f32>(353f, arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(var_0, true, Struct_1(-40895i, arg_1.yy, arg_0.b, false, vec3<f32>(arg_0.e.x, 1610f, -693f)), arg_1.x)).x - _wgslsmith_f_op_f32(arg_0.e.x * 1000f))) - vec3<f32>(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.e.x)) + -906f), _wgslsmith_f_op_f32(-arg_0.e.x))));
    var var_2 = arg_0;
    let var_3 = var_2.e.x;
    return false;
}

fn func_1(arg_0: vec4<f32>) -> vec2<bool> {
    global2 = 0u;
    global1 = select(select(select(vec2<bool>(true, global1.x || global1.x), vec2<bool>(!global1.x, true), func_2(global0[_wgslsmith_index_u32(1u, 3u)], vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), global1.x, global1.x)), !select(func_5(global0[_wgslsmith_index_u32(32559u, 3u)], vec4<u32>(0u, 1u, 1u, 4294967295u)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false)), !vec2<bool>(false, global1.x)), !(!(true | global1.x))), vec2<bool>(func_5(Struct_1(-57742i, _wgslsmith_sub_vec2_i32(u_input.a, u_input.a), u_input.a, all(vec2<bool>(global1.x, true)), _wgslsmith_f_op_vec3_f32(floor(arg_0.zwx))), vec4<u32>(1u, 1u, 81431u, 1u)).x, !(arg_0.x < 504f)), select(func_5(Struct_1(49385i, vec2<i32>(-4637i, u_input.a.x), vec2<i32>(-2147483647i, 0i), true, _wgslsmith_f_op_vec3_f32(select(arg_0.zww, vec3<f32>(-1000f, -1679f, 2640f), false))), vec4<u32>(_wgslsmith_add_u32(42221u, 0u), ~80120u, ~4294967295u, _wgslsmith_clamp_u32(69001u, 0u, 4294967295u))), vec2<bool>(_wgslsmith_f_op_f32(select(2704f, -280f, true)) <= arg_0.x, select(false, true, global1.x | true)), true));
    var var_0 = 1u | abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(38241u, 1u))));
    var var_1 = arg_0.x;
    let var_2 = false;
    return !(!vec2<bool>(true, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global1 = !select(select(func_1(vec4<f32>(101f, -1786f, -562f, -734f)), vec2<bool>(any(vec4<bool>(true, true, global1.x, true)), all(vec4<bool>(global1.x, global1.x, true, false))), vec2<bool>(true, global1.x)), func_5(Struct_1(~1i, u_input.a | u_input.a, -vec2<i32>(u_input.a.x, 64399i), !global1.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(255f, -285f, 474f)))), vec4<u32>(29551u, max(1u, 6035u), max(0u, 86520u), max(45275u, 4294967295u))), false);
    var var_1 = !any(vec4<bool>(true, func_5(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, -33360i), global1.x, vec3<f32>(206f, -297f, -577f)), vec4<u32>(0u, 0u, 29135u, 27266u)).x & all(vec4<bool>(false, true, global1.x, false)), !select(global1.x, global1.x, true), !(global1.x || global1.x)));
    global2 = 0u;
    let var_2 = !vec2<bool>(any(vec4<bool>(u_input.a.x < u_input.a.x, all(vec4<bool>(global1.x, true, global1.x, false)), global1.x, any(vec4<bool>(true, false, global1.x, global1.x)))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(56142u, 1u), vec2<u32>(65177u, 1u), vec2<u32>(0u, 1u)), vec2<u32>(1u, 1u)), 3u)], vec4<i32>(-38304i, ~(-28740i), -u_input.a.x, -28663i), !func_1(vec4<f32>(-1951f, -1000f, 1303f, -1348f)).x, func_2(global0[_wgslsmith_index_u32(74074u, 3u)], vec4<i32>(-15595i, 2147483647i, u_input.a.x, u_input.a.x), false, false) && true));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-2281f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(1682f)), _wgslsmith_f_op_f32(-171f * 1021f), _wgslsmith_f_op_f32(max(131f, 1042f))))) - vec4<f32>(1151f, _wgslsmith_f_op_f32(trunc(-955f)), _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~u_input.a, vec2<i32>(u_input.a.x, -27468i)) >> (var_3 % 32u), u_input.a.x), -_wgslsmith_sub_vec3_i32(vec3<i32>(max(u_input.a.x, u_input.a.x), -20622i << (var_3 % 32u), 36801i), select(vec3<i32>(u_input.a.x, u_input.a.x, -65002i), vec3<i32>(-25760i, 13177i, u_input.a.x), !vec3<bool>(true, true, var_2.x))));
}

