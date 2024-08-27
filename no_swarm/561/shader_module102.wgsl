struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, true, false));

var<private> global1: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global1 = 0u;
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(433f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1222f, -982f, global0.a.x))))) * _wgslsmith_f_op_f32(718f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))))), 872f));
    var var_1 = abs(vec2<i32>(u_input.a.x, u_input.c.x)) | vec2<i32>(-u_input.a.x, -abs(abs(u_input.a.x)));
    let var_2 = Struct_2(global0.a);
    global0 = Struct_2(!vec3<bool>(false, true, u_input.b.x < _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)));
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b.zw;
    let var_1 = !global0.a.x;
    var var_2 = countOneBits(max(vec2<i32>(u_input.a.x, 62118i), ~firstTrailingBit(vec2<i32>(7427i, -25339i))));
    var_2 = reverseBits(u_input.c.yz);
    var var_3 = Struct_2(!(!select(!global0.a, vec3<bool>(var_1, true, var_1), var_1)));
    return Struct_2(vec3<bool>(func_3(), false & all(vec4<bool>(false, true, false, true)), var_3.a.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>) -> bool {
    global1 = arg_0.x;
    let var_0 = abs(49426u);
    global0 = func_2();
    global1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(_wgslsmith_mult_u32(var_0, 11088u))), var_0), ~54551u);
    var var_1 = true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(!select(vec3<bool>(func_1(vec2<u32>(u_input.b.x, u_input.b.x), -2645f, vec4<i32>(-19491i, -36816i, 1i, u_input.a.x)), global0.a.x, global0.a.x), global0.a, global0.a));
    var var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(2700f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-616f)), _wgslsmith_f_op_f32(step(-839f, -1000f))))));
    global1 = u_input.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-161f, -466f) * 1f))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(566f)) + _wgslsmith_f_op_f32(f32(-1f) * -715f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(870f, -168f) + 594f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1825f)), -817f), 398f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-594f, -911f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(569f, -2061f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(~u_input.b.x, 1u, 1u)), u_input.b.ywx));
}

