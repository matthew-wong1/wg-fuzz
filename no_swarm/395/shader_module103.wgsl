struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, true, true));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(2147483647i, Struct_1(vec4<bool>(true, false, false, true)), 4294967295u, Struct_1(vec4<bool>(false, true, true, true)), -732f), Struct_2(13495i, Struct_1(vec4<bool>(true, true, false, true)), 1u, Struct_1(vec4<bool>(false, false, false, true)), -505f), Struct_2(1i, Struct_1(vec4<bool>(true, false, true, false)), 22666u, Struct_1(vec4<bool>(true, true, false, true)), -318f), Struct_2(-46558i, Struct_1(vec4<bool>(false, false, true, true)), 55975u, Struct_1(vec4<bool>(true, true, true, true)), 774f), Struct_2(0i, Struct_1(vec4<bool>(false, false, true, false)), 1u, Struct_1(vec4<bool>(true, false, true, false)), 1255f));

var<private> global3: array<i32, 20> = array<i32, 20>(0i, -56317i, 36212i, 0i, -4356i, -30432i, -15736i, 2147483647i, 4725i, -20877i, -26147i, 41154i, -1i, 2147483647i, -21813i, -13567i, i32(-2147483648), 15635i, 0i, 1i);

var<private> global4: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(1u, 1u), vec2<u32>(32430u, 0u), vec2<u32>(26749u, 0u), vec2<u32>(41533u, 4294967295u), vec2<u32>(110074u, 33686u), vec2<u32>(20766u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 245u), vec2<u32>(1u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 53327u), vec2<u32>(35001u, 31381u), vec2<u32>(4294967295u, 55957u), vec2<u32>(28425u, 1u), vec2<u32>(4294967295u, 87607u), vec2<u32>(53586u, 1u), vec2<u32>(43070u, 0u), vec2<u32>(1u, 1u), vec2<u32>(30430u, 15098u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(85364u, 13826u), vec2<u32>(42319u, 84161u), vec2<u32>(1u, 4294967295u), vec2<u32>(20867u, 1u), vec2<u32>(1u, 1u), vec2<u32>(9909u, 1u), vec2<u32>(1u, 14445u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 16364u), vec2<u32>(4294967295u, 1u), vec2<u32>(36641u, 0u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global1.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-2541f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(479f, -1000f, arg_0.a.x))))));
    global4 = array<vec2<u32>, 32>();
    var var_2 = true;
    let var_3 = arg_0;
    return abs(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.a, 53950u), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a), abs(vec4<u32>(u_input.b, 0u, 1u, u_input.b)))) | ~0u);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(150f, arg_2.e)), arg_2.e, _wgslsmith_f_op_f32(-253f - arg_2.e), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2.e)), -492f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(471f, arg_2.e, -264f, 1164f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e, 1065f, arg_2.e, arg_2.e) + vec4<f32>(-1191f, -602f, 1081f, arg_2.e))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e, -335f, _wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e - arg_2.e))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1316f, arg_2.e, arg_2.e, 173f), vec4<f32>(arg_2.e, arg_2.e, arg_2.e, arg_2.e))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e, arg_2.e, -614f, -403f))))))));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(~(-75160i >> (arg_2.c % 32u)), 1i, max(global0.x, 2147483647i) & arg_0.x) >> (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(13933u, arg_2.c, 0u), ~vec3<u32>(71360u, 20456u, arg_2.c), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(arg_2.c, arg_3.x, 30380u)))) % vec3<u32>(32u)), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, arg_2.a), vec3<i32>(63256i, arg_2.a, 63124i)), -49038i, _wgslsmith_mult_i32(global0.x, -1i)) & ~u_input.d.xzw);
    global3 = array<i32, 20>();
    global3 = array<i32, 20>();
    var var_2 = arg_2.d.a.x & any(select(select(vec2<bool>(true, true), !vec2<bool>(arg_2.d.a.x, false), !arg_1.a.x), !(!vec2<bool>(global1.a.x, false)), !(!vec2<bool>(true, global1.a.x))));
    return select(vec4<bool>(all(vec2<bool>(true, global1.a.x)), global1.a.x, any(!select(global1.a.wx, vec2<bool>(true, false), false)), all(arg_1.a)), vec4<bool>(true, all(!(!vec4<bool>(true, false, arg_2.d.a.x, false))), !all(select(vec3<bool>(arg_2.d.a.x, arg_1.a.x, global1.a.x), global1.a.xxz, false)), true | arg_2.d.a.x), any(!arg_1.a.xzz));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    global4 = array<vec2<u32>, 32>();
    global4 = array<vec2<u32>, 32>();
    var var_0 = 478f;
    global0 = u_input.d;
    var var_1 = ~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 12191u, 50074u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 31435u)), vec4<u32>(u_input.a, _wgslsmith_mult_u32(reverseBits(4294967295u), 53452u ^ u_input.a), 1u, 1u));
    return Struct_1(select(func_4(global0.zz, Struct_1(vec4<bool>(false, global1.a.x, false, false)), global2[_wgslsmith_index_u32(func_3(Struct_1(global1.a)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(6807u, 1u, 14531u), var_1.zxz) % 32u), 5u)], _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.b), ~vec2<u32>(var_1.x, u_input.b))), global1.a, !select(global1.a, vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), all(global1.a))));
}

fn func_1() -> i32 {
    let var_0 = select(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(u_input.b, 32u)], vec2<u32>(u_input.b, 4294967295u)), 32u)] ^ abs(vec2<u32>(4294967295u, 0u))), countOneBits(~(global4[_wgslsmith_index_u32(16867u, 32u)] & vec2<u32>(u_input.a, 1u)))), 20u)], global1.a.x);
    let var_1 = false;
    global1 = func_2(var_0, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -624f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2866f + -120f)))))));
    let var_2 = Struct_4(458f);
    let var_3 = _wgslsmith_add_u32(4294967295u, 0u) | ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(98395u, u_input.a), global4[_wgslsmith_index_u32(~u_input.a, 32u)]), 19797u);
    return abs(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<u32>, 32>();
    var var_0 = ~u_input.b;
    let var_1 = global1.a.x;
    let var_2 = -2527i;
    var var_3 = _wgslsmith_sub_i32(func_1(), -(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(countOneBits(u_input.b), 32u)], global4[_wgslsmith_index_u32(u_input.b, 32u)]), 20u)]));
    let var_4 = Struct_2(~abs(_wgslsmith_mult_i32(var_2, u_input.c.x)) ^ -15141i, func_2(~_wgslsmith_dot_vec3_i32(max(u_input.d.wwz, global0.zyy), _wgslsmith_add_vec3_i32(global0.xwz, vec3<i32>(global0.x, global3[_wgslsmith_index_u32(4294967295u, 20u)], global0.x))), Struct_4(_wgslsmith_f_op_f32(abs(860f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1415f - -1157f), _wgslsmith_f_op_f32(f32(-1f) * -216f)))), u_input.b, Struct_1(!(!func_2(2147483647i, Struct_4(1767f), -204f).a)), 179f);
    var var_5 = 1i;
    let var_6 = func_2(var_2, Struct_4(var_4.e), _wgslsmith_f_op_f32(f32(-1f) * -157f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-841f, 1333f, -661f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-535f, -254f, -1000f))))));
}

