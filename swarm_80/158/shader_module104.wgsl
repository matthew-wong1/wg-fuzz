struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(722f, 630f, -431f, -842f));

var<private> global1: array<bool, 9> = array<bool, 9>(false, false, true, true, false, true, false, false, false);

var<private> global2: array<Struct_4, 17>;

var<private> global3: array<i32, 29>;

var<private> global4: i32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(~15548u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(24078u, 80641u), vec2<u32>(4294967295u, 0u), vec2<bool>(global1[_wgslsmith_index_u32(23864u, 9u)], global1[_wgslsmith_index_u32(42300u, 9u)])))), ~vec2<u32>(1u, 1u)), ~vec2<u32>(1u, 1u));
    global3 = array<i32, 29>();
    let var_1 = reverseBits(vec2<u32>(~(4294967295u >> (1u % 32u)), 1u) << (vec2<u32>(~var_0.x, ~min(var_0.x, var_0.x)) % vec2<u32>(32u)));
    var_0 = max(~vec2<u32>(~0u, 1u) >> (~var_1 % vec2<u32>(32u)), ~(~(~vec2<u32>(4294967295u, var_0.x))));
    global2 = array<Struct_4, 17>();
    global4 = 29343i;
    global2 = array<Struct_4, 17>();
    var var_2 = ~_wgslsmith_dot_vec2_u32(var_1, firstLeadingBit(var_1));
    global3 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-939f, _wgslsmith_f_op_f32(f32(-1f) * -865f), 888f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1504f, 1000f, -1140f) + vec3<f32>(354f, -125f, 409f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1194f, 802f, 876f), vec3<f32>(808f, 291f, 272f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, -1000f, -109f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(405f, 207f, 1000f), vec3<f32>(1982f, 909f, -1467f)))))))), max(~vec2<i32>(global3[_wgslsmith_index_u32(reverseBits(59042u), 29u)], max(-13597i, u_input.a)), ~(vec2<i32>(u_input.a, 2147483647i) >> (var_1 % vec2<u32>(32u))) >> (vec2<u32>(~0u, ~11521u) % vec2<u32>(32u))), var_1.x, ~vec3<u32>(~(~var_1.x), ~(~1u), ~(var_0.x & var_1.x)), firstTrailingBit(countOneBits(var_1.x)));
}

