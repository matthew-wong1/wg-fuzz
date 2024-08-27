struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-1030f, 572f, 807f, 443f, -1562f, -658f, -2640f, 1876f, 621f, -884f, 266f, -1542f, 994f, -915f, -462f, 1707f, 636f, -300f, -300f, -1000f, -1316f, -1182f, -204f, -1092f, -219f, 355f);

var<private> global1: i32;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = reverseBits(select(vec2<i32>(-u_input.a, u_input.c.x), firstLeadingBit(abs(vec2<i32>(u_input.d.x, -31189i))), true)) | vec2<i32>(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_mod_i32(u_input.e.x, -851i)), u_input.e.x);
    global1 = var_0.x;
    let var_1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(min(_wgslsmith_mod_vec4_i32(u_input.e, -u_input.e), -u_input.e)), vec4<i32>(reverseBits(5191i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, var_0.x) << (~vec3<u32>(global3.x, 4294967295u, global3.x) % vec3<u32>(32u)), vec3<i32>(abs(u_input.e.x), -u_input.c.x, countOneBits(-1i))), 67335i, _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.x, max(var_0.x, -5775i), var_0.x, u_input.c.x), vec4<i32>(var_0.x, u_input.d.x ^ var_0.x, _wgslsmith_dot_vec3_i32(u_input.e.xxx, vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x)), _wgslsmith_mod_i32(2147483647i, var_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(global3.x), 26u)] * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + global0[_wgslsmith_index_u32(u_input.b, 26u)]))))));
    global1 = -_wgslsmith_dot_vec3_i32(~(-var_1.zyz << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, global3.x, global3.x), global3.xzx) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(u_input.a, var_1.x, var_0.x, var_0.x)), ~(-9649i), -50171i));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.zz, ~vec2<u32>(0u, u_input.b)), 26u)];
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_3(false, countOneBits(9460u), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * -1000f));
    let var_1 = firstTrailingBit(vec4<u32>(1u, 0u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(71793u, u_input.b)), ~global3.yy), select(7302u, ~(~4484u), false)));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1847f, _wgslsmith_f_op_f32(func_3())) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1336f), _wgslsmith_f_op_f32(1271f + 722f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 26u)]) - _wgslsmith_f_op_f32(trunc(arg_0.d)))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d))), -1182f);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(544f)), -885f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_0.c.d))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, 1923f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0.b, 26u)], arg_0.d), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, var_2.x))))), select(~28351u, 0u, var_0.b > u_input.b) <= ~var_1.x)));
    return firstLeadingBit(var_1.xy);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<bool> {
    return vec3<bool>(arg_2.a, any(arg_2.c.c.xx), false);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(781u, arg_1.b.x), vec2<u32>(u_input.b, 28469u), vec2<bool>(arg_1.c.x, false)) | reverseBits(vec2<u32>(global3.x, 4294967295u)), func_2(Struct_1(vec2<i32>(arg_0, -1i), vec3<i32>(arg_0, 34512i, 15989i), vec4<bool>(global2.x, false, global2.x, true), arg_1.d.x)) & vec2<u32>(1u, 73683u)), vec2<u32>(firstTrailingBit(global3.x), ~global3.x | _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b))), select(vec2<bool>(all(select(vec2<bool>(true, global2.x), arg_1.e.c.xw, true)), true), !arg_2.ww, arg_2.yw), Struct_3(any(select(vec2<bool>(arg_2.x, arg_2.x), select(arg_1.c.zz, vec2<bool>(true, false), arg_1.e.c.yx), !arg_2.wy)), countOneBits(~(84955u >> (arg_1.b.x % 32u))), Struct_1(max(arg_1.e.a, vec2<i32>(-6882i, 0i)), u_input.e.yxx, vec4<bool>(!arg_1.e.c.x, true, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d.x)))), 1811f));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1.b.x, arg_1.b.x)), vec2<u32>(~u_input.b << (reverseBits(1u) % 32u), u_input.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(37942u, 13147u), vec2<u32>(global3.x, 4294967295u)), ~min(arg_1.b, global3.zx)), 1u));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(1i, i32(-1i) * -10639i), arg_1.e.b.x, firstLeadingBit(arg_1.e.b.x), 4937i);
    var var_3 = !(!select(arg_2, vec4<bool>(global2.x, all(vec2<bool>(var_0.x, true)), 9417u <= arg_1.b.x, !global2.x), vec4<bool>(func_4(global3.x, var_0.zx, Struct_3(arg_2.x, global3.x, Struct_1(vec2<i32>(arg_0, 11486i), vec3<i32>(u_input.d.x, var_2.x, u_input.c.x), arg_1.e.c, global0[_wgslsmith_index_u32(global3.x, 26u)]), -395f)).x, true, true, true)));
    var var_4 = min(~reverseBits(vec4<u32>(1u, _wgslsmith_mod_u32(global3.x, 0u), abs(57106u), max(var_1.x, 22718u))), vec4<u32>(4294967295u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, u_input.b, var_1.x), ~vec4<u32>(11428u, global3.x, arg_1.b.x, var_1.x)), arg_1.b.x, arg_1.a.x), var_1.x, _wgslsmith_mult_u32(u_input.b, firstLeadingBit(1u))));
    return vec2<u32>(~u_input.b, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~_wgslsmith_sub_vec3_u32(~max(global3.zyw, vec3<u32>(global3.x, u_input.b, 80985u)), _wgslsmith_mod_vec3_u32(global3.yyy ^ vec3<u32>(global3.x, 39798u, 6746u), reverseBits(global3.xxz))), u_input.e.ww, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, u_input.b), func_1(_wgslsmith_div_i32(~(-40i), u_input.e.x & 375i), Struct_2(select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(true, false, true, false)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, global3.x), vec2<u32>(u_input.b, 0u)), select(vec4<bool>(false, global2.x, false, false), vec4<bool>(true, true, global2.x, false), global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(global3.x, 26u)], 1520f) - vec3<f32>(-1180f, global0[_wgslsmith_index_u32(65779u, 26u)], -142f)), Struct_1(u_input.c.zy, vec3<i32>(-1i, u_input.d.x, 9593i), vec4<bool>(global2.x, global2.x, global2.x, global2.x), -167f)), select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, true, true, true), all(vec4<bool>(true, false, true, true))))));
}

