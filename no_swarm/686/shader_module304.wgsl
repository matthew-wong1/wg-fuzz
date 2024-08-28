struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<vec4<u32>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = !vec3<bool>(abs(global0[_wgslsmith_index_u32(~23689u, 6u)]) > 14599i, any(vec2<bool>(true, true)) == true, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), any(vec2<bool>(true, false)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(countOneBits(-global0[_wgslsmith_index_u32(0u, 6u)]), global0[_wgslsmith_index_u32(u_input.a.x, 6u)] >> (4294967295u % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(66357i, -53801i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(41693u, u_input.a.x), 6u)])), select(var_0.yx, vec2<bool>(true, var_0.x), !(!var_0.xy)), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-551f, -965f)), _wgslsmith_f_op_f32(f32(-1f) * -140f)), abs(vec4<u32>(4294967295u, 4982u, u_input.a.x, ~(20408u >> (1u % 32u)))), vec4<f32>(-561f, -184f, -419f, -534f), vec4<f32>(-834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1067f, -284f))), _wgslsmith_f_op_f32(f32(-1f) * -1647f), _wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(f32(-1f) * -1566f))));
    global0 = array<i32, 6>();
    return !var_1.a.b.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: i32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(arg_3, global0[_wgslsmith_index_u32(40177u, 6u)])), (-vec2<i32>(3954i, arg_3) << ((vec2<u32>(1u, 4294967295u) | u_input.a.yy) % vec2<u32>(32u))) << (~vec2<u32>(2474u, 0u) % vec2<u32>(32u))), !vec2<bool>(any(!vec3<bool>(arg_1, true, arg_1)), arg_1), all(!(!vec3<bool>(arg_1, false, arg_1))), -526f, -1506f);
    global0 = array<i32, 6>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-48420i, global0[_wgslsmith_index_u32(~u_input.a.x, 6u)], -var_0.a, -5397i), select(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 1i, 1i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)], var_0.a, 67975i), vec4<i32>(-32676i, 0i, -2762i, -1i)), any(vec2<bool>(arg_1, true)))), !var_0.b, func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1098f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_0.d)), _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 63448u))), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 5519u), ~1u, reverseBits(5647u), min(13864u, 0u)) & ~(~global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 238f, 1493f, arg_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-611f, arg_2, arg_2, -101f), vec4<f32>(-874f, 1525f, arg_2, arg_0.x), vec4<bool>(var_0.c, arg_1, var_0.c, arg_1))), var_0.c)) - vec4<f32>(-171f, _wgslsmith_f_op_f32(318f * -101f), -184f, 1f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 656f, 273f, var_0.d) + vec4<f32>(var_0.e, arg_0.x, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -300f, arg_2, var_0.e)))));
    var_1 = Struct_2(Struct_1(max(var_0.a, var_1.a.a) << (_wgslsmith_dot_vec4_u32(var_1.b ^ global1[_wgslsmith_index_u32(u_input.a.x, 21u)], min(vec4<u32>(u_input.a.x, var_1.b.x, u_input.a.x, var_1.b.x), vec4<u32>(u_input.a.x, u_input.a.x, 51294u, var_1.b.x))) % 32u), vec2<bool>(true, true), var_0.b.x, 245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(sign(var_1.a.d)))), vec4<u32>(_wgslsmith_add_u32(var_1.b.x, firstLeadingBit(u_input.a.x)), select(33507u, 1u, var_1.a.b.x), ~var_1.b.x, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(325f, arg_2, -697f, -329f)))) + vec4<f32>(-604f, 1000f, _wgslsmith_f_op_f32(max(arg_2, 1322f)), -1141f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d * arg_2))), -2152f))));
    let var_2 = var_0.b.x;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -749f, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -591f)))), arg_0));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), -2154f, _wgslsmith_f_op_f32(2697f * 669f))))), _wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -222f))), 1f), all(vec3<bool>(false, true, func_3())), 292f, arg_0.x)));
    let var_1 = vec2<u32>(select(~_wgslsmith_mult_u32(u_input.a.x | u_input.a.x, u_input.a.x), u_input.a.x, true), ~u_input.a.x);
    global0 = array<i32, 6>();
    let var_2 = Struct_2(Struct_1(-8755i ^ -_wgslsmith_dot_vec2_i32(arg_0.xz, vec2<i32>(arg_0.x, arg_0.x)), vec2<bool>(any(vec3<bool>(true, false, true)), true), (_wgslsmith_f_op_vec3_f32(func_4(var_0, false, var_0.x, 2147483647i)).x <= _wgslsmith_f_op_f32(step(var_0.x, 848f))) || true, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 26216u, u_input.a.x, 38122u), global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, 89319u, 0u, u_input.a.x), max(vec4<u32>(var_1.x, 19190u, 0u, var_1.x), vec4<u32>(29221u, var_1.x, u_input.a.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1962f, var_0.x, -288f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1083f, var_0.x, -674f, -628f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_0.x, -1000f, 2584f), vec4<f32>(var_0.x, var_0.x, -336f, var_0.x)))))));
    let var_3 = Struct_3(var_2.b.zyz, i32(-1i) * -7427i);
    return Struct_3(vec3<u32>(select(var_1.x | ~var_3.a.x, var_3.a.x, true), var_1.x, 37267u), _wgslsmith_add_i32(3437i << (abs(u_input.a.x) % 32u), arg_0.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(~vec3<i32>(arg_1.x, -global0[_wgslsmith_index_u32(arg_0.a.x, 6u)] | -61163i, -arg_0.b));
    global0 = array<i32, 6>();
    var var_1 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), true);
    var var_2 = select(var_1.yyx, var_1.yxw, select(var_1.yzw, vec3<bool>(any(vec2<bool>(false, var_1.x)), var_1.x, true), true));
    let var_3 = func_2(vec3<i32>(~(~_wgslsmith_sub_i32(var_0.b, 36472i)), -7101i, arg_0.b >> (~u_input.a.x % 32u)));
    return Struct_1(global0[_wgslsmith_index_u32(var_0.a.x ^ ~_wgslsmith_div_u32(_wgslsmith_add_u32(var_3.a.x, u_input.a.x), 0u), 6u)], var_1.zw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f))) >= _wgslsmith_f_op_f32(ceil(765f)), _wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-903f)), -995f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1244f)), 2159f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1267f, -292f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> bool {
    global0 = array<i32, 6>();
    var var_0 = arg_2.a;
    var_0 = func_5(func_2(reverseBits(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), ~(-30520i), ~arg_1))), vec4<i32>(_wgslsmith_sub_i32(arg_0.a, 1i & global0[_wgslsmith_index_u32(~u_input.a.x, 6u)]), arg_2.a.a, _wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(24966i, 1i, -2147483647i), vec3<i32>(var_0.a, 15599i, global0[_wgslsmith_index_u32(29521u, 6u)]), vec3<i32>(arg_2.a.a, arg_1, arg_1)), -vec3<i32>(2147483647i, arg_2.a.a, arg_0.a), false), vec3<i32>(arg_0.a, arg_1 << (arg_2.b.x % 32u), arg_1)), -58138i));
    global0 = array<i32, 6>();
    let var_1 = ~firstLeadingBit(~26694u);
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(vec3<u32>(u_input.a.x, min(0u, 8246u), ~u_input.a.x)));
    let var_1 = 2147483647i;
    let var_2 = vec4<bool>(!(true | func_1(Struct_1(-9657i, vec2<bool>(true, false), true, -198f, -715f), max(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), Struct_2(Struct_1(var_1, vec2<bool>(false, true), false, 1697f, 1000f), global1[_wgslsmith_index_u32(u_input.a.x, 21u)], vec4<f32>(725f, -776f, -1659f, 487f), vec4<f32>(1256f, 224f, -1583f, -783f)))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1635f)) * _wgslsmith_f_op_f32(f32(-1f) * -384f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1912f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -292f)))) & !any(func_5(Struct_3(u_input.a, 1i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 6u)], -12499i, global0[_wgslsmith_index_u32(var_0.x, 6u)])).b), true, ~1u == max(select(var_0.x ^ var_0.x, ~2035u, false), var_0.x >> (0u % 32u)));
    global1 = array<vec4<u32>, 21>();
    var var_3 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1, -41513i, global0[_wgslsmith_index_u32(19455u, 6u)], 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, 98111i, var_1), vec4<i32>(var_1, global0[_wgslsmith_index_u32(12216u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], -1i))), select(vec2<bool>(all(var_2), false == var_2.x), vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, true)), false, 405f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-436f, _wgslsmith_f_op_f32(floor(-1322f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-971f)), _wgslsmith_div_f32(-1371f, 1537f))))), vec4<u32>(1u, u_input.a.x, u_input.a.x, max(u_input.a.x & 4565u, ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f), 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(198f * 528f))), 813f, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(819f, -437f, 434f))), true, _wgslsmith_f_op_f32(689f * -228f), 0i)).x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, 2157f, 366f, -1943f) * vec4<f32>(524f, 652f, 1488f, 273f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1263f, 454f, 1000f, 610f) - vec4<f32>(2703f, -1392f, -1282f, -858f))) * vec4<f32>(_wgslsmith_f_op_f32(378f - 1000f), _wgslsmith_div_f32(1291f, 1013f), _wgslsmith_f_op_f32(f32(-1f) * -341f), 479f))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_3.c.xz);
    let var_5 = func_2(firstLeadingBit(max(vec3<i32>(~(-8631i), var_3.a.a, ~var_3.a.a), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 2147483647i, -2021i) >> (vec3<u32>(52253u, var_3.b.x, 25678u) % vec3<u32>(32u)), vec3<i32>(2147483647i, -2147483647i, -24325i))))).b;
    let var_6 = _wgslsmith_f_op_vec3_f32(round(var_3.c.zxz));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(-224f + _wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f) - var_4.x))));
}

