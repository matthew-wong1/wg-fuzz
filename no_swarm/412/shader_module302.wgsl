struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 54072u;

var<private> global1: f32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(true, vec4<f32>(279f, 1003f, 932f, 673f)), vec4<f32>(-340f, 1160f, -1231f, -963f)), Struct_2(Struct_1(true, vec4<f32>(-1038f, -192f, 2084f, -1000f)), vec4<f32>(-674f, -2011f, 1283f, 110f)), Struct_2(Struct_1(true, vec4<f32>(-646f, 933f, -2359f, 278f)), vec4<f32>(331f, 376f, -697f, -1736f)), Struct_2(Struct_1(true, vec4<f32>(-1383f, 2261f, -2769f, -1900f)), vec4<f32>(-450f, -155f, 1000f, -663f)), Struct_2(Struct_1(true, vec4<f32>(-912f, -202f, -669f, -1781f)), vec4<f32>(1140f, -901f, -520f, -210f)), Struct_2(Struct_1(false, vec4<f32>(459f, -2353f, 1517f, 1720f)), vec4<f32>(1084f, -1000f, 962f, 378f)), Struct_2(Struct_1(false, vec4<f32>(-1899f, -429f, -1017f, -200f)), vec4<f32>(-1171f, 784f, 669f, -1327f)), Struct_2(Struct_1(false, vec4<f32>(159f, -873f, 689f, -1508f)), vec4<f32>(-579f, -3345f, 1401f, 1131f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~max(u_input.b, _wgslsmith_clamp_u32(0u, 86660u, u_input.b)), 20184u, u_input.b, firstLeadingBit(60800u)), countOneBits(vec4<u32>(~2176u, ~abs(u_input.b), firstLeadingBit(abs(u_input.b)), u_input.b)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))));
    let var_1 = 23071u;
    var var_2 = vec3<bool>(!(!any(!vec4<bool>(arg_2.a, arg_2.a, false, arg_1.a))), false, !arg_1.a);
    var_2 = !select(!vec3<bool>(true, any(vec3<bool>(arg_1.a, global2.x, var_2.x)), true), select(vec3<bool>(var_2.x & arg_2.a, true, any(vec4<bool>(false, false, true, true))), vec3<bool>(false, !var_2.x, true), arg_1.b.x > -1674f), vec3<bool>(global2.x, select(!global2.x, any(vec4<bool>(false, false, true, true)), arg_2.a), arg_2.a));
    return !(!select(false, true, true));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0.b.zwx + arg_0.b.yyw))), vec3<f32>(_wgslsmith_div_f32(-937f, 1751f), _wgslsmith_f_op_f32(ceil(2086f)), arg_0.b.x), vec3<bool>(all(vec4<bool>(false, global2.x, arg_0.a.a, arg_0.a.a)), global2.x, false))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.a.b.xxw))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.wyw)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-1f), 730f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.b.x, arg_0.b.x, arg_0.a.b.x))))))));
    global3 = array<Struct_2, 8>();
    var var_1 = global2.x;
    var var_2 = u_input.b;
    var var_3 = all(vec2<bool>(false, true == func_3(0i, arg_0.a, Struct_1(global2.x, vec4<f32>(arg_0.b.x, var_0.x, -1000f, 1000f)))));
    return global3[_wgslsmith_index_u32(abs(u_input.b), 8u)];
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~select(~vec4<u32>(2092u, arg_3, u_input.b, 36602u), ~vec4<u32>(arg_3, arg_3, u_input.b, u_input.b), false), vec4<u32>(arg_3, ~0u, 21787u, 0u));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(arg_1.a.b.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(arg_1.b.wy)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-207f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.b.x))), var_1.x)))) + _wgslsmith_f_op_f32(1248f - 598f));
    global0 = ~firstLeadingBit(~reverseBits(~1u));
    global2 = vec2<bool>(any(vec4<bool>(true, true, true, true)), !(!(u_input.b < var_0.x)));
    return firstLeadingBit(~_wgslsmith_div_u32(1u, ~12466u) | u_input.b);
}

