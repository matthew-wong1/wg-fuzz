struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: i32 = 21849i;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 32>;

var<private> global4: array<Struct_2, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = vec2<bool>(any(select(vec4<bool>(any(vec4<bool>(true, global2.c, true, global2.b)), global2.b, global2.b, false), vec4<bool>(global2.b, !global2.b, false, true), global2.a != _wgslsmith_dot_vec3_i32(u_input.a.ywx, vec3<i32>(u_input.c, 18616i, 62238i)))), select(true, any(select(vec4<bool>(global2.c, global2.b, false, true), vec4<bool>(true, false, true, global2.b), true)), !(true && global2.c)) && false);
    global2 = Struct_1(-_wgslsmith_clamp_i32(52469i, u_input.a.x, u_input.a.x), global2.c, var_0.x);
    return _wgslsmith_add_u32(min(~abs(arg_0.x), u_input.e.x), u_input.e.x) | 24156u;
}

fn func_2() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(16743u, u_input.d.x), ~(func_3(vec2<u32>(u_input.e.x, 4294967295u)) ^ u_input.e.x), true) & _wgslsmith_sub_u32(~56348u, reverseBits(_wgslsmith_add_u32(u_input.b, 40898u))), 32u)];
    var var_1 = -1691f;
    let var_2 = Struct_1(var_0.a, false, true);
    var var_3 = firstLeadingBit(min(1u, u_input.d.x));
    let var_4 = u_input.a;
    return -1000f;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = countOneBits(-global2.a & ~max(global2.a, 2147483647i)) | global2.a;
    var var_1 = u_input.e.x;
    global1 = firstLeadingBit(~var_0);
    var var_2 = any(vec3<bool>(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_div_f32(147f, -890f))) == arg_0.x, !global2.c & !any(vec3<bool>(false, true, true)), global2.b));
    var var_3 = 4294967295u;
    return Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-2223f + -515f), _wgslsmith_f_op_f32(select(-1542f, arg_0.x, true)))), vec4<f32>(_wgslsmith_f_op_f32(min(-715f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(2114f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(448f, 602f)) - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * 1548f)))))), ~u_input.a.wyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    let var_1 = abs(vec4<u32>(45210u, 23352u, 4294967295u, 42990u));
    let var_2 = global3[_wgslsmith_index_u32(~countOneBits(u_input.b), 32u)];
    let var_3 = var_2.b;
    var_0 = true;
    let var_4 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(140f + 411f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-758f, 940f) + _wgslsmith_f_op_f32(f32(-1f) * -928f)), _wgslsmith_div_f32(-1624f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global4 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.zwy);
}

