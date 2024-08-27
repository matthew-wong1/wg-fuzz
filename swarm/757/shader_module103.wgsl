struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    var var_0 = true;
    var var_1 = Struct_1(-1526f, !select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    return var_1.b.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = ~u_input.a.x;
    let var_2 = Struct_2(select(!select(!arg_1.a, select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, true, arg_1.a.x), arg_1.a), func_3(1i, arg_0)), vec3<bool>(arg_1.a.x, false || any(vec4<bool>(false, true, false, true)), false), !arg_1.a.x));
    var_1 = arg_2;
    var var_3 = -560f;
    return Struct_1(-554f, !vec2<bool>(!all(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), all(var_2.a.xx)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !vec3<bool>(func_2(_wgslsmith_mult_u32(1u, ~52115u), Struct_2(!vec3<bool>(arg_0.b.x, false, false)), u_input.a.x).b.x, arg_0.b.x, false);
    let var_1 = Struct_2(vec3<bool>(true, arg_0.b.x, !arg_0.b.x));
    let var_2 = var_1;
    var var_3 = reverseBits(~(vec2<u32>(1u, 1u) | firstTrailingBit(vec2<u32>(1u, 1u))));
    var var_4 = arg_0.a >= -540f;
    return Struct_1(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(-146f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.a))))))), !(!select(!vec2<bool>(var_2.a.x, var_2.a.x), !arg_0.b, select(arg_0.b, vec2<bool>(false, arg_0.b.x), var_2.a.x))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = 348f;
    var var_1 = func_4(func_2(~_wgslsmith_clamp_u32(arg_0, arg_0, 1u), Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), u_input.a.x));
    var var_2 = -_wgslsmith_clamp_i32(u_input.a.x, 39407i, ~0i << (arg_0 % 32u)) & -8532i;
    let var_3 = Struct_1(450f, select(select(select(var_1.b, var_1.b, any(vec4<bool>(false, var_1.b.x, var_1.b.x, false))), vec2<bool>(all(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x)), func_3(u_input.a.x, 0u)), !select(vec2<bool>(false, false), vec2<bool>(false, var_1.b.x), vec2<bool>(var_1.b.x, var_1.b.x))), vec2<bool>(false, var_1.b.x), vec2<bool>(var_1.b.x, any(vec2<bool>(var_1.b.x, var_1.b.x)))));
    var_0 = -1049f;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1859f * _wgslsmith_f_op_f32(round(var_1.a)))) - _wgslsmith_f_op_f32(exp2(var_3.a))), select(var_3.b, vec2<bool>(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), u_input.a.xy), 0u), func_2(45120u, Struct_2(vec3<bool>(var_3.b.x, var_1.b.x, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(2946i, -42979i, 60017i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x))).b.x), false));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(select(select(vec3<bool>(arg_3.b.x, true, func_4(arg_3).b.x), vec3<bool>(!arg_3.b.x, true, true), !vec3<bool>(arg_3.b.x, false, true)), !vec3<bool>(1337f >= arg_3.a, arg_3.b.x, false & arg_3.b.x), select(select(!vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x), vec3<bool>(true, arg_3.b.x, arg_3.b.x), vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_3.b.x, false, false), arg_3.b.x), vec3<bool>(arg_3.b.x, true, false), vec3<bool>(false, false, true)), true)));
    let var_1 = !(!vec4<bool>(true, false, !arg_3.b.x, true));
    var var_2 = 1327f;
    var var_3 = Struct_2(select(!(!vec3<bool>(false, false, var_0.a.x)), var_0.a, var_1.xxx));
    let var_4 = 39538i;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(~(~(~(~vec3<u32>(31975u, 29777u, 1u)))), max(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, ~(-1i))), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1322f, 383f, -665f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1225f, -423f, -621f))))), func_1(4294967295u)));
    var var_1 = func_1(~countOneBits(~_wgslsmith_sub_u32(836u, 0u)));
    let var_2 = true;
    let var_3 = Struct_3(!select(vec4<bool>(true, var_1.b.x, true, all(vec3<bool>(var_2, true, var_2))), vec4<bool>(false, false | var_2, true, true), all(!vec4<bool>(false, false, var_1.b.x, false))), var_0, vec3<f32>(_wgslsmith_f_op_f32(step(-371f, _wgslsmith_div_f32(var_1.a, 817f))), func_2(82758u, Struct_2(vec3<bool>(false, true, var_2)), 2147483647i).a, _wgslsmith_f_op_f32(abs(var_0))), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(37419u, 9509u), ~28513u, _wgslsmith_mod_u32(1u, 118673u))) < 27862u);
    let var_4 = Struct_3(select(select(!var_3.a, select(vec4<bool>(var_1.b.x, var_1.b.x, false, var_2), select(vec4<bool>(false, true, false, var_3.a.x), var_3.a, true), true), true), select(!var_3.a, select(var_3.a, select(vec4<bool>(var_3.a.x, var_3.a.x, true, false), vec4<bool>(var_3.d, var_1.b.x, var_2, false), false), !var_3.d), vec4<bool>(var_2, true, var_1.b.x, true)), !(true & all(var_3.a))), 1000f, _wgslsmith_f_op_vec3_f32(var_3.c * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(587f, var_1.a, -2219f), vec3<f32>(var_0, -772f, var_0))) + _wgslsmith_f_op_vec3_f32(var_3.c + _wgslsmith_f_op_vec3_f32(var_3.c + vec3<f32>(var_3.b, var_3.c.x, 1614f))))), true);
    let var_5 = Struct_2(var_3.a.zzx);
    let var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.zx | vec2<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, var_6, u_input.a.x)))));
}

