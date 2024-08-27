struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
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

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 11>;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-1145f));

var<private> global4: array<vec4<u32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<u32> {
    global0 = array<vec3<i32>, 20>();
    global3 = array<Struct_1, 1>();
    let var_0 = Struct_1(arg_0.x);
    var var_1 = 0i;
    global4 = array<vec4<u32>, 18>();
    return vec3<u32>(~(~(~(~103564u))), _wgslsmith_mult_u32(1u, 4294967295u), 44162u);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(44499u, 1u)];
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~49145u, 0u), 1u)];
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))));
    global1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-827f, arg_0.x)), global3[_wgslsmith_index_u32(reverseBits(4294967295u), 1u)])), vec3<u32>(~_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(60023u, 18u)], global4[_wgslsmith_index_u32(4294967295u, 18u)]), ~1u, firstLeadingBit(reverseBits(12848u)))), 1u)];
    let var_2 = any(vec4<bool>(true, true, true, true));
    return ~(~countOneBits(~87027u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> u32 {
    global2 = array<vec2<f32>, 11>();
    global1 = global3[_wgslsmith_index_u32(countOneBits(arg_2), 1u)];
    global2 = array<vec2<f32>, 11>();
    global3 = array<Struct_1, 1>();
    var var_0 = arg_1.x;
    return _wgslsmith_sub_u32(~arg_2, arg_2 >> (_wgslsmith_mod_u32(arg_2, arg_2) % 32u));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    global3 = array<Struct_1, 1>();
    global0 = array<vec3<i32>, 20>();
    var var_0 = arg_1;
    global4 = array<vec4<u32>, 18>();
    var_0 = Struct_1(arg_1.a);
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(448f + global1.a), _wgslsmith_f_op_f32(-global1.a)));
}

fn func_1() -> StorageBuffer {
    let var_0 = 2209f;
    let var_1 = global4[_wgslsmith_index_u32(~(~(~0u)), 18u)];
    global2 = array<vec2<f32>, 11>();
    global0 = array<vec3<i32>, 20>();
    global4 = array<vec4<u32>, 18>();
    return func_5(_wgslsmith_sub_vec2_u32(var_1.xz, select(vec2<u32>(1u, var_1.x) | ~vec2<u32>(var_1.x, 4294967295u), var_1.yw, !select(false, true, true))), Struct_1(global1.a), func_4(Struct_1(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(select(-724f, var_0, true)))), !vec3<bool>(global1.a > -620f, any(vec2<bool>(false, true)), true), max(var_1.x, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 516f, global1.a) * vec3<f32>(var_0, var_0, 291f)))), global3[_wgslsmith_index_u32(var_1.x, 1u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

