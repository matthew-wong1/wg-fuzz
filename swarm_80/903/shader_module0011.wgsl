struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-40302i, i32(-2147483648), 1i);

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(-849f, true), Struct_3(368f, false), Struct_3(274f, false), Struct_3(1000f, true), Struct_3(-639f, false), Struct_3(1046f, true), Struct_3(-140f, true));

var<private> global2: bool;

var<private> global3: vec2<u32> = vec2<u32>(59830u, 42952u);

var<private> global4: i32 = -23625i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<f32> {
    global1 = array<Struct_3, 7>();
    var var_0 = Struct_4(max(u_input.a.zy, u_input.a.yz), Struct_3(282f, !(!select(false, true, false))));
    var var_1 = Struct_1(_wgslsmith_div_i32(abs(global0.x), -9520i), u_input.a.x, var_0.b.b);
    var_1 = Struct_1(max(_wgslsmith_mult_i32(-37739i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 66924i, -8024i, -2147483647i), vec4<i32>(var_1.a, 11496i, var_1.a, var_1.a))) ^ (~(-13268i) & -var_1.a), firstTrailingBit(global0.x)), var_1.b, all(!vec2<bool>(false, !var_0.b.b)));
    let var_2 = vec2<bool>(false, var_1.c);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.a))))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    var var_1 = vec3<u32>(max(u_input.a.x, 19478u), 0u, firstTrailingBit(~1u >> (~arg_1.b % 32u)) | _wgslsmith_dot_vec3_u32(~max(u_input.a, u_input.a), ~vec3<u32>(arg_1.b, 31120u, 0u)));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -14559i, ~arg_1.a), ~_wgslsmith_sub_i32(~_wgslsmith_mult_i32(arg_1.a, arg_1.a), ~(-1518i)));
    var var_3 = Struct_2(Struct_1(arg_1.a, arg_1.b << (~(~25065u) % 32u), true && any(!vec4<bool>(true, true, false, arg_1.c))), _wgslsmith_f_op_vec2_f32(exp2(var_0.zx)));
    let var_4 = select(vec4<bool>(var_3.a.c, any(vec3<bool>(all(vec4<bool>(true, arg_1.c, arg_2.x, false)), false, 0u != u_input.a.x)), all(!select(arg_2, vec3<bool>(true, false, true), false)), arg_2.x), select(select(select(!vec4<bool>(false, arg_1.c, arg_2.x, true), select(vec4<bool>(arg_2.x, true, true, false), vec4<bool>(var_3.a.c, arg_1.c, true, arg_2.x), vec4<bool>(true, true, arg_1.c, arg_1.c)), 1015f < arg_0), vec4<bool>(true, !var_3.a.c, true, true), vec4<bool>(global0.x >= var_3.a.a, all(vec4<bool>(false, arg_1.c, var_3.a.c, var_3.a.c)), false, arg_2.x)), select(select(vec4<bool>(arg_2.x, false, arg_1.c, true), select(vec4<bool>(arg_2.x, arg_1.c, true, var_3.a.c), vec4<bool>(true, false, arg_2.x, true), arg_2.x), var_3.a.c), select(select(vec4<bool>(var_3.a.c, true, true, true), vec4<bool>(arg_2.x, false, true, false), arg_1.c), select(vec4<bool>(var_3.a.c, arg_1.c, false, false), vec4<bool>(var_3.a.c, false, var_3.a.c, var_3.a.c), vec4<bool>(true, arg_2.x, true, true)), true), all(!arg_2.yy)), select(vec4<bool>(-256f != var_0.x, true, var_3.a.c, var_3.a.c), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), ~var_1.x != abs(var_3.a.b))), vec4<bool>(true, var_3.a.c, any(!arg_2.xx), true));
    return Struct_2(arg_1, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1662f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3()).x))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.a, u_input.a);
    let var_1 = vec3<u32>(~(~var_0.x), u_input.a.x, _wgslsmith_mult_u32(global3.x, _wgslsmith_dot_vec4_u32((vec4<u32>(22711u, 1u, var_0.x, var_0.x) >> (vec4<u32>(0u, var_0.x, global3.x, 93106u) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(var_0.x, u_input.a.x, 1u, global3.x)), vec4<u32>(firstTrailingBit(4294967295u), global3.x, var_0.x, ~4294967295u))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-889f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -905f)) * 148f))), Struct_1(_wgslsmith_clamp_i32(~2147483647i | _wgslsmith_mod_i32(global0.x, global0.x), global0.x, ~global0.x ^ (global0.x << (u_input.a.x % 32u))), _wgslsmith_mult_u32(~u_input.a.x, global3.x ^ _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(4294967295u, var_0.x, 26278u))), any(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true));
    var_0 = ~vec3<u32>(u_input.a.x, ~(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) & var_0.x), 1u);
    let var_3 = Struct_2(var_2.a, vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(-var_2.b.x)))));
    return -1041f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_add_vec3_i32((-vec3<i32>(-1i, -9596i, arg_2.a) ^ reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global0.x, global0.x), vec3<i32>(global0.x, arg_2.a, arg_2.a)))) | -_wgslsmith_div_vec3_i32(~vec3<i32>(arg_2.a, arg_2.a, global0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(22597i, -2147483647i, 28307i), vec3<i32>(50870i, arg_2.a, -1i))), select(-select(vec3<i32>(global0.x, -1i, global0.x) ^ vec3<i32>(global0.x, -2147483647i, global0.x), -vec3<i32>(-6759i, 23814i, -1i), !vec3<bool>(false, arg_2.c, arg_2.c)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(arg_2.a, arg_2.a, 1i), vec3<i32>(arg_2.a, -1i, global0.x), vec3<bool>(true, arg_2.c, arg_3.b)), select(vec3<i32>(global0.x, -38062i, global0.x), vec3<i32>(arg_2.a, -2147483647i, global0.x), vec3<bool>(true, false, arg_3.b))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 4598i, 6633i) >> (vec3<u32>(1u, 68945u, global3.x) % vec3<u32>(32u)), vec3<i32>(7632i, -31410i, -28068i))), all(select(vec4<bool>(false, arg_2.c, false, arg_3.b), vec4<bool>(arg_2.c, true, false, arg_2.c), vec4<bool>(arg_3.b, arg_2.c, false, false)))));
    global2 = all(select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2.c, false, arg_3.b, arg_3.b), arg_3.b), vec4<bool>(arg_2.c, false, true, false), false), !select(vec4<bool>(arg_3.b, arg_2.c, arg_3.b, true), vec4<bool>(true, true, false, arg_2.c), false), arg_3.b), vec4<bool>(true, _wgslsmith_f_op_f32(-arg_3.a) < arg_3.a, !all(vec2<bool>(true, false)), arg_3.b), !(!(!vec4<bool>(false, arg_2.c, false, true)))));
    var var_1 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(_wgslsmith_clamp_i32(min(arg_2.a, 13787i), -arg_2.a, 0i & arg_2.a), 2147483647i, arg_2.a, firstLeadingBit(var_0.x) ^ arg_2.a)), vec4<i32>(func_2(-255f, arg_2, vec3<bool>(false, false, !arg_3.b)).a.a, firstTrailingBit(-16821i), var_0.x, ~_wgslsmith_add_i32(-40212i >> (u_input.a.x % 32u), 0i)));
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_2.a, global0.x, var_0.x), -1102i), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(var_1.x, 132i)), firstLeadingBit(vec2<i32>(25542i, var_1.x))), ~(var_1.x << (~global3.x % 32u)), var_1.x) >> (max(~(~countOneBits(vec4<u32>(0u, 102793u, global3.x, arg_1.x))), _wgslsmith_add_vec4_u32(abs(abs(vec4<u32>(54963u, global3.x, global3.x, global3.x))), vec4<u32>(_wgslsmith_div_u32(12381u, global3.x), u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_2.b, arg_2.b, global3.x), vec4<u32>(global3.x, arg_1.x, arg_2.b, global3.x)), abs(0u)))) % vec4<u32>(32u));
    let var_3 = false;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(805f + -128f), _wgslsmith_f_op_f32(max(302f, -412f)), _wgslsmith_f_op_f32(func_1())), vec3<f32>(_wgslsmith_f_op_f32(select(-690f, 1399f, false)), 742f, _wgslsmith_f_op_f32(f32(-1f) * -911f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(479f - 170f), -1664f, _wgslsmith_f_op_f32(f32(-1f) * -2926f)))), vec2<u32>(max(abs(43092u), 1u) ^ (~18024u ^ (35934u << (u_input.a.x % 32u))), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(37705u, 39479u, global3.x), vec3<u32>(4294967295u, u_input.a.x, 25601u)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(9866i, global0.x), global0.zy), -vec2<i32>(global0.x, -18759i)), 1i), min(func_2(-437f, func_2(1000f, Struct_1(43994i, global3.x, false), vec3<bool>(false, false, false)).a, select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)).a.b, firstTrailingBit(1u)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), Struct_3(-122f, false));
    global3 = vec2<u32>(global3.x, global3.x);
    global3 = vec2<u32>(u_input.a.x, countOneBits(~global3.x) & global3.x);
    global1 = array<Struct_3, 7>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1865f + _wgslsmith_f_op_f32(max(-517f, -566f)))), func_2(1999f, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -38089i, global0.x, -5236i) >> (vec4<u32>(global3.x, u_input.a.x, 7399u, 15378u) % vec4<u32>(32u)), select(vec4<i32>(-67132i, -27876i, global0.x, -8733i), vec4<i32>(global0.x, -18208i, global0.x, global0.x), vec4<bool>(false, false, false, true))), select(_wgslsmith_div_u32(4294967295u, global3.x), 37654u >> (u_input.a.x % 32u), false), global3.x < (u_input.a.x & 39095u)), vec3<bool>(!any(vec2<bool>(true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), true)).a, vec3<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-175f, 856f)))), Struct_1(global0.x & global0.x, 4294967295u, true), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), func_2(-2051f, Struct_1(global0.x, 11181u, false), vec3<bool>(true, true, true)).a.c)).a.c, false)).a;
    global3 = ~(~vec2<u32>(u_input.a.x, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(185f - 161f), -973f)))));
}