fn func_1() -> u32 {
    var var_0 = ~select(~(~vec3<u32>(5665u, 98726u, u_input.b) ^ ~vec3<u32>(1u, 14146u, u_input.b)), vec3<u32>(25868u, u_input.b, ~(~3893u)), true);
    var_0 = vec3<u32>(abs(_wgslsmith_div_u32(_wgslsmith_add_u32(36402u, firstLeadingBit(18716u)), var_0.x)), firstLeadingBit((_wgslsmith_div_u32(var_0.x, u_input.b) << (_wgslsmith_sub_u32(0u, u_input.b) % 32u)) << (func_4(39050i, func_2(Struct_2(Struct_1(global2.x, vec4<f32>(-1455f, 490f, -1076f, 320f)), vec4<f32>(513f, 618f, 459f, -136f)), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), 1i, var_0.x) % 32u)), u_input.b);
    let var_1 = -(i32(-1i) * -min(u_input.a.x, _wgslsmith_clamp_i32(0i, u_input.a.x, u_input.a.x)));
    var var_2 = Struct_2(func_2(func_2(global3[_wgslsmith_index_u32(u_input.b, 8u)], vec3<i32>(var_1, ~11861i, -1i & u_input.a.x)), -vec3<i32>(min(var_1, -79741i), var_1, ~var_1)).a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f - 1000f)), -718f, func_2(Struct_2(Struct_1(true, vec4<f32>(-241f, -758f, -680f, 1309f)), vec4<f32>(-1953f, -1000f, 792f, -1065f)), vec3<i32>(var_1, 0i, 10813i)).a.b.x, 1f))));
    var var_3 = i32(-1i) * -37947i;
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((_wgslsmith_add_u32(25481u, func_1()) < ~(~u_input.b)) != global2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2242f, 868f, 246f, 696f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, 1059f, 1000f, 896f)))));
    var_0 = Struct_1(global2.x, var_0.b);
    global3 = array<Struct_2, 8>();
    let var_1 = func_2(func_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, 0u), 0u), ~4294967295u), 8u)], _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, -16020i))), ~(vec3<i32>(u_input.a.x, u_input.a.x, 33169i) << (vec3<u32>(u_input.b, 43853u, u_input.b) % vec3<u32>(32u))))), vec3<i32>(0i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2791i), vec3<i32>(42142i, 1i, -46801i))), _wgslsmith_div_i32(1i, u_input.a.x))).a;
    let var_2 = max(~(~((vec3<i32>(2147483647i, 2147483647i, u_input.a.x) << (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(vec3<i32>(34853i, -1i, 39210i), vec3<i32>(-3541i, u_input.a.x, 0i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), -countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_1.b.zww + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, var_0.b.x)))))), _wgslsmith_f_op_vec3_f32(sign(var_0.b.zyw)))));
    let var_4 = Struct_1(all(vec2<bool>(global2.x, func_2(Struct_2(var_1, vec4<f32>(var_0.b.x, -701f, var_0.b.x, var_1.b.x)), firstTrailingBit(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))).a.a)), _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.b, var_0.b, true)) - vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(var_1.b.x)), _wgslsmith_f_op_f32(1390f + var_1.b.x), _wgslsmith_div_f32(var_1.b.x, var_1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(-_wgslsmith_clamp_i32(40640i, u_input.a.x, u_input.a.x), Struct_2(Struct_1(var_1.a, vec4<f32>(var_1.b.x, -128f, 1348f, 725f)), var_1.b), var_2.x, 19428u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.b.x, var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) - -789f), 1785f, _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(295f)), _wgslsmith_f_op_f32(555f + -952f))))), _wgslsmith_div_vec3_f32(var_4.b.zzx, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(212f, var_1.b.x, 171f) + _wgslsmith_f_op_vec3_f32(-var_4.b.yww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.b.wyy - vec3<f32>(var_3.x, 1001f, var_1.b.x)))))), -_wgslsmith_dot_vec2_i32(reverseBits(var_2.zy), vec2<i32>(19997i, u_input.a.x)) | ~var_2.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, func_4(-24656i, func_2(global3[_wgslsmith_index_u32(u_input.b, 8u)], var_2), -var_2.x, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 16000u), vec2<u32>(func_4(u_input.a.x, global3[_wgslsmith_index_u32(0u, 8u)], u_input.a.x, 4294967295u), 1u)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(34721u, 23141u), vec2<u32>(20759u, u_input.b), vec2<u32>(u_input.b, u_input.b)))));
}

