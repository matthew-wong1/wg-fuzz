struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32;

var<private> global2: array<vec4<bool>, 15>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-301f, 1000f, -276f) - vec3<f32>(973f, -2284f, 468f)) + vec3<f32>(446f, 435f, -1143f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(825f, 190f, -711f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1323f, -610f) * vec3<f32>(1978f, -406f, 638f))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(511f, 1166f, 1000f)) + vec3<f32>(-592f, 1223f, 1144f))))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-879f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1000f, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(397f)), _wgslsmith_f_op_f32(floor(-391f)))))), 383f));
    let var_1 = vec3<bool>(select(-2147483647i, global0.x, global0.x != (global0.x & global0.x)) != 0i, !any(global2[_wgslsmith_index_u32(countOneBits(~9637u), 15u)]), 1u == _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(2289u, 446u), ~vec2<u32>(0u, 35045u)), 1u));
    var var_2 = var_1.x;
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, -522f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(855f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1772f, 661f, var_0.x))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -202f, var_0.x) + vec3<f32>(-165f, 200f, -983f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(460f, -2650f, -125f))))))));
    let var_3 = Struct_1(~0u, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2585f), _wgslsmith_f_op_f32(366f + -1000f)) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-215f - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(var_0.x * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-360f, var_0.x, var_0.x), vec3<f32>(var_0.x, 1142f, -349f))), !all(vec3<bool>(true, true, var_1.x))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -560f, 1659f)))) - _wgslsmith_div_vec3_f32(var_3.d, _wgslsmith_f_op_vec3_f32(var_3.d - vec3<f32>(var_0.x, 1011f, 2458f))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = vec3<i32>(-1i, 2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(global0.x, global0.x), abs(u_input.a), ~u_input.a)), vec3<i32>(~(-20053i) >> (arg_2.a % 32u), global0.x, _wgslsmith_add_i32(~global0.x, -1i))));
    let var_1 = Struct_2(arg_2);
    global0 = var_0;
    let var_2 = Struct_2(var_1.a);
    let var_3 = arg_2.b;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1221f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1834f)) - _wgslsmith_f_op_f32(-arg_2.d.x)))))));
}

