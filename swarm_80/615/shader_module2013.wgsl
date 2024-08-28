struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(vec4<i32>(14810i, 1i, 1i, -5223i)), Struct_5(vec4<i32>(13066i, 75806i, -5545i, 1i)), Struct_5(vec4<i32>(3313i, 0i, 2147483647i, 2147483647i)), Struct_5(vec4<i32>(-20441i, 10174i, -50740i, 1i)), Struct_5(vec4<i32>(-1i, 0i, 127i, i32(-2147483648))), Struct_5(vec4<i32>(0i, -7111i, -1i, -57822i)), Struct_5(vec4<i32>(2147483647i, 49459i, 881i, 2147483647i)), Struct_5(vec4<i32>(2147483647i, 38660i, -46774i, -23319i)), Struct_5(vec4<i32>(-4785i, -35963i, i32(-2147483648), 1i)), Struct_5(vec4<i32>(2147483647i, 2784i, 0i, 26244i)), Struct_5(vec4<i32>(2147483647i, 16218i, 1i, 27137i)), Struct_5(vec4<i32>(-13519i, -24138i, 1798i, 19677i)), Struct_5(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 0i)), Struct_5(vec4<i32>(0i, 50235i, 28813i, -2304i)), Struct_5(vec4<i32>(i32(-2147483648), 1i, 0i, 1i)), Struct_5(vec4<i32>(0i, 1i, -4839i, -14296i)), Struct_5(vec4<i32>(i32(-2147483648), 33547i, -1i, i32(-2147483648))), Struct_5(vec4<i32>(1i, 1i, 37841i, -52784i)), Struct_5(vec4<i32>(0i, -66314i, -28129i, 1i)), Struct_5(vec4<i32>(-32166i, 2147483647i, -245i, 42490i)));

var<private> global2: array<vec2<u32>, 21>;

var<private> global3: bool = true;

var<private> global4: f32 = 1517f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(-(~u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1063f, _wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(select(-840f, -1997f, false))), _wgslsmith_f_op_f32(1299f - 1000f), 1f)));
    global1 = array<Struct_5, 20>();
    var var_2 = var_0;
    let var_3 = false;
    let var_4 = ~(~firstTrailingBit(1u));
    let var_5 = 626f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

