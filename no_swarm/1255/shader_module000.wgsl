struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(782f, vec2<u32>(8246u, 79200u), 9885u, vec3<f32>(1203f, -1538f, -2043f));

var<private> global1: array<vec3<f32>, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d.x) * arg_0.a.a), ~(~vec2<u32>(~global0.c, 4294967295u)), select(0u, global0.b.x, u_input.a.x < u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(reverseBits(1u), 1u)], vec3<f32>(arg_0.a.d.x, global0.a, global0.a), 115f < arg_0.a.a))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.a)), arg_0.a.d.x, arg_0.a.d.x), global0.d))));
    global0 = Struct_1(arg_0.a.a, ~(select(abs(u_input.a.yx), vec2<u32>(58613u, 2764u), true) >> (~(~u_input.a.zx) % vec2<u32>(32u))), reverseBits(~var_0.c >> ((reverseBits(arg_0.a.c) << ((9894u << (u_input.a.x % 32u)) % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(step(arg_0.a.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-294f * arg_0.a.a), -1000f, _wgslsmith_f_op_f32(-var_0.d.x)) - vec3<f32>(_wgslsmith_f_op_f32(step(-318f, global0.d.x)), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(max(global0.a, arg_0.a.d.x)))))));
    global1 = array<vec3<f32>, 1>();
    global0 = Struct_1(global0.a, firstLeadingBit(vec2<u32>(4294967295u, arg_0.a.c)), ~4294967295u, vec3<f32>(_wgslsmith_div_f32(-357f, _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(round(var_0.a))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, var_0.d.x), -1913f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-arg_0.a.d.x)));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.b.x, 1u, var_0.c, var_0.c) | vec4<u32>(var_0.c, 61394u, 1u, u_input.a.x)), firstTrailingBit(vec4<u32>(global0.c, 4294967295u, u_input.a.x, var_0.c))), vec4<u32>(~7363u, 25320u, arg_0.a.b.x, _wgslsmith_mod_u32(u_input.a.x, 1u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.b.x, 98144u, arg_0.a.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), vec4<u32>(51115u, 1u, 1u, u_input.a.x), vec4<u32>(var_0.c, arg_0.a.c, 1u, 4294967295u)))), _wgslsmith_clamp_u32(14545u, min(27025u >> (var_0.c % 32u), ~u_input.a.x), _wgslsmith_dot_vec2_u32(global0.b, reverseBits(global0.b))) & var_0.c);
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, arg_0.a.b.x), vec4<u32>(93453u, 12079u, 93755u, var_1))), vec4<u32>(1u, max(0u, 18854u), _wgslsmith_div_u32(arg_0.a.c, _wgslsmith_div_u32(var_0.c, 0u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, 0u), vec2<u32>(4294967295u, var_1)), ~u_input.a.yz))), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, global0.b.x, 7224u, 4294967295u)), vec4<u32>(4294967295u, 91118u, u_input.a.x, var_1) | ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, ~reverseBits(global0.b.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, var_1, 0u), vec4<u32>(1181u, var_1, 20332u, arg_0.a.b.x)) % 32u), ~(u_input.a.x & ~68599u), u_input.a.x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 1u, global0.c, 1u), ~vec4<u32>(var_1, global0.c, 1u, 4294967295u)) % 32u)));
}

