struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(false, Struct_1(vec4<u32>(1u, 16482u, 15029u, 0u), 2147483647i, 36698u), Struct_1(vec4<u32>(78417u, 4294967295u, 1u, 31296u), -9241i, 89266u), Struct_1(vec4<u32>(43026u, 35585u, 4294967295u, 1u), 0i, 81347u), vec2<i32>(i32(-2147483648), -52599i)), Struct_2(false, Struct_1(vec4<u32>(1u, 83776u, 88195u, 46986u), 36221i, 4294967295u), Struct_1(vec4<u32>(21590u, 4259u, 114510u, 10723u), -10269i, 1u), Struct_1(vec4<u32>(72011u, 0u, 0u, 0u), 0i, 1u), vec2<i32>(2147483647i, 1i)), Struct_2(true, Struct_1(vec4<u32>(1u, 0u, 29990u, 0u), 9888i, 11566u), Struct_1(vec4<u32>(92947u, 3366u, 11758u, 4294967295u), 0i, 12577u), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u), 2147483647i, 1u), vec2<i32>(74153i, 9503i)), Struct_2(false, Struct_1(vec4<u32>(1u, 0u, 1u, 0u), 1i, 19553u), Struct_1(vec4<u32>(21479u, 9661u, 0u, 13354u), i32(-2147483648), 1u), Struct_1(vec4<u32>(37910u, 0u, 41208u, 0u), -17380i, 64931u), vec2<i32>(31048i, 1i)), Struct_2(true, Struct_1(vec4<u32>(1u, 14511u, 4294967295u, 4294967295u), 32463i, 13220u), Struct_1(vec4<u32>(46389u, 70773u, 29280u, 70462u), -1i, 10708u), Struct_1(vec4<u32>(17957u, 25371u, 84488u, 0u), i32(-2147483648), 4294967295u), vec2<i32>(1i, -1i)), Struct_2(false, Struct_1(vec4<u32>(4294967295u, 85682u, 53212u, 11775u), i32(-2147483648), 4294967295u), Struct_1(vec4<u32>(44919u, 48051u, 37600u, 0u), -15497i, 0u), Struct_1(vec4<u32>(1u, 3157u, 2764u, 1u), 2147483647i, 4294967295u), vec2<i32>(-58355i, -25299i)), Struct_2(false, Struct_1(vec4<u32>(1u, 23469u, 32842u, 4294967295u), 1i, 44654u), Struct_1(vec4<u32>(3094u, 1956u, 1u, 15606u), -1i, 37729u), Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u), 6024i, 21631u), vec2<i32>(-24978i, -23027i)), Struct_2(false, Struct_1(vec4<u32>(12210u, 54621u, 26010u, 51216u), 2147483647i, 1u), Struct_1(vec4<u32>(4294967295u, 91010u, 27543u, 12712u), 12546i, 64085u), Struct_1(vec4<u32>(16936u, 1u, 18952u, 0u), 29549i, 36831u), vec2<i32>(-1532i, 3326i)), Struct_2(false, Struct_1(vec4<u32>(26746u, 23910u, 43606u, 4842u), 31156i, 4294967295u), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), -1i, 4294967295u), Struct_1(vec4<u32>(21610u, 39091u, 21784u, 4294967295u), 1i, 16196u), vec2<i32>(-30615i, -17438i)), Struct_2(false, Struct_1(vec4<u32>(0u, 1u, 61131u, 1u), 14771i, 4294967295u), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), -56100i, 45732u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), -47887i, 40332u), vec2<i32>(i32(-2147483648), 37362i)), Struct_2(false, Struct_1(vec4<u32>(4294967295u, 0u, 3458u, 6174u), -5464i, 22307u), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), 18617i, 1u), Struct_1(vec4<u32>(64649u, 4766u, 1u, 0u), 14249i, 1u), vec2<i32>(26473i, -1754i)), Struct_2(false, Struct_1(vec4<u32>(0u, 0u, 153341u, 39252u), -1i, 1u), Struct_1(vec4<u32>(73683u, 1u, 55310u, 4678u), 121148i, 4294967295u), Struct_1(vec4<u32>(0u, 4294967295u, 6056u, 1u), 26209i, 73145u), vec2<i32>(2147483647i, 2147483647i)), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 47811u, 1u, 1u), -1i, 11797u), Struct_1(vec4<u32>(4853u, 1u, 59215u, 74344u), i32(-2147483648), 15914u), Struct_1(vec4<u32>(66066u, 7192u, 13877u, 36947u), 21819i, 790u), vec2<i32>(i32(-2147483648), 67602i)), Struct_2(true, Struct_1(vec4<u32>(0u, 57802u, 0u, 1u), 44108i, 19868u), Struct_1(vec4<u32>(1u, 0u, 0u, 4294967295u), -22283i, 4294967295u), Struct_1(vec4<u32>(59696u, 58615u, 32666u, 1u), -1i, 43042u), vec2<i32>(-93266i, i32(-2147483648))), Struct_2(true, Struct_1(vec4<u32>(32343u, 66983u, 0u, 38205u), 14551i, 4294967295u), Struct_1(vec4<u32>(0u, 17736u, 10520u, 11129u), 2147483647i, 9001u), Struct_1(vec4<u32>(0u, 46158u, 16498u, 1u), i32(-2147483648), 0u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(false, Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u), 2147483647i, 21079u), Struct_1(vec4<u32>(74141u, 1u, 1u, 13688u), 19779i, 4294967295u), Struct_1(vec4<u32>(16949u, 1u, 32693u, 4294967295u), -1i, 18932u), vec2<i32>(3246i, -15965i)), Struct_2(false, Struct_1(vec4<u32>(1u, 6422u, 4294967295u, 21756u), 0i, 1u), Struct_1(vec4<u32>(0u, 71123u, 60119u, 1u), -20642i, 30290u), Struct_1(vec4<u32>(12020u, 0u, 1u, 42327u), 1i, 15051u), vec2<i32>(-25792i, -1i)), Struct_2(true, Struct_1(vec4<u32>(0u, 0u, 307u, 0u), 2147483647i, 4294967295u), Struct_1(vec4<u32>(1u, 24095u, 38627u, 0u), 8812i, 51785u), Struct_1(vec4<u32>(1u, 30978u, 21637u, 4294967295u), -22311i, 80036u), vec2<i32>(1i, -1i)), Struct_2(false, Struct_1(vec4<u32>(126430u, 0u, 0u, 26266u), 1i, 74751u), Struct_1(vec4<u32>(0u, 1u, 0u, 1u), 0i, 14958u), Struct_1(vec4<u32>(48934u, 28579u, 1u, 112229u), 26717i, 4294967295u), vec2<i32>(-29609i, i32(-2147483648))));

