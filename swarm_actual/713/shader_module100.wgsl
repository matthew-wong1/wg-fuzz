struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global0.x), ~(reverseBits(vec2<u32>(0u, global0.x)) >> (~vec2<u32>(global0.x, 12333u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-209f, -802f, -1502f, -464f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, 1382f, -695f, 101f)) * _wgslsmith_div_vec4_f32(vec4<f32>(656f, 539f, 352f, -872f), vec4<f32>(-411f, -1135f, -1000f, -135f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-936f, -264f, -865f, -1341f) - vec4<f32>(552f, 555f, 2127f, -1000f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1219f, -539f, -1830f, 1659f)))))))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(reverseBits(u_input.d), func_1(vec4<f32>(-310f, -520f, 591f, -2381f))), ~firstTrailingBit(u_input.b.x)), 46861u), -37151i);
}

