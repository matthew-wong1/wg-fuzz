struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(~(~vec3<i32>(abs(11105i), arg_0, u_input.a.x << (u_input.b % 32u))), vec3<i32>(abs(firstTrailingBit(-1i)), -_wgslsmith_sub_i32(abs(3848i), _wgslsmith_div_i32(-18336i, arg_0)), _wgslsmith_add_i32(countOneBits(arg_0), _wgslsmith_mod_i32(arg_0, -43494i)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(78027u, u_input.b), vec2<u32>(u_input.c, 4294967295u) | vec2<u32>(u_input.c, 4294967295u)) % 32u)));
    let var_1 = u_input.c;
    let var_2 = Struct_3(vec3<bool>(false, any(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), !arg_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2195f, _wgslsmith_f_op_f32(f32(-1f) * -405f))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, -824f, 2592f)))), Struct_1(~4294967295u, !arg_1.x, _wgslsmith_add_i32(1i, reverseBits(u_input.d.x))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 4294967295u), vec2<u32>(u_input.c, u_input.b)) ^ ~var_1, arg_1.x, 0i), Struct_1(u_input.b, all(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, false), vec4<bool>(arg_1.x, true, arg_1.x, false))), firstLeadingBit(-1i))), -812i);
    var_0 = _wgslsmith_mod_i32(arg_0 | 22472i, ~arg_0);
    global0 = array<Struct_4, 32>();
    return arg_1.x;
}

