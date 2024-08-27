struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    global0 = !select(vec4<bool>(false, global0.x, arg_1.c < -150f, global0.x), !select(select(vec4<bool>(true, arg_1.d.x, arg_2, global0.x), vec4<bool>(true, global0.x, false, false), vec4<bool>(false, arg_1.d.x, arg_1.e.x, false)), select(vec4<bool>(global0.x, arg_2, true, arg_1.e.x), vec4<bool>(global0.x, false, arg_1.e.x, arg_1.d.x), false), vec4<bool>(true, false, false, arg_2)), false);
    var var_0 = _wgslsmith_dot_vec3_u32(u_input.c, arg_1.b.a);
    var var_1 = arg_1.b.a;
    var var_2 = arg_1.e;
    var var_3 = ~u_input.a.xw;
    return select(~vec3<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(~u_input.c.xy, vec2<u32>(arg_1.a, arg_0.x)), ~0u), ~(~vec3<u32>(4294967295u, 4294967295u, arg_0.x) | _wgslsmith_clamp_vec3_u32(arg_1.b.a, arg_1.b.a, reverseBits(vec3<u32>(arg_1.b.a.x, 0u, 19471u)))), select(!select(vec3<bool>(arg_1.e.x, false, false), !vec3<bool>(arg_2, false, arg_1.e.x), all(global0.wyx)), select(vec3<bool>(var_2.x, arg_2, true), global0.zwx, !arg_1.e), arg_1.e));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = select(!(!(all(vec3<bool>(false, global0.x, global0.x)) || true)), true & any(global0.zxz), global0.x);
    var var_1 = -1847f;
    let var_2 = Struct_2(u_input.c.x, Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, 1u)), func_3(vec2<u32>(u_input.c.x, 42958u), Struct_2(73687u, Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), -848f, global0.xz, vec3<bool>(true, global0.x, true)), global0.x)), u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - 1183f)) - _wgslsmith_div_f32(-222f, _wgslsmith_f_op_f32(min(-885f, -749f))))), !vec2<bool>(true, global0.x), vec3<bool>(global0.x, global0.x, true));
    let var_3 = select(vec3<bool>(global0.x, var_2.b.a.x > ~0u, global0.x), select(vec3<bool>(all(vec2<bool>(true, var_2.d.x)), false, !any(vec3<bool>(true, true, false))), !(!vec3<bool>(false, var_2.e.x, global0.x)), vec3<bool>(true, true, select(true, var_2.d.x, true))), select(!vec3<bool>(global0.x, var_2.e.x, any(vec4<bool>(false, var_2.d.x, false, false))), global0.wxz, select(!(!var_2.e), global0.xwx, true)));
    let var_4 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, arg_1.x, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, 0i)), arg_1 | arg_1), ~(15339i & u_input.b)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.x, u_input.b), -4125i), -_wgslsmith_dot_vec3_i32(-arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, 0i, 0i), arg_0.yzx))) >> (~var_2.b.a % vec3<u32>(32u));
    return var_2.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_2(23047u, func_2(vec4<i32>(_wgslsmith_div_i32(min(u_input.d, u_input.b), i32(-1i) * -17823i), 0i, u_input.d, (u_input.d >> (u_input.c.x % 32u)) >> (~u_input.c.x % 32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(2147483647i, -2147483647i, 0i), u_input.a.xyz), u_input.a.xyy), u_input.a.ywz << (u_input.c % vec3<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-782f))))), -686f), select(vec2<bool>(arg_1, (u_input.a.x << (15073u % 32u)) >= 58426i), vec2<bool>(!global0.x | true, false), select(global0.wz, !global0.yx, false)), select(!(!(!vec3<bool>(arg_1, arg_1, true))), vec3<bool>(global0.x, (false | global0.x) && arg_1, _wgslsmith_f_op_f32(round(arg_2)) > _wgslsmith_f_op_f32(-arg_2)), select(select(!vec3<bool>(false, arg_1, false), select(vec3<bool>(true, arg_1, global0.x), global0.zxy, global0.wxz), !arg_1), vec3<bool>(false, !arg_1, true), vec3<bool>(arg_1, arg_1, global0.x))));
    global0 = vec4<bool>(select(!(_wgslsmith_f_op_f32(arg_2 - 810f) > _wgslsmith_f_op_f32(var_0.c * 1594f)), !(true != global0.x), true), var_0.e.x, all(!(!(!vec4<bool>(true, arg_1, arg_1, true)))), arg_1);
    var var_1 = Struct_2(_wgslsmith_clamp_u32(~reverseBits(1u), u_input.c.x, var_0.a), Struct_1(~vec3<u32>(var_0.b.a.x, 80946u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(min(var_0.c, var_0.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))), global0.xw, !select(!(!vec3<bool>(arg_1, arg_1, var_0.e.x)), var_0.e, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, -1243f, -1701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1077f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-984f, arg_0.x, -460f, -582f), vec4<f32>(1000f, -509f, var_1.c, 581f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, arg_0.x, arg_0.x, arg_0.x))), global0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-658f, -242f, var_0.c, -1000f), vec4<f32>(675f, arg_0.x, 509f, var_1.c))))));
    var var_3 = Struct_2(max(_wgslsmith_mod_u32(~u_input.c.x | _wgslsmith_div_u32(var_1.b.a.x, 0u), select(countOneBits(u_input.c.x), u_input.c.x, true)), ~4294967295u), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(select(var_1.b.a, vec3<u32>(var_1.a, var_1.b.a.x, var_1.a), vec3<bool>(var_1.d.x, true, arg_1)), u_input.c, ~var_1.b.a), ~(~vec3<u32>(u_input.c.x, 1u, 57251u)))), _wgslsmith_f_op_f32(floor(var_2.x)), !(!vec2<bool>(true, any(global0.zxz))), var_0.e);
    return vec4<u32>(29871u, ~var_1.b.a.x, 22799u, min(var_3.b.a.x, ~3550u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~7235i;
    var_0 = 0i;
    var var_1 = reverseBits(~func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-765f, 150f, 575f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-262f, 1485f, 2200f))), any(global0.yw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f))));
    var var_2 = u_input.d << (20067u % 32u);
    global0 = vec4<bool>(global0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -795f)))) >= 726f, !(!global0.x || false));
    var_2 = 64010i;
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~firstTrailingBit(abs(u_input.d))), max(vec3<i32>(firstTrailingBit(-1i), u_input.d, u_input.d), u_input.a.wyw), u_input.d, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(-1386f, 996f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1685f * 1775f)))))), _wgslsmith_f_op_f32(max(846f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f))))));
}

