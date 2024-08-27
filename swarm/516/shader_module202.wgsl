struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, 2147483647i, 11978i), vec3<i32>(0i, 51556i, -36331i), vec3<i32>(-1i, 33081i, 0i), vec3<i32>(37273i, 0i, 15962i), vec3<i32>(1i, 22535i, -1249i), vec3<i32>(-30577i, -2406i, -13974i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(1i, 2147483647i, 37891i), vec3<i32>(89746i, -80054i, 0i), vec3<i32>(1i, i32(-2147483648), -33509i), vec3<i32>(i32(-2147483648), 22576i, -62048i), vec3<i32>(37081i, 19136i, i32(-2147483648)), vec3<i32>(-1i, -1i, -1i), vec3<i32>(-79643i, i32(-2147483648), i32(-2147483648)), vec3<i32>(28214i, 1i, 1i), vec3<i32>(3911i, 10400i, -28247i), vec3<i32>(-1i, 38312i, 0i), vec3<i32>(4876i, -2564i, i32(-2147483648)), vec3<i32>(2147483647i, -10670i, 2659i), vec3<i32>(-6315i, -17651i, 18830i), vec3<i32>(1i, -21586i, 37945i), vec3<i32>(-11562i, -74335i, -38865i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(27807i, 0i, 2147483647i));

var<private> global1: f32;

var<private> global2: Struct_3 = Struct_3(Struct_2(9032i, Struct_1(vec2<bool>(true, false), 1058f, false, vec3<i32>(1i, -16528i, i32(-2147483648)), 1146f), Struct_1(vec2<bool>(true, true), -777f, false, vec3<i32>(0i, 27603i, 2147483647i), 681f), vec3<i32>(i32(-2147483648), -5424i, -6646i), Struct_1(vec2<bool>(false, true), 178f, false, vec3<i32>(-5964i, 50240i, -25950i), 795f)), vec2<bool>(false, false), vec4<f32>(461f, 662f, 2645f, -110f));

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> vec2<bool> {
    global3 = Struct_1(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(global3.a.x, true), (1u == u_input.a) && true), vec2<bool>(arg_1.c, all(select(vec2<bool>(false, false), vec2<bool>(false, false), global3.c))), global2.b), _wgslsmith_f_op_f32(f32(-1f) * -388f), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - 870f)) == -1000f), global2.a.c.d, -752f);
    global0 = array<vec3<i32>, 24>();
    global1 = -654f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) * arg_1.e);
    let var_0 = vec3<i32>(_wgslsmith_add_i32(-min(min(-1i, global2.a.c.d.x), global2.a.e.d.x), -global3.d.x), arg_1.d.x, ~36044i);
    return !(!vec2<bool>(any(select(vec3<bool>(arg_3.x, false, arg_1.a.x), vec3<bool>(false, false, true), global2.a.b.c)), true));
}

