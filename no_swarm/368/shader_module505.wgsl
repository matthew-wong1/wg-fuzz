struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, true));

var<private> global1: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-650f, 2061f, -958f, -1132f), vec4<f32>(-208f, 1329f, -158f, 1455f), vec4<f32>(1798f, -1074f, -667f, -1000f), vec4<f32>(328f, 1512f, -1000f, -499f), vec4<f32>(-1000f, 540f, -1184f, -1818f), vec4<f32>(-1180f, -573f, 533f, 155f), vec4<f32>(386f, -789f, -1000f, 1089f), vec4<f32>(935f, -847f, -138f, 1210f), vec4<f32>(-357f, 267f, -722f, 1899f), vec4<f32>(-486f, -173f, 1528f, 2476f), vec4<f32>(121f, -275f, -1084f, -557f), vec4<f32>(-559f, -1175f, 441f, -2241f), vec4<f32>(265f, -354f, 1000f, 2400f), vec4<f32>(1047f, -682f, -606f, -390f), vec4<f32>(368f, 2447f, -289f, 847f));

var<private> global2: f32 = -2243f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<bool>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(510f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-501f)) + _wgslsmith_f_op_f32(arg_0.x + 1795f))));
    var var_1 = ~80041i;
    var var_2 = arg_2.x & true;
    global2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(258f, arg_1) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))) + -1047f));
    return ~firstLeadingBit(~_wgslsmith_add_i32(max(-44746i, 0i), ~u_input.b));
}

fn func_2() -> Struct_1 {
    global2 = 1f;
    let var_0 = Struct_1(false);
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    let var_1 = var_0;
    return var_1;
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    return vec3<f32>(-182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) - _wgslsmith_f_op_f32(abs(1486f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-333f, -262f), 1f)), !arg_0.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(342f, 2205f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(909f, 1593f)) + _wgslsmith_f_op_f32(step(1950f, _wgslsmith_div_f32(1211f, 987f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1379f, 383f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 109f)), true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-211f, -1364f)))))), 344f, !(!vec3<bool>(u_input.c < u_input.b, true, true)));
    var var_1 = func_2();
    global2 = _wgslsmith_f_op_f32(179f * -1000f);
    global2 = -1087f;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1351f) * _wgslsmith_f_op_f32(-341f + 854f)), -767f, 751f))) * _wgslsmith_f_op_vec3_f32(func_3(func_2())));
    var_2 = vec3<f32>(1702f, var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1187f)) - -2115f)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_i32(_wgslsmith_div_i32(-59695i, -u_input.c), _wgslsmith_add_i32(-2147483647i, var_0))));
}

