struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<f32> {
    return vec2<f32>(arg_1.x, -1343f);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_u32(~abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(17066u, 109178u, 22062u, 0u)), _wgslsmith_sub_u32(0u, u_input.a), 5725u)), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(67734u, 4294967295u, u_input.a)) | abs(reverseBits(vec3<u32>(1245u, u_input.a, 29710u))), abs(~vec3<u32>(u_input.a, 1u, u_input.a) | vec3<u32>(u_input.a, 4356u, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), false), ~vec3<u32>(u_input.a, u_input.a, 49093u)), firstLeadingBit(select(vec3<u32>(u_input.a, 0u, 7669u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, true, false))))));
    let var_1 = Struct_4(Struct_3(vec3<bool>(all(vec3<bool>(false, false, false)) && any(vec4<bool>(false, true, true, false)), false, true), -4727i, _wgslsmith_div_u32(var_0.x, _wgslsmith_add_u32(~var_0.x, u_input.a | var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * arg_0.a.x)), -571f, arg_0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-326f)), _wgslsmith_f_op_f32(arg_0.a.x + 220f), _wgslsmith_div_f32(676f, arg_0.b.x)) + _wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1549f, arg_0.a.x, -1000f) - arg_0.b))), _wgslsmith_f_op_vec3_f32(arg_0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.b))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(573f, var_1.b.x) * _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x))))));
    let var_3 = var_1.a;
    var var_4 = true;
    return !(!vec4<bool>(var_3.a.x, min(var_1.a.c, 1u) <= (var_0.x ^ 1u), var_1.a.a.x, !all(vec2<bool>(var_1.a.a.x, var_3.a.x))));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_3(vec3<bool>(all(func_3(Struct_2(vec2<f32>(455f, 1287f), vec3<f32>(653f, 1067f, 798f)))), !any(vec2<bool>(false, false)), any(vec3<bool>(true, false, false))), reverseBits(countOneBits(0i)), 1u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, -614f, -399f)), vec3<f32>(-380f, 685f, -1117f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1069f, 610f, 335f) + vec3<f32>(-289f, 453f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-908f, -517f, 285f), vec3<f32>(206f, -221f, -1000f))) + vec3<f32>(-523f, -421f, -645f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(467f, 1029f, 993f))))), all(vec2<bool>(true, true)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a.d.x, _wgslsmith_f_op_f32(-var_0.a.d.x), false)), var_0.a.d.x) + _wgslsmith_f_op_vec2_f32(func_1(Struct_3(select(var_0.a.a, vec3<bool>(false, false, true), true), _wgslsmith_mult_i32(var_0.a.b, var_0.a.b), 0u & u_input.a, _wgslsmith_f_op_vec3_f32(-var_0.b)), _wgslsmith_f_op_vec2_f32(var_0.a.d.xx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(367f, -630f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, -747f, var_0.a.d.x)), _wgslsmith_f_op_vec3_f32(-var_0.b), var_0.a.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, -125f, var_0.b.x), vec3<f32>(1596f, var_0.a.d.x, -262f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, 1924f, -658f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2178f, -1412f)), _wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(508f)))))));
    let var_2 = reverseBits(~max(_wgslsmith_div_vec3_i32(vec3<i32>(-20354i, var_0.a.b, 0i), vec3<i32>(var_0.a.b, var_0.a.b, var_0.a.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b, var_0.a.b, 27059i, var_0.a.b), vec4<i32>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b)), firstLeadingBit(var_0.a.b), -var_0.a.b)));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.b.zx, _wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(var_0.a.d.x, -1919f))))) + var_1.b.zx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.b))), var_0.a.d)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.d), vec3<f32>(-145f, var_0.b.x, _wgslsmith_f_op_f32(-var_0.a.d.x)))));
    var var_3 = Struct_3(vec3<bool>(!any(vec2<bool>(true, true)) || all(select(vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, true), vec4<bool>(true, false, var_0.a.a.x, false), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))), true | (~6349i < var_2.x), false), -62973i, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(var_0.a.c, 0u), u_input.a) | _wgslsmith_sub_u32(~(~u_input.a), 13113u), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(round(275f))));
    return -1776f;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    var var_0 = vec2<i32>(-1i, i32(-1i) * -2147483647i);
    let var_1 = ~max(vec2<u32>(u_input.a, u_input.a & arg_1), abs(~(~vec2<u32>(4294967295u, 1u))));
    var_0 = vec2<i32>(-23566i, ~select(0i, var_0.x, (arg_0.a.x < arg_0.a.x) & any(vec4<bool>(true, true, false, false))));
    var var_2 = select(select(func_3(arg_0).xz, !func_3(Struct_2(arg_0.a, vec3<f32>(arg_0.a.x, -2628f, -1499f))).wx, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, false))), !select(vec2<bool>(true, all(vec4<bool>(true, false, false, true))), vec2<bool>(select(true, true, true), true), vec2<bool>(true, true)), vec2<bool>(false, any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false))));
    let var_3 = ~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -2147483647i, -115759i, var_0.x), vec4<i32>(-42134i, var_0.x, 18076i, var_0.x), vec4<i32>(-1i, -16905i, var_0.x, -1i)), vec4<i32>(-1i, 1i, var_0.x, var_0.x) << (vec4<u32>(arg_1, 49767u, arg_1, var_1.x) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 53930i), vec2<i32>(var_0.x, var_0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, 41817i), vec2<i32>(var_0.x, -2147483647i)))), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, select(-3865i, -94994i, var_2.x)) << ((_wgslsmith_clamp_u32(arg_1, 50042u, u_input.a) << (arg_1 % 32u)) % 32u), 1i);
    return select(vec4<bool>(min(~0i, i32(-1i) * -52141i) != firstLeadingBit(_wgslsmith_mult_i32(var_3.x, var_0.x)), arg_1 != (~arg_1 >> (1u % 32u)), var_2.x | false, all(select(func_3(arg_0).zy, vec2<bool>(false, var_2.x), !vec2<bool>(var_2.x, var_2.x)))), !vec4<bool>(29254u != abs(u_input.a), !var_2.x, true, true), 0u <= ~(~(~var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1117f;
    var var_1 = -491f;
    var var_2 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, -689f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(vec3<bool>(true, false, false), -45944i, u_input.a, vec3<f32>(var_0, -1503f, -409f)), vec2<f32>(208f, var_0)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(518f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_2())))), ~(~(~(~u_input.a))));
    var var_3 = !(!var_2.x);
    var var_4 = Struct_4(Struct_3(vec3<bool>(all(var_2.yx) != (1u < u_input.a), any(vec4<bool>(true, true, true, true)), !any(var_2.xyz)), _wgslsmith_div_i32(1i, 33929i), max(~1u, select(u_input.a, u_input.a, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -270f, var_0)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(234f, var_0, var_0), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, var_0))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -528f, var_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1019f, -275f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_0, 102f), vec3<f32>(var_0, 1004f, var_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-592f, -329f, 328f))) - vec3<f32>(var_0, var_0, 224f)))));
    var_2 = vec4<bool>(true, false, false, select(true, select(var_4.a.a.x & false, !var_4.a.a.x, !(var_4.a.c == 20046u)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(861i, var_4.a.b, var_4.a.b, var_4.a.b)), ~vec4<i32>(1i, -2147483647i, 2147483647i, var_4.a.b)) < (i32(-1i) * -2147483647i)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_4.a.d.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.b.x)) - -1000f))));
    let var_6 = max(firstLeadingBit(~var_4.a.c) >> (_wgslsmith_mod_u32(select(1u, select(var_4.a.c, u_input.a, var_4.a.a.x), var_2.x), 4294967295u) % 32u), _wgslsmith_div_u32(var_4.a.c, ~9176u));
    var_2 = vec4<bool>(any(var_2.zw), false, !(!(!any(var_2.yw))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(min(abs(vec4<u32>(967u, var_4.a.c, var_6, var_6)), vec4<u32>(var_4.a.c, 29047u, u_input.a, 34379u)) << (vec4<u32>(74247u | var_6, _wgslsmith_dot_vec4_u32(vec4<u32>(var_6, 1u, 4294967295u, 1u), vec4<u32>(55498u, u_input.a, var_4.a.c, var_4.a.c)), ~u_input.a, var_4.a.c) % vec4<u32>(32u))), var_6, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), var_5)))), max(1u, var_4.a.c) | ~(~_wgslsmith_mod_u32(u_input.a, var_6)));
}