var<private> global2: vec4<u32>;

var<private> global3: Struct_4 = Struct_4(vec2<f32>(1314f, 407f), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 18158u, 0u, 1u), 4270i, 59711u), Struct_1(vec4<u32>(0u, 0u, 50817u, 0u), -30054i, 35474u), Struct_1(vec4<u32>(1u, 29065u, 40929u, 0u), 1i, 5006u), vec2<i32>(0i, i32(-2147483648))), vec3<f32>(473f, 1183f, 460f), vec3<i32>(75113i, 31956i, 10317i), vec2<u32>(58637u, 13847u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    global2 = arg_0.a;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, 1000f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(733f * global0.x), _wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a.x, global3.c.x)))))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(1924f, 1000f)), _wgslsmith_f_op_f32(trunc(global0.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f - -844f)) * _wgslsmith_f_op_f32(exp2(var_0.x)));
    let var_2 = Struct_3(vec4<u32>(78304u, global2.x, u_input.e.x, ~u_input.e.x), !vec3<bool>(!all(vec2<bool>(global3.b.a, global3.b.a)), false, global3.b.a), Struct_2(global3.b.a, Struct_1(arg_1.a, min(25857i, select(u_input.a.x, 4300i, true)), arg_3.x), arg_1, Struct_1(~vec4<u32>(arg_3.x, 80145u, arg_1.a.x, arg_3.x), arg_1.b, _wgslsmith_dot_vec4_u32(~arg_0.a, _wgslsmith_mod_vec4_u32(arg_0.a, global3.b.c.a))), max(reverseBits(~u_input.a.zz), global3.d.xy)));
    global2 = ~var_2.a;
    return min(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_3, _wgslsmith_div_vec3_u32(vec3<u32>(20252u, var_2.c.d.a.x, arg_0.a.x), vec3<u32>(arg_0.a.x, 1u, var_2.c.c.a.x))), select(_wgslsmith_div_vec3_u32(vec3<u32>(4253u, var_2.a.x, 4380u), vec3<u32>(arg_1.a.x, global2.x, 58431u)), vec3<u32>(var_2.c.d.a.x, arg_0.c, 0u) >> (vec3<u32>(var_2.a.x, 10735u, 114376u) % vec3<u32>(32u)), select(vec3<bool>(global3.b.a, var_2.c.a, true), var_2.b, var_2.b))), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 0u, 27129u), u_input.e), u_input.e.x)) ^ arg_0.c;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - 220f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(min(749f, global3.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1338f)))), global0.x);
    let var_0 = u_input.a & vec4<i32>(7999i, min(-u_input.a.x ^ (u_input.b & u_input.a.x), firstTrailingBit(-u_input.d)), -(-6016i << (_wgslsmith_div_u32(u_input.e.x, global2.x) % 32u)), 1i);
    var var_1 = _wgslsmith_mod_i32(-max(u_input.c.x, -global3.d.x), (-1i << (func_3(global3.b.d, global3.b.b, _wgslsmith_f_op_f32(global0.x + global0.x), vec3<u32>(global3.e.x, 4294967295u, 4294967295u)) % 32u)) | -((-38279i & var_0.x) | 8344i));
    var_1 = global3.d.x;
    var var_2 = vec4<bool>(false, arg_0 || all(vec3<bool>(true, any(vec3<bool>(arg_0, false, true)), false)), all(!select(!vec2<bool>(global3.b.a, true), select(vec2<bool>(global3.b.a, true), vec2<bool>(arg_0, global3.b.a), true), select(global3.b.a, true, true))), !(1u == abs(_wgslsmith_add_u32(global3.b.b.a.x, 84978u))));
    return Struct_3(vec4<u32>(6308u, u_input.e.x, ~min(44186u, global3.e.x), _wgslsmith_dot_vec3_u32(~u_input.e, vec3<u32>(16617u, _wgslsmith_sub_u32(0u, global3.e.x), global3.e.x))), vec3<bool>(all(select(vec4<bool>(global3.b.a, false, false, true), vec4<bool>(false, false, var_2.x, true), false)) || arg_0, true, true), Struct_2(false, global3.b.c, global3.b.d, Struct_1(~_wgslsmith_mod_vec4_u32(global3.b.c.a, vec4<u32>(global2.x, global2.x, global2.x, global2.x)), firstLeadingBit(1i), select(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 1u, 69383u, global3.b.d.a.x), vec4<u32>(global2.x, 19117u, u_input.e.x, global3.b.c.a.x)), 52082u, any(vec4<bool>(var_2.x, true, var_2.x, global3.b.a)))), abs(vec2<i32>(global3.d.x, ~(-11171i)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> Struct_3 {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, global2.x, 24855u), vec3<u32>(55343u, 4294967295u, var_0.x)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global3.b.d.a.wzw, global2.yzw), global2.zyy, vec3<u32>(20834u, 0u, var_0.x)), _wgslsmith_mod_vec3_u32(global2.yyz, func_2(var_0.x >= 20792u).a.xzz)), func_2(arg_2.x).c.d.a.zyy);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.x, global3.a.x, true))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.a.x))))), -1008f), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global3.c.x))))), -205f, global0.x, global3.c.x));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xy - var_2.ww), _wgslsmith_f_op_vec2_f32(vec2<f32>(260f, 131f) * global3.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f)))), Struct_2(true, func_2(arg_0.b.x).c.b, func_2(false).c.b, func_2(!any(vec2<bool>(arg_2.x, global3.b.a))).c.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-9576i, arg_1), global3.b.e, firstLeadingBit(countOneBits(vec2<i32>(u_input.a.x, arg_1))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1928f, global3.c.x, global3.a.x) * var_2.yxx) - vec3<f32>(global0.x, 235f, -182f)))))), reverseBits(-vec3<i32>(arg_1, global3.b.d.b, 8539i) << (u_input.e % vec3<u32>(32u))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(global3.b.b.a.yw, u_input.e.zx), abs(~vec2<u32>(40455u, 0u))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_3.a.x) - _wgslsmith_f_op_vec2_f32(-var_3.a))))), Struct_2(false, Struct_1(_wgslsmith_clamp_vec4_u32(firstTrailingBit(var_3.b.c.a), var_0, abs(vec4<u32>(var_1.x, 0u, 24840u, global3.e.x))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.d, 1i, var_3.d.x)), u_input.a.zzx), countOneBits(32504u)), arg_0.c.c, var_3.b.d, -(~global3.d.xx ^ max(vec2<i32>(-5057i, arg_0.c.d.b), vec2<i32>(22469i, 1i)))), var_2.xzx, _wgslsmith_sub_vec3_i32(min(select(countOneBits(u_input.a.zyw), firstTrailingBit(var_3.d), false), global3.d), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, var_3.d.x, arg_1)), _wgslsmith_div_vec3_i32(vec3<i32>(var_3.b.c.b, -1i, 4750i), vec3<i32>(u_input.d, var_3.b.e.x, arg_0.c.d.b)) | vec3<i32>(arg_0.c.e.x, 75835i, -2147483647i))), u_input.e.xz);
    return func_2(false);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1477f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.c.x, -1033f))))));
    let var_1 = arg_2.b.x;
    return Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1298f)), _wgslsmith_div_f32(-1000f, global0.x)), _wgslsmith_f_op_f32(-global3.a.x))), Struct_2(false, Struct_1(arg_2.c.c.a, ~firstLeadingBit(30659i), ~abs(0u)), Struct_1(_wgslsmith_mod_vec4_u32(global3.b.b.a, arg_2.c.c.a) << (vec4<u32>(1u, arg_1, arg_0, arg_0) % vec4<u32>(32u)), func_2(true).c.e.x, func_2(!var_1).c.d.a.x), arg_2.c.b, arg_2.c.e), _wgslsmith_f_op_vec3_f32(select(global3.c, vec3<f32>(_wgslsmith_f_op_f32(global3.a.x + -1622f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 815f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * 1731f)))), (_wgslsmith_mult_i32(1i, 1i) > (global3.b.e.x & arg_2.c.c.b)) & false)), global3.d, u_input.e.xy);
}

