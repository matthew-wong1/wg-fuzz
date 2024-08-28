struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec2<i32> {
    global0 = vec4<i32>(-64570i, ~firstTrailingBit(-23684i), 2665i, _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(-36132i, 1i & u_input.b.x, 2147483647i, max(u_input.b.x, 8176i))));
    global0 = vec4<i32>(-1i) * -u_input.a;
    let var_0 = select(arg_1.ww, !select(!(!arg_1.zw), select(arg_1.zw, select(arg_1.wy, arg_1.wz, arg_1.yz), select(arg_1.wz, vec2<bool>(false, arg_1.x), arg_1.wx)), any(select(arg_1, arg_1, arg_1.x))), arg_1.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(516f)) * -247f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f + -398f)))));
    global0 = u_input.a;
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = vec2<i32>(-u_input.b.x, _wgslsmith_dot_vec2_i32(select(-abs(u_input.b), func_3(1u, vec4<bool>(true, true, true, false)), true), vec2<i32>(u_input.b.x, global0.x) & ~_wgslsmith_div_vec2_i32(u_input.a.zx, u_input.b)));
    global0 = reverseBits(vec4<i32>(min(-global0.x >> (1u % 32u), _wgslsmith_add_i32(-63165i, _wgslsmith_dot_vec2_i32(global0.yw, vec2<i32>(-2147483647i, 0i)))), 2147483647i, global0.x, 6306i));
    var var_1 = ~1u;
    var var_2 = vec3<u32>(_wgslsmith_mod_u32(1u, 8161u), abs(1u), 1u);
    var var_3 = ~(~0i);
    return _wgslsmith_add_u32(abs(~var_2.x), countOneBits(95356u));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<u32>(reverseBits(select(~4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(2019u, 0u, 16657u), vec3<u32>(70602u, 4294967295u, 22612u), arg_0.x), reverseBits(vec3<u32>(38738u, 1u, 42068u))), false)), ~(~(func_2(-1234f, Struct_2(vec4<f32>(-1699f, -1277f, 523f, 1000f)), -1000f) >> (~43972u % 32u))), select(1u, 44225u, true) | ~20225u);
    global0 = _wgslsmith_mod_vec4_i32(u_input.a, u_input.a) & vec4<i32>(_wgslsmith_mult_i32(14415i, u_input.a.x), global0.x, 7045i, u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(424f)) * -964f)), -846f));
    let var_2 = u_input.a.x;
    global0 = u_input.a;
    return Struct_1(select(arg_0.x && false, arg_0.x, -10553i != -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, global0.x), global0.zx)), -_wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(-35165i, global0.x, u_input.b.x)), vec3<i32>(2147483647i, firstTrailingBit(global0.x), global0.x), abs(_wgslsmith_sub_vec3_i32(u_input.a.zwx, vec3<i32>(var_2, -2147483647i, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(531f, -125f), -541f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    let var_0 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -1011i, -58484i), vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))), min(arg_2, vec4<i32>(-1i, 1i, 0i, global0.x)) << (reverseBits(vec4<u32>(42691u, 20724u, 1u, 115355u)) % vec4<u32>(32u))) << (vec4<u32>(0u, 1u, (1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(20987u, 0u), vec2<u32>(4294967295u, 4294967295u))) ^ 1u, 0u) % vec4<u32>(32u));
    global0 = var_0;
    global0 = firstLeadingBit(vec4<i32>(1i, arg_2.x, arg_0.b.x, u_input.a.x));
    let var_1 = ~(~1u);
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.x, arg_0.b.x, 44662i), u_input.a)), vec4<i32>(global0.x, ~(-2147483647i), ~17454i, u_input.b.x)), reverseBits(arg_2)), arg_2);
    return var_1;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global0 = firstTrailingBit(~u_input.a);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-451f - 509f)))));
    var var_1 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~arg_0.x | arg_0.x, arg_0.x, ~(~arg_0.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_0.x, arg_0.x, 73060u, arg_0.x), vec4<u32>(0u, 17023u, arg_0.x, 6204u), false), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 56419u, 61668u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 34076u, 4294967295u))), 5039u, _wgslsmith_mod_u32(abs(~arg_0.x), ~(~1u))));
    let var_2 = func_1(select(select(select(vec2<bool>(false, arg_1.a), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(arg_1.a, false), vec2<bool>(false, arg_1.a), arg_1.a), !vec2<bool>(arg_1.a, arg_1.a), any(vec3<bool>(true, arg_1.a, true))), vec2<bool>(true, arg_1.a)), vec2<bool>(arg_1.a, arg_1.a), !arg_1.a));
    var var_3 = Struct_2(_wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a * vec4<f32>(594f, var_2.c, 1429f, var_0.x))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<u32>(~4294967295u, func_4(func_1(vec2<bool>(false, true)), Struct_1(all(vec4<bool>(false, false, false, false)), firstLeadingBit(u_input.a.wyx), _wgslsmith_div_f32(-601f, 1584f)), vec4<i32>(firstTrailingBit(u_input.a.x), -2841i, 94103i, 17100i))), Struct_1(true, vec3<i32>(func_3(func_4(Struct_1(true, u_input.a.zwx, -325f), Struct_1(false, vec3<i32>(-1i, u_input.b.x, -2147483647i), -393f), u_input.a), vec4<bool>(true, true, false, false)).x, _wgslsmith_div_i32(u_input.b.x >> (11000u % 32u), ~0i), -21395i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1037f)), _wgslsmith_f_op_f32(floor(448f))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(288f, 2040f, 2229f, -728f) * vec4<f32>(-2705f, -1528f, 585f, -277f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, 482f, 1000f, -369f))))));
    var var_1 = func_5(vec2<u32>(1u, 1u), Struct_1(!all(vec4<bool>(false, false, true, false)), func_1(vec2<bool>(true, true)).b, _wgslsmith_f_op_f32(f32(-1f) * -2200f)), var_0);
    var var_2 = func_1(vec2<bool>(any(vec3<bool>(false, true, true)), false));
    var_2 = func_1(select(vec2<bool>(!var_2.a, any(select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(var_2.a, var_2.a, false), vec3<bool>(false, true, var_2.a)))), !select(vec2<bool>(true, true), select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, false)), !var_2.a), select(select(select(vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, var_2.a), var_2.a), vec2<bool>(var_2.a, false), !vec2<bool>(var_2.a, var_2.a)), vec2<bool>(true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)))));
    let var_3 = Struct_1(any(select(select(select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(var_2.a, var_2.a, var_2.a), false), vec3<bool>(var_2.a, var_2.a, false), !vec3<bool>(var_2.a, var_2.a, var_2.a)), !(!vec3<bool>(var_2.a, false, false)), select(select(vec3<bool>(false, var_2.a, var_2.a), vec3<bool>(true, false, var_2.a), false), vec3<bool>(var_2.a, var_2.a, var_2.a), !var_2.a))), ~(~var_2.b << (vec3<u32>(~62342u, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), var_1.a.x)))), 632f)));
    global0 = min(vec4<i32>(_wgslsmith_sub_i32(-(~2147483647i), max(-1i, -var_3.b.x)), func_1(select(vec2<bool>(var_2.a, true), select(vec2<bool>(var_2.a, false), vec2<bool>(var_3.a, var_2.a), vec2<bool>(false, false)), var_1.a.x <= -2169f)).b.x, 1i, 1i), ~vec4<i32>(firstTrailingBit(52929i) >> (reverseBits(61177u) % 32u), -1i, -max(global0.x, u_input.b.x), _wgslsmith_add_i32(-29514i, var_3.b.x)));
    let var_4 = func_1(!select(!select(vec2<bool>(var_3.a, true), vec2<bool>(var_3.a, var_3.a), var_2.a), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(6740u, -56942i, 59528i, 499f);
}

