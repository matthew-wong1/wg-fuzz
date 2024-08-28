struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: i32) -> vec4<bool> {
    let var_0 = -max(-38530i, abs(2147483647i) & u_input.a);
    let var_1 = select(vec4<bool>(true, ~select(arg_1, u_input.b, true) > 2299u, !(!any(vec2<bool>(false, false))), !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, false, false), true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), any(vec2<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true))))), vec4<bool>(true, true, true, true));
    let var_2 = Struct_1(285f, vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, -112f, arg_0.x < 896f))), _wgslsmith_f_op_f32(round(950f)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))), -831f);
    var var_3 = !select(select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x), true), false), vec4<bool>(!var_1.x, var_2.a < -261f, !var_1.x, select(var_1.x, true, var_1.x)), var_1.x), !var_1, select(true, !any(vec4<bool>(var_1.x, var_1.x, true, var_1.x)), var_1.x));
    var_3 = var_1;
    return !(!var_1);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = !select(func_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(-arg_2.b.x), arg_2.c), 74744u, _wgslsmith_dot_vec2_i32(-vec2<i32>(7471i, u_input.c), -vec2<i32>(u_input.c, 43558i))), vec4<bool>(arg_0.x, arg_3, arg_3, !(u_input.b > u_input.b)), !all(vec3<bool>(arg_3, arg_0.x, true)));
    let var_1 = Struct_1(arg_2.a, arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-135f)) + _wgslsmith_f_op_f32(ceil(156f))));
    let var_2 = max(vec4<i32>(_wgslsmith_div_i32(min(_wgslsmith_add_i32(1i, -1i), -2147483647i >> (u_input.b % 32u)), 1i), _wgslsmith_sub_i32(-(~u_input.a), -34070i), i32(-1i) * -_wgslsmith_sub_i32(-2147483647i, -25033i), ~_wgslsmith_add_i32(min(u_input.a, u_input.c), 1i)), _wgslsmith_div_vec4_i32(reverseBits(-(~vec4<i32>(u_input.a, -1i, -46699i, 41799i))), -vec4<i32>(u_input.c, _wgslsmith_div_i32(u_input.c, 28831i), -1i, 0i)));
    global0 = 39708u;
    let var_3 = arg_2;
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    global0 = func_2(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), u_input.a >= 1i), vec2<bool>(true, true), !(false && any(vec2<bool>(false, true)))), arg_1.x, arg_0, true);
    global0 = u_input.b;
    let var_0 = true;
    let var_1 = u_input.b;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(532f, arg_0.a)), vec4<f32>(arg_0.b.x, arg_1.x, 577f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-770f * 284f), _wgslsmith_f_op_f32(min(-770f, arg_0.b.x))))))), _wgslsmith_f_op_f32(424f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(arg_0.c, arg_1.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.x + arg_1.x))))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = u_input.b;
    global0 = 49504u & func_1(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -247f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, -139f, 342f, -966f))), 1000f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1536f)), 1f));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(748f, 167f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(753f, 209f) - -610f) - 662f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -598f), 783f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) - 1000f), _wgslsmith_f_op_f32(-1478f - 315f), -909f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1730f, -249f, -1000f, -966f), vec4<f32>(295f, 792f, -223f, -335f)) + vec4<f32>(-1590f, -235f, 399f, -444f))))), _wgslsmith_f_op_f32(select(-1631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(887f, -487f)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
    var var_2 = ~abs(~vec4<u32>(var_0 | u_input.b, ~1u, 17847u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-345f, var_1.a));
}

