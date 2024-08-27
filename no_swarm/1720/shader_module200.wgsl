struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 100186i;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-1243f, -1377f, 324f, -461f), vec3<f32>(-1547f, 320f, 736f), false);

var<private> global3: Struct_2;

var<private> global4: u32 = 1594u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    global4 = u_input.d ^ _wgslsmith_clamp_u32(11457u, _wgslsmith_div_u32(~(~arg_0.c.x), global3.c.x), select(~global1.c.x, u_input.c.x, global3.b.a.x));
    global3 = arg_0;
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.b.c), vec3<f32>(global2.c.x, global1.b.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1706f)), 331f))), firstLeadingBit(u_input.c.x) > reverseBits(4294967295u << (~global1.c.x % 32u))));
    let var_1 = !(u_input.a.x > ~abs(31145u));
    global3 = arg_0;
    return global3.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_4(global1.d >> (4294967295u % 32u), global2.b.ywx, _wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.b, global3.d, -20951i, global3.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(-15030i, u_input.b, 43025i, -2147483647i), vec4<i32>(u_input.b, 2147483647i, global3.d, global3.d))), min(vec4<i32>(u_input.b, u_input.b, -1i, -23658i), select(vec4<i32>(0i, global3.d, global3.d, u_input.b), vec4<i32>(u_input.b, 0i, 52680i, global1.d), arg_1)), true), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(39559i, 2981i, u_input.b, -15661i), vec4<i32>(-30452i, u_input.b, global3.d, -1i)))));
    global0 = global1.d;
    global4 = firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(func_3(Struct_2(global2.a.xxz, Struct_1(global2.a, vec4<f32>(global3.b.b.x, 879f, global3.b.b.x, -900f), var_0.b, arg_1), vec2<u32>(u_input.c.x, 29237u), global1.d), global1.c.x), ~u_input.c.x), global3.c.x) ^ ~u_input.a.x);
    var var_1 = -413f;
    var var_2 = 33353i;
    return Struct_3(vec2<u32>(select(1u, 17352u, u_input.b <= 20534i) & _wgslsmith_dot_vec3_u32(u_input.c.zzy, vec3<u32>(49710u, 1u, u_input.c.x)), 20227u), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(select(firstTrailingBit(var_0.c.yz), var_0.c.wz, true), _wgslsmith_mult_vec2_i32(~var_0.c.xx, _wgslsmith_add_vec2_i32(var_0.c.ww, var_0.c.wy)), min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 2147483647i), var_0.c.yz), vec2<i32>(-4586i, u_input.b) ^ var_0.c.xx)), vec2<i32>(-1i, _wgslsmith_mod_i32(-12374i, firstTrailingBit(global3.d)))), u_input.c.wzy);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -498f))))));
    let var_1 = global2.a.wx;
    global2 = global1.b;
    global2 = Struct_1(!global3.b.a, vec4<f32>(-2325f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.b.x + -1128f))), 848f, _wgslsmith_f_op_f32(arg_1.b.b.x * 872f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, 1056f, -1700f) * global1.b.b.xzx) + arg_1.b.c), global2.b.xww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1810f, global3.b.c.x, global1.b.c.x), global1.b.b.zxy, true)) * arg_1.b.b.wzw)), select(select(select(global3.b.a.yzx, vec3<bool>(true, false, true), global1.b.a.wzw), global3.a, select(arg_1.b.a.yzx, vec3<bool>(global3.b.d, true, true), false)), select(global3.a, vec3<bool>(global3.b.a.x, true, true), true), !(!global3.a.x)))), global3.a.x);
    global2 = global3.b;
    return Struct_5(vec4<u32>(abs(global3.c.x), arg_0, ~(~global1.c.x), 26939u), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.b.x, 924f, arg_1.b.c.x) - vec3<f32>(617f, -414f, 110f)), _wgslsmith_f_op_vec3_f32(exp2(arg_1.b.b.zzz))), global2.c)), global2.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.c.x, arg_1.b.c.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.c.x) * global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f * global3.b.b.x))))), global3.b);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> u32 {
    let var_0 = func_2(vec3<f32>(-1782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-704f, -583f) - _wgslsmith_f_op_f32(f32(-1f) * -2542f))), 140f), 1u != abs(66879u | ~global3.c.x));
    let var_1 = -1577f;
    let var_2 = global1.b;
    global3 = Struct_2(!(!vec3<bool>(!arg_0.d.d, any(global1.b.a.xw), !arg_0.d.a.x)), func_1(40886u, Struct_2(global3.b.a.xxw, func_1(countOneBits(1u), Struct_2(global2.a.xwy, global1.b, u_input.a.zy, -22072i)).d, ~_wgslsmith_clamp_vec2_u32(var_0.a, vec2<u32>(var_0.a.x, 1981u), vec2<u32>(global3.c.x, 39524u)), abs(1i))).d, u_input.c.xy, -func_2(global2.c, func_1(u_input.c.x, Struct_2(vec3<bool>(true, global3.b.a.x, true), Struct_1(vec4<bool>(true, var_2.a.x, global2.a.x, false), global1.b.b, global3.b.c, global1.a.x), vec2<u32>(4294967295u, 4294967295u), arg_0.b.b.x)).d.a.x).b.x);
    let var_3 = _wgslsmith_f_op_f32(abs(var_1));
    return 1u;
}

fn func_5(arg_0: vec4<u32>) -> i32 {
    var var_0 = global2.c.x;
    let var_1 = Struct_4(abs(-global1.d), vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -175f), 428f), firstTrailingBit(vec4<i32>(-1i, global1.d, 1i, 49245i)));
    var_0 = _wgslsmith_f_op_f32(global1.b.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-496f, var_1.b.x))) - _wgslsmith_f_op_f32(1000f + -307f)) * 683f));
    let var_2 = ~(~global3.c.x);
    var var_3 = !((_wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -669f))) == global2.c.x) | global1.a.x);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(24185u, 34387u, global1.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c.x, u_input.c.x, global1.c.x, 60970u), u_input.a)), 23461u);
    var var_0 = _wgslsmith_f_op_vec4_f32(-global1.b.b);
    global0 = abs(-22956i);
    var var_1 = false;
    var var_2 = ~func_5(vec4<u32>(~(~0u), func_4(func_1(u_input.c.x, Struct_2(global2.a.wyz, global3.b, vec2<u32>(global1.c.x, global1.c.x), global3.d)), global3.b), _wgslsmith_mult_u32(firstTrailingBit(1u), 5028u), ~80508u));
    var var_3 = select(vec3<i32>(-63195i, _wgslsmith_div_i32(2147483647i ^ reverseBits(global1.d), _wgslsmith_dot_vec2_i32(vec2<i32>(39150i, global3.d), vec2<i32>(global3.d, -38217i)) | u_input.b), ~0i), ~(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global3.d, 41252i, -39957i), vec4<i32>(global1.d, u_input.b, 42031i, -24902i)), _wgslsmith_mod_i32(u_input.b, -5693i), u_input.b)), vec3<bool>(true, global3.b.a.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.b.b.x, 314f, global3.b.c.x), vec3<f32>(-1000f, global2.b.x, -141f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.wzw) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1008f, -425f, 477f)))))));
}

