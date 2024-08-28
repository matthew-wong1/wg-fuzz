struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(59171u, 1u);

var<private> global1: array<u32, 3> = array<u32, 3>(30054u, 1u, 0u);

var<private> global2: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 55214u, 1u), vec3<u32>(0u, 8924u, 17339u), vec3<u32>(19295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 53880u, 79433u), vec3<u32>(1u, 53296u, 0u), vec3<u32>(36878u, 31731u, 1151u), vec3<u32>(11898u, 86800u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 68550u, 1u), vec3<u32>(1u, 32331u, 6676u), vec3<u32>(1u, 13378u, 25577u), vec3<u32>(19872u, 4294967295u, 1u), vec3<u32>(16028u, 44443u, 1u), vec3<u32>(1u, 44301u, 13459u), vec3<u32>(18961u, 79349u, 1u), vec3<u32>(0u, 2815u, 4294967295u), vec3<u32>(11359u, 27061u, 6704u), vec3<u32>(0u, 4294967295u, 13250u), vec3<u32>(45988u, 0u, 46988u), vec3<u32>(7128u, 4294967295u, 51605u), vec3<u32>(11224u, 38226u, 0u), vec3<u32>(0u, 2470u, 4294967295u), vec3<u32>(3527u, 1u, 1u), vec3<u32>(13779u, 46537u, 0u), vec3<u32>(1u, 13624u, 77230u), vec3<u32>(75746u, 0u, 4294967295u), vec3<u32>(22629u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 73557u), vec3<u32>(14806u, 45071u, 4294967295u));

var<private> global3: Struct_3 = Struct_3(774f, vec2<bool>(false, true), false);

