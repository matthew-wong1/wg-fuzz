struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

var<private> global1: bool;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, true, true)));

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    global4 = array<Struct_1, 13>();
    global0 = array<vec3<bool>, 29>();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1075f)), _wgslsmith_f_op_f32(-1105f + 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -162f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-147f + -1192f), _wgslsmith_f_op_f32(804f * 1675f), true))) * _wgslsmith_f_op_f32(f32(-1f) * -848f))));
    let var_2 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(634f, var_1, true))))), var_1));
    var var_3 = -vec3<i32>(_wgslsmith_dot_vec2_i32(global2.xz, _wgslsmith_div_vec2_i32(global2.zx, vec2<i32>(2147483647i, -5119i))), global2.x | _wgslsmith_mod_i32(-2147483647i, 23688i), -2147483647i) & vec3<i32>(-57295i | min(-u_input.b, u_input.b), u_input.b, -22095i);
    global3 = array<Struct_1, 1>();
    var_3 = ~(-vec3<i32>(reverseBits(~(-2147483647i)), var_3.x, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-380f, var_1, var_1) - vec3<f32>(162f, var_2, 344f)))))), -1987f, _wgslsmith_f_op_f32(floor(var_1)));
}

