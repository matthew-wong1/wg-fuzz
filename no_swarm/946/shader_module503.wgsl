struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global1 = array<vec3<bool>, 11>();
    var var_0 = Struct_4(global0.a.b, Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1000f) + vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-324f, -1626f))))), vec2<u32>(18572u, _wgslsmith_sub_u32(44403u, u_input.b.x)), vec3<u32>(firstLeadingBit(40731u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.b.x, 1u), vec3<u32>(0u, u_input.c, u_input.e)), 1u), select(vec2<bool>(global0.a.b, global0.b.b), vec2<bool>(!global0.a.b, global0.a.a > 2147483647i), vec2<bool>(true, true))));
    var var_1 = Struct_4(~(~1u >> ((u_input.c >> (4294967295u % 32u)) % 32u)) >= 1u, var_0.b);
    var var_2 = Struct_3(global0.b, Struct_1(_wgslsmith_div_i32(global0.a.a, 809i ^ -global0.a.a), global0.a.b));
    var var_3 = var_1.b.b.x <= _wgslsmith_f_op_f32(min(832f, var_0.b.b.x));
    return vec3<bool>(var_1.b.e.x & !(!(var_1.b.b.x >= -570f)), !(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, var_1.a, false, var_2.b.b), vec4<bool>(var_0.a, var_0.a, true, true)))), var_2.b.b);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = arg_0;
    var_0 = select(select(!vec3<bool>(arg_0.x, false, true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 11u)], var_0.x), select(!arg_0, select(arg_0, !func_3(arg_1.x), select(func_3(-327f), arg_0, all(vec3<bool>(arg_0.x, var_0.x, true)))), vec3<bool>(arg_0.x, !(u_input.a.x < global0.b.a), !select(false, false, false))), true);
    global1 = array<vec3<bool>, 11>();
    return _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(-588f, _wgslsmith_f_op_f32(round(-960f)))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 46723i, arg_1, -2147483647i) & (vec4<i32>(arg_1, 43525i, arg_1, 1i) >> (u_input.b % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, u_input.a.x, 21651i)), global0.b.a, countOneBits(global0.b.a), ~arg_1), abs(vec4<i32>(2576i, 1i, 0i, global0.b.a))), (vec4<i32>(u_input.a.x, 40194i, arg_1, -33i) | _wgslsmith_sub_vec4_i32(vec4<i32>(-28525i, arg_1, -6994i, -22419i), vec4<i32>(global0.b.a, -43128i, -21076i, -62590i))) ^ countOneBits(vec4<i32>(u_input.a.x, -37076i, 1i, u_input.a.x) & vec4<i32>(global0.a.a, global0.a.a, u_input.a.x, u_input.a.x))), true);
    var var_1 = Struct_2(global0.b.b, vec2<f32>(_wgslsmith_f_op_f32(step(-250f, arg_2.x)), arg_2.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~u_input.d), min(4294967295u, 4294967295u)), min(u_input.b.yw, u_input.b.ww & vec2<u32>(24308u, 40508u)), u_input.b.zy), min(vec3<u32>(~_wgslsmith_mod_u32(0u, 1u), _wgslsmith_sub_u32(u_input.c, 12946u) & 4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(25338u, u_input.c), vec2<u32>(0u, u_input.d))), reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(0u, u_input.e, 4294967295u)), 0u, u_input.d))), vec2<bool>(min(u_input.b.x, abs(u_input.d)) == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), u_input.b.wz), !var_0.b));
    return Struct_3(global0.b, global0.a);
}

fn func_1() -> Struct_3 {
    global0 = func_4(!(!global0.a.b), global0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1627f, 508f)), _wgslsmith_f_op_f32(-1096f + 1414f), _wgslsmith_f_op_f32(-1099f - -249f), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(64107u, 11u)], vec2<f32>(-1224f, -570f), Struct_3(Struct_1(global0.a.a, global0.a.b), Struct_1(2147483647i, false))))))));
    global0 = func_4(true && global0.a.b, _wgslsmith_clamp_i32(min(u_input.a.x, -27294i), ~func_4(true, abs(global0.b.a), vec4<f32>(252f, 1264f, 194f, -1542f)).b.a, ~u_input.a.x), vec4<f32>(-792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-602f - -341f), _wgslsmith_f_op_f32(step(-265f, -354f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f), -1326f)), -1104f, 1888f));
    global0 = func_4(false, ~(-_wgslsmith_add_i32(abs(1i), u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(852f, 1092f, -1000f, 127f) - vec4<f32>(-1307f, -451f, -1202f, 336f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(790f, -898f, 795f, -295f), vec4<f32>(-1677f, -321f, -1864f, 168f), true)))));
    var var_0 = Struct_1(1i, true);
    global1 = array<vec3<bool>, 11>();
    return func_4(global0.a.b, ~_wgslsmith_mult_i32(select(-1i, var_0.a, var_0.b), ~1i) | abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a, -2147483647i, -19329i, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-19134i, u_input.a.x, global0.b.a, global0.b.a), vec4<i32>(59712i, u_input.a.x, 0i, -37996i), vec4<i32>(-1i, -47114i, global0.b.a, -40956i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(4294967295u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, u_input.d, 45510u, u_input.e) | _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 975u, u_input.e, u_input.e), vec4<u32>(5546u, 1u, u_input.e, 11149u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(52514u, 6672u), max(u_input.c, 0u), 4294967295u, max(u_input.d, 99336u)), _wgslsmith_sub_vec4_u32(vec4<u32>(65841u, 1u, u_input.c, 17862u) >> (u_input.b % vec4<u32>(32u)), ~u_input.b))), any(!select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, u_input.d), 11u)], global1[_wgslsmith_index_u32(u_input.d, 11u)], !vec3<bool>(global0.b.b, true, false))));
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~60253u), _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.b.zxz, u_input.b.zyy), ~1u, 9267u, var_0), u_input.b), u_input.a, 594f, u_input.a);
}

