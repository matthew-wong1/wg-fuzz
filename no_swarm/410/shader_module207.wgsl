struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1628f, 511f);

var<private> global1: i32;

var<private> global2: f32 = -1000f;

var<private> global3: array<u32, 20>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    return reverseBits(_wgslsmith_dot_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(40834i, 2268i, u_input.b.x, arg_0.a.x), vec4<i32>(1i, u_input.b.x, 2147483647i, u_input.b.x)), vec4<i32>(u_input.b.x, 18831i, u_input.b.x, arg_0.a.x)) ^ vec4<i32>(-arg_0.a.x, _wgslsmith_clamp_i32(u_input.b.x, arg_0.a.x, u_input.b.x), abs(u_input.b.x), u_input.b.x & -2147483647i), -u_input.b));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    global3 = array<u32, 20>();
    var var_0 = u_input.a;
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), 1109f)));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, firstTrailingBit(u_input.b.x), ~(~6083i), -3814i), vec4<i32>(_wgslsmith_add_i32(-22943i, 51312i), -9831i, ~_wgslsmith_clamp_i32(abs(u_input.b.x), u_input.b.x, u_input.b.x), arg_1.a.x));
    var var_2 = vec3<bool>(arg_2, true, !arg_2);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-global0.x)))), global0.x) + vec2<f32>(1243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f))));
}

fn func_2() -> vec4<f32> {
    global1 = _wgslsmith_dot_vec3_i32(~(~abs(u_input.b.xyx) & ~reverseBits(vec3<i32>(-2147483647i, u_input.b.x, -2147483647i))), select(u_input.b.ywy, vec3<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x) | 12067i, firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, 2147483647i)), 46070i), true));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_4(func_3(Struct_1(u_input.b.yy, true)), Struct_1(u_input.b.zw, false), false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-442f)), -328f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 648f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -313f), vec2<f32>(-1440f, -397f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 846f) - vec2<f32>(-861f, -837f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -403f), vec2<f32>(756f, global0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-349f, 548f), vec2<f32>(global0.x, 504f)), select(vec2<bool>(false, false), vec2<bool>(false, true), false))))))));
    global1 = reverseBits(u_input.b.x);
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), !all(vec2<bool>(false, false))), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)))), vec2<bool>(all(vec2<bool>(true, all(vec3<bool>(false, true, true)))), _wgslsmith_dot_vec3_u32(u_input.a.xyy, ~u_input.a.ywz) < firstLeadingBit(firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 20u)]))), any(vec3<bool>(!(u_input.b.x < -18859i), false, true)));
    global0 = _wgslsmith_f_op_vec2_f32(func_4(1i >> (u_input.a.x % 32u), Struct_1(max(u_input.b.yy, ~u_input.b.yy), all(select(var_0, vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)))), all(select(vec3<bool>(false, var_0.x, u_input.b.x >= 28364i), !vec3<bool>(false, var_0.x, false), select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, var_0.x)))))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(368f, 1617f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1238f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1148f * 111f))), global0.x))));
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2()).x;
    var var_1 = true;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(-1272f)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = Struct_1(u_input.b.xy, true);
    var_1 = var_3.b;
    return Struct_1(~vec2<i32>(firstTrailingBit(~0i), _wgslsmith_dot_vec3_i32(-vec3<i32>(39421i, 0i, -1248i), -u_input.b.zyw)), !(var_2.x >= _wgslsmith_f_op_f32(arg_0.x - var_2.x)));
}

fn func_6(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(select(36490u, _wgslsmith_div_u32(u_input.c ^ u_input.c, 53924u) >> (1u % 32u), arg_2.b), ~_wgslsmith_dot_vec4_u32(u_input.a, ~(~vec4<u32>(4294967295u, 4294967295u, 48967u, 30824u))), ~countOneBits(1u));
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, global0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3))), _wgslsmith_f_op_vec2_f32(func_4(-arg_2.a.x, Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), arg_2.b), any(vec4<bool>(arg_2.b, false, arg_2.b, arg_2.b)))).x))));
    return func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-627f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1340f, arg_3)), arg_3, _wgslsmith_f_op_f32(select(arg_3, -1000f, true || arg_2.b)))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = func_6(vec2<u32>(~9173u >> (1u % 32u), ~countOneBits(u_input.a.x)), 0u, func_5(_wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * -1774f)))));
    var var_1 = -36017i;
    global1 = u_input.b.x;
    let var_2 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 71229u, 5395u), u_input.a.ywx), min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 84249u)), ~firstLeadingBit(4294967295u)), ~reverseBits(u_input.a.zx) >> (abs(firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(81172u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36780u, 20u)], 20u)], 20u)]))) % vec2<u32>(32u)));
    let var_3 = arg_2.xz;
    return max(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.b.x, -26618i, -1i), u_input.b.yxw, true), ~u_input.b.ywz), u_input.b.yxy)), u_input.b.yyx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-11059i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(6978i, -12333i), u_input.b.x << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)] % 32u), -3824i), func_1(global0.x <= 2245f, true, select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    global1 = countOneBits(var_0);
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(~u_input.b.ww & (vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -1i)), u_input.b.yz), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 631f, -369f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1818f, -1470f, -841f) * vec3<f32>(global0.x, 643f, -949f)))))) - vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + global0.x))))));
    var var_3 = -36056i;
    let var_4 = -1849f;
    var_3 = -1i;
    var var_5 = abs(u_input.b);
    var_3 = -func_6(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(u_input.c, 65605u), vec2<u32>(global3[_wgslsmith_index_u32(1u, 20u)], 7855u) & u_input.a.zw), ~u_input.a.x << (min(0u, u_input.a.x) % 32u), func_6(~u_input.a.zy, 10139u, Struct_1(u_input.b.yx, var_1.b), _wgslsmith_f_op_vec4_f32(func_2()).x), var_4).a.x ^ func_6(vec2<u32>(u_input.a.x, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34850u, 20u)], 20u)] ^ firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(91801u, 20u)], 20u)])), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(27028u, u_input.c, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.a.x), u_input.a), vec4<u32>(reverseBits(4294967295u), u_input.a.x, 0u, ~global3[_wgslsmith_index_u32(u_input.a.x, 20u)])), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_4, 1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1169f, global0.x, global0.x, 884f) * vec4<f32>(1695f, -1000f, 500f, -859f)))), var_2.x).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(9008u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.xz), 20u)], global3[_wgslsmith_index_u32(46747u, 20u)], ~u_input.a.x) ^ vec4<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(max(0u, 1u), 20u)], u_input.c, firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(u_input.a.xyx, _wgslsmith_mod_vec3_u32(u_input.a.zwz, vec3<u32>(36324u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 0u))), ~(~u_input.c), _wgslsmith_sub_u32(12784u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)])));
}

