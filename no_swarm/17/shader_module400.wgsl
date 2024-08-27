struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(21184u, -979f, 301f, -408f, true);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(19515u, -462f, -831f, 1153f, false), Struct_1(1u, -824f, -1000f, 1111f, false), Struct_1(1u, -463f, 596f, -214f, true), Struct_1(0u, -585f, 824f, -1434f, true), Struct_1(4294967295u, 1110f, -896f, 675f, false), Struct_1(19699u, -324f, 810f, 1231f, false), Struct_1(75390u, -845f, -1068f, 455f, false), Struct_1(23239u, 225f, 2334f, -158f, false), Struct_1(4294967295u, 1000f, 1038f, -386f, false), Struct_1(0u, 288f, 750f, -1040f, false), Struct_1(4942u, -309f, -344f, 241f, false), Struct_1(0u, -685f, -1000f, -1012f, false));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(8634u, 1205f, 1440f, 1420f, false), Struct_1(65417u, -308f, 1000f, 1526f, false));

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global1 = array<Struct_1, 12>();
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.b.x, 1u), _wgslsmith_f_op_f32(ceil(global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))) * -421f), _wgslsmith_f_op_f32(-global3.d), true);
    global1 = array<Struct_1, 12>();
    var var_1 = u_input.b.x;
    var var_2 = u_input.c;
    return _wgslsmith_f_op_f32(-344f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-2717f, global3.b)))) - 766f));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(reverseBits(4294967295u), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global0.c, global0.d, 526f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, global0.c, -674f, 1260f))), vec4<f32>(_wgslsmith_f_op_f32(step(global3.b, global0.c)), _wgslsmith_f_op_f32(-115f * -749f), 1666f, 1763f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.d - 270f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(502f * -1000f))), _wgslsmith_f_op_f32(-global3.d) >= 2137f)) * 1f), -133f, global3.e);
    global0 = global1[_wgslsmith_index_u32(114245u, 12u)];
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b, 586f) + -2233f)));
    global1 = array<Struct_1, 12>();
    global2 = array<Struct_1, 2>();
    return global1[_wgslsmith_index_u32(global3.a, 12u)];
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = func_2();
    var var_0 = ~12553u;
    let var_1 = func_2();
    let var_2 = Struct_1(~(~1u), _wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(exp2(var_1.d))), var_1.d, 873f, true);
    global3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, ~(~0u), ~global3.a ^ max(42478u, global0.a)), vec3<u32>(~_wgslsmith_sub_u32(global3.a, 17720u), global3.a, ~var_1.a | var_2.a)), var_2.b, _wgslsmith_div_f32(global3.b, -1146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) * _wgslsmith_f_op_f32(-arg_0.c))), false & !any(vec3<bool>(arg_0.e, arg_0.e, var_1.e)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-690f - -1391f);
    global1 = array<Struct_1, 12>();
    let var_1 = ~(~global3.a) | 2572u;
    var var_2 = global2[_wgslsmith_index_u32(global3.a, 2u)];
    global2 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.d.x, 0i, -36592i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, func_1(Struct_1(u_input.b.x, global3.c, global0.b, global3.d, global3.e))), max(u_input.d.x, abs(6820i)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(436f, -970f, 1402f, 851f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -841f, -1000f, -2354f)))))), var_2.d, 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(sign(502f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b, 1000f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, var_2.d) + vec2<f32>(global0.c, var_2.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(377f, global3.b)))))));
}

