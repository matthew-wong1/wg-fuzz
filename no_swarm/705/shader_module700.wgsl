struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
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

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), vec2<bool>(true, true), 1421f, vec3<f32>(1547f, -186f, -1725f), vec2<i32>(-2600i, 20750i)), Struct_1(vec3<i32>(5487i, i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false), -605f, vec3<f32>(703f, 699f, 1546f), vec2<i32>(13671i, i32(-2147483648))), Struct_1(vec3<i32>(i32(-2147483648), -7292i, -1i), vec2<bool>(false, false), 843f, vec3<f32>(-637f, -453f, -1062f), vec2<i32>(i32(-2147483648), 762i)), Struct_1(vec3<i32>(2147483647i, -19633i, 4861i), vec2<bool>(false, true), 296f, vec3<f32>(1215f, -153f, -121f), vec2<i32>(17811i, -62100i)), Struct_1(vec3<i32>(-8466i, 53153i, -62323i), vec2<bool>(false, true), -768f, vec3<f32>(-1013f, -922f, 556f), vec2<i32>(44834i, 0i)), Struct_1(vec3<i32>(41816i, 2147483647i, -20351i), vec2<bool>(false, true), 423f, vec3<f32>(-301f, -169f, 1098f), vec2<i32>(-23347i, 8442i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 2147483647i), vec2<bool>(true, false), 1168f, vec3<f32>(1123f, 329f, 612f), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(19473i, 1i, 275i), vec2<bool>(true, false), -1000f, vec3<f32>(1051f, -646f, -1299f), vec2<i32>(-4248i, 2147483647i)), Struct_1(vec3<i32>(-44085i, -1879i, 2147483647i), vec2<bool>(false, true), -400f, vec3<f32>(-2819f, -613f, 2223f), vec2<i32>(0i, -13812i)), Struct_1(vec3<i32>(0i, -57624i, i32(-2147483648)), vec2<bool>(true, false), 278f, vec3<f32>(252f, 1113f, 1321f), vec2<i32>(-9852i, 0i)), Struct_1(vec3<i32>(0i, 0i, 1i), vec2<bool>(false, false), 1831f, vec3<f32>(533f, 1142f, -1055f), vec2<i32>(0i, -1i)), Struct_1(vec3<i32>(-5710i, 2147483647i, -1i), vec2<bool>(false, true), -1649f, vec3<f32>(-1000f, 1203f, 1274f), vec2<i32>(-1i, 2147483647i)), Struct_1(vec3<i32>(-28054i, 1i, 9994i), vec2<bool>(true, true), 1015f, vec3<f32>(-1000f, 670f, -949f), vec2<i32>(38355i, 14045i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 0i), vec2<bool>(true, true), -1000f, vec3<f32>(1031f, -789f, -804f), vec2<i32>(i32(-2147483648), -15980i)), Struct_1(vec3<i32>(-1i, 0i, 2147483647i), vec2<bool>(false, true), 1745f, vec3<f32>(-1328f, 596f, -1514f), vec2<i32>(-1i, -1i)), Struct_1(vec3<i32>(-19025i, -24818i, -1i), vec2<bool>(true, false), -188f, vec3<f32>(1640f, 142f, -1211f), vec2<i32>(-1i, 6601i)), Struct_1(vec3<i32>(15215i, i32(-2147483648), 1i), vec2<bool>(false, false), 349f, vec3<f32>(-102f, -1319f, -482f), vec2<i32>(i32(-2147483648), 48371i)), Struct_1(vec3<i32>(102362i, 2147483647i, 2147483647i), vec2<bool>(true, false), 1769f, vec3<f32>(997f, 270f, 1321f), vec2<i32>(-36974i, -7087i)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec2<bool>(true, true), 126f, vec3<f32>(-1000f, 1815f, 1706f), vec2<i32>(2147483647i, 0i)), Struct_1(vec3<i32>(-1i, 2147483647i, 1i), vec2<bool>(false, false), -320f, vec3<f32>(-1470f, 927f, 517f), vec2<i32>(15022i, -1i)), Struct_1(vec3<i32>(2147483647i, -1i, 27282i), vec2<bool>(true, false), 1165f, vec3<f32>(368f, 320f, 1053f), vec2<i32>(2147483647i, -8504i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-468f + 690f), _wgslsmith_f_op_f32(f32(-1f) * -421f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(710f, _wgslsmith_f_op_f32(round(-109f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f * 261f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x & u_input.b.x));
}

