struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(true, vec4<f32>(-1000f, -1295f, -398f, 1294f)), Struct_3(false, vec4<f32>(-1946f, -172f, -462f, 814f)), Struct_3(true, vec4<f32>(-2231f, -663f, -2141f, -312f)), Struct_3(false, vec4<f32>(-968f, -631f, 368f, -1246f)), Struct_3(true, vec4<f32>(-1455f, -1886f, 449f, 119f)), Struct_3(false, vec4<f32>(690f, 1495f, -465f, -470f)), Struct_3(true, vec4<f32>(-1000f, -2851f, 1222f, -1456f)));

var<private> global1: Struct_2 = Struct_2(26864i, Struct_1(2147483647i, vec3<bool>(false, false, true)), Struct_1(22204i, vec3<bool>(false, false, true)));

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(-54232i, Struct_1(20129i, vec3<bool>(true, true, false)), Struct_1(-6790i, vec3<bool>(true, false, true))), Struct_2(i32(-2147483648), Struct_1(-15853i, vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), vec3<bool>(true, false, false))), Struct_2(-1i, Struct_1(i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(0i, vec3<bool>(false, false, true))), Struct_2(-53239i, Struct_1(2147483647i, vec3<bool>(false, true, true)), Struct_1(32052i, vec3<bool>(false, false, true))), Struct_2(-68470i, Struct_1(24401i, vec3<bool>(false, false, true)), Struct_1(1i, vec3<bool>(true, true, false))), Struct_2(22054i, Struct_1(-48372i, vec3<bool>(true, true, false)), Struct_1(-11280i, vec3<bool>(false, false, true))), Struct_2(-1i, Struct_1(0i, vec3<bool>(true, true, false)), Struct_1(-1i, vec3<bool>(false, false, true))), Struct_2(1i, Struct_1(1i, vec3<bool>(false, false, true)), Struct_1(649i, vec3<bool>(true, false, false))), Struct_2(-44230i, Struct_1(i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(-30157i, vec3<bool>(true, true, true))), Struct_2(18728i, Struct_1(10881i, vec3<bool>(false, true, true)), Struct_1(i32(-2147483648), vec3<bool>(false, false, true))), Struct_2(1i, Struct_1(0i, vec3<bool>(true, false, false)), Struct_1(1i, vec3<bool>(false, true, false))), Struct_2(0i, Struct_1(31692i, vec3<bool>(false, true, false)), Struct_1(i32(-2147483648), vec3<bool>(false, false, true))), Struct_2(i32(-2147483648), Struct_1(-1i, vec3<bool>(false, true, true)), Struct_1(-31415i, vec3<bool>(false, false, false))), Struct_2(82435i, Struct_1(-12828i, vec3<bool>(true, true, true)), Struct_1(-49827i, vec3<bool>(true, false, true))), Struct_2(-4316i, Struct_1(2147483647i, vec3<bool>(true, false, true)), Struct_1(-4373i, vec3<bool>(true, true, false))), Struct_2(-20759i, Struct_1(29298i, vec3<bool>(true, true, false)), Struct_1(-16301i, vec3<bool>(true, false, true))));

var<private> global3: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 23>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1114f, 449f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(326f, 1000f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1161f, -433f)))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(-308f))))));
    let var_2 = reverseBits(~(-(~u_input.a.xy)));
    global3 = array<vec3<bool>, 23>();
    global2 = array<Struct_2, 16>();
    global3 = array<vec3<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-2147483647i));
}

