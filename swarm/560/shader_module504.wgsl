struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<bool>(true, false), Struct_2(true, vec4<u32>(0u, 53935u, 28117u, 10959u), vec2<f32>(-599f, -216f), Struct_1(vec4<u32>(14822u, 0u, 40737u, 4294967295u)), Struct_1(vec4<u32>(5700u, 29052u, 64367u, 60335u)))), Struct_3(vec2<bool>(true, true), Struct_2(true, vec4<u32>(67331u, 21163u, 35143u, 0u), vec2<f32>(215f, -954f), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 46654u)), Struct_1(vec4<u32>(27109u, 42098u, 33245u, 24321u)))), Struct_3(vec2<bool>(true, false), Struct_2(false, vec4<u32>(108750u, 4294967295u, 39816u, 54096u), vec2<f32>(1795f, -1000f), Struct_1(vec4<u32>(10812u, 1u, 905u, 46665u)), Struct_1(vec4<u32>(23471u, 73280u, 26053u, 67577u)))), Struct_3(vec2<bool>(true, false), Struct_2(true, vec4<u32>(4294967295u, 67969u, 29041u, 71962u), vec2<f32>(1203f, 875f), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 60697u)), Struct_1(vec4<u32>(0u, 48011u, 4294967295u, 0u)))), Struct_3(vec2<bool>(true, true), Struct_2(true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 14873u), vec2<f32>(-361f, 1732f), Struct_1(vec4<u32>(41380u, 48382u, 0u, 19382u)), Struct_1(vec4<u32>(42712u, 1u, 0u, 37182u)))), Struct_3(vec2<bool>(false, false), Struct_2(false, vec4<u32>(11103u, 50216u, 51988u, 38350u), vec2<f32>(1492f, -1099f), Struct_1(vec4<u32>(12579u, 43609u, 18861u, 2271u)), Struct_1(vec4<u32>(46152u, 46805u, 4294967295u, 98463u)))), Struct_3(vec2<bool>(true, false), Struct_2(false, vec4<u32>(18847u, 0u, 0u, 41030u), vec2<f32>(485f, -326f), Struct_1(vec4<u32>(87583u, 1u, 49033u, 22137u)), Struct_1(vec4<u32>(7976u, 4822u, 28477u, 1273u)))), Struct_3(vec2<bool>(false, false), Struct_2(false, vec4<u32>(8485u, 80895u, 47581u, 24801u), vec2<f32>(602f, 2111f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 52552u, 0u)), Struct_1(vec4<u32>(44562u, 65977u, 115586u, 4294967295u)))), Struct_3(vec2<bool>(false, true), Struct_2(false, vec4<u32>(37340u, 0u, 1u, 4294967295u), vec2<f32>(-193f, -1260f), Struct_1(vec4<u32>(4294967295u, 63765u, 70799u, 0u)), Struct_1(vec4<u32>(0u, 84002u, 4294967295u, 1u)))), Struct_3(vec2<bool>(true, true), Struct_2(true, vec4<u32>(6491u, 78317u, 36005u, 4294967295u), vec2<f32>(-1000f, -101f), Struct_1(vec4<u32>(109055u, 4294967295u, 4294967295u, 11019u)), Struct_1(vec4<u32>(4294967295u, 0u, 19050u, 0u)))), Struct_3(vec2<bool>(true, false), Struct_2(false, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec2<f32>(1000f, 169f), Struct_1(vec4<u32>(9620u, 4294967295u, 89309u, 48900u)), Struct_1(vec4<u32>(9150u, 0u, 6687u, 4294967295u)))), Struct_3(vec2<bool>(true, false), Struct_2(true, vec4<u32>(59566u, 56034u, 13997u, 59013u), vec2<f32>(-279f, 1229f), Struct_1(vec4<u32>(4294967295u, 0u, 28074u, 60010u)), Struct_1(vec4<u32>(1u, 1u, 19565u, 28067u)))), Struct_3(vec2<bool>(true, true), Struct_2(true, vec4<u32>(64476u, 4294967295u, 1u, 33403u), vec2<f32>(-772f, 633f), Struct_1(vec4<u32>(66220u, 87713u, 31961u, 28314u)), Struct_1(vec4<u32>(100680u, 35253u, 1u, 4294967295u)))), Struct_3(vec2<bool>(true, true), Struct_2(false, vec4<u32>(4888u, 66202u, 46337u, 33580u), vec2<f32>(-516f, -813f), Struct_1(vec4<u32>(54262u, 46858u, 24885u, 0u)), Struct_1(vec4<u32>(70884u, 45514u, 1u, 38136u)))), Struct_3(vec2<bool>(true, false), Struct_2(false, vec4<u32>(707u, 28341u, 6231u, 0u), vec2<f32>(972f, -335f), Struct_1(vec4<u32>(86231u, 0u, 20010u, 4294967295u)), Struct_1(vec4<u32>(149u, 0u, 4294967295u, 1u)))), Struct_3(vec2<bool>(false, false), Struct_2(true, vec4<u32>(1u, 1u, 48152u, 4294967295u), vec2<f32>(1302f, 142f), Struct_1(vec4<u32>(1u, 26726u, 59145u, 4297u)), Struct_1(vec4<u32>(2330u, 1u, 27445u, 1u)))), Struct_3(vec2<bool>(true, true), Struct_2(true, vec4<u32>(4294967295u, 61904u, 0u, 1105u), vec2<f32>(-410f, -1764f), Struct_1(vec4<u32>(0u, 4294967295u, 43036u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)))), Struct_3(vec2<bool>(true, false), Struct_2(true, vec4<u32>(59198u, 50520u, 4294967295u, 4294967295u), vec2<f32>(998f, -1000f), Struct_1(vec4<u32>(22454u, 0u, 0u, 49352u)), Struct_1(vec4<u32>(0u, 1u, 1u, 2846u)))));

