struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(all(vec2<bool>(true, true)), true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(177f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(104f, -397f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(714f, 751f, 552f, -1244f), vec4<f32>(2861f, 948f, 1432f, -291f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-106f, 938f, 392f, 283f), vec4<f32>(487f, 881f, 1380f, -391f))))) + vec4<f32>(_wgslsmith_f_op_f32(1000f * 1010f), _wgslsmith_f_op_f32(2131f - 1000f), _wgslsmith_f_op_f32(-493f - -1415f), _wgslsmith_f_op_f32(-830f * 771f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1059f - -2603f))), false, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -52125i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, _wgslsmith_add_i32(u_input.a, 33861i), -8302i) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(var_1.a.c + var_1.a.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.b) - var_1.a.b), _wgslsmith_f_op_vec4_f32(-var_1.a.b), var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.a)) * -1388f) * var_1.a.c)), false, max(vec4<i32>(u_input.a << (reverseBits(32201u) % 32u), 2147483647i, min(~(-1i), _wgslsmith_dot_vec2_i32(var_1.c.yy, var_1.c.xy)), -u_input.a ^ -var_1.c.x), -(~var_1.c)));
    var_1 = Struct_3(Struct_1(-1012f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(948f, -1000f, 833f, -291f) - vec4<f32>(var_1.a.b.x, -116f, -131f, 690f)))), var_1.a.c), ((var_1.c.x << (firstLeadingBit(4294967295u) % 32u)) <= _wgslsmith_mod_i32(_wgslsmith_sub_i32(-34911i, u_input.a), 0i)) & select(all(!vec2<bool>(var_0.x, true)), any(var_0), any(select(vec2<bool>(var_0.x, var_0.x), var_0.zy, var_0.yz))), -(~vec4<i32>(reverseBits(u_input.a), 21117i, u_input.a, min(-22234i, -39741i))));
    let var_2 = !(!var_0);
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(4294967295u, 35171u, 76416u, 44153u), ~vec4<u32>(34803u, 0u, 5910u, 0u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = vec2<i32>(-32147i, 2147483647i);
    var_0 = vec2<i32>(-6024i, ~12988i >> (reverseBits(0u) % 32u));
    let var_1 = arg_0.b.zwz;
    var var_2 = false;
    let var_3 = vec2<u32>(countOneBits(~func_3() | (firstLeadingBit(0u) << (1u % 32u))), ~_wgslsmith_mult_u32(63204u, 1u));
    return 25370u >= (0u >> (var_3.x % 32u));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-147f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f - _wgslsmith_f_op_f32(max(-484f, _wgslsmith_f_op_f32(-1000f - 974f))))));
    var var_1 = ((!func_2(Struct_1(291f, vec4<f32>(-1176f, -151f, -445f, 481f), 1701f)) | all(vec2<bool>(false, true))) || false) | all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true));
    let var_2 = any(select(vec2<bool>(any(vec3<bool>(false, false, true)), true), select(vec2<bool>(true, all(vec3<bool>(false, true, true))), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), any(vec4<bool>(true, true, true, true))), true), false | any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))));
    let var_3 = arg_0;
    var_0 = 112f;
    return var_2;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<f32>) -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(arg_2.x, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-387f, 547f)))), _wgslsmith_f_op_f32(f32(-1f) * -203f), 623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(406f, arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1486f, -375f), _wgslsmith_f_op_f32(round(arg_2.x)), !arg_1)))), true, abs(max(vec4<i32>(43463i, _wgslsmith_mod_i32(-1i, 17764i), abs(-1i), u_input.a), max(vec4<i32>(u_input.a, u_input.a, u_input.a, -80645i), vec4<i32>(u_input.a, u_input.a, -43925i, u_input.a)) | select(vec4<i32>(52849i, u_input.a, u_input.a, 35056i), vec4<i32>(u_input.a, u_input.a, 11612i, u_input.a), arg_0))));
    return max(~vec4<u32>(11422u, 32193u, countOneBits(4294967295u), 1u), ~select(~(~vec4<u32>(23498u, 41866u, 1u, 25769u)), vec4<u32>(abs(2460u), 1u, 0u, ~13320u), !(var_0.a.c >= 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -5912i;
    var_0 = countOneBits(1940i);
    let var_1 = Struct_2(~firstLeadingBit(~(~vec3<i32>(-69125i, 2147483647i, u_input.a))), u_input.a, func_4(func_1(vec3<u32>(1u, 78992u, 26462u)), true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1072f, -1246f) + vec2<f32>(1589f, 1393f))))) << ((abs(vec4<u32>(1u, 1u, 1u, 1u)) << (countOneBits(~vec4<u32>(22123u, 4294967295u, 25838u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = !(!(!vec4<bool>(false, func_1(var_1.c.wxx), true, true)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(1771f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-189f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-633f, 1761f, -3135f, 385f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1301f, -606f, -1197f, 685f), vec4<f32>(-868f, -473f, -1496f, 265f), vec4<bool>(var_2.x, var_2.x, true, false)))))))), -680f);
    var_3 = Struct_1(_wgslsmith_f_op_f32(select(-1687f, var_3.b.x, false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a, var_3.c, 108f, 432f), var_3.b)), var_3.b, !vec4<bool>(false, false, var_2.x, false))))), _wgslsmith_f_op_f32(-1900f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(429f + 765f))))));
    var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(795f - var_3.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-164f - var_3.a), _wgslsmith_f_op_f32(var_3.c * var_3.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a - -2887f)), _wgslsmith_f_op_f32(ceil(910f)), var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1375f) * -168f)) - vec4<f32>(-123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1280f * -106f) + -645f), var_3.a, var_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -2052f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, var_1.b, -38805i, -2147483647i), select(_wgslsmith_add_vec4_i32(vec4<i32>(21437i, var_1.a.x, 2147483647i, -2147483647i), vec4<i32>(u_input.a, var_1.b, var_1.a.x, var_1.b)), vec4<i32>(0i, 1i, 1i, -43619i), false)), i32(-1i) * -1i, u_input.a, 2147483647i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2801f + var_3.c), var_3.a, all(var_2.ww))), var_3.a))), var_1.c.xwz, vec2<u32>(var_1.c.x, ~(~var_1.c.x)));
}