fn func_2() -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(func_4(360f, _wgslsmith_f_op_vec3_f32(func_3()), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(1u, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -2553f), -734f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, -923f, -1227f))))), vec2<bool>(true, false)));
    var var_0 = vec3<bool>(true, true || select(any(vec2<bool>(true, true)), all(global2[_wgslsmith_index_u32(33249u, 15u)]), true), true);
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, 2147483647i), abs(_wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(2147483647i, u_input.a, global0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, global0.x, 2147483647i), vec3<i32>(-1i, 0i, u_input.a)) & vec3<i32>(1i, 2147483647i, -1i), _wgslsmith_add_vec3_i32(select(vec3<i32>(4253i, global0.x, global0.x), vec3<i32>(78399i, global0.x, 1i), vec3<bool>(false, var_0.x, true)), vec3<i32>(3176i, 12812i, u_input.a)))));
    global0 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -56399i), global0.yx), ~(-2147483647i), firstTrailingBit(global0.x)) >> (~min(~vec3<u32>(28289u, 1u, 14153u), abs(vec3<u32>(78189u, 25250u, 4294967295u))) % vec3<u32>(32u)), vec3<i32>(countOneBits(1i), global0.x, -2147483647i), vec3<i32>(1i, -2147483647i, select(_wgslsmith_mult_i32(-global0.x, ~u_input.a), global0.x, any(!vec2<bool>(false, var_0.x)))));
    var var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(floor(-1877f)) < -235f, !all(select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, false), vec3<bool>(true, false, false))), var_0.x), select(select(select(vec3<bool>(false, true, var_0.x), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, true), false), true), !select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, false, false), var_0.x), !var_0.x), select(!(!vec3<bool>(var_0.x, false, var_0.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), !vec3<bool>(false, true, var_0.x)), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), false)), select(!(!vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(!var_0.x, select(true, false, var_0.x), u_input.a <= 12649i), (var_0.x != true) || any(vec3<bool>(true, true, var_0.x)))), !(!select(vec3<bool>(false, false, var_0.x), select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), var_0.x), false)));
    return vec2<u32>(~1u, ~18347u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_mult_vec2_u32((func_2() >> (~(~vec2<u32>(89929u, 4294967295u)) % vec2<u32>(32u))) | firstTrailingBit(vec2<u32>(arg_0.a, firstLeadingBit(arg_0.a))), ~countOneBits(vec2<u32>(_wgslsmith_mult_u32(arg_0.a, arg_0.a), ~11818u)));
    let var_1 = arg_0;
    var var_2 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_1.a, var_1.a, 0u), ~vec4<u32>(4294967295u, 9541u, 4294967295u, var_0.x), vec4<u32>(9347u, 4294967295u, 23530u, 63953u)), vec4<u32>(_wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(1u, var_1.a)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 37070u), vec3<u32>(var_1.a, 1u, 1u)), ~(~36289u), countOneBits(~var_0.x)));
    let var_3 = !all(!vec3<bool>(true, !arg_1.x, !arg_1.x));
    var var_4 = global0.x;
    return global0.x;
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<vec4<bool>, 15>();
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f + 182f) - _wgslsmith_f_op_f32(-1555f * 1093f)) * 1f))));
    global2 = array<vec4<bool>, 15>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()).x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1279f))));
    var var_0 = 51399u;
    return Struct_1(~54615u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1091f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f))), 1310f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(599f, _wgslsmith_f_op_f32(max(-1496f, 560f)), _wgslsmith_f_op_f32(ceil(1024f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-756f, -734f, -961f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(131f, 840f, -1105f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1609f, 1054f, -1815f) + vec3<f32>(-865f, 889f, -142f)))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = min(reverseBits(func_2()), ~vec2<u32>(~(1u | arg_0.a), arg_0.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2275f)));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-51317i, u_input.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, -4631i, -24283i), vec4<i32>(-1i, 1i, 80571i, 0i)), ~u_input.a), i32(-1i) * -global0.x), _wgslsmith_clamp_i32(-(i32(-1i) * -44076i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.x, global0.x, 19473i), vec4<i32>(-8007i, 41642i, -27319i, u_input.a))), _wgslsmith_mod_i32(-u_input.a, -global0.x))), 43384i, -global0.x);
    var_2 = vec3<i32>(-7047i | (-2147483647i << (var_0.x % 32u)), min(select(global0.x ^ 56130i, global0.x, !(arg_1.x | false)), _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(18407i), _wgslsmith_dot_vec2_i32(var_2.yx, vec2<i32>(-10639i, global0.x))), max(u_input.a, 1i))), ~(_wgslsmith_mult_i32(var_2.x & u_input.a, -1i) & _wgslsmith_mult_i32(~1i, u_input.a | var_2.x)));
    var_0 = vec2<u32>(~min(4294967295u, arg_0.a) ^ var_0.x, 64737u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(func_5(vec3<i32>(2147483647i, func_1(Struct_1(38067u, -1000f, -562f, vec3<f32>(1738f, 1204f, 1299f)), global2[_wgslsmith_index_u32(0u, 15u)]), global0.x >> (0u % 32u))), select(vec3<bool>(all(global2[_wgslsmith_index_u32(4294967295u, 15u)]), true, 0i < global0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    global2 = array<vec4<bool>, 15>();
    let var_1 = select(vec4<bool>(!any(vec2<bool>(true, true)), true, !select(all(vec3<bool>(false, true, false)), true, true), false), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(41379u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a.a, 19031u, 134366u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.a, var_0.a.a, var_0.a.a) << (vec3<u32>(1u, var_0.a.a, var_0.a.a) % vec3<u32>(32u)), abs(vec3<u32>(var_0.a.a, 1u, 1u))))), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_6(Struct_1(firstLeadingBit(40120u), _wgslsmith_f_op_f32(abs(var_0.a.c)), _wgslsmith_f_op_f32(round(var_0.a.d.x)), _wgslsmith_f_op_vec3_f32(-var_0.a.d)), vec3<bool>(true, true, true)).a, _wgslsmith_mult_u32(firstTrailingBit(var_0.a.a), 18631u)), 15u)]);
    let var_2 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f * 519f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.d - var_0.a.d)) + _wgslsmith_f_op_vec3_f32(func_3()))));
    global1 = _wgslsmith_f_op_f32(399f + _wgslsmith_f_op_f32(-var_0.a.b));
    let var_3 = var_2.a;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-160f, _wgslsmith_f_op_f32(sign(1285f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3()).x)) - var_0.a.d.x)), reverseBits(_wgslsmith_mult_vec2_u32(max(vec2<u32>(52555u, var_0.a.a), vec2<u32>(4294967295u, 65713u)), (vec2<u32>(55044u, 26376u) << (vec2<u32>(var_4.a.a, var_2.a.a) % vec2<u32>(32u))) ^ vec2<u32>(650u, 16680u))), var_4.a.c, 12374i);
}

