struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<vec2<bool>, 4>();
    let var_0 = Struct_1(31733u);
    global2 = arg_0;
    global2 = var_0;
    var var_1 = !(!arg_2.x);
    return Struct_1(_wgslsmith_mult_u32(~abs(u_input.e.x), ~24010u));
}

fn func_1() -> Struct_1 {
    global1 = true;
    global1 = false;
    global2 = Struct_1(u_input.c >> (0u % 32u));
    let var_0 = Struct_1(u_input.b.x);
    var var_1 = false;
    return func_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global2.a ^ 42147u, ~44414u), var_0.a)), var_0, vec2<bool>(true, ~38801u < var_0.a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global1 = all(select(select(vec3<bool>(true, any(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), true), all(vec4<bool>(false, false, true, true))));
    var var_0 = arg_2;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(global2.a, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, global2.a), ~0u));
    let var_1 = Struct_1(~1u);
    var var_2 = reverseBits(vec3<u32>(~(~var_1.a), ~4294967295u >> (0u % 32u), 40397u));
    let var_3 = func_3(_wgslsmith_f_op_f32(-1f), func_1(), var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) * _wgslsmith_f_op_f32(f32(-1f) * -602f)), -1002f)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(673f * -199f), -1083f, _wgslsmith_f_op_f32(trunc(-627f)))))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, var_4.x, var_4.x, var_4.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 432f, var_4.x, var_4.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-984f, var_4.x, var_4.x, 1217f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(635f, var_4.x, -1466f, -198f), vec4<f32>(-1000f, 978f, 1544f, var_4.x))))))));
    var var_6 = Struct_1(~select(var_3.a, 88817u, false));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u ^ var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x * var_4.x) * 1367f) - _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2853f * var_5.x))))), vec3<u32>(firstLeadingBit(~firstLeadingBit(0u)), reverseBits(~(var_1.a << (100706u % 32u))), 100133u));
}

