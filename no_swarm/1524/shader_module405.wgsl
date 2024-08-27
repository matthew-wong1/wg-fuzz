struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_3(-27294i, vec4<i32>(45251i, 2147483647i, -1055i, -36483i), vec2<bool>(true, true), 565u, Struct_2(Struct_1(vec4<i32>(13305i, 43332i, 1i, -15702i), 345u, vec4<u32>(1u, 1u, 79947u, 34019u), 1034f, vec3<u32>(1u, 11932u, 770u)), -489f, Struct_1(vec4<i32>(0i, -1i, 9494i, 369i), 4294967295u, vec4<u32>(1u, 17223u, 54416u, 0u), 721f, vec3<u32>(32763u, 1u, 17140u))))));

var<private> global3: i32 = -28216i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<bool> {
    var var_0 = vec2<i32>(reverseBits(u_input.b), arg_1.b.x | -_wgslsmith_div_i32(abs(2147483647i), 1373i));
    let var_1 = countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 29305u, arg_2.x), arg_1.e.a.c.zwz) | min(20865u, u_input.d.x & 4294967295u)) != select(64438u, select(9022u, 28u >> ((global0.c.x >> (global0.c.x % 32u)) % 32u), !any(arg_1.c)), !(true & select(true, arg_1.c.x, false)));
    var_0 = -global0.a.xx;
    let var_2 = -arg_1.b;
    let var_3 = _wgslsmith_f_op_f32(trunc(-169f));
    return select(vec3<bool>(true, arg_1.c.x, var_1), vec3<bool>(false, any(!(!vec3<bool>(true, var_1, false))), all(!(!vec3<bool>(false, false, var_1)))), _wgslsmith_f_op_f32(f32(-1f) * -291f) == _wgslsmith_f_op_f32(select(943f, _wgslsmith_f_op_f32(-1597f - _wgslsmith_f_op_f32(select(-155f, -589f, var_1))), !arg_1.c.x && any(vec4<bool>(arg_1.c.x, false, false, var_1)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    return all(!func_3(u_input.d.x << (arg_3.a.c.x % 32u), Struct_3(-2147483647i, arg_2, vec2<bool>(false, true), global0.b, Struct_2(Struct_1(arg_2, 10551u, arg_3.c.c, arg_0.d, arg_0.e), 396f, Struct_1(vec4<i32>(arg_3.a.a.x, arg_3.c.a.x, 50775i, arg_3.c.a.x), 18466u, vec4<u32>(u_input.d.x, arg_0.e.x, 1u, 4294967295u), global0.d, vec3<u32>(20327u, 59838u, 0u)))), arg_0.c | arg_3.a.c)) && select(func_3(max(_wgslsmith_div_u32(2748u, global0.b), global1.x), Struct_3(abs(-2147483647i), ~global0.a, vec2<bool>(true, true), global0.e.x, Struct_2(arg_3.a, 264f, Struct_1(arg_2, 4294967295u, vec4<u32>(38329u, u_input.d.x, 4294967295u, 1u), 1650f, arg_0.c.zwx))), arg_0.c).x, true, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> bool {
    var var_0 = 635f;
    return all(select(select(vec3<bool>(func_2(Struct_1(u_input.e, 1u, global0.c, arg_1.x, vec3<u32>(u_input.d.x, global0.b, global1.x)), vec4<f32>(global0.d, 179f, global0.d, global0.d), vec4<i32>(global0.a.x, global0.a.x, 3921i, global0.a.x), Struct_2(Struct_1(u_input.e, 28300u, global0.c, global0.d, vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), 1605f, Struct_1(u_input.e, 61296u, vec4<u32>(54548u, u_input.d.x, 27144u, 4294967295u), arg_1.x, vec3<u32>(u_input.d.x, 4294967295u, 4294967295u)))), false, true), vec3<bool>(false, select(false, true, false), 1000f <= global0.d), false), vec3<bool>(false, true, any(vec3<bool>(true, true, true))), all(vec4<bool>(false, false, false, true)) | true));
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1024f, -321f)))) - 930f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1546f, global0.d, true)), -631f, arg_0.c.x)), arg_0.e.b)), _wgslsmith_f_op_f32(round(-1133f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0.d, -1517f, 666f), vec4<f32>(arg_0.e.a.d, arg_0.e.a.d, 1999f, global0.d))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d, global0.d, global0.d, arg_0.e.a.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-546f, 1166f, -951f, global0.d))))))));
    let var_1 = global0.b;
    let var_2 = vec2<f32>(-333f, _wgslsmith_f_op_f32(-742f * var_0.x));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_2, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_0.e.c.d) * -1000f), _wgslsmith_f_op_f32(562f + _wgslsmith_f_op_f32(f32(-1f) * -845f))))));
    return vec3<u32>(abs(1u), _wgslsmith_sub_u32(firstTrailingBit(12825u) | 0u, var_3.e.a.e.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(0u, global0.b), global1.zz), firstLeadingBit(_wgslsmith_div_vec2_u32(arg_0.e.c.e.xy, arg_0.e.a.c.wy))), _wgslsmith_div_u32(11045u, 1u), 45315u >> ((global0.b >> (countOneBits(arg_0.d) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(Struct_3(~0i, -u_input.e, vec2<bool>(func_1(vec4<i32>(2147483647i, u_input.b, global0.a.x, u_input.b), vec2<f32>(-312f, -977f), global0.a.yx), true), select(4294967295u, 68294u, all(vec2<bool>(true, false))), Struct_2(Struct_1(global0.a, 1u, vec4<u32>(0u, 4294967295u, 0u, global0.e.x), global0.d, global0.c.wyz), global0.d, Struct_1(vec4<i32>(global0.a.x, global0.a.x, u_input.a, 2147483647i), 61437u, global0.c, 1594f, vec3<u32>(global0.e.x, global0.b, u_input.d.x)))));
    global1 = ~(~(~(~vec4<u32>(var_0.x, 1u, global1.x, global0.e.x))) | _wgslsmith_div_vec4_u32(vec4<u32>(6906u, var_0.x, global0.c.x, 4294967295u) & global0.c, vec4<u32>(44802u, ~u_input.d.x, global1.x, 0u >> (u_input.d.x % 32u))));
    var var_1 = ~func_4(Struct_3(u_input.b, vec4<i32>(global0.a.x, _wgslsmith_dot_vec3_i32(global0.a.yyy, vec3<i32>(31122i, u_input.e.x, 508i)), -38073i, -7232i), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, global1.x), vec3<u32>(u_input.d.x, var_0.x, global0.c.x)) << (global0.e.x % 32u), Struct_2(Struct_1(u_input.e, global0.b, global0.c, 476f, global0.c.yzz), _wgslsmith_f_op_f32(-global0.d), Struct_1(u_input.e, 0u, global0.c, global0.d, var_0)))).x;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(726f, global0.d) + vec2<f32>(global0.d, _wgslsmith_f_op_f32(floor(global0.d))));
    global2 = array<Struct_4, 1>();
    let var_3 = ~countOneBits(global0.c);
    var var_4 = _wgslsmith_div_f32(var_2.x, var_2.x);
    var var_5 = func_4(Struct_3(~(-1904i), global0.a, vec2<bool>(true, !select(true, true, true)), ~(~(~var_3.x)), Struct_2(Struct_1(vec4<i32>(-4821i, 0i, global0.a.x, u_input.a), func_4(Struct_3(global0.a.x, vec4<i32>(-1i, -1i, u_input.c, 19055i), vec2<bool>(true, true), 1u, Struct_2(Struct_1(global0.a, 17808u, vec4<u32>(9221u, 1u, var_0.x, var_0.x), global0.d, vec3<u32>(36633u, global1.x, 4294967295u)), 611f, Struct_1(u_input.e, global0.b, var_3, var_2.x, var_3.yzw)))).x, firstLeadingBit(global0.c), -223f, global0.e & var_3.wzz), 1169f, Struct_1(_wgslsmith_add_vec4_i32(global0.a, global0.a), global1.x, min(vec4<u32>(33431u, 4294967295u, global0.e.x, 0u), vec4<u32>(115639u, 1u, var_0.x, 4294967295u)), -1000f, vec3<u32>(33916u, 9455u, 1u))))).x;
    var_1 = 10977u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d * 1222f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))), -1000f, ~vec4<u32>(u_input.d.x, 4294967295u, _wgslsmith_clamp_u32(~53683u, _wgslsmith_mod_u32(4294967295u, 62150u), min(u_input.d.x, 15904u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0.c, vec4<u32>(u_input.d.x, global0.b, 37028u, var_3.x)), vec4<u32>(26845u, u_input.d.x, global0.c.x, 4294967295u) ^ vec4<u32>(0u, global0.b, 42830u, 11906u))), global0.a.x);
}

