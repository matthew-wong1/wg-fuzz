struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 17>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec3<u32> {
    return vec3<u32>(u_input.c, u_input.c, _wgslsmith_mult_u32(~0u ^ ~(u_input.c ^ u_input.c), ~max(1u, 15873u ^ u_input.c)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    return func_3(vec3<i32>(1i, _wgslsmith_mult_i32(-_wgslsmith_div_i32(28150i, 30379i), select(u_input.b, -2147483647i, true)), 1i), -2048f);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    return 1495f;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(46761u, u_input.c, 510u, 0u), countOneBits(vec4<u32>(15841u, u_input.c, 4294967295u, u_input.c))), Struct_1(_wgslsmith_f_op_f32(609f - -338f), _wgslsmith_dot_vec4_u32(vec4<u32>(37805u, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, 14294u, 4294967295u)), select(true, global0.b, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(568f, 555f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1718f - _wgslsmith_f_op_f32(round(645f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1550f), 1f))))), select(~(~u_input.c), 38086u, !global0.b), true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1102f, -1327f), vec2<f32>(634f, -269f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 2147f))))))));
    global1 = array<vec2<bool>, 17>();
    global0 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-global0.a, select(~vec2<i32>(0i, 1i), -vec2<i32>(u_input.b, 22646i), !global1[_wgslsmith_index_u32(1u, 17u)])), vec2<i32>(u_input.a, 29166i)), true);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_1();
    var_1 = Struct_1(var_1.d.x, 1u, true, vec2<f32>(_wgslsmith_f_op_f32(round(702f)), -484f));
    var var_2 = u_input.c;
    let var_3 = firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, var_1.b, u_input.c, u_input.c), vec4<u32>(u_input.c, var_0, 4294967295u, var_1.b)), ~vec4<u32>(4294967295u, 4294967295u, u_input.c, 101698u))), var_1.b, global0.a.x, vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(-var_1.d.x), 1158f, -1483f), _wgslsmith_f_op_f32(select(var_1.a, var_1.a, true)));
}

