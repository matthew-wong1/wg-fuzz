struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -156f;

var<private> global1: f32 = -1120f;

var<private> global2: array<bool, 18>;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(16531u, 1u), Struct_1(31919u, 0u), Struct_1(4294967295u, 28839u), Struct_1(0u, 93405u), Struct_1(0u, 35693u), Struct_1(3274u, 20679u), Struct_1(0u, 4294967295u), Struct_1(12247u, 44316u), Struct_1(59137u, 4163u), Struct_1(32375u, 4294967295u), Struct_1(45011u, 122210u), Struct_1(4294967295u, 4294967295u), Struct_1(17885u, 14838u), Struct_1(1u, 136071u), Struct_1(15986u, 1u));

var<private> global4: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1276f, -350f) + vec2<f32>(-829f, 1238f))))))));
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(~1i, ~(-2147483647i)), ~1i), ~(-countOneBits(vec2<i32>(26155i, 1i))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global4 = countOneBits(u_input.a.x);
    var var_0 = select(~u_input.a.xw, vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_add_u32(35087u, 65033u)), u_input.a.x), all(arg_3.zwy));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-705f, 193f))))), arg_1, _wgslsmith_f_op_f32(select(1107f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(655f))), arg_0 < ~arg_0)), _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, 1547f, _wgslsmith_f_op_f32(abs(-348f)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_1, arg_1, -236f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, 2088f, arg_1, -1000f))))));
    var_1 = vec4<f32>(-452f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * arg_1), var_1.x);
    let var_2 = Struct_1(arg_2.b, ~21636u);
    return 7962u;
}

fn func_2() -> Struct_1 {
    let var_0 = firstTrailingBit(u_input.a.x);
    var var_1 = vec4<u32>(~2716u, 78116u, _wgslsmith_mult_u32(u_input.b, u_input.a.x), ~(~136920u));
    var_1 = vec4<u32>(~func_4(func_3(select(vec2<bool>(global2[_wgslsmith_index_u32(66613u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(false, false), global2[_wgslsmith_index_u32(var_0, 18u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1602f - 252f))), global3[_wgslsmith_index_u32(~(~1586u), 15u)], vec4<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 18u)], true)), true, !global2[_wgslsmith_index_u32(40472u, 18u)], true)), var_1.x ^ _wgslsmith_dot_vec2_u32(var_1.yz, var_1.wy), var_1.x, _wgslsmith_mod_u32(~22489u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1.x, 10011u), ~u_input.b, _wgslsmith_div_u32(1u, 73878u)), abs(77138u) | ~var_0)));
    let var_2 = select(!(!vec2<bool>(true, 4294967295u <= u_input.a.x)), vec2<bool>(true, any(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(51969u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]))), 146350u <= u_input.a.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(637f, 435f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1410f, 1516f)), _wgslsmith_f_op_f32(sign(1710f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1710f, -1100f) - vec2<f32>(-326f, -1059f))))));
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(1u, ~abs(_wgslsmith_sub_u32(u_input.b, u_input.a.x))), var_0 >> (~(~1u) % 32u)), 15u)];
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = Struct_1(~max(~u_input.b, 0u), 15051u);
    global2 = array<bool, 18>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(473f, 261f), vec2<f32>(-1785f, -640f))))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f + 2211f)), 753f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-511f, -1265f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, 840f))))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1849f) - var_1.x)))));
    global4 = (0u & var_0.b) << (abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.a, var_0.a) | 1u, 1u)) % 32u);
    return -795f;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    global3 = array<Struct_1, 15>();
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_2(), global2[_wgslsmith_index_u32(min(arg_0.x, 1u), 18u)], func_2(), ~41414u)) * -967f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f - 1000f)))));
    let var_1 = countOneBits(abs(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-8316i, 18630i, 39885i), -vec3<i32>(1i, -1i, -1i)))));
    var var_2 = select(!global2[_wgslsmith_index_u32(u_input.a.x, 18u)], true, true);
    let var_3 = func_2();
    return var_0;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_sub_i32(-(~1i << (~u_input.b % 32u)), ~_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(75969i, -1i)), firstLeadingBit(vec2<i32>(1491i, 2147483647i))));
    global1 = _wgslsmith_f_op_f32(-arg_1.a.x);
    global4 = 1u;
    var var_1 = Struct_2(arg_1.a);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1134f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-arg_1.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.x), 683f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2544f))));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_6(select(vec2<bool>(any(vec2<bool>(false, true)), false), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]))), true), func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, ~u_input.b), u_input.a.yw | (vec2<u32>(4294967295u, 19120u) | vec2<u32>(u_input.a.x, 1u))), Struct_1(u_input.a.x, countOneBits(~u_input.a.x)))));
    global3 = array<Struct_1, 15>();
    global4 = u_input.a.x;
    let var_0 = func_3(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f - 1344f) + -1382f) != _wgslsmith_f_op_f32(func_5(global3[_wgslsmith_index_u32(1u, 15u)], true, Struct_1(19216u, 15095u), _wgslsmith_mod_u32(4294967295u, 55509u))), !(any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 18u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 18u)])) && (global2[_wgslsmith_index_u32(u_input.a.x, 18u)] & true))));
    global0 = -201f;
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_div_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(53037u, u_input.b), vec2<u32>(4294967295u, 14107u)), ~var_1.x), vec2<u32>(38354u | var_1.x, 38472u), select(select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 18u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 18u)]))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b, 7911u)), countOneBits(var_1.wz)) | ~vec2<u32>(1u, 0u)) ^ ~u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-525f + 497f), _wgslsmith_f_op_f32(530f + _wgslsmith_f_op_f32(f32(-1f) * -669f)))) * -920f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1806f, _wgslsmith_f_op_f32(func_6(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)]), Struct_2(vec2<f32>(-404f, -101f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1233f - -720f) + _wgslsmith_f_op_f32(1000f + -623f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1428f), -596f))), func_1(reverseBits(var_1.yx), Struct_1(_wgslsmith_dot_vec4_u32(select(u_input.a, var_1, vec4<bool>(global2[_wgslsmith_index_u32(53489u, 18u)], global2[_wgslsmith_index_u32(var_2.x, 18u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), vec4<u32>(30043u, var_1.x, var_2.x, u_input.b)), u_input.b ^ func_2().b)).a.x);
}

