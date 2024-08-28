struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = ~51477u;
    var_0 = ~4294967295u | ~(_wgslsmith_clamp_u32(select(1u, 1u, true), ~0u, firstLeadingBit(0u)) ^ 38886u);
    let var_1 = abs(abs(~arg_0.yx));
    let var_2 = 4294967295u & max(_wgslsmith_mult_u32(~min(4294967295u, 18840u), ~(~1u)), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(6559u, 92457u, 70246u), vec3<u32>(4015u, 4294967295u, 59937u)), vec3<u32>(1657u, _wgslsmith_mod_u32(116350u, 1u), 1u)));
    var_0 = 0u;
    return arg_3;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 891f) - _wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, -1i, u_input.a.x), vec4<f32>(-1853f, 474f, -379f, 2596f), u_input.a.x, 1119f))))))), 382f, -1571f, -160f);
    var var_1 = !(_wgslsmith_f_op_f32(-var_0.x) >= -486f);
    let var_2 = Struct_2(Struct_1(61553u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.ywz)), var_0.xwz) + vec3<f32>(_wgslsmith_f_op_f32(-216f + 1005f), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2523f))) - _wgslsmith_f_op_vec3_f32(-var_0.yyw)), ~arg_0 | select(28720u, ~0u, all(vec4<bool>(arg_1, arg_2, arg_2, arg_2))), Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(146u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, 5851u, arg_0, arg_0)), max(vec4<u32>(1u, 4294967295u, 16644u, arg_0), vec4<u32>(23606u, 4294967295u, arg_0, 1u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - var_0.x))));
    var var_3 = select(select(!(!vec2<bool>(true, arg_2)), vec2<bool>(true, true), !select(select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_2), arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), true), true)), vec2<bool>(all(select(vec4<bool>(true, false, arg_2, arg_1), vec4<bool>(arg_1, false, true, true), var_0.x <= var_2.b.x)), true), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), arg_1), -43614i >= u_input.a.x)));
    let var_4 = var_2;
    return var_4;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2.a;
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~firstTrailingBit(74747u), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.a, arg_1.a.a, var_0.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.a, 33073u), vec3<u32>(arg_1.a.a, 4294967295u, var_0.a))), ~1u & _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, var_0.a, 4294967295u, 20895u), vec4<u32>(0u, var_0.a, arg_1.c, arg_1.d.a), vec4<bool>(false, true, false, true)), vec4<u32>(12164u, 0u, arg_2.c, 1u))), ~firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 53664u, 96697u), vec3<u32>(7883u, var_0.a, arg_1.a.a))));
    var var_2 = _wgslsmith_mod_u32(var_1.x, _wgslsmith_mod_u32(reverseBits(_wgslsmith_mult_u32(var_0.a, arg_1.d.a)), ~(~(~arg_2.d.a))));
    var var_3 = var_1.xx & min(vec2<u32>(arg_1.c, var_1.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_2.d.a, var_1.x), var_1.yy, var_1.zz));
    var_2 = 1u;
    return u_input.a.x;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(313f, -1215f) + vec2<f32>(1161f, 1788f)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1349f + -2402f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(f32(-1f) * -1893f))))), u_input.a.x >= func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1197f, 726f, 154f)), func_2(1u, false, true), func_2(1u, !arg_0, arg_0 | arg_0))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1887f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1000f) - vec2<f32>(1238f, var_0.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1692f, -1673f)), _wgslsmith_div_vec2_f32(vec2<f32>(832f, 746f), vec2<f32>(-1569f, 1104f)))), vec2<f32>(-1243f, _wgslsmith_f_op_f32(-2883f + var_0.x))))));
    let var_1 = -2147483647i;
    var var_2 = ~(~(i32(-1i) * -8470i));
    var var_3 = var_0.x;
    return func_2(~abs(~(~76004u)), true, !(!(arg_0 & all(vec4<bool>(true, false, true, true)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = func_2(abs(0u), any(vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), _wgslsmith_div_i32(u_input.a.x, -20767i) < _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, 52319i, u_input.a.x)))), all(vec2<bool>(true, true)));
    var var_2 = -1i;
    return firstLeadingBit(var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~1u, ~func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(744f, -502f))), func_1(true), vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 17998u), vec2<u32>(22716u, 0u)), 18907u << (0u % 32u))));
    let var_1 = 476f;
    var_0 = select(vec2<u32>(~(~var_0.x), firstTrailingBit(abs(~4294967295u))), vec2<u32>(~(~var_0.x ^ ~var_0.x), reverseBits(~func_5(vec2<f32>(var_1, -362f), Struct_2(Struct_1(var_0.x), vec3<f32>(var_1, 701f, -424f), 1u, Struct_1(4294967295u), 2046f), vec3<u32>(var_0.x, 140851u, var_0.x)))), vec2<bool>(true, any(vec3<bool>(true, u_input.a.x <= u_input.a.x, false))));
    let var_2 = Struct_2(func_1(any(vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true))).a, vec3<f32>(1290f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(550f, var_1), _wgslsmith_f_op_f32(step(var_1, var_1)), true))))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~4294967295u), abs(~countOneBits(vec2<u32>(50007u, var_0.x)))), Struct_1(29062u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * var_1));
    let var_3 = vec3<i32>(-1i) * -u_input.a.wwy;
    var var_4 = reverseBits(var_3.x);
    var_0 = vec2<u32>(max(0u >> (abs(var_2.d.a) % 32u), 1u), 0u) & firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(14102u, var_0.x), ~_wgslsmith_clamp_u32(var_0.x, var_2.a.a, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, _wgslsmith_f_op_f32(775f * var_1), var_1, -710f)))));
}

