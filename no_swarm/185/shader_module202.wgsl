struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(0i, -1i, 2147483647i)), Struct_1(vec3<i32>(-26349i, 16771i, -1i)), 180f, false, Struct_1(vec3<i32>(-1i, -32378i, -28982i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    global1 = Struct_2(Struct_1(arg_3.e.a), arg_3.e, global1.c, any(vec3<bool>(true, any(!vec4<bool>(arg_2.d, true, arg_2.d, global1.d)), !arg_3.d)), arg_3.a);
    let var_0 = vec2<i32>(2147483647i, arg_3.b.a.x);
    global1 = arg_3;
    global0 = 32324i;
    let var_1 = ~(~(select(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_mult_u32(31922u, 41429u), select(global1.d, global1.d, true)) & 21994u));
    return select(!(!(!(!vec3<bool>(global1.d, arg_3.d, arg_2.d)))), select(select(select(vec3<bool>(false, arg_3.d, arg_2.d), select(vec3<bool>(false, arg_3.d, true), vec3<bool>(true, arg_3.d, arg_2.d), vec3<bool>(arg_3.d, arg_2.d, global1.d)), !vec3<bool>(arg_3.d, true, arg_3.d)), !vec3<bool>(false, global1.d, arg_2.d), 30545i < arg_3.b.a.x), select(vec3<bool>(true, !arg_3.d, global1.d), vec3<bool>(true, any(vec3<bool>(arg_3.d, false, true)), !global1.d), true), true), select(select(vec3<bool>(!arg_2.d, true, false | global1.d), select(!vec3<bool>(false, true, global1.d), !vec3<bool>(false, arg_2.d, global1.d), true), vec3<bool>(select(true, true, arg_2.d), global1.d, !arg_3.d)), vec3<bool>(countOneBits(18776u) < ~var_1, true, true), vec3<bool>(false, false, arg_3.d)));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = 0i;
    let var_0 = ~15869u;
    let var_1 = Struct_3(Struct_2(Struct_1(u_input.a.yyx), global1.e, 1831f, all(func_3(1305f, _wgslsmith_f_op_f32(global1.c * -1574f), Struct_2(global1.a, global1.b, -1386f, true, Struct_1(vec3<i32>(1i, global1.a.a.x, -1i))), Struct_2(global1.e, global1.b, -2053f, global1.d, Struct_1(u_input.a.wyy)))), global1.e));
    global1 = Struct_2(var_1.a.a, global1.b, var_1.a.c, true, global1.a);
    global1 = Struct_2(var_1.a.a, Struct_1(vec3<i32>(max(global1.b.a.x, global1.b.a.x) << ((1u | var_0) % 32u), abs(_wgslsmith_mult_i32(0i, 1i)), ~1i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2374f) - _wgslsmith_f_op_f32(1008f - -1140f)))), var_1.a.c)), false, Struct_1(var_1.a.e.a));
    return vec4<bool>(var_1.a.d, var_1.a.d, var_1.a.d, !var_1.a.d == select(false, var_1.a.d, var_1.a.d));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = !select(select(vec4<bool>(all(vec2<bool>(arg_1.x, false)), arg_0 > arg_0, arg_1.x & false, arg_1.x), select(vec4<bool>(true, arg_1.x, true, false), vec4<bool>(arg_1.x, true, global1.d, arg_1.x), 0u <= arg_0), !(!vec4<bool>(arg_1.x, false, true, global1.d))), vec4<bool>(!(global1.d != global1.d), global1.d, true, true), func_2(-143f));
    var var_1 = Struct_2(Struct_1(vec3<i32>(firstLeadingBit(2147483647i), ~82745i, _wgslsmith_div_i32(u_input.a.x, global1.e.a.x)) | vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(0i, global1.a.a.x), abs(global1.a.a.x))), Struct_1(vec3<i32>(_wgslsmith_mod_i32(4908i, arg_2), u_input.a.x ^ _wgslsmith_add_i32(global1.a.a.x, global1.a.a.x), ~global1.a.a.x << ((1u & arg_0) % 32u))), 919f, arg_1.x, Struct_1(vec3<i32>(~select(u_input.a.x, arg_2, false), arg_2, reverseBits(u_input.a.x))));
    var var_2 = ~(arg_0 << (1u % 32u));
    let var_3 = vec2<u32>(min(arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0), ~vec2<u32>(arg_0, arg_0)), ~(~vec2<u32>(18929u, arg_0)))), abs(_wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, 69219u), vec4<u32>(1u, 0u, arg_0, 1u)), vec4<u32>(16002u, 18544u, 0u, 0u), true), ~abs(vec4<u32>(arg_0, 14227u, 1u, arg_0)))));
    var_1 = Struct_2(var_1.a, Struct_1(select(vec3<i32>(_wgslsmith_mod_i32(var_1.e.a.x, 9122i), select(global1.b.a.x, 1i, false), -31287i), -global1.b.a, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 483f, Struct_2(Struct_1(var_1.e.a), Struct_1(vec3<i32>(u_input.a.x, arg_2, var_1.e.a.x)), -166f, true, Struct_1(var_1.a.a)), Struct_2(Struct_1(vec3<i32>(-21025i, global1.b.a.x, u_input.a.x)), Struct_1(global1.e.a), -1302f, true, Struct_1(global1.e.a))))), var_1.c, arg_1.x, Struct_1(-u_input.a.zxw));
    return Struct_2(var_1.b, Struct_1(firstTrailingBit(-var_1.a.a)), -1000f, false, Struct_1(~_wgslsmith_mod_vec3_i32(u_input.a.wxz, global1.e.a << (vec3<u32>(1u, arg_0, 60436u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -542f)), _wgslsmith_f_op_f32(global1.c * global1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.c, global1.c, -1540f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + -1121f) * _wgslsmith_div_f32(-1213f, 662f)), _wgslsmith_div_f32(375f, _wgslsmith_f_op_f32(global1.c - -745f)), _wgslsmith_f_op_f32(-global1.c))));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(71926i, global1.b.a.x, global1.a.a.x, 9654i)) >> (_wgslsmith_mod_u32(reverseBits(4294967295u), 1u) % 32u)), (u_input.a.wy | global1.a.a.xy) >> (abs(min(~vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u)));
    global1 = func_1(_wgslsmith_clamp_u32(1u, ~_wgslsmith_div_u32(1u, ~58284u), 1u), vec2<bool>(true, global1.d), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(global1.a.a.x, u_input.a.x, -1i, u_input.a.x)), _wgslsmith_mod_vec4_i32(~u_input.a, u_input.a >> (vec4<u32>(7196u, 10631u, 23145u, 4294967295u) % vec4<u32>(32u)))), -(~select(vec4<i32>(u_input.a.x, global1.b.a.x, -62207i, global1.b.a.x), u_input.a, true))), _wgslsmith_f_op_f32(-var_0.x));
    let var_1 = func_1(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, ~58318u), 4294967295u, 20321u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(57568u, 7532u, 4294967295u), countOneBits(vec3<u32>(0u, 1u, 4294967295u))), vec3<u32>(min(64343u, 0u), ~0u, 1u))), vec2<bool>(global1.d, !(all(vec2<bool>(false, global1.d)) || false)), global1.b.a.x, -2244f);
    var var_2 = Struct_1(var_1.b.a);
    let var_3 = ~func_1(50344u, select(!(!vec2<bool>(true, global1.d)), select(func_2(574f).xy, vec2<bool>(var_1.d, var_1.d), global1.d), false), global1.e.a.x, var_1.c).a.a.zz;
    let var_4 = func_1(_wgslsmith_clamp_u32(~25208u, 0u, ~0u), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(611f))))).zx, u_input.a.x, 2120f).e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, -704f, _wgslsmith_f_op_f32(min(global1.c, _wgslsmith_f_op_f32(f32(-1f) * -1400f))))), vec4<i32>(func_1(~countOneBits(30019u), !func_3(var_1.c, 637f, Struct_2(Struct_1(vec3<i32>(var_1.b.a.x, 1i, var_2.a.x)), var_4, -867f, var_1.d, Struct_1(var_1.b.a)), Struct_2(var_4, global1.a, var_0.x, var_1.d, Struct_1(var_2.a))).xz, -global1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1984f, global1.c) + _wgslsmith_f_op_f32(round(var_0.x)))).e.a.x, ~(_wgslsmith_div_i32(global1.e.a.x, 12338i) >> (~1u % 32u)), _wgslsmith_add_i32(select(~(-17789i), func_1(47216u, vec2<bool>(var_1.d, var_1.d), var_1.a.a.x, -1000f).e.a.x, func_2(-1000f).x), 1i), _wgslsmith_mult_i32(global1.e.a.x, global1.e.a.x)), -u_input.a, global1.c);
}

