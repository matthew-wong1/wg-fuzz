struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-446f, 329f, -267f);

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(548f, global0.x, global0.x, global0.x), vec4<f32>(378f, global0.x, global0.x, 1000f), vec4<bool>(true, true, false, true)))) - vec4<f32>(global0.x, 163f, _wgslsmith_f_op_f32(-global0.x), -2233f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -263f, -142f, 395f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1173f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-967f, global0.x, 1247f, -1642f) * vec4<f32>(-716f, global0.x, 568f, -1267f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-481f, -1000f, -1139f, global0.x))))))));
    global1 = array<vec3<bool>, 15>();
    global0 = var_0.zwx;
    global0 = _wgslsmith_div_vec3_f32(var_0.zzy, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1577f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(558f)))), _wgslsmith_f_op_f32(sign(1f))))));
    let var_1 = true;
    return vec3<f32>(530f, -1760f, 1425f);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = ~(-5329i);
    let var_1 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 0i, -2147483647i), vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(-1i, u_input.a, -14477i)), reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), -1i), ~countOneBits(min(vec2<i32>(27088i, -26180i), vec2<i32>(0i, u_input.a))));
    let var_2 = ~4294967295u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-648f, global0.x, 102f))))));
    let var_4 = Struct_4(var_3.x, var_3.x, 0u, _wgslsmith_f_op_f32(-global0.x));
    return Struct_1(global1[_wgslsmith_index_u32(36580u, 15u)]);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(arg_1, 2477i << (countOneBits(_wgslsmith_clamp_u32(~arg_2.c, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 0u & u_input.b.x)) % 32u));
    var var_1 = Struct_3(vec2<u32>(arg_2.c, arg_2.c), (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(17825i, var_0, var_0), vec3<i32>(arg_1, -2147483647i, var_0))) | select(vec3<i32>(countOneBits(u_input.a), arg_1 | -45524i, -38245i), ~vec3<i32>(arg_1, arg_1, -31051i), arg_0.d.a.x), arg_3, global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(abs(8169u), ~arg_2.c)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 40550u), vec2<u32>(44638u, 0u))), 5u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, var_1.c, global0.x, arg_2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(439f, -933f, global0.x, -1620f) * vec4<f32>(-333f, arg_3, -1539f, var_1.c)), func_2(false).a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1615f, arg_2.a, var_1.c))), arg_0.d.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), var_1.c, -870f, arg_3))));
    var var_3 = abs(firstTrailingBit(_wgslsmith_div_vec4_u32(~select(vec4<u32>(4294967295u, var_1.a.x, 1u, 29727u), vec4<u32>(u_input.b.x, 4294967295u, 5787u, u_input.b.x), vec4<bool>(arg_0.e.a.x, var_1.d.a.x, arg_0.a.a.x, true)), vec4<u32>(var_1.a.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_2.c, u_input.b.x, 0u)), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 21362u, 39232u, 28763u), vec4<u32>(66013u, 6616u, u_input.b.x, 23874u))))));
    var var_4 = (~(~_wgslsmith_mult_u32(0u, arg_2.c)) | u_input.b.x) >> ((1u << ((max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 11756u, var_3.x)), var_3.x | u_input.b.x) | ~var_3.x) % 32u)) % 32u);
    return vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.yy, ~vec2<u32>(1u, ~34730u)), _wgslsmith_mult_u32(firstLeadingBit(u_input.b.x), firstTrailingBit(var_3.x)));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5) -> vec2<u32> {
    let var_0 = !(!(!(!select(vec4<bool>(false, arg_0.b.x, true, false), vec4<bool>(true, arg_0.b.x, arg_2.b.x, false), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x)))));
    var var_1 = ~vec4<u32>(~firstTrailingBit(~0u), ~0u, arg_2.a.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(69922u, 1u), arg_2.a), 4294967295u), _wgslsmith_dot_vec2_u32(u_input.b.zy, countOneBits(arg_2.a))));
    var var_2 = ~u_input.b.x;
    var var_3 = true;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -543f, 535f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 268f, -396f) * vec3<f32>(-366f, global0.x, global0.x))), vec3<f32>(global0.x, global0.x, 1000f))), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(floor(-742f))), select(vec3<bool>(!arg_2.b.x, all(arg_0.b), false), vec3<bool>(true, arg_0.b.x, func_2(false).a.x), -261f > global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(751f, global0.x, 1446f), var_0.zxz)))))));
    return ~vec2<u32>(1u, ~_wgslsmith_sub_u32(104102u, arg_0.a.x) | _wgslsmith_mult_u32(arg_1, ~50350u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -2147483647i;
    global0 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_1 = func_2(~(~_wgslsmith_mod_u32(4294967295u, u_input.b.x)) > 4294967295u);
    global1 = array<vec3<bool>, 15>();
    var var_2 = Struct_3(func_4(Struct_5(func_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 5u)], global2[_wgslsmith_index_u32(37997u, 5u)], Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), Struct_1(vec3<bool>(true, var_1.a.x, true)), global2[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -2147483647i, u_input.a), vec3<i32>(u_input.a, 21712i, var_0)), Struct_4(global0.x, -614f, 1u, 144f), -194f), var_1.a.yz, 45800i, vec2<i32>(firstLeadingBit(u_input.a), u_input.a)), 0u, Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(44557u, 1u)), vec2<bool>(var_1.a.x | false, true), u_input.a, ~firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)))), firstLeadingBit(-firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -54964i)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))) + _wgslsmith_f_op_f32(-global0.x)), func_2(var_1.a.x));
    var var_3 = Struct_4(-855f, _wgslsmith_f_op_f32(-var_2.c), var_2.a.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(countOneBits(abs(vec2<u32>(u_input.b.x, 4294967295u))), vec2<u32>(2931u, _wgslsmith_sub_u32(4294967295u, 49045u)))), vec4<u32>(~var_3.c, u_input.b.x, var_2.a.x, _wgslsmith_clamp_u32(~var_2.a.x, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b.yy)), 1u)));
}

