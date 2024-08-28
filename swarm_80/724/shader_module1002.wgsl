struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(47452i, 0i, i32(-2147483648), 1i);

var<private> global1: array<u32, 32>;

var<private> global2: Struct_2 = Struct_2(1000f, true, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -963f);
    global1 = array<u32, 32>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f), -764f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-var_0)))) * _wgslsmith_f_op_f32(f32(-1f) * -723f)), true, ~(~(~(~global1[_wgslsmith_index_u32(4294967295u, 32u)]))));
    return var_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = select(select(u_input.a.xx, ~(u_input.a.xx ^ firstTrailingBit(global0.yx)), true), ~global0.xx, select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, global2.b, true)) == true, all(select(vec4<bool>(arg_0.x, arg_1.b, arg_0.x, true), vec4<bool>(arg_1.b, true, arg_1.b, false), vec4<bool>(global2.b, false, false, arg_0.x)))), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.xzy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.xzx + arg_2.yxy))));
    var_0 = ~global0.yz;
    let var_2 = var_1;
    var_0 = ~u_input.a.yz;
    return Struct_1(~(~(-1i)), select(arg_0.yy, vec2<bool>(true, _wgslsmith_div_u32(4634u, arg_1.c) >= 1u), select(vec2<bool>(arg_1.b && false, false), vec2<bool>(!arg_1.b, global2.b), vec2<bool>(true, true))), ~u_input.a.x, arg_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(475f)), global2.a)) * -440f)));
    var var_1 = Struct_2(func_2().a, any(vec2<bool>(!any(arg_0.b), global2.b)), 66485u);
    var var_2 = func_2();
    var var_3 = reverseBits(vec2<i32>(53807i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(0i, global0.x, 9338i)), vec3<i32>(-50954i, 9650i, u_input.a.x)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zz, vec2<u32>(arg_1.x, 32207u)), ~u_input.b.zy) % 32u)));
    var_3 = firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.a.xy, ~(~firstLeadingBit(global0.yx))));
    return func_3(!select(!vec3<bool>(global2.b, var_1.b, true), select(select(vec3<bool>(var_2.b, global2.b, false), vec3<bool>(true, true, true), vec3<bool>(false, arg_0.b.x, arg_0.b.x)), vec3<bool>(true, true, true), all(vec2<bool>(global2.b, global2.b))), !(!vec3<bool>(var_1.b, var_1.b, false))), func_2(), vec4<f32>(567f, var_1.a, -480f, _wgslsmith_f_op_f32(trunc(var_1.a))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-global2.a);
    let var_1 = Struct_2(global2.a, true, ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.c, global2.c << (global2.c % 32u), global1[_wgslsmith_index_u32(~7121u, 32u)]), 32u)]);
    let var_2 = Struct_1(u_input.a.x, select(vec2<bool>(true, true), !(!(!vec2<bool>(global2.b, var_1.b))), !(global2.b && (var_1.a > var_1.a))), global0.x, 77808u);
    global2 = var_1;
    var var_3 = 30659u;
    return func_4(func_3(!(!select(vec3<bool>(var_1.b, true, global2.b), vec3<bool>(global2.b, global2.b, global2.b), var_1.b)), func_2(), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, var_1.a, 326f, global2.a) + vec4<f32>(global2.a, var_1.a, -360f, var_1.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1414f, var_1.a, global2.a, var_1.a))))))), vec2<u32>(abs(0u), 8931u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 32>();
    var var_0 = func_1();
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1394f, -177f, !all(vec3<bool>(true, global2.b, global2.b)))), global2.a)), !(!global2.b), ~(~func_4(func_4(Struct_1(-1i, var_0.b, -19651i, global2.c), u_input.c.xx), vec2<u32>(45034u, u_input.c.x)).d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global2.a));
}

