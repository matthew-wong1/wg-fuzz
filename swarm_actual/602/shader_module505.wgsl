struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = Struct_3(vec4<i32>(-abs(0i), max(300i, u_input.d), ~(~(~23089i)), u_input.e.x));
    return arg_0.x;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2242f) - 1316f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(201f, 2134f, -1070f), arg_1, -1083f)) * _wgslsmith_f_op_f32(1853f + 767f)))), 1033f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f - -313f) + -1000f) * -532f)));
    return _wgslsmith_f_op_f32(f32(-1f) * -984f);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-690f, _wgslsmith_f_op_f32(round(-859f)), _wgslsmith_f_op_f32(-194f + 303f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1175f, 194f, 1650f) + vec3<f32>(-757f, arg_2.x, -1223f)))));
    var var_1 = abs(-25031i) > _wgslsmith_mult_i32(u_input.e.x, ~arg_1.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(arg_2.x, arg_2.x)) - _wgslsmith_f_op_f32(390f + _wgslsmith_f_op_f32(f32(-1f) * -327f)))));
    let var_3 = select(!select(vec4<bool>(all(vec3<bool>(false, true, true)), false, all(vec2<bool>(false, true)), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), !all(vec3<bool>(false, false, true))), select(!vec4<bool>(any(vec4<bool>(false, true, true, true)), true, var_0.a.x == -2541f, true), select(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), -148f > var_2), 896f == var_2), false), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1000f, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, var_0.a.x, arg_2.x) * var_0.a)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_4.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(u_input.a.x < (u_input.e.x & _wgslsmith_mod_i32(u_input.e.x, 0i)), false), !vec2<bool>(~u_input.b.x == ~0u, true));
    var_0 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), false), var_0.x && var_0.x), select(vec2<bool>(all(vec4<bool>(var_0.x, true, true, var_0.x)), true), !vec2<bool>(var_0.x, var_0.x), select(select(vec2<bool>(false, false), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, var_0.x), all(vec4<bool>(var_0.x, true, true, false)))), var_0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, -134f, -362f))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-125f)), _wgslsmith_f_op_f32(func_1(Struct_3(u_input.e), u_input.c.x, Struct_3(vec4<i32>(u_input.a.x, -14287i, u_input.e.x, u_input.e.x)), vec2<u32>(20037u, u_input.b.x))), _wgslsmith_div_f32(-1097f, -674f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(275f, 661f, -453f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-583f, -1053f, -660f));
    let var_2 = Struct_3(~u_input.e);
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -784f))), _wgslsmith_f_op_f32(var_1.x - 1012f), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x)), var_0.x)))));
    var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-241f * _wgslsmith_f_op_f32(var_3.a.x - var_1.x)), var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(func_3(u_input.c.x, vec4<i32>(-34252i, u_input.a.x, -19849i, 51798i), vec2<f32>(var_1.x, -635f))))))));
    var var_4 = !vec3<bool>(!(true | !var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x + -383f)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.x), -1034f)), select(true, any(select(vec2<bool>(false, false), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x))), any(vec2<bool>(var_0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1140f * _wgslsmith_f_op_f32(var_3.a.x * -1137f)), _wgslsmith_f_op_f32(round(var_1.x)), var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1318f)), var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.a), _wgslsmith_f_op_vec3_f32(-var_3.a))))), 242f, var_2.a.ww, _wgslsmith_f_op_f32(-var_3.a.x));
}

