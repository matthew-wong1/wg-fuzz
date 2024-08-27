struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false));

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(0u, Struct_1(true, false, 461f, -50272i), Struct_1(false, true, 950f, -12405i)), Struct_2(0u, Struct_1(false, true, 325f, -6941i), Struct_1(false, true, -1000f, -19494i)), Struct_2(0u, Struct_1(true, true, -2792f, 1i), Struct_1(false, false, 1074f, 49930i)), Struct_2(4294967295u, Struct_1(false, true, 647f, 1i), Struct_1(true, false, 961f, i32(-2147483648))), Struct_2(19375u, Struct_1(false, true, 1341f, i32(-2147483648)), Struct_1(false, false, -821f, -1i)), Struct_2(0u, Struct_1(true, true, 577f, 2780i), Struct_1(true, true, 1428f, -15018i)), Struct_2(99267u, Struct_1(true, false, 936f, i32(-2147483648)), Struct_1(true, false, -1309f, 37697i)), Struct_2(5378u, Struct_1(true, true, -1034f, -20816i), Struct_1(false, true, 2034f, 0i)), Struct_2(1u, Struct_1(true, true, -1000f, -19499i), Struct_1(true, true, -697f, 21216i)), Struct_2(25009u, Struct_1(false, false, -996f, 26005i), Struct_1(true, false, -563f, 33052i)), Struct_2(4294967295u, Struct_1(false, true, -160f, 2147483647i), Struct_1(true, false, 853f, i32(-2147483648))), Struct_2(45203u, Struct_1(false, false, -744f, i32(-2147483648)), Struct_1(false, false, 1000f, 0i)), Struct_2(4294967295u, Struct_1(false, true, -1675f, -1i), Struct_1(true, false, -1000f, i32(-2147483648))), Struct_2(1u, Struct_1(true, true, -1495f, -1i), Struct_1(false, false, -921f, -26371i)), Struct_2(12657u, Struct_1(true, false, -1013f, -1967i), Struct_1(false, true, 1000f, -25552i)), Struct_2(6701u, Struct_1(false, true, -1782f, 2147483647i), Struct_1(false, true, -1314f, -33925i)), Struct_2(4294967295u, Struct_1(true, false, -386f, -47870i), Struct_1(true, false, 548f, i32(-2147483648))), Struct_2(84191u, Struct_1(true, true, -1832f, -19073i), Struct_1(true, false, 615f, -1i)), Struct_2(2071u, Struct_1(false, false, 1000f, 12544i), Struct_1(false, false, 265f, 1i)), Struct_2(1u, Struct_1(false, false, 1613f, 1i), Struct_1(false, false, 718f, -1i)), Struct_2(11599u, Struct_1(true, false, -1549f, 10041i), Struct_1(false, true, -509f, 0i)), Struct_2(89843u, Struct_1(true, false, 130f, 2147483647i), Struct_1(false, true, 1543f, 2147483647i)), Struct_2(4294967295u, Struct_1(true, false, 886f, -49505i), Struct_1(false, false, 1000f, 2147483647i)), Struct_2(334u, Struct_1(false, true, -525f, 10227i), Struct_1(true, true, 954f, 5018i)), Struct_2(0u, Struct_1(false, true, -429f, -22073i), Struct_1(false, false, -855f, 15166i)), Struct_2(1u, Struct_1(false, false, -106f, 38485i), Struct_1(false, false, -1286f, -1i)), Struct_2(4294967295u, Struct_1(true, false, 1000f, i32(-2147483648)), Struct_1(false, true, -1000f, 1i)), Struct_2(1u, Struct_1(false, true, 773f, 2147483647i), Struct_1(true, true, 712f, 2147483647i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> vec4<f32> {
    let var_0 = ~_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 73271u)), vec4<u32>(56568u, arg_3, u_input.b, 1u)), vec4<u32>(firstLeadingBit(u_input.a.x), 65301u, 0u, ~34997u));
    global0 = array<vec4<bool>, 32>();
    global1 = array<Struct_2, 28>();
    var var_1 = select(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0), true), !(!vec2<bool>(false, arg_0)), select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false), vec2<bool>(true, true), !vec2<bool>(arg_0, true))), vec2<bool>(arg_0, true), vec2<bool>(any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), false)), arg_0 & arg_0)), !(!vec2<bool>(select(false, arg_0, false), arg_0)), true);
    let var_2 = !vec4<bool>(true, var_1.x, !all(select(global0[_wgslsmith_index_u32(arg_3, 32u)], vec4<bool>(true, var_1.x, arg_0, false), arg_0)), true);
    return vec4<f32>(_wgslsmith_f_op_f32(min(-1086f, _wgslsmith_f_op_f32(select(639f, -290f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2135f * -1113f))))), -1840f, -1582f);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = u_input.a;
    let var_1 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-2356f, _wgslsmith_f_op_f32(-arg_1.c.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1510f)), _wgslsmith_f_op_f32(exp2(arg_2.b.c))), _wgslsmith_f_op_f32(-arg_2.c.c), arg_2.b.c) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-776f, -383f, arg_1.c.c, arg_1.c.c), vec4<f32>(arg_2.b.c, arg_2.b.c, -844f, arg_1.c.c), arg_1.c.b)) * _wgslsmith_f_op_vec4_f32(func_3(true, vec4<i32>(arg_2.c.d, 0i, arg_2.c.d, arg_2.c.d), 1i, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -536f, 547f, arg_1.c.c) * vec4<f32>(-480f, 1000f, 268f, 445f))))));
    let var_3 = min(~abs(arg_2.a), _wgslsmith_mod_u32(reverseBits(min(arg_1.a, 4294967295u)), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(arg_1.a, arg_2.a, var_0.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, arg_2.a, 1u), u_input.b))));
    global1 = array<Struct_2, 28>();
    return any(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 1u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a, var_0.x, 8745u), vec3<u32>(4294967295u, arg_1.a, 5802u), vec3<u32>(116390u, 59107u, var_3)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(1u, 0u, arg_2.a)), min(vec3<u32>(var_0.x, 0u, 24159u), vec3<u32>(arg_2.a, u_input.a.x, 12274u)))), 32u)]);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_3 {
    let var_0 = arg_0;
    global1 = array<Struct_2, 28>();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    global1 = array<Struct_2, 28>();
    global0 = array<vec4<bool>, 32>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c, var_1.b.c, arg_0.c, arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_1.c.c, -2745f, var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -857f, 312f, -1184f) + vec4<f32>(1369f, 174f, 1152f, -1751f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(427f, -1786f, 153f, var_1.b.c) - vec4<f32>(-1000f, 845f, -2048f, var_1.b.c))))))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_4(Struct_1(any(vec2<bool>(true, true)), any(select(global0[_wgslsmith_index_u32(1u, 32u)], select(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(6444u, 32u)], false), func_2(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_2(1u, Struct_1(false, false, arg_0, 1i), Struct_1(true, false, -140f, 11088i))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(880f, -1000f)), min(~min(-1i, 31038i), ~firstLeadingBit(-13872i))), abs(~_wgslsmith_div_u32(~1u, max(18655u, u_input.b))), arg_0);
    var var_1 = _wgslsmith_f_op_f32(abs(-474f));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, arg_0, 657f), var_0.a.zzw)) + var_0.a.zyw))), _wgslsmith_f_op_vec4_f32(func_3(all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), vec4<i32>(1i, 1i, 1i, 1i) ^ vec4<i32>(2147483647i, _wgslsmith_add_i32(-1710i, 37085i), 2147483647i << (u_input.a.x % 32u), _wgslsmith_add_i32(0i, -20711i)), -abs(firstTrailingBit(-20906i)), ~countOneBits(countOneBits(761u)))).yzx);
    global0 = array<vec4<bool>, 32>();
    global1 = array<Struct_2, 28>();
    return _wgslsmith_mult_u32(~select(~(~u_input.a.x), min(~u_input.a.x, ~u_input.a.x), true), 26246u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 28>();
    global1 = array<Struct_2, 28>();
    var var_0 = global1[_wgslsmith_index_u32((4294967295u ^ ~(~0u | firstLeadingBit(u_input.a.x))) ^ 1u, 28u)];
    global0 = array<vec4<bool>, 32>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1494f, var_0.c.c, -1565f, -603f) + vec4<f32>(var_0.b.c, var_0.b.c, -1000f, var_0.c.c))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.b, ~4294967295u, ~1u, 80911u), vec3<u32>(func_1(_wgslsmith_f_op_f32(-var_0.b.c)), ~func_1(_wgslsmith_f_op_f32(-var_0.b.c)), _wgslsmith_mult_u32(abs(15193u), u_input.b)));
}

