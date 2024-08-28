struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(false), Struct_1(true)), Struct_3(Struct_1(false), Struct_1(true)), Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(false), Struct_1(true)), Struct_3(Struct_1(false), Struct_1(true)), Struct_3(Struct_1(true), Struct_1(true)), Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(false), Struct_1(true)), Struct_3(Struct_1(true), Struct_1(true)), Struct_3(Struct_1(true), Struct_1(true)), Struct_3(Struct_1(false), Struct_1(true)), Struct_3(Struct_1(false), Struct_1(false)), Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(false), Struct_1(false)), Struct_3(Struct_1(true), Struct_1(false)), Struct_3(Struct_1(true), Struct_1(true)));

var<private> global3: f32 = -1000f;

var<private> global4: array<bool, 1>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> bool {
    let var_0 = min(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(51289u, 1u, 0u, 8609u), vec4<u32>(0u, 4294967295u, 33697u, 1u), vec4<bool>(true, global1.x, true, true)), ~vec4<u32>(27674u, 0u, 1u, 23607u))), countOneBits(vec2<u32>(~46280u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 1u, 21570u, 4294967295u), vec4<u32>(0u, 24009u, 0u, 1u)), vec4<u32>(1u, 49108u, 1u, 57796u)))));
    global3 = _wgslsmith_f_op_f32(exp2(arg_0.a));
    let var_1 = firstLeadingBit(~(~var_0.x | countOneBits(14874u)) ^ 4294967295u);
    var var_2 = vec3<i32>(arg_0.c.b, -31276i, -64950i) >> (min(vec3<u32>(reverseBits(~var_1), ~max(1u, var_1), var_1), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<u32>(var_0.x, var_1 ^ 1u, firstTrailingBit(1u)))) % vec3<u32>(32u));
    var_2 = u_input.a.wxz ^ vec3<i32>(_wgslsmith_dot_vec4_i32(~min(vec4<i32>(56513i, 0i, 0i, 1i), vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(26702u, 17u)], arg_0.c.b, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, arg_0.c.b, -1i, 48773i), ~vec4<i32>(-75815i, global0[_wgslsmith_index_u32(1u, 17u)], 2147483647i, 22270i))), -_wgslsmith_div_i32(-29726i, -42490i), 0i);
    return 2825u != var_1;
}

fn func_2() -> u32 {
    global2 = array<Struct_3, 20>();
    let var_0 = Struct_2(Struct_1(false && !func_3(Struct_4(285f, false, Struct_2(Struct_1(false), -1i, Struct_1(global1.x)), 1000f, Struct_1(true)), vec3<f32>(-1460f, -1293f, 590f))), _wgslsmith_clamp_i32(-54598i, 11913i, countOneBits(1i)), Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(countOneBits(3753u)), 32763u), 1u)]));
    let var_1 = u_input.a;
    var var_2 = Struct_2(Struct_1(true), max(u_input.c, abs(_wgslsmith_mod_i32(8255i, u_input.b) >> (~34544u % 32u))), Struct_1(!global1.x));
    var var_3 = global2[_wgslsmith_index_u32(~countOneBits(1u), 20u)];
    return ~max(firstTrailingBit(8364u) ^ abs(7496u), abs(~min(4294967295u, 45075u)));
}

fn func_1() -> Struct_4 {
    var var_0 = (func_2() | ~4918u) <= (1u | ((func_2() << (89183u % 32u)) ^ 4294967295u));
    global0 = array<i32, 17>();
    global1 = vec3<bool>(false, true, !(!(select(0i, u_input.b, true) <= -13636i)));
    global4 = array<bool, 1>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-180f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1566f + -537f) + _wgslsmith_f_op_f32(369f + 1207f)))), global4[_wgslsmith_index_u32(66577u, 1u)] | true)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(662f, 515f)));
    return Struct_4(-636f, true, Struct_2(Struct_1(!global4[_wgslsmith_index_u32(~4294967295u, 1u)]), ~1i, Struct_1(global1.x)), 1443f, Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 1u, 15793u))), 1u)]));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    let var_0 = arg_1.zy;
    global4 = array<bool, 1>();
    let var_1 = func_1();
    global3 = 870f;
    let var_2 = global2[_wgslsmith_index_u32(71686u, 20u)];
    return ~reverseBits(~0u);
}

fn func_5(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-855f * -1000f), _wgslsmith_f_op_f32(-1472f - -1000f), _wgslsmith_f_op_f32(round(-1407f)), _wgslsmith_f_op_f32(1000f + 1014f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1620f, 877f, 718f, -1602f), vec4<f32>(-645f, 1667f, 1232f, -103f))))))));
    var var_1 = _wgslsmith_mod_vec4_u32(~abs(~abs(vec4<u32>(arg_0.x, 7242u, 1u, arg_0.x))), ~firstTrailingBit(vec4<u32>(arg_0.x, max(3538u, arg_0.x), countOneBits(1u), 38559u)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(705f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), var_0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1().a, 1434f, var_0.x, 590f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1647f, -1034f, var_0.x, var_0.x) * vec4<f32>(723f, 1807f, var_0.x, var_0.x))))));
    var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.x, 2852u), 1u, arg_0.x, 15249u), vec4<u32>(var_1.x, var_1.x, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_1.x, var_1.x, 0u), vec4<u32>(20014u, 38307u, 69424u, 29288u))), func_2()));
    var var_2 = func_1().c;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<u32>(~countOneBits(~1u), func_4(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-154f, -262f, 745f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(336f))))));
    global0 = array<i32, 17>();
    let var_1 = _wgslsmith_div_u32(1u, (~(38516u >> (0u % 32u)) & _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(71558u, 1u)), vec2<u32>(50154u, 4294967295u))) ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(select(0u, 1u, global1.x), ~0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1712u, 97668u, 35100u), min(vec3<u32>(0u, 47931u, 12797u), vec3<u32>(30004u, 68504u, 4294967295u))), 9467u));
    let var_2 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_1, var_1) ^ var_1, 4294967295u, abs(select(var_1, var_1, global4[_wgslsmith_index_u32(4294967295u, 1u)]))), ~((vec3<u32>(var_1, 4294967295u, 35376u) >> (vec3<u32>(0u, var_1, var_1) % vec3<u32>(32u))) | ~vec3<u32>(var_1, 38259u, 1u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - vec2<f32>(226f, var_0.a)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(385f, var_0.d))))))));
    let var_4 = var_0.c.b;
    let var_5 = _wgslsmith_mod_i32(~(-_wgslsmith_clamp_i32(1i, -1i, var_0.c.b)), _wgslsmith_clamp_i32(2697i, ~1i, -11473i));
    var var_6 = !(!vec4<bool>(!var_0.c.c.a, false, all(!vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 1u)], false, true)), !(!global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec2<i32>(global0[_wgslsmith_index_u32(reverseBits(~func_2()), 17u)], 1i), firstTrailingBit(-_wgslsmith_div_i32(min(-16926i, 0i), max(var_0.c.b, 31745i))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1, ~(var_2.x << (var_1 % 32u))), firstTrailingBit(~vec2<u32>(var_1, 12725u))));
}

