struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, true), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, false, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> u32 {
    var var_0 = u_input.b.xx;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(630f - _wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1617f)) - _wgslsmith_f_op_f32(-1384f * -965f)))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, 815f)));
    let var_2 = vec4<u32>(abs(u_input.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, ~u_input.c.x), select(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 4294967295u), false) >> (countOneBits(vec3<u32>(91376u, u_input.c.x, 4294967295u)) % vec3<u32>(32u))) % 32u), _wgslsmith_sub_u32(14276u, u_input.c.x), u_input.c.x, ~(~(0u & (u_input.c.x ^ u_input.c.x))));
    let var_3 = global0[_wgslsmith_index_u32(~firstLeadingBit(reverseBits(15012u)) | ~var_2.x, 24u)];
    global0 = array<Struct_1, 24>();
    var_0 = -1199f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, var_1, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, var_1, 983f))))), _wgslsmith_sub_u32(func_1(), min(~(~u_input.c.x), var_2.x)));
}

