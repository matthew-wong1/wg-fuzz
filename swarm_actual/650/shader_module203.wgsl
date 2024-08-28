struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(21683i, vec2<u32>(1u, 799u)), vec3<i32>(0i, 1i, -2480i), -924f, Struct_1(2147483647i, vec2<u32>(0u, 0u))), Struct_3(Struct_1(-1i, vec2<u32>(44953u, 0u)), vec3<i32>(0i, 42002i, 16101i), 879f, Struct_1(50803i, vec2<u32>(1u, 30853u))), Struct_3(Struct_1(90979i, vec2<u32>(65824u, 1u)), vec3<i32>(i32(-2147483648), 21391i, 13902i), -1111f, Struct_1(i32(-2147483648), vec2<u32>(0u, 28479u))), Struct_3(Struct_1(13545i, vec2<u32>(11363u, 28292u)), vec3<i32>(i32(-2147483648), 48879i, 82114i), 752f, Struct_1(-1i, vec2<u32>(41054u, 1u))), Struct_3(Struct_1(-14157i, vec2<u32>(4294967295u, 0u)), vec3<i32>(2147483647i, 0i, 0i), -1835f, Struct_1(-42887i, vec2<u32>(35322u, 1u))), Struct_3(Struct_1(11250i, vec2<u32>(1u, 1125u)), vec3<i32>(-11291i, -43800i, 0i), 254f, Struct_1(0i, vec2<u32>(37821u, 50670u))), Struct_3(Struct_1(-51265i, vec2<u32>(0u, 37863u)), vec3<i32>(-53795i, 53637i, i32(-2147483648)), -1573f, Struct_1(1i, vec2<u32>(0u, 13637u))), Struct_3(Struct_1(62121i, vec2<u32>(0u, 4294967295u)), vec3<i32>(-1i, -1i, -437i), -602f, Struct_1(2147483647i, vec2<u32>(105442u, 61146u))), Struct_3(Struct_1(2147483647i, vec2<u32>(0u, 4294967295u)), vec3<i32>(-55146i, -53109i, 2147483647i), 259f, Struct_1(-24142i, vec2<u32>(4294967295u, 28092u))), Struct_3(Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 40821u)), vec3<i32>(-10611i, 39741i, -23938i), 106f, Struct_1(1i, vec2<u32>(0u, 0u))), Struct_3(Struct_1(976i, vec2<u32>(4294967295u, 0u)), vec3<i32>(-1i, 13995i, -4215i), 651f, Struct_1(-6515i, vec2<u32>(72025u, 4294967295u))), Struct_3(Struct_1(0i, vec2<u32>(0u, 4294967295u)), vec3<i32>(-1i, i32(-2147483648), 3689i), 613f, Struct_1(-2458i, vec2<u32>(4294967295u, 56365u))), Struct_3(Struct_1(-19409i, vec2<u32>(31690u, 100370u)), vec3<i32>(1i, i32(-2147483648), 7145i), 2452f, Struct_1(-8819i, vec2<u32>(31272u, 5410u))), Struct_3(Struct_1(-25426i, vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(-25680i, 48555i, 13911i), 1003f, Struct_1(i32(-2147483648), vec2<u32>(1u, 1u))), Struct_3(Struct_1(-53581i, vec2<u32>(53053u, 0u)), vec3<i32>(3026i, 30676i, -29165i), -163f, Struct_1(-27075i, vec2<u32>(108228u, 52126u))), Struct_3(Struct_1(42679i, vec2<u32>(1u, 4294967295u)), vec3<i32>(i32(-2147483648), -25932i, 30868i), 192f, Struct_1(19220i, vec2<u32>(0u, 20356u))), Struct_3(Struct_1(61808i, vec2<u32>(4294967295u, 62689u)), vec3<i32>(17791i, i32(-2147483648), 0i), 271f, Struct_1(14621i, vec2<u32>(1u, 1u))), Struct_3(Struct_1(-1i, vec2<u32>(4294967295u, 0u)), vec3<i32>(2436i, 20626i, 22146i), 142f, Struct_1(36525i, vec2<u32>(1u, 4294967295u))), Struct_3(Struct_1(15932i, vec2<u32>(4294967295u, 11554u)), vec3<i32>(1i, 23534i, 1i), -801f, Struct_1(-1i, vec2<u32>(1u, 0u))), Struct_3(Struct_1(2147483647i, vec2<u32>(25195u, 1u)), vec3<i32>(16993i, i32(-2147483648), -1i), 995f, Struct_1(2147483647i, vec2<u32>(4280u, 11627u))), Struct_3(Struct_1(2147483647i, vec2<u32>(102251u, 42106u)), vec3<i32>(-14502i, -3099i, 1i), -1691f, Struct_1(2147483647i, vec2<u32>(0u, 1u))), Struct_3(Struct_1(0i, vec2<u32>(0u, 4294967295u)), vec3<i32>(-1i, 1i, 30260i), 1561f, Struct_1(39250i, vec2<u32>(4294967295u, 0u))), Struct_3(Struct_1(-41360i, vec2<u32>(1u, 23755u)), vec3<i32>(12309i, 1i, 53189i), -413f, Struct_1(39118i, vec2<u32>(34651u, 4294967295u))), Struct_3(Struct_1(1i, vec2<u32>(1u, 6788u)), vec3<i32>(i32(-2147483648), -12844i, i32(-2147483648)), -1186f, Struct_1(1i, vec2<u32>(0u, 1u))), Struct_3(Struct_1(20715i, vec2<u32>(64612u, 4294967295u)), vec3<i32>(-15604i, 2147483647i, -647i), 1498f, Struct_1(0i, vec2<u32>(1u, 4294967295u))), Struct_3(Struct_1(48076i, vec2<u32>(58518u, 0u)), vec3<i32>(-34785i, -41821i, 12575i), -516f, Struct_1(i32(-2147483648), vec2<u32>(0u, 1u))), Struct_3(Struct_1(3865i, vec2<u32>(7692u, 1u)), vec3<i32>(2147483647i, -35580i, 2147483647i), -413f, Struct_1(0i, vec2<u32>(0u, 1u))), Struct_3(Struct_1(26853i, vec2<u32>(33323u, 1u)), vec3<i32>(-11136i, 1i, 15044i), -861f, Struct_1(-5518i, vec2<u32>(0u, 25121u))), Struct_3(Struct_1(6924i, vec2<u32>(2110u, 4294967295u)), vec3<i32>(13669i, 0i, 2147483647i), -338f, Struct_1(47668i, vec2<u32>(23331u, 20462u))), Struct_3(Struct_1(-929i, vec2<u32>(1u, 1u)), vec3<i32>(31987i, 18199i, -1i), 1538f, Struct_1(2147483647i, vec2<u32>(47952u, 7813u))), Struct_3(Struct_1(0i, vec2<u32>(0u, 54903u)), vec3<i32>(11857i, 49667i, -38465i), 379f, Struct_1(27676i, vec2<u32>(29495u, 4294967295u))), Struct_3(Struct_1(34808i, vec2<u32>(1u, 11542u)), vec3<i32>(1i, 733i, -27195i), 1759f, Struct_1(1i, vec2<u32>(2797u, 16077u))));

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec3<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_i32(~(i32(-1i) * -1i), (u_input.a << (abs(arg_1.c) % 32u)) ^ u_input.a), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(25858u, 0u, arg_0), ~4294967295u) >> (4294967295u % 32u), 33925u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x));
    var var_2 = select(arg_1.d.b, _wgslsmith_mod_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.x, 248u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, arg_1.c)), vec2<u32>(4294967295u, arg_0), !global2.yy), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.d.b, vec2<u32>(3367u, var_0.b.x)), countOneBits(vec2<u32>(27494u, arg_2.x)), _wgslsmith_div_vec2_u32(var_0.b, vec2<u32>(arg_2.x, 4294967295u)))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(~49801u, ~50717u), select(vec2<u32>(arg_1.d.b.x, 74284u), firstTrailingBit(arg_1.d.b), select(arg_1.b, global2.x, global2.x))) % vec2<u32>(32u)), global2.zz);
    let var_3 = _wgslsmith_sub_i32(select(var_0.a, var_0.a, true), (-13934i << (_wgslsmith_dot_vec2_u32(vec2<u32>(31187u, var_0.b.x), vec2<u32>(82316u, 5489u)) % 32u)) << (~_wgslsmith_clamp_u32(40821u, arg_1.c ^ 1u, firstLeadingBit(69896u)) % 32u));
    var_2 = arg_2.xz;
    return arg_1.a.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = array<Struct_3, 32>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(614f, 1425f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-498f, -216f) * vec2<f32>(-1000f, 120f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-542f, 872f), vec2<f32>(468f, -1358f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1598f, 447f), vec2<f32>(447f, 687f), global2.xx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1665f, 126f) - vec2<f32>(219f, 647f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(1u, Struct_4(vec4<f32>(-1266f, 2111f, 108f, 1118f), false, 5251u, Struct_1(-2147483647i, vec2<u32>(1u, 58725u)), vec3<f32>(590f, -262f, 1761f)), vec3<u32>(u_input.b, u_input.b, 1u))), -607f), 1f));
    let var_1 = vec4<i32>(1i, abs(-(_wgslsmith_mod_i32(13939i, u_input.a) >> (~80915u % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(37273i, u_input.a, -2147483647i, -10700i)), min(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(16029i, -21142i, 0i, -1i))), _wgslsmith_mult_i32(u_input.a, min(u_input.a, u_input.a)), firstTrailingBit(1i)), vec3<i32>(_wgslsmith_sub_i32(reverseBits(66951i), ~u_input.a), 1i, firstTrailingBit(select(u_input.a, u_input.a, false)))), 0i);
    let var_2 = all(global2.zx);
    var var_3 = abs(reverseBits(select(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 0u)), vec3<u32>(4294967295u, u_input.b, 4294967295u) << (vec3<u32>(64624u, 70732u, u_input.b) % vec3<u32>(32u)), global2.x)) & firstLeadingBit(~select(vec3<u32>(u_input.b, u_input.b, 27473u), vec3<u32>(u_input.b, 4294967295u, 14831u), vec3<bool>(false, false, false))));
    return Struct_2(firstLeadingBit(firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 1u, 4294967295u, u_input.b)))) ^ vec4<u32>(u_input.b, ~0u, _wgslsmith_add_u32(~31313u, ~u_input.b), _wgslsmith_mult_u32(55145u, u_input.b)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = func_2(true != global2.x);
    let var_1 = _wgslsmith_mod_u32(var_0.a.x, 0u);
    let var_2 = func_2(select(true, false, true));
    global2 = select(select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, false, true), vec3<bool>(global2.x, true, false)), arg_3.x > u_input.a), !(!vec3<bool>(global2.x, true, true)), !select(vec3<bool>(false, false, global2.x), vec3<bool>(false, false, global2.x), false)), select(!(!vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(true, select(global2.x, global2.x, true), true), !global2.x), vec3<bool>(false, !select(true, global2.x, false), any(vec4<bool>(global2.x, global2.x, true, global2.x)))), !(!(!(!vec3<bool>(false, global2.x, false)))), global2.x);
    global1 = array<Struct_3, 32>();
    return ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, u_input.b), var_2.a.yy), ~0u)) << (_wgslsmith_sub_vec2_u32(~(~arg_0.d.b), abs(reverseBits(func_2(global2.x).a.xx))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(~0u, firstLeadingBit(0u), global2.x) < (~(~u_input.b) >> (abs(90048u) % 32u));
    global1 = array<Struct_3, 32>();
    var var_0 = ~(~(~(func_1(global1[_wgslsmith_index_u32(u_input.b, 32u)], vec3<i32>(-49696i, 0i, -33530i), u_input.b, vec3<i32>(u_input.a, 1i, u_input.a)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(73998u, u_input.b), vec2<u32>(1u, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(661f, 135f, 192f), vec3<f32>(1192f, -156f, -621f)), vec3<f32>(1000f, 1218f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 1817f, 1639f))) - _wgslsmith_div_vec3_f32(vec3<f32>(859f, 746f, -1000f), vec3<f32>(-1116f, -328f, 493f))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1386f, _wgslsmith_f_op_f32(512f * -1344f), _wgslsmith_f_op_f32(-1000f + -155f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2132f, 111f, 1232f))), select(select(vec3<bool>(false, global2.x, false), vec3<bool>(false, false, global2.x), global2.x), vec3<bool>(global2.x, false, global2.x), !vec3<bool>(global2.x, true, global2.x)))))));
    var var_2 = ~_wgslsmith_clamp_u32(1u, u_input.b, var_0.x);
    let var_3 = firstTrailingBit(countOneBits(max(abs(vec2<i32>(-1i, 44073i)), ~vec2<i32>(u_input.a, u_input.a)) << ((vec2<u32>(4294967295u, var_0.x) >> (~vec2<u32>(u_input.b, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(Struct_3(Struct_1(var_3.x, vec2<u32>(u_input.b, u_input.b)), -vec3<i32>(u_input.a, u_input.a, 10073i), var_1.x, Struct_1(var_3.x, vec2<u32>(var_0.x, 27234u))), -(vec3<i32>(14296i, var_3.x, var_3.x) | vec3<i32>(-25001i, u_input.a, var_3.x)), 32041u, ~(~vec3<i32>(var_3.x, var_3.x, -2147483647i))).x, ((_wgslsmith_div_i32(-34836i, -2147483647i) >> (~4294967295u % 32u)) << ((var_0.x ^ select(9892u, 4294967295u, true)) % 32u)) & var_3.x, max(-var_3, _wgslsmith_sub_vec2_i32(select(var_3, abs(vec2<i32>(19451i, -43775i)), any(global2.xx)), _wgslsmith_mod_vec2_i32(var_3, vec2<i32>(-2147483647i, 11619i)) >> (~vec2<u32>(9821u, 64464u) % vec2<u32>(32u)))), -1i | _wgslsmith_dot_vec2_i32(-(~vec2<i32>(34478i, 2147483647i)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(0i, 35860i), vec2<i32>(u_input.a, 44705i)), abs(var_3))), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.x, u_input.b, var_0.x)), func_2(any(global2.xz)).a.yxz));
}

