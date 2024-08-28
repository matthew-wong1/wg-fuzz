struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    global1 = ~(~vec3<u32>(u_input.a, min(62605u, 24423u) >> (_wgslsmith_div_u32(0u, 12778u) % 32u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, 94238u, 4294967295u), vec4<u32>(global1.x, 44553u, 71544u, 0u)), firstTrailingBit(0u))));
    global0 = array<Struct_1, 32>();
    let var_0 = countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -41988i, -3732i), vec4<i32>(-1i, -1i, 2147483647i, -1i))) <= abs(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -12039i), vec3<i32>(2147483647i, -1i, -88527i)), i32(-1i) * -15531i));
    global1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.a)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global1.x, u_input.a), ~vec3<u32>(4294967295u, u_input.a, 34246u))));
    var var_1 = var_0;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1666f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(269f * -1356f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-375f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-516f, -1984f, true)))))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    global0 = array<Struct_1, 32>();
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1() -> vec3<f32> {
    global1 = ~(~(~(~(vec3<u32>(4294967295u, u_input.a, 4294967295u) ^ vec3<u32>(4954u, global1.x, u_input.a)))));
    let var_0 = 1i;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 357f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1423f)), -1000f)));
    global1 = vec3<u32>(global1.x, _wgslsmith_div_u32(0u, ~min(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(36071u, 48869u, global1.x), vec3<u32>(1u, u_input.a, 51663u)))), ~_wgslsmith_mod_u32((29391u ^ u_input.a) ^ _wgslsmith_div_u32(0u, u_input.a), u_input.a));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(998f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, -3432f)), ~(vec2<u32>(u_input.a, global1.x) | vec2<u32>(37815u, global1.x)))), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_div_f32(-1000f, -2876f), _wgslsmith_f_op_f32(f32(-1f) * -167f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1816f, -1068f, -1424f))) * vec3<f32>(-1562f, -560f, -174f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f - 1354f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(842f, -1000f)))), _wgslsmith_f_op_f32(-236f + _wgslsmith_f_op_f32(ceil(195f))))));
    var var_1 = select(vec2<u32>(global1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 28072u, 0u, global1.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(global1.x, global1.x, 1u, 56566u))))), _wgslsmith_clamp_vec2_u32(global1.zy, vec2<u32>(~0u, global1.x), reverseBits(select(vec2<u32>(1u, 1u), global1.zx, true))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    var var_2 = vec2<u32>(~global1.x, var_1.x) << (countOneBits(reverseBits(firstTrailingBit(vec2<u32>(var_1.x, var_1.x) << (global1.yy % vec2<u32>(32u))))) % vec2<u32>(32u));
    global1 = min(select(~vec3<u32>(~global1.x, 0u, _wgslsmith_mult_u32(u_input.a, global1.x)), vec3<u32>(~2241u, abs(firstLeadingBit(u_input.a)), 4294967295u), var_0.x >= var_0.x), select(~((vec3<u32>(4294967295u, u_input.a, 4294967295u) & vec3<u32>(var_2.x, var_1.x, 1u)) | vec3<u32>(u_input.a, var_1.x, 88584u)), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, global1.x, 4294967295u), ~vec3<u32>(var_2.x, u_input.a, 2825u)), _wgslsmith_sub_u32(select(var_1.x, var_1.x, false), var_2.x)), all(vec2<bool>(false, all(vec4<bool>(false, true, true, true))))));
    let var_3 = vec3<i32>(65774i, 17676i ^ -_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-36896i, 39817i, 1i), vec3<i32>(-1i, 4226i, 1i))), -1i);
    let var_4 = Struct_4(_wgslsmith_div_u32(~var_2.x, _wgslsmith_mod_u32(~var_1.x, _wgslsmith_mod_u32(countOneBits(global1.x), abs(46512u)))), !vec4<bool>(!any(vec3<bool>(true, true, false)), true, true, true), var_3.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x)), countOneBits(select(vec3<i32>(var_3.x, 1i, 2147483647i), var_3, false) | _wgslsmith_sub_vec3_i32(vec3<i32>(12950i, 66561i, var_3.x), var_3)), vec2<bool>(true, true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, any(vec4<bool>(false, true, true, false)), true), vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(select(~_wgslsmith_mod_u32(112201u, ~1u), firstLeadingBit(var_2.x), select(_wgslsmith_div_i32(var_3.x, var_3.x), ~(-44558i), true) < 0i), 32u)]);
    global1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(4294967295u, 1u), var_4.a, _wgslsmith_mod_u32(var_1.x, var_2.x)), ~(~(vec3<u32>(38652u, u_input.a, global1.x) & vec3<u32>(1u, 8317u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(max(var_4.d.b.x, 1i), select(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.d.b.x, -19472i, var_4.c, var_4.d.b.x), vec4<i32>(9779i, 1i, var_4.e.b.x, var_4.c)), _wgslsmith_dot_vec3_i32(var_4.d.b, var_4.d.b), true)), select(vec4<u32>(reverseBits(1u), ~var_2.x, _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a, 42462u, var_2.x), vec3<u32>(global1.x, 27519u, 0u))), ~_wgslsmith_sub_u32(50081u, var_4.a)), ~countOneBits(vec4<u32>(0u, 1u, var_2.x, u_input.a)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_4.e.a.x * var_4.e.a.x), var_0.x), vec2<f32>(_wgslsmith_f_op_f32(337f * var_0.x), -204f))), vec2<u32>(var_1.x, ~(~(~49497u))));
}

