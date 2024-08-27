struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn func_3() -> f32 {
    global0 = vec2<bool>(!(_wgslsmith_f_op_f32(sign(-1244f)) > _wgslsmith_f_op_f32(select(1083f, -682f, global0.x))), !select(global0.x, select(global0.x && true, !global0.x, u_input.b.x != u_input.b.x), true));
    let var_0 = reverseBits(abs(u_input.c.x));
    global0 = !(!(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x)))));
    let var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, -723f) - vec2<f32>(1845f, -729f))) - vec2<f32>(_wgslsmith_f_op_f32(144f - -967f), _wgslsmith_f_op_f32(-683f - 964f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1709f, _wgslsmith_f_op_f32(floor(-909f)))), 805f));
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1800f)))), 1000f, -147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f + 764f)))));
    var var_1 = !vec4<bool>(global0.x, select(true, arg_0, all(!vec3<bool>(true, arg_1, true))), false, !(false || arg_0));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 587f), 1000f) * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())))))), _wgslsmith_div_f32(1078f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))))));
    var var_3 = select(abs(u_input.c), u_input.c, !vec2<bool>(global0.x & arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, 39583i), vec4<i32>(-23833i, 53685i, -20101i, arg_2)) >= min(u_input.a, -2147483647i)));
    var_1 = !(!vec4<bool>(!var_1.x, true && global0.x, !arg_0, var_1.x));
    return all(select(select(select(vec2<bool>(false, var_1.x), vec2<bool>(global0.x, true), false), vec2<bool>(arg_1, global0.x), arg_0), vec2<bool>(!any(vec3<bool>(false, true, false)), true), any(vec3<bool>(global0.x, false, global0.x)) | false));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = max(u_input.c, arg_1.zx);
    var var_1 = u_input.b.x;
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1147f))), _wgslsmith_div_f32(-409f, _wgslsmith_f_op_f32(f32(-1f) * -418f))), _wgslsmith_div_f32(1246f, _wgslsmith_f_op_f32(f32(-1f) * -761f))), Struct_3(abs(firstLeadingBit(1i))), vec4<i32>(arg_2.a.x, -2147483647i, arg_2.a.x >> (56524u % 32u), ~arg_1.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1443f * _wgslsmith_f_op_f32(438f * var_2.a.x)), var_2.a.x, 316f))));
    let var_4 = Struct_5(!select(vec3<bool>(true, true, arg_0.a.x), arg_0.a, !vec3<bool>(global0.x, arg_0.a.x, true)));
    return Struct_2(Struct_1(reverseBits(vec4<i32>(1i, firstTrailingBit(1i), 57054i, _wgslsmith_mod_i32(arg_2.a.x, 21880i)))), Struct_1(arg_2.a));
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: f32) -> vec2<bool> {
    var var_0 = true;
    let var_1 = func_4(Struct_5(!vec3<bool>(arg_2 <= -1579f, func_2(false, arg_0.a.x, 1i), arg_0.a.x)), vec4<i32>(_wgslsmith_sub_i32(u_input.a, -(~u_input.a)), u_input.c.x, i32(-1i) * -max(u_input.a, -4524i), _wgslsmith_sub_i32(2147483647i, 28473i)), Struct_1(abs(-vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.a) | (vec4<i32>(u_input.a, 2147483647i, -32025i, -2147483647i) & vec4<i32>(-30787i, 0i, u_input.a, u_input.c.x)))));
    global0 = arg_0.a.xy;
    let var_2 = Struct_3(~u_input.a);
    global0 = !select(select(!arg_0.a.xx, select(vec2<bool>(arg_0.a.x, true), select(arg_0.a.zx, arg_0.a.xy, arg_0.a.zy), true), arg_0.a.xx), vec2<bool>(true, !arg_0.a.x && global0.x), false);
    return !(!(!arg_0.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, global0.x), true), func_1(Struct_5(vec3<bool>(global0.x, global0.x, true)), u_input.d.x, 1158f), vec2<bool>(true, true))));
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1190f, -1936f) * _wgslsmith_f_op_f32(-1254f * -2051f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-567f + 949f), _wgslsmith_f_op_f32(f32(-1f) * -501f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f + -612f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) - -112f)))));
    let var_2 = Struct_2(Struct_1(~(vec4<i32>(u_input.a, u_input.c.x, u_input.a, -2147483647i) << (u_input.b % vec4<u32>(32u)))), func_4(Struct_5(vec3<bool>(func_1(Struct_5(vec3<bool>(var_0, false, var_0)), 41952u, 110f).x, false, false)), firstTrailingBit(vec4<i32>(~73524i, countOneBits(u_input.a), u_input.c.x, -u_input.c.x)), Struct_1(select(vec4<i32>(10665i, -25646i, u_input.c.x, u_input.c.x), min(vec4<i32>(1i, -14073i, u_input.a, u_input.a), vec4<i32>(u_input.a, -4715i, -2147483647i, u_input.c.x)), global0.x))).a);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1055f, _wgslsmith_div_f32(1000f, 1000f)), _wgslsmith_f_op_f32(-426f * var_1))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 - var_1))) * _wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(step(737f, -1000f))))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-1i, 28721i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1026f * var_1) * -1000f), u_input.d.x, u_input.b.x);
}

