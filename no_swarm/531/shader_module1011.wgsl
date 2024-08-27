struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 7836i;

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(35328u, 7540u, 68863u, 70981u), vec4<u32>(1u, 16971u, 40316u, 0u), vec4<u32>(48462u, 4294967295u, 38859u, 55424u), vec4<u32>(11175u, 52438u, 28277u, 50020u), vec4<u32>(4294967295u, 1u, 11592u, 1u), vec4<u32>(67998u, 4294967295u, 1u, 27154u), vec4<u32>(1u, 47741u, 53203u, 23097u), vec4<u32>(8715u, 4294967295u, 10006u, 4294967295u), vec4<u32>(51928u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 22934u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 59278u, 23538u), vec4<u32>(1924u, 56050u, 1u, 1u), vec4<u32>(8576u, 4294967295u, 11336u, 64796u), vec4<u32>(51879u, 4294967295u, 0u, 0u), vec4<u32>(0u, 16450u, 50777u, 0u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(0u, 0u, 68287u, 0u), vec4<u32>(0u, 0u, 16249u, 1456u), vec4<u32>(4294967295u, 34798u, 1u, 14313u), vec4<u32>(1u, 8052u, 24460u, 49372u), vec4<u32>(63321u, 0u, 105227u, 0u), vec4<u32>(1u, 65323u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 37685u), vec4<u32>(35859u, 1455u, 1u, 0u), vec4<u32>(1u, 0u, 48863u, 52482u), vec4<u32>(10233u, 20659u, 25492u, 37043u), vec4<u32>(1u, 64826u, 673u, 17872u), vec4<u32>(5177u, 8670u, 4294967295u, 2000u), vec4<u32>(0u, 1u, 1u, 5616u), vec4<u32>(0u, 1u, 37238u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(vec2<bool>(true, all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), true))), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, true))));
    global1 = array<vec4<u32>, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-622f, 159f, 526f, 541f)) + vec4<f32>(209f, -1154f, -227f, -1454f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1127f, 299f, -1326f, -513f)))), !(!vec4<bool>(true, var_0.b.x, var_0.b.x, false))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-431f, var_1.x, var_1.x, _wgslsmith_f_op_f32(abs(var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1616f, var_1.x, -805f, -730f) + var_1))))) + var_1);
    var var_3 = u_input.b.yz;
    return vec3<bool>(any(!select(!vec4<bool>(true, var_0.a.x, var_0.b.x, var_0.a.x), !vec4<bool>(var_0.b.x, false, true, true), select(vec4<bool>(true, false, var_0.a.x, var_0.b.x), vec4<bool>(true, false, var_0.a.x, var_0.a.x), true))), all(select(select(!var_0.b, var_0.a, true), select(var_0.b, var_0.a, select(var_0.b, var_0.b, true)), var_0.b)), all(select(vec3<bool>(any(vec2<bool>(var_0.b.x, true)), false, false), !(!vec3<bool>(false, var_0.a.x, false)), vec3<bool>(var_2.x != var_2.x, true, any(vec2<bool>(var_0.b.x, false))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>) -> f32 {
    global0 = countOneBits(~(-1i));
    var var_0 = -1i;
    global0 = -21468i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.yxx)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, arg_0.c.x, 1198f) + arg_0.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, 379f, arg_0.b.x) + _wgslsmith_f_op_vec3_f32(arg_0.c - vec3<f32>(arg_0.b.x, 530f, -1000f))), _wgslsmith_f_op_vec3_f32(select(arg_0.b.xyw, arg_0.c, func_3())))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1000f, 1250f)), vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_0.c.x)), true))));
    var_0 = 0i;
    return 1000f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -firstTrailingBit(-741i), -1i), ~(-1i), ~(_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(1i, 27326i, -2147483647i)), vec3<i32>(-1i, -21180i, -1i) << (vec3<u32>(1u, arg_0.x, u_input.b.x) % vec3<u32>(32u))) | 1i));
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_1(arg_1.zx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1914f, _wgslsmith_f_op_f32(max(-1181f, 776f)), _wgslsmith_f_op_f32(floor(-113f)))), all(func_3())), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 1532f))), _wgslsmith_div_vec2_f32(vec2<f32>(1715f, 594f), vec2<f32>(-1166f, -944f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(max(-1700f, 1246f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1413f, -200f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1802f, -555f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, 762f))))), u_input.b));
    global1 = array<vec4<u32>, 30>();
    global0 = ~(-var_0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1386f)), var_1)), var_1, var_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -547f, var_1) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1413f, var_1, var_1), vec3<f32>(-191f, -1100f, 1065f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, 150f, var_1), vec3<f32>(-538f, -1497f, -903f))) - vec3<f32>(var_1, 101f, var_1)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -265f, var_1))))), !any(vec4<bool>(true, arg_1.x, false, false))));
    return Struct_1(!vec2<bool>(false, arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 388f, -750f, var_2.x), vec4<f32>(var_2.x, -203f, var_1, 356f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1478f, _wgslsmith_f_op_f32(max(945f, var_1)), _wgslsmith_f_op_f32(-var_1)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1342f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(933f, 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x))))), arg_1.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = array<vec4<u32>, 30>();
    return abs((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, 42392u), firstLeadingBit(vec3<u32>(arg_0, u_input.b.x, 0u))) | 1u) & arg_0);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_4) -> u32 {
    let var_0 = abs(global1[_wgslsmith_index_u32(1u, 30u)]);
    global0 = abs(2147483647i);
    let var_1 = true;
    let var_2 = arg_3;
    let var_3 = vec2<u32>(~1855u, _wgslsmith_sub_u32(_wgslsmith_add_u32(func_5(1u, func_2(u_input.b.wxy, vec3<bool>(arg_3.c, true, true)), arg_0.x), 1u), _wgslsmith_mod_u32(~80928u, 3845u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 17592u, 36154u, 11777u), var_0), global1[_wgslsmith_index_u32(~46103u, 30u)])));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 30>();
    var var_0 = Struct_4(u_input.c, vec3<u32>(_wgslsmith_clamp_u32(~func_1(vec3<f32>(-274f, 463f, -606f), false, 4294967295u, Struct_4(u_input.b.x, u_input.b.yzw, true)), _wgslsmith_mod_u32(15968u, _wgslsmith_sub_u32(59013u, u_input.b.x)), u_input.a), u_input.c, ~_wgslsmith_sub_u32(20873u, _wgslsmith_mod_u32(u_input.c, u_input.b.x))), func_1(vec3<f32>(_wgslsmith_f_op_f32(sign(584f)), -775f, _wgslsmith_f_op_f32(trunc(-1604f))), true, max(~u_input.b.x, ~u_input.c), Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 1u), u_input.b.xww), u_input.b.zwy, true)) > 0u);
    let var_1 = Struct_4(_wgslsmith_dot_vec3_u32(abs(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, 0u), var_0.b, var_0.b))), ~(~(~vec3<u32>(var_0.b.x, var_0.b.x, 56703u)))), vec3<u32>(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-252f, 738f, 1048f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-407f, -965f, -1088f))), any(vec2<bool>(var_0.c, true)) & var_0.c, ~countOneBits(0u), Struct_4(abs(var_0.a), vec3<u32>(var_0.a, 4294967295u, 53579u) ^ vec3<u32>(u_input.c, 52596u, 0u), any(vec3<bool>(true, true, var_0.c)))), (var_0.a & ~var_0.b.x) >> (var_0.b.x % 32u), 74172u), !(15856u > ~(12650u >> (u_input.a % 32u))));
    let var_2 = Struct_2(func_2(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, 0u, var_1.b.x), vec3<u32>(var_1.a, 1u, var_1.a), vec3<u32>(var_1.a, var_1.a, u_input.a)) >> (~var_1.b % vec3<u32>(32u)), u_input.b.xyw), !(!vec3<bool>(true, var_1.c, false))), _wgslsmith_div_i32(7771i, _wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(2147483647i, 0i, 1i)), -5844i)), ~var_0.b, _wgslsmith_mult_vec3_i32(vec3<i32>(select(~(-77658i), _wgslsmith_div_i32(-1i, -9504i), true), select(min(-10064i, -12534i), select(0i, 0i, var_0.c), true), -1i), ~vec3<i32>(1i, 1i, firstTrailingBit(-2160i))));
    let var_3 = Struct_4(var_0.a, vec3<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32((u_input.c ^ 1u) ^ ~u_input.c, 30u)], u_input.b), var_0.b.x, u_input.c), !(min(var_0.a, 12038u) > ~(~0u)));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

