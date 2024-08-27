struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: array<f32, 22> = array<f32, 22>(470f, -1282f, 1316f, -1248f, -1219f, 689f, -874f, 713f, -1444f, 765f, 870f, -473f, -586f, -1000f, 204f, 1361f, 1140f, 351f, -106f, 1763f, -436f, -682f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = array<f32, 22>();
    let var_0 = Struct_5(Struct_1(abs((u_input.c.zz ^ vec2<i32>(u_input.c.x, u_input.a.x)) >> (abs(u_input.b) % vec2<u32>(32u))), any(vec3<bool>(true, false, true)) | false, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(18194u, 22u)]))))), 557f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), (i32(-1i) * 0i) < ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c.x), u_input.c.xy), Struct_2(Struct_1(vec2<i32>(u_input.a.x >> (4294967295u % 32u), -28069i), all(vec2<bool>(false, true)) && true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-265f, 887f, 527f, global1[_wgslsmith_index_u32(32847u, 22u)]), vec4<f32>(global1[_wgslsmith_index_u32(60153u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 299f, 2005f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1815f) - -568f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(10370u, 22u)], global1[_wgslsmith_index_u32(33281u, 22u)], global1[_wgslsmith_index_u32(16111u, 22u)]), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(21130u, 22u)], -275f)))), ~(firstTrailingBit(vec3<u32>(4350u, 36071u, u_input.b.x)) >> (select(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<bool>(false, true, false)) % vec3<u32>(32u))), true));
    return var_0.b;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    var var_0 = Struct_5(Struct_1(u_input.c.yx, func_3(), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(select(14603u, 4294967295u, false), 22u)])), 580f, _wgslsmith_div_f32(-774f, 380f)), global1[_wgslsmith_index_u32(u_input.b.x, 22u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(18055u, 22u)], 1365f, -547f), vec3<f32>(274f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -115f)), vec3<f32>(1311f, -127f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))))), any(!vec2<bool>(true, all(vec3<bool>(false, false, true)))), Struct_2(Struct_1(u_input.c.xx, false, vec4<f32>(global1[_wgslsmith_index_u32(~1u, 22u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 22u)] * 1694f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.b.x, 22u)])), _wgslsmith_f_op_f32(abs(720f))), global1[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(611f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 861f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -845f, -358f)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)))), max(abs(vec3<u32>(41049u, u_input.b.x, 0u)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 87744u) | vec3<u32>(u_input.b.x, 105161u, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 116u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x))) % vec3<u32>(32u)), true));
    return Struct_1(vec2<i32>(1i, ~(-1i) ^ _wgslsmith_mult_i32(~(-14919i), var_0.a.a.x)), any(select(select(vec2<bool>(var_0.a.b, var_0.c.a.b), vec2<bool>(var_0.b, var_0.c.a.b), vec2<bool>(false, true)), vec2<bool>(false, var_0.b), !select(vec2<bool>(var_0.b, var_0.a.b), vec2<bool>(true, var_0.a.b), vec2<bool>(false, var_0.a.b)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1676f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)])), global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_f_op_f32(f32(-1f) * -2036f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 22u)] + _wgslsmith_f_op_f32(-1227f - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x & 0u, countOneBits(u_input.b.x)), 22u)])), vec3<f32>(_wgslsmith_f_op_f32(sign(1282f)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), reverseBits(var_0.c.b.yx)), 22u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -374f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = 1i;
    var var_2 = ~(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, u_input.c.x, -21866i), vec3<i32>(var_0.a.x, var_0.a.x, -119117i)) ^ ~0i, ~var_0.a.x, 2147483647i));
    global1 = array<f32, 22>();
    let var_3 = Struct_4(Struct_3(reverseBits(_wgslsmith_mod_vec2_i32(var_0.a, var_0.a)) | u_input.c.yz, Struct_2(Struct_1(-var_0.a, u_input.a.x < -50722i, _wgslsmith_f_op_vec4_f32(vec4<f32>(353f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], var_0.e.x) * var_0.c), _wgslsmith_f_op_f32(706f + var_0.d), vec3<f32>(1000f, -179f, global1[_wgslsmith_index_u32(0u, 22u)])), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4133u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 27422u, 25600u)), u_input.b.x, _wgslsmith_mod_u32(1u, u_input.b.x)), true && !arg_0.x), func_2(), _wgslsmith_mult_i32(var_2.x, max(func_2().a.x, -u_input.c.x))), vec3<u32>(abs(~9286u), ~u_input.b.x << (~1u % 32u), (1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 46158u), vec4<u32>(1u, u_input.b.x, 18053u, u_input.b.x)) % 32u)) | u_input.b.x), Struct_2(Struct_1(~var_0.a & vec2<i32>(var_0.a.x, 1i), var_0.b, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(236f, var_0.d)) - -1221f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.e), vec3<f32>(219f, 418f, var_0.c.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 3580u), vec4<u32>(1u, 1u, 499u, u_input.b.x)), 33616u, ~16776u), true));
    return var_3.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_4, arg_3: vec3<f32>) -> bool {
    let var_0 = u_input.b.x;
    global1 = array<f32, 22>();
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c.x, func_2().a.x), -(~(~arg_2.a.a.x))), -(~u_input.c.xz & abs(-vec2<i32>(12359i, -1i))));
    let var_2 = countOneBits(select(~_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.c.a.a.x, arg_1, -43443i, arg_2.a.b.a.a.x), select(vec4<i32>(-2147483647i, arg_2.c.a.a.x, 34453i, -1i), vec4<i32>(arg_1, arg_2.a.c.a.x, -35592i, -78647i), vec4<bool>(arg_2.a.b.a.b, false, arg_0.x, arg_0.x))), vec4<i32>(2147483647i, countOneBits(u_input.c.x), 51612i, _wgslsmith_add_i32(u_input.a.x, u_input.c.x ^ arg_2.a.d)), vec4<bool>(true, arg_2.c.a.b, arg_2.c.c, arg_2.c.c)));
    global0 = array<Struct_4, 14>();
    return arg_2.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(13488u, _wgslsmith_mod_u32(u_input.b.x, 0u) ^ u_input.b.x, func_4(!vec3<bool>(true, false, all(vec3<bool>(false, true, false))), 1i, Struct_4(func_1(vec2<bool>(false, false), -2147483647i, vec2<bool>(true, true), vec4<bool>(false, true, false, false)), vec3<u32>(4294967295u, u_input.b.x, 57618u & u_input.b.x), func_1(vec2<bool>(true, true), 2147483647i, vec2<bool>(true, true), vec4<bool>(false, true, false, false)).b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -1000f, 840f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2160f, 726f, global1[_wgslsmith_index_u32(66676u, 22u)])), true)))));
    global1 = array<f32, 22>();
    let var_1 = Struct_3(vec2<i32>(((u_input.a.x | u_input.a.x) >> (9916u % 32u)) & (~u_input.c.x << ((u_input.b.x ^ 0u) % 32u)), u_input.c.x), func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), u_input.a.x, !(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true))).b, Struct_1(vec2<i32>(func_2().a.x, -countOneBits(2147483647i)), false, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(474f, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(35884u, 22u)], 266f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 22u)], 1097f, -1375f), vec4<f32>(-457f, -364f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -1027f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 3136u), 22u)] - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u), vec4<u32>(0u, 0u, 60502u, u_input.b.x)), 22u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<f32>(-381f, -662f, global1[_wgslsmith_index_u32(0u, 22u)]))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 284f, 429f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(1u, 22u)], 603f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)])))))), u_input.a.x);
    let var_2 = ~(~min(~vec2<i32>(var_1.b.a.a.x, 0i), u_input.c.yx) ^ var_1.b.a.a);
    global1 = array<f32, 22>();
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 22u)])))), var_1.c.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-364f, var_1.b.a.d))), -1683f), _wgslsmith_f_op_vec4_f32(min(var_1.b.a.c, var_1.b.a.c)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1182f * -1301f), _wgslsmith_f_op_f32(floor(var_1.b.a.e.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(751f + -637f), _wgslsmith_f_op_f32(f32(-1f) * -165f))), func_1(!vec2<bool>(var_1.c.b, true), -var_1.c.a.x, select(vec2<bool>(true, var_1.c.b), vec2<bool>(true, var_1.b.c), vec2<bool>(true, true)), vec4<bool>(true, var_1.b.c, var_1.c.b, var_1.c.b)).b.c)), var_1.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.a.c.x, global1[_wgslsmith_index_u32(var_1.b.b.x, 22u)], true)) - -1515f)), -1909f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~(~(vec3<u32>(u_input.b.x, 5763u, var_1.b.b.x) << (vec3<u32>(var_1.b.b.x, var_1.b.b.x, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 43944u, 7668u), ~(~var_1.b.b), ~vec3<u32>(u_input.b.x, var_1.b.b.x, var_1.b.b.x))), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(~u_input.b, ~vec2<u32>(var_1.b.b.x, 15044u)), var_1.b.b.yz), _wgslsmith_f_op_f32(f32(-1f) * -2130f));
}

