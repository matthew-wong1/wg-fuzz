struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(15428u, 19175u, 4294967295u, 4294967295u, 0u, 29786u, 81233u, 0u, 63228u, 1u, 1u, 57622u, 63456u, 54335u, 30805u, 11310u, 53812u, 4294967295u, 1u);

var<private> global1: f32;

var<private> global2: vec3<i32>;

var<private> global3: i32;

var<private> global4: array<bool, 16> = array<bool, 16>(false, true, false, false, true, true, false, true, true, true, true, true, false, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global1 = _wgslsmith_div_f32(-219f, -247f);
    let var_0 = Struct_3(vec2<bool>(!any(vec4<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 19u)], 16u)], true, global4[_wgslsmith_index_u32(10778u, 16u)], true)), true), vec2<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.d, 50607u)), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(22926u, 19u)])) << (~u_input.b.x % 32u), 16u)]));
    var var_1 = 1f;
    let var_2 = Struct_1(25270u & u_input.d, _wgslsmith_f_op_f32(-1279f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - -768f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1862f)) * _wgslsmith_f_op_f32(select(-957f, -1020f, true))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(357f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1616f, -226f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-727f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f - -1006f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-735f)) * _wgslsmith_f_op_f32(step(764f, -924f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1095f, -1308f)) + _wgslsmith_f_op_f32(-928f * -901f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, 857f))))));
    global0 = array<u32, 19>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.d.x)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(~(~(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 19u)], 29032u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -561f, arg_1.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 163f, arg_1.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -655f)));
    return !vec2<bool>(any(!(!vec4<bool>(false, false, arg_0.b.x, global4[_wgslsmith_index_u32(0u, 16u)]))), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<bool>) -> Struct_4 {
    global2 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(min(~_wgslsmith_sub_vec3_i32(u_input.e.wxw, vec3<i32>(global2.x, -1i, u_input.e.x)), u_input.e.wxy), (select(u_input.e.wzy, vec3<i32>(global2.x, -2147483647i, 51449i), vec3<bool>(arg_3.x, global4[_wgslsmith_index_u32(4294967295u, 16u)], true)) & reverseBits(u_input.e.zwy)) >> (vec3<u32>(~u_input.a.x, ~1u, firstLeadingBit(4294967295u)) % vec3<u32>(32u))), vec3<i32>(reverseBits(-global2.x), abs(countOneBits(2147483647i)), countOneBits(~countOneBits(global2.x))));
    var var_0 = Struct_3(!vec2<bool>(all(vec4<bool>(global4[_wgslsmith_index_u32(arg_2, 16u)], arg_3.x, global4[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_0.x)) | true, arg_3.x), func_2(Struct_3(!select(arg_0, vec2<bool>(true, true), true), arg_3), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, 1350f, 625f, -709f))))))));
    let var_1 = -1000f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))) - -604f);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1513f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, -778f, arg_0.x)) + _wgslsmith_f_op_f32(278f - 526f)))));
    return Struct_4(_wgslsmith_f_op_f32(-var_1), Struct_3(vec2<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, arg_1.x >> (4294967295u % 32u)), 16u)]), !(!vec2<bool>(global4[_wgslsmith_index_u32(62942u, 16u)], false))), Struct_3(select(select(func_2(Struct_3(vec2<bool>(false, false), vec2<bool>(true, true)), vec4<f32>(1000f, -275f, 1160f, -429f)), !arg_3, arg_0), !(!arg_0), true), vec2<bool>(all(vec2<bool>(true, arg_3.x)), true)), Struct_2(Struct_1(~1u, -716f, vec3<f32>(var_1, _wgslsmith_f_op_f32(-1000f - var_1), -638f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1895f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, var_1), vec2<f32>(-347f, var_1)))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> f32 {
    global2 = arg_0.yyz;
    var var_0 = abs(countOneBits(1u)) > arg_1;
    let var_1 = arg_3;
    let var_2 = func_4(select(vec2<bool>(!all(arg_3.b.b), select(false, !var_1.b.a.x, true)), select(func_2(Struct_3(var_1.c.b, arg_3.c.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1095f, 843f, -815f, -211f)))), !(!var_1.b.a), !func_2(Struct_3(vec2<bool>(arg_3.b.b.x, true), vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37421u, 19u)], 19u)], 16u)], true)), vec4<f32>(arg_3.a, var_1.d.a.c.x, arg_3.d.a.b, -1105f)).x), all(select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(65820u, 16u)], true), vec3<bool>(arg_3.c.b.x, false, var_1.b.a.x), arg_3.b.a.x), select(vec3<bool>(true, var_1.c.a.x, true), vec3<bool>(var_1.b.b.x, true, false), vec3<bool>(false, false, arg_3.c.a.x)), select(vec3<bool>(false, true, var_1.b.a.x), vec3<bool>(global4[_wgslsmith_index_u32(arg_1, 16u)], arg_3.c.a.x, true), vec3<bool>(global4[_wgslsmith_index_u32(var_1.d.a.a, 16u)], false, global4[_wgslsmith_index_u32(arg_2, 16u)]))))), abs(firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(3566u, 0u, 4294967295u, arg_3.d.a.a), vec4<u32>(54543u, 65074u, var_1.d.a.a, u_input.b.x))))), var_1.d.a.a ^ arg_1, !vec2<bool>(!arg_3.b.a.x, !any(var_1.c.a)));
    global3 = ~_wgslsmith_mod_i32(arg_0.x, u_input.e.x);
    return arg_3.d.a.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: u32) -> Struct_4 {
    var var_0 = arg_1.d.a.a > 1u;
    let var_1 = _wgslsmith_div_u32(1u, ~arg_3);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1427f, _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(-329f - -702f))))), arg_1.d.a.c));
    var var_3 = Struct_4(var_2.x, func_4(vec2<bool>(!(!arg_1.b.a.x), func_4(arg_1.c.b, ~vec4<u32>(arg_1.d.a.a, 4294967295u, 29017u, u_input.b.x), max(u_input.d, global0[_wgslsmith_index_u32(76267u, 19u)]), vec2<bool>(false, false)).c.b.x), ~countOneBits(vec4<u32>(arg_3, 11486u, 21710u, u_input.a.x)) ^ vec4<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_mod_u32(0u, 1u), u_input.a.x, arg_3), abs(_wgslsmith_mod_u32(arg_3, 4294967295u) ^ ~78535u), !func_2(func_4(arg_1.b.a, vec4<u32>(1u, 4294967295u, 1u, 11142u), 109537u, vec2<bool>(true, false)).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1369f, -122f, arg_0.x, var_2.x) + vec4<f32>(1649f, arg_2.x, -1000f, 1000f)))).c, func_4(vec2<bool>(global4[_wgslsmith_index_u32(1u, 16u)], !arg_1.b.a.x), ~(~reverseBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(arg_3, 19u)], 1u, 1u))), _wgslsmith_add_u32(0u, func_4(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 16u)], arg_1.b.b.x), max(vec4<u32>(63868u, 0u, arg_3, u_input.b.x), vec4<u32>(1u, 0u, arg_3, 10876u)), max(0u, var_1), !arg_1.c.b).d.a.a), !arg_1.b.a).c, arg_1.d);
    var var_4 = Struct_1(var_3.d.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec4_i32(u_input.e << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 4294967295u, var_3.d.a.a, 1u) % vec4<u32>(32u)), vec4<i32>(0i, 1i, u_input.e.x, global2.x)), u_input.b.x, arg_1.d.a.a, func_4(var_3.b.a, ~vec4<u32>(80443u, 4294967295u, 67935u, 0u), ~arg_1.d.a.a, vec2<bool>(true, var_3.c.a.x)))) - 1339f), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-605f * _wgslsmith_f_op_f32(step(-2314f, arg_0.x))))), arg_0.x, var_3.d.a.d.x), var_3.d.a.d);
    return Struct_4(_wgslsmith_f_op_f32(-517f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, 1000f, var_3.b.a.x))))), Struct_3(!(!(!vec2<bool>(var_3.c.a.x, true))), func_4(vec2<bool>(true, any(vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.d.a.a, 19u)], 16u)], true))), vec4<u32>(_wgslsmith_div_u32(35743u, arg_1.d.a.a), 17583u, 39333u, ~22510u), 70844u, arg_1.c.b).c.b), arg_1.c, Struct_2(var_3.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, min(2147483647i, select(0i, 1i, global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 16u)])) >= 1i, global4[_wgslsmith_index_u32(43731u, 16u)], !global4[_wgslsmith_index_u32(~33137u & firstLeadingBit(global0[_wgslsmith_index_u32(1u, 19u)]), 16u)] || !global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 19u)], 16u)]);
    global4 = array<bool, 16>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)))));
    global0 = array<u32, 19>();
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-376f * _wgslsmith_f_op_f32(func_1(u_input.e, u_input.b.x, u_input.d, Struct_4(-708f, Struct_3(var_0.yx, vec2<bool>(var_0.x, global4[_wgslsmith_index_u32(68742u, 16u)])), Struct_3(var_0.xx, vec2<bool>(true, false)), Struct_2(Struct_1(1u, 468f, vec3<f32>(1047f, -818f, 209f), vec2<f32>(525f, 404f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 684f) - -325f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(747f, -1499f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-512f, -160f) - vec2<f32>(1638f, 885f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-497f, -743f), vec2<f32>(1112f, 1000f)))))), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-115f)) - -1855f), -225f), Struct_3(var_0.yz, select(!vec2<bool>(true, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 16u)]), func_4(vec2<bool>(false, true), vec4<u32>(global0[_wgslsmith_index_u32(27874u, 19u)], u_input.a.x, 1u, u_input.d), 0u, vec2<bool>(false, false)).b.b, global4[_wgslsmith_index_u32(u_input.b.x >> (u_input.a.x % 32u), 16u)])), func_4(!func_2(Struct_3(var_0.zw, var_0.ww), vec4<f32>(1544f, -615f, 1000f, -2181f)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), select(4294967295u, 3761u, true), ~0u), func_4(var_0.yx, _wgslsmith_add_vec4_u32(vec4<u32>(11797u, u_input.a.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 1u, 1u)), 6195u, !vec2<bool>(var_0.x, global4[_wgslsmith_index_u32(25891u, 16u)])).d.a.a, vec2<bool>(false, select(var_0.x, true, global4[_wgslsmith_index_u32(u_input.d, 16u)]))).c, Struct_2(Struct_1(countOneBits(u_input.a.x), _wgslsmith_f_op_f32(max(432f, 268f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(909f, 360f, 695f), vec3<f32>(867f, 1160f, 1937f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1827f, -104f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-812f + 219f), -772f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - -2214f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(898u, (u_input.d >> (1u % 32u)) >> ((u_input.d & 4294967295u) % 32u), 32870u), vec3<u32>(1u, u_input.b.x, u_input.a.x)));
    var var_2 = func_4(vec2<bool>(global4[_wgslsmith_index_u32(1u, 16u)], var_1.c.a.x), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(49374u, u_input.a.x, 0u, 4294967295u), vec4<u32>(40494u, u_input.d, 0u, 4294967295u) | vec4<u32>(u_input.a.x, var_1.d.a.a, 0u, 8528u), !vec4<bool>(var_1.c.b.x, true, var_0.x, false)), abs(vec4<u32>(u_input.b.x, var_1.d.a.a, 7463u, global0[_wgslsmith_index_u32(1u, 19u)]) | vec4<u32>(var_1.d.a.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], var_1.d.a.a, var_1.d.a.a))), 0u, var_0.xw).b;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(4294967295u | ~var_1.d.a.a)));
}

