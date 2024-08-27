struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
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

var<private> global0: Struct_4;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1000f, 471f, 253f, -2374f), vec3<bool>(true, true, false), vec2<f32>(-1663f, 241f), false);

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<i32>, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = !select(select(select(!vec4<bool>(arg_2, global0.a.b, false, global2.x), select(vec4<bool>(global0.a.b, arg_1.a.d, arg_1.a.b.x, global2.x), vec4<bool>(arg_1.a.b.x, false, true, arg_2), vec4<bool>(true, global2.x, arg_1.a.d, false)), any(vec4<bool>(global0.a.b, false, true, true))), select(select(vec4<bool>(true, arg_1.a.d, global0.a.b, false), vec4<bool>(true, false, global0.a.b, true), global0.a.b), select(vec4<bool>(false, global1.b.x, global2.x, global2.x), vec4<bool>(true, global0.a.b, arg_2, false), false), global2.x), !global0.a.b), select(vec4<bool>(true, true, all(vec4<bool>(arg_2, true, global0.a.b, global1.b.x)), false), !select(vec4<bool>(global2.x, false, global0.a.b, true), vec4<bool>(false, global0.a.b, global2.x, arg_1.a.b.x), vec4<bool>(true, arg_2, global0.a.b, false)), !(!vec4<bool>(global1.d, arg_1.a.d, global2.x, global1.d))), global1.d);
    let var_1 = global0.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(arg_1.a.a.wy, arg_1.a.a.wx, _wgslsmith_mod_u32(~56321u, countOneBits(58500u)) > _wgslsmith_add_u32(arg_0.x << (1u % 32u), arg_0.x << (var_1.d.x % 32u)))), arg_1.a.c));
    global3 = array<vec2<i32>, 4>();
    global0 = Struct_4(global0.a);
    return firstTrailingBit(select(select((i32(-1i) * -33905i) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -65385i, arg_3), vec3<i32>(arg_3, var_1.a.x, 3085i)), -(i32(-1i) * -2147483647i), true), -448i | arg_3, var_0.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_3 {
    global3 = array<vec2<i32>, 4>();
    let var_0 = Struct_4(Struct_2(vec2<i32>(~min(u_input.a, 20199i), func_3(~vec2<u32>(u_input.d.x, 13871u), Struct_3(Struct_1(global1.a, vec3<bool>(global2.x, true, false), vec2<f32>(1017f, 356f), arg_0.x)), all(arg_0), _wgslsmith_clamp_i32(-1i, global0.a.a.x, 23562i))), false, countOneBits(min(countOneBits(1u), ~u_input.e)), _wgslsmith_mult_vec3_u32(select(select(vec3<u32>(0u, global0.a.d.x, 1u), vec3<u32>(4294967295u, u_input.d.x, 86840u), arg_0.x), abs(global0.a.d), arg_1), ~vec3<u32>(u_input.e, global0.a.c, 4294967295u))));
    let var_1 = Struct_3(Struct_1(global1.a, global1.b, global1.c, arg_1));
    let var_2 = abs(_wgslsmith_add_i32(27210i, _wgslsmith_clamp_i32(2147483647i, ~(~u_input.b.x), u_input.c.x)));
    let var_3 = vec4<u32>(~u_input.d.x, 4294967295u, 1u | reverseBits(u_input.e), 52720u | firstTrailingBit(1u));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(407f + 413f), _wgslsmith_f_op_f32(745f * -480f), 655f, _wgslsmith_f_op_f32(var_1.a.c.x - global1.c.x)), _wgslsmith_f_op_vec4_f32(select(var_1.a.a, vec4<f32>(var_1.a.c.x, 1724f, 336f, 785f), select(arg_0, arg_0, vec4<bool>(var_1.a.b.x, arg_0.x, true, global2.x)))), !arg_0)), var_1.a.b, vec2<f32>(852f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -593f)))), any(!vec4<bool>(arg_0.x, arg_0.x, false, var_0.a.b)) && (var_0.a.a.x > 1i)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec3<bool> {
    global0 = Struct_4(global0.a);
    let var_0 = func_2(!(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, global2.x, global0.a.b, true), vec4<bool>(global0.a.b, true, true, arg_0)))), false);
    global2 = select(vec4<bool>(false, false, false, any(vec3<bool>(global1.d, true, false)) && func_2(!vec4<bool>(global1.d, global2.x, false, false), var_0.a.d).a.b.x), select(vec4<bool>(!global1.d, ~(-1i) > max(u_input.a, 2147483647i), arg_0, false), select(vec4<bool>(any(vec3<bool>(global2.x, true, global1.d)), true, arg_1.x <= global1.a.x, true), vec4<bool>(false, global2.x, var_0.a.b.x, all(vec3<bool>(var_0.a.d, true, true))), func_2(select(vec4<bool>(true, true, false, global0.a.b), vec4<bool>(false, true, true, false), true), var_0.a.b.x).a.b.x), false), select(!(!select(vec4<bool>(true, global2.x, var_0.a.b.x, var_0.a.b.x), vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(var_0.a.b.x, arg_0, global1.d, true))), !select(!vec4<bool>(global0.a.b, global1.d, arg_0, false), select(vec4<bool>(global2.x, false, true, false), vec4<bool>(global0.a.b, var_0.a.b.x, false, false), vec4<bool>(true, arg_0, global2.x, false)), vec4<bool>(true, true, true, global0.a.b)), !vec4<bool>(0u >= u_input.d.x, false, all(vec4<bool>(false, true, false, false)), arg_0)));
    var var_1 = u_input.d;
    var var_2 = func_2(select(vec4<bool>(var_0.a.b.x, arg_0, true, global2.x & true), select(vec4<bool>(any(vec4<bool>(false, false, arg_0, false)), func_2(vec4<bool>(global1.b.x, true, global1.b.x, arg_0), true).a.d, !var_0.a.b.x, !global1.d), select(select(vec4<bool>(true, true, var_0.a.b.x, false), vec4<bool>(true, var_0.a.d, global2.x, arg_0), vec4<bool>(true, false, false, global1.b.x)), select(vec4<bool>(global1.b.x, true, true, true), vec4<bool>(true, false, var_0.a.b.x, global0.a.b), false), global1.b.x), all(vec2<bool>(arg_0, var_0.a.d))), !arg_0), true).a;
    return vec3<bool>(all(global2.ww), global1.b.x, true);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(global1.a, select(vec3<bool>(false, any(select(vec2<bool>(true, true), global2.wx, arg_1)), all(arg_2.a.b)), vec3<bool>(true, arg_2.a.d, (global0.a.c != arg_3.d.x) | global0.a.b), func_2(!(!vec4<bool>(arg_1.x, true, arg_1.x, global2.x)), arg_2.a.d).a.b.x), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.a.x), 476f)))), arg_2.a.c.x), all(!vec3<bool>(arg_3.b, any(vec4<bool>(global2.x, global0.a.b, true, global2.x)), true)));
    let var_1 = func_2(vec4<bool>(u_input.d.x <= 1u, !global0.a.b, global2.x, true), global2.x);
    var var_2 = global0.a;
    let var_3 = func_2(vec4<bool>(!func_1(true, vec4<f32>(var_1.a.c.x, 740f, 1318f, global1.a.x)).x, !(global2.x | arg_3.b) || all(!var_1.a.b), true, _wgslsmith_dot_vec2_i32(arg_0.zz, ~u_input.b) < -57981i), !(!all(global1.b.zz)) & !global2.x);
    let var_4 = (~arg_3.d.yz & ~u_input.d) ^ vec2<u32>(global0.a.c, ~(~1u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.a.a.wx, vec2<f32>(-1341f, arg_2.a.c.x))), var_1.a.a.xy, true))) - var_0.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = -805i;
    global1 = Struct_1(global1.a, vec3<bool>(global1.d, true, true), global1.a.yy, global1.d);
    let var_2 = Struct_1(global1.a, global1.b, _wgslsmith_f_op_vec2_f32(func_4(max(vec4<i32>(abs(global0.a.a.x), -u_input.b.x, countOneBits(2147483647i), var_1 | 1i), u_input.c), vec2<bool>(true, false), Struct_3(Struct_1(vec4<f32>(406f, -1000f, global1.a.x, global1.a.x), func_1(global0.a.b, global1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1005f) + global1.a.yx), global2.x | global2.x)), global0.a)), any(select(!(!vec4<bool>(true, global1.d, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(global2.x, global0.a.b, false, global0.a.b), true), vec4<bool>(!global0.a.b, true, false, global0.a.b))));
    var var_3 = _wgslsmith_f_op_f32(-global1.c.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.zw)) + vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-541f + _wgslsmith_f_op_f32(242f - var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-795f, 796f, global1.c.x, var_4.x), vec4<f32>(global1.a.x, var_2.a.x, global1.a.x, -329f)))))));
}

