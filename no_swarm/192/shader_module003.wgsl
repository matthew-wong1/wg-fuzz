struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(-357f, vec4<i32>(i32(-2147483648), -40666i, -601i, i32(-2147483648)), vec2<i32>(67422i, 29588i), false)), vec3<u32>(1997u, 19249u, 24023u), Struct_2(Struct_1(-654f, vec4<i32>(-19299i, 30345i, -1i, -1i), vec2<i32>(2147483647i, 2147483647i), true)), 45451u, Struct_1(-1054f, vec4<i32>(12748i, 2147483647i, -72858i, 0i), vec2<i32>(i32(-2147483648), 6676i), true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    global0 = array<f32, 12>();
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a)), -_wgslsmith_add_vec4_i32(vec4<i32>(-19762i, -2147483647i, u_input.c, -24244i), arg_1.a.b), vec2<i32>(arg_1.a.b.x, -1i), any(select(vec2<bool>(arg_1.a.d, true), vec2<bool>(true, arg_1.a.d), true)))), u_input.b.zyx, Struct_2(Struct_1(-473f, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.d, -1i, global1.c.a.c.x), vec4<i32>(global1.a.a.b.x, global1.e.b.x, u_input.d, 2147483647i)) >> (~arg_0 % vec4<u32>(32u)), vec2<i32>(firstTrailingBit(-2795i), firstLeadingBit(arg_1.a.c.x)), (arg_1.a.d && true) || false)), 0u << ((_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(global1.b.x, 1u, 58910u, u_input.b.x)) << (_wgslsmith_add_u32(1u, ~u_input.e.x) % 32u)) % 32u), arg_1.a);
    let var_1 = vec2<i32>(-16080i, reverseBits(-2147483647i));
    let var_2 = !(!select(!select(vec4<bool>(true, false, global1.e.d, global1.a.a.d), vec4<bool>(true, true, false, global1.c.a.d), var_0.c.a.d), !select(vec4<bool>(arg_1.a.d, var_0.e.d, true, global1.a.a.d), vec4<bool>(var_0.a.a.d, arg_1.a.d, var_0.e.d, arg_1.a.d), vec4<bool>(true, arg_1.a.d, false, true)), select(select(vec4<bool>(arg_1.a.d, true, var_0.a.a.d, global1.c.a.d), vec4<bool>(var_0.a.a.d, arg_1.a.d, arg_1.a.d, false), vec4<bool>(var_0.e.d, true, true, true)), vec4<bool>(global1.a.a.d, false, var_0.a.a.d, false), select(vec4<bool>(var_0.e.d, global1.a.a.d, true, false), vec4<bool>(true, true, var_0.e.d, true), true))));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(489f)))), max(vec4<i32>(var_1.x, -1i, global1.a.a.c.x, global1.e.c.x), vec4<i32>(var_0.e.b.x, var_0.a.a.b.x, arg_1.a.c.x, -8314i) >> (vec4<u32>(4294967295u, u_input.e.x, global1.d, 9202u) % vec4<u32>(32u))), arg_1.a.b.wx, !global1.e.d)), var_0.b, Struct_2(global1.a.a), 0u, Struct_1(_wgslsmith_f_op_f32(floor(847f)), firstLeadingBit(var_0.e.b), select(max(vec2<i32>(2147483647i, 7680i), global1.c.a.c) >> (reverseBits(vec2<u32>(4294967295u, global1.d)) % vec2<u32>(32u)), arg_1.a.c, vec2<bool>(any(vec3<bool>(true, var_0.a.a.d, var_2.x)), u_input.d >= var_1.x)), all(vec3<bool>(arg_1.a.d, true, arg_1.a.d))));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = global1.a;
    var_0 = Struct_2(var_0.a);
    let var_1 = var_0.a;
    let var_2 = var_1.a;
    global1 = Struct_3(arg_0, vec3<u32>(_wgslsmith_div_u32(func_3(vec4<u32>(1u, u_input.e.x, 0u, 61429u), global1.c), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) | global1.b.x), 22910u, u_input.b.x), arg_0, reverseBits(countOneBits(reverseBits(u_input.a))), Struct_1(_wgslsmith_f_op_f32(-arg_1.x), -(~arg_0.a.b) | (_wgslsmith_div_vec4_i32(global1.c.a.b, vec4<i32>(global1.e.c.x, 8842i, 1i, -31326i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global1.c.a.c.x, u_input.c, var_1.c.x, 65598i), global1.e.b)), firstTrailingBit((vec2<i32>(13389i, global1.e.c.x) & var_1.b.wy) << ((u_input.e & vec2<u32>(u_input.e.x, u_input.a)) % vec2<u32>(32u))), var_0.a.a < var_0.a.a));
    return Struct_3(Struct_2(global1.a.a), select(u_input.b.zzw, countOneBits(vec3<u32>(u_input.e.x, ~u_input.a, _wgslsmith_div_u32(u_input.b.x, 58056u))), var_0.a.d), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-729f + arg_0.a.a)), select(-var_1.b, var_0.a.b, !vec4<bool>(global1.c.a.d, var_0.a.d, arg_0.a.d, true)), vec2<i32>(15579i, arg_0.a.c.x), 1i < var_0.a.b.x)), ~u_input.a, Struct_1(1379f, global1.e.b, var_1.b.yz, all(!vec3<bool>(false, global1.e.d, true))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = reverseBits(~1u);
    var var_1 = arg_2.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(616f, _wgslsmith_f_op_f32(1f - func_2(global1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global1.c.a.a) + vec2<f32>(667f, -1051f)), vec2<f32>(-899f, global0[_wgslsmith_index_u32(4294967295u, 12u)])).c.a.a))), vec4<i32>(arg_1.c.a.b.x, max(-select(0i, 2147483647i, true), 0i), countOneBits(u_input.c), 2401i), vec2<i32>(-firstLeadingBit(arg_1.e.b.x | global1.e.b.x), 0i), false || arg_2.d);
    global0 = array<f32, 12>();
    var var_3 = func_2(func_2(Struct_2(func_2(func_2(Struct_2(global1.e), vec2<f32>(2373f, 303f), vec2<f32>(1427f, arg_2.a)).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_2.a) + vec2<f32>(-1667f, 870f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a.a, -1017f) * vec2<f32>(1105f, 508f))).a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-1087f)), global0[_wgslsmith_index_u32(~4294967295u, 12u)])), vec2<f32>(-598f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(countOneBits(global1.b.x), 12u)])))).a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a, 233f), vec2<f32>(arg_0, global0[_wgslsmith_index_u32(5579u, 12u)]), arg_3.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.a, var_2.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-134f, var_2.a))) + vec2<f32>(1116f, _wgslsmith_f_op_f32(max(-820f, -1166f)))))), vec2<f32>(_wgslsmith_div_f32(-460f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(168f, arg_0)), _wgslsmith_f_op_f32(-global1.c.a.a)))), 1186f));
    return Struct_2(func_2(Struct_2(Struct_1(1636f, -vec4<i32>(var_3.a.a.c.x, 1i, arg_1.e.b.x, var_2.c.x), var_2.c, true)), vec2<f32>(-1278f, global0[_wgslsmith_index_u32(var_3.b.x >> (4294967295u % 32u), 12u)]), vec2<f32>(-159f, -1442f)).e);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = Struct_3(Struct_2(arg_0), countOneBits(global1.b), func_4(global1.e.a, func_2(global1.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1764f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-753f, arg_0.a) * vec2<f32>(arg_0.a, arg_0.a)), true & arg_0.d)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(198f, global0[_wgslsmith_index_u32(0u, 12u)]))))), func_2(Struct_2(func_2(global1.a, vec2<f32>(-1534f, 187f), vec2<f32>(global0[_wgslsmith_index_u32(42439u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)])).e), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(6751u, 12u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, -178f), vec2<f32>(global1.a.a.a, -1643f)) - vec2<f32>(-1000f, -796f))).a.a, !select(select(vec3<bool>(false, arg_0.d, true), vec3<bool>(arg_0.d, global1.c.a.d, global1.e.d), vec3<bool>(arg_0.d, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(global1.c.a.d, true, arg_0.d), arg_0.d), !vec3<bool>(false, arg_0.d, true))), firstTrailingBit(4294967295u), arg_0);
    let var_0 = abs(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(global1.d, 1u) & ~1u));
    global0 = array<f32, 12>();
    let var_1 = global1.e.c.x;
    global1 = Struct_3(func_4(global1.c.a.a, Struct_3(Struct_2(global1.a.a), vec3<u32>(max(global1.b.x, 12734u), 14106u, ~87553u), global1.a, u_input.b.x, Struct_1(_wgslsmith_f_op_f32(min(-998f, arg_0.a)), countOneBits(vec4<i32>(3858i, -1i, global1.e.b.x, -17539i)), global1.e.c, true)), arg_0, !vec3<bool>(true, global1.e.d, true)), vec3<u32>(countOneBits(~(~var_0)), abs(59022u), func_2(func_2(global1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.b.x, 12u)], 359f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(207f, 106f)))).a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -596f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(82851u, 12u)], 1812f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, global1.c.a.a))))).b.x), global1.c, u_input.e.x, func_4(_wgslsmith_f_op_f32(global1.c.a.a * -1197f), func_2(Struct_2(Struct_1(arg_0.a, vec4<i32>(u_input.d, global1.a.a.b.x, u_input.d, arg_0.b.x), global1.a.a.b.zy, arg_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(61677u, 12u)], arg_0.a)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(12260u, 12u)], -1000f))))), Struct_1(-1339f, global1.c.a.b, func_4(-350f, Struct_3(Struct_2(arg_0), vec3<u32>(24174u, 46407u, u_input.b.x), global1.a, global1.b.x, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 12u)], vec4<i32>(arg_0.b.x, 2147483647i, -2147483647i, arg_0.c.x), vec2<i32>(arg_0.c.x, 54615i), false)), arg_0, !vec3<bool>(global1.a.a.d, false, arg_0.d)).a.c, !all(vec3<bool>(global1.c.a.d, true, true))), !vec3<bool>(true, !global1.e.d, true != arg_0.d)).a);
    return 47949u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.zz >> (abs(vec2<u32>(_wgslsmith_mod_u32(75062u, ~u_input.b.x), abs(~global1.b.x))) % vec2<u32>(32u));
    global0 = array<f32, 12>();
    let var_1 = _wgslsmith_mult_u32(15371u | func_1(Struct_1(global0[_wgslsmith_index_u32(16209u, 12u)], global1.a.a.b, select(vec2<i32>(u_input.c, global1.a.a.c.x), global1.a.a.b.yw, vec2<bool>(global1.a.a.d, false)), false)), _wgslsmith_clamp_u32(1u, countOneBits(abs(u_input.a)), _wgslsmith_add_u32(u_input.a, firstLeadingBit(countOneBits(global1.d)))));
    var var_2 = func_2(Struct_2(global1.a.a), vec2<f32>(global1.c.a.a, 663f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-168f, global0[_wgslsmith_index_u32(36775u, 12u)]))) * vec2<f32>(func_4(global1.a.a.a, Struct_3(global1.c, vec3<u32>(1u, 1u, u_input.e.x), Struct_2(global1.a.a), 0u, Struct_1(global1.c.a.a, global1.c.a.b, global1.c.a.b.zy, true)), Struct_1(949f, vec4<i32>(global1.a.a.c.x, -2147483647i, -4451i, u_input.d), global1.a.a.c, false), vec3<bool>(false, global1.c.a.d, global1.c.a.d)).a.a, 1974f)))).a.a;
    var var_3 = abs(~_wgslsmith_mod_i32(var_2.c.x, min(_wgslsmith_dot_vec3_i32(global1.a.a.b.wwy, global1.e.b.xzw), -4231i)));
    let var_4 = ~77054u;
    global1 = func_2(func_4(_wgslsmith_f_op_f32(min(global1.a.a.a, 699f)), func_2(func_2(Struct_2(global1.c.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-714f, global0[_wgslsmith_index_u32(global1.d, 12u)]), vec2<f32>(var_2.a, global0[_wgslsmith_index_u32(var_1, 12u)]), vec2<bool>(var_2.d, var_2.d))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-335f, 1367f), vec2<f32>(802f, 1000f)))).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(38862u, 12u)], -1271f) + vec2<f32>(650f, 213f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -890f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1361f, -392f))))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.e.a)) + global1.e.a), func_2(global1.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a.a.a, 985f))), vec2<f32>(global1.e.a, -207f)), func_4(1f, Struct_3(Struct_2(Struct_1(762f, vec4<i32>(1i, -2147483647i, u_input.d, u_input.d), var_2.c, global1.c.a.d)), u_input.b.yww, Struct_2(Struct_1(global1.e.a, vec4<i32>(-55652i, 36799i, -1i, u_input.d), vec2<i32>(1i, global1.c.a.b.x), var_2.d)), 0u, Struct_1(global0[_wgslsmith_index_u32(var_0.x, 12u)], vec4<i32>(var_2.c.x, 30510i, -23604i, 0i), vec2<i32>(1i, u_input.c), var_2.d)), global1.e, select(vec3<bool>(true, global1.e.d, false), vec3<bool>(global1.e.d, false, var_2.d), vec3<bool>(true, global1.c.a.d, true))).a, select(vec3<bool>(true, false, var_2.d), select(vec3<bool>(global1.e.d, var_2.d, false), vec3<bool>(true, true, var_2.d), vec3<bool>(global1.e.d, var_2.d, true)), true)).a, !vec3<bool>(var_2.d, func_4(global1.c.a.a, Struct_3(Struct_2(global1.a.a), global1.b, Struct_2(Struct_1(861f, vec4<i32>(-2147483647i, 44532i, -7213i, u_input.d), global1.c.a.b.wy, var_2.d)), 50999u, Struct_1(1066f, vec4<i32>(global1.c.a.b.x, var_2.c.x, var_2.b.x, var_2.c.x), vec2<i32>(var_2.c.x, -26265i), var_2.d)), Struct_1(global1.a.a.a, vec4<i32>(var_2.b.x, u_input.c, global1.c.a.b.x, var_2.c.x), var_2.c, false), vec3<bool>(false, false, true)).a.d, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1476f, -295f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-417f, -597f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(715f, 1730f))))))));
    var var_5 = vec3<f32>(global1.a.a.a, _wgslsmith_f_op_f32(min(-545f, -608f)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(422f, firstLeadingBit(-1i), _wgslsmith_f_op_f32(-global1.a.a.a), 324f);
}

