struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(25533u), Struct_5(26626u), Struct_5(30421u), Struct_5(38546u), Struct_5(21487u), Struct_5(4294967295u), Struct_5(1u), Struct_5(1u), Struct_5(7979u), Struct_5(0u), Struct_5(0u), Struct_5(0u), Struct_5(43962u), Struct_5(40859u), Struct_5(82125u), Struct_5(61159u), Struct_5(6707u), Struct_5(78061u));

var<private> global1: Struct_5 = Struct_5(0u);

var<private> global2: array<vec3<bool>, 20>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global2 = array<vec3<bool>, 20>();
    global1 = global0[_wgslsmith_index_u32(global1.a, 18u)];
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(sign(302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_0) + _wgslsmith_div_f32(arg_0, arg_0)) + -1188f)));
    global0 = array<Struct_5, 18>();
    let var_1 = vec2<bool>(true, all(select(vec4<bool>(-2147483647i == u_input.a.x, global1.a != 4294967295u, true, true), vec4<bool>(true, true, true, true), false)));
    return global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.a, 0u, u_input.c)), max(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(global1.a, 34527u, 19373u))), global1.a)), 20u)];
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_5, 18>();
    let var_0 = !(!func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<Struct_5, 18>();
    var var_1 = vec2<f32>(1f, 1f);
    let var_2 = min(u_input.a, firstTrailingBit(vec2<i32>(abs(u_input.a.x), countOneBits(0i))));
    return Struct_2(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1342f))), _wgslsmith_sub_u32(~arg_1, countOneBits(~_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(30520u, 1u)))), !func_3(-330f).x, Struct_1(countOneBits(1u), var_1.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(-var_1.x), -124f)))), Struct_1(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, _wgslsmith_f_op_f32(-1000f - var_1.x), var_1.x))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_5 {
    global0 = array<Struct_5, 18>();
    var var_0 = u_input.d;
    var var_1 = Struct_1(reverseBits(77016u), arg_0.a.d.b, _wgslsmith_f_op_vec3_f32(-arg_0.a.d.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(func_2(vec4<u32>(_wgslsmith_sub_u32(max(global1.a, 0u), global1.a), _wgslsmith_mult_u32(var_1.a >> (u_input.c % 32u), ~4294967295u), ~abs(var_1.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 32013u), vec2<u32>(var_1.a, u_input.c))), ~(arg_0.a.d.a << (arg_0.a.b % 32u)), firstTrailingBit(select(vec2<u32>(1u, 1u), vec2<u32>(global1.a, arg_0.a.d.a) >> (vec2<u32>(24125u, u_input.c) % vec2<u32>(32u)), all(vec3<bool>(true, arg_1, false)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a, 1u), select(vec2<u32>(20204u, u_input.b), vec2<u32>(global1.a, var_1.a), true)) << (~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(67948u, 50575u)) % vec2<u32>(32u))).d.c));
    var var_3 = _wgslsmith_f_op_f32(-arg_0.b.x);
    return Struct_5(58175u);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec3<f32>) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.b, ~11031u), abs(~(~vec2<u32>(u_input.b, 6125u)))), 2083u, ~1u);
    global2 = array<vec3<bool>, 20>();
    global1 = func_4(Struct_3(func_2(~(~vec4<u32>(var_0.x, 12661u, u_input.b, 0u)), ~_wgslsmith_mult_u32(u_input.b, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.a.b, 52863u), abs(var_0.xy)), ~var_0.zx), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(569f + arg_1.x)), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.zy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1472f, arg_3.x) * arg_1), select(vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false), vec2<bool>(arg_0, true))))), true);
    var var_1 = firstTrailingBit(select(_wgslsmith_div_vec4_u32(~(~vec4<u32>(23156u, 1u, arg_2.a.e.a, 1u)), vec4<u32>(4452u, 40368u, 45498u, abs(4294967295u))), vec4<u32>(firstLeadingBit(47140u), var_0.x, arg_2.a.e.a >> (global1.a % 32u), ~25576u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.b, 27650u, u_input.c, 4294967295u) ^ vec4<u32>(39816u, 1u, 0u, arg_2.a.b), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, 49712u, 4294967295u, var_0.x), vec4<u32>(global1.a, 0u, 57138u, 16914u))) % vec4<u32>(32u)), true != arg_0));
    let var_2 = _wgslsmith_f_op_f32(-arg_2.b.x);
    return ~_wgslsmith_add_i32(abs(u_input.a.x), _wgslsmith_mod_i32(u_input.d.x, u_input.a.x)) > (-u_input.a.x & (i32(-1i) * -47713i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(7992u, 18u)];
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -495f);
    var var_1 = all(!vec2<bool>(!func_1(true, vec2<f32>(-341f, var_0), Struct_3(Struct_2(-292f, 61711u, false, Struct_1(u_input.b, var_0, vec3<f32>(var_0, 1118f, -1010f)), Struct_1(4294967295u, var_0, vec3<f32>(var_0, 1547f, 1264f))), vec2<f32>(355f, var_0), false, vec2<f32>(-1000f, 678f)), vec3<f32>(100f, 375f, var_0)), !func_2(vec4<u32>(4294967295u, global1.a, 0u, global1.a), u_input.b, vec2<u32>(76113u, 0u), vec2<u32>(4294967295u, u_input.b)).c));
    let var_2 = func_4(Struct_3(Struct_2(-1005f, abs(~u_input.c), all(vec2<bool>(false, false)), Struct_1(~u_input.c, -608f, vec3<f32>(-1494f, -941f, 566f)), Struct_1(u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1476f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))), _wgslsmith_div_vec2_f32(vec2<f32>(-599f, _wgslsmith_f_op_f32(-811f * 1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -339f) - vec2<f32>(-208f, var_0)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1212f, 2319f), vec2<f32>(1475f, var_0))))), true, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_0), -2287f)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-var_0))))).x);
    var var_3 = vec2<bool>(var_0 <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 - var_0), var_0)), -1322f, true && func_3(-542f).x)), all(!vec2<bool>(true, u_input.d.x <= 2147483647i)));
    let var_4 = any(select(vec2<bool>(true, true), vec2<bool>(var_3.x, (var_3.x && var_3.x) || var_3.x), func_3(_wgslsmith_f_op_f32(-var_0)).yy));
    let var_5 = vec4<i32>(-1i) * -min(vec4<i32>(u_input.a.x, ~(-18753i), select(12765i, u_input.d.x, var_4), -43204i), _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 31814i, u_input.a.x, u_input.d.x), vec4<i32>(-2147483647i, 0i, u_input.a.x, 37141i)));
    var var_6 = Struct_5(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, ~firstTrailingBit(reverseBits(~vec4<u32>(28733u, var_6.a, var_2.a, 0u))));
}

