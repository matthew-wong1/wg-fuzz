struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: i32 = 815i;

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(1u, 8330u, 4294967295u, 0u));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(27790i, -9195i, 1i, -36760i)), 3806u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global0 = _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.c, global2.a.a.zw), arg_0.a.a.x);
    let var_0 = global2.a.a.zy;
    let var_1 = _wgslsmith_div_i32(~(-10839i), 2147483647i);
    let var_2 = vec4<i32>(-(~(u_input.a << (59026u % 32u)) >> ((global2.b & min(arg_0.b, arg_0.b)) % 32u)), _wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(var_0.x & -2147483647i, 2147483647i >> (global2.b % 32u))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0.a.a, vec4<i32>(var_1, 31402i, -77858i, 31355i)), ~global2.a.a)), arg_0.a.a.x, -19645i ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-14887i), global2.a.a.x), var_0.x));
    let var_3 = arg_0.a;
    return _wgslsmith_sub_vec3_u32(~vec3<u32>(~58018u, _wgslsmith_sub_u32(arg_0.b, 0u) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.b, 21718u, 34181u), vec4<u32>(global2.b, global2.b, 0u, global2.b)), arg_0.b & ~arg_0.b), vec3<u32>(global2.b, ~(42433u ^ global2.b), 8984u) << (reverseBits(~(vec3<u32>(global2.b, 0u, arg_0.b) ^ vec3<u32>(1u, arg_0.b, global2.b))) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1;
    let var_1 = ~_wgslsmith_mod_vec4_u32(min(reverseBits(vec4<u32>(global2.b, global2.b, 49072u, 1u)), ~global1[_wgslsmith_index_u32(func_3(arg_1).x, 2u)]), min(vec4<u32>(121039u >> (arg_0.x % 32u), 1u, abs(arg_1.b), global2.b), _wgslsmith_mod_vec4_u32(~global1[_wgslsmith_index_u32(95461u, 2u)], global1[_wgslsmith_index_u32(arg_1.b, 2u)])));
    let var_2 = !vec4<bool>(!(1i > max(var_0.a.a.x, u_input.b.x)), -36941i >= (arg_1.a.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-38373i, 0i), u_input.b)), false, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)));
    var var_3 = var_1.yz;
    var var_4 = false;
    return ~(1u | _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(var_1.wzz, var_1.zzz), firstLeadingBit(_wgslsmith_clamp_u32(33759u, var_1.x, arg_1.b))));
}

fn func_2() -> i32 {
    global0 = global2.a.a.x;
    var var_0 = Struct_2(global2.a, global2.b);
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(30082u, 12596u, var_0.b, var_0.b)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, 7266u, 0u), select(global1[_wgslsmith_index_u32(global2.b, 2u)], global1[_wgslsmith_index_u32(var_0.b, 2u)], false))), (_wgslsmith_mult_u32(global2.b, 48617u) & ~3292u) & 87266u, 1u), vec4<u32>(8311u, 28265u, var_0.b, func_4(func_3(Struct_2(var_0.a, var_0.b)) << (vec3<u32>(var_0.b, 4294967295u, global2.b) % vec3<u32>(32u)), Struct_2(Struct_1(var_0.a.a), _wgslsmith_mult_u32(global2.b, var_0.b)))));
    let var_2 = Struct_2(Struct_1(global2.a.a), ~0u);
    var var_3 = -932f;
    return -var_0.a.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    let var_0 = 1933f;
    let var_1 = Struct_1(-(~vec4<i32>(-55228i, global2.a.a.x, global2.a.a.x, global2.a.a.x) | vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(arg_0.a.xyx, vec3<i32>(-2147483647i, arg_0.a.x, arg_0.a.x)), -2147483647i >> (global2.b % 32u), func_2())));
    global1 = array<vec4<u32>, 2>();
    let var_2 = !vec4<bool>(all(vec2<bool>(true, true)), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), false, (~20187u > _wgslsmith_mod_u32(global2.b, 4294967295u)) && (true || all(vec4<bool>(true, false, true, true))));
    let var_3 = global2.b;
    return ~(~countOneBits(select(vec4<u32>(global2.b, 1u, 4294967295u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(2008u, 0u, global2.b, 17400u), global1[_wgslsmith_index_u32(global2.b, 2u)]), var_2)));
}

fn func_5(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-max(select(global2.a.a, vec4<i32>(-5642i, -1i, -10322i, 76662i), vec4<bool>(true, true, false, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, global2.a.a.x, -2147483647i, 9778i), vec4<i32>(32973i, u_input.b.x, 1i, -39039i)))), _wgslsmith_dot_vec4_u32(arg_0, ~(min(global1[_wgslsmith_index_u32(global2.b, 2u)], vec4<u32>(1194u, arg_0.x, global2.b, global2.b)) << (arg_0 % vec4<u32>(32u)))));
    global0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(global2.a.a.x, 1i, 8969i, -50378i) >> (vec4<u32>(var_0.b, ~12330u, var_0.b & global2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 0u, 49934u), vec3<u32>(var_0.b, var_0.b, 0u))) % vec4<u32>(32u)), vec4<i32>(func_2(), 69747i, _wgslsmith_add_i32(-global2.a.a.x, _wgslsmith_mod_i32(26538i, u_input.a)), reverseBits(0i))));
    let var_1 = ~countOneBits(abs(~vec2<u32>(var_0.b, 30397u))) & ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, 16550u), abs(vec2<u32>(var_0.b, global2.b))), arg_0.zx);
    global0 = ~(~abs(global2.a.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-966f, -1481f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(step(527f, 1159f)))), _wgslsmith_f_op_f32(select(181f, -1000f, all(vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f))))));
    return Struct_2(global2.a, abs(56990u));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> vec4<bool> {
    var var_0 = vec4<u32>(global2.b, ~_wgslsmith_mod_u32(62574u, global2.b), ~_wgslsmith_sub_u32(arg_0, 103908u >> (global2.b % 32u)), _wgslsmith_mult_u32(arg_1.b, 24277u));
    global2 = func_5(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(min(1u, 4294967295u) ^ arg_0, 30358u)), 2u)]);
    let var_1 = ~var_0.x;
    var var_2 = arg_1;
    global1 = array<vec4<u32>, 2>();
    return vec4<bool>(false || all(vec3<bool>(arg_2.x, true, arg_1.a.a.x <= -1i)), arg_2.x, true, u_input.a < _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1.a.a.x, var_2.a.a.x) >> (global2.b % 32u), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_6(abs(select(global2.b, global2.b, true)), func_5(func_1(Struct_1(vec4<i32>(0i, 2147483647i, -23500i, global2.a.a.x)), ~2147483647i)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), _wgslsmith_dot_vec4_i32(vec4<i32>(6025i, u_input.b.x, -1i, global2.a.a.x), global2.a.a) > 1i), ~(~_wgslsmith_sub_u32(global2.b, 84975u))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, -1000f, 2015f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-3023f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1116f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -640f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-912f, -1303f)) * _wgslsmith_f_op_f32(max(-203f, -1000f)))), -715f));
    let var_2 = func_5(_wgslsmith_div_vec4_u32(~vec4<u32>(20619u, 1u, 22270u, min(63781u, global2.b)), global1[_wgslsmith_index_u32(0u, 2u)])).a;
    global1 = array<vec4<u32>, 2>();
    global0 = -1i;
    global1 = array<vec4<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(8018i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.x))))));
}

