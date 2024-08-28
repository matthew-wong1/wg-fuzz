struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = u_input.c;
    var var_1 = abs(59184u);
    global0 = array<u32, 28>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1955f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1256f, -1103f))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-364f, -1188f, 2210f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(552f, 538f, -1000f))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-333f, 255f, 551f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(-710f + -111f), -617f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, -1000f, -876f)))))));
    return !arg_0;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<u32, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.c.zz, arg_0.c.zz)))));
    let var_1 = vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 825f), 565f));
    let var_2 = Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.d.x, 0u, 48127u) & u_input.d, select(!vec2<bool>(true, arg_0.b.x), arg_0.b, arg_0.b), vec3<f32>(-244f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(855f, -408f))), arg_0, Struct_1(vec3<u32>(u_input.d.x, ~0u, arg_0.a.x), !vec2<bool>(arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec3_f32(-arg_0.c)), Struct_1(min(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], 50082u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 473u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<u32>(18090u, arg_0.a.x, 44832u))), !arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c, arg_0.c)))), firstLeadingBit(_wgslsmith_mod_i32(reverseBits(-1476i), firstLeadingBit(~u_input.b))), arg_0.c, Struct_2(arg_0, arg_0, arg_0, arg_0), Struct_2(Struct_1(~arg_0.a, vec2<bool>(all(vec2<bool>(arg_0.b.x, false)), arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c + vec3<f32>(arg_0.c.x, 1892f, -313f)))), arg_0, arg_0, arg_0));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + 1842f) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-526f + _wgslsmith_f_op_f32(-var_0.x))))));
    return ~(~(~abs(~var_2.a.c.a)));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = ~func_4(Struct_1(u_input.d & u_input.d, func_3(arg_0.xx), arg_2));
    let var_1 = any(arg_0);
    var var_2 = arg_0;
    var_2 = arg_0;
    let var_3 = arg_0;
    return vec3<u32>(global0[_wgslsmith_index_u32(1u, 28u)] | u_input.c, 42269u, _wgslsmith_sub_u32(func_4(Struct_1(u_input.d << (u_input.d % vec3<u32>(32u)), select(vec2<bool>(var_1, var_3.x), vec2<bool>(var_1, var_1), vec2<bool>(var_2.x, var_3.x)), vec3<f32>(-904f, arg_2.x, -1297f))).x, var_0.x));
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_1(func_2(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true))), reverseBits(u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2299f, -1364f, 665f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(244f, 1469f, 574f) + vec3<f32>(-279f, -2379f, -1087f))))), vec2<bool>(any(vec3<bool>(any(vec3<bool>(false, true, false)), true, true)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(649f, -1559f, -1230f), vec3<f32>(-633f, 1226f, 593f), false)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-910f, 648f, 461f), vec3<f32>(168f, -1301f, 341f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1781f, 890f, -893f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1345f, -828f, -1542f))))));
    let var_1 = !all(select(vec3<bool>(!var_0.b.x, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 28u)], 28u)] < global0[_wgslsmith_index_u32(var_0.a.x, 28u)]), !vec3<bool>(false, var_0.b.x, false), select(vec3<bool>(false, true, true), !vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(false, var_0.b.x, var_0.b.x))));
    global0 = array<u32, 28>();
    var var_2 = func_2(select(vec4<bool>(true, all(select(vec2<bool>(false, false), var_0.b, true)), true, u_input.d.x >= min(u_input.c, 2323u)), vec4<bool>(false, _wgslsmith_dot_vec3_i32(vec3<i32>(3331i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.b)) > max(30097i, -56865i), false, false), vec4<bool>(select(all(vec2<bool>(true, var_0.b.x)), var_0.b.x, all(vec3<bool>(var_0.b.x, var_0.b.x, false))), true, global0[_wgslsmith_index_u32(u_input.c, 28u)] != var_0.a.x, var_0.b.x)), u_input.b << (func_4(var_0).x % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c)));
    let var_3 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, i32(-1i) * -u_input.a), select(u_input.b, ~(~u_input.a), _wgslsmith_f_op_f32(round(var_0.c.x)) == var_0.c.x)));
    return vec3<i32>(~(var_3 | (i32(-1i) * -2147483647i)) | var_3, _wgslsmith_clamp_i32(var_3, 1i, ~reverseBits(var_3)), -2147483647i);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = vec2<bool>(true, any(vec4<bool>(true, !func_3(vec2<bool>(false, false)).x, true, true)));
    let var_1 = func_3(var_0).x;
    var var_2 = Struct_3(Struct_2(Struct_1(abs(~u_input.d), vec2<bool>(all(var_0), any(vec2<bool>(true, var_0.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0.wzx - vec3<f32>(846f, 1614f, arg_0.x)), arg_0.zyx))), Struct_1(~arg_3, !(!vec2<bool>(var_1, var_0.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(arg_0.wyy, arg_0.ywx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, arg_0.x, 1420f))))), Struct_1(~abs(u_input.d), !(!vec2<bool>(var_1, var_1)), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_div_f32(-195f, 841f), _wgslsmith_f_op_f32(max(173f, arg_0.x)))), Struct_1(vec3<u32>(~global0[_wgslsmith_index_u32(0u, 28u)], ~arg_2.x, reverseBits(0u)), var_0, vec3<f32>(_wgslsmith_f_op_f32(sign(1477f)), _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_mult_i32(-85910i, arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -628f), Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_2.x, 0u, 120123u), u_input.d, vec3<bool>(var_1, false, false)), ~vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), select(var_0, vec2<bool>(var_0.x, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(506f, 441f, arg_0.x)))))), Struct_1((arg_3 ^ vec3<u32>(arg_3.x, 1814u, 4294967295u)) >> (~vec3<u32>(global0[_wgslsmith_index_u32(0u, 28u)], 144u, arg_3.x) % vec3<u32>(32u)), func_3(func_3(var_0)), _wgslsmith_f_op_vec3_f32(arg_0.yzx * _wgslsmith_f_op_vec3_f32(-arg_0.wxy))), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(61565u, arg_3.x), 28u)], u_input.d.x, abs(0u)), !vec2<bool>(true, var_0.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1208f)), _wgslsmith_f_op_f32(358f * 1000f), 1869f)), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.x, 28u)] ^ arg_2.x, arg_2.x | 60848u, arg_3.x | u_input.c), !vec2<bool>(var_1, false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yxx), _wgslsmith_f_op_vec3_f32(-arg_0.zwx)))), Struct_2(Struct_1(func_4(Struct_1(u_input.d, var_0, arg_0.xyz)) ^ u_input.d, select(vec2<bool>(true, true), select(vec2<bool>(false, false), var_0, var_1), select(vec2<bool>(false, var_1), var_0, vec2<bool>(var_1, true))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1547f, arg_0.x, 186f), vec3<f32>(1192f, 948f, 387f)))), Struct_1(~(~u_input.d), var_0, _wgslsmith_f_op_vec3_f32(arg_0.zwy + arg_0.wxy)), Struct_1(u_input.d, var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.yxy, arg_0.yww, var_0.x)))), Struct_1(min(vec3<u32>(arg_2.x, 4756u, u_input.c) | arg_3, firstTrailingBit(vec3<u32>(arg_3.x, 71838u, arg_2.x))), vec2<bool>(!var_0.x, any(vec4<bool>(false, var_1, var_0.x, var_0.x))), vec3<f32>(380f, arg_0.x, arg_0.x))));
    var var_3 = Struct_3(var_2.d, firstTrailingBit(-8883i), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -285f))), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(751f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 490f)), Struct_2(Struct_1(max(_wgslsmith_div_vec3_u32(arg_3, u_input.d), var_2.d.b.a), !var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1559f, -2091f, arg_0.x))), var_2.e.b, var_2.a.a, Struct_1(~arg_3, !(!var_2.d.b.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, 344f), arg_0.wxz))))), var_2.e);
    var var_4 = var_3.d.a;
    return vec2<bool>(false, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -16252i;
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1254f, 279f, 1028f, -1230f) + vec4<f32>(-1712f, 532f, 1201f, 104f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1566f, -408f, -907f, 405f) + vec4<f32>(-398f, -1347f, 751f, 965f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, -816f, 930f, -1107f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), (func_1() << (firstTrailingBit(u_input.d | vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 28u)], 1u)) % vec3<u32>(32u))) >> (~firstTrailingBit(u_input.d) % vec3<u32>(32u)), (~firstTrailingBit(vec2<u32>(4294967295u, 1u)) >> (~min(vec2<u32>(1u, u_input.d.x), vec2<u32>(44648u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)])) % vec2<u32>(32u))) & u_input.d.yz, vec3<u32>(53583u, _wgslsmith_mult_u32(43681u, ~4294967295u | u_input.d.x), 4294967295u));
    global0 = array<u32, 28>();
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.d.zx), firstLeadingBit(20731u)), ~min(u_input.d.x, ~1u)), ~u_input.d.x);
    let var_3 = Struct_1(~u_input.d, func_5(_wgslsmith_div_vec4_f32(vec4<f32>(587f, _wgslsmith_f_op_f32(trunc(1102f)), _wgslsmith_div_f32(-1813f, 106f), _wgslsmith_f_op_f32(round(223f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1512f, -141f, -172f, -1742f) * vec4<f32>(-340f, 1157f, -1585f, -1276f)))), vec3<i32>((-2147483647i | u_input.a) ^ u_input.b, reverseBits(func_1().x), u_input.b), u_input.d.yx, vec3<u32>(var_2, ~reverseBits(global0[_wgslsmith_index_u32(19635u, 28u)]), _wgslsmith_clamp_u32(var_2, global0[_wgslsmith_index_u32(0u, 28u)], 81961u) << (~var_2 % 32u))), vec3<f32>(_wgslsmith_f_op_f32(max(630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1528f * 744f)))), 268f, 785f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

