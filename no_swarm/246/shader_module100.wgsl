struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-1000f, 1082f, -686f, -438f, 995f, 460f, -1168f, 515f, -1582f, 757f, -1154f, 191f, -402f, 406f, -1497f, 958f, -664f, 131f, -587f, 1000f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = array<f32, 20>();
    let var_1 = any(vec3<bool>(true, true, true));
    global0 = array<f32, 20>();
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_div_u32(42512u, 16803u) & ~u_input.c), u_input.c), vec2<u32>(~var_0, var_0));
    let var_3 = var_0;
    global0 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.b, u_input.b), -1892f, ~_wgslsmith_add_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(8374u, var_3, 4294967295u, 1u))), 0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-947f, 1511f), _wgslsmith_f_op_f32(max(-1734f, 792f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] * 140f))), 1123f)));
}

