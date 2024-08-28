struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, true, false, false, true, false, true, false, true, false, true, false, true, false, true, false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = vec2<i32>(~max(_wgslsmith_mult_i32(u_input.e.x, 2147483647i), firstLeadingBit(-30847i)) | u_input.b.x, ~(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.wxz, vec3<i32>(23910i, u_input.b.x, u_input.e.x)), ~u_input.b) ^ ~min(-11018i, 0i)));
    var var_1 = u_input.a.yyx;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f - 142f)))));
    var var_3 = select(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(52496i, var_0.x, 7113i), u_input.c.yzx) << (min(var_1.x, u_input.a.x) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), u_input.e), firstLeadingBit(0i)), ~u_input.c.wyz, all(!select(!vec2<bool>(global0[_wgslsmith_index_u32(7495u, 17u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(true, true))));
    let var_4 = var_0.x;
    return (i32(-1i) * -523i) >= (_wgslsmith_clamp_i32(~(~var_0.x), 1i, var_3.x) >> (var_1.x % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_0 = Struct_5(arg_1, arg_0.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, arg_1))))));
    var var_1 = abs(firstTrailingBit(u_input.a.wzy));
    let var_2 = Struct_1(vec4<bool>(func_3(arg_1), 1392f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), true, arg_0.a.x));
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1061f, var_0.a, arg_1, var_0.a) * vec4<f32>(arg_1, arg_1, arg_1, var_0.c.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -1173f, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, -1101f, arg_1, var_0.c.x), vec4<f32>(var_0.c.x, arg_1, var_0.a, 250f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 751f, var_0.c.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.a, 675f, 656f) + vec4<f32>(arg_1, -743f, var_0.a, 107f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(611f, 640f, arg_1, arg_1) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, var_0.c.x), vec4<f32>(var_0.c.x, -1526f, 758f, -752f))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> bool {
    let var_0 = vec3<u32>(56767u, 1u, firstLeadingBit(arg_1.d.c.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3129f - arg_1.d.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(784f - _wgslsmith_f_op_f32(f32(-1f) * -1114f)) - 429f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + var_1)), !(!(_wgslsmith_f_op_f32(arg_1.d.b.x - 1000f) != _wgslsmith_f_op_f32(-1000f * var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(855f, -969f) - _wgslsmith_f_op_vec2_f32(arg_1.d.b.xy - vec2<f32>(arg_0.b, 1004f))) + _wgslsmith_f_op_vec4_f32(func_2(arg_1.d.a, _wgslsmith_f_op_f32(-1144f + var_1))).zx) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_3.x, 17u)], false)), -1324f)).wy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_1.d.b.yx, vec2<f32>(279f, -203f)), vec2<f32>(2211f, arg_1.d.b.x), vec2<bool>(false, false))))));
    let var_3 = vec4<i32>(~0i, arg_1.b.x, _wgslsmith_dot_vec4_i32(abs(reverseBits(reverseBits(vec4<i32>(u_input.e.x, arg_1.a.x, arg_1.a.x, 13752i)))), u_input.c), countOneBits(min(~u_input.b.x, -1i)));
    var var_4 = 15352u;
    return any(!(!arg_0.a));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = ~countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 105601u), vec2<u32>(u_input.a.x, u_input.d)) & abs(~u_input.a.yw));
    let var_1 = vec3<bool>(u_input.c.x < -2147483647i, (true && global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5125u, 60847u), ~var_0), 17u)]) || true, func_4(Struct_4(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 17u)], true), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-270f, 2643f), -1000f))), Struct_3(u_input.c.yzy, -countOneBits(u_input.c), !arg_0.zxx, Struct_2(Struct_1(arg_0), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(arg_0), -921f)), vec4<u32>(0u, 0u, 46357u, u_input.a.x)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)], false), arg_0.zzx, !arg_0.x)), 2147483647i, _wgslsmith_sub_vec3_u32(u_input.a.yxz, select(u_input.a.yxy, ~vec3<u32>(var_0.x, u_input.d, 1u), select(arg_0.wyz, arg_0.xwy, false)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(241f, 735f, 590f, 1558f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-875f, 455f, 754f, 332f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, -758f, 1680f, 1000f)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(443f, 656f, -402f, -1225f) + vec4<f32>(750f, -625f, 969f, 102f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f + -806f) * _wgslsmith_f_op_f32(step(-398f, -815f))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-657f)))))));
    let var_3 = Struct_2(Struct_1(select(arg_0, select(!vec4<bool>(false, var_1.x, false, arg_0.x), arg_0, false), false)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-207f)), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-704f)) * _wgslsmith_f_op_f32(var_2.x * var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f - var_2.x) + var_2.x), var_2.x))), u_input.a);
    var var_4 = _wgslsmith_mod_u32((var_0.x << (abs(~u_input.d) % 32u)) >> (0u % 32u), 76878u);
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2172f)) + _wgslsmith_f_op_f32(min(323f, -633f))), _wgslsmith_f_op_f32(-1985f - _wgslsmith_f_op_f32(step(-388f, -1187f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-569f * -968f), -322f, global0[_wgslsmith_index_u32(func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 17u)], false, true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), 17u)]))))), global0[_wgslsmith_index_u32(u_input.d, 17u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1622f))) * _wgslsmith_f_op_f32(-788f + _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d, 17u)], false)), -1468f)).x)), -1284f));
    var var_1 = u_input.a.ww;
    var var_2 = 1u << (var_1.x % 32u);
    var_2 = _wgslsmith_div_u32(var_1.x >> (~(max(var_1.x, u_input.a.x) | _wgslsmith_clamp_u32(0u, u_input.a.x, 38296u)) % 32u), u_input.d);
    let var_3 = Struct_5(1f, var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), u_input.a.xy) % 32u)), ~u_input.a.zzz, -189f, u_input.b.x);
}

