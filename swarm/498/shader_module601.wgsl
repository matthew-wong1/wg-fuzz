struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(1i, 2147483647i, false, true, vec2<f32>(-167f, -980f)), Struct_1(23822i, 42483i, true, true, vec2<f32>(-1000f, 569f)), Struct_1(5090i, 2147483647i, false, false, vec2<f32>(1445f, -1591f)), Struct_1(0i, -27263i, true, true, vec2<f32>(-729f, 264f)), Struct_1(-36130i, 1i, true, true, vec2<f32>(-282f, -751f)), Struct_1(2147483647i, 44031i, false, false, vec2<f32>(1374f, 277f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: u32) -> i32 {
    var var_0 = -40882i;
    let var_1 = 4294967295u;
    let var_2 = arg_1.x;
    var var_3 = true;
    var_0 = -23880i;
    return -15379i;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(select(-640f, arg_2.e.x, false))))))) + 383f);
    var var_1 = arg_0.zzy;
    let var_2 = 332f;
    let var_3 = any(arg_0.yzy);
    let var_4 = ~(~reverseBits(countOneBits(~15846u)));
    return -592f;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f * 1165f) * arg_0.e.x), -1250f, _wgslsmith_f_op_f32(trunc(arg_0.e.x))))));
    var var_1 = firstLeadingBit(~(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = true;
    let var_3 = var_1.zwz;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.e.x, -1142f))), _wgslsmith_div_f32(-900f, _wgslsmith_f_op_f32(var_0.x + arg_0.e.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-2920f - _wgslsmith_f_op_f32(func_4(vec4<bool>(arg_0.d, -334f > arg_0.e.x, true, arg_0.d), func_3(1058f, vec4<f32>(arg_0.e.x, 277f, 705f, -1209f), 4294967295u) <= -2147483647i, Struct_1(_wgslsmith_sub_i32(0i, -2147483647i), _wgslsmith_mod_i32(arg_0.b, 0i), arg_0.d && false, select(arg_0.c, true, true), _wgslsmith_f_op_vec2_f32(-arg_0.e))))));
    return max(1i, arg_0.b);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 6>();
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.b, _wgslsmith_sub_i32(-1i, 43287i)), -(~arg_0)), func_2(arg_2), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, ~arg_2.b), arg_2.a)) & min(u_input.a, u_input.a);
    var var_1 = ~_wgslsmith_mult_u32(countOneBits(_wgslsmith_mod_u32(21854u, 62410u)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(12686u, 9119u, 1u), vec3<u32>(58572u, 4294967295u, 1u)) & 1u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(55833u, _wgslsmith_clamp_u32(5591u, 0u, 0u), ~17160u, ~32567u), ~firstTrailingBit(vec4<u32>(24639u, 83316u, 19512u, 82256u))));
    var_0 = _wgslsmith_add_vec3_i32(max(select(~vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), u_input.a, false), u_input.a), max(-vec3<i32>(arg_2.b, var_0.x, -2147483647i) & -(~u_input.a), vec3<i32>(39363i, _wgslsmith_mult_i32(arg_0, ~arg_2.b), 23013i ^ u_input.a.x)));
    let var_2 = 1151f;
    return var_0.x;
}

fn func_5(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_1(func_1(reverseBits(~reverseBits(-20526i)), arg_1.x, Struct_1(~(-arg_0), u_input.a.x, true, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-418f, 843f), vec2<f32>(-521f, -127f), vec2<bool>(false, false))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-909f, -261f) - vec2<f32>(1491f, 1193f))))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2416f)))) <= -1000f, any(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(899f, 247f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(378f, 313f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(745f, 1000f), vec2<f32>(703f, 816f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1093f, -381f), vec2<f32>(608f, -305f), false)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.e.x, 1655f, var_0.e.x, -1405f))) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, 1763f, -1881f, var_0.e.x), vec4<f32>(var_0.e.x, -2294f, 753f, 1000f))))))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(27562u, abs(~1u), ~abs(0u)), 1u), ~4294967295u);
    global0 = array<Struct_1, 6>();
    return ~(7440u & _wgslsmith_dot_vec3_u32(~vec3<u32>(51915u, 47684u, 38153u), vec3<u32>(11424u, 0u, 4294967295u))) ^ ~_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 31478u), vec3<u32>(0u, 40059u, 0u)), 44518u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(~max(1u, ~23737u), min(func_5(func_1(33100i, true, global0[_wgslsmith_index_u32(0u, 6u)]), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), ~reverseBits(4294967295u))), 1u, select(~93825u, abs(1u), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(vec4<u32>(13063u, var_0.x, var_0.x, var_0.x)) << (reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4113u, 0u, 1u, 0u), vec4<u32>(4294967295u, var_0.x, 0u, 4294967295u))) % vec4<u32>(32u))), firstLeadingBit(0u | (4294967295u >> (var_0.x % 32u))));
}

