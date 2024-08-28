struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
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

var<private> global0: bool = false;

var<private> global1: array<f32, 27>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_0.d, global2.c);
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(global2.e.x, global2.a), 19631u, select(min(min(~arg_0.a, ~19616u), _wgslsmith_mult_u32(~43463u, _wgslsmith_clamp_u32(arg_0.e.x, global2.a, arg_0.e.x))), global2.e.x, !var_0.a), ~countOneBits(~_wgslsmith_mult_u32(global2.a, arg_0.e.x)));
    global0 = global2.d;
    global1 = array<f32, 27>();
    var var_2 = Struct_1(1u ^ ~_wgslsmith_clamp_u32(1u << (arg_0.a % 32u), ~global2.a, arg_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1182f)) * _wgslsmith_f_op_f32(max(818f, global1[_wgslsmith_index_u32(global2.e.x, 27u)]))))), countOneBits(-vec2<i32>(global2.c.x, -60334i)), false, var_1.zy);
    return var_2.e.x;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<bool> {
    let var_0 = ~func_3(Struct_1(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_1, -1549f, false)), -1135f)), min(global2.c, u_input.a.zz & vec2<i32>(-47504i, -18962i)), (true && global2.d) && all(vec3<bool>(global2.d, global2.d, global2.d)), vec2<u32>(global2.a, _wgslsmith_div_u32(29420u, 32573u))));
    var var_1 = select(!vec3<bool>(!global2.d, global2.d, global2.d), vec3<bool>(global2.d, (select(u_input.b.x, 2147483647i, false) & u_input.a.x) >= (1i ^ firstTrailingBit(29525i)), true), !select(vec3<bool>(global2.d, global2.d, any(vec3<bool>(global2.d, global2.d, global2.d))), vec3<bool>(all(vec4<bool>(global2.d, true, global2.d, true)), global2.d, global2.d), vec3<bool>(global2.d, false, !global2.d)));
    let var_2 = func_3(Struct_1(~var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.e.x, 27u)]))), max(vec2<i32>(2147483647i, global2.c.x), u_input.b) & firstTrailingBit(-u_input.a.zx), global2.d && false, vec2<u32>(var_0, select(countOneBits(global2.a), var_0, false))));
    var var_3 = Struct_3(var_1.x, 4294967295u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, global2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-173f, -366f)), var_1.yz)) - vec2<f32>(_wgslsmith_f_op_f32(round(arg_1)), 1000f)))));
    var var_4 = ~select(min(_wgslsmith_dot_vec2_u32(global2.e, firstTrailingBit(vec2<u32>(var_2, var_3.b))), countOneBits(4294967295u)), abs(~var_2), true | (arg_0 <= -206f));
    return vec3<bool>(-abs(-2147483647i) >= global2.c.x, false || var_3.a, true);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(global2.a, _wgslsmith_dot_vec2_u32(global2.e, global2.e)), max(global2.e, global2.e) & global2.e), global2.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(133f + _wgslsmith_f_op_f32(-2575f - global2.b)), -336f), global1[_wgslsmith_index_u32(global2.e.x, 27u)], global2.b) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(373f)), _wgslsmith_f_op_f32(699f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 27u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 27u)] - global1[_wgslsmith_index_u32(var_0.x, 27u)]))))));
    let var_2 = global2.e.x;
    let var_3 = global2.b;
    global0 = global2.d && any(select(!select(vec3<bool>(false, global2.d, false), vec3<bool>(true, global2.d, global2.d), global2.d), select(select(vec3<bool>(false, global2.d, false), vec3<bool>(true, true, global2.d), vec3<bool>(false, global2.d, false)), vec3<bool>(global2.d, global2.d, false), true), func_2(_wgslsmith_f_op_f32(-global2.b), -486f)));
    return Struct_1(~global2.a, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(global2.e.x), 27u)]), -global2.c, !global2.d, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.a.x, u_input.b.x, firstLeadingBit(-1i), max(global2.c.x, -6990i) >> (~2966u % 32u));
    global0 = all(select(select(vec2<bool>(global2.d & global2.d, !global2.d), vec2<bool>(any(vec2<bool>(false, global2.d)), global2.d), true), vec2<bool>(true, false), vec2<bool>(global2.a <= ~93288u, true)));
    let var_1 = func_1(-2147483647i);
    var var_2 = global2.d;
    var var_3 = !(!(!select(vec2<bool>(true, true), func_2(609f, global1[_wgslsmith_index_u32(0u, 27u)]).xx, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.b, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) * _wgslsmith_div_f32(-2128f, -452f))), -640f));
}

