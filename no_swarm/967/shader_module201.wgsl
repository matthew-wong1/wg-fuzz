struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_add_i32(1i, min(_wgslsmith_mult_i32(-9582i, -64513i), 0i)) >= select(1i, 9331i, all(vec3<bool>(true, true, true)) & true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1352f * 564f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -567f))), _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1810f, -194f) + _wgslsmith_f_op_f32(abs(-155f))), 1f, 287f)));
    let var_1 = var_0;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-19744i, 33560i), vec2<i32>(-17883i, 0i), vec2<bool>(var_0.a, var_0.a)), -vec2<i32>(0i, -17398i))) >> (_wgslsmith_add_u32(u_input.a, 34234u) % 32u), min(1i, ~(-1i << (0u % 32u))));
    return select(vec2<bool>(!select(u_input.a >= 4294967295u, all(vec2<bool>(true, true)), var_0.c < var_1.d.x), var_1.b.x), !var_1.b.zx, !vec2<bool>(true, var_0.b.x));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> vec4<f32> {
    let var_0 = !select(!(!vec2<bool>(arg_0, false)), select(vec2<bool>(false, false), select(!vec2<bool>(arg_0, true), func_3(), all(vec4<bool>(false, true, false, false))), true), select(vec2<bool>(true, true), func_3(), all(vec2<bool>(true, arg_0))));
    let var_1 = Struct_1(any(vec2<bool>(all(var_0) != true, false)), !select(!(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(false, true, func_3().x), var_0.x), 712f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, arg_2, 1955f) * vec3<f32>(arg_2, 952f, 441f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, 644f), vec3<f32>(-642f, -407f, arg_2)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1693f), _wgslsmith_f_op_f32(-arg_2), arg_2))));
    var var_2 = u_input.a;
    let var_3 = vec2<u32>(u_input.a, 72541u);
    var var_4 = var_1;
    return _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, -650f, -304f, -122f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, arg_2, 1090f, arg_2)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, 933f, var_1.d.x, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, -605f, arg_2, -846f))), vec4<f32>(-201f, _wgslsmith_f_op_f32(arg_2 + -523f), var_4.d.x, -1361f)))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_1(true, vec3<bool>(true, false, true), 2181f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-956f, 412f))), 1930f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(321f - 1007f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_0.b.x, select(~u_input.a, 0u, true), _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(min(522f, -225f)))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-923f * _wgslsmith_f_op_f32(select(var_0.d.x, 164f, var_0.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(682f - -584f), -401f)), -829f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(var_0.c * -798f), var_0.c, _wgslsmith_f_op_f32(abs(-1000f)))), vec4<bool>(var_0.a, any(vec3<bool>(var_0.a, var_0.a, var_0.b.x)), var_0.b.x, var_0.b.x && var_0.b.x))));
    var var_2 = ~(-select(_wgslsmith_add_vec2_i32(~vec2<i32>(-2943i, 1i), -vec2<i32>(8929i, -2147483647i)), vec2<i32>(1i, 1i), !select(var_0.b.xz, vec2<bool>(var_0.a, var_0.a), var_0.b.yy)));
    let var_3 = reverseBits(~abs(vec2<u32>(4294967295u, arg_0.x) | (arg_0 ^ arg_0)));
    var_2 = max(vec2<i32>(-var_2.x, ~var_2.x) >> (arg_0 % vec2<u32>(32u)), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 58072i, var_2.x, var_2.x), vec4<i32>(46215i, var_2.x, 0i, 694i)), 0i) | (~(-vec2<i32>(var_2.x, var_2.x)) >> (arg_0 % vec2<u32>(32u))));
    return ~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(78309u, firstTrailingBit(arg_0.x), select(arg_0.x, var_3.x, false)), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a << (~7506u % 32u);
    var_0 = _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 37158u)))), func_1(~vec2<u32>(u_input.a, 27552u)));
    var_0 = ~u_input.a;
    let var_1 = Struct_1(true | !((u_input.a >= u_input.a) && true), vec3<bool>(true, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1855f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2055f, 250f)))), _wgslsmith_f_op_f32(-1909f - _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1134f, 1146f))), _wgslsmith_f_op_f32(-281f * _wgslsmith_f_op_f32(min(153f, 189f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f))))));
    var var_2 = vec4<u32>(u_input.a, u_input.a, u_input.a ^ ~_wgslsmith_add_u32(countOneBits(u_input.a), u_input.a), u_input.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.d.x, var_1.d.x, var_1.c, 659f))) + vec4<f32>(var_1.c, 366f, -950f, 845f))) + vec4<f32>(_wgslsmith_f_op_f32(round(var_1.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.d.x, 202f)))), var_1.d.x, var_1.c))));
    var var_4 = 1636u;
    var var_5 = select(select(select(vec4<bool>(any(vec3<bool>(false, var_1.a, true)), !var_1.b.x, false, true), vec4<bool>(true, u_input.a > 2347u, false & var_1.a, true), select(select(vec4<bool>(true, false, var_1.a, var_1.a), vec4<bool>(false, var_1.a, false, var_1.a), var_1.b.x), vec4<bool>(true, false, var_1.a, true), !var_1.b.x)), !select(select(vec4<bool>(true, var_1.b.x, true, var_1.a), vec4<bool>(true, var_1.b.x, true, var_1.b.x), var_1.b.x), !vec4<bool>(false, false, var_1.a, var_1.a), !var_1.a), true), !(!(!vec4<bool>(var_1.a, true, var_1.a, true))), select(!(!vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.a)), select(select(select(vec4<bool>(var_1.b.x, false, true, var_1.b.x), vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(var_1.a, true, var_1.b.x, false)), !vec4<bool>(false, true, var_1.b.x, true), true), !vec4<bool>(var_1.a, var_1.b.x, true, var_1.b.x), select(select(vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(true, var_1.b.x, var_1.a, var_1.a), var_1.a), !vec4<bool>(var_1.a, false, var_1.a, false), !vec4<bool>(true, true, var_1.b.x, var_1.a))), true));
    let var_6 = Struct_1(true, vec3<bool>(any(vec3<bool>(true, var_5.x, true)) | false, true, !(!var_1.a)), 582f, var_3.wxx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_add_u32(~var_2.x, 4294967295u), firstLeadingBit(~abs(0u))), var_2.x, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(9105i, 53597i)), -vec2<i32>(1i, 26975i) >> ((~vec2<u32>(45601u, u_input.a) ^ (var_2.wz >> (vec2<u32>(var_2.x, u_input.a) % vec2<u32>(32u)))) % vec2<u32>(32u))));
}

