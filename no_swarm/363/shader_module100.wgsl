struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(6665u, Struct_3(38245u)), Struct_4(0u, Struct_3(88220u)), Struct_4(72041u, Struct_3(1u)), Struct_4(4467u, Struct_3(0u)), Struct_4(1u, Struct_3(0u)), Struct_4(0u, Struct_3(21853u)), Struct_4(9457u, Struct_3(20147u)), Struct_4(726u, Struct_3(14340u)), Struct_4(4294967295u, Struct_3(0u)), Struct_4(13806u, Struct_3(1u)), Struct_4(36529u, Struct_3(4294967295u)), Struct_4(0u, Struct_3(4294967295u)), Struct_4(51203u, Struct_3(1u)), Struct_4(1u, Struct_3(1u)), Struct_4(1u, Struct_3(43365u)), Struct_4(0u, Struct_3(1u)), Struct_4(1u, Struct_3(1u)));

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(4294967295u, Struct_3(84377u)), Struct_4(124678u, Struct_3(4294967295u)), Struct_4(91738u, Struct_3(26884u)), Struct_4(1u, Struct_3(0u)), Struct_4(21742u, Struct_3(1u)), Struct_4(29921u, Struct_3(0u)), Struct_4(0u, Struct_3(4294967295u)), Struct_4(0u, Struct_3(0u)), Struct_4(27152u, Struct_3(1u)), Struct_4(0u, Struct_3(72667u)), Struct_4(4294967295u, Struct_3(4294967295u)), Struct_4(116282u, Struct_3(4294967295u)), Struct_4(1u, Struct_3(31139u)), Struct_4(68357u, Struct_3(50984u)), Struct_4(1u, Struct_3(0u)), Struct_4(2565u, Struct_3(102179u)), Struct_4(4294967295u, Struct_3(1u)), Struct_4(42478u, Struct_3(1u)), Struct_4(0u, Struct_3(4294967295u)), Struct_4(40540u, Struct_3(1u)), Struct_4(4294967295u, Struct_3(1u)), Struct_4(19924u, Struct_3(1u)), Struct_4(39504u, Struct_3(0u)), Struct_4(1u, Struct_3(4294967295u)), Struct_4(4294967295u, Struct_3(69294u)), Struct_4(38937u, Struct_3(1u)), Struct_4(1u, Struct_3(4294967295u)), Struct_4(5281u, Struct_3(1u)), Struct_4(1u, Struct_3(13407u)), Struct_4(4294967295u, Struct_3(12545u)));

var<private> global2: u32 = 4294967295u;