fn func_1() -> Struct_1 {
    global3 = func_5(~(~0u), abs(global3.b.b.c), func_4(func_2(true), _wgslsmith_mod_i32(-global3.d.x, -29071i), !select(!vec3<bool>(false, false, global3.b.a), vec3<bool>(global3.b.a, global3.b.a, global3.b.a), select(vec3<bool>(true, false, true), vec3<bool>(global3.b.a, true, true), global3.b.a)), global3.b.a));
    let var_0 = vec3<bool>(true, false, true);
    var var_1 = vec2<bool>(1u <= _wgslsmith_mod_u32(11900u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global3.b.b.a, vec4<u32>(global2.x, u_input.e.x, 1u, global2.x)), global3.b.c.a)), true);
    var var_2 = func_5(~(~(~(u_input.e.x & 77898u))), u_input.e.x, Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, global2.x), global3.e >> (vec2<u32>(u_input.e.x, global2.x) % vec2<u32>(32u))), 0u, global2.x, ~_wgslsmith_clamp_u32(10826u, 4294967295u, 23532u)), func_2(true).b, global1[_wgslsmith_index_u32(global2.x, 19u)])).b.d.a;
    return func_4(Struct_3(global3.b.c.a, vec3<bool>(false, !all(vec4<bool>(false, true, true, var_1.x)), false), Struct_2(true, Struct_1(vec4<u32>(var_2.x, 33535u, u_input.e.x, 45910u), -19080i, _wgslsmith_div_u32(66864u, 28545u)), global3.b.d, Struct_1(vec4<u32>(29197u, var_2.x, global2.x, global2.x) >> (global3.b.c.a % vec4<u32>(32u)), global3.d.x, ~global3.e.x), u_input.c)), ~(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, global3.d.x, -7841i), vec3<i32>(global3.b.c.b, global3.d.x, u_input.d)), u_input.a.zzy)), vec3<bool>(all(!(!var_0.zy)), var_0.x, u_input.d <= -3298i), any(var_0)).c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zyy;
    let var_1 = func_1();
    let var_2 = Struct_3(countOneBits(~(firstLeadingBit(var_1.a) & func_2(true).a)), select(!(!(!vec3<bool>(global3.b.a, global3.b.a, global3.b.a))), !vec3<bool>(var_0.x <= u_input.a.x, func_4(Struct_3(vec4<u32>(global3.b.d.a.x, 113432u, global2.x, 58211u), vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(u_input.e.x, 19u)]), 1i, vec3<bool>(global3.b.a, global3.b.a, global3.b.a), false).b.x, true), select(vec3<bool>(global3.b.a, all(vec2<bool>(false, global3.b.a)), select(false, true, global3.b.a)), func_2(all(vec4<bool>(false, false, true, global3.b.a))).b, vec3<bool>(func_2(false).c.a, global0.x >= global0.x, true))), global1[_wgslsmith_index_u32(reverseBits(30075u), 19u)]);
    let var_3 = select(select(vec4<bool>(!all(vec2<bool>(var_2.b.x, true)), true, any(var_2.b), !(!global3.b.a)), vec4<bool>(true || all(vec4<bool>(false, false, false, true)), true, var_2.b.x, false), false), vec4<bool>(any(vec2<bool>(func_5(33585u, var_2.c.b.c, var_2).b.a, any(var_2.b))), any(select(!vec4<bool>(global3.b.a, false, var_2.c.a, false), vec4<bool>(false, true, global3.b.a, false), !global3.b.a)), var_2.b.x, true), true);
    var var_4 = -2238f;
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_0.x | var_5.b)), 381f, ~_wgslsmith_clamp_vec4_u32(func_1().a, select(var_2.c.d.a, ~vec4<u32>(8008u, 4294967295u, var_2.c.c.a.x, u_input.e.x), vec4<bool>(false, var_2.c.a, false, true)), (global3.b.c.a | global3.b.c.a) >> (~var_5.a % vec4<u32>(32u))), 902f, 14063i);
}

