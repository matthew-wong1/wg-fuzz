struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 22> = array<f32, 22>(-838f, -122f, -440f, -1780f, 1000f, -1035f, -796f, 268f, -764f, 979f, 2006f, -161f, -785f, 1093f, -331f, 1453f, 432f, -343f, -844f, 1526f, -198f, -1681f);

var<private> global2: array<vec3<bool>, 14>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global4: array<vec4<bool>, 32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = firstTrailingBit(~(~(vec4<i32>(u_input.b, 1i, 0i, arg_1.x) & vec4<i32>(-26450i, 1i, 46229i, arg_1.x))) ^ vec4<i32>(arg_1.x, 2147483647i, ~(-10228i), u_input.b));
    var var_1 = global1[_wgslsmith_index_u32(34121u, 22u)];
    let var_2 = Struct_2(Struct_1(~(~_wgslsmith_add_u32(arg_2.x, 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-887f, -734f), vec2<f32>(-1524f, -394f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(439f, 789f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]) + vec2<f32>(414f, global1[_wgslsmith_index_u32(7630u, 22u)]))))), Struct_1(arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-430f, 1000f), vec2<f32>(global1[_wgslsmith_index_u32(arg_2.x, 22u)], 1000f))) * vec2<f32>(-633f, global1[_wgslsmith_index_u32(106259u, 22u)])))));
    var var_3 = Struct_3(var_2);
    let var_4 = var_3.a.a.b.x;
    return select(select(vec3<bool>(global3.x, true, true), select(global2[_wgslsmith_index_u32(var_3.a.b.a, 14u)], vec3<bool>(true, true, !global0.x), vec3<bool>(arg_0, true, u_input.a.x < u_input.a.x)), var_2.b.a >= _wgslsmith_clamp_u32(firstLeadingBit(33362u), 63871u << (0u % 32u), ~var_3.a.b.a)), select(!(!select(vec3<bool>(global0.x, arg_0, global3.x), vec3<bool>(false, true, false), false)), vec3<bool>(!arg_0, arg_0, true), select(global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(var_3.a.b.a, 0u), 25850u | var_3.a.a.a, any(vec4<bool>(true, true, true, true))), 14u)], !vec3<bool>(false, true, global0.x), !(u_input.d <= arg_2.x))), true);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> i32 {
    global0 = vec3<bool>(global3.x, global0.x, global0.x);
    global2 = array<vec3<bool>, 14>();
    global1 = array<f32, 22>();
    let var_0 = abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x & arg_0, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-28175i, -1i, 1i)), _wgslsmith_clamp_i32(arg_0, 1i, arg_0), ~arg_0), max(vec4<i32>(arg_0, arg_0, u_input.b, u_input.b), vec4<i32>(arg_0, arg_0, -2147483647i, arg_0))));
    global0 = select(select(select(select(global3.yxy, func_3(global3.x, vec2<i32>(arg_0, -9436i), vec2<u32>(arg_3.a.a.a, arg_2)), global3.x), global2[_wgslsmith_index_u32(countOneBits(arg_3.a.a.a), 14u)], !global2[_wgslsmith_index_u32(arg_1.a.b.a, 14u)]), func_3(true, ~vec2<i32>(0i, arg_0), ~max(vec2<u32>(arg_3.a.b.a, arg_1.a.b.a), u_input.c.wz)), true), vec3<bool>(var_0.x != _wgslsmith_mult_i32(u_input.b, arg_0), true, !global0.x), vec3<bool>(false & (any(vec2<bool>(false, global3.x)) || !global3.x), ~(arg_1.a.a.a ^ 0u) >= 4294967295u, true));
    return -41817i;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = -2147483647i;
    global0 = !arg_0.zxy;
    global3 = select(vec4<bool>(arg_0.x, !all(arg_0.wy), false, true), !vec4<bool>(false, false, global0.x, any(!arg_0)), !vec4<bool>(all(select(vec2<bool>(true, arg_0.x), global0.xx, vec2<bool>(false, true))), true, ~u_input.c.x > 0u, true));
    global3 = vec4<bool>(true, true & (global3.x | global0.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, u_input.c.x) << ((u_input.d >> (25128u % 32u)) % 32u), 0u), 22u)] >= _wgslsmith_f_op_f32(arg_2.x + arg_2.x), true);
    global2 = array<vec3<bool>, 14>();
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(71069u, 4294967295u, 4294967295u, 53324u)), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 22u)], 313f) - arg_2.zz))))), Struct_1(~select(u_input.d, 11819u >> (1u % 32u), true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1163f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 22u)]))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> f32 {
    let var_0 = !(!global3.x);
    global3 = vec4<bool>(false, true, !global0.x && (arg_1.b.x == _wgslsmith_f_op_f32(arg_1.b.x + 350f)), _wgslsmith_f_op_f32(trunc(arg_3.a.a.b.x)) != arg_3.a.a.b.x);
    var var_1 = func_4(vec4<bool>(true, !all(!vec2<bool>(true, global3.x)), ~(43603u >> (arg_1.a % 32u)) <= ~arg_3.a.a.a, !global3.x), abs(vec4<i32>(func_2(u_input.b, arg_3, arg_2, arg_3), u_input.a.x, firstTrailingBit(-1i), u_input.b) << (~vec4<u32>(arg_0.x, 1u, arg_1.a, 37308u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.a.b.x, 1000f) * _wgslsmith_f_op_f32(trunc(1043f))), 801f, _wgslsmith_f_op_f32(-1538f * _wgslsmith_f_op_f32(-arg_3.a.a.b.x)))));
    var_1 = arg_3.a;
    global1 = array<f32, 22>();
    return var_1.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.ww;
    var var_1 = _wgslsmith_f_op_f32(-484f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~1u, 22u)])) * global1[_wgslsmith_index_u32(u_input.d, 22u)]));
    let var_2 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.d), 22u)], 1389f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686f + _wgslsmith_f_op_f32(func_1(u_input.c, Struct_1(1u, vec2<f32>(-668f, -1276f)), u_input.c.x, Struct_3(Struct_2(Struct_1(0u, vec2<f32>(global1[_wgslsmith_index_u32(7050u, 22u)], var_2)), Struct_1(60112u, vec2<f32>(global1[_wgslsmith_index_u32(25869u, 22u)], var_2))))))) * global1[_wgslsmith_index_u32(u_input.c.x, 22u)]) + 797f));
    var var_3 = Struct_2(func_4(vec4<bool>(all(vec4<bool>(false, global3.x, false, false)), var_0.x, true, var_0.x), -_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x), vec4<i32>(0i, -3990i, 67821i, u_input.a.x), vec4<bool>(global3.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, 17089i), vec4<i32>(-2147483647i, 26200i, -8316i, -12198i))), vec3<f32>(374f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(22844u, 22u)], -212f, all(vec3<bool>(false, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(min(954f, var_2))))).a, Struct_1(~u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1734f, var_2) + vec2<f32>(761f, -597f)) - vec2<f32>(-1059f, 2044f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, 489f))))))));
    let x = u_input.a;
    s_output = StorageBuffer((firstTrailingBit(u_input.c.x) & ~abs(4294967295u)) | ~firstLeadingBit(func_4(vec4<bool>(false, true, true, false), vec4<i32>(-2147483647i, u_input.b, 0i, u_input.b), vec3<f32>(346f, 1520f, var_3.a.b.x)).b.a), select(vec4<u32>(~(~u_input.d), abs(_wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(u_input.d, 21469u))), 0u, abs(4294967295u << (u_input.c.x % 32u))), _wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.b.a, u_input.d, 4294967295u, 0u), u_input.c), ~u_input.c, vec4<bool>(global0.x, true, false, var_0.x)), u_input.c), vec4<bool>(global0.x, !(!global0.x), true, _wgslsmith_add_u32(var_3.b.a, u_input.c.x) <= select(u_input.d, 0u, true))));
}

