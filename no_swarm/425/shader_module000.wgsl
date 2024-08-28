struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(656f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(386f, global0.a)) + _wgslsmith_div_f32(-1000f, global0.a))));
    let var_0 = u_input.b.wy;
    global0 = Struct_1(607f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -975f, 385f, -564f) * vec4<f32>(221f, global0.a, 1801f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(1780f + global0.a), _wgslsmith_div_f32(global0.a, global0.a), global0.a, _wgslsmith_div_f32(global0.a, global0.a)), vec4<bool>(true, false, select(true, true, true), true))), vec4<f32>(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(step(global0.a, -843f))), -1671f, global0.a)));
    var var_2 = -1432f;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(global0.a))));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1219f)))));
    let var_1 = _wgslsmith_f_op_f32(-global0.a);
    var var_2 = arg_0.a;
    var var_3 = vec4<bool>(false, all(vec3<bool>(true, true && select(true, true, true), false)), var_2.a != _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.a), true)))), !(true && !(var_2.a < arg_0.a.a)));
    let var_4 = u_input.c;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(4294967295u, (func_1() & u_input.b.x) | u_input.b.x);
    var var_1 = u_input.c.x;
    var var_2 = func_3(func_2());
    let var_3 = Struct_2(func_3(func_2()));
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a)), global0.a)) - func_3(func_2()).a));
    var_1 = ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.a * var_3.a.a), _wgslsmith_f_op_f32(f32(-1f) * -326f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 1106f) + vec2<f32>(-1004f, var_3.a.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(502f, 162f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1664f, -452f)))))), firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c.x, 1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -1i)) ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, 2147483647i, -1i, u_input.c.x), min(vec4<i32>(-2147483647i, u_input.c.x, 51219i, u_input.c.x), vec4<i32>(-12544i, 0i, u_input.c.x, 2147483647i)), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 8984i))), u_input.b, ~reverseBits(~(vec4<u32>(u_input.b.x, 71650u, 0u, u_input.b.x) ^ u_input.b)));
}

