struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.d)), _wgslsmith_f_op_f32(-global1.d)))))) * global1.d);
    global0 = select(vec4<bool>(~_wgslsmith_sub_u32(1u, 1u) >= (27004u << (u_input.b.x % 32u)), any(select(!global1.b.wzz, select(vec3<bool>(global1.c.x, false, global0.x), global0.yww, global1.b.zxy), true)), true, global0.x), select(global1.b, vec4<bool>(countOneBits(41671u) == u_input.b.x, global0.x, true & global0.x, var_0 <= -323f), select(select(global1.a, vec4<bool>(global0.x, global0.x, global0.x, global0.x), global1.c.x | true), select(!global1.b, vec4<bool>(global1.c.x, global0.x, global0.x, false), global1.b), false)), !(!select(global1.b, vec4<bool>(false, false, false, true), any(vec3<bool>(true, global1.b.x, true)))));
    var var_1 = Struct_1(select(select(global1.a, vec4<bool>(global1.b.x | global1.c.x, true, true, global1.b.x), vec4<bool>(!global0.x, all(vec2<bool>(global1.a.x, global1.b.x)), all(global1.a.xyy), true)), vec4<bool>(-2267f > _wgslsmith_f_op_f32(global1.d + 815f), false, false, _wgslsmith_f_op_f32(var_0 + global1.d) <= _wgslsmith_f_op_f32(-1864f - -340f)), true), select(!select(vec4<bool>(global0.x, global0.x, global0.x, true), global1.a, false), select(!global1.b, !vec4<bool>(false, false, global0.x, false), select(vec4<bool>(true, global0.x, true, true), select(vec4<bool>(true, global0.x, true, global1.b.x), global1.b, vec4<bool>(global1.c.x, true, false, true)), global1.a)), true), global0.zyx, _wgslsmith_f_op_f32(abs(global1.d)), global1.e);
    global0 = global1.a;
    let var_2 = vec3<u32>(u_input.a, 5289u, 16141u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(640f, 1235f), vec2<f32>(var_1.d, -184f)), vec2<f32>(var_1.d, var_0))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global1.d)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, var_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -1336f)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.d)), global1.d)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1548f, _wgslsmith_f_op_f32(-global1.d)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.d, global1.d))))) + _wgslsmith_f_op_vec2_f32(func_3()));
    let var_1 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(24593u, 1u), u_input.b), _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(42803u, 9827u, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, 4294967295u))), u_input.a, 51164u) & abs(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(u_input.a, 30477u, 1481u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 75167u, 0u), ~vec4<u32>(u_input.a, u_input.b.x, 55498u, 42651u))));
    global1 = Struct_1(vec4<bool>(!(!(global1.d < var_0.x)), false, true, global1.b.x), !global1.b, select(!global1.b.xzx, !vec3<bool>(true, !global0.x, true), global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(142f)))) * _wgslsmith_f_op_f32(-global1.d)), -vec2<i32>((0i ^ global1.e.x) >> ((u_input.b.x >> (4294967295u % 32u)) % 32u), global1.e.x));
    var var_2 = Struct_1(global1.a, !global1.a, !vec3<bool>(false, true, _wgslsmith_sub_u32(43551u, var_1.x) == var_1.x), global1.d, vec2<i32>(select(max(~1i, _wgslsmith_clamp_i32(20147i, global1.e.x, global1.e.x)), i32(-1i) * -1i, false == global1.a.x), 0i));
    let var_3 = var_1.yzy;
    return 0u;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = min(vec2<u32>(~(~func_2()), arg_3), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_3, u_input.b.x), arg_3), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b | vec2<u32>(arg_3, u_input.a), ~u_input.b, select(u_input.b, u_input.b, false)), ~(~u_input.b))));
    var_0 = u_input.b << (u_input.b % vec2<u32>(32u));
    var_0 = ~u_input.b;
    var_0 = u_input.b;
    global1 = Struct_1(!select(!(!vec4<bool>(arg_2, global0.x, global0.x, true)), global1.a, global1.b.x), select(!select(global1.b, !global1.b, global1.c.x), vec4<bool>(any(global1.c.zz), false, false, true & (1865f == global1.d)), any(global1.a.zw)), vec3<bool>(select(false, all(!vec3<bool>(global0.x, global0.x, true)), !all(vec3<bool>(true, true, false))), 4294967295u > ~_wgslsmith_div_u32(0u, var_0.x), true), arg_1.x, global1.e);
    return Struct_1(!select(vec4<bool>(!arg_2, global1.b.x, any(vec2<bool>(true, arg_2)), arg_2), !(!vec4<bool>(arg_2, arg_2, true, arg_2)), any(vec2<bool>(false, true))), global1.a, select(select(vec3<bool>(true, select(arg_2, global1.a.x, true), false), select(vec3<bool>(true, false, false), global1.a.xwz, !vec3<bool>(arg_2, arg_2, true)), true), global1.b.yzy, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3()).x, 1583f, any(vec3<bool>(true, false, arg_2)))))), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(select(reverseBits(global1.e), _wgslsmith_clamp_vec2_i32(global1.e, vec2<i32>(0i, 31709i), vec2<i32>(0i, -1i)), global0.zx), global1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.e.x > -(~(global1.e.x >> ((u_input.b.x << (u_input.a % 32u)) % 32u)));
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(global1.d * global1.d)) * _wgslsmith_div_f32(-1137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.d, global1.d))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(313f * _wgslsmith_f_op_f32(-global1.d)), global1.d, _wgslsmith_f_op_f32(-238f + -2676f))), var_0, 0u);
    global0 = var_1.a;
    global1 = var_1;
    let var_2 = all(var_1.c);
    var var_3 = select(!var_1.a.wyy, select(global0.xwz, func_1(678f, vec3<f32>(466f, var_1.d, -432f), abs(u_input.b.x) <= reverseBits(39154u), abs(30946u << (u_input.b.x % 32u))).b.xzx, var_1.c.x), select(!select(var_1.c, global1.b.yzy, global0.yyz), !vec3<bool>(var_2, all(global1.b.xyy), u_input.b.x > u_input.a), func_1(_wgslsmith_div_f32(-180f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, global1.d, -557f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, -1000f, 745f) - vec3<f32>(-1000f, 904f, -535f))), _wgslsmith_f_op_f32(-global1.d) == -1418f, 67479u).a.xxw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -31693i, global1.e.x, var_1.e.x), vec4<i32>(0i, var_1.e.x, var_1.e.x, global1.e.x)), _wgslsmith_mult_i32(max(var_1.e.x, -2147483647i), ~(-2147483647i))), global1.e.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.d, 2187f, var_1.d)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d, -194f, var_1.d, global1.d)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -1000f, 1000f, var_1.d)))))), select(var_1.a, select(!vec4<bool>(var_3.x, var_1.b.x, true, false), !vec4<bool>(true, global1.a.x, true, false), !var_3.x), true))));
}

