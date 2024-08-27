struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(674f, -2445f, 1985f, 394f, 1167f, 2116f, -2718f, -747f, -1038f, 260f, -1150f, -1327f, -536f, 1019f, 380f, 156f, 1701f, -677f);

var<private> global1: array<f32, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    global0 = array<f32, 18>();
    let var_1 = arg_2.b.x;
    let var_2 = 0i;
    var var_3 = firstTrailingBit(u_input.b.yx);
    return Struct_2(true);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-34007i, u_input.a)), ~vec2<i32>(u_input.a, 2147483647i)), u_input.a), vec2<i32>(-11426i, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), -(u_input.a & u_input.a))));
    global1 = array<f32, 20>();
    let var_1 = Struct_3(func_1(countOneBits(u_input.b.x), Struct_3(func_1(u_input.b.x, Struct_3(Struct_2(false), Struct_1(vec3<i32>(-40555i, 2147483647i, u_input.a), vec4<bool>(true, true, false, true), u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(1u, 18u)], Struct_1(vec3<i32>(u_input.a, -2147483647i, -72209i), vec4<bool>(false, true, false, true), 43666u, 24017u), Struct_1(vec3<i32>(79342i, u_input.a, 2147483647i), vec4<bool>(true, false, false, true), 4294967295u, u_input.b.x)), Struct_1(vec3<i32>(2147483647i, u_input.a, var_0.x), vec4<bool>(true, false, false, true), 1u, 4294967295u)), Struct_1(-vec3<i32>(var_0.x, var_0.x, u_input.a), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yz), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52685u, 18u)])), Struct_1(select(vec3<i32>(u_input.a, var_0.x, u_input.a), vec3<i32>(26443i, 19050i, u_input.a), vec3<bool>(true, true, true)), vec4<bool>(true, false, true, true), ~u_input.b.x, firstLeadingBit(33457u)), Struct_1(vec3<i32>(0i, -2147483647i, u_input.a), vec4<bool>(true, true, true, true), select(0u, u_input.b.x, false), ~43437u)), Struct_1(abs(-vec3<i32>(var_0.x, u_input.a, -1i)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true)), u_input.b.x, max(abs(0u), ~0u))), Struct_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(2489i, 0i, 44169i, u_input.a), vec4<i32>(-3019i, -8899i, u_input.a, var_0.x)), -2147483647i, -_wgslsmith_div_i32(var_0.x, u_input.a)), !vec4<bool>(true, true, all(vec4<bool>(false, true, false, true)), select(false, false, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, select(4294967295u, u_input.b.x, false)), _wgslsmith_mult_vec2_u32(u_input.b.yy, abs(vec2<u32>(u_input.b.x, 78597u)))), u_input.b.x << (countOneBits(~1u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~u_input.b.x, 20u)]))), Struct_1(vec3<i32>(_wgslsmith_mult_i32(0i, ~1i), u_input.a, 1i), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, u_input.b.x >= 6453u, false), func_1(select(5696u, u_input.b.x, true), Struct_3(Struct_2(true), Struct_1(vec3<i32>(var_0.x, 0i, var_0.x), vec4<bool>(true, false, false, true), 0u, u_input.b.x), -575f, Struct_1(vec3<i32>(1191i, var_0.x, var_0.x), vec4<bool>(true, true, false, true), 1u, u_input.b.x), Struct_1(vec3<i32>(-2147483647i, var_0.x, 1i), vec4<bool>(false, true, false, false), u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(var_0.x, 0i, -1i), vec4<bool>(false, true, false, false), u_input.b.x, u_input.b.x)).a), ~reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.zx)), ~(u_input.b.x | ~97249u)), Struct_1(abs(countOneBits(vec3<i32>(1i, u_input.a, 1i))), vec4<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), !any(vec3<bool>(true, false, false)), (1544f == global0[_wgslsmith_index_u32(43279u, 18u)]) || true, true), firstTrailingBit(reverseBits(0u)), ~firstTrailingBit(u_input.b.x)));
    var var_2 = var_1.e;
    var var_3 = var_1.b.a.x;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = arg_2;
    global0 = array<f32, 18>();
    var var_1 = u_input.b;
    var var_2 = select(!select(vec4<bool>(!var_0.a, true || var_0.a, true, !var_0.a), vec4<bool>(true, all(vec2<bool>(arg_2.a, var_0.a)), true, true), vec4<bool>(global0[_wgslsmith_index_u32(55801u, 18u)] < -710f, arg_2.a, arg_2.a && false, var_0.a & true)), !select(!vec4<bool>(true, false, arg_2.a, true), !vec4<bool>(true, false, arg_2.a, arg_2.a), false), select(!(!func_3()), true, true));
    let var_3 = Struct_3(arg_2, Struct_1(abs(vec3<i32>(u_input.a, abs(9817i), _wgslsmith_dot_vec2_i32(vec2<i32>(-209i, u_input.a), vec2<i32>(u_input.a, 1i)))), vec4<bool>(!arg_2.a, true, any(!vec4<bool>(arg_2.a, false, false, var_2.x)), false), ~(~u_input.b.x) << (~(~arg_0) % 32u), select(abs(50968u) ^ u_input.b.x, 17164u, -329f == _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 20u)]))), global1[_wgslsmith_index_u32(arg_1.x, 20u)], Struct_1(~vec3<i32>(u_input.a, -2147483647i, 2147483647i) ^ vec3<i32>(~53453i, firstLeadingBit(-2147483647i), u_input.a | 1i), vec4<bool>(var_2.x, arg_2.a, true, !arg_2.a), ~20184u, arg_0), Struct_1(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a) >> (u_input.b % vec3<u32>(32u)), vec3<i32>(1i, -67967i, u_input.a) & vec3<i32>(u_input.a, 50820i, -12352i))), select(select(vec4<bool>(var_2.x, var_0.a, var_2.x, var_2.x), select(vec4<bool>(var_2.x, false, true, var_0.a), vec4<bool>(var_2.x, false, arg_2.a, var_2.x), vec4<bool>(arg_2.a, var_0.a, var_2.x, var_0.a)), !vec4<bool>(var_2.x, true, false, false)), select(select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(arg_2.a, true, var_2.x, false), false), vec4<bool>(var_2.x, false, true, var_2.x), global1[_wgslsmith_index_u32(113216u, 20u)] >= global0[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(true, !var_0.a, any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), true)), _wgslsmith_dot_vec3_u32(vec3<u32>(max(1u, arg_0), _wgslsmith_dot_vec2_u32(var_1.xx, vec2<u32>(arg_0, u_input.b.x)), firstLeadingBit(4294967295u)), arg_1), firstLeadingBit(~arg_1.x)));
    return firstTrailingBit(vec2<i32>(~_wgslsmith_sub_i32(var_3.e.a.x, i32(-1i) * -2147483647i), firstLeadingBit(select(-1i, ~30663i, !var_3.d.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = Struct_2(true);
    var var_2 = ~(-func_2(u_input.b.x, ~vec3<u32>(77039u, u_input.b.x, u_input.b.x), func_1(abs(0u), Struct_3(Struct_2(var_1.a), Struct_1(vec3<i32>(0i, 38505i, u_input.a), vec4<bool>(true, false, var_1.a, true), 4294967295u, 24233u), -931f, Struct_1(vec3<i32>(u_input.a, u_input.a, -8181i), vec4<bool>(var_1.a, false, true, true), 0u, u_input.b.x), Struct_1(vec3<i32>(9735i, u_input.a, 0i), vec4<bool>(false, false, false, var_1.a), u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(-10055i, u_input.a, 2147483647i), vec4<bool>(false, var_1.a, var_1.a, var_1.a), u_input.b.x, u_input.b.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(40782u, 18u)], global0[_wgslsmith_index_u32(54218u, 18u)], -2779f))) * vec3<f32>(-2081f, _wgslsmith_f_op_f32(step(447f, -128f)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x, 18u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)], -1339f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1769f, global1[_wgslsmith_index_u32(30358u, 20u)], -381f))) - vec3<f32>(304f, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(~1u, 18u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-950f, global0[_wgslsmith_index_u32(7487u, 18u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20740u, 20u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1066f, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(13886u, 18u)]) + vec3<f32>(-790f, 1000f, global0[_wgslsmith_index_u32(0u, 18u)])), vec3<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], 449f), vec3<bool>(false, var_1.a, var_1.a)))))), !(!vec3<bool>(func_1(u_input.b.x, Struct_3(Struct_2(var_1.a), Struct_1(vec3<i32>(18314i, var_2.x, var_2.x), vec4<bool>(true, true, var_1.a, true), 64736u, 33196u), 894f, Struct_1(vec3<i32>(-1i, 1i, u_input.a), vec4<bool>(var_1.a, false, false, var_1.a), u_input.b.x, 29595u), Struct_1(vec3<i32>(u_input.a, 13755i, u_input.a), vec4<bool>(true, false, false, var_1.a), 0u, 0u)), Struct_1(vec3<i32>(var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_1.a, var_1.a, var_1.a), 1u, u_input.b.x)).a, true != var_1.a, !var_1.a))));
    global1 = array<f32, 20>();
    var_1 = func_1(1u, Struct_3(func_1(1u, Struct_3(func_1(2948u, Struct_3(Struct_2(true), Struct_1(vec3<i32>(u_input.a, var_2.x, var_2.x), vec4<bool>(false, var_1.a, true, false), u_input.b.x, 7271u), 1299f, Struct_1(vec3<i32>(var_2.x, u_input.a, 11067i), vec4<bool>(false, false, var_1.a, false), u_input.b.x, 39036u), Struct_1(vec3<i32>(41878i, 21698i, -2816i), vec4<bool>(false, false, var_1.a, true), 0u, 1u)), Struct_1(vec3<i32>(1i, var_2.x, var_2.x), vec4<bool>(var_1.a, false, false, var_1.a), u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(17318i, u_input.a, var_2.x), vec4<bool>(false, var_1.a, true, true), u_input.b.x, 1u), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 337f)), Struct_1(vec3<i32>(0i, 2147483647i, 47802i), vec4<bool>(false, var_1.a, false, var_1.a), 0u, u_input.b.x), Struct_1(vec3<i32>(var_2.x, var_2.x, -19175i), vec4<bool>(var_1.a, var_1.a, var_1.a, false), u_input.b.x, 48043u)), Struct_1(vec3<i32>(-8383i, 2147483647i, -2147483647i), vec4<bool>(true, true, true, true), max(35979u, u_input.b.x), ~u_input.b.x)), Struct_1(firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, 17398i)), !vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), u_input.b.x, u_input.b.x), var_3.x, Struct_1(abs(-vec3<i32>(2147483647i, 2147483647i, -1i)), select(!vec4<bool>(true, var_1.a, false, false), vec4<bool>(var_1.a, var_1.a, var_1.a, false), !vec4<bool>(var_1.a, true, false, var_1.a)), ~firstLeadingBit(45921u), 0u), Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, -7566i, u_input.a), vec3<i32>(-24550i, var_2.x, u_input.a)), vec4<bool>(var_2.x < u_input.a, var_1.a, var_1.a, all(vec3<bool>(var_1.a, var_1.a, var_1.a))), 1u, 16338u)), Struct_1(vec3<i32>(-u_input.a ^ 1i, i32(-1i) * -17908i, u_input.a), vec4<bool>(all(select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_1.a, true, true), var_1.a)), true, true, !var_1.a), 15155u, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(countOneBits(0i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, -2147483647i, var_2.x, -10110i)), select(vec4<i32>(u_input.a, var_2.x, 2067i, u_input.a), vec4<i32>(-2147483647i, var_2.x, var_2.x, 23686i), var_1.a)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, u_input.a, 1i, 2147483647i), vec4<i32>(var_2.x, -29550i, -13712i, u_input.a)), ~vec4<i32>(2147483647i, -1855i, var_2.x, -58466i), var_1.a || var_1.a)), _wgslsmith_mult_i32(reverseBits(~var_2.x), ~var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(286f, -663f) * global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), -305f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 20u)]) + _wgslsmith_f_op_f32(482f - global1[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2566f, 1963f)))));
}