var<private> global4: f32 = -142f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_1(!select(!select(vec4<bool>(global3.c, false, global3.c, false), vec4<bool>(true, global3.b.x, true, global3.c), false), !vec4<bool>(global3.b.x, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(global3.c, 113991u == arg_1, false, global3.b.x), select(vec4<bool>(global3.c || global3.b.x, all(vec4<bool>(false, global3.c, true, false)), all(vec3<bool>(global3.c, global3.c, global3.c)), all(vec3<bool>(global3.c, false, global3.b.x))), vec4<bool>(-551f > global3.a, -2147483647i <= arg_0, true, true), vec4<bool>(true || global3.c, true, true, any(vec4<bool>(false, false, false, true)))), select(select(!vec4<bool>(global3.b.x, global3.b.x, global3.c, global3.c), select(vec4<bool>(global3.c, true, global3.b.x, global3.c), vec4<bool>(global3.c, global3.b.x, true, global3.c), vec4<bool>(true, global3.c, false, false)), select(vec4<bool>(global3.b.x, global3.c, global3.b.x, false), vec4<bool>(false, false, false, global3.b.x), vec4<bool>(global3.b.x, false, true, false))), vec4<bool>(!global3.b.x, true, true, global3.c), !(!vec4<bool>(global3.c, global3.c, true, global3.b.x)))), !(!select(vec4<bool>(false, true, global3.c, true), !vec4<bool>(global3.c, true, global3.b.x, global3.b.x), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.a)), global3.a))), global3.b);
    global0 = ~vec2<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(55104u, global1[_wgslsmith_index_u32(u_input.e.x, 3u)])), u_input.b), min(_wgslsmith_add_u32(global0.x, 3456u) | 1u, abs(46029u) << (_wgslsmith_clamp_u32(global0.x, 1u, 0u) % 32u)));
    let var_1 = u_input.b;
    return select(vec4<bool>(true, true, u_input.d < _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(arg_0, 0i, -1i)), var_0.a.x), select(var_0.a, vec4<bool>(true, global3.b.x, true, all(!var_0.b.yww)), !vec4<bool>(var_0.e.x, false, global3.b.x, u_input.a.x < 69314i)), true);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    return i32(-1i) * -(~_wgslsmith_div_i32(21046i, 51463i));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> Struct_2 {
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -1190f);
    let var_0 = -(func_4(any(arg_1), Struct_1(vec4<bool>(true, false, arg_1.x, arg_2), select(arg_1, arg_1, true), vec4<bool>(arg_2, false, global3.b.x, global3.c), -1665f, !arg_1.xx), func_3(u_input.d, u_input.e.x), Struct_1(arg_1, arg_1, arg_1, _wgslsmith_f_op_f32(global3.a + 618f), arg_1.ww)) ^ _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0, func_4(global3.c, Struct_1(vec4<bool>(arg_1.x, true, arg_2, false), arg_1, vec4<bool>(global3.c, false, true, arg_1.x), global3.a, vec2<bool>(true, false)), vec4<bool>(arg_1.x, false, global3.c, arg_2), Struct_1(vec4<bool>(false, false, arg_1.x, false), arg_1, vec4<bool>(global3.b.x, global3.c, true, false), global3.a, arg_1.yw))), ~arg_0));
    global1 = array<u32, 3>();
    var var_1 = Struct_3(global3.a, !global3.b, true);
    global0 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(max(0u, countOneBits(global0.x)), countOneBits(111332u)), min(firstTrailingBit(~0u), u_input.e.x)), 0u);
    return Struct_2(any(!arg_1));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    let var_0 = ~reverseBits(~(~max(1u, 29133u)));
    var var_1 = arg_2;
    let var_2 = func_2(u_input.a.x, var_1.b, select(!var_1.c.x, var_1.b.x, true));
    let var_3 = Struct_3(global3.a, vec2<bool>(!(global3.a < _wgslsmith_f_op_f32(-731f * arg_2.d)), (arg_2.e.x | arg_2.e.x) & (-1698f == _wgslsmith_f_op_f32(floor(var_1.d)))), global3.c & any(!vec2<bool>(var_1.c.x, global3.c)));
    global1 = array<u32, 3>();
    return var_3;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<i32>) -> vec2<bool> {
    global3 = arg_1;
    return select(arg_1.b, !(!global3.b), vec2<bool>(!global3.b.x, global3.a <= _wgslsmith_f_op_f32(arg_1.a + -448f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(global3.c, false, any(vec4<bool>(global3.c, global3.c, true, true)), false), vec4<bool>(true, global3.b.x, true, any(func_5(u_input.a.wzy, func_1(0i, false, Struct_1(vec4<bool>(true, global3.b.x, global3.c, global3.b.x), vec4<bool>(false, global3.b.x, global3.b.x, true), vec4<bool>(global3.c, global3.b.x, true, global3.c), global3.a, global3.b)), u_input.a))), vec4<bool>(true, true, abs(_wgslsmith_sub_u32(global0.x, 336u)) == global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, global2[_wgslsmith_index_u32(global0.x, 30u)]), reverseBits(global2[_wgslsmith_index_u32(global0.x, 30u)])), 3u)], global3.c), 2070f, global3.b);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(global3.a)), !global3.b, any(vec3<bool>(var_0.b.x, true, true)));
    global1 = array<u32, 3>();
    var_0 = Struct_1(var_0.c, var_0.a, !vec4<bool>(!(global0.x >= global0.x), select(!var_1.c, var_0.a.x, global3.c), all(global3.b) & true, false), _wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-226f - -423f), var_0.d, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 3u)], 3u)] < _wgslsmith_mod_u32(4294967295u, u_input.c.x))), global3.c)), func_1(abs(_wgslsmith_div_i32(~u_input.a.x, -17301i)), !var_1.b.x, Struct_1(!(!vec4<bool>(false, false, var_1.b.x, var_0.c.x)), !(!var_0.a), func_3(u_input.d, ~global1[_wgslsmith_index_u32(10324u, 3u)]), global3.a, global3.b)).b);
    global0 = select(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, u_input.b) & ~u_input.e.yw, ~(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], global0.x) & vec2<u32>(67229u, 38149u))), u_input.e.wy), u_input.c.xx, vec2<bool>(global3.c, all(func_3(_wgslsmith_div_i32(-2545i, u_input.d), 30569u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xz, ~u_input.c.yz) << (~_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(global0.x, 3u)]) % 32u), 1u, _wgslsmith_mult_u32(31270u, _wgslsmith_clamp_u32(36353u, global1[_wgslsmith_index_u32(0u, 3u)], 1u)) | _wgslsmith_dot_vec4_u32(~u_input.e, vec4<u32>(3749u, global1[_wgslsmith_index_u32(0u, 3u)], global0.x, 0u) ^ u_input.e)), u_input.a.xx, vec2<i32>(~(-31411i >> (u_input.b % 32u)), _wgslsmith_sub_i32(-2147483647i ^ u_input.d, -u_input.a.x)) << (~_wgslsmith_div_vec2_u32(u_input.e.yy, vec2<u32>(39292u, u_input.b)) % vec2<u32>(32u)));
}

