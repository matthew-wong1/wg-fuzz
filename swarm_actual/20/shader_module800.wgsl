struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_0;
    var var_1 = 1343f;
    var var_2 = arg_1.a.x;
    var var_3 = vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)) * arg_1.a.x))));
    let var_4 = true;
    return _wgslsmith_f_op_vec3_f32(-var_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(arg_0.a.x, 1761f, arg_0.a.x), vec4<bool>(arg_2.x, false, arg_0.b.x, arg_0.b.x)), Struct_1(vec3<f32>(arg_1, -1112f, arg_1), vec4<bool>(true, false, true, false))))))), select(arg_0.b, select(select(!arg_0.b, !vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), all(vec3<bool>(arg_0.b.x, arg_0.b.x, false))), !vec4<bool>(arg_2.x, arg_2.x, true, false), all(select(arg_2.zx, vec2<bool>(arg_2.x, arg_0.b.x), arg_2.x))), !arg_2.x));
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    return Struct_1(vec3<f32>(2182f, _wgslsmith_f_op_f32(-851f * _wgslsmith_f_op_vec3_f32(func_3(var_0, arg_0)).x), -932f), select(!select(!vec4<bool>(false, false, arg_2.x, arg_2.x), select(vec4<bool>(arg_0.b.x, arg_2.x, false, true), var_0.b, arg_0.b.x), select(vec4<bool>(false, true, true, arg_2.x), var_0.b, var_0.b)), vec4<bool>(true, true, true, true), vec4<bool>(true, !(!var_0.b.x), (10745i <= u_input.b) == arg_0.b.x, arg_2.x | true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = arg_0;
    let var_1 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), !select(vec4<bool>(true, false, arg_0.b.x, var_0.b.x), vec4<bool>(false, true, false, true), arg_1.b.x)), _wgslsmith_f_op_f32(-var_0.a.x), !(!vec3<bool>(arg_1.b.x, false, arg_1.b.x))), arg_0.a.x, !(!select(select(vec3<bool>(false, true, true), var_0.b.yzw, true), arg_1.b.zxx, var_0.b.x)));
    global0 = array<vec4<f32>, 21>();
    let var_2 = func_2(func_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_1.a.x, var_0.a.x), -467f, arg_0.a.x), vec4<bool>(any(var_1.b.yy), !var_1.b.x, func_2(Struct_1(vec3<f32>(2224f, -377f, -1554f), var_1.b), var_1.a.x, vec3<bool>(false, var_0.b.x, arg_0.b.x)).b.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))), vec3<bool>(arg_0.b.x, !all(vec4<bool>(var_0.b.x, false, arg_0.b.x, false)), (941f == arg_0.a.x) && !arg_1.b.x)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0.a, select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), !var_0.b, vec4<bool>(true, var_0.b.x, false, false))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.a))), func_2(Struct_1(vec3<f32>(263f, 463f, arg_1.a.x), var_0.b), _wgslsmith_div_f32(arg_0.a.x, var_1.a.x), vec3<bool>(false, true, true)).b))).x, !arg_0.b.yyy);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)))), var_2.b);
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    global0 = array<vec4<f32>, 21>();
    let var_1 = ~u_input.a.zxy;
    global0 = array<vec4<f32>, 21>();
    var var_2 = _wgslsmith_add_vec3_i32(((abs(vec3<i32>(1i, -1216i, u_input.b)) & _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.b), vec3<i32>(u_input.d, -10171i, 0i))) | (vec3<i32>(-2147483647i, u_input.b, u_input.d) << (var_1 % vec3<u32>(32u)))) ^ vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d) ^ vec2<i32>(8516i, 49702i), vec2<i32>(-78966i, -58784i) >> (vec2<u32>(var_1.x, 1u) % vec2<u32>(32u))), -14771i), vec3<i32>(-1i) * -vec3<i32>(-5587i, u_input.b, abs(u_input.d)));
    return false | var_0.b.x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(abs(arg_2.a.x)), arg_2.a.x), vec4<bool>(!(arg_0 > 0i) & arg_2.b.x, arg_2.a.x >= _wgslsmith_f_op_f32(f32(-1f) * -382f), true, func_5(func_4(arg_2, func_2(Struct_1(arg_2.a, arg_2.b), arg_2.a.x, arg_2.b.zwy)))));
    let var_1 = arg_2;
    var var_2 = select(!vec4<bool>(select(arg_2.b.x, var_0.b.x || false, true), -u_input.b <= arg_0, arg_2.b.x, all(!vec2<bool>(var_1.b.x, arg_2.b.x))), vec4<bool>(any(!var_0.b), any(vec2<bool>(true, true)), true, var_1.b.x), _wgslsmith_add_u32(u_input.a.x, u_input.c) > u_input.c);
    var_2 = !vec4<bool>(!(-39321i == min(u_input.b, u_input.b)), true & (!var_2.x || (1u >= u_input.c)), false, all(vec3<bool>(true, any(arg_2.b.wyz), true)));
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(Struct_1(arg_2.a, arg_2.b), arg_1, var_1.b.xwz).a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_2.a.x)))));
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = -38209i != -(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1, arg_1, u_input.b), -vec4<i32>(arg_1, 0i, 14381i, -35930i)) ^ _wgslsmith_mod_i32(-1i, ~12767i));
    var var_1 = arg_2.a.x;
    return min(_wgslsmith_clamp_vec4_i32(max(-abs(vec4<i32>(u_input.d, 2147483647i, u_input.d, arg_1)), ~vec4<i32>(1i, 1i, u_input.d, -9812i)), abs(vec4<i32>(1i, arg_1, u_input.d, 1i) >> (_wgslsmith_add_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 80i, u_input.d), ~vec4<i32>(arg_1, arg_1, u_input.d, 13749i))), vec4<i32>(~_wgslsmith_div_i32(1i, i32(-1i) * -1i), -14102i >> (u_input.a.x % 32u), 42530i, 41016i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    var var_0 = -max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 35079i, -2147483647i, u_input.b) ^ ~vec4<i32>(2147483647i, 1i, u_input.d, u_input.b), func_6(_wgslsmith_f_op_f32(func_1(2147483647i, 1000f, Struct_1(vec3<f32>(-2152f, 341f, -192f), vec4<bool>(true, false, false, true)))), 15649i ^ u_input.b, func_4(Struct_1(vec3<f32>(2116f, -1876f, -1050f), vec4<bool>(true, false, true, true)), Struct_1(vec3<f32>(-2070f, -2484f, 1501f), vec4<bool>(true, true, false, false))))), _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.d, u_input.b, 15783i), vec4<i32>(u_input.b, u_input.b, -20512i, u_input.b)), -select(vec4<i32>(u_input.b, -2147483647i, u_input.b, -30370i), vec4<i32>(u_input.d, u_input.d, u_input.b, 2147483647i), true)));
    var_0 = -vec4<i32>(1i, 0i & var_0.x, _wgslsmith_sub_i32(abs(-45750i), 40191i) ^ u_input.d, 1i);
    var var_1 = 188f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec4<u32>(abs(u_input.c >> (u_input.a.x % 32u)) << (_wgslsmith_sub_u32(7732u, u_input.c) % 32u), 1u, 85391u, u_input.c), ~1u);
}

