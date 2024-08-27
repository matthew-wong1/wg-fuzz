struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global2: array<Struct_2, 27>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<i32, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global2 = array<Struct_2, 27>();
    let var_0 = Struct_3(21357u, any(vec2<bool>(select(true, all(vec3<bool>(true, false, true)), true), !all(vec3<bool>(false, false, false)))), global2[_wgslsmith_index_u32(~min(~(~1u), 1u), 27u)], !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false), true), true && any(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-103f)), global0.a.x)));
    global4 = array<i32, 14>();
    let var_1 = select(var_0.d.zyy, var_0.d.xyy, !(!var_0.b));
    var var_2 = var_0.c.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    global1 = array<vec2<bool>, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-148f, -1000f, global0.a.x, global0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -117f) * vec4<f32>(global0.a.x, 370f, 979f, -1105f))) - _wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1074f)), global0.a.x, -1882f, _wgslsmith_f_op_f32(-311f - global0.a.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(global0.a))))))));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), var_0.x, true)), -610f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-766f - -160f))), _wgslsmith_f_op_f32(var_0.x - global0.a.x)), vec2<i32>(-4039i, ~46371i));
    global1 = array<vec2<bool>, 23>();
    global3 = _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.a.xy) & -42952i;
    return Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) * -1275f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -188f))))), ~u_input.b, arg_0, select(vec4<bool>(arg_1, arg_1, all(select(global1[_wgslsmith_index_u32(1u, 23u)], vec2<bool>(false, false), global1[_wgslsmith_index_u32(2505u, 23u)])), true), vec4<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_1, arg_1), arg_1)), true, any(global1[_wgslsmith_index_u32(arg_0.d | 1u, 23u)])), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_1, arg_1, arg_1), select(vec4<bool>(true, arg_1, false, false), vec4<bool>(true, false, arg_1, false), false), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_1))), arg_1)), Struct_2(4294967295u, max(arg_0.b, min(arg_0.b << (arg_0.b % vec2<u32>(32u)), arg_0.c.yx)), vec3<u32>(_wgslsmith_div_u32(41803u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 14697u, arg_0.d, 73611u), vec4<u32>(arg_0.c.x, 0u, arg_0.a, arg_0.c.x))), 12430u, _wgslsmith_dot_vec2_u32(arg_0.c.xz, arg_0.c.xz) | 1u), firstTrailingBit(103119u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_4 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * vec4<f32>(_wgslsmith_div_f32(-1125f, arg_0.a), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), 645f, _wgslsmith_f_op_f32(-arg_0.a)))), arg_1.wy);
    global3 = global0.b.x;
    return arg_0;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~9920u;
    global2 = array<Struct_2, 27>();
    let var_1 = arg_1.d.x;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(arg_1.a, 1471f, global0.a.x, global0.a.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1885f, -784f, arg_1.a, -209f) * vec4<f32>(global0.a.x, -397f, global0.a.x, -980f)) * global0.a)) - vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(min(func_4(arg_1, arg_1.b).a, _wgslsmith_f_op_f32(arg_1.a + -1424f))), _wgslsmith_f_op_f32(floor(arg_1.a)), _wgslsmith_f_op_f32(608f * 306f))), vec2<i32>(-40453i, select(firstTrailingBit(global0.b.x), ~u_input.a.x, arg_0.x)) ^ (~vec2<i32>(global4[_wgslsmith_index_u32(arg_3.a, 14u)], u_input.b.x) >> (vec2<u32>(_wgslsmith_clamp_u32(arg_3.c.x, var_0, var_0), arg_1.c.c.x) % vec2<u32>(32u))));
    var var_2 = arg_3;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.a.x, -809f, -1412f) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, -1063f, 1397f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1292f, global0.a.x, global0.a.x, global0.a.x))))), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.b.x, 13243i), vec3<i32>(1i, u_input.b.x, 1i)), countOneBits(-18846i))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(arg_2.a, arg_2.b);
    let var_0 = global2[_wgslsmith_index_u32((~_wgslsmith_mult_u32(arg_1.c.c.x & arg_1.c.d, arg_1.c.c.x) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(41124u, arg_1.a), arg_1.a), firstTrailingBit(4294967295u)) % 32u)) & 4294967295u, 27u)];
    var var_1 = _wgslsmith_clamp_vec2_u32(~(~(~arg_1.c.b)), abs(arg_1.c.b), ~var_0.b);
    global3 = firstTrailingBit(~arg_2.b.x);
    return func_5(arg_1.d.yz, func_4(func_2(Struct_2(~25078u, ~vec2<u32>(var_1.x, arg_1.a), abs(arg_1.c.c), abs(26663u)), arg_1.b), u_input.b), false, arg_1.c);
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = !vec3<bool>(false, false, all(func_4(Struct_4(1549f, vec4<i32>(arg_0.b.x, -2147483647i, 0i, -14916i), Struct_2(15534u, vec2<u32>(4294967295u, 36196u), vec3<u32>(13469u, 20983u, 92213u), 11038u), vec4<bool>(false, arg_1, false, arg_1), Struct_2(1u, vec2<u32>(0u, 0u), vec3<u32>(1u, 36776u, 18574u), 54243u)), -u_input.b).d));
    var_0 = !(!vec3<bool>(all(vec2<bool>(var_0.x, true)), arg_1, var_0.x));
    let var_1 = -(~(-firstLeadingBit(firstTrailingBit(u_input.b))));
    global1 = array<vec2<bool>, 23>();
    global3 = -(~arg_0.b.x);
    return global2[_wgslsmith_index_u32(~(~63825u), 27u)];
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + -299f));
    return _wgslsmith_add_vec3_u32(select(arg_1.c, vec3<u32>(19211u, countOneBits(_wgslsmith_mod_u32(arg_1.d, 8491u)), arg_1.b.x), any(vec3<bool>(arg_0, true, false)) & ((arg_1.b.x >> (0u % 32u)) >= 15578u)), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(7681u, 18157u);
    let var_1 = var_0.x;
    global1 = array<vec2<bool>, 23>();
    let var_2 = true;
    global2 = array<Struct_2, 27>();
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -209f))), u_input.b, Struct_2(var_0.x, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x))), func_7(false, func_6(func_1(-638f, Struct_3(1u, false, Struct_2(var_0.x, vec2<u32>(var_0.x, 62783u), vec3<u32>(4294967295u, 36701u, var_0.x), 24543u), vec4<bool>(var_2, var_2, false, true), global0.a.x), Struct_1(vec4<f32>(-484f, 385f, global0.a.x, -1912f), global0.b), false), true), Struct_1(global0.a, vec2<i32>(0i, 78823i))), reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(74647u, 69920u), firstLeadingBit(vec2<u32>(55939u, var_0.x))))), !func_2(func_2(func_6(Struct_1(vec4<f32>(2052f, global0.a.x, -746f, global0.a.x), u_input.b.zw), var_2), var_2 && var_2).e, true).d, Struct_2(var_0.x, vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(120777u, var_0.x, var_0.x)) & (var_0.x | 1u)), vec3<u32>(abs(23410u), 53530u, var_0.x), ~(~abs(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2094f), -684f, vec4<i32>(24870i, u_input.a.x, firstLeadingBit(max(var_3.b.x, _wgslsmith_sub_i32(0i, global4[_wgslsmith_index_u32(0u, 14u)]))), func_5(!func_2(Struct_2(4294967295u, var_3.e.c.zz, var_3.c.c, 1u), var_3.d.x).d.wz, func_4(Struct_4(-1636f, vec4<i32>(37995i, global0.b.x, 51807i, -2147483647i), Struct_2(15357u, var_3.e.c.xx, vec3<u32>(var_3.c.a, 0u, 4294967295u), var_0.x), vec4<bool>(var_2, var_3.d.x, var_2, var_2), Struct_2(19233u, var_3.c.b, var_3.c.c, 45013u)), -u_input.b), !(global4[_wgslsmith_index_u32(1u, 14u)] >= var_3.b.x), func_6(func_5(global1[_wgslsmith_index_u32(4294967295u, 23u)], Struct_4(var_3.a, vec4<i32>(global0.b.x, -12456i, -38066i, 1i), Struct_2(var_3.e.b.x, vec2<u32>(var_0.x, 29699u), var_3.c.c, 0u), var_3.d, global2[_wgslsmith_index_u32(var_3.c.d, 27u)]), var_3.d.x, var_3.e), false)).b.x), vec4<i32>(select(global4[_wgslsmith_index_u32(var_0.x, 14u)], func_4(Struct_4(global0.a.x, u_input.b, global2[_wgslsmith_index_u32(var_3.e.c.x, 27u)], vec4<bool>(true, var_3.d.x, var_2, false), Struct_2(1u, vec2<u32>(32397u, 0u), var_3.e.c, 32023u)), vec4<i32>(var_3.b.x, 47113i, global4[_wgslsmith_index_u32(14423u, 14u)], 19073i)).b.x, !var_2) << ((~0u >> (select(30313u, var_3.c.c.x, var_2) % 32u)) % 32u), min(_wgslsmith_mod_i32(2147483647i, var_3.b.x), func_1(-813f, Struct_3(var_0.x, false, Struct_2(var_3.c.a, vec2<u32>(4294967295u, var_0.x), vec3<u32>(47698u, 1u, 65047u), var_3.c.d), var_3.d, var_3.a), Struct_1(vec4<f32>(2297f, var_3.a, -1879f, var_3.a), var_3.b.yz), var_2).b.x) & global4[_wgslsmith_index_u32(4294967295u, 14u)], 63380i, -(-12122i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(29906u, 2293u, var_3.e.a, 1u), vec4<u32>(var_3.c.d, 1u, 11605u, 7320u)) % 32u))));
}

