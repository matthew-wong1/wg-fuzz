struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(430f, -203f), vec2<f32>(349f, -347f), vec2<f32>(-226f, -260f), vec2<f32>(-386f, 1000f), vec2<f32>(1076f, -1000f), vec2<f32>(-158f, 661f), vec2<f32>(515f, 743f), vec2<f32>(-713f, 1059f), vec2<f32>(723f, 656f), vec2<f32>(-1000f, 1000f), vec2<f32>(808f, -1000f), vec2<f32>(1014f, 894f), vec2<f32>(199f, -894f), vec2<f32>(1000f, 463f), vec2<f32>(-128f, 1001f), vec2<f32>(1000f, 1588f), vec2<f32>(792f, 674f), vec2<f32>(1245f, -558f), vec2<f32>(-1131f, 162f), vec2<f32>(-2090f, -517f), vec2<f32>(616f, 289f), vec2<f32>(1208f, 185f), vec2<f32>(-1154f, -1000f), vec2<f32>(-588f, -1000f), vec2<f32>(451f, 156f), vec2<f32>(-642f, 1238f), vec2<f32>(-1000f, -254f), vec2<f32>(341f, -255f), vec2<f32>(463f, 764f));

var<private> global1: array<Struct_1, 28>;

var<private> global2: vec2<f32>;

var<private> global3: vec4<f32> = vec4<f32>(1000f, 138f, -441f, 1460f);

var<private> global4: array<f32, 15> = array<f32, 15>(-192f, 670f, 650f, 1092f, -483f, 1740f, -445f, 549f, 899f, -169f, 1127f, 150f, 1293f, 1479f, -1000f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global1 = array<Struct_1, 28>();
    var var_0 = vec3<u32>(~u_input.a >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~(~vec4<u32>(u_input.a, 1u, 24373u, 3388u))) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(20599u, 0u), ~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 28797u) & vec2<u32>(16236u, 4294967295u))), u_input.a);
    return !(!(!vec2<bool>(true, any(vec3<bool>(false, false, false)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a ^ u_input.a, ~u_input.a, 31784u, 1u), vec4<u32>(60655u, u_input.a, 13877u, _wgslsmith_mult_u32(~5018u, 1u))), 1i);
    let var_1 = select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), true), select(vec2<bool>(true, var_0.c > 16520i), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_3())));
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f));
    var var_4 = -10732i;
    return Struct_1(-836f, ~vec4<u32>(~(~1u), ~_wgslsmith_dot_vec3_u32(var_0.b.yyz, vec3<u32>(1u, var_0.b.x, var_0.b.x)), ~var_0.b.x, select(42586u, var_0.b.x, var_1.x) & 1u), 33799i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = vec4<i32>(firstLeadingBit(9108i), _wgslsmith_dot_vec4_i32(max(min(~vec4<i32>(arg_0.c, arg_3, arg_0.c, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3, -1064i, arg_0.c, 5072i), vec4<i32>(1i, arg_1.c, arg_3, -9808i))), ~(~vec4<i32>(0i, -2147483647i, 1383i, 22938i))), countOneBits(select(vec4<i32>(arg_0.c, 0i, -64487i, 25750i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_0.c, 2147483647i, 16634i), vec4<i32>(arg_1.c, 20622i, -1i, arg_3)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)))), _wgslsmith_clamp_i32(15385i, 1i, -1i), ~(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_3, 60094i), abs(arg_3), _wgslsmith_div_i32(21436i, arg_0.c))));
    global1 = array<Struct_1, 28>();
    var var_1 = !vec3<bool>(false & !all(vec3<bool>(true, false, false)), true, all(vec3<bool>(all(vec4<bool>(true, true, false, false)), -178f != global2.x, false)));
    global1 = array<Struct_1, 28>();
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1261f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1501f)), _wgslsmith_f_op_f32(-global3.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1648f))) + -152f))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> vec4<u32> {
    global0 = array<vec2<f32>, 29>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global4[_wgslsmith_index_u32(u_input.a, 15u)], global2.x, global2.x), vec4<f32>(global3.x, global4[_wgslsmith_index_u32(19446u, 15u)], global4[_wgslsmith_index_u32(29006u, 15u)], -3247f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(48557u, 15u)]), 1159f, _wgslsmith_f_op_f32(round(-1259f))))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_2(), global1[_wgslsmith_index_u32(4294967295u, 28u)], -832f, arg_3)), 324f)), -790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + 803f) - global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), select(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(21324u, 4294967295u, u_input.a, 83681u), vec4<bool>(true, false, arg_0, false))), 15u)]), 718f));
    var var_0 = arg_2.x;
    global1 = array<Struct_1, 28>();
    let var_1 = abs(max(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(49061u, u_input.a)), abs(u_input.a))), vec3<u32>(_wgslsmith_sub_u32(abs(46798u), select(u_input.a, 100636u, false)), _wgslsmith_sub_u32(select(u_input.a, u_input.a, false), ~85304u), 0u)));
    return vec4<u32>(~(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(~abs(u_input.a), _wgslsmith_add_u32(var_1.x, 1u), ~abs(var_1.x)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(7711u, u_input.a, 28631u) | var_1, var_1, ~var_1))), var_1.x, 2921u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global4 = array<f32, 15>();
    global4 = array<f32, 15>();
    global0 = array<vec2<f32>, 29>();
    let var_1 = ~(0i ^ -(firstTrailingBit(-1i) | -27273i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1006f - global3.x), global2.x)))), ~_wgslsmith_mod_vec4_u32(abs(func_1(true, var_1, vec3<i32>(var_1, var_1, -97198i), var_1)), ~(~vec4<u32>(4294967295u, 0u, u_input.a, 1u))), 27431i);
    let var_3 = func_2();
    var var_4 = 29994u;
    let var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(floor(global3.x))) * 717f), var_3.b | (var_3.b ^ (~var_3.b << (abs(vec4<u32>(32719u, u_input.a, u_input.a, var_3.b.x)) % vec4<u32>(32u)))), select(_wgslsmith_div_i32(firstTrailingBit(-1i ^ var_3.c), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 2147483647i, -18769i), vec3<i32>(var_3.c, 0i, 19572i)))), i32(-1i) * -2147483647i, any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.x, vec4<f32>(-922f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -747f))), global2.x, 301f));
}

