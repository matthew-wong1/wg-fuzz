struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(21504u, 0u), true, vec2<u32>(4294967295u, 3142u), vec3<bool>(true, false, false), vec4<bool>(true, true, true, false));

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(0i, 44143i), vec2<i32>(-65876i, 2147483647i), vec2<i32>(1i, 68910i), vec2<i32>(8315i, i32(-2147483648)), vec2<i32>(10590i, 13401i), vec2<i32>(35783i, 6512i), vec2<i32>(-1i, -1i), vec2<i32>(36306i, -70666i), vec2<i32>(7805i, 1i), vec2<i32>(0i, 12179i), vec2<i32>(19654i, 51937i), vec2<i32>(21426i, 0i), vec2<i32>(11390i, -55807i), vec2<i32>(99672i, 2147483647i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 14>();
    let var_0 = Struct_1(vec2<u32>(~(~(~global0.a.x)), 0u >> (~u_input.b.x % 32u)), min(reverseBits(80980u), 0u) >= abs(~(~global0.c.x)), ~(firstTrailingBit(~vec2<u32>(0u, 4294967295u)) | u_input.a), !global0.d, select(vec4<bool>(false, true, false, true), !global0.e, !(_wgslsmith_sub_i32(u_input.c, u_input.c) <= _wgslsmith_mult_i32(u_input.c, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1000f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -1041f), vec2<f32>(-1030f, 486f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2484f, -179f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1759f, -965f), vec2<f32>(-139f, -980f))))))), ~u_input.e);
}

