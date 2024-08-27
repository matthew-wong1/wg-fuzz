struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec4<i32>;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(global2.x * global2.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1045f), 218f, _wgslsmith_f_op_f32(step(1218f, var_0))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 990f, 482f)))))), !global0[_wgslsmith_index_u32(~select(4294967295u, 1u, true) & 12680u, 12u)], 0u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~_wgslsmith_sub_u32(~0u, ~72922u), ~(~(~0u))), 12u)], 1u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(var_1.a, var_1.a)), var_1.a)), true, var_1.c, all(select(!select(vec4<bool>(var_1.d, false, global0[_wgslsmith_index_u32(var_1.c, 12u)], true), vec4<bool>(var_1.d, true, false, var_1.d), vec4<bool>(global0[_wgslsmith_index_u32(var_1.e, 12u)], global0[_wgslsmith_index_u32(var_1.e, 12u)], true, false)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.c, 12u)], true, global0[_wgslsmith_index_u32(74975u, 12u)], global0[_wgslsmith_index_u32(47013u, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.e, 12u)], global0[_wgslsmith_index_u32(21059u, 12u)], var_1.b, var_1.d), vec4<bool>(global0[_wgslsmith_index_u32(var_1.c, 12u)], true, true, global0[_wgslsmith_index_u32(var_1.e, 12u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.e, 12u)], var_1.d, global0[_wgslsmith_index_u32(var_1.e, 12u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.e, 12u)], true, global0[_wgslsmith_index_u32(43787u, 12u)], true), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(19974u, 12u)])), select(vec4<bool>(var_1.b, global0[_wgslsmith_index_u32(91300u, 12u)], true, global0[_wgslsmith_index_u32(58424u, 12u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1821u, 12u)], true, var_1.b), false)), all(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.c, 12u)], var_1.d, var_1.d), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.c, 12u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], var_1.b))))), 1u);
    return !all(select(select(vec3<bool>(var_2.d, false, var_2.b), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, true), vec3<bool>(var_1.b, false, false), false), vec3<bool>(true, false, false)), select(select(vec3<bool>(var_1.b, true, false), vec3<bool>(false, var_1.b, var_2.b), vec3<bool>(var_2.b, var_2.b, var_2.b)), vec3<bool>(global0[_wgslsmith_index_u32(var_2.e, 12u)], false, false), var_1.d), !select(vec3<bool>(var_2.d, true, false), vec3<bool>(global0[_wgslsmith_index_u32(12024u, 12u)], true, var_2.d), vec3<bool>(var_2.b, false, var_1.d))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(1048f, 1692f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -421f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(-global2.x))), !(!func_3()), _wgslsmith_sub_u32(~(~1u), 1u), any(!(!vec3<bool>(global0[_wgslsmith_index_u32(31950u, 12u)], global0[_wgslsmith_index_u32(25056u, 12u)], global0[_wgslsmith_index_u32(15048u, 12u)]))), 1u);
    let var_1 = vec4<i32>(-28652i, i32(-1i) * -1i, ~firstLeadingBit(global1.x), global1.x);
    global1 = -select(max(select(u_input.b, vec4<i32>(-1i, global1.x, global1.x, 2147483647i), select(vec4<bool>(false, global0[_wgslsmith_index_u32(41665u, 12u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], true, var_0.b, global0[_wgslsmith_index_u32(0u, 12u)]), false)), ~vec4<i32>(global1.x, var_1.x, 1i, 71712i) ^ ~vec4<i32>(u_input.a.x, -2147483647i, 1i, var_1.x)), var_1 ^ u_input.b, !vec4<bool>(var_0.b, any(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.e, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], true)), 4294967295u > var_0.c, global0[_wgslsmith_index_u32(var_0.c, 12u)]));
    global0 = array<bool, 12>();
    var var_2 = Struct_1(var_0.a, global0[_wgslsmith_index_u32(min(~(~(~42586u)), ~(~(~var_0.e))), 12u)], var_0.e, true, max(~(~(~60194u)), var_0.e));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mod_u32(0u, 19939u >> (1u % 32u)), 12096u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 31328u, 909u), vec4<u32>(1u, 1u, 98117u, 125479u))));
    let var_1 = vec4<bool>(false, select((false | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 5092u, 4294967295u)), 12u)]) || false, func_2(), !global0[_wgslsmith_index_u32(abs(32218u), 12u)]), true, all(!vec4<bool>(false, false, all(vec4<bool>(true, global0[_wgslsmith_index_u32(28057u, 12u)], true, true)), all(vec4<bool>(false, global0[_wgslsmith_index_u32(32811u, 12u)], global0[_wgslsmith_index_u32(11390u, 12u)], global0[_wgslsmith_index_u32(var_0.x, 12u)])))));
    global2 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(trunc(global2.x))));
    var var_2 = true;
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.x, 715f), _wgslsmith_f_op_f32(global2.x - 2298f), _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, global2.x, 224f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) - vec3<f32>(global2.x, global2.x, -535f))))), true, 40244u, global0[_wgslsmith_index_u32(~(~var_0.x) ^ 4294967295u, 12u)], var_0.x), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(247f, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1611f, -947f, global2.x) * vec3<f32>(380f, -676f, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(898f * -528f), _wgslsmith_f_op_f32(-global2.x))), false, 0u, false, 54163u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, -1665f), vec3<f32>(global2.x, -189f, global2.x), var_1.www)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1439f, 1000f, 490f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 314f) - vec3<f32>(global2.x, -808f, -198f)))), !any(!var_1.ww), var_0.x | var_0.x, ~_wgslsmith_div_u32(var_0.x, var_0.x) == abs(countOneBits(9679u)), ~firstTrailingBit(_wgslsmith_add_u32(var_0.x, var_0.x))), !vec3<bool>(var_1.x, !var_1.x, !any(var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1420f), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, -405f), _wgslsmith_f_op_f32(round(656f))))));
    return var_3.a;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = !(!(!vec3<bool>(arg_2.d == global0[_wgslsmith_index_u32(20654u, 12u)], global0[_wgslsmith_index_u32(~arg_2.e, 12u)], arg_2.b)));
    var var_1 = Struct_2(arg_2, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1160f * 304f) - arg_1.x), arg_1.x, global2.x), false, 122298u, arg_2.b, min(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, arg_2.c, arg_2.c), ~vec4<u32>(arg_2.c, arg_2.e, arg_2.e, 0u)))), func_1(), select(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.c, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], false), vec3<bool>(arg_2.b, false, global0[_wgslsmith_index_u32(arg_2.e, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], false, false)), vec3<bool>(var_0.x, arg_2.d, false), !vec3<bool>(false, true, arg_2.d)), vec3<bool>(true, any(!var_0.zx), firstLeadingBit(1u) <= _wgslsmith_mult_u32(arg_2.c, 4294967295u)), arg_2.d || (_wgslsmith_f_op_f32(arg_1.x * 1000f) <= -2750f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 430f, arg_2.a.x, _wgslsmith_f_op_f32(round(arg_0)))))));
    global1 = ~abs(_wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(-19466i, -77279i, global1.x, 0i), _wgslsmith_add_vec4_i32(u_input.b, u_input.b))));
    let var_2 = vec4<bool>(true, var_1.b.b, true, false);
    var var_3 = -1i;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = max(u_input.b, _wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.b.x, global1.x, global1.x, -20433i) << (vec4<u32>(77764u, 23823u, 4294967295u, 33718u) % vec4<u32>(32u))), select(vec4<i32>(u_input.d.x, u_input.b.x, u_input.c, 1i), vec4<i32>(global1.x, u_input.c, 2147483647i, 34143i), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(44614u, 12u)], global0[_wgslsmith_index_u32(103170u, 12u)])))) | (-(-u_input.b >> (reverseBits(vec4<u32>(27060u, 1u, 4294967295u, 25440u)) % vec4<u32>(32u))) & vec4<i32>(~(u_input.b.x ^ u_input.b.x), global1.x, ~(-u_input.b.x), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(710f, global2.x, global2.x), vec3<f32>(global2.x, -756f, 1046f), vec3<bool>(false, true, true))), func_1())));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1113f, global2.x))), _wgslsmith_f_op_vec2_f32(sign(func_1().a.yz)), !(!global0[_wgslsmith_index_u32(4294967295u, 12u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(-1192f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(trunc(global2.x)))), global2.x));
}

