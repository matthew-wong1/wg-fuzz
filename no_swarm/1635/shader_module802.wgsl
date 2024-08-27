struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<u32, 10> = array<u32, 10>(1u, 24459u, 4294967295u, 49003u, 2922u, 1u, 42726u, 14192u, 0u, 53530u);

var<private> global2: array<Struct_3, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(337f, 714f, arg_0.x) + vec3<f32>(arg_0.x, -858f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(877f, -1745f, 277f)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), 1233f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -598f);
    let var_2 = 4294967295u;
    global0 = array<u32, 23>();
    var_1 = arg_0.x;
    return any(vec4<bool>(arg_3.x < abs(arg_2), false, all(vec3<bool>(true, true, u_input.b.x > arg_3.x)), select(true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true))) | false));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> Struct_3 {
    let var_0 = 0i;
    return Struct_3(Struct_2(Struct_1(u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(43262u, u_input.a.x)), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]) | vec2<u32>(global1[_wgslsmith_index_u32(arg_2, 10u)], 78729u)), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(424f, 1617f) - _wgslsmith_div_f32(-1391f, -207f)), 1i)), any(vec4<bool>(!(!arg_1), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, 1176f) - vec2<f32>(-1000f, -694f)), ~u_input.a, var_0, abs(vec3<i32>(0i, -39559i, 2147483647i))), false, -var_0 < countOneBits(var_0))), Struct_1(arg_0, ~u_input.a.x, u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-147f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1787f)) + 640f)), abs(_wgslsmith_dot_vec3_i32(u_input.b.zyx, vec3<i32>(arg_0.x, 2147483647i, u_input.b.x) & vec3<i32>(arg_0.x, var_0, 46124i)))), Struct_1(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 0i, -27760i), vec4<i32>(-13310i, -2147483647i, u_input.b.x, 41960i)), arg_0), ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)] & 0u, 10u)], 10u)], 10u)], 18099i, 1768f, -3969i), Struct_2(Struct_1(vec4<i32>(-47346i ^ u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, -10032i, u_input.b.x, var_0)), _wgslsmith_mult_i32(arg_0.x, var_0), 25411i), _wgslsmith_sub_u32(arg_2, 1u), -1i, -518f, var_0)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = !(!vec2<bool>(arg_0.b, !(1416f >= arg_0.d.d)));
    var var_1 = Struct_3(func_2(vec4<i32>(reverseBits(~(-2147483647i)), arg_0.e.a.e, firstLeadingBit(0i), abs(-u_input.b.x)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 0u, 204u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 23u)], 23u)], 23u)], 30714u, 4294967295u, 4294967295u)), ~vec4<u32>(arg_1, u_input.a.x, 1u, 40572u)) > abs(max(arg_1, 4294967295u)), 4294967295u).a, false, func_2(max(countOneBits(-vec4<i32>(14353i, 1i, 5386i, -47143i)), vec4<i32>(-1i, u_input.b.x, -16343i, ~u_input.b.x)), true, 4294967295u).e.a, arg_0.c, func_2(firstLeadingBit(vec4<i32>(countOneBits(1i), u_input.b.x, -u_input.b.x, _wgslsmith_clamp_i32(arg_0.a.a.e, -65550i, -23454i))), arg_2, ~(~0u) ^ reverseBits(u_input.a.x & 1u)).e);
    let var_2 = 1i;
    let var_3 = arg_0.b;
    var var_4 = arg_0.e;
    return -3876i;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(arg_0, arg_0) == ~(~(~(~4294967295u)));
    global1 = array<u32, 10>();
    global2 = array<Struct_3, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1482f, _wgslsmith_f_op_f32(f32(-1f) * -1022f), any(select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, false, false, false), arg_1.x)))), -1665f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1273f) + 1493f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(133f)))));
    return Struct_1(vec4<i32>(abs(i32(-1i) * -1i), ~u_input.b.x, -2147483647i, min(func_4(func_2(u_input.b, arg_1.x, 1u), 11421u, true), u_input.b.x)), u_input.a.x, u_input.b.x, var_2.x, -2147483647i);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<i32> {
    global0 = array<u32, 23>();
    var var_0 = 1i;
    var var_1 = arg_2.zy;
    let var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d) - _wgslsmith_f_op_f32(var_2.a.d * var_2.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(156f, var_2.a.d)), _wgslsmith_f_op_f32(step(764f, 1536f)), _wgslsmith_f_op_f32(sign(552f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-230f, -1000f, -116f, 405f), vec4<f32>(267f, arg_1.a.a.d, var_2.a.d, 908f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1354f, arg_1.a.a.d, -606f, arg_1.c.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1532f, -675f, 1943f, var_2.a.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, arg_1.a.a.d, var_2.a.d, arg_1.d.d))))), !(!(!vec4<bool>(var_1.x, true, true, arg_1.b)))))));
    return countOneBits(abs(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    global1 = array<u32, 10>();
    let var_0 = Struct_1(func_5(vec3<i32>(-51241i, u_input.b.x, u_input.b.x), Struct_3(Struct_2(Struct_1(u_input.b, 0u, u_input.b.x, 139f, 2147483647i)), false, func_1(vec4<u32>(14433u, 22094u, u_input.a.x, 16234u), vec2<bool>(true, true)), func_2(max(u_input.b, vec4<i32>(9124i, u_input.b.x, -28835i, u_input.b.x)), true, u_input.a.x).e.a, func_2(u_input.b, false, max(20005u, global1[_wgslsmith_index_u32(0u, 10u)])).e), vec3<bool>(!func_3(vec2<f32>(-312f, 1684f), vec3<u32>(0u, 0u, 35341u), -32114i, vec3<i32>(u_input.b.x, 0i, u_input.b.x)), global0[_wgslsmith_index_u32(20085u, 23u)] >= _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(8099u, 23u)], 15833u), false)), func_2(~max(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), true, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a ^ vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46641u, 23u)], 23u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], 2920u), _wgslsmith_mod_vec3_u32(vec3<u32>(53641u, 0u, 14410u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 36923u, 1u))), reverseBits(max(u_input.a, vec3<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 10u)], global0[_wgslsmith_index_u32(14427u, 23u)], global0[_wgslsmith_index_u32(15296u, 23u)]))))).e.a.b, func_5(-u_input.b.xzx ^ (u_input.b.xzy << (firstLeadingBit(u_input.a) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(~11476u, 27u)], vec3<bool>(true, true, true)).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-525f - 1f), _wgslsmith_f_op_f32(ceil(-270f)), true)), _wgslsmith_add_i32(min(u_input.b.x, firstLeadingBit(-u_input.b.x)), ~16750i));
    var var_1 = global2[_wgslsmith_index_u32(~(u_input.a.x ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17290u, 23u)], 23u)], var_0.b, global1[_wgslsmith_index_u32(43529u, 10u)], 4294967295u), ~vec4<u32>(0u, 1u, 24494u, u_input.a.x))) << (4294967295u % 32u), 27u)];
    global0 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(var_1.c.a.wyy, u_input.b.wxz & var_0.a.yyx), _wgslsmith_mod_vec2_i32(select(vec2<i32>(-var_0.a.x, firstLeadingBit(u_input.b.x)), _wgslsmith_mod_vec2_i32(reverseBits(var_1.d.a.yw), u_input.b.xz), select(select(vec2<bool>(var_1.b, false), vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.b)), !vec2<bool>(var_1.b, var_1.b), !var_1.b)), vec2<i32>(-1i) * -vec2<i32>(var_1.a.a.c, 0i)), u_input.a.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1047f, 525f, all(!vec4<bool>(var_1.b, true, var_1.b, var_1.b)))) * 794f), abs(_wgslsmith_add_u32(32036u, func_2(_wgslsmith_div_vec4_i32(u_input.b, var_0.a), var_1.b, _wgslsmith_mod_u32(1u, u_input.a.x)).d.b)));
}

