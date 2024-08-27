struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: vec4<f32> = vec4<f32>(-182f, 1000f, 550f, -1932f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<bool>, 8>();
    var var_0 = -695f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.x)))), arg_1.a.x)), _wgslsmith_add_vec3_i32(u_input.c.zyy, arg_1.b), false);
    var var_2 = abs(vec3<i32>(var_1.b.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-28842i, -1i, -1i), ~2690i), ~u_input.c.x) | firstLeadingBit(vec3<i32>(0i, 40833i, var_1.b.x)));
    var var_3 = -_wgslsmith_mod_i32(-_wgslsmith_div_i32(_wgslsmith_sub_i32(12146i, -3564i), firstTrailingBit(arg_0)), arg_1.b.x);
    return arg_1;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_2(-u_input.c, u_input.a.xz, !vec4<bool>(!(false && arg_0), !arg_0, any(vec2<bool>(arg_0, arg_0)), arg_0), false, abs(~vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), max(u_input.b, arg_1), _wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u), u_input.a.x)));
    var var_1 = Struct_2(-var_0.a, u_input.a.yx, select(!vec4<bool>(false, arg_0, arg_0, !var_0.c.x), !select(!global0[_wgslsmith_index_u32(arg_1, 8u)], select(vec4<bool>(true, true, var_0.c.x, false), vec4<bool>(arg_0, var_0.c.x, true, true), vec4<bool>(false, arg_0, true, true)), select(vec4<bool>(arg_0, var_0.d, arg_0, var_0.c.x), vec4<bool>(false, true, arg_0, var_0.d), global0[_wgslsmith_index_u32(arg_1, 8u)])), !(!global0[_wgslsmith_index_u32(var_0.b.x, 8u)])), !var_0.c.x & ((_wgslsmith_div_f32(252f, -1211f) != _wgslsmith_div_f32(448f, arg_2.x)) && (max(u_input.c.x, var_0.a.x) < -1i)), reverseBits(~(vec4<u32>(var_0.b.x, 38380u, u_input.b, u_input.b) ^ firstTrailingBit(vec4<u32>(68217u, 30970u, var_0.e.x, arg_1)))));
    global0 = array<vec4<bool>, 8>();
    var var_2 = abs(vec2<u32>(~_wgslsmith_dot_vec2_u32(~u_input.a.xx, vec2<u32>(4294967295u, u_input.a.x) << (vec2<u32>(16458u, var_0.b.x) % vec2<u32>(32u))), var_1.e.x));
    var var_3 = Struct_1(vec2<f32>(792f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(min(global1.x, arg_2.x))))), -(-min(var_0.a.wyz, var_1.a.zyx) << (~u_input.a % vec3<u32>(32u))), (!var_0.c.x && false) && any(var_0.c.xxx));
    return vec2<bool>(!any(!(!global0[_wgslsmith_index_u32(var_2.x, 8u)])), true);
}

fn func_2(arg_0: i32) -> StorageBuffer {
    var var_0 = -arg_0;
    var var_1 = Struct_4(Struct_3(func_3(false, abs(7407u) ^ ~u_input.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -100f, global1.x), vec3<f32>(-215f, global1.x, -2263f), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(global1.xzz * global1.zxx)))), Struct_2(vec4<i32>(-2147483647i, firstLeadingBit(arg_0), u_input.c.x, _wgslsmith_sub_i32(17796i, 0i)), ~select(vec2<u32>(u_input.a.x, 40329u), u_input.a.yz, vec2<bool>(false, true)), vec4<bool>(all(vec2<bool>(false, true)), u_input.a.x >= u_input.b, false, true), all(vec3<bool>(false, false, false)) || false, vec4<u32>(firstTrailingBit(u_input.b), 4294967295u, 1u, ~u_input.a.x)), countOneBits(_wgslsmith_add_vec4_i32(u_input.c, select(u_input.c, u_input.c, false))), ~(~u_input.a)), Struct_3(select(vec2<bool>(true, false), vec2<bool>(true, func_1(u_input.c.x, Struct_1(vec2<f32>(833f, global1.x), vec3<i32>(arg_0, -11421i, 49851i), false)).c), vec2<bool>(true, true)), Struct_2(reverseBits(firstTrailingBit(vec4<i32>(-1i, 1i, -4312i, u_input.c.x))), u_input.a.zx, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], _wgslsmith_f_op_f32(trunc(global1.x)) < _wgslsmith_f_op_f32(-global1.x), min(~vec4<u32>(u_input.a.x, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, 40612u, u_input.a.x) ^ vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))), vec4<i32>(max(_wgslsmith_mult_i32(u_input.c.x, -28800i), arg_0), abs(-11215i) >> (u_input.a.x % 32u), arg_0, -28754i), countOneBits(~(~u_input.a))), Struct_2(~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_0, arg_0, arg_0, 0i)), select(vec4<i32>(58990i, 0i, u_input.c.x, arg_0), vec4<i32>(-2147483647i, arg_0, arg_0, u_input.c.x), true)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(15815u, u_input.a.x)), ~u_input.a.yx)), global0[_wgslsmith_index_u32(firstLeadingBit(~(~52687u)), 8u)], true, ~abs(reverseBits(vec4<u32>(u_input.b, 0u, u_input.b, 65956u)))), 0u, Struct_1(global1.xy, _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c.x), abs(1i), -25138i), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.yzy, vec3<i32>(u_input.c.x, -2147483647i, 1i)), reverseBits(u_input.c.zxz))), func_3(true, ~_wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1609f, -636f, global1.x), vec3<f32>(1421f, 120f, -465f)))).x));
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.a.x))));
    let var_4 = u_input.a;
    return StorageBuffer(u_input.c.zx, vec4<f32>(func_1(var_1.a.b.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(134f, var_3))), -vec3<i32>(arg_0, arg_0, 1i), !var_1.e.c)).a.x, _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.a.x + 842f) * -534f)), _wgslsmith_f_op_f32(round(497f))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.e.a.x))), _wgslsmith_f_op_f32(sign(949f))), ~vec4<u32>(_wgslsmith_mod_u32(1u, 42372u), ~var_4.x, u_input.a.x, countOneBits(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yw)), firstTrailingBit(u_input.c.yyz), true));
    let x = u_input.a;
    s_output = func_2(~var_0.b.x);
}

