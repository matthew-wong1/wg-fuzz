struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(4294967295u), Struct_2(76281u), Struct_2(0u), Struct_2(8246u), Struct_2(39505u), Struct_2(0u), Struct_2(21495u));

var<private> global1: vec3<f32> = vec3<f32>(-206f, 1000f, 951f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    global0 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1, arg_1))))));
    global0 = array<Struct_2, 7>();
    global1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + 470f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_2.b.x, 180f)))))), _wgslsmith_f_op_f32(exp2(arg_2.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.wwz + var_0.zxx))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.xzz, vec3<f32>(global1.x, -107f, 1484f), vec3<bool>(true, true, false))) - vec3<f32>(global1.x, -1168f, var_0.x))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.zyx))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_2.b * arg_1.xxy))))))));
    return firstLeadingBit(-((i32(-1i) * -1i) ^ abs(_wgslsmith_add_i32(arg_2.a.x, arg_2.c.x))));
}

fn func_2(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = vec3<bool>(select(true, arg_0, 1787f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_div_f32(832f, 603f))), arg_0, arg_0 && false);
    global0 = array<Struct_2, 7>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(595f, _wgslsmith_f_op_f32(-arg_1), arg_1), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(-109f)), _wgslsmith_f_op_f32(-131f - -1828f), _wgslsmith_f_op_f32(-global1.x)))), var_0)));
    var var_1 = _wgslsmith_add_vec3_i32(~(~(~vec3<i32>(-1i, 28475i, 2147483647i))) << (u_input.b.zwx % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(75963i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 0i), func_3(Struct_2(1u), vec4<f32>(567f, 1030f, 496f, -704f), Struct_3(vec2<i32>(0i, -4676i), vec3<f32>(-959f, 116f, arg_1), vec3<i32>(1i, 19386i, -1i), u_input.b.x, Struct_2(15756u)))), 0i), _wgslsmith_mult_vec3_i32(min(-vec3<i32>(-38561i, 30087i, -1i), ~vec3<i32>(-1i, -18203i, -40985i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(1i, 1i, 1i)))));
    var_1 = ~(-vec3<i32>(select(1i, _wgslsmith_mult_i32(var_1.x, var_1.x), true), ~_wgslsmith_mult_i32(var_1.x, 33759i), ~var_1.x));
    return min(-_wgslsmith_mult_i32(34458i, var_1.x), -22064i);
}

fn func_4(arg_0: i32) -> vec3<i32> {
    var var_0 = !all(!vec4<bool>(true, true, true, any(vec2<bool>(true, false))));
    var var_1 = Struct_5(Struct_4(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)) | (~(-30469i) < arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 369f) - 903f), !(2141f == _wgslsmith_f_op_f32(global1.x - global1.x))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.a.b)), 1f)));
    let var_3 = Struct_5(var_1.a);
    global0 = array<Struct_2, 7>();
    return vec3<i32>(6249i, -arg_0, arg_0);
}

fn func_1() -> vec4<bool> {
    global0 = array<Struct_2, 7>();
    let var_0 = !vec2<bool>(!any(vec2<bool>(false, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))) | true);
    let var_1 = Struct_3(min(~(vec2<i32>(-1i) * -vec2<i32>(23766i, 2147483647i)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-969f, global1.x))))), func_4(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(8918i, -2147483647i), vec2<i32>(-37944i, 1i)), func_2(var_0.x, -142f), _wgslsmith_mult_i32(-24242i, 0i)), abs(min(25748i, 2147483647i)))), _wgslsmith_mult_u32(0u, ~u_input.c.x), Struct_2(_wgslsmith_div_u32(49381u, _wgslsmith_div_u32(u_input.c.x, 46595u) & ~0u)));
    global0 = array<Struct_2, 7>();
    let var_2 = Struct_4(true, -1172f, var_0.x);
    return vec4<bool>(any(vec3<bool>(!(var_2.b != var_2.b), max(var_1.d, u_input.c.x) <= _wgslsmith_add_u32(var_1.e.a, var_1.d), _wgslsmith_f_op_f32(global1.x * 806f) < _wgslsmith_f_op_f32(561f - global1.x))), !var_0.x, var_2.a, _wgslsmith_sub_i32(var_1.a.x, ~(i32(-1i) * -19969i)) < var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, global1.x))), _wgslsmith_f_op_f32(209f + global1.x), true)))));
    var var_1 = u_input.b.wxz;
    var_1 = u_input.b.zzw;
    var_1 = ~firstTrailingBit(firstTrailingBit(vec3<u32>(max(1u, u_input.c.x), _wgslsmith_mult_u32(0u, u_input.b.x), min(52776u, u_input.a))));
    var var_2 = func_1();
    global0 = array<Struct_2, 7>();
    let var_3 = min(_wgslsmith_div_vec3_i32(abs(abs(vec3<i32>(-1i, 1i, -38066i))), vec3<i32>(1i, 1i, 1i)), reverseBits(vec3<i32>(1i, -2147483647i, -2147483647i) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.x), vec3<u32>(u_input.b.x, 4294967295u, 54999u)) % vec3<u32>(32u)))) << (~(~reverseBits(vec3<u32>(1u, var_1.x, u_input.c.x))) % vec3<u32>(32u));
    let var_4 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1160f + var_0) + -536f))) + 429f);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(-var_5), var_1.x, var_0);
}

