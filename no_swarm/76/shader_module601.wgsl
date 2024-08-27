struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1054f, -350f, 1065f), vec3<f32>(984f, 1927f, -893f), vec3<f32>(878f, 1000f, -208f), vec3<f32>(-1000f, -779f, -790f), vec3<f32>(1000f, -1438f, 357f), vec3<f32>(-220f, -1000f, -1207f), vec3<f32>(813f, -930f, -2348f), vec3<f32>(1351f, -141f, 487f), vec3<f32>(-664f, -1000f, 619f), vec3<f32>(361f, 1076f, 542f), vec3<f32>(791f, -1754f, 695f), vec3<f32>(-786f, -721f, -1161f), vec3<f32>(2008f, -1000f, 1120f), vec3<f32>(-133f, -1602f, 901f), vec3<f32>(-832f, -1593f, 575f), vec3<f32>(690f, 839f, 644f), vec3<f32>(-619f, -2088f, -420f));

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = global1.a;
    var var_1 = all(vec4<bool>(1i != _wgslsmith_add_i32(global1.b, u_input.c.x), !global1.a, true, all(select(vec2<bool>(global1.a, false), vec2<bool>(false, global1.a), vec2<bool>(global1.a, global1.a))))) | all(select(!vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(any(vec3<bool>(global1.a, false, global1.a)), true, true), !(!vec3<bool>(global1.a, global1.a, global1.a))));
    let var_2 = Struct_4(Struct_1(true, firstLeadingBit(reverseBits(_wgslsmith_mod_i32(-2147483647i, u_input.c.x))), global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-790f, 1000f))) * 679f)), Struct_2(~(u_input.b.x << (global1.c % 32u)), false, -853f, Struct_1(global1.a, max(_wgslsmith_sub_i32(global1.b, 2147483647i), u_input.c.x), 4294967295u), !vec4<bool>(!global1.a, true, true, all(vec3<bool>(global1.a, global1.a, false)))));
    global1 = Struct_1(!(!any(!vec4<bool>(false, var_2.c.e.x, true, false))), reverseBits(1i), var_2.a.c);
    global0 = array<vec3<f32>, 17>();
    return var_2.c.d;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<f32>) -> bool {
    let var_0 = global1.c;
    var var_1 = Struct_4(func_2(_wgslsmith_div_u32(u_input.a.x, global1.c), u_input.c.wzz), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(sign(-564f)), u_input.c.x <= -1i)), _wgslsmith_f_op_f32(f32(-1f) * -978f))))), Struct_2(~(abs(28258u) | global1.c), u_input.c.x >= -46476i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-201f)))), Struct_1(true, 11512i, _wgslsmith_div_u32(8437u, 1u) << (1u % 32u)), arg_0));
    let var_2 = var_1.c.e;
    let var_3 = any(select(!vec3<bool>(all(var_1.c.e), var_2.x, !var_2.x), select(var_1.c.e.zww, !var_2.zzy, !any(var_1.c.e.zyz)), var_2.x));
    global1 = func_2(firstTrailingBit(firstTrailingBit(u_input.a.x)), firstLeadingBit(~vec3<i32>(16829i, var_1.c.d.b, u_input.c.x) | vec3<i32>(global1.b, u_input.c.x << (59162u % 32u), max(27853i, 0i))));
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_4(func_2(firstLeadingBit(93781u), u_input.c.zyy), 1143f, Struct_2(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c, 58284u, u_input.b.x), vec3<u32>(37465u, 4294967295u, global1.c), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), u_input.a.zzw), !func_3(select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(false, global1.a, arg_1.x, false)), _wgslsmith_f_op_f32(662f + -1955f), _wgslsmith_div_vec4_f32(vec4<f32>(487f, -1430f, 467f, 1000f), vec4<f32>(1521f, 1917f, 148f, -1132f))), _wgslsmith_f_op_f32(376f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1722f))), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 19486u, 1u) >> (vec4<u32>(53415u, global1.c, 18759u, global1.c) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global1.c, 23765u, global1.c), u_input.a)), -(~vec3<i32>(arg_0.x, -43890i, 1i))), vec4<bool>(true, false, false & (u_input.a.x >= global1.c), all(!vec4<bool>(global1.a, global1.a, false, arg_1.x)))));
    let var_1 = func_2(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(52409u, _wgslsmith_mod_u32(global1.c, var_0.a.c) >> (~60165u % 32u), ~5021u, _wgslsmith_add_u32(24678u, var_0.c.a))), max(vec3<i32>(-1i) * -(~u_input.c.xyz), u_input.c.yyz));
    global1 = Struct_1(arg_1.x, abs(func_2(global1.c, u_input.c.yzw | -vec3<i32>(var_0.a.b, 1i, var_0.c.d.b)).b), ~(~var_1.c));
    var var_2 = !vec3<bool>(func_2(~(var_0.c.a << (var_1.c % 32u)), u_input.c.zzw).a, false, !(_wgslsmith_f_op_f32(step(1788f, -133f)) >= var_0.c.c));
    var var_3 = vec4<f32>(-198f, _wgslsmith_f_op_f32(var_0.c.c * _wgslsmith_f_op_f32(_wgslsmith_div_f32(206f, 538f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), 698f);
    return Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(74046u), ~1u, var_0.a.c), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.yy), ~vec2<u32>(var_1.c, 23150u)), 9333u << (max(var_0.c.d.c, 32182u) % 32u), 24687u)), var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-124f)) + -572f)) + _wgslsmith_f_op_f32(floor(var_0.b))), Struct_1(false, -(~0i), (u_input.a.x ^ _wgslsmith_sub_u32(83299u, 1u)) & (1u & _wgslsmith_mult_u32(global1.c, global1.c))), select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, false, arg_1.x), select(var_0.c.e, vec4<bool>(var_1.a, var_2.x, true, false), true)), var_0.c.e, select(vec4<bool>(arg_1.x, arg_1.x, func_3(var_0.c.e, 246f, vec4<f32>(var_0.c.c, 135f, -897f, 458f)), true), var_0.c.e, true)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    global1 = Struct_1(global1.a, -13103i, reverseBits(reverseBits(global1.c ^ global1.c)));
    let var_0 = Struct_4(arg_0.d, 348f, Struct_2(_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(reverseBits(arg_0.d.c), arg_0.a)), arg_0.d.b >= _wgslsmith_dot_vec2_i32(vec2<i32>(-39029i, global1.b), u_input.c.yx), arg_0.c, Struct_1(global1.a, max(global1.b, arg_2.x), func_2(u_input.a.x, u_input.c.zxx << (u_input.a.wxy % vec3<u32>(32u))).c), arg_0.e));
    global1 = Struct_1(var_0.c.b, abs(func_1(u_input.c.xx, select(vec3<bool>(true, true, arg_0.e.x), !var_0.c.e.zzx, arg_0.e.xyz), min(u_input.c.x, arg_2.x & arg_2.x)).d.b), 0u);
    var var_1 = var_0.c.e;
    let var_2 = _wgslsmith_f_op_f32(-1276f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-152f, -548f)))), 1249f));
    return Struct_1(!(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(sign(var_0.c.c)))), global1.b, _wgslsmith_mod_u32(global1.c, 33016u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 17>();
    global1 = func_4(func_1((u_input.c.xz | u_input.c.wz) ^ vec2<i32>(-58860i, abs(global1.b)), !select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, false, false)), i32(-1i) * -1i), 2147483647i, vec2<i32>(u_input.c.x | 0i, u_input.c.x));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-381f, 457f, -497f, 608f), vec4<f32>(-253f, 979f, -1337f, -704f)))))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, 329f)))), 266f, 159f, -404f)));
    let var_1 = -vec3<i32>(u_input.c.x, _wgslsmith_div_i32(-abs(u_input.c.x), func_1(u_input.c.xx, vec3<bool>(global1.a, global1.a, false), -2147483647i).d.b << (_wgslsmith_mult_u32(global1.c, 1u) % 32u)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.c.x | global1.b, _wgslsmith_div_i32(32918i, u_input.c.x)), global1.b));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f * -300f) * _wgslsmith_f_op_f32(-315f + var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2679f, var_0.x, var_0.x, 416f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, var_0.x, 190f, var_0.x) - vec4<f32>(-454f, -387f, var_0.x, -149f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -795f) + vec4<f32>(862f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 883f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x, 874f)))), vec4<bool>(!any(vec4<bool>(false, true, global1.a, true)), global1.a, !select(global1.c >= u_input.a.x, true, all(vec3<bool>(global1.a, true, global1.a))), all(vec4<bool>(-2147483647i <= var_1.x, func_2(4294967295u, vec3<i32>(-23867i, 0i, -2147483647i)).a, true, true)))));
    global0 = array<vec3<f32>, 17>();
    let var_2 = !(!(!(!(!vec3<bool>(true, true, global1.a)))));
    let var_3 = Struct_4(Struct_1(true, _wgslsmith_add_i32(u_input.c.x, -global1.b), global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), Struct_2(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.a.x), _wgslsmith_add_u32(global1.c, u_input.b.x)), u_input.a.x >> (u_input.a.x % 32u)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-818f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))), func_1(~_wgslsmith_div_vec2_i32(var_1.yx, vec2<i32>(u_input.c.x, u_input.c.x)), func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(9227i, u_input.c.x), var_1.xx, vec2<i32>(var_1.x, global1.b)), !var_2, global1.b ^ -1i).e.yyz, _wgslsmith_clamp_i32(25567i, abs(global1.b), -u_input.c.x)).d, !vec4<bool>(true, true, global1.a | false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, global1.b, -5047i), vec4<i32>(51502i, u_input.c.x, var_3.a.b, var_3.c.d.b))), (_wgslsmith_sub_vec4_i32(vec4<i32>(-16804i, var_3.a.b, 19403i, -20488i), u_input.c) ^ u_input.c) << ((u_input.a ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_3.c.d.c, 33219u, global1.c, u_input.a.x), vec4<u32>(u_input.b.x, u_input.b.x, var_3.c.d.c, 5036u))) % vec4<u32>(32u))));
}

