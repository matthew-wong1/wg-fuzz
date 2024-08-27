struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 31>;

var<private> global3: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    global0 = array<u32, 29>();
    let var_0 = Struct_2(global1.a, arg_1.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-827f, var_0.a, -636f), vec3<f32>(var_0.a, global1.a, 794f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -240f, -544f)), any(vec3<bool>(var_0.b, global1.b, false)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1581f, -317f, var_0.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, 1218f)))), !(!var_0.b), _wgslsmith_div_u32(91737u, _wgslsmith_div_u32(arg_0.x & 49402u, ~35222u)) & ~global0[_wgslsmith_index_u32(arg_0.x, 29u)]);
    global1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(813f, var_1.a.x), _wgslsmith_f_op_f32(sign(global1.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1566f, -687f)) - _wgslsmith_div_f32(618f, -1967f))))), all(!(!select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(global1.b, var_0.b, false), arg_1.b))));
    var var_2 = select(select(!select(select(vec3<bool>(true, global1.b, true), vec3<bool>(false, global1.b, arg_1.b), global1.b), !vec3<bool>(true, arg_1.b, false), !vec3<bool>(arg_1.b, var_1.b, var_0.b)), select(vec3<bool>(any(vec2<bool>(global1.b, arg_1.b)), global1.a <= global1.a, true), vec3<bool>(true, true, true), arg_1.a == _wgslsmith_f_op_f32(global1.a + 403f)), var_1.b), select(vec3<bool>(var_1.b, any(vec3<bool>(true, var_0.b, false)) & false, _wgslsmith_f_op_f32(-global1.a) <= _wgslsmith_f_op_f32(-var_0.a)), select(select(vec3<bool>(true, arg_1.b, false), select(vec3<bool>(global1.b, global1.b, var_1.b), vec3<bool>(global1.b, global1.b, global1.b), true), false), !select(vec3<bool>(var_1.b, true, true), vec3<bool>(var_1.b, arg_1.b, false), vec3<bool>(false, var_0.b, true)), !global1.b | true), select(select(!vec3<bool>(true, arg_1.b, true), vec3<bool>(var_1.b, arg_1.b, global1.b), select(vec3<bool>(true, global1.b, arg_1.b), vec3<bool>(var_0.b, var_0.b, true), false)), !vec3<bool>(var_0.b, var_1.b, var_0.b), !(var_0.b && true))), select(!vec3<bool>(global1.b, true, var_1.c > 58297u), !(!vec3<bool>(global1.b, arg_1.b, false)), true));
    return min(~25929u, reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(30515u, global0[_wgslsmith_index_u32(4294967295u, 29u)], 32565u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 29u)], 29u)]), ~vec4<u32>(arg_0.x, global0[_wgslsmith_index_u32(53193u, 29u)], var_1.c, global0[_wgslsmith_index_u32(u_input.b, 29u)]), select(vec4<bool>(true, false, global1.b, false), vec4<bool>(var_2.x, arg_1.b, global1.b, true), true)), abs(abs(vec4<u32>(0u, arg_0.x, 36305u, 4294967295u))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: f32) -> i32 {
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a + arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(812f * _wgslsmith_f_op_f32(arg_2 * -2689f)), _wgslsmith_f_op_f32(-arg_2))), (select(reverseBits(0u), ~30730u, global1.b) << (1u % 32u)) >= 28314u));
    let var_0 = Struct_2(_wgslsmith_div_f32(arg_2, global1.a), global1.b);
    let var_1 = (vec3<u32>(func_3(select(u_input.a, vec3<u32>(1237u, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 1u), vec3<bool>(false, true, global1.b)), var_0), u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 93888u, global0[_wgslsmith_index_u32(99975u, 29u)], u_input.a.x), max(vec4<u32>(global0[_wgslsmith_index_u32(54263u, 29u)], 38420u, u_input.b, 0u), vec4<u32>(u_input.a.x, u_input.b, 71796u, 1u)))) << (~(~u_input.a | vec3<u32>(55430u, u_input.a.x, 1u)) % vec3<u32>(32u))) ^ abs(vec3<u32>(_wgslsmith_div_u32(9418u & u_input.a.x, u_input.b >> (34725u % 32u)), ~50452u, 29137u));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -271f);
    var var_2 = !vec3<bool>(select(true, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_1.x, 29u)], 65431u) <= ~0u, false), true, any(vec4<bool>(select(global1.b, false, var_0.b), true, true, global1.b)));
    return i32(-1i) * -_wgslsmith_sub_i32(-45597i, _wgslsmith_mod_i32(-24613i, ~(-53174i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(global1.a, true);
    let var_1 = vec3<u32>(10327u, _wgslsmith_add_u32(~24368u, 0u), ~_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a.x), u_input.a), vec3<u32>(15664u, 36699u, 15170u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, _wgslsmith_f_op_f32(abs(615f)), _wgslsmith_f_op_f32(f32(-1f) * -891f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -401f, 807f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a, -1289f, 1420f)))))));
    global0 = array<u32, 29>();
    var var_3 = vec2<i32>(_wgslsmith_div_i32(-8549i, ~(arg_1 << (func_3(var_1, var_0) % 32u))), 4745i);
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2, _wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(global1.a, var_0.a, var_2.x)), vec3<bool>(true, false, var_0.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), var_0.a, -408f), vec3<f32>(-1644f, _wgslsmith_f_op_f32(trunc(1724f)), -453f)))), global1.b, min(var_1.x, max(35881u, ~countOneBits(u_input.b))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = firstTrailingBit(vec3<u32>(u_input.b, _wgslsmith_div_u32(74908u & _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_1.c, u_input.b)), 1u), ~(~1u)));
    let var_1 = func_4(vec3<bool>(true, -37186i >= firstTrailingBit(~(-2147483647i)), false), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -10906i, -1i), global2[_wgslsmith_index_u32(~arg_1.c, 31u)]));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6016u, 0u, 12944u, 104536u), vec4<u32>(25565u, global0[_wgslsmith_index_u32(arg_0.x, 29u)], arg_1.c, 4294967295u)), min(18484u, 0u)), var_0.x), global0[_wgslsmith_index_u32(countOneBits(896u), 29u)]), ~(~1u), ~(~_wgslsmith_mult_u32(4294967295u ^ arg_0.x, 12124u)));
    let var_3 = vec3<f32>(global1.a, arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(global1.a * -1977f))))));
    var var_4 = func_4(vec3<bool>(arg_1.b, all(vec2<bool>(select(true, global1.b, global1.b), true)), !(var_1.a.x <= var_1.a.x) || arg_1.b), abs(9128i));
    return Struct_2(-159f, !func_4(vec3<bool>(true, arg_1.a.x >= 1288f, true), 0i).b);
}

