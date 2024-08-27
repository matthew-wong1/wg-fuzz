struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -72150i, i32(-2147483648), i32(-2147483648)), vec2<i32>(-42737i, 1i));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1106i, i32(-2147483648), -450i, 2147483647i), vec2<i32>(32015i, 1i));

var<private> global2: array<Struct_2, 4>;

var<private> global3: vec4<i32>;

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = global4.a;
    global1 = global4.a;
    let var_1 = reverseBits(~(~vec2<u32>(_wgslsmith_sub_u32(global4.b, 4294967295u), global4.b)));
    var var_2 = arg_2;
    let var_3 = arg_2;
    return u_input.b;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = global4.c;
    var var_0 = Struct_4(global4.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(~21283i, ~2147483647i, -55394i, firstLeadingBit(global3.x)), global4.a.a), -217f, Struct_3(select(-global0.a << (~vec4<u32>(4294967295u, 0u, 14898u, 1u) % vec4<u32>(32u)), -global0.a >> (~vec4<u32>(global4.b, 72135u, 48429u, 0u) % vec4<u32>(32u)), vec4<bool>(all(vec2<bool>(true, false)), true, false, false)), Struct_1(min(vec4<i32>(global3.x, -1418i, global0.b.x, u_input.a.x) ^ vec4<i32>(-17595i, global4.c.b.x, 7671i, global3.x), _wgslsmith_div_vec4_i32(global1.a, global1.a)), (vec2<i32>(u_input.b.x, -37804i) >> (vec2<u32>(65779u, 4080u) % vec2<u32>(32u))) & u_input.b.yz), -u_input.a), countOneBits(func_3(~_wgslsmith_clamp_i32(2147483647i, global1.a.x, 20849i), global4.a, Struct_4(global4.a, global1.a.x, arg_0, Struct_3(vec4<i32>(-51125i, global1.a.x, global1.b.x, u_input.a.x), global4.a, global4.c.b), firstLeadingBit(global0.a.zxz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -161f) - vec3<f32>(149f, -902f, arg_0))))));
    return Struct_2(Struct_1(global4.a.a & global4.a.a, -vec2<i32>(_wgslsmith_dot_vec2_i32(global3.yz, vec2<i32>(var_0.b, global1.a.x)), min(11285i, global0.a.x))), _wgslsmith_sub_u32(global4.b, 16557u), Struct_1(abs(max(max(vec4<i32>(-2147483647i, 0i, global3.x, 86395i), vec4<i32>(0i, global4.a.b.x, -40616i, global0.a.x)), ~global0.a)), countOneBits(vec2<i32>(global3.x, 1i))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = func_2(888f);
    let var_1 = all(vec2<bool>(!any(vec4<bool>(true, false, true, false)), true)) == true;
    global0 = func_2(-507f).c;
    global4 = global2[_wgslsmith_index_u32(~1u, 4u)];
    let var_2 = vec4<bool>(var_1, !(var_1 & select(var_1, var_1, true)), false, true);
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1753f, 1000f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1093f, 164f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(851f, -333f) * vec2<f32>(100f, -702f)) - vec2<f32>(1956f, 1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-207f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-454f, -1883f)), _wgslsmith_div_f32(1164f, -1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(292f, 139f))))));
    var var_2 = Struct_4(global4.c, ~(_wgslsmith_dot_vec3_i32(arg_0.c.a.xyw, arg_3.a.zxw) & -1i) & -31688i, var_1.x, Struct_3(vec4<i32>(max(_wgslsmith_add_i32(-1i, 1i), ~0i), 28232i, -25718i, u_input.a.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(659f, -231f)))).a, ~select(vec2<i32>(32569i, 1i), vec2<i32>(2147483647i, -37626i), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), _wgslsmith_mod_vec3_i32(-(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, 1i), vec3<i32>(-2147483647i, global4.c.a.x, global4.c.a.x)) | ~vec3<i32>(global1.a.x, 2147483647i, arg_3.a.x)), firstLeadingBit(vec3<i32>(36150i, -2147483647i, -2147483647i)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(15060u, 87911u, 0u), vec3<u32>(1u, 32058u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 5101u, 4294967295u), vec3<u32>(arg_0.b, arg_2.x, var_0.b))) % vec3<u32>(32u))));
    global3 = _wgslsmith_mod_vec4_i32(func_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), var_2.c), 511f), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 1u, arg_0.b, 1u), vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, global4.b, arg_0.b, arg_2.x), vec4<u32>(var_0.b, 4294967295u, var_0.b, 4294967295u)), vec4<u32>(arg_0.b, ~var_0.b, arg_2.x, arg_2.x))).a, global0.a);
    var var_3 = Struct_3(vec4<i32>(max(arg_1.x, ~(-2147483647i)), arg_3.a.x, global3.x, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(42796i, u_input.b.x, arg_3.a.x), vec3<i32>(-2147483647i, 1i, global4.c.b.x)))), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.c, 195f, -1850f), vec3<f32>(-536f, var_2.c, 218f)))), vec3<f32>(425f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(var_1.x)))), vec4<u32>(arg_0.b, arg_2.x, 93112u, ~(~4294967295u))), vec2<i32>(_wgslsmith_div_i32(26760i, _wgslsmith_dot_vec3_i32(vec3<i32>(24575i, 2147483647i, 12300i), arg_0.c.a.zwz)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 1193i, global4.a.b.x), var_2.a.a) | (18082i << (arg_0.b % 32u))) & countOneBits(arg_0.c.b ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -13494i), arg_0.a.a.wy)));
    return func_2(var_2.c).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec4<i32>(~_wgslsmith_add_i32(~1i, u_input.a.x), _wgslsmith_mod_i32(34268i, 26366i), -2147483647i, -_wgslsmith_clamp_i32(min(global0.a.x, u_input.a.x), i32(-1i) * -1i, ~global3.x)), countOneBits(_wgslsmith_add_vec2_i32(~u_input.b.xz, global1.a.yw)));
    let var_0 = true && !(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))) || true);
    global2 = array<Struct_2, 4>();
    let var_1 = func_4(Struct_2(Struct_1(vec4<i32>(global0.b.x, _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(2147483647i, -15983i, 1i, 76508i)), global3.x, 10841i << (global4.b % 32u)), global3.zy), 1u & ~(~global4.b), func_1(vec3<f32>(1f, 1f, 1f), ~vec4<u32>(global4.b, global4.b, 42746u, 61275u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global4.b, global4.b, 78425u, 7273u), vec4<u32>(0u, global4.b, global4.b, 16180u)) % vec4<u32>(32u)))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 15677i, global3.x), vec3<i32>(1i, 41954i, -2147483647i) | vec3<i32>(global3.x, -37581i, u_input.a.x)), global1.a.zxy), abs(vec3<i32>(firstLeadingBit(global4.c.b.x), _wgslsmith_div_i32(-1i, global0.b.x), u_input.b.x))), vec2<u32>(global4.b, _wgslsmith_dot_vec3_u32(~(vec3<u32>(global4.b, global4.b, global4.b) | vec3<u32>(global4.b, global4.b, 52439u)), abs(~vec3<u32>(0u, global4.b, 4294967295u)))), Struct_1(reverseBits(global1.a), global0.b));
    let var_2 = global4.b;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)))));
    global4 = Struct_2(Struct_1(global4.c.a, countOneBits(~(vec2<i32>(-14539i, var_1.b.x) ^ global3.xy))), 1u, Struct_1(abs(global0.a), global4.a.b));
    global0 = Struct_1(func_4(Struct_2(global4.a, ~(~60736u), func_2(-1063f).a), select(_wgslsmith_add_vec3_i32(var_1.a.zzy, vec3<i32>(global4.a.b.x, global1.b.x, -121i)), vec3<i32>(-28402i, _wgslsmith_dot_vec4_i32(global4.c.a, global0.a), func_1(vec3<f32>(-1724f, -711f, 593f), vec4<u32>(1u, global4.b, global4.b, 14232u)).a.x), any(vec3<bool>(var_0, false, var_0))), ~select(~vec2<u32>(4294967295u, 45106u), vec2<u32>(40638u, global4.b), vec2<bool>(true, true)), func_4(Struct_2(Struct_1(vec4<i32>(global3.x, u_input.a.x, -1i, 0i), global1.a.wx), global4.b & global4.b, Struct_1(vec4<i32>(global3.x, global0.b.x, 2147483647i, 0i), global1.a.wy)), global1.a.zxy, abs(vec2<u32>(4294967295u, 10934u)), global4.c)).a, func_3(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(global3.x, global3.x, 19424i, global0.a.x)), vec4<i32>(global3.x << (global4.b % 32u), global1.b.x, select(global0.b.x, 37042i, var_0), global0.a.x)), Struct_1(_wgslsmith_div_vec4_i32(global4.c.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -27143i, 2147483647i, u_input.b.x), vec4<i32>(global3.x, global3.x, -10167i, 35979i))), vec2<i32>(_wgslsmith_div_i32(24717i, -31516i), global1.a.x)), Struct_4(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-5208i, var_1.b.x, global1.a.x, global0.a.x), global1.a), ~vec2<i32>(global4.a.b.x, 1i)), global1.a.x << ((419u & global4.b) % 32u), 1f, Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global4.c.b.x, 2147483647i, 48940i), global0.a), func_1(vec3<f32>(-308f, -2670f, 1249f), vec4<u32>(global4.b, 0u, 4294967295u, global4.b)), vec2<i32>(global3.x, 69851i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, 15432i, 46605i), global3.yxw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-236f, 175f, -195f), vec3<f32>(-906f, -190f, -524f), vec3<bool>(false, false, var_0))))))).xy);
    let x = u_input.a;
    s_output = StorageBuffer(-1040f, -(~vec3<i32>(-25301i, 1i, global4.a.a.x)));
}

