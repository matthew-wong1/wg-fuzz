struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, false, true), 120f, 1730f);

var<private> global1: f32 = -703f;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, true), 880f, 1246f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, true, true), -1292f, 2184f)), Struct_2(i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, true, true), 856f, -737f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), 2415f, -1202f)), Struct_2(1i, Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), -104f, -1449f), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, true), -109f, 831f)), Struct_2(10810i, Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, true), 1163f, 246f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, false), 919f, 280f)), Struct_2(5606i, Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, false), 430f, -1130f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, true), -1287f, 748f)), Struct_2(-49040i, Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, true, false), 885f, 1420f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, true), -1022f, -679f)), Struct_2(0i, Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false), 117f, 823f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), 1535f, 849f)), Struct_2(26805i, Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 747f, 137f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, false), -582f, -2164f)), Struct_2(0i, Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, false, true), -530f, 1082f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, true), -127f, -1233f)), Struct_2(471i, Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, true), 147f, 1342f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, true), 508f, -1382f)), Struct_2(-1i, Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, false), 437f, -2231f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, true), -169f, -1378f)), Struct_2(1i, Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, true), 390f, 268f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, false), -1000f, 1140f)), Struct_2(5040i, Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false), -1261f, -123f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false), 620f, -1000f)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32) -> bool {
    global2 = array<Struct_2, 13>();
    global2 = array<Struct_2, 13>();
    let var_0 = arg_1;
    let var_1 = true;
    global2 = array<Struct_2, 13>();
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = -433f;
    var var_1 = vec4<bool>(!(arg_0.b.x && global0.a.x), false, false, arg_1);
    var_0 = 292f;
    var var_2 = true;
    global0 = Struct_1(select(!vec3<bool>(u_input.d.x >= 0u, true, all(var_1.wwz)), !(!select(global0.a, arg_0.b, global0.a.x)), var_1.yyw), !(!vec3<bool>(all(vec2<bool>(true, global0.b.x)), func_3(vec3<bool>(arg_1, global0.a.x, true), global2[_wgslsmith_index_u32(71057u, 13u)], 1523u), arg_1)), _wgslsmith_div_f32(-715f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(377f, global0.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d))))), arg_0.c);
    return Struct_2(~(~(-u_input.b)), Struct_1(vec3<bool>(!(!arg_0.a.x), arg_0.d >= global0.d, true), select(select(!vec3<bool>(var_1.x, true, global0.a.x), global0.a, arg_1), !vec3<bool>(false, var_1.x, false), u_input.e.x <= 4294967295u), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), Struct_1(!var_1.zyz, vec3<bool>(all(!global0.a), global0.d != arg_0.d, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f), global0.c), global0.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(31767u, u_input.e.x), u_input.d.zy), _wgslsmith_mult_vec2_u32(u_input.e, u_input.d.yz)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 3880u), u_input.e << (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)))) >> (71530u % 32u)) ^ max(_wgslsmith_add_u32(~(31669u | u_input.d.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(51103u, 41233u, u_input.d.x), 51100u & u_input.d.x)), u_input.d.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-732f + arg_1.b.c), -938f))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.b.d)))), global0.d))));
    var var_2 = true;
    let var_3 = firstTrailingBit(firstLeadingBit(_wgslsmith_mult_i32(-5831i, arg_2.a & (arg_2.a ^ 0i))));
    global0 = func_2(arg_1.b, max(firstTrailingBit(1u ^ u_input.e.x), u_input.e.x) != u_input.d.x).c;
    return arg_2.c.b.x || !(~(-7891i) < ~_wgslsmith_mod_i32(1i, var_3));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> bool {
    global0 = Struct_1(!vec3<bool>(any(!global0.a.zx), true, (23904u ^ arg_1.x) >= 0u), vec3<bool>(!func_4(Struct_2(-11462i, Struct_1(global0.b, vec3<bool>(global0.b.x, global0.a.x, true), -891f, global0.d), Struct_1(vec3<bool>(global0.a.x, global0.b.x, true), vec3<bool>(global0.b.x, global0.a.x, true), global0.c, global0.d)), Struct_2(arg_2, Struct_1(vec3<bool>(true, global0.b.x, global0.b.x), vec3<bool>(global0.b.x, true, global0.a.x), global0.d, -512f), Struct_1(global0.b, global0.a, 325f, 996f)), func_2(Struct_1(vec3<bool>(global0.b.x, false, true), vec3<bool>(global0.a.x, false, true), -701f, -1629f), global0.a.x)), select(global0.a.x, false, global0.b.x), !all(!global0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(408f, global0.d)), global0.c)))), -332f);
    return false;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> StorageBuffer {
    global0 = arg_0.c;
    let var_0 = firstLeadingBit(_wgslsmith_mod_u32(u_input.e.x, ~1u));
    let var_1 = _wgslsmith_mod_vec4_i32(max((vec4<i32>(u_input.b, 48504i, 1i, arg_0.a) >> (select(vec4<u32>(73011u, 4294967295u, 46715u, 19817u), vec4<u32>(var_0, var_0, 29838u, 11108u), true) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_clamp_i32(u_input.b, -2147483647i, -47134i), _wgslsmith_add_i32(-51589i, u_input.a.x), ~arg_0.a, arg_0.a | 37024i), ~_wgslsmith_div_vec4_i32(~vec4<i32>(0i, arg_0.a, -17581i, 5439i), vec4<i32>(u_input.a.x, arg_0.a, arg_0.a, 40518i) ^ vec4<i32>(u_input.c, 39335i, arg_0.a, 3231i))), vec4<i32>(-9966i ^ arg_0.a, arg_0.a, -1i >> (max(var_0, u_input.d.x) % 32u), _wgslsmith_sub_i32(0i >> (u_input.d.x % 32u), ~u_input.a.x) << (~(u_input.e.x >> (22305u % 32u)) % 32u)));
    global1 = global0.c;
    let var_2 = func_2(arg_0.c, global0.a.x);
    return StorageBuffer(select(u_input.a.x, arg_0.a << (min(26005u, _wgslsmith_clamp_u32(u_input.e.x, u_input.d.x, var_0)) % 32u), select(!global0.b.x, true | var_2.c.a.x, true) | any(vec3<bool>(var_2.c.a.x, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-490f, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(min(var_2.c.d, -1187f)), _wgslsmith_f_op_f32(f32(-1f) * -1571f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1426f, global0.d, var_2.c.d, 510f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.d, var_2.c.c, var_2.b.d, -336f))), true)), select(arg_1, select(vec4<bool>(arg_1.x, arg_1.x, var_2.c.b.x, global0.b.x), vec4<bool>(arg_0.c.a.x, arg_1.x, global0.b.x, arg_1.x), false), any(vec2<bool>(true, arg_0.c.a.x))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, 623f, 1367f, global0.c))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.b.d - -1114f), func_2(Struct_1(vec3<bool>(global0.b.x, arg_0.b.a.x, true), vec3<bool>(true, false, false), 206f, global0.c), true).b.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1359f, 1137f) + vec2<f32>(-719f, arg_0.b.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~u_input.d.x, ~492u, u_input.d.x);
    let x = u_input.a;
    s_output = func_5(global2[_wgslsmith_index_u32(~(~var_0.x), 13u)], select(vec4<bool>(any(global0.a), func_1(1u, vec2<u32>(53122u, 4294967295u), select(u_input.a.x, u_input.a.x, global0.a.x)), true, global0.a.x), !(!select(vec4<bool>(global0.a.x, global0.a.x, global0.b.x, false), vec4<bool>(global0.b.x, global0.b.x, false, true), global0.b.x)), !vec4<bool>(true, global0.b.x, true, global0.b.x)));
}

