struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2;

var<private> global2: vec2<i32> = vec2<i32>(1i, 0i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> bool {
    var var_0 = u_input.b;
    let var_1 = 60898u ^ var_0.x;
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - -639f)) - global1.c);
    var var_1 = vec4<i32>(_wgslsmith_add_i32(-2147483647i, (i32(-1i) * -1i) & global2.x), global2.x, global2.x, global2.x ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(-14854i, global2.x, -20894i) & ~vec3<i32>(global2.x, -2147483647i, global2.x), vec3<i32>(-2626i, max(-1i, -2147483647i), global2.x << (u_input.a % 32u))));
    global1 = Struct_2(global1.a, any(vec3<bool>(func_2(), false, 11905u >= min(u_input.c, arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a + -131f))) - 473f)));
    var var_2 = global2.x;
    var var_3 = global1.a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.a, 1701f))) + _wgslsmith_f_op_f32(ceil(563f))))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> u32 {
    global1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * 423f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) * _wgslsmith_f_op_f32(min(1000f, -1340f))))), global1.b, _wgslsmith_f_op_f32(-global1.a.a));
    let var_0 = select(vec2<bool>(true, global1.b), vec2<bool>(true, func_2()), any(!select(!vec4<bool>(global1.b, global1.b, true, global1.b), !vec4<bool>(true, true, global1.b, global1.b), select(vec4<bool>(false, global1.b, global1.b, false), vec4<bool>(global1.b, global1.b, global1.b, true), vec4<bool>(true, true, global1.b, true)))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-883f - _wgslsmith_f_op_f32(global1.c * _wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.a, 1000f), _wgslsmith_f_op_f32(128f * global1.a.a))))));
    let var_3 = ~u_input.b;
    return 1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<i32> {
    global1 = Struct_2(Struct_1(-315f), all(!vec3<bool>(select(global1.b, arg_1.b, true), false, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global1.c) - -830f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.c * global1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c, arg_1.a.a))))))));
    let var_0 = all(select(arg_2, arg_2, arg_2.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(round(arg_1.a.a))))))));
    global0 = global2.x == ~global2.x;
    global2 = abs(vec2<i32>(i32(-1i) * -2147483647i, ~global2.x));
    return vec4<i32>(firstTrailingBit(2147483647i | ((global2.x | global2.x) >> (arg_0.x % 32u))), countOneBits(_wgslsmith_add_i32(global2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global2.x, 29095i), vec3<i32>(-34617i, global2.x, 17295i)), vec3<i32>(-2147483647i, global2.x, 2147483647i)))), _wgslsmith_mult_i32(abs(firstTrailingBit(global2.x ^ 0i)), _wgslsmith_div_i32(2147483647i & global2.x, 0i) & global2.x), 40539i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_mult_u32(u_input.b.x, ~abs(~0u)));
    global0 = !global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(u_input.b.wzz), global1.a)), _wgslsmith_f_op_f32(345f * -266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)))), vec2<f32>(-163f, _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_dot_vec4_i32(func_4(vec3<u32>(u_input.c, 0u ^ u_input.b.x, func_3(Struct_3(u_input.b.wzx), u_input.a, -6869i)), Struct_2(global1.a, false, _wgslsmith_f_op_f32(global1.c + -689f)), select(select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, global1.b), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(-2147483647i), -global2.x, -2147483647i, global2.x), abs(~vec4<i32>(global2.x, global2.x, global2.x, -12942i)))));
}

