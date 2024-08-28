struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = vec2<u32>(min(~arg_0.a.d.x, u_input.d.x), ~4294967295u);
    let var_1 = -28362i;
    var_0 = u_input.e.yy;
    let var_2 = ~reverseBits(-_wgslsmith_sub_i32(-1i, u_input.b) | _wgslsmith_clamp_i32(1i, abs(-1i), firstTrailingBit(u_input.c)));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(arg_1.x, 713f), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -562f)), _wgslsmith_f_op_f32(arg_0.b.x + arg_0.a.a.x));
    return 1000f;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1583f, 590f, 142f, 1107f)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, u_input.d.x, 46857u, u_input.e.x), reverseBits(vec4<u32>(u_input.d.x, u_input.e.x, u_input.e.x, 51459u))), vec4<bool>(true, true, true, true), ~(~u_input.e), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(-953f, 1047f, -741f, 421f), vec4<u32>(u_input.e.x, 25927u, u_input.e.x, u_input.d.x), vec4<bool>(false, false, false, false), u_input.e, vec4<bool>(false, true, false, true)), vec3<f32>(199f, 297f, -1000f), -147f), _wgslsmith_f_op_vec3_f32(vec3<f32>(259f, 401f, -248f) - vec3<f32>(742f, -1095f, -406f)), ~vec2<u32>(u_input.d.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1685f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1904f - 981f), _wgslsmith_f_op_f32(sign(-1035f)))), _wgslsmith_f_op_f32(f32(-1f) * -698f)), ~abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.b, u_input.c), vec2<i32>(-1i, u_input.b))) & vec2<i32>(u_input.a | ~32230i, u_input.a), all(vec3<bool>(true, !any(vec2<bool>(false, true)), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -169f, 146f, -1757f) - vec4<f32>(-1285f, -271f, 756f, -229f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, 1130f, 592f, 302f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -699f, 303f, 414f), vec4<f32>(1000f, 228f, 503f, 1456f), vec4<bool>(false, false, true, false))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(440f * 1609f))), -518f, _wgslsmith_f_op_f32(-695f + 1780f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2811f) + 441f))), ~u_input.b < 1i);
    let var_1 = var_0.a;
    var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1452f, 433f, var_0.a.a.a.x, 740f), var_0.d, vec4<bool>(false, true, true, true))) + _wgslsmith_f_op_vec4_f32(var_1.a.a * var_1.a.a)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(42323u, 4294967295u, 127685u, 1u), u_input.e)), !(!var_1.a.e), select(vec4<u32>(u_input.d.x, 8713u, var_0.a.a.b.x, 0u), u_input.e, false), vec4<bool>(var_1.a.c.x, all(vec4<bool>(var_0.c, var_0.c, var_0.a.a.e.x, var_0.e)), var_1.a.c.x || true, all(vec2<bool>(true, var_0.c)))), var_1.b, 1481f), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, u_input.b), vec2<i32>(-47759i, reverseBits(var_0.b.x)))), any(var_0.a.a.e), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, -856f, -705f, var_1.a.a.x) + vec4<f32>(var_1.a.a.x, var_0.a.c, var_1.c, 852f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(239f, var_1.b.x, var_1.b.x, 906f) * vec4<f32>(var_0.d.x, 967f, 647f, 401f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(select(var_1.b.x, -193f, var_1.a.e.x)), 144f, _wgslsmith_f_op_f32(-246f + 1265f)) - vec4<f32>(-1170f, _wgslsmith_f_op_f32(f32(-1f) * -270f), 766f, _wgslsmith_f_op_f32(-257f * var_1.a.a.x))), true && !var_0.e)), true);
    var_0 = Struct_3(var_0.a, _wgslsmith_clamp_vec2_i32(max(vec2<i32>(-1i) * -vec2<i32>(-1193i, 1i), ~vec2<i32>(-31701i, 56701i)), firstTrailingBit(vec2<i32>(~u_input.b, 23117i)), var_0.b), any(select(!select(vec2<bool>(var_1.a.e.x, true), var_0.a.a.c.ww, var_0.a.a.c.wy), vec2<bool>(var_1.a.e.x, all(vec3<bool>(true, false, true))), !var_0.c)), _wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.a.a.x, var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -781f), -1000f, -112f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c, var_0.a.a.a.x, var_1.a.a.x, var_0.a.b.x))))))), var_1.a.c.x);
    let var_2 = var_1.c;
    return Struct_3(var_0.a, ~var_0.b, any(vec2<bool>(false, true)), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1305f * 402f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x + var_0.a.a.a.x))), _wgslsmith_f_op_f32(func_3(var_0.a, var_1.b, var_1.a.b.wz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1457f, var_1.b.x)))) + -364f)), true);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> bool {
    let var_0 = !(!(!arg_0.x | true));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(func_3(func_2().a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(944f, 205f)))), _wgslsmith_f_op_f32(-var_1.a.a.a.x))), _wgslsmith_mult_vec2_u32(~select(var_1.a.a.d.zw, ~arg_2, vec2<bool>(true, true)), u_input.d.zz)));
    let var_3 = var_1.a.a;
    var var_4 = func_2().a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(712f)), _wgslsmith_f_op_f32(-arg_3)))), 1240f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-886f))) * var_4.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(select(vec2<bool>(func_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(step(791f, 240f)), vec2<u32>(4294967295u, u_input.e.x), -784f), _wgslsmith_f_op_f32(ceil(-613f)) <= _wgslsmith_f_op_f32(f32(-1f) * -736f)), vec2<bool>(true, !any(vec3<bool>(true, false, false))), !vec2<bool>(select(true, false, true), true)), func_2().a.a.c);
    var_0 = Struct_5(var_0.b.zx, !(!var_0.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, -423f, 454f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1632f, -1031f, 1317f) - vec3<f32>(262f, -730f, 1326f)), true != var_0.b.x)))))));
    var_0 = Struct_5(func_2().a.a.e.zz, var_0.b);
    var_0 = Struct_5(vec2<bool>(func_2().a.a.e.x, !var_0.b.x), !select(!var_0.b, !(!var_0.b), !(var_0.b.x || true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), -806f), 10295u, 907f);
}