fn func_1() -> vec3<u32> {
    global3 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(global1.a - global1.a)))));
    let var_0 = func_5(vec2<u32>(_wgslsmith_sub_u32(u_input.b, ~(~20917u)), ~u_input.a.x), func_4(vec3<bool>(!global1.b, all(vec3<bool>(true, true, global1.b)), global1.b), func_2(vec4<f32>(global1.a, global1.a, global1.a, 1144f), _wgslsmith_f_op_f32(-global1.a), -1000f) << (u_input.a.x % 32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a - -2688f), _wgslsmith_f_op_f32(-global1.a))))), true);
    let var_2 = var_0;
    var_1 = var_0;
    return abs(_wgslsmith_mod_vec3_u32(~select(select(vec3<u32>(0u, 1u, 8762u), u_input.a, true), firstLeadingBit(u_input.a), select(vec3<bool>(false, true, var_0.b), vec3<bool>(false, true, false), vec3<bool>(global1.b, false, false))), vec3<u32>(abs(global0[_wgslsmith_index_u32(abs(5653u), 29u)]), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 7865u), 29u)], global0[_wgslsmith_index_u32(~func_3(vec3<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(107702u, 29u)]), var_2), 29u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    var var_0 = !any(select(!(!vec3<bool>(global1.b, global1.b, global1.b)), !select(vec3<bool>(true, global1.b, global1.b), vec3<bool>(false, global1.b, true), global1.b), true));
    let var_1 = select(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(max(vec4<i32>(1i, 2147483647i, 14795i, -1i), vec4<i32>(12848i, -1i, -25549i, -3655i)), vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(6927i, 12521i, -14133i, 31239i))), _wgslsmith_clamp_vec4_i32(-(vec4<i32>(83310i, 0i, 0i, 0i) >> (~vec4<u32>(37867u, 0u, 0u, u_input.b) % vec4<u32>(32u))), vec4<i32>(1i, -33352i, _wgslsmith_sub_i32(1i, firstTrailingBit(53541i)), -1492i), vec4<i32>(25445i, -reverseBits(28567i), -2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(11346i, 2147483647i), vec2<i32>(-66744i, -1i)), abs(~59746i))), any(!select(!vec4<bool>(false, global1.b, false, global1.b), vec4<bool>(global1.b, global1.b, true, global1.b), select(vec4<bool>(false, global1.b, true, global1.b), vec4<bool>(false, global1.b, false, global1.b), vec4<bool>(global1.b, global1.b, true, false)))));
    global0 = array<u32, 29>();
    var_0 = false;
    let var_2 = u_input.b >> (~(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16988u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13237u, 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(1u, 29u)], u_input.b), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(54845u, 29u)], u_input.b, u_input.b)), ~22445u) << (1u % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xx, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(1u, 29u)], 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.b, global0[_wgslsmith_index_u32(52756u, 29u)]))), func_1()), func_1().x, var_2, 2147483647i);
}

