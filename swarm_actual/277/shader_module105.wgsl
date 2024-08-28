struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yww;
    global0 = array<i32, 2>();
    var_0 = vec3<i32>(reverseBits(global1.x), -25284i, global1.x);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -387f);
    global1 = vec2<i32>(~(-44119i), u_input.b.x);
    global0 = array<i32, 2>();
    var var_2 = abs(firstTrailingBit(-2147483647i));
    let var_3 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(1938f + var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_f32(-670f * _wgslsmith_f_op_f32(exp2(var_1)))), -1731f, 8092u >> (~(~reverseBits(0u)) % 32u));
}

