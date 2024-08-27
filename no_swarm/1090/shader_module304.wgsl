struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 26>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    return ~firstLeadingBit(countOneBits(0u));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = Struct_3(Struct_1(vec4<i32>(select(_wgslsmith_mod_i32(u_input.a.x, arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0, arg_0, arg_0), u_input.a), false), -(u_input.b & -44407i), -1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -3486i, u_input.c.x), u_input.d), -2147483647i)), arg_1, abs(~vec3<i32>(abs(arg_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 20974i, 10185i), vec3<i32>(u_input.a.x, -73511i, u_input.b)), -2147483647i)));
    let var_1 = ~(-(~_wgslsmith_dot_vec2_i32(arg_1.xx, arg_1.xx)));
    var var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(629f, 625f, 891f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-179f * _wgslsmith_f_op_f32(max(-1000f, 164f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(520f - -436f), 852f), _wgslsmith_f_op_f32(876f * -589f))), _wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_2) << (vec2<u32>(1u, 14842u) % vec2<u32>(32u)), select(vec2<u32>(arg_2, 1u), vec2<u32>(arg_2, 16874u), false)), select(vec2<u32>(~arg_2, max(arg_2, arg_2)), ~vec2<u32>(94771u, 72186u), _wgslsmith_add_u32(arg_2, 0u) != ~79103u)), abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.a.a.x, u_input.a.x, arg_1.x, 19209i), ~firstTrailingBit(vec4<i32>(var_1, -2147483647i, arg_1.x, u_input.a.x)))));
    global0 = true;
    global1 = array<vec4<u32>, 26>();
    return ~(min(arg_2, _wgslsmith_mod_u32(var_2.c.x, _wgslsmith_sub_u32(var_2.c.x, 1u))) >> (((var_2.c.x ^ _wgslsmith_mod_u32(8144u, arg_2)) << (_wgslsmith_sub_u32(~var_2.c.x, max(4294967295u, 55580u)) % 32u)) % 32u));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_1(vec4<i32>(u_input.d.x, min(-2147483647i, _wgslsmith_sub_i32(u_input.b, -2147483647i ^ u_input.d.x)), -27832i, u_input.c.x));
    let var_1 = arg_1.zx;
    var var_2 = vec3<f32>(131f, 1698f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1075f)) - -312f));
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(-abs(abs(var_0.a)), abs(firstTrailingBit(vec4<i32>(37322i, -2147483647i, 19739i, var_0.a.x)) | var_0.a), vec4<i32>(2147483647i, -var_0.a.x, 1i, var_0.a.x)));
    var_2 = vec3<f32>(-630f, _wgslsmith_f_op_f32(floor(var_2.x)), 1410f);
    return var_2.x;
}

fn func_1(arg_0: bool, arg_1: f32) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), global1[_wgslsmith_index_u32(0u, 26u)]), ~(~7476u)), func_2(Struct_1(vec4<i32>(u_input.d.x, u_input.c.x, 7045i, -1i)), arg_1), 28932u));
    global1 = array<vec4<u32>, 26>();
    var var_1 = !(!select(!vec4<bool>(arg_0, arg_0, arg_0, true), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, false, false, false), true), arg_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -193f, 1444f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(442f, arg_1, arg_1) * vec3<f32>(586f, -127f, arg_1))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, 1350f, arg_1), vec3<f32>(1042f, -1032f, -1141f), var_1.x)))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(260f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1313f))), _wgslsmith_f_op_f32(arg_1 * -723f))));
    var var_3 = var_1.xxx;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(abs(var_0 << (min(var_0, 24185u) % 32u)), vec4<u32>(~var_0, func_3(u_input.c.x, _wgslsmith_clamp_vec3_i32(u_input.a.xxx, u_input.a.zwx, u_input.a.wxy), 41341u), 71060u, 11954u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1066f, -692f, 300f) * vec4<f32>(1757f, -1440f, -655f, -861f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1834f, 1298f, -399f, 1476f) * vec4<f32>(-1109f, 767f, -445f, 425f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)), 641f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, -1119f))))) - vec4<f32>(_wgslsmith_f_op_f32(min(346f, _wgslsmith_f_op_f32(-1006f - _wgslsmith_f_op_f32(trunc(1146f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(275f, 374f), _wgslsmith_div_f32(729f, -760f))))), -641f, _wgslsmith_f_op_f32(f32(-1f) * -2149f)));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, 23990i), -2147483647i);
    var var_2 = firstTrailingBit(((10481i & (1i | u_input.d.x)) & 0i) ^ -u_input.d.x);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(-813f)), _wgslsmith_f_op_f32(max(-533f, var_0.x)), _wgslsmith_f_op_f32(max(-623f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -522f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.x, -143f, var_0.x), vec4<f32>(var_0.x, var_0.x, -100f, -150f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 678f))))))));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 4294967295u, ~(~global1[_wgslsmith_index_u32(max(22251u, 0u), 26u)]) << (global1[_wgslsmith_index_u32(1u, 26u)] % vec4<u32>(32u)), 1f);
}

