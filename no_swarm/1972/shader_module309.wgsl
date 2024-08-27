struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4;

var<private> global2: Struct_1;

var<private> global3: f32 = -235f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global2 = global0.c;
    global0 = Struct_2(global1.e.a, !(!(_wgslsmith_div_f32(357f, global1.b.a.x) >= global1.e.a.x)), global1.a, global0.d, Struct_1(all(select(vec4<bool>(global1.c.x, false, global2.a, global0.e.a), !vec4<bool>(true, global2.a, global0.e.a, global1.b.e.a), false || global1.d.a))));
    var var_0 = global1.e;
    var var_1 = vec3<bool>(true, global1.c.x, true);
    global3 = 909f;
    return !var_1.xz;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = Struct_4(global1.d, global1.b, select(global1.c, !select(vec2<bool>(global1.d.a, false), vec2<bool>(global0.e.a, true), false | global0.e.a), func_3()), Struct_1(true), Struct_3(global1.b.a));
    var var_0 = Struct_4(global0.c, global1.b, !(!global1.c), Struct_1(all(select(select(vec3<bool>(global0.c.a, global0.b, true), vec3<bool>(global1.b.b, true, true), true), vec3<bool>(global0.b, false, true), select(vec3<bool>(true, true, true), vec3<bool>(global1.a.a, true, global1.d.a), vec3<bool>(global0.c.a, global2.a, true))))), global1.e);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(global0.a, _wgslsmith_f_op_vec3_f32(var_0.b.a + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1446f, -580f, global0.a.x)))))), true || var_0.a.a, global1.d, 4294967295u, Struct_1(all(!vec3<bool>(false, false, global2.a))));
    global3 = global0.a.x;
    var var_1 = !vec4<bool>(any(!vec4<bool>(false, var_0.a.a, global1.d.a, false)), true, false, any(select(select(vec2<bool>(false, global1.d.a), global1.c, vec2<bool>(false, global1.b.e.a)), func_3(), !vec2<bool>(false, var_0.a.a))));
    return global0.e;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.a.x + _wgslsmith_f_op_f32(trunc(1448f)))));
    global2 = Struct_1(false);
    global1 = Struct_4(Struct_1(global0.c.a), Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a), any(!vec4<bool>(global1.c.x, false, true, global2.a)), Struct_1(arg_0.b), abs(firstLeadingBit(1u)), arg_0.e), vec2<bool>(!all(!vec3<bool>(global2.a, global2.a, global0.b)), global2.a), global0.c, Struct_3(_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(1127f * -483f), -824f))));
    var var_1 = firstTrailingBit(_wgslsmith_sub_i32((u_input.a & u_input.a) | -u_input.a, u_input.a)) != abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, u_input.a, 6930i), vec3<i32>(u_input.a, u_input.b, -1i), vec3<bool>(global0.c.a, arg_0.c.a, false)), vec3<i32>(u_input.a, u_input.b, u_input.b) ^ vec3<i32>(-30027i, u_input.a, u_input.a)) & -10984i);
    var var_2 = arg_0.a;
    return global1.d;
}

fn func_1() -> i32 {
    global2 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(round(global0.a)), global2.a, func_2(min(~global1.b.d, abs(0u))), _wgslsmith_add_u32(global0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.d, global0.d, global1.b.d), vec3<u32>(61115u, 1u, global0.d))) & global1.b.d, global0.c), Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, -563f, -947f), global1.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(325f * _wgslsmith_div_f32(1218f, -1134f)))));
    let var_0 = select(global1.c, select(func_3(), vec2<bool>(func_3().x == global0.c.a, global2.a), global1.c), !(!select(vec2<bool>(true, false), !vec2<bool>(global0.c.a, global1.a.a), true != global0.c.a)));
    global2 = func_2(72210u);
    let var_1 = _wgslsmith_clamp_i32(u_input.b, ~u_input.b, u_input.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2052f)) * _wgslsmith_f_op_f32(-global0.a.x));
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~12792i, 34538i, u_input.b) & vec3<i32>(1i, func_1(), u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-444f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(global1.b.a.x * _wgslsmith_f_op_f32(-204f + 886f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.a.x, _wgslsmith_f_op_f32(floor(-190f)), _wgslsmith_f_op_f32(f32(-1f) * -478f)) + _wgslsmith_f_op_vec3_f32(-global1.b.a)), !select(vec3<bool>(global2.a, true, global2.a), !vec3<bool>(global1.a.a, global0.c.a, global1.c.x), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1057f, global0.a.x, global1.b.a.x) - global0.a) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.x, global1.e.a.x, global1.e.a.x)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(-global1.b.a.x), _wgslsmith_f_op_f32(-global0.a.x))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-928f, global1.b.a.x), _wgslsmith_f_op_f32(ceil(global1.e.a.x)), global0.a.x), _wgslsmith_f_op_vec3_f32(global0.a - global1.e.a))), global1.d.a));
    var var_2 = global1.e;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -590f);
}

