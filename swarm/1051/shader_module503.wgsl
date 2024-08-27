struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, false, true, false, false, true, true, true);

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(8612u, 1u, vec4<i32>(0i, i32(-2147483648), 58469i, i32(-2147483648)));

var<private> global3: f32 = 2473f;

var<private> global4: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-828f, 830f), vec2<f32>(-776f, 208f), vec2<f32>(332f, -470f), vec2<f32>(-788f, 964f), vec2<f32>(-866f, -1000f), vec2<f32>(563f, -103f), vec2<f32>(1279f, 594f), vec2<f32>(-1259f, -231f), vec2<f32>(-163f, 1183f), vec2<f32>(-198f, 1000f), vec2<f32>(-1600f, 849f), vec2<f32>(1162f, -2340f), vec2<f32>(-400f, -138f), vec2<f32>(-653f, 1000f), vec2<f32>(2073f, 462f), vec2<f32>(-193f, -881f), vec2<f32>(-752f, -2090f), vec2<f32>(-406f, 1379f), vec2<f32>(300f, -658f), vec2<f32>(111f, 364f), vec2<f32>(1000f, 174f), vec2<f32>(142f, 725f), vec2<f32>(-1360f, -454f), vec2<f32>(-1690f, 313f), vec2<f32>(-1991f, -2093f), vec2<f32>(-717f, -1217f), vec2<f32>(469f, -1000f), vec2<f32>(-213f, 1000f), vec2<f32>(802f, 389f), vec2<f32>(-748f, 214f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_i32(u_input.c.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~select(abs(vec4<u32>(59035u, global2.a, u_input.b, 35229u)), vec4<u32>(u_input.d.x, 4294967295u, global2.b, global2.b) << (vec4<u32>(u_input.a.x, 1u, global2.a, u_input.b) % vec4<u32>(32u)), select(vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 9u)], true, global0[_wgslsmith_index_u32(global2.b, 9u)], global0[_wgslsmith_index_u32(global2.a, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], false, true, global0[_wgslsmith_index_u32(global2.a, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(96337u, 9u)], true, false))), vec4<u32>(abs(reverseBits(1u)), global2.a, global2.a, max(abs(0u), ~global2.b)), max(_wgslsmith_div_vec4_u32(vec4<u32>(128927u, global2.b, global2.b, 0u), vec4<u32>(12667u, u_input.a.x, 4294967295u, 8501u)), vec4<u32>(0u, u_input.d.x, u_input.b, 1u)) | (vec4<u32>(1u, global2.a, u_input.a.x, global2.a) | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 15949u, u_input.a.x, u_input.b), vec4<u32>(u_input.b, 0u, global2.a, global2.b)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, 485f, -1012f, -1539f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 740f, -535f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1489f, -1839f, 844f, -1557f) * vec4<f32>(1000f, 376f, 698f, -631f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -947f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(220f * -132f), 197f)), _wgslsmith_f_op_f32(1f * 2140f), any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 9u)], global0[_wgslsmith_index_u32(28986u, 9u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(6487u, 9u)], true), false), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true, global0[_wgslsmith_index_u32(44399u, 9u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], false, true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 9u)], false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(27236u, 9u)])))))));
}

