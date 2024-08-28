struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<f32>(177f, -1393f, -1958f), Struct_1(i32(-2147483648), false), Struct_1(-77403i, false), vec2<u32>(12184u, 0u)), Struct_2(vec3<f32>(598f, 837f, -436f), Struct_1(-1i, true), Struct_1(1i, false), vec2<u32>(74968u, 8386u)), Struct_2(vec3<f32>(-330f, -962f, -542f), Struct_1(42073i, true), Struct_1(19741i, true), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<f32>(-2099f, -1266f, -205f), Struct_1(-1i, false), Struct_1(-186i, true), vec2<u32>(80052u, 1u)), Struct_2(vec3<f32>(501f, 438f, 2240f), Struct_1(61655i, true), Struct_1(0i, false), vec2<u32>(4294967295u, 32817u)), Struct_2(vec3<f32>(594f, 1444f, 1264f), Struct_1(19066i, false), Struct_1(-1720i, true), vec2<u32>(3024u, 4294967295u)), Struct_2(vec3<f32>(467f, 929f, 1174f), Struct_1(0i, true), Struct_1(33738i, true), vec2<u32>(74928u, 4294967295u)), Struct_2(vec3<f32>(-490f, -349f, 1000f), Struct_1(-1i, false), Struct_1(13004i, true), vec2<u32>(661u, 22866u)), Struct_2(vec3<f32>(733f, -388f, -1000f), Struct_1(44253i, false), Struct_1(-56118i, true), vec2<u32>(0u, 0u)), Struct_2(vec3<f32>(439f, 441f, 1292f), Struct_1(1i, false), Struct_1(-1i, false), vec2<u32>(54471u, 47264u)));

var<private> global4: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.wz), _wgslsmith_div_vec2_u32(max(firstTrailingBit(u_input.a.zy), u_input.a.xy & countOneBits(u_input.a.xw)), vec2<u32>(u_input.a.x, 726u))), 18u)];
    var var_1 = global1.b;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(u_input.a.x, 15392u, max(0u, 20213u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -837f))), 1118f, -476f, 1868f)));
}

