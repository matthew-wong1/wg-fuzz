struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(1u, true)), Struct_2(Struct_1(55609u, true)), Struct_2(Struct_1(50714u, false)), Struct_2(Struct_1(50843u, true)), Struct_2(Struct_1(0u, true)), Struct_2(Struct_1(91698u, false)), Struct_2(Struct_1(46952u, false)), Struct_2(Struct_1(1u, true)), Struct_2(Struct_1(48930u, true)), Struct_2(Struct_1(94909u, false)), Struct_2(Struct_1(48118u, true)), Struct_2(Struct_1(0u, true)), Struct_2(Struct_1(4294967295u, false)), Struct_2(Struct_1(59230u, false)), Struct_2(Struct_1(46955u, false)), Struct_2(Struct_1(1u, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-164f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.b, -660f)))))), global0.d, _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, 306f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-869f, global0.d), _wgslsmith_f_op_f32(floor(global0.d))))))));
    let var_1 = !global0.a.a.xw;
    global1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(~arg_1.x | (~arg_1.x | 1u), ~(~min(1u, global0.c.a))), countOneBits(_wgslsmith_sub_u32(reverseBits(abs(39886u)), ~arg_1.x)));
    var var_2 = 0u;
    var var_3 = global0.a;
    return ~0u > arg_2.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = Struct_4(Struct_3(global0.a.a), -1000f, Struct_1(1u, !arg_2.a.b), 325f, arg_0.xzx);
    let var_1 = abs(vec4<u32>(arg_2.a.a, firstLeadingBit(_wgslsmith_sub_u32(arg_2.a.a, ~u_input.a)), global0.c.a, arg_1.a));
    let var_2 = Struct_3(select(select(select(select(var_0.a.a, arg_0, true), !vec4<bool>(true, true, global0.e.x, true), !var_0.a.a), !select(arg_0, var_0.a.a, vec4<bool>(false, var_0.c.b, false, arg_2.a.b)), arg_1.b), global0.a.a, vec4<bool>(all(vec4<bool>(true, arg_2.a.b, true, var_0.c.b)), all(!vec4<bool>(arg_1.b, arg_2.a.b, arg_0.x, global0.c.b)), true, true)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3)), -755f, arg_3);
    var var_4 = var_0;
    return var_4.c.a;
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.d)), _wgslsmith_f_op_f32(sign(global0.d))) + global0.b)) * vec2<f32>(global0.d, _wgslsmith_f_op_f32(select(-685f, -519f, true))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)) - var_0.x), global0.d)), var_0.x, var_0.x);
    global1 = _wgslsmith_mult_u32(u_input.a, func_4(!select(global0.a.a, vec4<bool>(global0.a.a.x, global0.c.b, arg_0, true), arg_0), Struct_1(4294967295u, func_3(global0.c, ~vec2<u32>(19935u, 4712u), vec4<u32>(0u, 4294967295u, 39949u, global0.c.a))), Struct_2(global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2993f) - _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = abs(firstLeadingBit(firstTrailingBit(-max(vec2<i32>(u_input.d, u_input.b), vec2<i32>(u_input.d, u_input.b)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d, global0.d, 753f, global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.x, var_1.x, 1929f) - vec4<f32>(-171f, -968f, 703f, var_1.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, var_1.x, 1761f, -1896f)), vec4<f32>(global0.d, 1227f, -498f, 1488f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(523f, 474f, -503f, -1054f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, var_0.x, var_1.x, 1459f))))) * vec4<f32>(_wgslsmith_f_op_f32(-644f * global0.d), _wgslsmith_f_op_f32(-global0.d), -209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1330f, -1000f), 2141f)) + -643f)));
    return Struct_4(Struct_3(global0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(725f)))) - global0.b), Struct_1(4294967295u, global0.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1432f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1866f, -997f))))), vec3<bool>(1u <= u_input.a, true, false));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(true);
    var var_1 = Struct_5(var_0.e, var_0.a.a.xzx, vec4<bool>(var_0.a.a.x, !(!func_3(var_0.c, vec2<u32>(global0.c.a, 1u), vec4<u32>(global0.c.a, var_0.c.a, 12979u, 4294967295u))), !var_0.a.a.x, false), var_0.a, global0.c);
    let var_2 = vec2<i32>(u_input.d, ~(~(~u_input.d)) << (~u_input.a % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1213f, -550f, -493f) + vec3<f32>(557f, global0.b, var_0.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, 815f, -698f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(117f, 297f, 1789f), vec3<f32>(-351f, global0.b, global0.b), var_1.a.x)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.d)), global0.d, 655f))))));
    var var_4 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.c.a, global0.c.a, 4294967295u), max(vec4<u32>(var_0.c.a, u_input.a, 0u, u_input.a), vec4<u32>(var_1.e.a, var_0.c.a, 69759u, 4294967295u))), vec4<u32>(global0.c.a, 8856u, var_0.c.a, u_input.a) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.a, var_0.c.a, 74234u, 26810u), vec4<u32>(u_input.a, u_input.a, 8119u, 1u))), ~(~vec4<u32>(var_0.c.a, u_input.a, 9650u, global0.c.a)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.a, var_1.e.a, 0u, 0u), vec4<u32>(4294967295u, 9919u, 1u, 56027u)), ~select(~vec4<u32>(29889u, 25269u, 1u, 6477u), vec4<u32>(var_0.c.a, 1u, var_0.c.a, 1u) & vec4<u32>(global0.c.a, global0.c.a, 25878u, 1u), false)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.c.a, 1u, u_input.a), _wgslsmith_div_u32(var_1.e.a, 0u), 1u, u_input.a & 2538u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.a, u_input.a, 0u, 15661u) & vec4<u32>(0u, var_0.c.a, u_input.a, global0.c.a), vec4<u32>(0u, 1u, var_1.e.a, var_0.c.a) & vec4<u32>(4294967295u, 84914u, 89685u, 50707u))), _wgslsmith_add_vec4_u32(vec4<u32>(69411u, 25638u, 0u, 0u) | vec4<u32>(u_input.a, var_1.e.a, global0.c.a, u_input.a), max(vec4<u32>(0u, global0.c.a, var_1.e.a, var_0.c.a), vec4<u32>(16969u, var_1.e.a, 24887u, var_1.e.a))) << (~vec4<u32>(u_input.a, 4294967295u, global0.c.a, var_0.c.a) % vec4<u32>(32u)), vec4<bool>(false, var_1.e.b, true & any(var_1.b), var_0.e.x | func_2(true).e.x)), false);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, global0.b, var_0.b) + vec3<f32>(var_3.x, var_3.x, 314f))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1213f, var_3.x, -1325f, 590f), vec4<f32>(var_3.x, var_0.d, 380f, -1258f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.d - global0.d), 1458f, var_3.x, _wgslsmith_f_op_f32(max(-1274f, -1979f)))))), -1769f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    var var_0 = _wgslsmith_f_op_f32(-1377f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(772f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * -437f))));
    global1 = 1u;
    let x = u_input.a;
    s_output = func_1();
}

