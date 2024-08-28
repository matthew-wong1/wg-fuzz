struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = arg_3;
    return true;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: u32) -> vec2<bool> {
    var var_0 = Struct_2(1408f, vec3<bool>(arg_0, all(vec3<bool>(arg_0, false & arg_0, func_3(vec4<f32>(-1000f, arg_2.x, arg_2.x, 148f), arg_2.x, u_input.d.x, Struct_2(-554f, vec3<bool>(false, arg_0, false), vec4<i32>(u_input.b, u_input.d.x, u_input.b, arg_1))))), func_3(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), -1065f, _wgslsmith_div_f32(arg_2.x, 1187f), _wgslsmith_div_f32(arg_2.x, arg_2.x)), -324f, u_input.d.x, Struct_2(_wgslsmith_div_f32(152f, 1034f), vec3<bool>(false, false, arg_0), -vec4<i32>(arg_1, 24970i, u_input.b, arg_1)))), firstTrailingBit(vec4<i32>(19405i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -38191i, arg_1, u_input.b), vec4<i32>(26094i, 10183i, 8908i, 2147483647i), vec4<i32>(18910i, u_input.b, arg_1, u_input.b)), vec4<i32>(u_input.d.x, arg_1, arg_1, 2147483647i)), min(select(u_input.b, u_input.d.x, true), 0i), firstTrailingBit(583i))));
    let var_1 = ~(~var_0.c.x);
    var var_2 = true;
    var var_3 = false;
    var var_4 = vec4<u32>(4294967295u, _wgslsmith_div_u32(arg_3, 40803u), _wgslsmith_add_u32(arg_3, 14570u), abs(~u_input.c));
    return !vec2<bool>(true, select(arg_0, any(select(vec4<bool>(var_0.b.x, var_0.b.x, arg_0, true), vec4<bool>(false, arg_0, true, true), true)), any(var_0.b.xz)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(324f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - 490f)))), select(!arg_0.d, arg_1.d, !(!vec3<bool>(arg_1.d.x, true, arg_1.b.x))), vec4<i32>(u_input.b, u_input.b, u_input.d.x, u_input.d.x));
    let var_1 = Struct_1(33871u, vec2<bool>(false, false), !select(func_2(true, 0i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, var_0.a, arg_0.e.x, arg_2.x)), u_input.c), vec2<bool>(arg_1.b.x, !arg_0.d.x), true), var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e)));
    let var_2 = !any(select(vec2<bool>(0u > var_1.a, func_3(vec4<f32>(-642f, var_0.a, 674f, 384f), arg_0.e.x, u_input.d.x, Struct_2(-867f, vec3<bool>(var_1.b.x, false, var_0.b.x), vec4<i32>(2147483647i, -2147483647i, var_0.c.x, u_input.d.x)))), vec2<bool>(var_0.c.x == var_0.c.x, false), select(select(vec2<bool>(arg_0.b.x, true), vec2<bool>(arg_0.d.x, var_1.d.x), var_0.b.x), !arg_1.d.xy, false)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(203f)), 1000f));
    var var_4 = vec2<i32>(-33501i, _wgslsmith_mod_i32(63568i, var_0.c.x) | (-29121i & -var_0.c.x));
    return ~min(min(max(min(u_input.a.xz, u_input.a.zy), ~vec2<u32>(u_input.a.x, 0u)), abs(abs(vec2<u32>(arg_0.a, 72074u)))), u_input.a.yz);
}

fn func_1() -> vec2<bool> {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.c, 0u, 1u)), u_input.c) | vec2<u32>(_wgslsmith_mult_u32(18121u, ~_wgslsmith_sub_u32(1u, u_input.c)), _wgslsmith_add_u32(4294967295u, u_input.c));
    var_0 = ~(~func_4(Struct_1(_wgslsmith_clamp_u32(var_0.x, var_0.x, 30892u), vec2<bool>(true, true), func_2(false, u_input.b, vec4<f32>(336f, -936f, 785f, -432f), 108089u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1543f, 1195f))), Struct_1(var_0.x, vec2<bool>(false, false), vec2<bool>(false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 850f) - vec2<f32>(-1743f, -476f))), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(682f, 982f) * vec2<f32>(-855f, 856f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1136f, 1208f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1005f))) - _wgslsmith_f_op_f32(ceil(1435f)))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), func_3(vec4<f32>(-364f, -1119f, -625f, -330f), 965f, 20465i, Struct_2(-1432f, vec3<bool>(false, false, false), vec4<i32>(1i, u_input.d.x, u_input.b, u_input.d.x)))), vec3<bool>(-1i >= u_input.b, any(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true))), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, 17077i), max(3688i, u_input.d.x), u_input.b, u_input.b));
    var_0 = u_input.a.yz;
    var var_2 = reverseBits(~37633i);
    return var_1.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x, func_1(), func_1(), vec3<bool>(true, !(0u < ~u_input.c), !all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1280f, -1197f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2290f, 1251f) - vec2<f32>(1647f, -1068f)))))));
    var var_1 = Struct_1(~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.c, 1u, var_0.a) >> (vec3<u32>(4294967295u, 0u, 18290u) % vec3<u32>(32u)))), var_0.d.zy, !var_0.c, !var_0.d, _wgslsmith_f_op_vec2_f32(exp2(var_0.e)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + _wgslsmith_f_op_f32(sign(var_0.e.x))))) + -465f);
    var_1 = Struct_1(37188u, !var_0.d.zy, func_2(all(var_0.d), 3458i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.e.x, var_1.e.x, var_0.e.x, var_1.e.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(904f, var_1.e.x, var_1.e.x, 363f)))), u_input.a.x), var_0.d, _wgslsmith_f_op_vec2_f32(abs(var_1.e)));
    var_1 = Struct_1(~var_0.a, vec2<bool>(any(!vec2<bool>(var_0.c.x, var_1.d.x)), select(reverseBits(var_1.a), 4294967295u, false) > 1u), select(func_2(true, abs(_wgslsmith_mult_i32(-43027i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1064f, 767f, -676f, var_1.e.x))), 3416u), func_1(), func_1()), vec3<bool>(!(func_3(vec4<f32>(var_1.e.x, 665f, 839f, var_0.e.x), 1777f, 0i, Struct_2(1887f, var_0.d, vec4<i32>(u_input.b, 85526i, u_input.d.x, 11854i))) || true), !func_1().x, true || var_1.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.e.x))))));
    let var_3 = vec4<bool>(var_0.c.x, all(!select(!var_0.d.xz, var_0.b, vec2<bool>(true, true))), true, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(2758u, u_input.c, 1u, u_input.c)), vec4<u32>(1u, reverseBits(var_0.a), countOneBits(u_input.a.x), 50131u)) >= 6383u);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -498f, var_1.e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, var_0.e.x, var_1.e.x) * vec3<f32>(800f, var_0.e.x, -1098f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~var_0.a, var_1.a >> (20964u % 32u))), max(-firstLeadingBit(69741i), -7846i) << (firstLeadingBit(~abs(55157u)) % 32u), _wgslsmith_f_op_f32(step(var_0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(abs(var_4.x))), var_1.e.x))));
}

