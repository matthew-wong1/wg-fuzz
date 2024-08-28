struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: bool = false;

var<private> global3: array<vec4<f32>, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = u_input.b.zxy;
    global2 = true;
    let var_1 = Struct_1(9925u);
    global2 = true;
    global0 = var_1;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    global2 = all(select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -1178f) == _wgslsmith_div_f32(arg_1.x, arg_1.x)), vec2<bool>(true, true & all(vec4<bool>(true, true, false, true)))));
    global2 = !(!all(vec4<bool>(true, any(vec2<bool>(true, false)), true, 0i < u_input.b.x)));
    global1 = Struct_1(_wgslsmith_mod_u32(arg_0.a, 103208u));
    let var_0 = firstTrailingBit(select(max(~(~vec2<i32>(u_input.a, 20895i)), select(vec2<i32>(u_input.a, -2147483647i), max(u_input.b.yy, u_input.b.wy), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), ~(~vec2<i32>(0i, u_input.a)), all(vec3<bool>(true, true, true))));
    global1 = Struct_1(~global0.a);
    return all(vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = -1159f;
    var var_1 = vec3<bool>(func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 256f) * vec3<f32>(arg_2, -1000f, var_0)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1124f, 848f)))))))), false, true);
    global3 = array<vec4<f32>, 11>();
    var var_2 = vec4<bool>(true, var_1.x, var_1.x, true);
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f - -1383f)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    let var_0 = func_2(vec3<f32>(443f, _wgslsmith_f_op_f32(-arg_1), arg_1));
    var var_1 = Struct_1(~global0.a);
    let var_2 = select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)))), select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, true), true, u_input.a <= -13046i, any(vec2<bool>(true, true))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), !vec4<bool>(true, _wgslsmith_mod_i32(-53381i, u_input.a) < reverseBits(2147483647i), func_3(Struct_1(0u), vec2<f32>(arg_1, -960f)) | true, ~var_1.a >= ~u_input.c));
    var var_3 = arg_1;
    var var_4 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, -889f, arg_1))))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(1u), var_0, -1000f, arg_0)) + 1715f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -158f))) + _wgslsmith_f_op_f32(floor(-705f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(1u), _wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(1974u), Struct_1(55424u), -123f, Struct_1(global0.a)))))))));
    let var_1 = Struct_1(45834u);
    let var_2 = (0u ^ (1u ^ ~global0.a)) <= _wgslsmith_sub_u32(u_input.c, abs(~global0.a));
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -1155f) - vec3<f32>(1574f, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x)))));
    global2 = true;
    var var_4 = func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -1072f, _wgslsmith_f_op_f32(f32(-1f) * -1394f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2133f, 1000f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~u_input.b, vec4<i32>(23561i, u_input.a, ~3407i, u_input.b.x)), firstLeadingBit(~u_input.b.x)));
}

