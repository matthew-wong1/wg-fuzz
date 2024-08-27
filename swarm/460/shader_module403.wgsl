struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1163f;

var<private> global1: array<u32, 8>;

var<private> global2: i32 = -47561i;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_5) -> bool {
    global3 = vec3<bool>(arg_0.x, any(select(arg_0, vec4<bool>(arg_0.x, global3.x | false, false, true), !arg_0.x)), true);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f)) - _wgslsmith_f_op_f32(-1111f - -1038f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(435f)))) * _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(3234f * 1197f))))));
    let var_0 = ~(~0u);
    global3 = arg_0.zzy;
    global3 = arg_0.zzx;
    return !global3.x;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = select(arg_2.b, !vec4<bool>(!all(arg_2.b), select(func_3(arg_2.b, 0i, Struct_5(arg_2.a)), any(vec3<bool>(global3.x, arg_2.c, true)), func_3(arg_2.b, -50971i, Struct_5(arg_2.a))), all(!vec3<bool>(global3.x, true, arg_2.c)), true), vec4<bool>(!all(arg_1.yz), false, true, all(vec2<bool>(arg_2.b.x, true))));
    let var_1 = Struct_1(~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a.a.x, global1[_wgslsmith_index_u32(arg_0, 8u)], 1u), vec3<u32>(0u, 0u, arg_2.a.a.x)))), ~1i);
    global3 = !select(arg_2.b.wxy, vec3<bool>(var_0.x | global3.x, false, arg_2.c), select(select(vec3<bool>(global3.x, global3.x, arg_2.b.x), select(var_0.zxz, vec3<bool>(false, var_0.x, arg_2.c), true), vec3<bool>(global3.x, true, false)), vec3<bool>(true, false, false), !(!arg_1)));
    let var_2 = Struct_4(Struct_3(Struct_2(Struct_1(~vec3<u32>(0u, global1[_wgslsmith_index_u32(45481u, 8u)], 1u), -1i), arg_2.b, !(arg_2.b.x | var_0.x), firstLeadingBit(vec4<i32>(var_1.b, u_input.b.x, 51276i, arg_3)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(28823u, var_1.a.x, 0u, 1u), vec4<u32>(var_1.a.x, 27271u, 21250u, arg_0), vec4<u32>(51388u, global1[_wgslsmith_index_u32(arg_0, 8u)], var_1.a.x, 81259u)) % vec4<u32>(32u))), Struct_1(vec3<u32>(0u, 54897u | global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(0u >> (global1[_wgslsmith_index_u32(36931u, 8u)] % 32u), 8u)]), u_input.b.x)));
    let var_3 = any(vec4<bool>(!select(!var_2.a.a.c, true, true), !any(vec4<bool>(false, global3.x, true, false)) && false, var_2.a.a.b.x, var_2.a.a.c));
    return Struct_2(Struct_1(~vec3<u32>(arg_2.a.a.x, 22334u, ~arg_2.a.a.x), var_1.b), select(select(select(vec4<bool>(false, true, arg_2.c, false), !vec4<bool>(var_3, true, arg_1.x, false), select(vec4<bool>(false, true, var_3, arg_2.c), vec4<bool>(true, arg_2.b.x, true, true), vec4<bool>(false, true, var_2.a.a.c, true))), !(!arg_2.b), var_2.a.a.b), var_2.a.a.b, true), arg_2.b.x, arg_2.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -1095f)))));
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(665f)))))));
    var var_1 = Struct_4(Struct_3(Struct_2(Struct_1(~vec3<u32>(92755u, arg_2.a.a.x, 52426u), ~arg_2.d.x), arg_0, arg_2.b.x, ~arg_2.d), func_2(22887u, !vec3<bool>(global3.x, true, arg_2.b.x), func_2(global1[_wgslsmith_index_u32(arg_2.a.a.x, 8u)], !arg_2.b.yxx, func_2(17664u, vec3<bool>(arg_0.x, false, false), Struct_2(arg_2.a, vec4<bool>(true, global3.x, false, false), true, arg_2.d), u_input.b.x), ~arg_2.d.x), u_input.b.x ^ abs(arg_2.a.b)).a));
    global3 = vec3<bool>(true, true, func_3(select(!vec4<bool>(true, var_1.a.a.b.x, global3.x, arg_0.x), select(select(vec4<bool>(true, false, true, var_1.a.a.b.x), vec4<bool>(false, true, false, arg_0.x), vec4<bool>(true, arg_2.c, arg_0.x, arg_2.b.x)), !vec4<bool>(var_1.a.a.c, false, false, global3.x), !var_1.a.a.c), true), _wgslsmith_div_i32(abs(arg_2.a.b), -1i), Struct_5(Struct_1(~arg_2.a.a, firstLeadingBit(var_1.a.a.a.b)))));
    var var_2 = ~1523i;
    return Struct_1(~vec3<u32>(_wgslsmith_mult_u32(157688u, global1[_wgslsmith_index_u32(28197u, 8u)]) << (~23124u % 32u), 20500u, arg_1.a.x), func_2(var_1.a.b.a.x, func_2(var_1.a.b.a.x, arg_2.b.zyy, Struct_2(func_2(37142u, arg_2.b.zzy, Struct_2(Struct_1(var_1.a.b.a, 4155i), arg_2.b, false, var_1.a.a.d), var_1.a.a.d.x).a, select(arg_2.b, vec4<bool>(true, global3.x, arg_2.b.x, false), true), false, arg_2.d << (vec4<u32>(arg_2.a.a.x, var_1.a.b.a.x, 43648u, var_1.a.a.a.a.x) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(var_1.a.a.d.yyw ^ vec3<i32>(0i, -60985i, 1i), min(vec3<i32>(-2147483647i, 16940i, -23976i), vec3<i32>(arg_1.b, var_1.a.b.b, u_input.a)))).b.zzz, Struct_2(func_2(38906u ^ arg_2.a.a.x, var_1.a.a.b.yxy, Struct_2(var_1.a.a.a, arg_2.b, var_1.a.a.c, vec4<i32>(-16188i, 1i, arg_1.b, var_1.a.b.b)), 5594i).a, !arg_2.b, true, vec4<i32>(reverseBits(0i), arg_2.d.x >> (4593u % 32u), ~(-1i), arg_2.d.x)), -1i).a.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    global2 = _wgslsmith_mod_i32(~func_4(arg_0.b, arg_1.b, Struct_2(arg_0.a, vec4<bool>(true, global3.x, arg_1.a.c, false), false && global3.x, min(arg_0.d, arg_0.d))).b, func_2(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(42715u, global1[_wgslsmith_index_u32(arg_1.b.a.x, 8u)]), 8u)], !select(arg_0.b.wzy, arg_0.b.yxx, arg_1.a.b.xyx), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(48577u, 0u, global1[_wgslsmith_index_u32(0u, 8u)], arg_0.a.a.x), vec4<u32>(12018u, global1[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u, 0u)), !arg_0.b.zyy, Struct_2(arg_1.a.a, vec4<bool>(global3.x, arg_0.b.x, global3.x, global3.x), false, vec4<i32>(-2147483647i, u_input.a, 28473i, -29101i)), ~arg_1.b.b), min(_wgslsmith_div_i32(arg_0.d.x, 1i), ~(-11368i))).a.b | -arg_0.a.b);
    global2 = arg_0.d.x;
    global0 = 1001f;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1231f, -1420f, _wgslsmith_f_op_f32(select(-2109f, -146f, arg_0.b.x)))))));
    let var_1 = _wgslsmith_add_u32(~(~_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(~90239u, 8u)])), max(~_wgslsmith_add_u32(~4294967295u, ~0u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a.x, 5335u, 1u), arg_1.a.a.a), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 8u)], 24565u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 34218u, 87721u))) & 29565u));
    return Struct_3(Struct_2(func_4(func_2(12890u, arg_1.a.b.yyy, Struct_2(Struct_1(arg_0.a.a, 23841i), vec4<bool>(arg_0.c, true, arg_1.a.c, arg_1.a.c), arg_0.c, vec4<i32>(1533i, 2147483647i, arg_0.d.x, 2147483647i)), max(-20012i, arg_1.a.a.b)).b, arg_1.a.a, arg_0), func_2(~global1[_wgslsmith_index_u32(17727u, 8u)], vec3<bool>(true, global3.x && global3.x, false), func_2(func_4(vec4<bool>(false, arg_0.b.x, arg_1.a.c, true), Struct_1(vec3<u32>(1u, arg_0.a.a.x, var_1), arg_1.a.a.b), arg_1.a).a.x, !vec3<bool>(arg_1.a.c, true, false), arg_0, -1i), reverseBits(~2147483647i)).b, true, min(arg_0.d, arg_0.d)), arg_0.a);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> u32 {
    var var_0 = false;
    let var_1 = firstTrailingBit(vec2<i32>(0i, -1i));
    var var_2 = Struct_4(func_5(arg_0.a.a, Struct_3(Struct_2(Struct_1(vec3<u32>(arg_3.x, 50145u, 14822u), 25085i), arg_0.a.a.b, arg_2.x, arg_0.a.a.d), func_4(select(arg_0.a.a.b, vec4<bool>(global3.x, global3.x, arg_1.x, global3.x), arg_2.x), Struct_1(vec3<u32>(71427u, 1726u, 617u), 0i), func_2(arg_3.x, arg_1, Struct_2(Struct_1(arg_0.a.a.a.a, 2147483647i), arg_0.a.a.b, arg_2.x, arg_0.a.a.d), 0i)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) * -1075f) - _wgslsmith_f_op_f32(sign(224f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f - -1330f) - _wgslsmith_f_op_f32(f32(-1f) * -524f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1711f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2470f - -636f)))));
    let var_3 = !arg_0.a.a.b.yzx;
    return firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, firstTrailingBit(_wgslsmith_add_u32(var_2.a.b.a.x, 55094u)), 34379u, 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.a.a.a.a & var_2.a.a.a.a, ~var_2.a.b.a), ~abs(arg_3.x), 26975u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 8>();
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, func_1(Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 8u)], 19451u), 4155i), vec4<bool>(false, true, global3.x, global3.x), global3.x, vec4<i32>(0i, u_input.a, u_input.a, 2147483647i)), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(29439u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 4294967295u), u_input.b.x))), vec3<bool>(false, global3.x, false), vec3<bool>(true, false, false), vec2<u32>(115854u, 82767u)) | ~global1[_wgslsmith_index_u32(36345u, 8u)]), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28459u, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45536u, 8u)], 8u)], global1[_wgslsmith_index_u32(116279u, 8u)]), vec4<u32>(1u, 21361u, global1[_wgslsmith_index_u32(0u, 8u)], 74818u)) | 1u, 0u), 1u), vec3<u32>(68932u, 1u, 5202u));
    global1 = array<u32, 8>();
    var var_2 = func_5(func_5(func_5(Struct_2(Struct_1(var_1, u_input.b.x), select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(false, false, global3.x, true), global3.x), !global3.x, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b.x, 2147483647i), vec4<i32>(1i, -5699i, u_input.a, -42186i))), func_5(func_5(Struct_2(Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 8u)], 1u, 47614u), u_input.a), vec4<bool>(true, global3.x, true, global3.x), false, vec4<i32>(u_input.b.x, -723i, u_input.a, 2147483647i)), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), -3140i), vec4<bool>(global3.x, global3.x, true, global3.x), false, vec4<i32>(u_input.a, u_input.b.x, 14697i, -37081i)), Struct_1(var_1, u_input.b.x))).a, Struct_3(Struct_2(Struct_1(vec3<u32>(var_1.x, 0u, var_1.x), 27727i), vec4<bool>(global3.x, global3.x, global3.x, global3.x), global3.x, vec4<i32>(1i, u_input.a, 1i, u_input.b.x)), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], var_1.x), u_input.b.x)))).a, func_5(func_5(Struct_2(Struct_1(vec3<u32>(6337u, 0u, var_1.x), -2147483647i), vec4<bool>(global3.x, false, true, true), true, vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x)), Struct_3(Struct_2(Struct_1(var_1, u_input.a), vec4<bool>(global3.x, false, false, true), global3.x, vec4<i32>(u_input.a, -2147483647i, 1i, -1i)), Struct_1(var_1, -2147483647i))).a, Struct_3(func_5(Struct_2(Struct_1(vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(6084u, 8u)], 0u), u_input.b.x), vec4<bool>(false, global3.x, global3.x, true), true, vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_3(Struct_2(Struct_1(vec3<u32>(var_1.x, var_1.x, var_1.x), u_input.b.x), vec4<bool>(global3.x, global3.x, true, global3.x), true, vec4<i32>(u_input.a, u_input.b.x, u_input.a, 1i)), Struct_1(var_1, 2147483647i))).a, func_4(vec4<bool>(false, global3.x, global3.x, true), Struct_1(var_1, u_input.a), Struct_2(Struct_1(vec3<u32>(4294967295u, 35374u, var_1.x), -1i), vec4<bool>(global3.x, global3.x, true, global3.x), false, vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.a)))))).a, Struct_3(func_5(func_2(var_1.x, func_2(15653u, vec3<bool>(global3.x, global3.x, global3.x), Struct_2(Struct_1(var_1, -36555i), vec4<bool>(global3.x, global3.x, true, global3.x), true, vec4<i32>(u_input.b.x, u_input.a, 35190i, -35376i)), u_input.a).b.yww, func_5(Struct_2(Struct_1(vec3<u32>(68352u, var_1.x, 1u), 19858i), vec4<bool>(global3.x, false, global3.x, false), global3.x, vec4<i32>(u_input.a, 30990i, u_input.b.x, u_input.b.x)), Struct_3(Struct_2(Struct_1(var_1, u_input.b.x), vec4<bool>(global3.x, global3.x, false, global3.x), global3.x, vec4<i32>(26780i, u_input.b.x, 12447i, u_input.b.x)), Struct_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(50151u, 8u)], 29799u), 49565i))).a, -12484i), Struct_3(func_5(Struct_2(Struct_1(var_1, 0i), vec4<bool>(global3.x, global3.x, true, false), false, vec4<i32>(1i, 48080i, u_input.a, -2147483647i)), Struct_3(Struct_2(Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], var_1.x, var_1.x), -33957i), vec4<bool>(false, true, global3.x, global3.x), global3.x, vec4<i32>(u_input.a, 4697i, u_input.b.x, u_input.b.x)), Struct_1(var_1, u_input.a))).a, Struct_1(vec3<u32>(55756u, var_1.x, 38977u), u_input.b.x))).a, func_4(vec4<bool>(true, func_3(vec4<bool>(false, true, global3.x, true), 11418i, Struct_5(Struct_1(var_1, u_input.a))), global3.x, false), Struct_1(vec3<u32>(1u, 53779u, 0u), _wgslsmith_div_i32(8823i, -2147483647i)), Struct_2(Struct_1(var_1, u_input.b.x), !vec4<bool>(global3.x, true, global3.x, global3.x), global3.x, ~vec4<i32>(1i, 25893i, u_input.b.x, u_input.b.x))))).a.a;
    let var_3 = !((1u > var_1.x) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(412f)) * _wgslsmith_f_op_f32(max(367f, -1202f))) > 338f));
    var var_4 = Struct_4(Struct_3(Struct_2(Struct_1(var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2.b), vec2<i32>(u_input.a, var_2.b))), func_5(Struct_2(Struct_1(vec3<u32>(var_2.a.x, 0u, global1[_wgslsmith_index_u32(4294967295u, 8u)]), var_2.b), vec4<bool>(true, var_3, false, var_3), global3.x, vec4<i32>(1i, u_input.b.x, 2147483647i, var_2.b)), func_5(Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 24160u), var_2.b), vec4<bool>(true, false, global3.x, global3.x), false, vec4<i32>(-1i, -20462i, u_input.a, -1i)), Struct_3(Struct_2(Struct_1(var_1, -2147483647i), vec4<bool>(global3.x, true, var_3, global3.x), false, vec4<i32>(-2147483647i, var_2.b, u_input.a, var_2.b)), Struct_1(vec3<u32>(var_2.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52059u, 8u)], 8u)], 0u), var_2.b)))).a.b, false, -_wgslsmith_mod_vec4_i32(vec4<i32>(-7712i, u_input.b.x, u_input.a, u_input.a), vec4<i32>(-1i, -22693i, u_input.b.x, var_2.b))), Struct_1(_wgslsmith_add_vec3_u32(var_2.a, var_2.a) ^ vec3<u32>(var_2.a.x, 4294967295u, 1u), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, -1230f, 107f, -992f)), vec4<f32>(703f, -1356f, 969f, 1427f))))));
}

