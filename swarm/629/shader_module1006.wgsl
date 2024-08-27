struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(false, vec4<f32>(-759f, -130f, -1038f, 1289f)), Struct_3(false, vec4<f32>(-2062f, 769f, -234f, 145f)), Struct_3(true, vec4<f32>(-922f, 705f, -970f, -1000f)), Struct_3(false, vec4<f32>(-225f, -1650f, -857f, 952f)), Struct_3(true, vec4<f32>(-1420f, 757f, -719f, 249f)), Struct_3(false, vec4<f32>(2555f, -1303f, 517f, -285f)), Struct_3(false, vec4<f32>(1636f, 1519f, -925f, -370f)), Struct_3(true, vec4<f32>(-1165f, 755f, 495f, 294f)), Struct_3(false, vec4<f32>(-1037f, 129f, 951f, -1000f)), Struct_3(true, vec4<f32>(1658f, -104f, 386f, -2220f)), Struct_3(true, vec4<f32>(-1066f, -1730f, 1224f, -535f)), Struct_3(false, vec4<f32>(997f, 1000f, -379f, -365f)), Struct_3(false, vec4<f32>(-1000f, 343f, 466f, -1354f)), Struct_3(false, vec4<f32>(2408f, 518f, 988f, 546f)), Struct_3(true, vec4<f32>(487f, -572f, 796f, -919f)), Struct_3(false, vec4<f32>(305f, 790f, 802f, -1006f)), Struct_3(false, vec4<f32>(514f, 1174f, -1352f, -807f)), Struct_3(true, vec4<f32>(-1000f, -411f, -278f, -556f)), Struct_3(false, vec4<f32>(-521f, 1013f, 585f, 713f)), Struct_3(false, vec4<f32>(-2565f, 632f, -1093f, -1000f)));

