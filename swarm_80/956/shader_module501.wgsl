struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    let var_0 = abs(vec2<u32>(~(~arg_0.c), ~26762u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(trunc(1029f)), -1133f, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.b.x, arg_0.b.x, 521f)))))));
    let var_2 = ~var_0.x;
    var var_3 = select(_wgslsmith_add_u32(firstTrailingBit(var_0.x), var_2) & ~(_wgslsmith_add_u32(arg_0.c, var_2) | ~arg_0.c), ~var_2, !arg_0.d.x);
    var_3 = u_input.a.x;
    return min(~4294967295u, 3292u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = -min(_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(-2147483647i, 0i, 0i, -8427i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mult_i32(-2147483647i >> (u_input.a.x % 32u), ~(~(-14807i))));
    var var_1 = vec2<bool>(30928u < func_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1033f, -1495f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(546f, -206f))), ~4294967295u, vec3<bool>(true, false, false)), vec3<i32>(-1i, select(-66534i, 18932i, true), ~(-2147483647i))), all(vec2<bool>(~u_input.a.x > _wgslsmith_mult_u32(u_input.a.x, arg_0.x), true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(808f, 1479f) - vec2<f32>(483f, 1963f))))))), vec2<f32>(_wgslsmith_f_op_f32(1795f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-538f - -520f) - _wgslsmith_f_op_f32(select(-126f, -143f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -780f)), u_input.a.x, !vec3<bool>(var_1.x, var_1.x, true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b.x, var_2.b.x), vec2<f32>(1000f, var_2.b.x), var_2.d.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b - vec2<f32>(var_2.a.x, -1000f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.x, var_2.b.x))))), false)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-586f)), var_2.a.x), -408f)), -675f), 22435u, !select(var_2.d, !select(vec3<bool>(var_2.d.x, var_2.d.x, false), vec3<bool>(var_1.x, true, var_1.x), var_2.d), select(vec3<bool>(var_2.d.x, var_2.d.x, true), !var_2.d, !var_1.x)));
    let var_4 = 0u;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x)) * 157f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.b)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1747f), _wgslsmith_f_op_f32(var_3.b.x * 541f)))), 1u, var_3.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = arg_1.x;
    let var_1 = func_2(vec4<u32>(~u_input.a.x, 0u, abs((0u >> (u_input.a.x % 32u)) & 4294967295u), u_input.a.x));
    var var_2 = arg_1.x;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1007f, _wgslsmith_f_op_f32(1680f + var_1.b.x))), 135f, var_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1291f, var_0, var_0) * vec3<f32>(-306f, arg_1.x, 398f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-871f, var_0, -177f), vec3<f32>(1000f, arg_1.x, var_1.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 277f, var_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1510f, arg_1.x, -307f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, var_0)))))), !var_1.d.x && var_1.d.x)));
    return func_2(_wgslsmith_add_vec4_u32(~abs(reverseBits(vec4<u32>(1u, 65363u, var_1.c, u_input.a.x))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c, var_1.c, var_1.c, 4294967295u), vec4<u32>(1u, var_1.c, u_input.a.x, 4294967295u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, var_1.c, u_input.a.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0.b.x;
    var_0 = _wgslsmith_f_op_f32(-func_2(~vec4<u32>(86462u, ~arg_0.c, u_input.a.x, ~4294967295u)).a.x);
    var var_1 = arg_1.a.x;
    let var_2 = arg_1;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.x))) + _wgslsmith_f_op_f32(-arg_1.a.x));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-730f, -1450f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -865f) + vec2<f32>(788f, -232f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-398f, 1446f), vec2<f32>(1565f, 807f), true)) + vec2<f32>(-450f, -1225f)), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-659f, -1245f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, -279f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, 539f)))), u_input.a.x, select(vec3<bool>(true, any(vec3<bool>(false, true, false)), true), vec3<bool>(!select(true, true, true), !any(vec2<bool>(true, false)), true), true));
    var_1 = Struct_1(var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.b)))), ~func_4(func_1(select(var_1.d, vec3<bool>(var_1.d.x, true, var_1.d.x), false), vec2<f32>(var_1.b.x, var_1.b.x)), Struct_1(vec2<f32>(var_1.b.x, var_1.b.x), func_2(vec4<u32>(var_1.c, 50635u, u_input.a.x, 1u)).a, min(u_input.a.x, var_1.c), vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x))), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(max(var_1.b.x, 623f)), true)), true));
    var var_2 = any(func_1(select(!(!var_1.d), var_1.d, !all(vec2<bool>(var_1.d.x, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.b.x))).d);
    let var_3 = func_1(select(var_1.d, func_1(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(12563u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(var_1.c, var_1.c, var_1.c, var_1.c))).d, var_1.a).d, all(select(var_1.d, var_1.d, false))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -1397f) + vec2<f32>(var_1.b.x, 758f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(770f, -1335f) - var_1.b)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - _wgslsmith_f_op_vec2_f32(-var_1.a)))));
    var var_4 = _wgslsmith_mult_vec2_u32(~select(~reverseBits(u_input.a), u_input.a | u_input.a, select(var_3.d.xz, func_2(vec4<u32>(u_input.a.x, u_input.a.x, 24394u, 1u)).d.zz, select(var_1.d.yz, var_1.d.zy, var_3.d.x))), ~vec2<u32>(_wgslsmith_mult_u32(var_3.c, 1u), 32191u >> (0u % 32u)) >> (max(_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.c, var_3.c), vec2<u32>(4294967295u, var_3.c)), max(vec2<u32>(var_1.c, 4294967295u), ~u_input.a)) % vec2<u32>(32u)));
    var_4 = _wgslsmith_clamp_vec2_u32(~countOneBits(vec2<u32>(43833u & var_3.c, 49116u)), u_input.a, vec2<u32>(~countOneBits(_wgslsmith_clamp_u32(var_3.c, var_1.c, var_3.c)), min(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.c, var_3.c, 4294967295u, var_3.c), ~vec4<u32>(var_4.x, 28755u, 75126u, 74552u)), 15344u)));
    var_2 = all(!select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, var_1.d.x), vec4<bool>(var_3.d.x, true, true, false)), vec4<bool>(false, var_3.d.x, var_3.d.x, var_1.d.x), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1853f, var_1.a.x, -628f, -188f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_1.a.x, var_1.b.x, var_3.a.x) * vec4<f32>(-1354f, -1003f, var_3.a.x, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_1.b.x, -263f, var_3.b.x)))))));
}

