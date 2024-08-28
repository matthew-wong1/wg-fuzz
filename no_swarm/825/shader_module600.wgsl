struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)));

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = any(!select(vec3<bool>(true, global0.a.x | true, true), vec3<bool>(true, all(vec2<bool>(true, global0.a.x)), false), global0.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1875f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1016f * 780f)), _wgslsmith_div_f32(598f, -486f), -219f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, -1949f, 238f, -927f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-576f, -445f, 295f, 107f))))));
    let var_2 = Struct_1(!arg_2.zw);
    var var_3 = var_2;
    return -1000f;
}

fn func_2() -> Struct_1 {
    var var_0 = select(countOneBits(-13075i), u_input.a.x, global0.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1123f, 566f), vec2<f32>(578f, 115f))))))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, global0.a.x, true), vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -253f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1168f, 118f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(242f, -656f) + vec2<f32>(2255f, 449f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-732f, 576f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1218f, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(708f, var_1.x, 581f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1132f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-374f, var_1.x) - _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + -2225f), _wgslsmith_f_op_f32(-2115f + -1000f))));
    var var_3 = max(abs(vec4<u32>(99149u, firstLeadingBit(0u), u_input.b.x, 1u)), ~(~vec4<u32>(abs(u_input.c), ~42156u, u_input.c, 1u)));
    var var_4 = ~min(vec4<u32>(var_3.x, 84515u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.x, 53549u, u_input.b.x, 0u), vec4<u32>(1u, var_3.x, 75132u, 31570u) & vec4<u32>(4294967295u, 1u, var_3.x, 57716u)), ~(~59914u)), ~(~vec4<u32>(var_3.x, 50278u, var_3.x, 1u)));
    return Struct_1(global0.a);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(!select(global0.a, vec2<bool>(true, all(vec3<bool>(global0.a.x, global0.a.x, false))), true));
    let var_0 = Struct_1(global0.a);
    global3 = array<Struct_1, 17>();
    let var_1 = vec3<u32>(~(1u >> (u_input.c % 32u)), u_input.b.x, u_input.c);
    var var_2 = global3[_wgslsmith_index_u32(select(_wgslsmith_add_u32(u_input.c, ~(~_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(1u, var_1.x, var_1.x)))), _wgslsmith_sub_u32(~(reverseBits(u_input.c) >> (select(1u, var_1.x, var_0.a.x) % 32u)), ~(~_wgslsmith_add_u32(631u, var_1.x))), false), 17u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -528f;
    let var_0 = 93223u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1400f, 293f, true)));
    global4 = _wgslsmith_f_op_f32(-var_1);
    global3 = array<Struct_1, 17>();
    var var_2 = Struct_1(!select(global0.a, select(select(vec2<bool>(true, true), vec2<bool>(false, global0.a.x), vec2<bool>(global0.a.x, global0.a.x)), select(global0.a, vec2<bool>(global0.a.x, true), vec2<bool>(false, false)), true), any(global0.a) & true));
    var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 1090u, 0u) | ((_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(u_input.c, var_0)) | var_0) & 1u), 15u)];
    global0 = func_1();
    var var_3 = u_input.d.x & -u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(64511u, countOneBits(firstTrailingBit(~(49213u >> (u_input.c % 32u)))), u_input.c, ~(vec3<u32>(var_0, _wgslsmith_sub_u32(u_input.b.x, 78774u), var_0 & 20369u) << (~_wgslsmith_add_vec3_u32(vec3<u32>(8431u, u_input.c, 0u), vec3<u32>(52465u, var_0, u_input.b.x)) % vec3<u32>(32u))));
}

