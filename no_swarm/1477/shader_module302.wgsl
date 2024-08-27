struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(1919f, 1049f), vec2<f32>(-648f, -405f), vec2<f32>(-1483f, 1399f), vec2<f32>(983f, -1264f), vec2<f32>(1614f, -925f), vec2<f32>(1475f, 1558f), vec2<f32>(-178f, 1000f), vec2<f32>(-2595f, 650f), vec2<f32>(225f, -468f), vec2<f32>(-2140f, -687f), vec2<f32>(1328f, -267f), vec2<f32>(-187f, -1316f), vec2<f32>(-2119f, 1000f), vec2<f32>(674f, -161f), vec2<f32>(833f, -527f), vec2<f32>(-502f, -1120f), vec2<f32>(956f, -1143f), vec2<f32>(114f, 1168f), vec2<f32>(760f, 411f), vec2<f32>(-2017f, 1156f), vec2<f32>(1275f, 1336f), vec2<f32>(-1509f, -1000f), vec2<f32>(657f, -227f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 23>();
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(3655u << (_wgslsmith_sub_u32(18203u, 1u & _wgslsmith_sub_u32(0u, u_input.a)) % 32u)), 23u)];
    global0 = Struct_1(true);
    let var_1 = ~(~(4294967295u ^ u_input.a));
    var var_2 = Struct_1(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_1, ~54287u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(680f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -639f))) - 451f))), vec4<u32>(_wgslsmith_div_u32(~var_1, 1u) >> ((firstTrailingBit(1u) ^ 0u) % 32u), reverseBits(max(u_input.a, 1u)), ~4294967295u >> (u_input.a % 32u), ~var_1));
}

