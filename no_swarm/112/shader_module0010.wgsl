struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), -402f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_2.b)))));
    return !arg_2.a.x;
}

fn func_1() -> f32 {
    global1 = Struct_1(vec4<bool>(true, global1.a.x, select(!select(true, true, false), select(global0.a.x, all(vec4<bool>(true, global0.a.x, true, global1.a.x)), true | global1.a.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(1i, u_input.e, -34216i)) < -2857i), true), -1665f);
    var var_0 = -13282i;
    let var_1 = Struct_1(select(select(vec4<bool>(true, global0.a.x | global1.a.x, any(vec3<bool>(true, global1.a.x, global0.a.x)), func_2(global1.b, Struct_1(global1.a, global0.b), Struct_1(global1.a, global1.b), global0.a.wz)), !(!global0.a), vec4<bool>(true, all(vec3<bool>(global0.a.x, global1.a.x, global1.a.x)), all(global1.a.zyz), any(vec3<bool>(false, global0.a.x, true)))), vec4<bool>(true, all(global0.a), all(vec4<bool>(true, global1.a.x, global0.a.x, true)), !(global0.a.x && global1.a.x)), true), 1522f);
    var var_2 = vec4<i32>(-12272i, _wgslsmith_div_i32(2147483647i, u_input.e), ~reverseBits(-14957i), abs(~(-12154i)));
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(min(311f, 151f))))) * _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.b, var_3.b)), var_3.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b - global0.b))), abs(-2147483647i) != u_input.b.x))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = vec4<bool>(!global1.a.x, false, any(global1.a.yy), !(global1.a.x != all(vec3<bool>(true, arg_0, false))));
    var var_1 = (u_input.b.x | abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(-46242i, 2147483647i), 2147483647i))) & min(firstLeadingBit(39597i), countOneBits(-1i));
    let var_2 = arg_2;
    var_1 = ~(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(min(u_input.a.x, u_input.a.x), -56276i, select(0i, 0i, global1.a.x)), ~_wgslsmith_div_i32(u_input.b.x, u_input.e)));
    var_1 = select(-1i, -49068i, !var_2.a.x);
    return StorageBuffer(vec2<f32>(-298f, _wgslsmith_f_op_f32(abs(362f))), u_input.e, -499f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(vec4<bool>(any(select(global1.a.zyx, global0.a.xzy, global1.a.x)), !(!global0.a.x), global1.a.x, true != any(vec4<bool>(false, global1.a.x, global1.a.x, false))), select(global1.a, global1.a, global0.a), !(false && global1.a.x) | !(-2147483647i < u_input.b.x)), 982f);
    let x = u_input.a;
    s_output = func_3(false, -1130f, Struct_1(vec4<bool>(true, !(!global1.a.x), false, all(select(global1.a.wzw, vec3<bool>(global1.a.x, false, false), true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), -468f, _wgslsmith_f_op_f32(select(global1.b, 493f, true)) < _wgslsmith_f_op_f32(abs(global1.b))))));
}

