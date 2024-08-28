struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = global1.d;
    global0 = Struct_3(global1.a, Struct_2(global0.a, global1.b.b, Struct_1(false), Struct_1(!global1.b.c.a || all(vec2<bool>(global0.a.a, global0.b.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.e))), _wgslsmith_clamp_i32(firstTrailingBit(global0.c) | global0.c, ~_wgslsmith_mod_i32(-92607i, _wgslsmith_dot_vec3_i32(u_input.b.wwy, u_input.b.xzx)), -1i), ~(~_wgslsmith_mult_u32(~0u, global1.d)), Struct_1(true));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e.x) + _wgslsmith_div_f32(1767f, -118f)))), _wgslsmith_f_op_f32(-global1.b.e.x), global1.b.e.x));
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_3(global1.e, global0.b, global1.c, 1u, global0.a);
    var var_1 = global1.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(arg_0.zzy, arg_0.xwy)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.a.x, vec2<i32>(0i, -1i), Struct_4(u_input.a))) + _wgslsmith_f_op_vec3_f32(-arg_0.xzw)))));
    var var_3 = select(!vec3<bool>(global0.a.a, global0.b.d.a, select(global1.c != var_0.c, global1.b.d.a, var_0.a.a)), select(select(vec3<bool>(global1.e.a, true, select(global0.a.a, var_0.e.a, global1.a.a)), vec3<bool>(false, true, true), all(vec3<bool>(false, global0.e.a, global1.e.a))), select(vec3<bool>(var_0.e.a && var_0.a.a, all(vec3<bool>(global1.e.a, true, true)), true), !vec3<bool>(global1.e.a, global0.a.a, global1.e.a), select(!vec3<bool>(var_0.a.a, false, false), select(vec3<bool>(false, false, global0.b.d.a), vec3<bool>(var_0.a.a, global1.a.a, var_0.b.a.a), true), global1.d >= u_input.d)), all(!(!vec4<bool>(global1.a.a, global0.b.a.a, false, false)))), true);
    var var_4 = Struct_5(!select(all(vec4<bool>(var_3.x, true, false, global0.b.a.a)) & global1.a.a, any(vec3<bool>(true, var_0.e.a, var_3.x)), true), Struct_3(Struct_1(!(0u <= var_0.b.b.x)), Struct_2(Struct_1(true), firstLeadingBit(vec3<u32>(8014u, global1.b.b.x, 12190u)), global1.a, global1.a, var_0.b.e), ~global1.c, _wgslsmith_mod_u32(~4294967295u, countOneBits(global0.d)), var_0.a), _wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(u_input.b.x, -45495i, -20464i, 2147483647i)), _wgslsmith_mod_vec4_i32(min(u_input.b, u_input.b), select(vec4<i32>(0i, -35137i, 1i, var_0.c), u_input.b, true)), !vec4<bool>(var_3.x, global1.b.a.a, false, false)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-u_input.b, u_input.b), u_input.b)));
    return Struct_4(-reverseBits(reverseBits(u_input.b.wz)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e.x) + -1633f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1305f))), global0.b.e.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(808f - global1.b.e.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1065f, 3184f, 699f, global0.b.e.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.e.x, global0.b.e.x, global1.b.e.x, global0.b.e.x))))));
    let var_1 = vec4<u32>(4294967295u, global1.d, 12111u, ~countOneBits(48625u));
    let var_2 = global0.e;
    var var_3 = !(!(!vec3<bool>(global0.e.a, var_0.a.x >= global1.c, all(vec2<bool>(var_2.a, true)))));
    let var_4 = func_2(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(~reverseBits(-2147483647i), var_0.a, Struct_4(vec2<i32>(-1i, global0.c)))).x, 1157f, -1509f, _wgslsmith_f_op_f32(exp2(global1.b.e.x))));
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.b.e, _wgslsmith_f_op_vec2_f32(global0.b.e * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.e.x, -207f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-889f, global1.b.e.x, 626f) + vec3<f32>(global0.b.e.x, -1731f, 422f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(295f, global0.b.e.x, global1.b.e.x))))))));
}

