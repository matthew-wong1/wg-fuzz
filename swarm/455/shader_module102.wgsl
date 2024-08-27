struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 65089u, 55077u, 1u);

var<private> global1: array<u32, 11>;

var<private> global2: array<Struct_4, 24>;

var<private> global3: vec4<f32> = vec4<f32>(-315f, 505f, -1468f, -944f);

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(65957u, 11587u, 25189u), 365f), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(52447u, 36881u, 41319u), -711f), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(1u, 57836u, 19600u), -1205f), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(0u, 2004u, 1u), 2290f), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(30459u, 0u, 1u), -112f), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(1u, 9354u, 45866u), 1330f), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(40126u, 0u, 34521u), -1209f), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(20216u, 1u, 31391u), -1000f), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(20708u, 0u, 1u), -988f), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(10889u, 0u, 4810u), -713f), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(122630u, 0u, 4294967295u), 2601f), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(36091u, 101412u, 1u), -1108f), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 4294967295u, 1u), 340f), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(0u, 4294967295u, 15152u), -1000f), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(119984u, 14009u, 4294967295u), -375f), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(44134u, 14700u, 0u), -1332f), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 23200u, 40491u), -139f), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(4454u, 1u, 18718u), -802f), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(0u, 90271u, 82944u), 1767f), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(53166u, 4294967295u, 4294967295u), 455f), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 42565u, 95604u), 610f), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(67415u, 1u, 1u), 530f), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(17919u, 29669u, 8356u), 948f), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(52625u, 1u, 0u), 1785f), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(1u, 0u, 88158u), -1332f), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(0u, 18349u, 46495u), 1000f), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(1u, 33091u, 74956u), 1910f), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(10679u, 1u, 1u), -857f), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(1223u, 4294967295u, 1u), 234f), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 4294967295u, 2282u), -1513f), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 7549u, 4294967295u), -621f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: bool) -> bool {
    global1 = array<u32, 11>();
    global4 = array<Struct_1, 31>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 307f, global3.x, global3.x) * vec4<f32>(-1361f, 1185f, 557f, 1246f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -2254f, arg_1.x) * vec4<f32>(global3.x, -452f, 609f, 1046f))))))) * vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, global3.x, true)), -1417f, _wgslsmith_f_op_f32(floor(1161f)), _wgslsmith_f_op_f32(f32(-1f) * -1579f)));
    let var_0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, -6418i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, i32(-1i) * -1i), ~(~arg_0.zy)));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-577f)))))), _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, -532f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(689f)), _wgslsmith_f_op_f32(round(arg_1.x)))))), -652f);
    return arg_2 || (~abs(abs(global0.x)) > _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~global0.yxw, vec3<u32>(49424u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 11u)]) >> (global0.wwz % vec3<u32>(32u))), reverseBits(global0.x << (4294967295u % 32u)), u_input.a));
}

