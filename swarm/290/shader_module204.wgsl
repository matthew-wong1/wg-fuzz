struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 5919i;

var<private> global1: array<vec4<u32>, 21>;

var<private> global2: Struct_1 = Struct_1(-209f);

var<private> global3: array<Struct_3, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c), firstLeadingBit(reverseBits(u_input.c)), u_input.c) ^ ~(~(u_input.c << (firstLeadingBit(vec2<u32>(4294967295u, 3221u)) % vec2<u32>(32u))));
    let var_1 = vec3<bool>(true, any(!vec4<bool>(all(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true)), true, true)), all(vec2<bool>(any(vec3<bool>(false, false, false)), true)));
    global3 = array<Struct_3, 19>();
    global3 = array<Struct_3, 19>();
    let var_2 = vec2<f32>(-564f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global2.a)))));
    return 988f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_3(arg_1);
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_3())));
    var var_2 = arg_1;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f * _wgslsmith_div_f32(arg_1.a, global2.a))))), 1000f, _wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(func_3()));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 744f) * _wgslsmith_f_op_f32(abs(1149f))) + 689f));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> vec2<bool> {
    global2 = func_2(arg_2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.a.a, global2.a)), _wgslsmith_f_op_f32(step(arg_1.a.a, arg_1.a.a))))));
    let var_0 = arg_0;
    var var_1 = vec4<bool>(any(select(vec3<bool>(true, true, all(vec2<bool>(false, var_0))), vec3<bool>(true, !var_0, true), select(!vec3<bool>(false, var_0, false), vec3<bool>(true, false, false), true))), false, true, !all(!select(vec4<bool>(false, false, arg_0, false), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(var_0, false, false, var_0))));
    global2 = func_2(func_2(func_2(arg_2.a, arg_1.a), Struct_1(1f)), func_2(arg_2.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1017f, global2.a)) - _wgslsmith_f_op_f32(select(arg_1.a.a, arg_2.a.a, var_0))))));
    var var_2 = any(!var_1.xw);
    return !(!(!vec2<bool>(arg_0, var_0)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_4(func_2(arg_1.a, func_2(arg_1.a, Struct_1(-1773f))), vec2<i32>(~(u_input.a.x & u_input.d) & reverseBits(u_input.a.x ^ 0i), ~firstTrailingBit(~u_input.a.x)));
    var var_1 = !(!select(arg_0, true, select(false, any(arg_2), all(vec2<bool>(false, false)))));
    var var_2 = arg_2;
    let var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 37389u), vec4<bool>(false, arg_0, arg_0, true)), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x, ~23090u), 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)])), 19u)];
    var var_4 = vec2<bool>(var_2.x, !arg_2.x);
    return _wgslsmith_f_op_f32(select(-302f, _wgslsmith_f_op_f32(-func_2(Struct_1(global2.a), var_0.a).a), true)) <= _wgslsmith_f_op_f32(arg_1.a.a - -745f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(!any(vec4<bool>(true, true, true, true))), func_4(true, global3[_wgslsmith_index_u32(u_input.c.x, 19u)], select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(true, false, true, true))), func_1(all(vec4<bool>(false, false, true, false)), Struct_3(Struct_1(294f)), Struct_3(Struct_1(global2.a))))), select(any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true)), false, false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global2.a) + _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -182f)));
    global2 = func_2(Struct_1(var_1.a), Struct_1(_wgslsmith_f_op_f32(select(-2616f, global2.a, false || var_0.x))));
    global3 = array<Struct_3, 19>();
    let var_2 = global1[_wgslsmith_index_u32(~(~1u), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a, var_1.a)) - _wgslsmith_f_op_f32(step(1158f, -327f))) - _wgslsmith_f_op_f32(-1702f - _wgslsmith_f_op_f32(trunc(global2.a))))), global2.a, 16570i);
}

