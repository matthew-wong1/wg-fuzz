struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec3<f32>(-2305f, -2301f, 1179f), vec3<bool>(true, true, true));

var<private> global1: vec3<u32>;

var<private> global2: i32;

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    var var_0 = vec2<i32>(arg_1, -arg_1) | _wgslsmith_add_vec2_i32(vec2<i32>(-22589i, 8372i), vec2<i32>(arg_1, -_wgslsmith_dot_vec2_i32(vec2<i32>(-28816i, arg_1), vec2<i32>(2147483647i, arg_1))));
    var var_1 = 4294967295u;
    var var_2 = ~vec4<u32>(48273u, 1u, global1.x, 89636u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f));
    let var_4 = reverseBits(firstLeadingBit(~(~u_input.a)));
    return i32(-1i) * -var_0.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> f32 {
    let var_0 = ~vec2<u32>(4294967295u, _wgslsmith_mult_u32(select(21109u, 0u, global0.c.x) | 1u, 12216u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x - -1815f), -360f);
    var var_2 = !arg_2;
    var var_3 = 1i;
    var var_4 = global0.c.xy;
    return _wgslsmith_f_op_f32(trunc(-2402f));
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(875f + _wgslsmith_f_op_f32(floor(global0.b.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global0.b.x, global1.x, global0.c.yy, vec4<i32>(57615i, -48229i, -40815i, 39536i))), _wgslsmith_f_op_f32(global0.b.x - global0.b.x)))), _wgslsmith_f_op_f32(-global0.b.x)))));
    var var_1 = abs(-countOneBits(abs(vec2<i32>(2147483647i, -5006i))));
    var var_2 = Struct_3(reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, -41347i), vec3<i32>(var_1.x, var_1.x, var_1.x)), i32(-1i) * -2147483647i, -1i, _wgslsmith_div_i32(0i, var_1.x))) >> (vec4<u32>(abs(_wgslsmith_mult_u32(u_input.a, global1.x)), ~global1.x ^ _wgslsmith_add_u32(21510u, 1u), 6138u, u_input.a) % vec4<u32>(32u)), Struct_2(true, vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(348f, global0.b.x)), u_input.a, !global0.c.xy, max(vec4<i32>(var_1.x, -43020i, 10740i, -2147483647i), vec4<i32>(-1i, -1i, var_1.x, 34132i)))), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-907f, global0.b.x)))), select(vec3<bool>(true, true, var_1.x < 22791i), select(vec3<bool>(true, false, global0.c.x), select(global0.c, vec3<bool>(global0.a, true, global0.a), true), true), global0.c)), global0.b.x);
    var var_3 = Struct_1(var_2.c, -731f, _wgslsmith_f_op_f32(sign(var_2.b.b.x)), global1.xx & vec2<u32>(43141u, 0u));
    var var_4 = select(select(vec2<bool>(true, any(!var_2.b.c.zy)), global0.c.yz, var_2.b.c.zz), var_2.b.c.zz, !(var_2.a.x != 53694i));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    let var_1 = !(!(global0.a || true));
    global2 = abs(_wgslsmith_add_i32(-2147483647i, func_1(vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1409f)), -4090i)));
    let var_2 = true;
    var var_3 = u_input.a;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(6545u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())));
}

