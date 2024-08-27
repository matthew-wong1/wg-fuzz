struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -39784i;

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(0u, 0u, 4184u, 6602u);

var<private> global3: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(66283u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(47793u, 11374u), vec2<u32>(31906u, 45649u), vec2<u32>(1u, 13714u), vec2<u32>(43953u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 5343u), vec2<u32>(33155u, 4294967295u), vec2<u32>(0u, 5453u), vec2<u32>(4294967295u, 0u));

var<private> global4: array<Struct_3, 21>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global4 = array<Struct_3, 21>();
    global1 = Struct_1(_wgslsmith_mult_vec4_u32(~global1.a, vec4<u32>(4294967295u, ~global1.a.x, ~global2.x, 1117u)), _wgslsmith_clamp_vec3_i32(~max(~vec3<i32>(u_input.a, 55864i, -49299i), ~vec3<i32>(u_input.a, u_input.a, global1.d)), vec3<i32>(-18041i, -_wgslsmith_div_i32(0i, -1i), arg_0.a.x), _wgslsmith_clamp_vec3_i32(arg_0.a, arg_0.a, arg_0.a)), ~1u, 1i);
    let var_0 = vec4<i32>(u_input.a, u_input.a, ~(~(~1i)), 44716i);
    var var_1 = true;
    return firstLeadingBit(global1.c);
}

fn func_2(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = false;
    global3 = array<vec2<u32>, 11>();
    global4 = array<Struct_3, 21>();
    var var_1 = select(vec2<u32>(global1.a.x, 41314u), _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(firstTrailingBit(0u)), func_3(Struct_2(global1.b, 4294967295u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, global2.x), global2.yx)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, 0i, arg_1) << (global1.a % vec4<u32>(32u)), abs(~vec4<i32>(u_input.a, arg_1, global1.d, arg_1))) != u_input.a);
    var var_2 = Struct_2(countOneBits(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, 22130i, 1i), firstLeadingBit(vec3<i32>(arg_1, u_input.a, 23881i) ^ vec3<i32>(u_input.a, 14861i, -14329i)))), 4294967295u << (reverseBits(0u) % 32u));
    return true && (true | (~_wgslsmith_mod_u32(75183u, var_1.x) < 52760u));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> f32 {
    return 717f;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(451f, 1265f, -657f))) - arg_0)));
    var var_1 = vec4<f32>(-854f, arg_0.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(floor(1f)), !vec4<bool>(all(vec2<bool>(false, true)), false, false, all(vec2<bool>(true, true))), func_2(-2003f, -31889i), Struct_1(abs(global1.a ^ vec4<u32>(4294967295u, 44108u, 49688u, 30432u)), global1.b, firstTrailingBit(_wgslsmith_div_u32(global2.x, arg_1.x)), 20457i))), _wgslsmith_f_op_f32(exp2(var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(ceil(-931f));
    var var_3 = Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, abs(4294967295u), _wgslsmith_dot_vec3_u32(global2.wyy, vec3<u32>(arg_1.x, global2.x, 4294967295u)), _wgslsmith_sub_u32(arg_1.x, global2.x)), ~(~global1.a)), global1.b, 26074u, global1.b.x);
    global1 = Struct_1(global1.a, var_3.b, _wgslsmith_div_u32(~1u, 4294967295u), _wgslsmith_mod_i32(-18491i, var_3.d & (~(-1i) & firstLeadingBit(var_3.d))));
    return false;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool) -> vec4<f32> {
    var var_0 = true;
    var var_1 = !arg_2;
    var var_2 = arg_2 == !(!arg_2);
    let var_3 = arg_0;
    var var_4 = arg_0.x;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_0.x, arg_0.x, -356f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1688f, arg_1.x, 186f, -664f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1206f, arg_1.x, arg_0.x, arg_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, 1297f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, var_3.x, 386f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -132f, arg_1.x, -480f), vec4<f32>(arg_0.x, var_3.x, 261f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, -948f, arg_0.x, -153f)))))), vec4<bool>(func_1(vec3<f32>(arg_0.x, var_3.x, 739f), vec3<u32>(21300u, global2.x, 52302u)) && true, true, !(arg_2 || arg_2), all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(global2.x, 37093u), min(~4294967295u, reverseBits(4294967295u))), ~1u), ~vec3<u32>(global2.x, 0u, 38240u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.wxz + _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(-1285f, 934f, -1807f), arg_2), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, 1000f), arg_2.zx)), true || arg_1)).xzz))));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    global4 = array<Struct_3, 21>();
    global2 = vec4<u32>(global1.c, global1.c << (_wgslsmith_clamp_u32(global1.a.x, var_0.x | global1.a.x, ~40962u) % 32u), select(~min(countOneBits(var_0.x), 0u), select(var_0.x, global1.a.x, any(vec4<bool>(false, true, arg_1, arg_1))), arg_1 && false), ~3083u);
    return StorageBuffer(global2.x >> (global2.x % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 + arg_2.x))))), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a, -64830i), vec4<i32>(0i, -2147483647i, global1.b.x, -22858i))) << (abs(_wgslsmith_mod_vec4_u32(global1.a, global1.a) >> (~global1.a % vec4<u32>(32u))) % vec4<u32>(32u)), select(max(vec4<i32>(27461i & u_input.a, -global1.d, ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(35505i, 0i, u_input.a, -28240i), vec4<i32>(global1.b.x, 8912i, u_input.a, 1i))), ~vec4<i32>(global1.d, global1.d, 2147483647i, u_input.a) | vec4<i32>(0i, u_input.a, 8931i, u_input.a)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, global1.b.x) << (vec4<u32>(var_0.x, 49707u, global1.a.x, global2.x) % vec4<u32>(32u)), min(vec4<i32>(-40309i, global1.d, global1.b.x, -3190i) >> (global1.a % vec4<u32>(32u)), ~vec4<i32>(-1i, global1.b.x, global1.b.x, -51283i)), ~(-vec4<i32>(u_input.a, -1500i, 19355i, u_input.a))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, 189f, 316f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(911f, -454f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-398f, -709f), vec2<f32>(1000f, 758f), false)), func_1(vec3<f32>(1000f, 845f, -1000f), vec3<u32>(global1.c, global1.a.x, 86915u)))), !all(vec4<bool>(false, false, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(-148f + -1188f), _wgslsmith_f_op_f32(max(314f, -599f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)), _wgslsmith_f_op_f32(-551f - _wgslsmith_f_op_f32(f32(-1f) * -828f)))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(global2.x != 0u, 51082i > global1.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-277f, 507f, 1000f) + vec3<f32>(1149f, -1000f, 2102f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-199f, 2714f, -1414f) - vec3<f32>(695f, 354f, 1084f)), true)))));
}