fn func_2() -> vec4<u32> {
    global4 = array<Struct_1, 31>();
    let var_0 = ~(~(~firstLeadingBit(~vec3<u32>(8664u, u_input.a, global0.x))));
    var var_1 = vec4<i32>(-firstTrailingBit(-38684i) & _wgslsmith_sub_i32(0i, 1i), i32(-1i) * -26552i, 1i, select(-30198i, -reverseBits(-59816i), true)) ^ -select(vec4<i32>(~0i, -19690i, i32(-1i) * -18378i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 32513i), vec3<i32>(2147483647i, -2147483647i, 2147483647i))), countOneBits(vec4<i32>(-1i, 0i, -37077i, 2147483647i)), true);
    let var_2 = vec3<bool>(global3.x >= _wgslsmith_f_op_f32(-global3.x), false, func_3(~(vec4<i32>(var_1.x, 0i, var_1.x, -1i) << (vec4<u32>(global1[_wgslsmith_index_u32(0u, 11u)], global0.x, global1[_wgslsmith_index_u32(9022u, 11u)], global0.x) % vec4<u32>(32u))), vec3<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(floor(global3.x))), any(vec3<bool>(true, true, true))) | false);
    global0 = (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 22158u, 0u, 88201u), countOneBits(vec4<u32>(var_0.x, 21451u, 4294967295u, global0.x))), abs(vec4<u32>(4294967295u, 1u, 37991u, 24485u))) & vec4<u32>(_wgslsmith_add_u32(u_input.a, ~global1[_wgslsmith_index_u32(4294967295u, 11u)]), select(~global0.x, 0u, all(var_2)), 4294967295u, ~global0.x)) >> (countOneBits(~vec4<u32>(30291u, abs(1u), 1u, 1u)) % vec4<u32>(32u));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, max(global1[_wgslsmith_index_u32(1u, 11u)], 137527u)), vec2<u32>(u_input.a, reverseBits(var_0.x))), ~0u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(1u, var_0.x)), 11u)], u_input.a), 0u), select(vec4<u32>(_wgslsmith_sub_u32(1u, 1u), 1u, _wgslsmith_mod_u32(1u, 56254u | var_0.x), min(firstLeadingBit(1u), var_0.x)), firstTrailingBit(reverseBits(~vec4<u32>(27206u, global1[_wgslsmith_index_u32(36242u, 11u)], global1[_wgslsmith_index_u32(42058u, 11u)], global1[_wgslsmith_index_u32(global0.x, 11u)]))), !vec4<bool>(all(var_2), func_3(vec4<i32>(-6893i, var_1.x, -62026i, var_1.x), vec3<f32>(global3.x, global3.x, -1000f), true), var_2.x, false)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    let var_0 = global0.x | 103148u;
    global0 = func_2() ^ ((_wgslsmith_add_vec4_u32(max(vec4<u32>(var_0, 51224u, global1[_wgslsmith_index_u32(65745u, 11u)], 0u), vec4<u32>(var_0, global0.x, global1[_wgslsmith_index_u32(var_0, 11u)], 1u)), ~vec4<u32>(95405u, global0.x, global1[_wgslsmith_index_u32(0u, 11u)], 52672u)) ^ select(~vec4<u32>(9137u, 1u, 0u, u_input.a), ~vec4<u32>(1u, 34141u, global1[_wgslsmith_index_u32(var_0, 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11852u, 11u)], 11u)]), select(vec4<bool>(true, arg_1.x, false, false), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), true))) & select(max(vec4<u32>(global1[_wgslsmith_index_u32(0u, 11u)], 0u, 16316u, 4294967295u), vec4<u32>(var_0, global1[_wgslsmith_index_u32(u_input.a, 11u)], 4294967295u, u_input.a) ^ vec4<u32>(0u, u_input.a, 4294967295u, 1u)), vec4<u32>(~global1[_wgslsmith_index_u32(16055u, 11u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0, 1u), vec3<u32>(global1[_wgslsmith_index_u32(19635u, 11u)], 0u, 11933u)), ~var_0, countOneBits(global0.x)), arg_1.x));
    var var_1 = Struct_3(global0.zwz, _wgslsmith_f_op_f32(-global3.x), Struct_2(1247f, vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), ~_wgslsmith_clamp_u32(global0.x, var_0, global0.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(48078u, 11u)], u_input.a), func_2().x), firstTrailingBit(13258u)), vec3<i32>(51910i, arg_0.x, min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-19554i, -24209i, 1i, 53625i), arg_0)))));
    let var_2 = arg_0.wx;
    global4 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(trunc(1868f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 31>();
    global4 = array<Struct_1, 31>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(-15817i, -2934i, 5691i, 51332i), vec2<bool>(false, false), -2147483647i)), _wgslsmith_f_op_f32(global3.x * -265f))))), max(vec4<u32>(reverseBits(14702u), u_input.a, global0.x, 73913u) & vec4<u32>(u_input.a << (0u % 32u), 1u, ~0u, _wgslsmith_add_u32(u_input.a, 4294967295u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(88581u, u_input.a, 118040u, global1[_wgslsmith_index_u32(u_input.a, 11u)])), 16595u << (global0.x % 32u), ~12756u, 41248u)), vec3<i32>(-20354i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i), true), vec3<i32>(1i, 1i, 1i)), i32(-1i) * -67235i));
    let var_1 = global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(global0.ww & global0.xx, ~(~var_0.b.xy)), u_input.a), 31u)];
    var var_2 = -var_0.c.x;
    let var_3 = var_1.a.x;
    let var_4 = reverseBits(reverseBits(vec4<u32>(var_0.b.x, 1u, 18313u, ~(~global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~28621u, -1532f);
}

