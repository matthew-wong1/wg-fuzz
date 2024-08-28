struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> f32 {
    return -1150f;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = countOneBits(min(-u_input.a.xzx, firstLeadingBit(vec3<i32>(25668i, u_input.d.x, arg_1.a >> (27022u % 32u)))));
    let var_1 = u_input.e;
    var var_2 = !all(arg_0.b.a.zx);
    let var_3 = true;
    var_2 = ((var_1 & 4294967295u) | min(firstLeadingBit(_wgslsmith_mod_u32(13329u, var_1)), ~340u)) <= _wgslsmith_add_u32((2637u >> (u_input.c % 32u)) << (~33388u % 32u), var_1);
    return arg_0.a.a.zy;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = select(select(select(select(arg_2.a.zx, arg_2.a.xz, !arg_2.a.xy), !vec2<bool>(arg_1, arg_2.a.x), select(select(vec2<bool>(arg_2.a.x, arg_1), vec2<bool>(true, false), arg_2.a.zz), vec2<bool>(true, true), vec2<bool>(false, arg_2.a.x))), func_3(Struct_2(arg_2, arg_2), Struct_4(max(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(select(-498f, -1000f, false))), Struct_2(arg_2, arg_2)), false && any(arg_2.a.yxx)), arg_2.a.yx, false);
    let var_1 = firstLeadingBit(u_input.a.wy) | u_input.a.yy;
    return vec2<bool>(select(var_0.x, func_3(Struct_2(arg_2, arg_2), Struct_4(_wgslsmith_mod_i32(49045i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -375f)), Struct_2(Struct_1(arg_2.a), Struct_1(vec4<bool>(arg_2.a.x, var_0.x, arg_2.a.x, arg_2.a.x)))).x, (func_3(Struct_2(Struct_1(vec4<bool>(arg_2.a.x, var_0.x, false, arg_1)), Struct_1(vec4<bool>(true, arg_1, arg_1, true))), Struct_4(48532i, 1000f), Struct_2(Struct_1(arg_2.a), Struct_1(arg_2.a))).x | false) & !(!arg_1)), func_3(Struct_2(Struct_1(!vec4<bool>(arg_1, false, arg_1, false)), arg_2), Struct_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, 23052i, arg_0.x, 0i)), arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-333f)) + _wgslsmith_f_op_f32(2094f + 361f))), Struct_2(arg_2, arg_2)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1640f, -195f)) - vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, false, true))), max(u_input.d.x, u_input.b), Struct_3(15265u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-265f)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-1000f * 382f))))), select(!func_2(reverseBits(u_input.a.zyx), true, Struct_1(vec4<bool>(false, true, false, true))), func_2(u_input.a.zyz, _wgslsmith_mod_u32(u_input.c, 72970u) <= ~29566u, Struct_1(vec4<bool>(true, true, true, true))), true)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), true)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 731f) * vec2<f32>(548f, var_0.x)), vec2<f32>(-1089f, -1479f), any(vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, var_0.x) + vec2<f32>(-414f, -849f))), vec2<bool>(true, func_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, false))), Struct_4(u_input.b, -306f), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, false)))).x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1304f) * _wgslsmith_div_vec2_f32(vec2<f32>(361f, var_0.x), vec2<f32>(var_0.x, -1462f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, -504f), vec2<f32>(var_0.x, var_0.x))))));
    var var_1 = Struct_4(max(~reverseBits(-10346i), u_input.d.x), -711f);
    let var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1211f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f + var_0.x) + _wgslsmith_div_f32(var_1.b, var_1.b))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), var_1.b)));
    var var_3 = Struct_1(vec4<bool>(false, false, func_3(Struct_2(Struct_1(vec4<bool>(true, var_2, var_2, var_2)), Struct_1(vec4<bool>(false, var_2, var_2, true))), Struct_4(var_1.a & -6775i, -628f), Struct_2(Struct_1(vec4<bool>(var_2, false, false, var_2)), Struct_1(vec4<bool>(var_2, true, var_2, false)))).x, (~22842u > _wgslsmith_add_u32(u_input.e, u_input.c)) | (-930f == var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zw, -vec2<i32>(var_1.a, u_input.b), vec2<u32>(13727u, max(35670u, ~1u)));
}

