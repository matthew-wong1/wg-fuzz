struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false));

var<private> global2: array<u32, 12> = array<u32, 12>(0u, 4294967295u, 4294967295u, 107283u, 1u, 648u, 24665u, 0u, 117137u, 65325u, 0u, 46821u);

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-1000f, Struct_1(-59949i), true, Struct_1(1i), false), Struct_2(681f, Struct_1(2147483647i), true, Struct_1(-18984i), false), Struct_2(-674f, Struct_1(1i), true, Struct_1(2147483647i), true), Struct_2(-1000f, Struct_1(18428i), true, Struct_1(-1i), true), Struct_2(711f, Struct_1(-1i), true, Struct_1(0i), false), Struct_2(-154f, Struct_1(1i), true, Struct_1(i32(-2147483648)), false), Struct_2(-505f, Struct_1(52207i), true, Struct_1(2147483647i), true), Struct_2(-272f, Struct_1(1i), false, Struct_1(-1i), true), Struct_2(1822f, Struct_1(-56896i), true, Struct_1(16640i), true), Struct_2(386f, Struct_1(14747i), true, Struct_1(2147483647i), false), Struct_2(662f, Struct_1(0i), false, Struct_1(-435i), false), Struct_2(620f, Struct_1(-1i), false, Struct_1(107329i), true), Struct_2(579f, Struct_1(2147483647i), true, Struct_1(0i), true), Struct_2(1707f, Struct_1(18726i), true, Struct_1(-6180i), true), Struct_2(-846f, Struct_1(-45357i), true, Struct_1(-1i), true), Struct_2(-795f, Struct_1(-16545i), false, Struct_1(0i), true), Struct_2(-989f, Struct_1(35738i), false, Struct_1(-24429i), false), Struct_2(-277f, Struct_1(2147483647i), false, Struct_1(1i), true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> bool {
    var var_0 = 32338u;
    global3 = select(select(vec2<bool>(!any(vec3<bool>(true, false, arg_2)), !(131f >= arg_1)), !select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, global3.x), true), vec2<bool>(true, true), select(vec2<bool>(arg_2, true), vec2<bool>(global3.x, global3.x), vec2<bool>(arg_2, global3.x))), !arg_2), vec2<bool>(true, arg_2 != arg_2), vec2<bool>(true, true));
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> vec2<f32> {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(2485i, _wgslsmith_mult_i32((u_input.c.x | 12849i) ^ ~1i, -2147483647i)), ~(-(~_wgslsmith_div_i32(u_input.c.x, 2147483647i))), -17765i);
    global0 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(605f, 1442f, -1147f, 1102f) * vec4<f32>(-159f, -408f, 691f, -1422f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1578f, -1471f, 1000f, -461f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-638f, -653f, -387f, 1000f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - -752f)), -2072f, 1443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f * _wgslsmith_f_op_f32(684f - -763f))))));
    let var_2 = func_3(73629u, _wgslsmith_f_op_f32(exp2(var_1.x)), true, Struct_3(vec2<u32>(4294967295u, _wgslsmith_sub_u32(arg_2, 0u))));
    let var_3 = _wgslsmith_f_op_f32(max(var_1.x, 1404f));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(635f)), var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(488f + 1180f)) + _wgslsmith_f_op_vec2_f32(sign(var_1.yz))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>) -> f32 {
    global0 = array<Struct_2, 23>();
    global1 = array<vec4<bool>, 15>();
    let var_0 = max(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(u_input.a.x, ~0u)), global2[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)]), ~0u) % 32u), 12u)]), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(11709u, global2[_wgslsmith_index_u32(u_input.a.x, 12u)])), ~160448u & abs(global2[_wgslsmith_index_u32(4294967295u, 12u)])) | ~(~(4294967295u ^ global2[_wgslsmith_index_u32(u_input.a.x, 12u)])));
    let var_1 = vec3<i32>(~_wgslsmith_add_i32(-11716i, -firstTrailingBit(-59792i)), 2147483647i, (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.b.x, arg_1.x, arg_1.x) << (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(1637u, 12u)], var_0) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, -6071i), vec4<i32>(arg_1.x, 0i, 2147483647i, 4717i))) << (6593u % 32u)) << (abs(0u) % 32u));
    let var_2 = Struct_2(arg_0.x, Struct_1(-2147483647i), !(!(global3.x | all(vec4<bool>(global3.x, global3.x, false, true)))), Struct_1(arg_1.x << (1u % 32u)), false);
    return arg_0.x;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-867f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, 929f))))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec2<u32>(3997u, u_input.a.x)), Struct_3(vec2<u32>(36383u, 4294967295u)), u_input.a.x)), -vec3<i32>(45922i, u_input.b.x, u_input.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(497f, 547f)))) * 691f);
    let var_1 = Struct_1(max(-34086i, ~(-47313i)) >> (~global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(1u, 12u)]), 12u)] % 32u));
    let var_2 = false;
    global1 = array<vec4<bool>, 15>();
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    return _wgslsmith_f_op_f32(exp2(var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_1(select(false, true, true) | true)), Struct_1(29885i), false, Struct_1(-2147483647i), true);
    global3 = vec2<bool>(all(vec2<bool>(func_3(4294967295u | u_input.a.x, _wgslsmith_f_op_f32(-var_0.a), global3.x, Struct_3(u_input.a)), any(select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45528u, 12u)], 15u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 15u)], vec4<bool>(var_0.c, var_0.c, global3.x, var_0.c))))), var_0.e);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * var_0.a)));
    var var_2 = ~1u;
    global0 = array<Struct_2, 23>();
    var var_3 = firstLeadingBit(-4020i);
    var var_4 = Struct_4(~_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(20533u, 82064u, 160u, 49092u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 14038u), vec4<u32>(u_input.a.x, 7415u, 0u, 0u)))), firstLeadingBit(global2[_wgslsmith_index_u32(~countOneBits(40044u), 12u)]), !vec4<bool>(any(vec3<bool>(global3.x, global3.x, global3.x)) & (true | var_0.e), true, _wgslsmith_f_op_f32(abs(var_0.a)) >= _wgslsmith_f_op_f32(var_0.a + -435f), func_3(1u, -640f, var_1 < var_0.a, Struct_3(u_input.a))));
    let var_5 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-496f, var_0.a, var_0.a))))));
    global3 = !vec2<bool>(!(!(!global3.x)), (~(-13907i) != (var_0.d.a & 2147483647i)) | all(select(var_4.c.wyw, var_4.c.xzy, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-444f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(472f, -1154f) * vec2<f32>(var_5.a.x, 798f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, 1932f))), var_4.c.x || !global3.x))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(-var_0.b.a, 32941i, -u_input.b.x), _wgslsmith_mult_vec3_i32(-vec3<i32>(-29199i, 1i, -11829i), firstTrailingBit(vec3<i32>(-8519i, 1i, var_0.b.a)))), vec3<i32>(_wgslsmith_sub_i32(~7660i, _wgslsmith_sub_i32(var_0.d.a, var_0.d.a)), 1i, var_0.d.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, 1211f, var_1, var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_5.a.x, -273f, -312f))))));
}