fn func_2() -> Struct_5 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-375f)))) <= -1157f, true, true, false);
    var var_1 = select(!(!(!select(var_0.wx, vec2<bool>(var_0.x, var_0.x), var_0.yx))), !vec2<bool>(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.a.x), u_input.a), !var_0.wz, _wgslsmith_div_f32(640f, 251f)), true == var_0.x), var_0.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-604f)), _wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(-812f * 1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1269f, 374f, -1097f) - vec3<f32>(-305f, 975f, 272f)) * vec3<f32>(372f, 196f, 509f))) - vec3<f32>(280f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -866f))), Struct_1(1u, (min(-17740i, u_input.d.x) != (u_input.a.x >> (1u % 32u))) && true, 2147483647i), Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 0u) & _wgslsmith_add_u32(11413u, u_input.c), ~(u_input.c ^ u_input.b)), false, ~(-(~u_input.d.x))), Struct_1(42622u, all(!select(var_0.ww, var_0.xy, var_1.x)), min(_wgslsmith_sub_i32(u_input.d.x, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.yz))));
    var_2 = Struct_2(vec3<f32>(var_2.a.x, 859f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.x)))), Struct_1(~1u, true, _wgslsmith_clamp_i32(select(2147483647i << (var_2.c.a % 32u), u_input.d.x, var_1.x || true), 1i, u_input.d.x)), Struct_1(1u, var_2.b.b, var_2.b.c), var_2.c);
    var_1 = !select(vec2<bool>(true, true), select(var_0.xw, var_0.xx, !all(vec4<bool>(false, true, true, true))), vec2<bool>(true, u_input.a.x == -20246i));
    return Struct_5(~max(vec4<u32>(~54570u, 23674u, var_2.c.a | var_2.b.a, _wgslsmith_mult_u32(34647u, var_2.b.a)), _wgslsmith_add_vec4_u32(vec4<u32>(39622u, var_2.c.a, 3819u, u_input.c) >> (vec4<u32>(0u, 50474u, 43407u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<u32>(13543u, 1u, 3056u, 55804u)))), vec4<bool>(select(var_0.x, var_1.x, false), all(select(var_0, var_0, select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(false, var_0.x, var_1.x, false), true))), true, var_1.x), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(19713u, 30199u, 28178u, var_2.d.a)), abs(vec4<u32>(var_2.c.a, var_2.b.a, var_2.d.a, 59325u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(72393u, var_2.b.a, var_2.b.a, 35733u), vec4<u32>(u_input.c, 4294967295u, 1u, 1u)) & abs(vec4<u32>(var_2.c.a, var_2.d.a, 1u, u_input.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a.x, 816f, 428f, 1495f), vec4<f32>(var_2.a.x, 665f, var_2.a.x, var_2.a.x))), vec4<f32>(-688f, var_2.a.x, var_2.a.x, var_2.a.x), select(var_1.x, false, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1222f, 1000f, 1711f, 1403f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-478f, var_2.a.x, var_2.a.x, 103f) - vec4<f32>(135f, var_2.a.x, var_2.a.x, 648f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-397f, 702f, -779f, 2510f)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_5 {
    var var_0 = any(vec3<bool>(true, !any(vec2<bool>(true, false)), u_input.c < u_input.c)) || true;
    var_0 = true;
    let var_1 = i32(-1i) * -2147483647i;
    var_0 = any(vec3<bool>(true, true, false));
    let var_2 = _wgslsmith_f_op_f32(-1075f + 402f);
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = all(func_2().b);
    var var_1 = _wgslsmith_div_vec4_f32(arg_1.d, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-632f, _wgslsmith_f_op_f32(f32(-1f) * -682f), -1000f, _wgslsmith_f_op_f32(max(909f, -1000f))), arg_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-821f, _wgslsmith_f_op_f32(240f * arg_1.d.x), -1307f, _wgslsmith_f_op_f32(select(-1266f, -348f, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -170f, arg_0, -326f)))));
    let var_2 = Struct_3(select(vec3<bool>(arg_1.b.x, all(vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x)), func_2().b.x), func_1(~countOneBits(arg_1.c.ww), Struct_4(vec2<f32>(-448f, var_1.x))).b.yww, select(select(vec3<bool>(true, arg_1.b.x, false), arg_1.b.xxw, !arg_1.b.wwz), arg_1.b.wyx, arg_1.b.wzy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.zw)), Struct_2(_wgslsmith_f_op_vec3_f32(select(var_1.yyy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, arg_1.d.x, 833f) * var_1.zwy))), any(vec2<bool>(false, arg_1.b.x)))), Struct_1(~u_input.b >> (_wgslsmith_sub_u32(60475u, arg_1.c.x) % 32u), true, -1i), Struct_1(u_input.b, 2686i >= arg_2.x, ~arg_2.x), Struct_1(u_input.c, true, u_input.d.x)), firstLeadingBit(max(24267i, arg_2.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.x * func_1(vec2<u32>(545u, 11583u), Struct_4(arg_1.d.xw)).d.x), -1680f, _wgslsmith_f_op_f32(-1512f * var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1959f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1294f, _wgslsmith_div_f32(268f, 1000f))))));
    var var_3 = !any(!arg_1.b.xyx);
    return vec4<bool>(arg_1.b.x, var_2.c.c.b, true, 6906u < _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(21265u, 21400u, var_2.c.d.a, 50981u), abs(vec4<u32>(12374u, 4294967295u, 16794u, var_2.c.b.a))), ~u_input.b | u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 1u)), vec2<u32>(39168u, 4294967295u)) | ~(abs(vec2<u32>(47984u, 18810u) << (vec2<u32>(u_input.b, 73495u) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_add_u32(u_input.b, 81186u), abs(4294967295u)));
    let var_1 = Struct_5(~(~vec4<u32>(71396u << (var_0.x % 32u), abs(var_0.x), var_0.x >> (u_input.c % 32u), u_input.b)), select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)), func_1(_wgslsmith_mod_vec2_u32(var_0, var_0), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.b, 1u), vec4<u32>(4294967295u, u_input.c, u_input.c, 1u)), 32u)]), countOneBits(select(vec2<i32>(-15112i, u_input.a.x), vec2<i32>(-2147483647i, u_input.d.x), vec2<bool>(true, false))), global0[_wgslsmith_index_u32(~countOneBits(u_input.c), 32u)]), vec4<bool>(true, firstTrailingBit(u_input.a.x) != u_input.d.x, !select(true, true, false), any(vec4<bool>(true, true, true, true))), 152f > _wgslsmith_f_op_f32(func_2().d.x + _wgslsmith_f_op_f32(f32(-1f) * -356f))), ~vec4<u32>(max(abs(var_0.x), u_input.b), _wgslsmith_mod_u32(var_0.x, u_input.b), 10263u, 28855u), _wgslsmith_f_op_vec4_f32(max(func_1(var_0, global0[_wgslsmith_index_u32(u_input.b, 32u)]).d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(523f, 1000f, 110f, -2255f) - vec4<f32>(368f, 1205f, -856f, -1000f))))))));
    let var_2 = ~firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.a.yyw, vec3<i32>(15136i, -2147483647i, u_input.d.x)), u_input.a.zxz));
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    let var_3 = func_2();
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(504f, var_3.d.x), var_1.d.yw)) - vec2<f32>(var_1.d.x, var_1.d.x)))));
    var var_5 = abs(countOneBits(max(vec4<i32>(abs(0i), 51602i, var_2.x & 1i, var_2.x | 2147483647i), firstLeadingBit(firstTrailingBit(u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.a.x, var_3.d.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(19283u, 1u, 1u >> (_wgslsmith_mod_u32(u_input.b, var_1.a.x) % 32u), 44976u), ~(~_wgslsmith_clamp_vec4_u32(var_1.a, var_1.a, var_1.c))), ~_wgslsmith_div_i32(u_input.d.x, ~_wgslsmith_div_i32(-2147483647i, 17025i)), ~u_input.a, ~select(u_input.d.x | _wgslsmith_sub_i32(0i, -1i), _wgslsmith_add_i32(var_5.x, _wgslsmith_div_i32(-2147483647i, -57047i)), true));
}