var<private> global1: vec4<u32>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_4, 23>;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global4 = global1.yx;
    var var_0 = any(!select(!select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, false, global2.x, false)), select(!vec4<bool>(true, true, false, global2.x), !vec4<bool>(true, global2.x, global2.x, false), !vec4<bool>(global2.x, global2.x, global2.x, global2.x)), select(select(vec4<bool>(true, true, global2.x, false), vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, true, false, global2.x)), !vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x))));
    var var_1 = ~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(101718u, u_input.b, 4294967295u) | global1.zyy, vec3<u32>(u_input.b, global1.x, global1.x)), ~1u));
    var_1 = u_input.b;
    let var_2 = vec4<u32>(~global1.x, u_input.b, ~27273u, ~_wgslsmith_dot_vec2_u32(global1.yz, global1.wx));
    return global1.x ^ _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_2.x, u_input.b)), countOneBits(~(~global1.zz)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = 2147483647i;
    var var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, select(abs(u_input.a), u_input.a, arg_1.a)), abs(firstLeadingBit(select(vec2<i32>(1i, u_input.a), vec2<i32>(0i, 0i), true))));
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(16287i, -21862i), ~vec2<i32>(-45167i, u_input.a)) & -(~(vec2<i32>(-9596i, var_1.x) >> (global1.xx % vec2<u32>(32u)))), vec2<i32>(~_wgslsmith_clamp_i32(1i, u_input.a << (u_input.b % 32u), u_input.a), countOneBits(_wgslsmith_sub_i32(1i, ~u_input.a))));
    var var_2 = ~(-2147483647i | min(~(-u_input.a), var_1.x));
    let var_3 = vec2<u32>(7893u, _wgslsmith_clamp_u32(~abs(~82708u), _wgslsmith_add_u32(0u, firstTrailingBit(global1.x)), global4.x));
    return ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(global4.x | 4294967295u), ~max(global4.x, 8829u), ~arg_0.x), 17105u, 33416u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> u32 {
    global1 = ~countOneBits(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, global4.x, u_input.b), vec4<u32>(17349u, 8944u, 64957u, global1.x))));
    global0 = array<Struct_3, 20>();
    var var_0 = 26271i;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, func_4(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7634u, global1.x, u_input.b, 0u), vec4<u32>(1u, 0u, global4.x, 4294967295u)) << (firstTrailingBit(vec4<u32>(14u, global1.x, global1.x, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(global4.x | 55318u, ~u_input.b, global4.x, _wgslsmith_sub_u32(global1.x, global1.x))), global0[_wgslsmith_index_u32(func_3(), 20u)], true)), 20u)];
    global0 = array<Struct_3, 20>();
    return _wgslsmith_add_u32(global4.x, (u_input.b << (0u % 32u)) >> ((~_wgslsmith_clamp_u32(23520u, 0u, 31624u) >> (_wgslsmith_clamp_u32(global1.x, 1u, ~global4.x) % 32u)) % 32u));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    global3 = array<Struct_4, 23>();
    global4 = ~((~global1.ww | vec2<u32>(func_2(vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a), vec4<f32>(arg_0, 1304f, 1000f, 712f), vec2<i32>(2147483647i, u_input.a)), ~global1.x)) | ~(~(~vec2<u32>(global1.x, 1u))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 867f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -330f));
    let var_1 = Struct_3(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, arg_0, -797f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, arg_0, arg_0)))))));
    let var_2 = 75616u;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 23>();
    var var_0 = ~(~_wgslsmith_sub_u32(~1u, global4.x)) >= global4.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-643f - 554f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(880f, 2765f, 374f, 342f) * vec4<f32>(-784f, -675f, -633f, 302f)))), !select(vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(false, global2.x, global2.x, global2.x), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1237f, -672f, -1000f, 1302f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, 1512f, -243f, -2312f))))));
    var var_2 = Struct_1(select(!vec3<bool>(any(vec2<bool>(false, global2.x)), global2.x, any(vec4<bool>(true, global2.x, global2.x, true))), !(!vec3<bool>(global2.x, global2.x, global2.x)), global2.x), global2.x, var_1.x);
    let var_3 = global3[_wgslsmith_index_u32(func_2(-(~(~vec4<i32>(-2147483647i, u_input.a, u_input.a, 57610i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, _wgslsmith_f_op_f32(-1519f - var_2.c), _wgslsmith_f_op_f32(sign(-1607f)), _wgslsmith_f_op_f32(min(var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, 344f, var_1.x) * vec4<f32>(-1000f, 1063f, 844f, var_2.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_1.x, var_2.c, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -658f, 917f, var_2.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-104f, 1374f, -621f, 308f) - vec4<f32>(var_1.x, var_2.c, var_1.x, var_2.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, 599f, -1011f, 510f)))), vec4<bool>(true, global2.x, !any(vec4<bool>(global2.x, var_2.b, true, global2.x)), true))), vec2<i32>(select(firstLeadingBit(2147483647i), -u_input.a, false) & _wgslsmith_div_i32(firstTrailingBit(-2908i), 0i), ~(-(~u_input.a)))), 23u)];
    global2 = !var_2.a.zx;
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b ^ ~firstTrailingBit(1u), reverseBits(firstTrailingBit(~32836u))), global1.x), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_clamp_vec3_u32(~global1.yyz, select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 622u, 0u) << (vec3<u32>(u_input.b, 69400u, u_input.b) % vec3<u32>(32u)), global1.yww), ~global1.zyw, ~u_input.b > select(global1.x, 1u, var_3.a.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~0u, u_input.b), abs(global1.yxz))), vec3<i32>(~_wgslsmith_mult_i32(-1i, u_input.a) | -reverseBits(-2147483647i), ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, 2484i, u_input.a), vec3<i32>(1i, 1i, u_input.a)), ~vec3<i32>(u_input.a, u_input.a, 2147483647i)), -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(49937i, u_input.a))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -4438i, -u_input.a), countOneBits(-vec3<i32>(u_input.a, u_input.a, 15070i)))));
}