fn func_2() -> Struct_3 {
    var var_0 = global2.a.e.d;
    global2 = Struct_3(global2.a, vec2<bool>(((u_input.a & u_input.a) | 1u) > abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 71969u), vec3<u32>(u_input.a, u_input.a, u_input.a))), global3.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f) + _wgslsmith_f_op_f32(global3.e - -1127f)), -375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.b, global3.b))), global2.a.c.e))));
    global2 = Struct_3(Struct_2(global2.a.e.d.x, global2.a.e, global2.a.c, global3.d, global2.a.c), func_3(countOneBits(~vec3<u32>(1u, 0u, 73127u)) << (vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), 0u) % vec3<u32>(32u)), global2.a.c, 1u, !vec2<bool>(global3.d.x >= global3.d.x, !global3.a.x)), global2.c);
    return Struct_3(global2.a, global3.a, global2.c);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = arg_1;
    global1 = _wgslsmith_f_op_f32(floor(global3.b));
    global0 = array<vec3<i32>, 24>();
    global2 = func_2();
    var var_1 = Struct_2(1i, Struct_1(func_2().b, _wgslsmith_f_op_f32(var_0.e.e * 1000f), !(!select(global2.b.x, true, arg_0.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, abs(~u_input.a)), 24u)], -1479f), Struct_1(select(func_2().a.c.a, !arg_1.e.a, arg_0.b), -1395f, any(select(func_2().a.c.a, vec2<bool>(true, true), true)), vec3<i32>(3212i, global3.d.x, abs(47187i)), 1342f), vec3<i32>(_wgslsmith_dot_vec2_i32(min(-vec2<i32>(arg_1.b.d.x, global3.d.x), vec2<i32>(11913i, global2.a.c.d.x) ^ var_0.c.d.xx), vec2<i32>(-6269i, -55999i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_1.d << (vec3<u32>(arg_2.x, arg_2.x, arg_2.x) % vec3<u32>(32u)), vec3<i32>(-1i, global2.a.e.d.x, arg_0.a.c.d.x)), ~global3.d.x, 18510i), countOneBits(select(arg_1.a, arg_1.c.d.x, arg_0.b.x) >> (u_input.a % 32u))), func_2().a.e);
    return vec4<u32>(0u, 6765u, arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>((25355u ^ arg_2.x) | _wgslsmith_clamp_u32(0u, u_input.a, 142u), 28459u, countOneBits(min(arg_2.x, 32133u))), min(~countOneBits(vec3<u32>(41587u, 17539u, arg_2.x)), abs(countOneBits(vec3<u32>(63518u, u_input.a, arg_2.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(-_wgslsmith_mod_vec2_i32(arg_1.c.d.zx, global2.a.b.d.zz) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.x, u_input.a), vec2<u32>(51476u, 4294967295u)) % vec2<u32>(32u))), -global3.d.xx);
    global1 = -900f;
    var var_1 = arg_2.x;
    var var_2 = Struct_1(select(global2.b, global2.a.c.a, vec2<bool>(!(arg_1.c.c | false), !global2.b.x & true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f - arg_1.c.b)), true, (vec3<i32>(-1i) * -(~global3.d)) ^ vec3<i32>(1i, abs(-1i), -1i), 749f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.e.e, arg_0.e.b), _wgslsmith_f_op_f32(998f + 920f))), global3.b)), _wgslsmith_f_op_f32(max(-477f, _wgslsmith_f_op_f32(1149f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + -1896f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.e.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.b + global2.c.x), global2.c.x)))) - 1094f));
    return ~firstTrailingBit(~abs(_wgslsmith_sub_u32(arg_2.x, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 24>();
    var var_0 = reverseBits(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a), u_input.a, u_input.a, func_4(global2.a, Struct_2(0i, global2.a.c, Struct_1(global2.a.b.a, -501f, true, global0[_wgslsmith_index_u32(u_input.a, 24u)], global3.b), global2.a.e.d, global2.a.b), func_1(Struct_3(global2.a, global3.a, vec4<f32>(global3.e, global2.c.x, global3.e, 2088f)), Struct_2(37486i, Struct_1(global2.b, global2.c.x, global2.b.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], -822f), global2.a.b, vec3<i32>(3349i, global2.a.c.d.x, -1i), global2.a.e), vec2<u32>(u_input.a, u_input.a))) | u_input.a));
    var var_1 = vec4<i32>(34018i, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(global2.a.d.x, 0i, global3.d.x, global3.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.d.x, -1i, global3.d.x, 0i), vec4<i32>(-1i, global3.d.x, 3045i, 2147483647i), vec4<i32>(global2.a.b.d.x, global2.a.a, -7228i, global3.d.x)), vec4<i32>(global3.d.x, 8171i, -2147483647i, global3.d.x) | vec4<i32>(global3.d.x, -1i, -15698i, global3.d.x))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(global3.d.x, global2.a.b.d.x, global3.d.x, -2147483647i), vec4<i32>(0i, global2.a.c.d.x, global2.a.c.d.x, global3.d.x))) ^ _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-50211i, global2.a.d.x, 7232i, global2.a.d.x)), vec4<i32>(2147483647i, global3.d.x, global3.d.x, global3.d.x) & vec4<i32>(global2.a.e.d.x, 1i, global2.a.d.x, global2.a.c.d.x))), global2.a.b.d.x, ~1i);
    global2 = Struct_3(func_2().a, vec2<bool>(global3.a.x, 1u > var_0.x), global2.c);
    let var_2 = u_input.a;
    var var_3 = (abs(global2.a.b.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, u_input.a, 4294967295u, var_0.x) >> ((vec4<u32>(var_0.x, 0u, u_input.a, 4294967295u) ^ vec4<u32>(var_2, var_0.x, var_2, u_input.a)) % vec4<u32>(32u)), (vec4<u32>(1u, var_2, 26991u, 88185u) >> (vec4<u32>(var_2, 1u, 1u, 32880u) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, var_0.x, 16187u, 0u) % vec4<u32>(32u))) % 32u)) == _wgslsmith_dot_vec2_i32(var_1.zx, -_wgslsmith_sub_vec2_i32(vec2<i32>(-20991i, 1i), select(vec2<i32>(0i, -2673i), global3.d.yz, vec2<bool>(global2.b.x, false))));
    global3 = Struct_1(global3.a, _wgslsmith_f_op_f32(-global3.b), false, ~(-(~vec3<i32>(global3.d.x, var_1.x, global3.d.x))), 2668f);
    var_1 = vec4<i32>(var_1.x, 1i, ~(-2147483647i), select(var_1.x, -47786i, !func_3(var_0.xyx, global2.a.e, var_2, vec2<bool>(false, global2.b.x)).x)) | select(select(~firstLeadingBit(vec4<i32>(-1i, 2147483647i, 2147483647i, 23544i)), vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.a, 0i, -8536i, 8865i), vec4<i32>(global2.a.c.d.x, 22804i, 1i, global3.d.x)), 13759i >> (u_input.a % 32u), global2.a.b.d.x), global2.a.c.c), vec4<i32>(47784i, -25411i, -2147483647i, global3.d.x), vec4<bool>(select(any(vec3<bool>(global3.a.x, false, global3.a.x)), var_0.x > var_0.x, all(vec3<bool>(global2.b.x, global2.b.x, false))), false, func_3(vec3<u32>(63599u, 1u, var_2), global2.a.e, countOneBits(473u), func_2().a.e.a).x, ~global2.a.b.d.x < (0i >> (var_0.x % 32u))));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, 1f, _wgslsmith_div_u32(var_0.x, reverseBits(~countOneBits(18979u))), min(~14798i, -(func_2().a.e.d.x ^ (i32(-1i) * -1i))));
}

