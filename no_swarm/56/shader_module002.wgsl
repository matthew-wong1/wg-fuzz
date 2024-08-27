struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec3<f32>(-1419f, -612f, -663f)), Struct_3(vec3<f32>(-1000f, 111f, -541f)), Struct_3(vec3<f32>(1305f, -1000f, 1561f)), Struct_3(vec3<f32>(966f, -1754f, 2248f)), Struct_3(vec3<f32>(1000f, -2558f, -316f)), Struct_3(vec3<f32>(-197f, 1000f, -1000f)), Struct_3(vec3<f32>(228f, -647f, -839f)), Struct_3(vec3<f32>(371f, 870f, -497f)), Struct_3(vec3<f32>(-470f, 1070f, -511f)), Struct_3(vec3<f32>(621f, 1000f, -1162f)), Struct_3(vec3<f32>(905f, -1560f, 486f)), Struct_3(vec3<f32>(-1422f, -1621f, 847f)), Struct_3(vec3<f32>(1000f, 1620f, 303f)), Struct_3(vec3<f32>(366f, -1560f, 1000f)), Struct_3(vec3<f32>(-590f, -459f, 455f)), Struct_3(vec3<f32>(939f, -1000f, 235f)), Struct_3(vec3<f32>(-261f, 395f, 908f)), Struct_3(vec3<f32>(-1713f, 1868f, 2547f)), Struct_3(vec3<f32>(985f, -663f, 2000f)), Struct_3(vec3<f32>(-188f, 221f, 1422f)), Struct_3(vec3<f32>(166f, 328f, -751f)), Struct_3(vec3<f32>(243f, -418f, 218f)), Struct_3(vec3<f32>(-599f, 725f, -1381f)), Struct_3(vec3<f32>(-683f, -124f, -1076f)), Struct_3(vec3<f32>(1211f, -560f, 1595f)), Struct_3(vec3<f32>(521f, -378f, -779f)), Struct_3(vec3<f32>(-315f, 168f, -1282f)), Struct_3(vec3<f32>(-1000f, -977f, -121f)));

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<f32, 2>;

var<private> global3: array<Struct_3, 4>;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 16>();
    var var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1313f - _wgslsmith_f_op_f32(-1613f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f + 956f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 2u)])), -842f, global2[_wgslsmith_index_u32(4294967295u, 2u)], -773f)), max(vec4<u32>(max(u_input.a.x, 4294967295u), _wgslsmith_sub_u32(reverseBits(var_0.x), var_0.x), _wgslsmith_sub_u32(~16956u, var_0.x), u_input.a.x), vec4<u32>(firstTrailingBit(1u), countOneBits(4294967295u), firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x)), ~(u_input.a.x ^ u_input.a.x))));
}

