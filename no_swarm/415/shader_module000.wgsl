struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_4 = Struct_4(Struct_3(true, Struct_2(81166u, Struct_1(vec2<i32>(-10545i, -1i)), Struct_1(vec2<i32>(-2005i, -44881i))), vec4<bool>(true, true, false, true)), -598f, Struct_2(1u, Struct_1(vec2<i32>(24710i, 7910i)), Struct_1(vec2<i32>(-1i, 21033i))), false, Struct_3(false, Struct_2(1u, Struct_1(vec2<i32>(57849i, 1i)), Struct_1(vec2<i32>(0i, 34279i))), vec4<bool>(false, false, true, false)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<u32> {
    let var_0 = firstLeadingBit(~(-1i));
    let var_1 = Struct_4(Struct_3(true, Struct_2(u_input.b, Struct_1(firstTrailingBit(vec2<i32>(0i, -2147483647i))), Struct_1(vec2<i32>(u_input.c.x, var_0) << (vec2<u32>(u_input.a, global1.e.b.a) % vec2<u32>(32u)))), !global1.e.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1068f * _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(108f)))) + _wgslsmith_f_op_f32(-global1.b)), Struct_2(13628u << (firstLeadingBit(~u_input.b) % 32u), Struct_1(vec2<i32>(_wgslsmith_add_i32(-1i, -19285i), global1.a.b.b.a.x)), Struct_1(_wgslsmith_clamp_vec2_i32(-global1.a.b.c.a, select(vec2<i32>(0i, arg_1), vec2<i32>(global1.c.b.a.x, u_input.c.x), vec2<bool>(global1.d, true)), vec2<i32>(var_0, var_0) ^ vec2<i32>(-18299i, 1i)))), global1.d, global1.a);
    global0 = array<Struct_1, 8>();
    global1 = var_1;
    global0 = array<Struct_1, 8>();
    return ~_wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(87589u, global1.a.b.a), vec2<u32>(23934u, 0u)), ~vec2<u32>(44046u, var_1.c.a)), max(firstTrailingBit(~vec2<u32>(1u, 30683u)), _wgslsmith_add_vec2_u32(vec2<u32>(56839u, global1.e.b.a), _wgslsmith_mult_vec2_u32(vec2<u32>(45196u, global1.c.a), vec2<u32>(1u, 0u)))), max(~abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(global1.c.a, global1.e.b.a) & vec2<u32>(36352u, var_1.a.b.a)));
}

fn func_2() -> vec3<i32> {
    var var_0 = vec2<f32>(-1546f, 1743f);
    let var_1 = func_3(-218f, ~global1.e.b.b.a.x);
    let var_2 = Struct_5(u_input.c.xyy);
    var var_3 = vec3<bool>(false, all(vec4<bool>((global1.e.b.a | u_input.a) >= (u_input.a & 1u), false, var_1.x == _wgslsmith_sub_u32(var_1.x, var_1.x), false)), global1.e.c.x);
    var var_4 = all(global1.a.c.yzx);
    return _wgslsmith_sub_vec3_i32(~var_2.a, var_2.a);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = func_2();
    var var_1 = arg_1.b;
    var var_2 = global1.a.b;
    var var_3 = Struct_3(select(global1.a.c.x || global1.d, false, !any(select(vec3<bool>(true, true, arg_0), arg_1.c.yyx, vec3<bool>(false, true, global1.e.a)))), global1.e.b, select(global1.e.c, arg_1.c, any(!global1.e.c)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, global1.b, global1.b, 135f), vec4<f32>(219f, global1.b, -1781f, 1762f)))))));
    return !vec2<bool>(arg_0, select(_wgslsmith_f_op_f32(f32(-1f) * -790f) >= _wgslsmith_f_op_f32(round(var_4.x)), true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, global1.a, _wgslsmith_add_i32(global1.c.c.a.x, global1.c.c.a.x), ~vec3<u32>(~54527u, 0u, abs(~global1.a.b.a)));
    var var_1 = -180f;
    let var_2 = ~vec3<u32>(global1.e.b.a, 52919u, u_input.a << (1u % 32u));
    let var_3 = Struct_4(Struct_3(global1.e.c.x, global1.c, vec4<bool>(!(false & var_0.x), !global1.a.c.x, !(!global1.a.c.x), any(!global1.a.c.xw))), global1.b, global1.a.b, !any(select(vec3<bool>(var_0.x, true, var_0.x), global1.e.c.zyz, select(vec3<bool>(false, false, var_0.x), global1.e.c.wwz, vec3<bool>(false, true, true)))), Struct_3(!all(select(vec2<bool>(false, var_0.x), global1.e.c.zw, vec2<bool>(global1.e.c.x, false))), global1.e.b, vec4<bool>(var_0.x, false, !any(vec3<bool>(var_0.x, var_0.x, false)), all(global1.e.c.yz) | true)));
    let var_4 = min(0i, select(-13263i, u_input.c.x, !global1.d));
    var_1 = _wgslsmith_f_op_f32(-var_3.b);
    var var_5 = u_input.c;
    var_0 = vec2<bool>(all(!(!(!var_3.e.c.wx))), !all(select(!var_3.e.c.xy, vec2<bool>(global1.a.a, global1.d), global1.a.c.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(-var_3.b)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.b, -837f, global1.b)))))))), countOneBits(_wgslsmith_sub_vec4_i32(~(u_input.c ^ u_input.c), ~u_input.c)), i32(-1i) * -2147483647i, vec3<u32>(_wgslsmith_dot_vec3_u32(var_2, max(firstTrailingBit(var_2), ~vec3<u32>(var_3.c.a, var_3.c.a, var_3.e.b.a))), ~_wgslsmith_sub_u32(40084u, firstTrailingBit(8854u)), ~(~_wgslsmith_sub_u32(u_input.b, global1.e.b.a))));
}

