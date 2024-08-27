struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, -41722i, -9075i);

var<private> global1: Struct_3;

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = reverseBits(~(~5936i));
    var_0 = -_wgslsmith_clamp_i32(arg_0.b.x, -72917i, 0i);
    global0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zx, global2.c.b.yz), arg_0.c.wx), 2147483647i, u_input.c.x), ~arg_0.c);
    var_0 = -2147483647i;
    var var_1 = global2.e;
    return _wgslsmith_sub_vec4_u32(abs(vec4<u32>(62322u, 75965u, _wgslsmith_div_u32(~u_input.b, abs(u_input.b)), ~836u)), ~arg_1);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(434f)))));
    global2 = Struct_2(Struct_1(_wgslsmith_clamp_i32(global2.e.a ^ 2147483647i, -69033i, 1i) | u_input.c.x, _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 5692i, arg_3.b.x)), -global0.zwz, vec3<i32>(global0.x, 2147483647i, 2147483647i)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global2.e.a, global0.x), u_input.c, global0.zyy), _wgslsmith_add_vec3_i32(vec3<i32>(-19007i, -19001i, -1i), arg_3.c.xzy))), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(2147483647i, arg_3.b.x, arg_3.c.x, 57938i)), select(arg_3.c, arg_3.c, false) << (vec4<u32>(26595u, arg_2.x, 1u, arg_2.x) % vec4<u32>(32u))), arg_3.d), arg_1.x, Struct_1(~global0.x, vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, global0.x, firstTrailingBit(2147483647i)), 1i, -1i), vec4<i32>(-1i) * -(~vec4<i32>(-24176i, 0i, global0.x, global0.x)), global2.a.d), select(vec3<bool>(select(!global2.e.d.x, false, global2.d.x), true, !all(vec4<bool>(true, arg_0.x, global2.d.x, arg_3.d.x))), !vec3<bool>(false || arg_0.x, all(vec2<bool>(arg_3.d.x, global2.a.d.x)), true), true), global2.a);
    var var_1 = 1026f;
    global0 = global2.a.c;
    var var_2 = vec3<bool>(!(arg_3.d.x || global2.a.d.x), !(!arg_0.x), false);
    return select(!(!vec4<bool>(all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, false, global2.e.d.x)), global2.e.d.x, var_2.x)), !(!vec4<bool>(all(vec3<bool>(global2.e.d.x, arg_0.x, arg_3.d.x)), all(vec3<bool>(true, global2.d.x, true)), arg_3.d.x && arg_0.x, var_2.x)), false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    var var_0 = select(!vec4<bool>(false, 0u <= u_input.b, u_input.b >= (0u << (u_input.b % 32u)), arg_0.d.x), func_4(vec2<bool>(select(all(vec3<bool>(arg_0.d.x, global2.c.d.x, false)), global1.a != arg_1.b, arg_1.d.x & arg_0.d.x), all(vec4<bool>(false, global2.d.x, arg_1.a.d.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.b - arg_1.b), global1.a, _wgslsmith_f_op_f32(-global2.b), -1000f)), ((vec4<u32>(u_input.b, 0u, 0u, u_input.b) | vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b)) ^ ~vec4<u32>(0u, u_input.b, u_input.b, 43051u)) & vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8984u, 28587u, 4294967295u), vec3<u32>(0u, 48809u, u_input.b)), u_input.b, firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 1u), vec4<u32>(u_input.b, u_input.b, 1u, 0u))), Struct_1(-2147483647i, select(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), vec3<i32>(u_input.a, u_input.c.x, arg_0.a) & vec3<i32>(-26503i, 9017i, -1i), select(vec3<bool>(arg_1.e.d.x, arg_1.e.d.x, false), vec3<bool>(arg_0.d.x, arg_1.e.d.x, global2.d.x), global2.d)), _wgslsmith_mult_vec4_i32(arg_0.c, arg_0.c) << (func_3(Struct_1(-1i, vec3<i32>(-14574i, arg_0.a, 29001i), global2.c.c, arg_1.a.d), vec4<u32>(u_input.b, 4294967295u, u_input.b, 23747u)) % vec4<u32>(32u)), vec2<bool>(arg_0.d.x, any(vec3<bool>(true, global2.a.d.x, arg_1.e.d.x))))), !(!vec4<bool>(global2.d.x, arg_0.d.x, -579f >= arg_1.b, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_f_op_f32(round(1619f)), -1387f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 118f, global2.b))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1788f, -526f, arg_1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-686f, global1.a, -1792f) - vec3<f32>(1985f, 393f, 425f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(713f, global2.b, global2.b) + vec3<f32>(-1637f, 1000f, 1430f)), vec3<f32>(global1.a, -1000f, arg_1.b))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, arg_1.b, -1077f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -1435f, -313f) - vec3<f32>(-1056f, global1.a, arg_1.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -1500f, global2.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 1000f, -537f) - vec3<f32>(-719f, global2.b, 1000f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(135f, -335f, global1.a), vec3<f32>(global2.b, 883f, arg_1.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1796f, arg_1.b, global2.b)))))), !vec3<bool>(true, !arg_1.a.d.x & (true | arg_1.e.d.x), true)));
    let var_2 = arg_1.a;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-arg_1.b));
    global0 = global2.a.c;
    return Struct_3(239f);
}

