struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-659f, -1220f, 556f, 1000f), vec4<f32>(-588f, 394f, 464f, 501f), vec4<f32>(214f, 1406f, -1341f, 852f), vec4<f32>(-358f, 636f, -1410f, 833f), vec4<f32>(1043f, -313f, -617f, -992f), vec4<f32>(-951f, -929f, 759f, -1789f), vec4<f32>(368f, 1197f, -316f, -1119f), vec4<f32>(887f, -687f, 414f, -687f), vec4<f32>(474f, 1502f, -331f, 154f), vec4<f32>(-950f, -448f, -503f, 731f), vec4<f32>(1975f, 1223f, 564f, 1037f), vec4<f32>(797f, -714f, 1000f, 304f), vec4<f32>(-1007f, -225f, 785f, -1000f), vec4<f32>(-166f, 771f, 1074f, 547f), vec4<f32>(1916f, 1311f, 1027f, -1403f), vec4<f32>(-1485f, 701f, 120f, -463f), vec4<f32>(-1465f, 325f, 1046f, -940f), vec4<f32>(240f, -1586f, 567f, 1000f), vec4<f32>(-291f, -132f, -2052f, 270f), vec4<f32>(1914f, -1000f, 751f, 664f));

var<private> global1: vec3<i32>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec4<f32> = vec4<f32>(318f, -670f, 487f, -2243f);

var<private> global4: array<vec2<f32>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global3.wy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zw))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) + _wgslsmith_f_op_f32(floor(global3.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_f32(-607f * _wgslsmith_f_op_f32(-global3.x)))));
}

