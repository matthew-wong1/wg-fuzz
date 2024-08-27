struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1408f);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = any(vec4<bool>(arg_3, global1.x, true, any(!(!global2.a.wz))));
    global1 = select(vec4<bool>(!global2.a.x, global2.a.x, !(!global2.a.x), min(15160u, u_input.c) < u_input.c), vec4<bool>(all(global1.wx), false, all(global1.zz) | (min(u_input.c, 1u) <= u_input.b), !all(select(arg_0.a, global2.a, var_0.a))), vec4<bool>(false, true, all(!global2.a), ~19642i == u_input.a.x));
    var var_2 = arg_0;
    global1 = vec4<bool>(var_2.a.x, true, !(var_0.a.x || arg_0.a.x), !global1.x);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-675f + _wgslsmith_div_f32(arg_0.b.x, var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.x * 143f))), arg_1.x))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(select(global2.a, global2.a, true), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(!global2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-266f, global2.b.x))), vec3<f32>(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), global1.yx), Struct_1(global2.a, global2.b), vec4<i32>(1i, 0i, -21496i, u_input.a.x) >> (vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u) % vec4<u32>(32u)), vec3<bool>(false, arg_0, global1.x))), 2034f, global2.b.x), global2.b.x, !arg_0)));
    var_0 = Struct_1(!global2.a, vec2<f32>(212f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x)))));
    var_0 = Struct_1(var_0.a, var_0.b);
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-407f, var_0.b.x))), select(vec2<bool>(arg_0, arg_0), var_0.a.yx, var_0.b.x < var_0.b.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x))))));
    global2 = Struct_1(!(!global2.a), var_0.b);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_div_f32(_wgslsmith_div_f32(global2.b.x, -991f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(false, global2.a.x), Struct_1(global2.a, vec2<f32>(global2.b.x, 1900f)), ~vec4<i32>(16919i, -2147483647i, u_input.a.x, 22969i), vec3<bool>(global2.a.x, global2.a.x, true))))));
    var var_1 = func_2(true);
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, global2.b.x))))));
    let var_3 = Struct_1(vec4<bool>(true, var_1.a.x, global2.a.x, func_2(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) <= u_input.a.x).a.x), _wgslsmith_f_op_vec2_f32(var_2.b + var_2.b));
    var var_4 = var_2.a.yy;
    var_4 = select(select(vec2<bool>(global2.a.x, false), vec2<bool>(func_2(select(var_1.a.x, false, false)).a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)) <= 841i), func_2(!var_2.a.x).a.yy), global2.a.yw, var_1.a.yy);
    let var_5 = abs(~(-min(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.c, 24393u, abs(select(u_input.b, u_input.b, true))), ~vec4<u32>(4294967295u, 485u, ~1u, ~(~u_input.c)), firstTrailingBit(-select(-vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, -2147483647i, 0i) ^ vec3<i32>(var_5, u_input.a.x, var_5), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1033f, global2.b.x, var_2.b.x, global2.b.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.b.x, var_3.b.x, -486f, 808f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1677f, _wgslsmith_f_op_f32(sign(-1000f)), -117f)));
}