fn func_1() -> i32 {
    let var_0 = func_2(Struct_1(~_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), 35115i), abs(global2.e.c.zwx), global2.a.c, !global2.e.d), Struct_2(global2.a, global2.b, global2.a, !vec3<bool>(true, !global2.a.d.x, all(vec2<bool>(false, false))), global2.c));
    var var_1 = vec4<i32>(global0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(~global2.e.c), ~(-vec4<i32>(global2.a.a, u_input.c.x, 22012i, -21510i))), global2.a.c), 51441i, _wgslsmith_div_i32(global0.x, _wgslsmith_add_i32(min(global2.e.a, i32(-1i) * -4694i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, u_input.a), u_input.c.x))));
    global0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-15096i, global0.x, -38300i, -2147483647i), -global2.a.c), reverseBits(global2.e.c >> (func_3(global2.e, vec4<u32>(u_input.b, u_input.b, 33778u, 4294967295u)) % vec4<u32>(32u)))) >> (vec4<u32>(~_wgslsmith_div_u32(u_input.b | 4294967295u, ~u_input.b), 44335u, ~(~13996u), u_input.b) % vec4<u32>(32u));
    var var_2 = 71223u;
    var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1687u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~(~4294967295u)), _wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28286u, u_input.b, u_input.b, 33491u), vec4<u32>(23766u, 1u, u_input.b, u_input.b)), ~0u)), 24398u), vec3<u32>(~4294967295u, u_input.b, ~_wgslsmith_sub_u32(~4294967295u, u_input.b)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.a, -2147483647i, _wgslsmith_add_i32(-global0.x, u_input.c.x) ^ -_wgslsmith_sub_i32(-5458i, 0i)), vec4<i32>(global2.e.a, 1i, global0.x, _wgslsmith_sub_i32(-global0.x, func_1()) << (u_input.b % 32u)));
    let var_0 = !any(vec4<bool>(global2.d.x, true, true, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)))), _wgslsmith_div_f32(1401f, global1.a), 910f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, -1000f, 2084f), vec3<f32>(global1.a, global1.a, -1105f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1441f, global1.a, -278f))))))));
    global0 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(-13092i, u_input.c.x, 2147483647i, global0.x));
    var var_2 = Struct_2(global2.c, _wgslsmith_f_op_f32(min(1203f, 892f)), Struct_1(_wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(global2.e.c.x, ~1i)), countOneBits(vec3<i32>(global0.x, 2147483647i, global2.a.c.x) & global2.c.c.xzz) & ~(~global0.wwy), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(u_input.c.zy, global0.zy) | (5333i >> (u_input.b % 32u)), -1i, _wgslsmith_clamp_i32(abs(7392i), min(global2.c.b.x, 51729i), _wgslsmith_mult_i32(-1i, u_input.a))), !select(!vec2<bool>(global2.a.d.x, var_0), func_4(vec2<bool>(global2.c.d.x, var_0), vec4<f32>(var_1.x, global2.b, global1.a, var_1.x), vec4<u32>(51554u, u_input.b, u_input.b, 1u), global2.e).xw, global2.a.d)), vec3<bool>(true, func_4(global2.c.d, vec4<f32>(_wgslsmith_f_op_f32(var_1.x + 1320f), 811f, _wgslsmith_div_f32(581f, global2.b), _wgslsmith_div_f32(-1937f, 1059f)), vec4<u32>(u_input.b, 1u, 1u, 2843u), global2.a).x, all(select(vec2<bool>(true, var_0), global2.c.d, select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), global2.c.d)))), global2.c);
    var var_3 = select(vec3<u32>(min(1u, 1u) & (max(u_input.b, u_input.b) << (38946u % 32u)), 3135u, u_input.b), ~(~(~(~vec3<u32>(25019u, u_input.b, 18868u)))), func_4(!vec2<bool>(1i != var_2.a.a, var_0 & true), vec4<f32>(func_2(var_2.a, Struct_2(Struct_1(-19977i, global0.wwy, var_2.c.c, global2.d.yz), 596f, global2.a, global2.d, Struct_1(-32691i, u_input.c, vec4<i32>(u_input.a, u_input.a, -36398i, global2.a.c.x), vec2<bool>(global2.e.d.x, var_0)))).a, _wgslsmith_f_op_f32(-1f), var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -147f)), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)), u_input.b, countOneBits(reverseBits(89158u)), 1u), var_2.a).zwz);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3.yz | firstLeadingBit(~var_3.yx)), global2.c.a, global2.a.c.yzz | ~global2.a.c.xyw, 1061f);
}

