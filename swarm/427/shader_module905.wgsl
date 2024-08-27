struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, true, false, false, false, true, true, false, false, false, false, false, false, true, false);

var<private> global1: vec4<f32> = vec4<f32>(242f, 1317f, 1118f, -1869f);

var<private> global2: vec4<u32> = vec4<u32>(32856u, 4294967295u, 0u, 4294967295u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-584f)), 200f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.xy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1436f))))) - global1.yx);
    var var_2 = Struct_1(max(~_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.a, global2.x, 1u, 1u), vec4<u32>(0u, 78575u, u_input.a, 0u)), vec4<u32>(25115u, 1u, 23579u, global2.x) >> (vec4<u32>(0u, 29924u, global2.x, 7249u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, 20043u, 16794u, u_input.a)), ~vec4<u32>(global2.x, 5286u, global2.x, global2.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 1u), vec4<u32>(u_input.a, global2.x, 28611u, 0u), vec4<u32>(global2.x, 4294967295u, u_input.a, 1u)))), vec2<bool>(arg_1.x, false), countOneBits(~(~vec2<u32>(global2.x, 37881u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -1112f))))));
    let var_4 = Struct_1(_wgslsmith_mod_vec4_u32(~reverseBits(select(vec4<u32>(u_input.a, 12792u, global2.x, var_2.a.x), vec4<u32>(1u, 4294967295u, var_2.a.x, 42274u), arg_1)), ~(~(var_2.a | vec4<u32>(u_input.a, 1u, var_2.c.x, 52208u)))), vec2<bool>(~max(52319u, global2.x) == 4294967295u, true), firstTrailingBit(vec2<u32>(global2.x, 64889u)));
    return vec4<bool>(!all(var_4.b), any(vec2<bool>(true, var_4.b.x)) & (1u < ~(var_4.c.x << (1u % 32u))), !(!var_4.b.x), arg_1.x);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2582f - global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(930f - 1626f))), _wgslsmith_f_op_f32(f32(-1f) * -743f)), vec4<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2464f)) * -2212f), _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_div_f32(global1.x, -866f)))), !select(select(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 16u)], global0[_wgslsmith_index_u32(30251u, 16u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(13289u, 16u)], global0[_wgslsmith_index_u32(51864u, 16u)], true), global0[_wgslsmith_index_u32(3462u, 16u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], false, global0[_wgslsmith_index_u32(27090u, 16u)], global0[_wgslsmith_index_u32(32984u, 16u)]), vec4<bool>(global0[_wgslsmith_index_u32(15736u, 16u)], true, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(global2.x, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)])), func_3(global1.x, vec4<bool>(global0[_wgslsmith_index_u32(5672u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], true, global0[_wgslsmith_index_u32(0u, 16u)]))))));
    var var_1 = global1.yxy;
    global0 = array<bool, 16>();
    var var_2 = -1481f;
    let var_3 = Struct_2(Struct_1(firstLeadingBit(vec4<u32>(1u, ~18133u, 4294967295u, countOneBits(1u))), vec2<bool>(!(!global0[_wgslsmith_index_u32(global2.x, 16u)]), global0[_wgslsmith_index_u32(u_input.a, 16u)] & any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false, global0[_wgslsmith_index_u32(12359u, 16u)]))), vec2<u32>(0u, _wgslsmith_mod_u32(global2.x, u_input.a))), vec2<i32>(1i, 1i), false, Struct_1(select(~vec4<u32>(u_input.a, u_input.a, 48491u, 1u), ~(~vec4<u32>(7926u, u_input.a, 4294967295u, global2.x)), any(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(4408u, 16u)])) || global0[_wgslsmith_index_u32(global2.x, 16u)]), !select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], false), false), global2.xx), vec4<i32>(-2147483647i, -(i32(-1i) * -1i), -_wgslsmith_mult_i32(41335i << (global2.x % 32u), 20343i), -328i));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global2 = max(arg_1.a << (vec4<u32>(arg_1.a.x, firstTrailingBit(~u_input.a), ~arg_0.a.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.a.xyz, arg_0.a.a.wwy), global2.zxy)) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(arg_1.c, vec2<u32>(900u, global2.x) | global2.yw), firstLeadingBit(~(~arg_0.a.c.x)), 0u, arg_0.d.c.x));
    let var_0 = vec3<bool>(func_2(), true, select(true, false, arg_0.c) && false);
    let var_1 = arg_0.e.xxz | arg_0.e.wwy;
    let var_2 = 1i;
    let var_3 = arg_1;
    return true & any(!(!vec4<bool>(true, var_0.x, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.wx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xw * global1.xz)))) + vec2<f32>(global1.x, global1.x));
    var var_1 = max(_wgslsmith_mult_u32(global2.x | 122273u, _wgslsmith_add_u32(~6154u, u_input.a)) | _wgslsmith_clamp_u32(~16311u, 4294967295u, _wgslsmith_add_u32(0u, global2.x)), global2.x);
    var var_2 = !(!vec4<bool>(true, true, true, (global0[_wgslsmith_index_u32(global2.x, 16u)] != global0[_wgslsmith_index_u32(4294967295u, 16u)]) & global0[_wgslsmith_index_u32(~4294967295u, 16u)]));
    let var_3 = all(vec3<bool>(1i < firstTrailingBit(2147483647i), !global0[_wgslsmith_index_u32((108022u | global2.x) | _wgslsmith_dot_vec3_u32(global2.wyy, vec3<u32>(global2.x, u_input.a, u_input.a)), 16u)], false));
    var_2 = vec4<bool>(any(select(!vec4<bool>(false, true, false, var_2.x), vec4<bool>(any(vec4<bool>(var_3, false, global0[_wgslsmith_index_u32(66970u, 16u)], true)), all(vec2<bool>(true, var_2.x)), false, func_1(Struct_2(Struct_1(vec4<u32>(global2.x, global2.x, 4294967295u, u_input.a), vec2<bool>(false, var_2.x), vec2<u32>(0u, 17605u)), vec2<i32>(34334i, 0i), var_3, Struct_1(vec4<u32>(global2.x, global2.x, 1u, 4294967295u), vec2<bool>(false, false), global2.ww), vec4<i32>(-8193i, 55195i, 15791i, -26064i)), Struct_1(vec4<u32>(global2.x, global2.x, u_input.a, 0u), var_2.wx, global2.yw))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 16u)], false, global0[_wgslsmith_index_u32(1u, 16u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(global2.x, 16u)], true, false), vec4<bool>(true, false, var_2.x, false), global0[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(global0[_wgslsmith_index_u32(17851u, 16u)], false, var_3, var_3)))), func_2(), true, false);
    global0 = array<bool, 16>();
    var_2 = select(vec4<bool>(true, any(var_2.xw), !func_2(), !any(select(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), var_2.zy, vec2<bool>(true, var_2.x)))), vec4<bool>(var_3, _wgslsmith_f_op_f32(-global1.x) > 772f, func_1(Struct_2(Struct_1(vec4<u32>(4294967295u, global2.x, 0u, u_input.a), vec2<bool>(true, var_3), vec2<u32>(1u, u_input.a)), vec2<i32>(0i, 2147483647i), var_2.x || var_2.x, Struct_1(vec4<u32>(1u, u_input.a, global2.x, 34598u), var_2.zw, global2.yz), countOneBits(vec4<i32>(-2147483647i, -1i, 10950i, -11726i))), Struct_1(vec4<u32>(14335u, u_input.a, 61254u, 0u) >> (vec4<u32>(21460u, global2.x, global2.x, u_input.a) % vec4<u32>(32u)), select(vec2<bool>(var_3, false), var_2.wx, var_2.wx), global2.yz)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + _wgslsmith_f_op_f32(global1.x * 1098f)), vec4<bool>(var_2.x, true, func_1(Struct_2(Struct_1(vec4<u32>(1u, global2.x, u_input.a, 0u), var_2.wx, global2.xz), vec2<i32>(-1i, -66543i), false, Struct_1(vec4<u32>(u_input.a, global2.x, 4294967295u, global2.x), var_2.wx, global2.zy), vec4<i32>(-2147483647i, 0i, 24703i, -2147483647i)), Struct_1(vec4<u32>(global2.x, u_input.a, global2.x, 4294967295u), var_2.wx, global2.zy)), !global0[_wgslsmith_index_u32(global2.x, 16u)])).x), !(!select(vec4<bool>(true, true, true, true), func_3(var_0.x, vec4<bool>(false, false, var_3, var_3)), true)));
    let var_4 = abs(1i);
    let var_5 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(min(vec3<i32>(17238i, var_4, -2147483647i), vec3<i32>(-1i, 0i, 1i) >> (vec3<u32>(global2.x, u_input.a, 47378u) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(var_4, 0i, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(max(7887u, 49070u), _wgslsmith_mult_i32(var_4, _wgslsmith_sub_i32(-max(var_4, -27473i), -16230i)), vec4<f32>(_wgslsmith_f_op_f32(round(-1943f)), _wgslsmith_f_op_f32(abs(-1492f)), var_0.x, 469f), vec2<i32>(_wgslsmith_div_i32(var_4, min(var_4 | 9308i, firstLeadingBit(2147483647i))), abs(var_4) | (var_4 << (13163u % 32u))), var_5);
}

