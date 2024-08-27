struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec4<f32> = vec4<f32>(200f, -233f, 1767f, -883f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-448f, global1.x, global1.x), global1.xww))), vec3<u32>(u_input.b.x, ~countOneBits(u_input.b.x), countOneBits(4294967295u)), u_input.b.x, i32(-1i) * -2147483647i, global1.xyy), global0[_wgslsmith_index_u32(abs(u_input.b.x), 30u)]);
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * _wgslsmith_f_op_f32(abs(global1.x))), 349f, 193f, _wgslsmith_f_op_f32(abs(var_0.b.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-865f * -1276f)), _wgslsmith_f_op_f32(round(-1547f)), global1.x)));
    global0 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2557f, global1.x, true)) - _wgslsmith_f_op_f32(trunc(-202f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.e.x, _wgslsmith_f_op_f32(abs(var_0.a.a.x))))), true)));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -988f))))));
    return ~firstLeadingBit(select(-abs(u_input.a.xw), max(~vec2<i32>(1i, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.d, var_0.b.d), vec2<i32>(-139i, var_0.b.d))), vec2<bool>(true, true)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<bool>) -> bool {
    global0 = array<Struct_1, 30>();
    var var_0 = vec3<i32>(_wgslsmith_div_i32(min(u_input.a.x, 1i), min(-(i32(-1i) * -19474i), arg_0 & firstLeadingBit(arg_1.a.d))), 1i, _wgslsmith_dot_vec2_i32(func_3(), vec2<i32>(-1i) * -vec2<i32>(-15341i, arg_1.b.d)));
    var_0 = ~firstTrailingBit(u_input.a.wzy);
    var_0 = ~(abs(~abs(vec3<i32>(arg_1.b.d, arg_0, arg_1.b.d))) | u_input.a.zzy);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.wwx + global1.wzx)))), ~(~(vec3<u32>(u_input.b.x, arg_1.b.c, 3460u) >> (vec3<u32>(u_input.b.x, u_input.b.x, 16918u) % vec3<u32>(32u)))), u_input.b.x, _wgslsmith_div_i32(u_input.a.x, min(firstTrailingBit(u_input.a.x), -35977i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-321f, _wgslsmith_f_op_f32(-arg_2.x), -2086f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(613f, arg_1.b.a.x, -1089f)))), arg_3.x))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.yyz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 512f, -606f))), vec3<u32>(7442u, ~(arg_1.a.c >> (893u % 32u)), 42164u), 12301u, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, var_0.x), var_0.zz), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e.x)), arg_2.x, 506f)));
    return true;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    global0 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_div_i32(u_input.a.x, -1i);
    var_0 = -u_input.a.x;
    global1 = vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_div_f32(-608f, -1131f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1027f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f))));
    var var_1 = select(select(!(!vec4<bool>(true, true, arg_0, arg_0)), vec4<bool>(arg_0, arg_0 | true, !any(vec2<bool>(false, arg_0)), arg_0), arg_0), vec4<bool>(false, any(vec2<bool>(arg_0, true)), _wgslsmith_div_i32(abs(arg_1), _wgslsmith_mod_i32(u_input.a.x, -5763i)) == 1725i, any(!(!vec2<bool>(arg_0, arg_0)))), vec4<bool>(arg_0, !arg_0, !func_2(u_input.a.x | -2147483647i, Struct_2(Struct_1(global1.yyz, vec3<u32>(arg_2.x, arg_2.x, 20206u), u_input.b.x, arg_1, global1.wyx), global0[_wgslsmith_index_u32(47808u, 30u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, global1.x, global1.x, 620f)), !vec3<bool>(arg_0, true, false)), true));
    return -u_input.a.zw;
}

fn func_4(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = ~reverseBits(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x));
    global0 = array<Struct_1, 30>();
    let var_1 = ~u_input.b.x;
    let var_2 = select(vec3<bool>(true, false, true), vec3<bool>(any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), !all(vec3<bool>(true, true, true)), true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))) && true));
    let var_3 = var_0.x << (var_0.x % 32u);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 2059f))), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, 1u), _wgslsmith_clamp_vec3_u32(var_0.zzx, vec3<u32>(9787u, 19589u, var_0.x), vec3<u32>(var_3, 46081u, 0u))), 4294967295u, -1i, vec3<f32>(global1.x, _wgslsmith_f_op_f32(-432f - 398f), -1676f)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1141f, -375f, -501f)), var_0.xxz, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_0.x), vec2<u32>(var_3, 59088u)), ~(-17417i), global1.wxw)), ~(~1u ^ (~var_3 | 1u)), false, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1225f, global1.x, global1.x))), vec3<u32>(53968u, 14031u, ~var_0.x), u_input.b.x, 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-562f, 613f, -1618f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(623f, global1.x, global1.x) + vec3<f32>(2661f, 1262f, global1.x)))), global0[_wgslsmith_index_u32(var_1, 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(countOneBits(~1u)), var_3), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(abs(func_1(all(vec4<bool>(true, true, true, true)), -(i32(-1i) * -26317i), min(firstTrailingBit(vec3<u32>(31954u, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 15925u, 4294967295u))))));
    let var_1 = func_4(max(-vec2<i32>(~18579i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 1i, var_0.a.a.d), u_input.a)), min(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -u_input.a.x), _wgslsmith_mod_vec2_i32(~vec2<i32>(8561i, var_0.d.b.d), -u_input.a.yx))));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.e.e.x))))), 229f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1164f * -1000f), _wgslsmith_f_op_f32(var_1.e.a.x - -1702f), all(vec3<bool>(var_0.c, var_1.c, true))))), 1430f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.a.a.x, global1.x, global1.x, -1000f) + vec4<f32>(global1.x, -1000f, 865f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.d.b.a.x, -785f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_1.a.a.a.x, global1.x), -162f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-408f)), var_0.a.a.a.x)) - var_1.e.e.x));
    var var_3 = Struct_2(var_0.d.a, Struct_1(var_0.a.a.e, ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.b, var_1.d.a.b.x), vec3<u32>(u_input.b.x, u_input.b.x, var_0.b)) | func_4(vec2<i32>(-2147483647i, 19315i) << (var_1.a.a.b.zz % vec2<u32>(32u))).e.b, 26422u, var_1.a.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.a.a + _wgslsmith_f_op_vec3_f32(select(global1.yzy, global1.wyx, var_0.c))))));
    var_0 = var_1;
    global0 = array<Struct_1, 30>();
    var var_4 = select(~vec4<i32>(51188i, -1077i, var_3.a.d, _wgslsmith_sub_i32(1i, 2147483647i)), max(u_input.a, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.e.d, var_0.a.a.d), 1i, _wgslsmith_div_i32(var_0.d.b.d, u_input.a.x)), _wgslsmith_dot_vec3_i32(max(u_input.a.yzz, vec3<i32>(var_1.a.b.d, u_input.a.x, var_0.e.d)), u_input.a.wwz), var_1.e.d, -firstLeadingBit(1i))), var_0.c);
    var var_5 = vec2<i32>(18145i, _wgslsmith_clamp_i32(2147483647i, var_4.x, -2147483647i)) >> (_wgslsmith_mult_vec2_u32(~func_4(var_4.xx).d.b.b.xy | _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(0u, var_1.d.b.b.x)), ~vec2<u32>(33903u, var_3.b.c)), u_input.b) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_u32(abs(~u_input.b.x), max(0u, 46589u)), ~19241u), func_4(abs(-vec2<i32>(1i, 1i))).e.b.x);
}