fn func_2() -> vec4<i32> {
    global1 = array<vec3<f32>, 1>();
    global1 = array<vec3<f32>, 1>();
    let var_0 = ~(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c, u_input.a.x, u_input.a.x, 61752u), func_3(Struct_2(Struct_1(380f, u_input.a.zz, u_input.a.x, vec3<f32>(global0.a, -202f, -1165f)), u_input.d.x))) ^ ~(~vec4<u32>(4294967295u, global0.b.x, 0u, global0.c)));
    let var_1 = Struct_1(global0.a, ~countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.ww, global0.b), ~u_input.a.zx)), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(global0.b.x, 1u)])))));
    let var_2 = var_1;
    return -vec4<i32>(i32(-1i) * -1i, abs(~_wgslsmith_sub_i32(u_input.d.x, u_input.c)), -71816i, u_input.c);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_vec3_u32(u_input.a, ~(~(abs(vec3<u32>(28760u, u_input.a.x, global0.c)) | (vec3<u32>(4294967295u, 68825u, 1u) >> (u_input.a % vec3<u32>(32u))))));
    let var_1 = !(!(80211u != arg_1.c)) | all(vec3<bool>(true, true, true));
    global1 = array<vec3<f32>, 1>();
    var var_2 = arg_1.a == -874f;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), arg_1.b, global0.c, vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(arg_1.d.x))), 1683f, 686f)), -u_input.d.x ^ u_input.d.x);
    return _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(var_0.xx), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, arg_1.b.x) | arg_1.b, _wgslsmith_mod_vec2_u32(u_input.a.yy, var_3.a.b))), var_0.xz);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(global0.d.x, select(func_4(func_2(), Struct_1(1091f, u_input.a.zy, 4294967295u, global0.d)) >> (global0.b % vec2<u32>(32u)), global0.b, !(!(arg_1.x | true))), _wgslsmith_dot_vec2_u32(~select(global0.b, _wgslsmith_clamp_vec2_u32(global0.b, global0.b, global0.b), select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, false), vec2<bool>(false, true))), vec2<u32>(29923u, 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(83792u, 1u)]))) - vec3<f32>(1000f, _wgslsmith_div_f32(-125f, -389f), _wgslsmith_f_op_f32(f32(-1f) * -678f))) * vec3<f32>(2123f, 2606f, global0.a)));
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(-246f)), countOneBits(~firstTrailingBit(global0.b)) << ((_wgslsmith_div_vec2_u32(u_input.a.zy, abs(vec2<u32>(u_input.a.x, var_0.b.x))) ^ max(vec2<u32>(global0.c, 33146u), u_input.a.zx)) % vec2<u32>(32u)), var_0.b.x, global1[_wgslsmith_index_u32(max(1u, u_input.a.x), 1u)]);
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -989f), func_4(~select(-vec4<i32>(arg_0, -1i, u_input.d.x, 51363i), _wgslsmith_div_vec4_i32(u_input.d, u_input.d), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_div_f32(-609f, global0.a)), vec2<u32>(~0u, func_3(Struct_2(Struct_1(-1000f, var_0.b, var_0.c, var_0.d), 0i)).x), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, global0.d.x, 232f)))), ~_wgslsmith_div_u32(~var_0.b.x, ~36493u) << (select(firstLeadingBit(countOneBits(26754u)), var_0.b.x, true) % 32u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, -645f, var_0.a)))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x - -897f), 1076f, 579f)))));
    global1 = array<vec3<f32>, 1>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global0.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a)), var_0.a))), var_0.a));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -998f), _wgslsmith_f_op_f32(floor(var_1.x)))) + -981f)), (vec2<u32>(global0.b.x, global0.c) & select(u_input.a.xz, global0.b >> (global0.b % vec2<u32>(32u)), arg_1.zy)) ^ vec2<u32>(u_input.a.x, 62468u), 0u, vec3<f32>(var_1.x, var_1.x, 256f));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = array<vec3<f32>, 1>();
    let var_0 = func_1(arg_0.b, !vec3<bool>(true, select(false, all(vec4<bool>(arg_3, false, false, true)), false), any(vec3<bool>(true, true, false))));
    global0 = var_0;
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_add_u32(global0.c, global0.b.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, 4010u, 24627u, u_input.a.x), firstLeadingBit(select(vec4<u32>(global0.c, global0.c, global0.b.x, u_input.a.x), vec4<u32>(global0.b.x, u_input.a.x, 10513u, 0u), vec4<bool>(true, true, false, false)))) % 32u));
    global0 = func_5(Struct_2(func_1(-11972i, vec3<bool>(true, true, true)), u_input.c ^ u_input.d.x), true, max(abs(u_input.d.x), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.c, u_input.d.x), u_input.d.ywz), u_input.d.xxw))), !(457f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - -140f)));
    var var_1 = _wgslsmith_mult_u32(~5872u >> ((global0.b.x << (_wgslsmith_div_u32(~4294967295u, abs(4294967295u)) % 32u)) % 32u), u_input.a.x & ~global0.b.x);
    var var_2 = select(select(vec3<bool>((0u > u_input.a.x) | false, !select(false, false, false), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), vec3<bool>(any(vec2<bool>(false, true)), false, select(any(vec3<bool>(true, true, false)), true, 1000f != global0.d.x)), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), !(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), vec2<bool>(true, false), vec2<bool>(true, true))));
    var var_3 = ~(select(0u, 1u, all(select(var_2.xy, vec2<bool>(false, false), false))) | 64667u);
    global1 = array<vec3<f32>, 1>();
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, 275f)) - _wgslsmith_f_op_f32(trunc(-2482f))), reverseBits(vec2<u32>(select(var_0, 94732u, var_2.x), firstLeadingBit(u_input.a.x))), var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(Struct_2(Struct_1(-1105f, vec2<u32>(var_0, 4294967295u), global0.c, global0.d), -68899i), true, -2147483647i, var_2.x).a, global0.a, _wgslsmith_f_op_f32(ceil(-870f))))), _wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.zww, u_input.d.wxw), vec3<i32>(0i, u_input.c, u_input.d.x))));
    var var_5 = !select(vec4<bool>(!var_2.x, select(all(vec4<bool>(false, var_2.x, false, var_2.x)), !var_2.x, false), false, !var_2.x), !vec4<bool>(true, false, true, !var_2.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.x, 322f, -632f, u_input.d);
}

