struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-296f, -988f, -800f), vec3<f32>(1000f, -506f, 1328f), vec3<f32>(-262f, 1623f, 1199f), vec3<f32>(142f, -1730f, 735f), vec3<f32>(452f, -1187f, -815f), vec3<f32>(-1098f, 698f, 1406f), vec3<f32>(-902f, 122f, -293f), vec3<f32>(-322f, -1199f, -913f), vec3<f32>(865f, 1000f, -482f), vec3<f32>(-910f, -1579f, -299f), vec3<f32>(463f, 1000f, 1298f), vec3<f32>(-710f, -374f, 475f), vec3<f32>(1321f, -459f, 761f), vec3<f32>(-126f, 225f, 1000f), vec3<f32>(-774f, 307f, 991f), vec3<f32>(1000f, -117f, 828f), vec3<f32>(-1334f, -1092f, -1000f), vec3<f32>(-1296f, 658f, 2452f), vec3<f32>(2094f, 1835f, -136f), vec3<f32>(-1000f, 148f, 347f));

var<private> global1: array<Struct_1, 32>;

var<private> global2: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.d - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -768f), 1000f)))));
    let var_1 = _wgslsmith_sub_vec2_u32(~select(~countOneBits(vec2<u32>(arg_1.a.b, arg_1.a.b)), (vec2<u32>(arg_1.a.a, 4294967295u) ^ vec2<u32>(66690u, 3693u)) & ~vec2<u32>(4294967295u, arg_1.a.a), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false))), vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(1345u), 4294967295u, _wgslsmith_mult_u32(select(arg_1.a.a, 0u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(24627u, 1u), vec2<u32>(1174u, 4294967295u)))), 24880u));
    var var_2 = u_input.a < u_input.a;
    var var_3 = Struct_3(Struct_1(_wgslsmith_clamp_u32(reverseBits(9409u), var_1.x & ~44713u, var_1.x), 80348u, vec3<i32>(_wgslsmith_clamp_i32(-arg_1.a.c.x, -48872i, u_input.a), 1i, arg_1.a.c.x), arg_0.x), vec3<u32>(_wgslsmith_add_u32(1u, ~max(4294967295u, 4294967295u)), (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.b, var_1.x), vec2<u32>(4294967295u, arg_1.a.b)) >> (~var_1.x % 32u)) >> (abs(~arg_1.a.b) % 32u), arg_1.a.a), global1[_wgslsmith_index_u32(4294967295u, 32u)], arg_1);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, arg_1.a.d, var_3.d.a.d, -190f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1012f, 1431f, -357f, -412f))), vec4<f32>(574f, 401f, 367f, -372f), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-429f, _wgslsmith_f_op_f32(344f * -1045f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * var_3.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -391f)));
    return any(vec4<bool>(false, true, false, (i32(-1i) * -2603i) < (_wgslsmith_dot_vec2_i32(vec2<i32>(11341i, arg_1.a.c.x), vec2<i32>(var_3.a.c.x, arg_1.b.x)) & 1i)));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(40964u, 4294967295u, _wgslsmith_div_u32(select(20614u, 2617u, true), 1u)), false), ~(~vec3<u32>(17325u, 4294967295u, 4294967295u)) << ((_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 68263u, 0u), vec3<u32>(381u, 34563u, 1u), vec3<u32>(1u, 1u, 4294967295u)), vec3<u32>(30677u, 1u, 1u)) & vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_0.x, 20u)] * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-307f, -919f), _wgslsmith_f_op_f32(-241f + 518f), _wgslsmith_f_op_f32(-922f + -1126f))))), Struct_2(global1[_wgslsmith_index_u32(1u, 32u)], -firstLeadingBit(~vec4<i32>(38858i, -19811i, u_input.a, u_input.a))));
    let var_2 = ~var_0.x;
    var_1 = !(!all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false))));
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(~var_0.x, 32u)], ~_wgslsmith_mult_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 27120u, var_0.x), vec3<u32>(25854u, var_0.x, var_2)), ~vec3<u32>(var_0.x, 194u, var_0.x)), abs(min(var_0, var_0))), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x), vec4<u32>(var_2, 1u, var_0.x, var_0.x)), var_0.x, firstTrailingBit(min(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(0i, 2147483647i, u_input.a)) | ~vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(256f - 3101f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)))), Struct_2(Struct_1(countOneBits(4294967295u), max(~var_0.x, 0u), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-33089i, 21292i, u_input.a)), ~vec3<i32>(-41690i, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-1f)), vec4<i32>(~0i, _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, u_input.a), u_input.a), u_input.a, 24742i)));
    return 0u >= _wgslsmith_mult_u32(var_0.x, ~7790u);
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    global2 = all(vec3<bool>(false && !any(vec3<bool>(true, false, false)), true, select(false, func_2(), !all(vec4<bool>(false, false, false, true)))));
    let var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.x, ~(arg_0.x >> (arg_0.x % 32u)), _wgslsmith_add_u32(~arg_0.x, arg_0.x), 28250u & firstLeadingBit(arg_0.x)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.x, 31134u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(39534u, arg_0.x, arg_0.x, arg_0.x)) % 32u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.x, 58948u, arg_0.x), vec3<u32>(5113u, 4294967295u, 79676u)), vec3<u32>(4294967295u, 15534u, 429u))), abs(~(arg_0.x << (arg_0.x % 32u))), arg_0.x, arg_0.x));
    global1 = array<Struct_1, 32>();
    global0 = array<vec3<f32>, 20>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(167f)), -814f))))));
    return StorageBuffer(global0[_wgslsmith_index_u32(~0u, 20u)], ~(vec3<i32>(u_input.a & u_input.a, _wgslsmith_div_i32(u_input.a, 0i), 1i) & abs(vec3<i32>(1i, -77817i, u_input.a))), ~var_0.xyx ^ _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 13068u, 1u), abs(var_0.www)), select(arg_0, var_0.wx, vec2<bool>(!all(vec2<bool>(true, true)), var_1 <= _wgslsmith_f_op_f32(step(-113f, -1252f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(select(1000f, 1099f, select(true, true, false))))));
    global2 = !(_wgslsmith_f_op_f32(f32(-1f) * -245f) != _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0)));
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    global0 = array<vec3<f32>, 20>();
    let x = u_input.a;
    s_output = func_1(~(~vec2<u32>(max(1u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 17287u, 4294967295u, 18419u), vec4<u32>(2677u, 1u, 103545u, 0u)))));
}

