struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: array<f32, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-897f)) - _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.c, 31u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1284f, global1[_wgslsmith_index_u32(64818u, 31u)]) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)])), vec2<f32>(219f, global1[_wgslsmith_index_u32(56419u, 31u)]))))));
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    var var_1 = Struct_4(reverseBits(11830u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c, 31u)]))))), firstLeadingBit(1i), 0u);
    var_1 = Struct_4(~(~5593u), var_1.b, arg_0.x, _wgslsmith_div_u32(1u, (~var_1.a >> (u_input.c % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(54309u, 4294967295u), vec2<u32>(var_1.d, 1u)), ~29233u) % 32u)));
    return -(_wgslsmith_mult_vec3_i32(~(~u_input.a), vec3<i32>(~u_input.d.x, -7579i, ~2147483647i)) & u_input.b.xwy);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: vec2<u32>) -> vec2<i32> {
    global0 = array<vec2<bool>, 6>();
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(func_3(u_input.a.yz), u_input.b.zyz), min(u_input.a, func_3(u_input.a.zx)));
    global0 = array<vec2<bool>, 6>();
    global1 = array<f32, 31>();
    return vec2<i32>(arg_1.c, _wgslsmith_mod_i32(select(func_3(-vec2<i32>(arg_0.a, -68475i)).x, _wgslsmith_dot_vec2_i32(-u_input.d, _wgslsmith_sub_vec2_i32(vec2<i32>(-21648i, 0i), u_input.a.xz)), arg_0.b), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(arg_0.a, -902i), _wgslsmith_clamp_i32(~(-51512i), -1i, arg_1.c), 0i)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_i32(select(-u_input.b.xx, select(vec2<i32>(u_input.b.x, u_input.a.x), _wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(arg_3.c, -1i)), !arg_1.x), false), _wgslsmith_mult_vec2_i32(func_2(Struct_2(1i, arg_1.x, arg_3.b), arg_3, -46541i, vec2<u32>(57539u, 0u)), vec2<i32>(-1i, arg_3.c)) << (_wgslsmith_mod_vec2_u32(arg_2, arg_2) % vec2<u32>(32u))), all(global0[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) + _wgslsmith_f_op_f32(select(-936f, arg_0, 29556i == arg_3.c)))));
    let var_1 = !arg_1;
    global1 = array<f32, 31>();
    var var_2 = Struct_3(Struct_1(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(462f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, global1[_wgslsmith_index_u32(arg_2.x, 31u)]))))), countOneBits(abs(~0u)), var_0.b), Struct_2(1i, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(round(arg_0)))))), vec4<i32>(arg_3.c, u_input.b.x, _wgslsmith_mod_i32(arg_3.c, var_0.a), _wgslsmith_div_i32(countOneBits(var_0.a), -15207i)), vec2<i32>(5547i, i32(-1i) * -var_0.a), ~(vec4<u32>(arg_3.d, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, 4294967295u, arg_2.x), vec3<u32>(arg_3.a, 16883u, 4294967295u)), ~arg_3.a, u_input.c) | ~max(vec4<u32>(arg_2.x, 101727u, 4294967295u, u_input.c), vec4<u32>(arg_2.x, arg_3.d, arg_2.x, 94023u))));
    var var_3 = ~var_2.e;
    return vec2<bool>(true, true | !(arg_3.a <= reverseBits(arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!(!global0[_wgslsmith_index_u32(u_input.c, 6u)])), !select(func_1(global1[_wgslsmith_index_u32(0u, 31u)], vec3<bool>(false, true, true), vec2<u32>(4294967295u, 9147u), Struct_4(u_input.c, 2145f, u_input.d.x, u_input.c)), vec2<bool>(true, false), any(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(u_input.c, 6u)]);
    global0 = array<vec2<bool>, 6>();
    var_0 = !global0[_wgslsmith_index_u32(max(max(u_input.c, u_input.c), u_input.c) << (reverseBits(u_input.c) % 32u), 6u)];
    let var_1 = ~(~4294967295u);
    var_0 = select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(4294967295u, var_1), vec2<u32>(6335u, 1u), global0[_wgslsmith_index_u32(var_1, 6u)]), ~vec2<u32>(4294967295u, u_input.c) & (vec2<u32>(var_1, 48183u) << (vec2<u32>(4294967295u, var_1) % vec2<u32>(32u))))), 6u)], func_1(149f, select(vec3<bool>(false, false, func_1(-1000f, vec3<bool>(var_0.x, var_0.x, false), vec2<u32>(var_1, var_1), Struct_4(22362u, 1344f, -39137i, var_1)).x), vec3<bool>(true, true, var_0.x & var_0.x), !select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, true))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, var_1) >> (vec2<u32>(u_input.c, 31553u) % vec2<u32>(32u)), vec2<u32>(var_1, 4294967295u)), Struct_4(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) + _wgslsmith_f_op_f32(floor(1289f))), -2147483647i, 0u)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-738f, global1[_wgslsmith_index_u32(var_1, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-908f, global1[_wgslsmith_index_u32(48963u, 31u)], global1[_wgslsmith_index_u32(var_1, 31u)]) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(356f, -1323f, -172f), vec3<f32>(-2136f, -831f, global1[_wgslsmith_index_u32(38311u, 31u)])))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_1, 31u)], -610f, 1264f) - vec3<f32>(-211f, 363f, global1[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, -1186f, -1603f)))), !(!vec3<bool>(var_0.x, false, false))))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, reverseBits(4294967295u), 4294967295u), _wgslsmith_add_vec3_u32(max(max(vec3<u32>(u_input.c, var_1, 1u), vec3<u32>(var_1, u_input.c, 1u)), abs(vec3<u32>(0u, 12271u, var_1))), vec3<u32>(~var_1, 1u, 127086u))), _wgslsmith_mod_u32(min(var_1, ~u_input.c << (var_1 % 32u)), ~(u_input.c ^ ~0u))), 6u)];
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

