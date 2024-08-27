struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1441f;

var<private> global1: bool;

var<private> global2: vec2<f32>;

var<private> global3: Struct_2;

var<private> global4: Struct_2 = Struct_2(vec3<i32>(12828i, 0i, 2147483647i), vec4<u32>(0u, 0u, 0u, 1832u), Struct_1(vec4<i32>(86178i, -13623i, 2634i, 26585i)), vec3<bool>(true, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-607f))), -574f, 1980f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(474f, global2.x), -487f, _wgslsmith_f_op_f32(-707f * -1723f), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, global2.x, global2.x, global2.x)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 763f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 2172f, global2.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global2.x, -1000f, -1000f))))))));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, global2.x, global2.x)) + vec3<f32>(780f, global2.x, global2.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(140f + global2.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(295f + -1211f), 1607f, global2.x < 403f))), 530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x - -450f))) * -730f)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 813f, -2415f, global2.x), vec4<f32>(2104f, global2.x, 1313f, -1701f))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, -316f, -284f, var_0.x)))), select(!select(vec4<bool>(global4.d.x, global3.d.x, false, false), vec4<bool>(global4.d.x, global3.d.x, false, global4.d.x), vec4<bool>(global3.d.x, global4.d.x, global3.d.x, global4.d.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, global3.d.x, true, global3.d.x), vec4<bool>(global4.d.x, global4.d.x, global4.d.x, true), global3.d.x), any(vec3<bool>(true, false, global4.d.x))), (global4.c.a.x != global3.c.a.x) || any(vec4<bool>(false, global4.d.x, true, true))))));
    let var_2 = Struct_2(abs(select(~select(global4.c.a.yxz, global3.a, global3.d), global3.c.a.yzw, !select(global4.d, global4.d, global4.d))), ~vec4<u32>(firstLeadingBit(firstLeadingBit(global4.b.x)), _wgslsmith_mod_u32(global4.b.x, 68196u) ^ 97702u, _wgslsmith_dot_vec2_u32(global4.b.zy, countOneBits(vec2<u32>(global4.b.x, 1u))), u_input.b.x | ~global3.b.x), Struct_1(global4.c.a), vec3<bool>(select(!global4.d.x, global4.d.x, select(all(vec4<bool>(false, global4.d.x, global3.d.x, false)), all(vec4<bool>(false, global3.d.x, global3.d.x, false)), true)), global4.d.x, !(!global3.d.x)));
    global1 = any(!vec2<bool>(any(vec2<bool>(false, global3.d.x)), global3.d.x));
    var_1 = Struct_3(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1389f + 1226f), 556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(global2.x - var_1.a.x))))));
    return select(_wgslsmith_add_vec4_i32(var_2.c.a, global3.c.a), min(~(-vec4<i32>(global3.a.x, global4.a.x, var_2.c.a.x, -1i)), global3.c.a), select(select(select(!vec4<bool>(false, true, var_2.d.x, global4.d.x), vec4<bool>(false, true, global3.d.x, true), select(vec4<bool>(true, global4.d.x, false, true), vec4<bool>(global3.d.x, true, true, false), vec4<bool>(true, true, false, global4.d.x))), select(select(vec4<bool>(true, var_2.d.x, false, false), vec4<bool>(global4.d.x, false, true, var_2.d.x), true), vec4<bool>(global4.d.x, var_2.d.x, true, false), vec4<bool>(true, var_2.d.x, var_2.d.x, true)), false), !select(vec4<bool>(var_2.d.x, global3.d.x, false, true), !vec4<bool>(global4.d.x, global3.d.x, global4.d.x, true), any(vec3<bool>(false, global3.d.x, true))), select(vec4<bool>(true, var_2.d.x, all(vec2<bool>(global3.d.x, true)), true), select(!vec4<bool>(global3.d.x, false, global4.d.x, true), select(vec4<bool>(true, false, global4.d.x, true), vec4<bool>(global3.d.x, global3.d.x, var_2.d.x, false), vec4<bool>(var_2.d.x, global4.d.x, false, var_2.d.x)), vec4<bool>(global4.d.x, true, var_2.d.x, false)), true)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = Struct_1(select(-(max(vec4<i32>(-95738i, global4.a.x, 1i, global3.a.x), vec4<i32>(global4.a.x, -25437i, 2147483647i, -6464i)) & vec4<i32>(u_input.a, -45280i, global3.a.x, global4.a.x)), func_2(), all(select(select(vec4<bool>(global4.d.x, global4.d.x, global3.d.x, global3.d.x), vec4<bool>(true, false, true, true), global3.d.x), select(vec4<bool>(global3.d.x, false, true, false), vec4<bool>(false, global3.d.x, global4.d.x, global3.d.x), global3.d.x), vec4<bool>(global4.d.x, true, false, global3.d.x)))));
    let var_1 = Struct_5(-var_0.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, -1025f, _wgslsmith_f_op_f32(exp2(global2.x))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.x, -1000f), -584f, _wgslsmith_f_op_f32(trunc(-220f)), global2.x)))));
    var var_4 = -229f;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.d.x;
    let var_1 = u_input.a;
    var var_2 = ~u_input.b;
    global0 = _wgslsmith_f_op_f32(func_1(1u));
    global4 = Struct_2(_wgslsmith_clamp_vec3_i32(~abs(firstLeadingBit(global3.a)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a, global3.a.x), global4.c.a.yzz, vec3<i32>(6719i, u_input.a, u_input.a)) ^ global4.c.a.zxx), ~firstLeadingBit(~global4.c.a.xxw)), global4.b, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, global4.a.x, -53217i), -vec4<i32>(u_input.a, 6903i, var_1, -2147483647i)) & abs(-global3.c.a)), !global4.d);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, -1212f, global2.x, -1457f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -245f, 736f, global2.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 130f, -433f, -629f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-570f, global2.x, 442f, global2.x), vec4<f32>(-1174f, -1199f, global2.x, 201f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)))))));
    var var_4 = 0u;
    var var_5 = global3.a.x;
    var var_6 = global4.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f + _wgslsmith_f_op_f32(var_3.a.x * -1159f)))), ~(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.b.x, 1u, global3.b.x), vec3<u32>(4211u, u_input.b.x, 45646u), vec3<u32>(0u, 59056u, 62757u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1469f + -1427f), -542f, global2.x), var_3.a.xzy), vec3<i32>((~var_1 << (select(var_2.x, global3.b.x, global3.d.x) % 32u)) | -1i, var_1, func_2().x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global4.a.x, var_6.a.x) << (1u % 32u), 0i));
}

