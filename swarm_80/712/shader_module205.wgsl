struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 21>;

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_u32(49161u, ~u_input.b.x);
    global2 = array<vec2<bool>, 6>();
    var var_0 = vec3<i32>(global1[_wgslsmith_index_u32(~5955u, 21u)], -40844i, 0i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1153f)))), 1249f, _wgslsmith_f_op_f32(214f - _wgslsmith_f_op_f32(f32(-1f) * -1077f)))));
    var_1 = vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)) * -1036f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, 559f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, var_1.x, var_1.x)))))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x), vec4<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(u_input.b.x, 4294967295u))), u_input.d.xz), u_input.d.x, reverseBits(~(~u_input.a))));
}

