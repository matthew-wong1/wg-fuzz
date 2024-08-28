struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    global0 = _wgslsmith_f_op_f32(-712f * 1106f);
    return select(!select(vec3<bool>(!global1[_wgslsmith_index_u32(13851u, 22u)], true, global1[_wgslsmith_index_u32(arg_0.x, 22u)]), !(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 22u)])), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 22u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(arg_0.x, 22u)], false), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 22u)], true, true))), vec3<bool>(false, !all(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 22u)], false)), true), global1[_wgslsmith_index_u32(arg_0.x, 22u)]);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    let var_0 = 4294967295u;
    global1 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(443f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-694f * arg_3.c.a.d), 416f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(abs(256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.a.b + 406f)))));
    var var_3 = !select(select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(30566u, arg_2.a), 22u)], any(vec3<bool>(false, false, false)), true), vec3<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, arg_3.c.a.c), 22u)], arg_0.a <= arg_2.a), 1u < reverseBits(arg_0.a)), select(func_3(~arg_3.b), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], false), select(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_2.a, 22u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(1741u, 22u)], false), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a, 22u)], false, false)), !vec3<bool>(true, global1[_wgslsmith_index_u32(64064u, 22u)], false), !vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a.c, 22u)], global1[_wgslsmith_index_u32(46114u, 22u)], true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, arg_1.c.a, 43001u, var_0), vec4<u32>(1u, 37309u, 1u, 1u)), abs(firstTrailingBit(vec4<u32>(4294967295u, arg_3.b.x, 0u, arg_0.a)))), 22u)]);
    return !var_3.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_u32(~0u, ~71129u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(427f - arg_0.x) * _wgslsmith_div_f32(arg_1.a, -179f))), 1u, _wgslsmith_div_f32(1393f, arg_0.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e.yy, u_input.a), ~vec2<i32>(arg_1.c.b, 1i)) | arg_1.c.b, arg_1.c.b), arg_1.c.c, Struct_1(max(arg_1.b.x, 21357u)));
    let var_1 = -(~(~u_input.e.xz));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1317f - _wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = arg_1.c.c.a;
    let var_3 = ~(vec4<u32>(1u, var_2, ~reverseBits(18682u), _wgslsmith_mod_u32(~var_2, ~var_0.a.a.a)) ^ firstTrailingBit(~abs(vec4<u32>(arg_1.c.a.a.a, arg_2, var_0.c.a, var_2))));
    return arg_1.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, -555f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 408f) + vec2<f32>(1137f, 437f)), func_2(Struct_1(15042u), Struct_3(Struct_2(Struct_1(85052u), 794f, 63857u, 942f), -8366i, Struct_1(62353u), Struct_1(0u)), Struct_1(77667u), Struct_4(203f, vec3<u32>(4294967295u, 47583u, 34968u), Struct_3(Struct_2(Struct_1(83641u), arg_0.x, 1u, -816f), 0i, Struct_1(100403u), Struct_1(26474u)))))))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)))), Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), select(~vec3<u32>(66265u, 28452u, 2176u), vec3<u32>(1u, 1u, 1u), vec3<bool>(any(vec3<bool>(false, arg_1, global1[_wgslsmith_index_u32(57110u, 22u)])), global1[_wgslsmith_index_u32(abs(28006u), 22u)], all(vec4<bool>(false, arg_1, false, global1[_wgslsmith_index_u32(36228u, 22u)])))), Struct_3(Struct_2(Struct_1(1u), _wgslsmith_f_op_f32(min(arg_0.x, 898f)), 1u, arg_0.x), select(2147483647i, u_input.a.x, arg_1) << (firstLeadingBit(47731u) % 32u), Struct_1(16585u), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(39829u, 0u, 1u, 12292u), vec4<u32>(4294967295u, 91009u, 2527u, 1u))))), 48171u);
    global0 = _wgslsmith_f_op_f32(arg_0.x * -1000f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.b)) + -1205f);
    let var_2 = -236f;
    var var_3 = Struct_2(Struct_1(select(0u ^ _wgslsmith_sub_u32(var_0.c.a, var_0.c.a), _wgslsmith_div_u32(~var_0.c.a, _wgslsmith_sub_u32(0u, var_0.c.a)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1184f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b + 1788f) + 346f))), min(0u, firstTrailingBit(1u)), 1375f);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(true, false, true != global1[_wgslsmith_index_u32(1u, 22u)]));
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(810f)))))));
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(33457u, 1u, 5757u), vec3<u32>(0u, 2060u, 1u), var_0), vec3<u32>(1u, 1u, func_1(vec2<f32>(526f, 317f), true))), min(_wgslsmith_mod_u32(1u, 1u), ~(~4294967295u)));
    var var_3 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, 470f)))), Struct_4(-258f, ~vec3<u32>(1u, 1u, 1u), func_4(vec2<f32>(-1944f, -503f), Struct_4(173f, vec3<u32>(134481u, 0u, 1u), Struct_3(Struct_2(Struct_1(42625u), 746f, 14658u, 1561f), 0i, Struct_1(4294967295u), Struct_1(4294967295u))), 0u)), abs(reverseBits(67371u))).a, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(25025i, 23535i, u_input.b), max(-30764i, 41562i)), ~(-vec2<i32>(1038i, 22194i)))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1508f, -1236f) - vec2<f32>(-2102f, 1622f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, -1207f) + vec2<f32>(1226f, 192f)))), Struct_4(_wgslsmith_f_op_f32(ceil(-859f)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 24461u, 59636u), vec3<u32>(72824u, 0u, 0u), vec3<u32>(15219u, 0u, 1u)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, -1194f)), Struct_4(-1133f, vec3<u32>(0u, 0u, 1u), Struct_3(Struct_2(Struct_1(1u), -448f, 45479u, 343f), 1717i, Struct_1(35352u), Struct_1(38524u))), 4294967295u)), 19723u).a.a, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 56757u, 5556u), ~(~vec4<u32>(4294967295u, 0u, 1u, 5972u)))));
    global1 = array<bool, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~0i, vec2<u32>(4294967295u, var_3.d.a << (select(min(var_3.c.a, var_3.d.a), min(var_3.a.a.a, var_3.a.c), var_0.x) % 32u)));
}