var<private> global2: array<bool, 6> = array<bool, 6>(false, true, false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = arg_1.yx;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(771f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2588f)))))));
    global0 = -292f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(355f, 481f, -185f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, var_1.x, var_1.x))) - var_1)) - var_1)));
    return vec4<bool>(!var_0.x, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(936u, abs(1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 16809u, 0u, u_input.a), vec4<u32>(u_input.a, 1u, 1u, u_input.a)), 49150u)), 6u)], true, global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 6u)]);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> bool {
    var var_0 = Struct_2(false, ~(arg_3 << (_wgslsmith_sub_vec4_u32(~arg_3, vec4<u32>(arg_3.x, u_input.a, arg_0.x, arg_0.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-485f, -1000f), vec2<f32>(-1000f, -247f)))))))), Struct_1(min(vec4<u32>(_wgslsmith_mod_u32(arg_0.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), arg_3.yy), 24956u & u_input.a, 72001u), arg_3)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(28842u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 0u, arg_3.x) >> (arg_3 % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(arg_3, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 8258u, 4294967295u), arg_3)))));
    let var_1 = -15671i;
    var var_2 = 0i;
    global0 = var_0.c.x;
    global2 = array<bool, 6>();
    return false;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 262f)))));
    var_0 = func_3(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~64491u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_add_u32(50030u, 0u))), vec3<u32>(24769u, countOneBits(u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a)) | firstLeadingBit(~vec3<u32>(34057u, 4294967295u, 118193u))), ~(~(-vec3<i32>(22744i, 2147483647i, 2147483647i))) ^ abs(vec3<i32>(~(-1i), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(13960i, 1i, -1i), vec3<i32>(11100i, -27768i, 41594i)))), func_2(reverseBits(vec3<i32>(-2147483647i, select(-47403i, -8211i, global2[_wgslsmith_index_u32(u_input.a, 6u)]), max(0i, -66208i))), vec4<bool>(false, all(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], true, false)), _wgslsmith_mult_u32(5782u, u_input.a) != ~6772u, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], false)))), ~vec4<u32>(u_input.a, 13049u, ~4487u, ~(~0u)));
    var var_2 = 61029i;
    var_0 = any(!vec4<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(18984u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], false)) | global2[_wgslsmith_index_u32(~u_input.a, 6u)], true, true));
    return Struct_2(all(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 6u)], false), !(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 6u)], false, true)), !all(vec3<bool>(global2[_wgslsmith_index_u32(7309u, 6u)], true, true)))), ~reverseBits(reverseBits(vec4<u32>(0u, 70540u, 0u, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.yx * vec2<f32>(-462f, -593f))))))), Struct_1(min(select(select(vec4<u32>(0u, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, 59088u, u_input.a, u_input.a), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], true, global2[_wgslsmith_index_u32(13781u, 6u)], true)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 20191u, u_input.a)), select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(66u, 6u)], true))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 1u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))))), Struct_1(~min(vec4<u32>(u_input.a, u_input.a, 30547u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 6917u)) >> (~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(530f, 1378f, -341f), vec3<f32>(-1141f, -411f, -550f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1022f, -370f, -290f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1580f, -212f, -657f), vec3<f32>(1042f, -1000f, -985f), false)))))));
    let var_1 = Struct_3(vec2<bool>(true, false), Struct_2(true, _wgslsmith_mult_vec4_u32(~(vec4<u32>(19996u, u_input.a, 10616u, u_input.a) & vec4<u32>(u_input.a, var_0.d.a.x, var_0.b.x, 1u)), countOneBits(vec4<u32>(4294967295u, 37824u, var_0.e.a.x, u_input.a)) ^ (var_0.b | var_0.d.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.x, var_0.c.x))))), var_0.e, var_0.d));
    var var_2 = -1i;
    let var_3 = var_1.b.d.a.yx;
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, -1i), vec2<i32>(1i, -7078i));
    global2 = array<bool, 6>();
    let var_5 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_1.b.c.x, var_0.c.x)) + vec3<f32>(616f, var_0.c.x, 2095f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.c.x, var_1.b.c.x, var_0.c.x)))))))).d;
    var_4 = -_wgslsmith_sub_i32(abs(-1i), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, ~(-2147483647i)) >> (0u % 32u));
    var_4 = -18345i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.b.c.x, 1f));
}

