struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 3> = array<u32, 3>(19571u, 90310u, 31812u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    global1 = array<u32, 3>();
    let var_0 = max(vec3<i32>(_wgslsmith_mult_i32(select(1i, countOneBits(0i), global0.x), ~(-u_input.a.x)), ~(-u_input.a.x ^ u_input.a.x), u_input.a.x & -u_input.a.x), vec3<i32>(0i, abs(-23403i), 2147483647i));
    global1 = array<u32, 3>();
    var var_1 = !global0.xx;
    var var_2 = Struct_3(select(select(vec4<i32>(var_0.x, ~7485i, u_input.a.x >> (global1[_wgslsmith_index_u32(0u, 3u)] % 32u), _wgslsmith_mod_i32(var_0.x, -1i)), u_input.a, any(vec3<bool>(true, var_1.x, global0.x)) | global0.x), vec4<i32>(33634i, ~reverseBits(0i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-13128i, -34442i, -18946i, -26923i), _wgslsmith_mod_vec4_i32(u_input.a, u_input.a)), _wgslsmith_mult_i32(~42227i, u_input.a.x)), vec4<bool>(true, true, true, false)), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-651f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(630f)))))), Struct_1(vec4<i32>(~u_input.a.x, var_0.x, -(u_input.a.x & -2147483647i), -_wgslsmith_div_i32(21798i, 1i)), _wgslsmith_mod_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43288u, 3u)], 3u)], 3u)], 1u), ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], u_input.b)) & max(~vec2<u32>(u_input.b, u_input.b), min(vec2<u32>(9485u, global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec2<u32>(global1[_wgslsmith_index_u32(62240u, 3u)], 85860u))), reverseBits(abs(var_0.xx)), vec4<u32>(70672u, _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 3u)]), 3u)]), ~u_input.b, ~u_input.b), vec2<bool>(true, all(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, var_1.x, global0.x, false), vec4<bool>(global0.x, var_1.x, global0.x, var_1.x))))), 176f, -select(-vec3<i32>(-2147483647i, -1i, 0i), -(u_input.a.xxw << (vec3<u32>(57409u, u_input.b, global1[_wgslsmith_index_u32(579u, 3u)]) % vec3<u32>(32u))), select(!vec3<bool>(global0.x, false, false), vec3<bool>(true, true, true), true)));
    return true;
}

fn func_2(arg_0: i32) -> i32 {
    global0 = !select(select(select(select(vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, global0.x), global0.x), select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, global0.x)), arg_0 >= 1i), select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x), arg_0 > arg_0), select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, true, global0.x))), select(!(!vec3<bool>(global0.x, global0.x, true)), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), global0.x), func_3());
    return -1838i;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    let var_0 = ~arg_0.c.d;
    global0 = select(!(!vec3<bool>(!arg_0.c.e.x, !arg_0.c.e.x, arg_0.c.e.x && arg_0.c.e.x)), !(!(!select(vec3<bool>(arg_0.c.e.x, global0.x, true), vec3<bool>(global0.x, global0.x, true), vec3<bool>(arg_0.c.e.x, global0.x, arg_0.c.e.x)))), select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(ceil(arg_0.d)) >= _wgslsmith_f_op_f32(arg_1.x * arg_1.x), global0.x, ~44907u >= (4294967295u << (var_0.x % 32u))), vec3<bool>(false, arg_0.b.a == _wgslsmith_f_op_f32(f32(-1f) * -701f), false)));
    var var_1 = 60685u;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, -465f, arg_0.b.a) * arg_1)) * vec3<f32>(arg_0.b.a, 595f, -416f)) + vec3<f32>(_wgslsmith_f_op_f32(step(-772f, 1031f)), _wgslsmith_f_op_f32(-arg_0.d), arg_0.d)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(315f, arg_0.d, arg_1.x)), arg_1)))))));
    global1 = array<u32, 3>();
    return false;
}

fn func_1() -> bool {
    let var_0 = func_4(Struct_3(~vec4<i32>(~(-37274i), u_input.a.x, 1i, func_2(u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -833f)), Struct_1(-u_input.a, ~firstLeadingBit(vec2<u32>(u_input.b, 10409u)), -(u_input.a.xz | vec2<i32>(u_input.a.x, -1i)), vec4<u32>(~1u, 1u, _wgslsmith_div_u32(u_input.b, 3067u), ~40088u), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1914f)) * _wgslsmith_f_op_f32(round(109f))) * _wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(max(-141f, 210f)))), u_input.a.xxy), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-1110f, 994f)))), -995f, -1371f));
    global1 = array<u32, 3>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(520f))));
    var var_2 = _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1381f)) + var_1.a)) * var_1.a));
    var var_3 = _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-(func_2(u_input.a.x) | _wgslsmith_add_i32(-2147483647i, u_input.a.x)), u_input.a.x, abs(_wgslsmith_dot_vec3_i32(u_input.a.xwy << (vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 599u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-20975i, -16708i, -840i), u_input.a.zwz))), max(i32(-1i) * -u_input.a.x, min(u_input.a.x ^ u_input.a.x, -37137i))), u_input.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    let var_0 = 38935u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f), 1165f) * _wgslsmith_f_op_f32(-284f * -772f)))));
    global0 = vec3<bool>(any(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)))), true, all(vec3<bool>(true, reverseBits(-19086i) == u_input.a.x, global0.x)));
    global1 = array<u32, 3>();
    global0 = vec3<bool>(func_1(), all(select(vec3<bool>(true, global0.x, global0.x), !select(vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, true)), true)), select(func_1(), true, global0.x));
    var var_2 = global0.x;
    let var_3 = Struct_3(vec4<i32>(2147483647i, u_input.a.x, _wgslsmith_mod_i32(select(u_input.a.x, u_input.a.x, global0.x), u_input.a.x >> (4294967295u % 32u)), 1i) & _wgslsmith_mod_vec4_i32(u_input.a, u_input.a), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)) * _wgslsmith_f_op_f32(ceil(var_1.a)))), Struct_1(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)) | vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(10429i, 0i, u_input.a.x, u_input.a.x)), -1i, firstLeadingBit(12790i), abs(u_input.a.x)), vec2<u32>(~var_0, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 48668u), 3u)]) >> (_wgslsmith_div_vec2_u32(vec2<u32>(9336u, 125358u) & vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], u_input.b), ~vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)])) % vec2<u32>(32u)), abs(u_input.a.xz ^ u_input.a.wy), vec4<u32>(var_0, firstTrailingBit(_wgslsmith_mult_u32(4294967295u, u_input.b)), u_input.b, 3379u), global0.zx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, var_1.a), -348f) + 153f), u_input.a.zwx);
    global0 = !vec3<bool>(var_3.c.e.x, func_3(), !any(vec4<bool>(false, global0.x, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ ~u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, u_input.a.x, var_3.e.x), vec3<i32>(2147483647i, -2147483647i, u_input.a.x), true), u_input.a.xww << (vec3<u32>(var_0, 0u, 41230u) % vec3<u32>(32u)), select(vec3<i32>(32543i, 37384i, u_input.a.x), u_input.a.xyy, vec3<bool>(var_3.c.e.x, global0.x, var_3.c.e.x))), var_3.c.a.xwx)), var_1.a);
}

