struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(26389i, -1i);

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 7>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -1030f));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global2 = array<i32, 7>();
    global0 = array<i32, 2>();
    global2 = array<i32, 7>();
    global2 = array<i32, 7>();
    global0 = array<i32, 2>();
    return Struct_1(select(select(select(!vec3<bool>(true, true, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, false, true)), true), vec3<bool>(global1.x, global1.x | true, false), !(!vec3<bool>(false, false, global1.x))), !(!vec3<bool>(global1.x, global1.x, global1.x)), !(!(!vec3<bool>(global1.x, global1.x, false)))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1202f)))), 371f, _wgslsmith_f_op_f32(f32(-1f) * -351f)));
    var var_1 = Struct_1(vec3<bool>(any(!vec3<bool>(global1.x, global1.x, arg_1.a.x)), false, !any(vec4<bool>(arg_2.a.x, arg_2.a.x, true, true))));
    return vec4<bool>(var_0.x == _wgslsmith_div_f32(var_0.x, -1539f), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 19332u)), 1u, reverseBits(~82827u)) >= _wgslsmith_mult_u32(abs(1u), select(4294967295u, _wgslsmith_add_u32(0u, 44714u), false && arg_1.a.x)), true, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(false, Struct_1(vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(global1.x, false, false), vec3<u32>(1u, 5914u, 0u), 14727i), select(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(59306u, 2u)]), vec2<i32>(0i, -23597i), false), vec2<bool>(true, global1.x), !vec4<bool>(true, global1.x, global1.x, global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f)) * _wgslsmith_f_op_f32(step(-613f, _wgslsmith_f_op_f32(f32(-1f) * -1034f))))) + vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(false, func_2(vec2<u32>(23956u, 1u)), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, global1.x), global1.x), vec3<u32>(0u, 4294967295u, 22711u), 0i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-44149i, 9212i), vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(0i, u_input.a.x)), global1.zy, !func_3(u_input.a.x, Struct_1(vec3<bool>(true, global1.x, false)), Struct_1(vec3<bool>(true, global1.x, global1.x))))), -1783f));
    var var_1 = (min(~select(2147483647i, global0[_wgslsmith_index_u32(83997u, 2u)], false), -abs(1i)) <= -(i32(-1i) * -30584i)) || all(!(!func_2(vec2<u32>(57819u, 7149u)).a));
    let var_2 = true;
    var var_3 = any(func_3(_wgslsmith_dot_vec2_i32(~(u_input.a ^ vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1i)), ~firstLeadingBit(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(115150u, 7u)]))), Struct_1(vec3<bool>(var_2, !var_2, var_2)), func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 8617u), firstTrailingBit(vec2<u32>(46913u, 4121u))))).xwz);
    var var_4 = _wgslsmith_clamp_vec4_i32(-(~(vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(18513u, 7u)], global2[_wgslsmith_index_u32(22642u, 7u)], global0[_wgslsmith_index_u32(73087u, 2u)], 1i))), select(~(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(0u, 2u)], 2147483647i, u_input.a.x, global2[_wgslsmith_index_u32(1u, 7u)])), -reverseBits(-vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(27049u, 2u)], 2147483647i, -6231i)), !select(select(vec4<bool>(global1.x, var_2, true, var_2), vec4<bool>(false, false, true, false), false), vec4<bool>(var_2, global1.x, global1.x, false), all(vec4<bool>(global1.x, true, true, true)))), vec4<i32>(909i, global2[_wgslsmith_index_u32(~1u, 7u)], global0[_wgslsmith_index_u32(859u, 2u)], min(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(31165u, 2u)], -2147483647i, 34292i), select(vec3<i32>(global0[_wgslsmith_index_u32(1u, 2u)], -23471i, -2147483647i), vec3<i32>(-7111i, global0[_wgslsmith_index_u32(31617u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<bool>(true, global1.x, var_2))))));
    var var_5 = Struct_3(select(var_4.xyz, vec3<i32>(~reverseBits(u_input.a.x), countOneBits(max(-2147483647i, -37103i)), 2147483647i), func_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(83745u, 0u))).a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(var_0.x + -149f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 307f, -1686f))))));
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1471f * -157f) - _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.b.x * var_5.b.x)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-964f * -1730f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_5.b.zxw - vec3<f32>(924f, -1033f, var_0.x))))))));
    let var_7 = Struct_3(var_4.wxw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1792f, var_0.x, var_0.x) - vec4<f32>(var_6.x, var_0.x, -686f, 696f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-203f, var_6.x, var_6.x, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1704f, -1247f, var_0.x, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(_wgslsmith_sub_vec2_i32(var_4.xw, var_5.a.zz) << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(119607u, 50163u)) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(~(~firstTrailingBit(var_7.a.zy)), vec2<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~65820u, 2u)], var_4.x << (90113u % 32u), max(u_input.a.x, var_4.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41987u, 8702u), vec2<u32>(39400u, 121731u)) & 1u, 7u)]), -var_4.ww), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(442f))), _wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(min(822f, -1149f))), var_0.x) + var_6), -2147483647i, ~(~vec3<u32>(4294967295u, 4294967295u, 1u)) | abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(14438u, 13249u, 0u), vec3<u32>(27664u, 1u, 0u), vec3<u32>(51036u, 0u, 4294967295u))));
}

