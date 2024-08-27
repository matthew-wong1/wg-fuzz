struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    return ~(~0u) != (arg_0 >> ((~countOneBits(u_input.c.x) & abs(50217u)) % 32u));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(!(-7720i <= u_input.d.x), true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), func_3(~4294967295u))), any(vec2<bool>(any(vec4<bool>(true, false, true, false)), 1i > abs(u_input.b))), any(vec4<bool>(true, !select(false, false, true), false, any(vec3<bool>(true, false, false)) | all(vec4<bool>(false, true, false, true)))));
    global0 = array<Struct_2, 6>();
    return arg_0.x;
}

fn func_1() -> bool {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_0 = Struct_1(!select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), true)));
    let var_1 = vec3<f32>(1381f, _wgslsmith_f_op_f32(round(308f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(355f, 1498f)))) * 205f))));
    var var_2 = u_input.c.x;
    return all(var_0.a);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1821f)), 446f));
    global0 = array<Struct_2, 6>();
    var var_2 = true;
    var_2 = arg_1.a.x;
    return Struct_1(!select(select(vec4<bool>(arg_1.a.x, false, true, false), !vec4<bool>(true, false, var_0.a.x, false), var_0.a), select(select(arg_1.a, arg_1.a, vec4<bool>(var_0.a.x, false, false, arg_1.a.x)), select(vec4<bool>(false, false, true, var_0.a.x), arg_1.a, vec4<bool>(false, false, arg_1.a.x, arg_1.a.x)), !var_0.a), vec4<bool>(false, arg_1.a.x, false, var_0.a.x)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 6>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    let var_0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-540f, -1000f, 2084f) - vec3<f32>(1658f, 1196f, 151f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1349f, -405f, -296f) - vec3<f32>(498f, 564f, -178f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, -541f, -162f)) + vec3<f32>(2007f, 899f, -1000f)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), false)))), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), false, select(false, true, false)), -595f, func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-832f, _wgslsmith_f_op_f32(ceil(782f)))), _wgslsmith_f_op_f32(max(533f, 578f)))), Struct_1(vec4<bool>(func_1(), false, true, true))));
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-13579i, -37641i), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(759f, 736f)))), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f * _wgslsmith_f_op_f32(func_2(vec2<f32>(-167f, 581f))))), _wgslsmith_f_op_f32(f32(-1f) * -2815f)), _wgslsmith_div_vec2_i32(u_input.a.wx, u_input.a.xz), u_input.a);
}

