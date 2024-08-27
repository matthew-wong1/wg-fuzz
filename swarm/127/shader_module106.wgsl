struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 69212u;

var<private> global1: array<bool, 29>;

var<private> global2: Struct_1;

var<private> global3: vec2<f32> = vec2<f32>(669f, 395f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(vec3<bool>(all(vec2<bool>(!global2.c, true)), global1[_wgslsmith_index_u32(1u >> (_wgslsmith_clamp_u32(~35801u, 4294967295u, 4294967295u) % 32u), 29u)], !all(!vec3<bool>(true, global1[_wgslsmith_index_u32(30378u, 29u)], true))), ~43066u);
    let var_1 = false;
    let var_2 = 23288u;
    let var_3 = global3.x;
    let var_4 = reverseBits(~vec2<u32>(~(~21418u), max(var_0.b, 1u) << (27817u % 32u)));
    return _wgslsmith_f_op_f32(-352f + global2.b.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = -vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(18841i, _wgslsmith_mult_i32(u_input.a, u_input.b), u_input.a), 39969i), u_input.a, u_input.b);
    global2 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.b, reverseBits(arg_2.b)), 29u)], vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(step(-323f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.b.x, -635f)) * -773f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(step(-760f, 189f))) - _wgslsmith_f_op_f32(global2.b.x + global3.x)), global2.b.x), arg_0.x > _wgslsmith_f_op_f32(func_3()));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, -802f))))));
    var var_2 = -firstLeadingBit(-_wgslsmith_sub_vec2_i32(var_0.xx, vec2<i32>(u_input.b, var_0.x)));
    let var_3 = max(select(_wgslsmith_mult_vec2_u32(min(vec2<u32>(86563u, 1u), vec2<u32>(0u, 42539u)), ~vec2<u32>(arg_2.b, 1u)) << (min(~vec2<u32>(60932u, arg_2.b), ~vec2<u32>(60238u, arg_2.b)) % vec2<u32>(32u)), ~(~firstLeadingBit(vec2<u32>(21475u, 4294967295u))), !vec2<bool>(true, arg_2.a.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b, arg_2.b), vec2<u32>(~arg_2.b, arg_2.b)) & ~select(min(vec2<u32>(33159u, 56368u), vec2<u32>(arg_2.b, arg_2.b)), vec2<u32>(arg_2.b, 19786u) | vec2<u32>(arg_2.b, 58405u), arg_2.a.xx));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b), global2.b) * _wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(global2.b.x, arg_0.x, global2.b.x, global3.x))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(max(vec3<i32>(1i, ~u_input.a, ~u_input.a), select(_wgslsmith_add_vec3_i32(vec3<i32>(20362i, 41103i, -7996i), vec3<i32>(-1290i, -30058i, u_input.a)), max(vec3<i32>(u_input.b, 1i, 2147483647i), vec3<i32>(-1i, u_input.b, u_input.a)), all(vec3<bool>(global2.c, global1[_wgslsmith_index_u32(22082u, 29u)], false))) | vec3<i32>(2147483647i, u_input.a, _wgslsmith_add_i32(0i, u_input.a))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f));
    global2 = arg_0;
    global0 = ~select(_wgslsmith_clamp_u32(~1u, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(4294967295u, 37520u), 1u), 1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(35570u, 0u), vec2<u32>(1u, 4294967295u)) % 32u)), firstTrailingBit(~(~18829u)), true);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(false, vec4<f32>(-1607f, global3.x, -569f, _wgslsmith_f_op_f32(step(662f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x)))))), _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(arg_0.b.x * global3.x))) < _wgslsmith_div_f32(1745f, -293f));
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    let var_1 = global2.a;
    global3 = var_0.b.wy;
    return arg_1;
}

