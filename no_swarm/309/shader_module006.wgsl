struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-30219i, false, 931f, true, vec4<bool>(true, true, false, false)), Struct_1(24765i, false, 2115f, true, vec4<bool>(true, false, false, false)), Struct_1(-1i, false, 1033f, false, vec4<bool>(false, true, false, true)), Struct_1(-43145i, true, 1102f, true, vec4<bool>(true, false, false, false)));

var<private> global2: Struct_1 = Struct_1(-38968i, true, 729f, false, vec4<bool>(false, false, false, true));

var<private> global3: Struct_4 = Struct_4(Struct_3(vec3<f32>(1000f, 943f, 1000f)), vec3<bool>(true, true, false), Struct_3(vec3<f32>(175f, 1947f, -326f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> u32 {
    let var_0 = global2.d;
    let var_1 = global3.a.a;
    global0 = array<Struct_1, 27>();
    return u_input.a;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_3) -> vec3<f32> {
    global3 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global3.a.a)))))), !select(global2.e.yyw, vec3<bool>(true, true, true), vec3<bool>(global3.b.x, global2.b, global3.b.x)), global3.a);
    var var_0 = false;
    global0 = array<Struct_1, 27>();
    var var_1 = select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.x, 1453i), -6477i), arg_1.x, global2.a), -63790i), 13355i, select(true, global2.e.x, true));
    global0 = array<Struct_1, 27>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3.a.a))))));
}

fn func_2() -> bool {
    global3 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(func_3(~u_input.c.x, countOneBits(vec2<i32>(global2.a, u_input.b)), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(81211u, u_input.d)), Struct_3(_wgslsmith_f_op_vec3_f32(-global3.c.a))))), !global3.b, Struct_3(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(0u, vec2<i32>(2147483647i, global2.a), _wgslsmith_mod_u32(33862u, u_input.a), global3.a)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)), -187f)));
    let var_0 = _wgslsmith_f_op_f32(round(-2128f));
    let var_1 = Struct_1(~(-1i), abs(u_input.b) == min(-(~global2.a), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b, -3662i), vec2<i32>(global2.a, -1i), global3.b.zz), ~vec2<i32>(-10814i, 52333i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a.x + global3.a.a.x) + 515f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)) * _wgslsmith_f_op_f32(f32(-1f) * -1848f)))), any(!vec2<bool>(true, !global3.b.x)), global2.e);
    let var_2 = abs(1u);
    global1 = array<Struct_1, 4>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    global1 = array<Struct_1, 4>();
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(51502u, _wgslsmith_add_u32(74279u, func_1())), 27u)];
    global2 = global1[_wgslsmith_index_u32(~(~(~(abs(u_input.d) & max(16617u, u_input.d)))), 4u)];
    let var_1 = func_2();
    global1 = array<Struct_1, 4>();
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, -vec3<i32>(var_0.a, global2.a, _wgslsmith_add_i32(1i, var_0.a) | abs(-5853i)));
}