var<private> global3: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> bool {
    global3 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(18872u, arg_0), ~(~vec2<u32>(4294967295u, 5358u)))), ~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.a, 10466u), vec2<u32>(u_input.a, u_input.a), false), vec2<u32>(arg_0, arg_0)));
    let var_0 = true;
    let var_1 = vec4<bool>(all(!vec3<bool>(true, var_0, var_0)) || var_0, all(vec2<bool>(false, (u_input.a ^ arg_1) == 16295u)), any(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false), true)), any(vec3<bool>(true, any(vec4<bool>(var_0, true, var_0, true)), true)) && var_0);
    let var_2 = Struct_3(_wgslsmith_add_u32(11236u, abs((arg_1 ^ 20653u) >> (~arg_0 % 32u))));
    global0 = array<Struct_4, 17>();
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = !all(vec3<bool>(true || all(vec4<bool>(true, false, true, false)), true, false));
    let var_1 = countOneBits(u_input.b);
    global1 = array<Struct_4, 30>();
    var var_2 = firstTrailingBit(-u_input.b | _wgslsmith_sub_vec4_i32(-vec4<i32>(-35052i, u_input.b.x, var_1.x, 2147483647i), u_input.b));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-247f)), _wgslsmith_div_f32(1924f, -926f))))) * _wgslsmith_f_op_f32(f32(-1f) * -2149f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-314f)), _wgslsmith_f_op_f32(max(1211f, 1572f)), _wgslsmith_f_op_f32(420f * -323f), _wgslsmith_f_op_f32(max(2127f, 716f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 306f, 1123f, 970f) - vec4<f32>(453f, -449f, -974f, 416f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1607f, -506f, 720f, 213f) - vec4<f32>(1204f, 1110f, -968f, 828f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2623f, -1000f, 1765f, 1176f))))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, var_3.b.x, var_3.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_3.b - vec4<f32>(-114f, 398f, -2449f, var_3.a)), _wgslsmith_f_op_vec4_f32(round(var_3.b))))), vec4<f32>(-1353f, var_3.a, var_3.a, _wgslsmith_f_op_f32(var_3.a - -1000f)), false))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1414f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -276f)))));
    global0 = array<Struct_4, 17>();
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(192f))), 456f));
    let var_1 = vec4<bool>(false, true, _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(var_0.x + var_0.x), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(select(!vec2<bool>(any(var_1), var_1.x), !var_1.zy, !func_3(u_input.a, 96998u, 2147483647i)), var_1.x, var_1.xwz));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_2.x), -1423f, var_0.x, 2259f))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_2(arg_0.b.yzz, _wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), true, vec2<i32>(-countOneBits(u_input.b.x), -abs(u_input.b.x)));
    var var_1 = _wgslsmith_add_i32(~max(_wgslsmith_div_i32(u_input.b.x, ~(-30735i)), -(u_input.b.x >> (17308u % 32u))), u_input.b.x);
    return arg_1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1835f)));
    var var_1 = vec3<u32>(_wgslsmith_div_u32(u_input.a, ~(~u_input.a)), 4294967295u, _wgslsmith_add_u32(~_wgslsmith_mod_u32(max(u_input.a, 1u), ~4294967295u), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(26246u, u_input.a, u_input.a, 1u), vec4<u32>(0u, 37860u, u_input.a, 1u)), func_5(func_2(-2147483647i), Struct_4(u_input.a, Struct_3(u_input.a)), global0[_wgslsmith_index_u32(~u_input.a, 17u)], Struct_3(0u)))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2690f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(-240f)), _wgslsmith_f_op_f32(select(-1589f, -936f, false)), -1912f, -1708f))))));
    global3 = ~_wgslsmith_mod_u32(~select(4294967295u, u_input.a, true), 1u) << (func_5(Struct_1(var_3.a, _wgslsmith_f_op_vec4_f32(var_3.b - _wgslsmith_f_op_vec4_f32(var_3.b + var_3.b))), Struct_4(0u, Struct_3(31762u)), global1[_wgslsmith_index_u32(u_input.a >> (func_5(Struct_1(-2105f, vec4<f32>(var_3.b.x, 423f, var_3.a, 905f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.a, 4294967295u), vec3<u32>(u_input.a, var_1.x, u_input.a)), 30u)], global1[_wgslsmith_index_u32(67509u, 30u)], Struct_3(var_1.x)) % 32u), 30u)], Struct_3(select(reverseBits(1u), ~u_input.a, true))) % 32u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x, _wgslsmith_f_op_f32(max(-725f, var_3.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), var_3.a), true, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, 37893i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yx), u_input.b.x, -13756i), -u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = func_1();
    let var_2 = -2147483647i;
    var var_3 = ~(~abs(_wgslsmith_sub_vec2_u32(select(vec2<u32>(92759u, u_input.a), vec2<u32>(u_input.a, u_input.a), var_1.c), vec2<u32>(71820u, 4294967295u) | vec2<u32>(u_input.a, 11358u))));
    var var_4 = !select(vec2<bool>(true, true), vec2<bool>(155f > var_1.b, false), select(select(!vec2<bool>(var_1.c, false), !vec2<bool>(true, var_1.c), select(vec2<bool>(true, var_1.c), vec2<bool>(true, true), vec2<bool>(var_1.c, false))), select(select(vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, false), vec2<bool>(true, var_1.c)), vec2<bool>(var_1.c, var_1.c), var_1.c), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, 21676u) ^ ~vec4<u32>(72184u, 8877u, var_3.x, 7567u)), select(~vec4<u32>(0u, 0u, 1u, 1u), select(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), vec4<u32>(1u, u_input.a, var_3.x, u_input.a), vec4<bool>(var_4.x, var_1.c, false, false)), any(vec3<bool>(var_1.c, var_4.x, true))) >> (reverseBits(vec4<u32>(var_3.x, u_input.a, 4294967295u, 4294967295u)) % vec4<u32>(32u)), ~firstLeadingBit(abs(vec4<u32>(96929u, 8709u, var_3.x, 4294967295u)))));
}

