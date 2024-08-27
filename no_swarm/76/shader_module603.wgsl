struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_4 = Struct_4(Struct_2(139f));

var<private> global2: array<vec3<f32>, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> bool {
    var var_0 = arg_0;
    var_0 = arg_0;
    global2 = array<vec3<f32>, 24>();
    var_0 = arg_0;
    global1 = Struct_4(Struct_2(var_0.a.a));
    return true;
}

fn func_2() -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 71096u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 10214u, 0u)) << ((vec4<u32>(1u, u_input.a.x, 28356u, 4294967295u) & vec4<u32>(9940u, 1u, u_input.a.x, 58179u)) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u))), u_input.a.x), 21u)];
    let var_1 = 100126u;
    var var_2 = u_input.a.x;
    global1 = Struct_4(global1.a);
    global1 = Struct_4(global1.a);
    return select(select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), 17699u < var_1), vec2<bool>(all(vec4<bool>(true, false, true, false)), true), vec2<bool>(-432f != global1.a.a, true))), select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !(4294967295u <= var_1)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), true), func_3(Struct_4(global1.a), vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    var var_0 = Struct_3(-1243f, Struct_1(_wgslsmith_sub_u32(max(4294967295u, 7749u), ~u_input.a.x) >> (_wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(0u)) % 32u), true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a))));
    global0 = array<i32, 21>();
    global1 = Struct_4(var_0.c);
    var var_1 = select(!vec2<bool>(!all(vec2<bool>(var_0.b.b, true)), ~global0[_wgslsmith_index_u32(u_input.a.x, 21u)] >= 22984i), func_2(), var_0.b.b);
    var var_2 = select(vec2<bool>(!func_3(Struct_4(Struct_2(global1.a.a)), select(vec4<bool>(var_1.x, false, true, var_0.b.b), vec4<bool>(var_1.x, false, true, var_1.x), false)), all(select(!vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_0.b.b, var_1.x, true), any(vec4<bool>(false, var_1.x, false, true))))), func_2(), select(vec2<bool>(var_0.b.b, var_0.b.b | true), vec2<bool>(!func_3(Struct_4(Struct_2(arg_0.x)), vec4<bool>(var_1.x, false, true, false)), true), !var_1.x));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a.a, global1.a.a)) * 691f), global1.a.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.a, -1100f)) + -575f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.a))), _wgslsmith_f_op_f32(-global1.a.a)), global0[_wgslsmith_index_u32(~u_input.a.x & abs(1268u), 21u)]);
    let var_1 = !select(vec3<bool>(func_3(Struct_4(global1.a), vec4<bool>(true, true, true, true)), true, true), vec3<bool>(any(vec4<bool>(true, false, false, false)), !any(vec2<bool>(false, false)), false & any(vec2<bool>(false, true))), func_2().x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.a)) + -2466f);
    let var_3 = Struct_3(global1.a.a, Struct_1(~u_input.a.x, false), Struct_2(_wgslsmith_f_op_f32(max(-314f, -641f))));
    global2 = array<vec3<f32>, 24>();
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.c.a * 482f)));
    let var_4 = u_input.d;
    global0 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a.x, var_3.b.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.a, var_3.c.a), vec2<f32>(951f, global1.a.a), var_1.zz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.a, global1.a.a) - vec2<f32>(-1130f, -1628f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1769f, -1048f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1100f, -765f) - vec2<f32>(global1.a.a, global1.a.a))))))));
}