fn func_1() -> f32 {
    let var_0 = !(!vec3<bool>(global2.a, !(global2.a || global1[_wgslsmith_index_u32(1u, 29u)]), !all(vec2<bool>(global2.c, global1[_wgslsmith_index_u32(18103u, 29u)]))));
    let var_1 = func_5(func_4(Struct_1(false, _wgslsmith_div_vec4_f32(global2.b, _wgslsmith_f_op_vec4_f32(func_2(global2.b.zxz, global1[_wgslsmith_index_u32(0u, 29u)], Struct_2(var_0, 37360u)))), var_0.x)), Struct_2(select(select(vec3<bool>(global2.a, global2.a, global1[_wgslsmith_index_u32(25393u, 29u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(78842u, 29u)], false), var_0, false), true), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), any(select(var_0, var_0, vec3<bool>(true, var_0.x, false)))), 1u), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), false), firstTrailingBit(~_wgslsmith_add_vec2_u32(select(vec2<u32>(65734u, 0u), vec2<u32>(26292u, 22008u), true), vec2<u32>(77871u, 81007u))));
    let var_2 = var_1.b ^ _wgslsmith_add_u32(var_1.b, _wgslsmith_mult_u32(34318u, 32895u & func_5(Struct_1(global1[_wgslsmith_index_u32(43883u, 29u)], vec4<f32>(global3.x, global3.x, 958f, 173f), true), var_1, vec3<u32>(var_1.b, 0u, 1u), vec2<u32>(4294967295u, var_1.b)).b));
    let var_3 = -countOneBits(vec2<i32>(-32523i, firstTrailingBit(u_input.b)));
    global0 = select(var_1.b, var_1.b, any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(29997u, 29u)], true), func_5(Struct_1(var_1.a.x, vec4<f32>(608f, -109f, 1407f, -1140f), var_1.a.x), Struct_2(var_1.a, var_1.b), vec3<u32>(0u, 16285u, 47087u), vec2<u32>(var_1.b, var_1.b)).a, select(vec3<bool>(var_1.a.x, global1[_wgslsmith_index_u32(40538u, 29u)], var_0.x), vec3<bool>(true, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(29780u, 29u)], true)))) || false);
    return -1276f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -1146f)))), vec2<f32>(-936f, _wgslsmith_f_op_f32(step(-1523f, _wgslsmith_f_op_f32(func_1())))), select(!vec2<bool>(global2.a, true), vec2<bool>(global2.c, true), select(vec2<bool>(global1[_wgslsmith_index_u32(46487u, 29u)], global1[_wgslsmith_index_u32(5595u, 29u)]), !vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, false))))));
    global0 = firstTrailingBit((reverseBits(1u) >> (~4294967295u % 32u)) >> (~_wgslsmith_clamp_u32(~44963u, _wgslsmith_sub_u32(4294967295u, 1u), ~75998u) % 32u));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(-853f, 1000f, global3.x, _wgslsmith_f_op_f32(global3.x + 539f))), vec4<f32>(global3.x, _wgslsmith_f_op_f32(abs(1220f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f * global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -572f))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-1000f));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1366f) + _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-1975f + global3.x)))))), _wgslsmith_f_op_f32(func_1()), 1148f, _wgslsmith_f_op_f32(-func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -191f, -1000f, var_0.x)), false)).b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, -421f)), vec2<f32>(390f, var_1)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1343f, global3.x) - _wgslsmith_f_op_vec2_f32(var_0.ww * global2.b.yw)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(715f))))), _wgslsmith_f_op_f32(global2.b.x + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f * -1647f) - var_2.x), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.zxz)), true, Struct_2(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], global2.c, false), firstLeadingBit(1u)))).x));
    var var_3 = func_5(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-267f - -1295f), _wgslsmith_f_op_f32(global3.x * -146f), _wgslsmith_div_f32(105f, -107f))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-global3.x)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-836f * global2.b.x)))), func_5(Struct_1(global1[_wgslsmith_index_u32(func_5(Struct_1(false, global2.b, global2.c), func_5(Struct_1(true, vec4<f32>(226f, var_1, -532f, 335f), true), Struct_2(vec3<bool>(global2.a, global1[_wgslsmith_index_u32(30106u, 29u)], true), 0u), vec3<u32>(0u, 4294967295u, 1u), vec2<u32>(0u, 4294967295u)), ~vec3<u32>(61240u, 4294967295u, 4294967295u), vec2<u32>(1u, 1u)).b, 29u)], _wgslsmith_f_op_vec4_f32(-global2.b), !(u_input.b <= u_input.b)), func_5(func_4(func_4(Struct_1(false, vec4<f32>(-856f, -797f, var_0.x, var_1), global2.c))), Struct_2(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], global2.c, false), ~49506u), vec3<u32>(~1u, _wgslsmith_mod_u32(0u, 61922u), 20858u), countOneBits(vec2<u32>(16544u, 0u))), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 62112u, 4294967295u), vec3<u32>(1u, 0u, 18239u), global1[_wgslsmith_index_u32(3140u, 29u)]), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(25662u, 46187u, 1u), global2.c)), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(102523u, 23777u)), firstLeadingBit(vec2<u32>(1u, 1u)))), ~abs(countOneBits(vec3<u32>(33533u, 4294967295u, 1u))), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), countOneBits(vec2<u32>(~0u, ~1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-select(reverseBits(-34568i), ~2147483647i, !global1[_wgslsmith_index_u32(var_3.b, 29u)]), abs(_wgslsmith_mod_i32(-7045i, firstLeadingBit(0i))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(reverseBits(27298i), -1i), -7591i, max(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-15080i, u_input.b, 0i), vec3<i32>(u_input.a, u_input.b, -12386i)))), u_input.a), -1i);
}

