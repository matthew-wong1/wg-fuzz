struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: bool = true;

var<private> global2: array<Struct_3, 15>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = false;
    var var_0 = Struct_3(!vec4<bool>(all(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, true, false), vec3<bool>(arg_0, false, arg_0))), arg_0, any(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true), false)), all(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)))), Struct_1(arg_0, false, reverseBits(-1i) >= u_input.e));
    let var_1 = var_0.a.xyw;
    var var_2 = vec2<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 11176u) << (firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13274u, 17u)], 17u)], 17u)]) % 32u), 17u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)] % 32u), ~(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44634u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)] >> (global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)]), 17u)] % 32u))), ~global0[_wgslsmith_index_u32(4294967295u, 17u)]);
    return 1f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(!(!vec4<bool>(false, true, any(vec2<bool>(false, false)), false)), Struct_1(true, all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), true)), true));
    global1 = false;
    global0 = array<u32, 17>();
    global1 = var_0.b.a;
    let var_1 = Struct_2(Struct_1(var_0.b.c, var_0.a.x, var_0.a.x), _wgslsmith_clamp_vec2_u32(max(~(vec2<u32>(50224u, 1u) | vec2<u32>(56146u, global0[_wgslsmith_index_u32(41445u, 17u)])), ~(~vec2<u32>(8729u, 36616u))), max(firstLeadingBit(abs(vec2<u32>(27127u, global0[_wgslsmith_index_u32(28029u, 17u)]))), ~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75816u, 17u)], 17u)]))), countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(51098u, global0[_wgslsmith_index_u32(76786u, 17u)]), vec2<u32>(0u, global0[_wgslsmith_index_u32(63475u, 17u)])))), vec4<f32>(_wgslsmith_f_op_f32(-201f * -448f), _wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-168f - 436f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -619f), -185f))), 1i, var_0.b);
    return Struct_2(Struct_1(!(true | (true == var_0.b.b)), var_1.a.a, (_wgslsmith_dot_vec3_u32(vec3<u32>(17228u, var_1.b.x, 32028u), vec3<u32>(1u, var_1.b.x, 57680u)) >= 4294967295u) || any(!var_0.a.wy)), ~var_1.b, var_1.c, ~u_input.b.x, var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 17>();
    var var_0 = ~19245u | func_2().b.x;
    var var_1 = ~arg_0.b.x;
    var_1 = _wgslsmith_sub_u32(~(~46756u & arg_0.b.x), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(firstLeadingBit(arg_0.b.x), _wgslsmith_add_u32(1u, arg_0.b.x)), 17u)]);
    global2 = array<Struct_3, 15>();
    return arg_0.a;
}

fn func_1() -> bool {
    global0 = array<u32, 17>();
    var var_0 = func_4(func_2(), func_2().a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-910f, 417f, var_0.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f * 189f)))));
    let var_2 = vec3<u32>(max(~_wgslsmith_add_u32(1u, 967u), ~(~77008u)), global0[_wgslsmith_index_u32(0u, 17u)], 44272u);
    global0 = array<u32, 17>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    let var_0 = _wgslsmith_mod_vec3_i32(-u_input.b, u_input.b);
    global1 = true;
    let var_1 = false;
    var var_2 = select(select(vec2<bool>(!(!var_1), !(true | var_1)), vec2<bool>(true, true), vec2<bool>(var_1 || (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(100065u, 17u)], 17u)] > global0[_wgslsmith_index_u32(0u, 17u)]), false)), select(!select(select(vec2<bool>(var_1, true), vec2<bool>(false, false), var_1), vec2<bool>(false, var_1), vec2<bool>(false, var_1)), select(vec2<bool>(true, true), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), !vec2<bool>(var_1, true)), var_1), !(!(var_1 != var_1))), select(!vec2<bool>(var_1, true), !vec2<bool>(true, func_1()), select(select(vec2<bool>(false, true), !vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), select(select(vec2<bool>(var_1, false), vec2<bool>(var_1, false), vec2<bool>(var_1, true)), vec2<bool>(var_1, var_1), var_1), vec2<bool>(var_1, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(min(vec3<i32>(u_input.c, -1605i, 1i), -vec3<i32>(0i, u_input.b.x, var_0.x)) | ~(-u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-901f, -1538f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + 674f))))));
}

