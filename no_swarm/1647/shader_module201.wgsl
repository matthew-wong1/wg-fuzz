struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global3: vec4<u32> = vec4<u32>(23791u, 101350u, 39472u, 52000u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    global3 = _wgslsmith_add_vec4_u32(max(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(5302u, 8045u, u_input.b.x, 0u)), min(select(vec4<u32>(4294967295u, u_input.c, u_input.c, global3.x), vec4<u32>(4294967295u, global3.x, 24897u, 1u), vec4<bool>(global0.a, global0.a, global0.a, true)), max(vec4<u32>(21087u, 4294967295u, 0u, u_input.b.x), vec4<u32>(4294967295u, global3.x, 4294967295u, 50367u)))), vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b, global3.yy), ~_wgslsmith_clamp_u32(1u, 0u, 52123u), _wgslsmith_sub_u32(u_input.b.x, min(global3.x, global3.x)), 5703u)), vec4<u32>(u_input.b.x, ~u_input.c, 105550u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c, 1u, 23265u), vec4<u32>(global3.x, 1u, u_input.b.x, u_input.b.x))) & firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(33706u, 72030u, u_input.b.x, 7348u), select(vec4<u32>(0u, global3.x, 4294967295u, u_input.c), vec4<u32>(global3.x, global3.x, global3.x, global3.x), false))));
    global1 = array<Struct_2, 20>();
    var var_0 = Struct_2(55560u, u_input.b.x, vec2<u32>(~(~global3.x), u_input.c), -1322f);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)), 1501f, _wgslsmith_f_op_f32(step(-210f, _wgslsmith_f_op_f32(-772f + var_0.d))), var_0.d) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(427f, -3054f, -1424f, -1000f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-631f, var_0.d, 535f, var_0.d), vec4<f32>(-265f, -972f, var_0.d, var_0.d)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1052f, var_0.d, 1251f, var_0.d), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1558f, var_0.d, var_0.d, var_0.d))), !vec4<bool>(false, global0.a, true, false))))), vec2<bool>(true, true), global1[_wgslsmith_index_u32(0u, 20u)]);
    global2 = array<vec3<bool>, 20>();
    return any(vec3<bool>(true, false, false));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> bool {
    global2 = array<vec3<bool>, 20>();
    var var_0 = 12984i;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(1327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f))), _wgslsmith_f_op_f32(sign(arg_0.x)));
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~arg_2, global0.b) & ~reverseBits(~vec2<i32>(arg_2.x, 2147483647i)), arg_2);
    let var_2 = u_input.b;
    return ((func_3() || ((8781u == global3.x) || all(vec2<bool>(global0.a, global0.a)))) | global0.a) | all(vec3<bool>(any(vec4<bool>(global0.a, global0.a, global0.a, false)), true, !(!global0.a)));
}

fn func_4(arg_0: Struct_1) -> bool {
    global2 = array<vec3<bool>, 20>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1976f - _wgslsmith_f_op_f32(f32(-1f) * -1442f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-631f, 1007f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))));
    global0 = arg_0;
    let var_1 = var_0.x;
    return false;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1861f))), _wgslsmith_f_op_f32(ceil(-272f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2234f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -488f))))));
    let var_1 = func_4(Struct_1(global0.a, select(_wgslsmith_add_vec2_i32(global0.b, vec2<i32>(-1914i, u_input.a.x)), ~(~u_input.a.yz), func_2(vec4<f32>(-2103f, -226f, 2753f, -2018f), vec4<u32>(u_input.b.x, u_input.c, 106660u, 31199u), global0.b, global3.xxy) || global0.a), 7529i));
    let var_2 = firstTrailingBit(~max(~vec3<u32>(u_input.b.x, 17495u, global3.x) | (global3.zyx >> (vec3<u32>(global3.x, u_input.b.x, 35730u) % vec3<u32>(32u))), ~global3.www & ~global3.zyz));
    global2 = array<vec3<bool>, 20>();
    global2 = array<vec3<bool>, 20>();
    return Struct_1(false, _wgslsmith_sub_vec2_i32(~(-u_input.a.xz), firstLeadingBit(~global0.b)) ^ min(vec2<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), -u_input.a.x), abs(abs(u_input.a.zx))), min(-23155i, 2330i));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-340f, 801f, false)) - _wgslsmith_f_op_f32(abs(1336f))), 1671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(309f * 602f) - _wgslsmith_f_op_f32(f32(-1f) * -1797f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(286f)), _wgslsmith_f_op_f32(f32(-1f) * -1812f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 836f, -294f, 646f) + vec4<f32>(-1037f, -1268f, 1707f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(483f, -1806f, 454f, 401f) + vec4<f32>(807f, 708f, 286f, -472f)))), select(select(!vec4<bool>(false, arg_0.a, global0.a, true), select(vec4<bool>(true, true, global0.a, true), vec4<bool>(false, false, true, false), vec4<bool>(false, global0.a, true, global0.a)), !vec4<bool>(arg_0.a, arg_0.a, true, global0.a)), vec4<bool>(false, func_2(vec4<f32>(-2378f, -2484f, -153f, -1603f), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.c), arg_1, vec3<u32>(global3.x, u_input.b.x, u_input.b.x)), any(vec2<bool>(arg_0.a, true)), true), !vec4<bool>(global0.a, arg_0.a, true, arg_0.a)))), vec2<bool>(global0.a, arg_0.a), Struct_2(u_input.c, 4294967295u, ~(~global3.xx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1600f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
    let var_1 = 4294967295u;
    let var_2 = !(!select(global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.c), 20u)], vec3<bool>(global0.a || var_0.b.x, true, func_3()), true));
    var var_3 = var_0;
    let var_4 = func_1();
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, -16196i), _wgslsmith_mod_vec2_i32(global0.b, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_4.c), vec2<i32>(-1i, -11087i)))) >> ((var_3.c.a | ~(var_1 >> (var_0.c.b % 32u))) % 32u), 9787i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~27538u;
    var var_1 = global0.c;
    let var_2 = ~(countOneBits(vec3<u32>(var_0, u_input.c, 4294967295u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, var_0, var_0), vec3<u32>(24373u, global3.x, var_0), vec3<u32>(global3.x, var_0, 57772u)) % vec3<u32>(32u))) >> (vec3<u32>(reverseBits(0u), countOneBits(~27029u), 51014u) % vec3<u32>(32u)));
    global1 = array<Struct_2, 20>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1619f - -393f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_1(), firstTrailingBit(u_input.a.yz)), var_2.x >> (abs(global3.x) % 32u), _wgslsmith_f_op_f32(max(-731f, 1278f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1300f)), 591f, _wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(trunc(-647f))))) - vec4<f32>(_wgslsmith_f_op_f32(min(var_3, 200f)), 551f, var_3, 2096f)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(max(vec4<u32>(23809u, 70127u, global3.x, 0u), vec4<u32>(var_2.x, 18098u, 33945u, 0u))), min(firstLeadingBit(vec4<u32>(39363u, 0u, 4294967295u, 4294967295u)), ~vec4<u32>(u_input.c, u_input.c, global3.x, 0u))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_2.x, 4294967295u, u_input.b.x) ^ vec4<u32>(var_2.x, 61493u, global3.x, global3.x), vec4<u32>(global3.x, u_input.c, 0u, 1u)), reverseBits(~vec4<u32>(var_0, global3.x, var_2.x, 1u)))));
}

