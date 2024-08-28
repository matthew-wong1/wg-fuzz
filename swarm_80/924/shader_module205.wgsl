struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<f32>(106f, 988f, -507f), vec4<f32>(867f, 1847f, 1815f, -124f), vec4<bool>(false, false, true, true)), Struct_1(vec3<f32>(-1007f, -1000f, -830f), vec4<f32>(-670f, 908f, -1321f, 881f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-154f, -999f, 835f), vec4<f32>(612f, -146f, 1698f, -963f), vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(-336f, -770f, -1000f), vec4<f32>(1855f, 652f, 192f, -153f), vec4<bool>(true, false, true, true)), Struct_1(vec3<f32>(-414f, 1962f, 170f), vec4<f32>(2363f, -289f, 1447f, -794f), vec4<bool>(false, false, true, true)), Struct_1(vec3<f32>(-752f, -1057f, 1333f), vec4<f32>(-1000f, 1768f, -527f, -155f), vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(1000f, 898f, 504f), vec4<f32>(1000f, 2026f, 109f, 809f), vec4<bool>(false, true, true, true)), Struct_1(vec3<f32>(1000f, -1055f, -1000f), vec4<f32>(-1451f, -610f, -1000f, 1736f), vec4<bool>(true, false, true, true)), Struct_1(vec3<f32>(-816f, 291f, 2236f), vec4<f32>(761f, -941f, -168f, 598f), vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-909f, 135f, 769f), vec4<f32>(-1000f, 221f, -100f, -695f), vec4<bool>(false, false, false, false)), Struct_1(vec3<f32>(-603f, -437f, 539f), vec4<f32>(-826f, -484f, 897f, 985f), vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(-174f, 428f, 945f), vec4<f32>(-1004f, -1000f, -990f, -1000f), vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(-248f, 704f, -1106f), vec4<f32>(-453f, 707f, 170f, -698f), vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(1013f, -214f, -306f), vec4<f32>(1330f, 166f, -1379f, 1405f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-949f, 620f, -1000f), vec4<f32>(898f, -1328f, 739f, 251f), vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(-302f, 1464f, -849f), vec4<f32>(-761f, 1513f, -1430f, -2002f), vec4<bool>(false, false, true, false)), Struct_1(vec3<f32>(-466f, 1000f, 552f), vec4<f32>(1346f, 526f, 280f, 1000f), vec4<bool>(true, false, false, false)));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1545f, 467f, 1235f), vec4<f32>(1619f, 1044f, 1710f, 191f), vec4<bool>(false, true, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 311f, !(global1.c.x || false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b.wxw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.b.zxw)))) + vec3<f32>(_wgslsmith_div_f32(global1.a.x, -1315f), -245f, _wgslsmith_f_op_f32(-var_0))), global1.b, vec4<bool>(all(select(vec2<bool>(false, true), global1.c.zy, true)) | !(u_input.b >= u_input.b), global1.c.x, all(global1.c), global1.c.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_div_vec4_f32(var_1.b, var_1.b));
    var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + global1.a.x) * 1000f), _wgslsmith_f_op_f32(-100f - _wgslsmith_f_op_f32(var_1.a.x * 881f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1479f)))))));
    return var_1.b.zzz;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(any(vec2<bool>(any(vec3<bool>(arg_0.c.x, true, false)), true)), global1.b.x < global1.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(u_input.c.x, -59278i, -45459i))) + _wgslsmith_f_op_vec3_f32(-arg_0.a))))), arg_0.b, select(vec4<bool>((global1.c.x && global1.c.x) || false, false, any(select(global1.c, arg_0.c, global1.c.x)), any(!global1.c.wxz)), !select(global1.c, select(global1.c, global1.c, false), false), vec4<bool>(global1.c.x, true, false, false)));
    global1 = Struct_1(arg_0.b.yxz, global1.b, vec4<bool>(select(var_0.x, true, true), (true | var_0.x) && false, all(select(select(var_1.c.zy, vec2<bool>(var_1.c.x, arg_0.c.x), vec2<bool>(var_0.x, false)), vec2<bool>(var_1.c.x, false), all(vec2<bool>(false, var_0.x)))), !all(var_0)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.b.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-_wgslsmith_mult_i32(u_input.c.x, -2147483647i), _wgslsmith_mult_i32(0i, min(22681i, -2147483647i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.xx), i32(-1i) * -18486i)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, var_2, var_1.a.x, -1405f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(833f, var_1.a.x, -754f, 1651f))), vec4<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(var_2 - 514f), _wgslsmith_f_op_f32(step(1314f, arg_0.b.x)), var_2), select(true, true, true & var_0.x))))), !select(vec4<bool>(var_1.a.x >= var_2, any(var_1.c.xyw), true, true), select(!vec4<bool>(arg_0.c.x, false, false, var_0.x), select(vec4<bool>(false, true, true, global1.c.x), vec4<bool>(true, var_0.x, false, true), var_1.c), !global1.c), global1.c));
    return global0[_wgslsmith_index_u32(1u, 17u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    global1 = func_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(491f - global1.b.x), _wgslsmith_f_op_f32(select(arg_0.a.x, -1152f, arg_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -1705f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, 905f, false)), -1454f, _wgslsmith_f_op_f32(f32(-1f) * -963f), global1.a.x) - global1.b), select(vec4<bool>(!global1.c.x, false, -2363f < arg_1, global1.c.x), arg_0.c, vec4<bool>(any(global1.c), true, any(vec2<bool>(false, false)), true))));
    var var_0 = arg_0;
    var var_1 = Struct_1(vec3<f32>(-727f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -560f)), _wgslsmith_f_op_f32(f32(-1f) * -163f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - func_2(Struct_1(var_0.a, var_0.b, arg_0.c)).a.x), _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(floor(-325f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)))))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-811f, arg_0.b.x, arg_0.a.x, arg_0.a.x) * vec4<f32>(var_0.b.x, arg_0.b.x, var_0.a.x, 261f)), select(var_0.c, vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, var_0.c.x), !var_0.c))).c);
    global1 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(round(arg_0.b)), !select(vec4<bool>(true, arg_0.c.x, var_1.a.x < -846f, arg_0.c.x), !vec4<bool>(true, global1.c.x, var_1.c.x, true), var_1.c.x && true));
    let var_2 = func_2(arg_0);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-880f, _wgslsmith_f_op_f32(max(-1105f, -1000f)), -1408f, _wgslsmith_div_f32(-422f, -1837f)) + vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(exp2(global1.b.x)), arg_0.a.x, _wgslsmith_f_op_f32(-var_1.a.x))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * 1521f)), _wgslsmith_f_op_f32(1f + -249f), -301f), vec4<bool>(true, func_2(arg_0).c.x, any(select(arg_0.c, vec4<bool>(false, arg_0.c.x, false, global1.c.x), var_0.c.x)), any(arg_0.c.xy)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> vec3<i32> {
    global1 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1882f, -709f, -228f) * vec3<f32>(arg_0.a.x, -1117f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(func_2(Struct_1(arg_0.a, vec4<f32>(arg_1.x, 1983f, global1.b.x, 1000f), vec4<bool>(global1.c.x, arg_0.c.x, false, global1.c.x))).b))), arg_0.c));
    let var_0 = u_input.c.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(arg_1, arg_0.b, arg_0.c)).b.x + _wgslsmith_f_op_f32(ceil(arg_0.b.x))))), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), -1217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-arg_0.b.x)))), arg_0.c);
    var var_2 = Struct_1(vec3<f32>(1152f, arg_3, _wgslsmith_f_op_f32(max(arg_3, var_1.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1208f, _wgslsmith_f_op_f32(select(1545f, _wgslsmith_f_op_f32(f32(-1f) * -998f), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + global1.b.x))), global1.a.x), vec4<f32>(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(var_0, u_input.c.x, 0i))).x)), global1.a.x, _wgslsmith_f_op_vec4_f32(func_1(func_2(var_1), arg_3)).x, var_1.b.x))), global1.c);
    var_2 = func_2(func_2(arg_0));
    return abs(-(~reverseBits(u_input.c)) | select(u_input.c, select(vec3<i32>(-1i, var_0, 0i) | u_input.c, vec3<i32>(var_0, u_input.c.x, u_input.c.x), select(var_2.c.xzx, var_2.c.wzw, true)), func_2(func_2(Struct_1(global1.b.zyw, global1.b, vec4<bool>(var_1.c.x, true, true, arg_0.c.x)))).c.yxx));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    global1 = func_2(Struct_1(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 + arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -691f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_1.b.x, -1000f, -194f), vec4<f32>(arg_2, -1691f, -1087f, global1.a.x)))), !arg_1.c));
    let var_0 = global0[_wgslsmith_index_u32(min(u_input.a.x, 24732u), 17u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(var_0.a, var_0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, 1340f, 990f), vec3<f32>(var_0.a.x, -1036f, 358f), true))))), arg_1.b, select(var_0.c, global1.c, var_0.c));
    var var_2 = min(_wgslsmith_mult_i32(1i | firstTrailingBit(9555i), firstLeadingBit(abs(select(-2147483647i, arg_0.x, true)))), (_wgslsmith_div_i32(-1i, -2147483647i) & u_input.c.x) | u_input.c.x);
    var var_3 = vec2<u32>(u_input.b, u_input.b);
    return !(!select(global1.c, select(!var_1.c, vec4<bool>(false, var_0.c.x, false, false), !arg_1.c.x), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.a.x, global1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-228f, -2054f, global1.b.x) * vec3<f32>(global1.b.x, -189f, global1.a.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, global1.b.x, 967f), vec3<f32>(global1.b.x, global1.a.x, global1.a.x))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(max(-1059f, -1422f)))), global1.b, !(!global1.c))), func_5(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-global1.b.zwz), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(global1.b.yyx, vec4<f32>(1253f, -273f, 721f, global1.a.x), global1.c), -334f)), global1.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.b.ywy))), _wgslsmith_f_op_vec3_f32(func_3(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))).x, global1.a.x), global0[_wgslsmith_index_u32(1u, 17u)], -1323f));
    var var_1 = select((countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, -27000i)) ^ u_input.c) << (vec3<u32>(0u | (u_input.a.x & 1u), abs(abs(u_input.a.x)), 1u) % vec3<u32>(32u)), func_4(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.b.xyz)), vec3<f32>(var_0.a.x, -634f, 845f)) * vec3<f32>(-706f, -2020f, var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(u_input.b, 17u)], -1614f)).x), _wgslsmith_f_op_f32(f32(-1f) * -397f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(~vec3<i32>(u_input.c.x, -1i, u_input.c.x))).x - -1560f)), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1423f, 1000f, global1.a.x), vec3<f32>(1264f, -2178f, -1222f), true)), var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), select(func_5(vec3<i32>(-3971i, -1i, 30095i), global0[_wgslsmith_index_u32(u_input.b, 17u)], var_0.b.x), vec4<bool>(var_0.c.x, false, false, global1.c.x), all(vec3<bool>(global1.c.x, true, false))))).c.x);
    let var_2 = u_input.b;
    var var_3 = ~vec4<u32>(min(0u, u_input.b), var_2, abs(~var_2) << (0u % 32u), 0u);
    var_1 = max(abs(abs(vec3<i32>(2147483647i, var_1.x, var_1.x))) & ~(_wgslsmith_add_vec3_i32(vec3<i32>(30941i, 1i, u_input.c.x), u_input.c) | ~u_input.c), _wgslsmith_add_vec3_i32(u_input.c >> (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, var_3.x), var_3.xwy), var_3.zww) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, -38738i), 2147483647i, u_input.c.x))));
    var_3 = ((_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(84724u, u_input.a.x, 4294967295u, var_3.x), vec4<u32>(var_3.x, 0u, 1u, var_2)), reverseBits(vec4<u32>(var_3.x, 1u, 0u, 0u))) | ((vec4<u32>(27563u, 73105u, var_2, var_2) | vec4<u32>(var_2, u_input.a.x, 0u, var_2)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2, u_input.a.x, u_input.a.x), vec4<u32>(1u, 7285u, 42218u, var_3.x)))) & ~vec4<u32>(~u_input.b, var_3.x << (var_3.x % 32u), ~u_input.b, ~var_2)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, u_input.b, var_2, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.yx), min(vec2<u32>(22490u, 1u), vec2<u32>(var_3.x, 1660u))), 46022u, 0u)) % vec4<u32>(32u));
    var var_4 = -(-countOneBits(~u_input.c.zy) >> (vec2<u32>(min(firstLeadingBit(var_3.x), reverseBits(50828u)), abs(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_3.x, 20793u, 1u)))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2);
}

