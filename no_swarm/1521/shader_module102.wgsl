struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 24946u), vec2<u32>(44926u, 78872u), vec2<u32>(1u, 3411u), vec2<u32>(40809u, 72506u), vec2<u32>(1u, 0u), vec2<u32>(9836u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(21448u, 9383u), vec2<u32>(5977u, 7370u), vec2<u32>(19273u, 6823u), vec2<u32>(21341u, 64325u), vec2<u32>(13122u, 43620u), vec2<u32>(54110u, 4294967295u), vec2<u32>(41371u, 0u), vec2<u32>(0u, 4294967295u));

var<private> global2: vec3<f32> = vec3<f32>(-2394f, -192f, 836f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -756f), arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * global2.x), -106f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, global2.x, -440f, 1247f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1564f, arg_1.x, arg_1.x, global2.x)))))));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.x, arg_1.x, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-580f, _wgslsmith_f_op_f32(abs(1209f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f + global2.x) * -830f))) - _wgslsmith_f_op_vec3_f32(ceil(var_0.zyy)));
    global0 = firstTrailingBit(4294967295u);
    let var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.a, 0u) & (vec2<u32>(arg_3.a, 17165u) | vec2<u32>(19353u, u_input.a)), reverseBits(global1[_wgslsmith_index_u32(u_input.a, 16u)]))), firstTrailingBit(~(abs(vec3<u32>(4294967295u, u_input.a, arg_3.a)) << (~vec3<u32>(27890u, u_input.a, u_input.a) % vec3<u32>(32u)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(u_input.a), ~(~_wgslsmith_sub_u32(u_input.a, 0u)), firstTrailingBit(u_input.a)), 16u)], !arg_2 != ((arg_1.x >= _wgslsmith_f_op_f32(min(-717f, global2.x))) | all(select(vec2<bool>(false, false), vec2<bool>(false, true), arg_0.zz))));
    let var_2 = Struct_1(4294967295u);
    return var_0.x;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: u32) -> bool {
    global0 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(reverseBits(~u_input.a), firstLeadingBit(0u) ^ ~arg_2), 1u);
    let var_0 = -vec2<i32>(arg_1, _wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.e), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.d), u_input.b))));
    var var_1 = select(-19367i, 1i, _wgslsmith_mod_u32(~u_input.a, 1u) >= 22844u);
    global2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1723f))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false), vec2<f32>(1472f, arg_0), false, Struct_1(18961u)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(430f + -1000f) - 248f)))));
    global0 = ~u_input.a;
    return all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-898f, global2.x, global2.x, 1000f), vec4<f32>(global2.x, -410f, 1410f, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -130f, global2.x, global2.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1171f, -192f)), -1304f, 566f, 552f)), 30765i, func_4(_wgslsmith_f_op_f32(func_3(!vec3<bool>(arg_1.d, arg_1.d, arg_1.d), global2.zx, !arg_1.d, Struct_1(arg_1.b.x))), arg_2.x << (~u_input.a % 32u), ~_wgslsmith_add_u32(20857u, u_input.a), countOneBits(countOneBits(arg_1.b.x))) || (true != select(arg_1.d, arg_1.d, arg_1.d)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1402f, 492f, 404f, -262f) * vec4<f32>(global2.x, 245f, 286f, global2.x))))))), ~(~(vec2<i32>(u_input.c, 77813i) >> (arg_1.c % vec2<u32>(32u)))) | u_input.b.zx);
    let var_1 = Struct_3(arg_1.a, vec3<u32>(arg_0.x, 68930u, 31035u), countOneBits(vec2<u32>(max(arg_1.b.x, _wgslsmith_dot_vec2_u32(arg_0, global1[_wgslsmith_index_u32(63882u, 16u)])), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(16240u, u_input.a, 0u)), select(1u, 15414u, var_0.c)))), false);
    global0 = ~(~1u);
    return ~_wgslsmith_add_vec3_u32(var_1.b | (max(arg_1.b, var_1.b) | ~var_1.b), arg_1.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_u32(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, arg_1.a, arg_0.x, 86585u) >> (vec4<u32>(u_input.a, arg_1.a, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(93416u, 41816u, 45244u, u_input.a), vec4<u32>(52688u, arg_0.x, 4294967295u, u_input.a))), 16u)]), global1[_wgslsmith_index_u32(select(55283u, u_input.a, false), 16u)], countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a, 1u), ~select(arg_0.zz, arg_0.xy, false))));
    global0 = _wgslsmith_div_u32(4294967295u, ~arg_1.a);
    global0 = abs(arg_0.x);
    let var_1 = select(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_div_f32(-2019f, -588f)), u_input.d, _wgslsmith_div_u32(func_2(var_0, Struct_3(arg_1, vec3<u32>(4294967295u, arg_0.x, 5626u), global1[_wgslsmith_index_u32(var_0.x, 16u)], true), u_input.b.zz).x, countOneBits(u_input.a)), u_input.a), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))) && !all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f));
    return Struct_2(vec4<f32>(global2.x, _wgslsmith_f_op_f32(2115f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1904f - -1597f) - _wgslsmith_f_op_f32(-633f + global2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x + 899f))), 541f), -2147483647i, var_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1223f + global2.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.x, 240f)), global2.x)), _wgslsmith_f_op_f32(func_3(!vec3<bool>(var_1, var_1, true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global2.x) * vec2<f32>(global2.x, -950f)))), any(select(vec2<bool>(false, var_1), vec2<bool>(true, var_1), true)), Struct_1(countOneBits(4294967295u)))), 490f, _wgslsmith_f_op_f32(-global2.x)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.e), vec2<i32>(-3207i, _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(-2147483647i, u_input.c))), ~vec2<i32>(u_input.e, -24253i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: i32) -> vec2<f32> {
    let var_0 = func_5(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(53599u, u_input.a, 4294967295u), vec3<u32>(112718u, u_input.a, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 4294967295u))), func_2(vec2<u32>(21232u, 4294967295u) >> (global1[_wgslsmith_index_u32(u_input.a, 16u)] % vec2<u32>(32u)), Struct_3(Struct_1(u_input.a), vec3<u32>(1u, u_input.a, 1u), vec2<u32>(1u, u_input.a), false), ~u_input.b.xy)), Struct_1(1u));
    let var_1 = Struct_1(u_input.a);
    global1 = array<vec2<u32>, 16>();
    let var_2 = countOneBits(-arg_1.x);
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(12862u, var_1.a >> (75086u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(1u, 16u)], vec2<u32>(u_input.a, var_1.a)), 4294967295u, 0u), ~(~vec3<u32>(0u, 81488u, u_input.a)))), ~vec3<u32>(4294967295u, ~u_input.a >> (1u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, 30032u, var_1.a))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yz) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, global2.x) - vec2<f32>(760f, var_0.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(-var_0.d.wz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global2.zx))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = _wgslsmith_mod_u32(1u, 52668u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1((vec3<i32>(-1i) * -vec3<i32>(u_input.d, -1844i, u_input.d)) & vec3<i32>(~(-44405i), select(50103i, -32745i, true), 43987i), vec3<i32>(firstLeadingBit(u_input.c >> (4294967295u % 32u)), u_input.b.x, ~(-u_input.b.x)), u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global2.yy)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-637f - global2.x), -2447f) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global2.zz - global2.yy))))));
}

