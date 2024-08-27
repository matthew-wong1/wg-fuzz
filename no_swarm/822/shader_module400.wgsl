struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(28542u);

var<private> global1: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(0u), Struct_5(48587u), Struct_5(0u), Struct_5(1u), Struct_5(28133u), Struct_5(50864u), Struct_5(4294967295u), Struct_5(80502u), Struct_5(29904u), Struct_5(718u), Struct_5(1u), Struct_5(1u), Struct_5(4294967295u), Struct_5(44075u), Struct_5(25577u), Struct_5(31467u), Struct_5(21212u), Struct_5(1u), Struct_5(0u));

var<private> global2: u32 = 17249u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    var var_0 = Struct_3(Struct_2(~(~countOneBits(vec4<u32>(u_input.b, arg_0.x, 0u, global0.a))), all(vec4<bool>(arg_1, true, arg_1, arg_1))), Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x << (u_input.b % 32u), _wgslsmith_sub_u32(u_input.a.x, 28036u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a, global0.a), u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 20521u, arg_0.x), vec4<u32>(arg_0.x, 1u, 0u, 0u))), all(vec2<bool>(any(vec2<bool>(arg_1, false)), true))), ~4294967295u, Struct_1(vec3<f32>(1f, -1317f, _wgslsmith_f_op_f32(-1176f * -506f)), !select(vec3<bool>(arg_1, false, true), !vec3<bool>(false, arg_1, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, arg_1), arg_1)), _wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1829f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-413f, 708f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1677f, -242f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1141f, -903f))), all(vec2<bool>(arg_1, arg_1)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(1275f)), _wgslsmith_f_op_f32(-261f + -1000f)))));
    var var_1 = -2147483647i;
    let var_2 = Struct_3(var_0.b, var_0.b, ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.x), u_input.a.yx))), var_0.d);
    var var_3 = ~_wgslsmith_div_vec3_u32(min(vec3<u32>(global0.a, 62770u, u_input.b), u_input.a ^ var_0.b.a.zxx) ^ (vec3<u32>(49641u, 44961u, arg_0.x) << (~var_0.b.a.zzy % vec3<u32>(32u))), vec3<u32>(abs(u_input.a.x & 0u), abs(arg_0.x << (4294967295u % 32u)), _wgslsmith_mult_u32(0u, arg_0.x) & _wgslsmith_sub_u32(global0.a, 33287u)));
    global2 = 67305u;
    return abs(global0.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = func_3(arg_1.xz, any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), false)));
    let var_1 = Struct_2(arg_1, all(vec3<bool>(true, true, true)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f * arg_0.x) + 642f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(floor(arg_0.x))))));
    global1 = array<Struct_5, 19>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2184f, -187f, -1847f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_2.x, arg_0.x)) + vec3<f32>(-117f, _wgslsmith_f_op_f32(floor(-1205f)), _wgslsmith_f_op_f32(-var_2.x)))), select(!vec3<bool>(all(vec4<bool>(var_1.b, true, var_1.b, false)), true & var_1.b, true && var_1.b), !vec3<bool>(all(vec2<bool>(var_1.b, var_1.b)), true, !var_1.b), false | (-311f <= _wgslsmith_f_op_f32(select(773f, var_2.x, var_1.b)))), i32(-1i) * -35265i, 804f, vec2<f32>(var_2.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x - -253f))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = vec4<f32>(-1486f, _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, arg_0.x))), countOneBits(vec4<u32>(0u, u_input.b, 4294967295u, 74773u)))))) - -1431f));
    let var_1 = arg_1.x;
    var var_2 = u_input.a.zz;
    var var_3 = min(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.a, var_2.x, var_1, 4294967295u), vec4<u32>(17000u, var_2.x, global0.a, arg_1.x) >> (vec4<u32>(arg_1.x, 0u, 0u, 1u) % vec4<u32>(32u))) & firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, var_2.x), vec4<u32>(arg_1.x, 66797u, 1u, u_input.a.x), vec4<u32>(arg_1.x, 8333u, global0.a, 14812u))), reverseBits(countOneBits(select(vec4<u32>(arg_1.x, 4294967295u, var_1, 84385u), vec4<u32>(4294967295u, 87952u, arg_1.x, 8694u), vec4<bool>(true, false, false, true))))), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 0u, 59230u, var_1), firstLeadingBit(vec4<u32>(global0.a, 0u, arg_1.x, u_input.a.x)) | _wgslsmith_add_vec4_u32(vec4<u32>(59168u, 18658u, u_input.b, var_1), vec4<u32>(26196u, 4294967295u, 1u, var_2.x))) >> (vec4<u32>(4294967295u, _wgslsmith_mult_u32(~arg_1.x, var_1), abs(~u_input.a.x), _wgslsmith_sub_u32(1u, global0.a)) % vec4<u32>(32u)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, _wgslsmith_div_f32(-2695f, 1f), arg_0.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_0.yyz, arg_0.wxx, vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.zxw))))), (_wgslsmith_add_u32(92550u, var_3.x) >> (~4294967295u % 32u)) == (58531u & ~var_3.x))), vec3<bool>(any(vec3<bool>(true, true, true)), true, all(vec4<bool>(true, false, false, false)) && true), min(i32(-1i) * -20365i, ~_wgslsmith_clamp_i32(-18384i, -24609i, -22574i)) >> (0u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -710f), arg_0.yx);
    return Struct_2(vec4<u32>(func_3(_wgslsmith_clamp_vec2_u32(u_input.a.xy, u_input.a.zz | arg_1.xy, ~vec2<u32>(global0.a, 0u)), ~var_4.c <= (i32(-1i) * -30176i)), func_3(~_wgslsmith_sub_vec2_u32(arg_1.xx, vec2<u32>(4294967295u, 8839u)), true), ~abs(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(var_1, var_1))), 41522u), any(select(select(select(vec2<bool>(var_4.b.x, false), var_4.b.zy, false), var_4.b.yz, var_4.c < var_4.c), !vec2<bool>(var_4.b.x, true), vec2<bool>(false, false))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> f32 {
    global1 = array<Struct_5, 19>();
    var var_0 = ~5089u;
    global1 = array<Struct_5, 19>();
    var var_1 = vec4<f32>(arg_1.d.d, _wgslsmith_f_op_f32(-1f), arg_1.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.e.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1939f), -288f))));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.e.x), 676f, _wgslsmith_div_f32(252f, -294f), 553f) + vec4<f32>(_wgslsmith_div_f32(arg_1.d.d, arg_1.d.e.x), 726f, _wgslsmith_f_op_f32(abs(var_1.x)), arg_1.d.e.x))), ~_wgslsmith_sub_vec3_u32(select(u_input.a, vec3<u32>(arg_0.x, u_input.b, global0.a) ^ arg_3.a.wzx, !vec3<bool>(arg_3.b, false, arg_1.b.b)), ~vec3<u32>(0u, 6002u, 30399u)));
    return _wgslsmith_f_op_f32(var_1.x + 871f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(~(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), 57261u, global0.a, global0.a) & reverseBits(~vec4<u32>(global0.a, 10900u, 68875u, 18849u))), Struct_3(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(341f, -271f, 477f, 1506f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(284f, 740f, -922f, 404f), vec4<f32>(-229f, 1036f, -820f, 705f)))), max(u_input.a, ~u_input.a)), Struct_2(vec4<u32>(global0.a, 1u, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.b, global0.a, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 19233u, 0u))), func_1(vec4<f32>(1604f, 254f, 358f, -334f), select(vec3<u32>(global0.a, 0u, u_input.b), u_input.a, true)).b), countOneBits(57234u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, -971f, -655f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(445f, 167f, 2397f))), vec3<bool>(func_1(vec4<f32>(583f, 2313f, -970f, 205f), u_input.a).b, true, select(true, true, true)), 0i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(-275f + 699f))), vec2<f32>(784f, 1000f))), ~(-1i), func_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1089f)))), -887f, 1f), countOneBits(vec3<u32>(4294967295u, reverseBits(u_input.b), ~u_input.a.x)))));
    global2 = max(_wgslsmith_add_u32(global0.a, 27168u), 0u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yx), u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, global0.a), u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.a, global0.a), u_input.a)), abs(_wgslsmith_sub_u32(u_input.a.x, global0.a))), Struct_3(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, var_0, var_0))), vec3<u32>(global0.a, global0.a, 1u)), Struct_2(firstTrailingBit(vec4<u32>(14713u, u_input.b, u_input.a.x, 0u)), all(vec3<bool>(false, true, true))), 4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-769f, -586f, 439f), vec3<f32>(-2702f, -276f, 1000f), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), _wgslsmith_add_i32(-10757i, 45677i), -261f, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, -1060f))))), 1i, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(308f, var_0, 782f, 918f), vec4<f32>(647f, -249f, -349f, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1913f, var_0, -374f))), u_input.a & u_input.a))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(26422u, 1u, 21238u), vec3<u32>(global0.a, 1u, 11633u), vec3<bool>(true, false, false))), ~vec3<u32>(u_input.b, 19788u, u_input.a.x)), 15622u), 19u)];
    let var_2 = vec3<bool>(true, all(select(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)) && true);
    let var_3 = _wgslsmith_mult_u32(~(~37580u), _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.a, 1u ^ (u_input.b ^ u_input.a.x), 1u, _wgslsmith_add_u32(~1u, firstLeadingBit(4294967295u))), vec4<u32>(~(global0.a | u_input.a.x), u_input.b, ~_wgslsmith_sub_u32(global0.a, global0.a), 16971u)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, -1371f, var_1))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 1542f, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_0, var_1)))))), vec3<bool>(false, !(!select(var_2.x, var_2.x, var_2.x)), var_2.x), ~1i, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0) - vec2<f32>(var_0, var_1))))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(48297u, u_input.b, 11234u, 35798u), vec4<u32>(var_3, 4634u, u_input.b, global0.a))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2267f, 548f), vec2<f32>(1000f, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(606f, 906f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1128f, 1400f) * vec2<f32>(var_0, var_0)))))));
    let var_5 = 260f < _wgslsmith_f_op_f32(-var_0);
    global0 = Struct_5(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_1(vec4<f32>(-833f, var_0, -415f, _wgslsmith_f_op_f32(-357f + var_4.d)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(33274u, global0.a, 20756u)), ~vec3<u32>(4294967295u, 0u, u_input.b))).a.x, (var_3 & 0u) << (global0.a % 32u), var_3), 116f, var_4.c, u_input.b, _wgslsmith_sub_i32(19893i, _wgslsmith_mod_i32(var_4.c, ~max(1i, -2147483647i))));
}

