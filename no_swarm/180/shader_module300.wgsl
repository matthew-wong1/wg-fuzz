struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(855f, -245f, -1575f, 1136f), vec4<f32>(2511f, -201f, -331f, -1000f), vec4<f32>(926f, -371f, 407f, -1590f), vec4<f32>(408f, -1344f, 924f, -387f), vec4<f32>(-671f, -1299f, -481f, -2672f), vec4<f32>(-2020f, -438f, 1227f, -777f), vec4<f32>(-772f, 1143f, -1000f, -653f), vec4<f32>(700f, 294f, 157f, 1772f), vec4<f32>(1027f, -189f, -673f, -605f));

var<private> global3: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-11344i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(931i, -1i, -65153i), vec3<i32>(-34580i, 17183i, -12549i), vec3<i32>(24978i, 1i, 0i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_4 {
    global0 = array<u32, 15>();
    global3 = array<vec3<i32>, 7>();
    global2 = array<vec4<f32>, 9>();
    var var_0 = Struct_4(u_input.e);
    let var_1 = arg_0.b.b;
    return Struct_4(var_0.a);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !(!(!any(vec3<bool>(true, false, true))));
    let var_1 = firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.d, abs(-arg_0.c)), u_input.e));
    var var_2 = arg_0.b;
    let var_3 = Struct_1(firstLeadingBit(u_input.d.wyz), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(100f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f * -267f))), _wgslsmith_f_op_f32(f32(-1f) * -827f))), var_2.e, -624f, ~0u);
    var var_4 = Struct_3(u_input.c, var_3);
    return var_2.e;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(-133f));
    global2 = array<vec4<f32>, 9>();
    let var_1 = 479f;
    var var_2 = _wgslsmith_mod_u32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1013f, 1594f))), Struct_1(-arg_3, 418f, ~11194u, var_1, u_input.b.x), vec4<i32>(min(5114i, -2147483647i), -1i, arg_0.a, -3163i), vec3<u32>(1u, min(64612u, arg_2.x), ~arg_2.x))), arg_2.x);
    global0 = array<u32, 15>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1516f, 1259f)))), var_1))) - var_1);
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = func_1(Struct_3(vec4<u32>(1348u, abs(u_input.b.x), _wgslsmith_div_u32(arg_0.c, ~u_input.c.x), 11297u), arg_0), abs(vec3<i32>(func_1(Struct_3(vec4<u32>(36617u, u_input.b.x, 9514u, 1u), Struct_1(vec3<i32>(-1i, arg_0.a.x, u_input.a), arg_0.b, global0[_wgslsmith_index_u32(0u, 15u)], 1543f, 4294967295u)), vec3<i32>(1i, -91214i, 3125i)).a, 1i, arg_0.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1271f * 2224f), _wgslsmith_f_op_f32(select(-2063f, _wgslsmith_f_op_f32(-arg_0.d), true))))));
    let var_2 = !select(vec3<bool>(true, u_input.d.x > _wgslsmith_dot_vec2_i32(vec2<i32>(10025i, arg_0.a.x), vec2<i32>(var_0.a, -78487i)), !all(vec2<bool>(false, true))), vec3<bool>(true, !any(vec3<bool>(true, false, true)), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, true, true)));
    let var_3 = select(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.e, 55257u) | u_input.b.wx, u_input.c.ww), u_input.c.xx), u_input.b.yz >> (firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(0u, 15u)], arg_0.c)) % vec2<u32>(32u))), abs(abs(~(~vec2<u32>(arg_0.c, 1u)))), vec2<bool>(true & all(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, false), false)), !(!var_2.x) != var_2.x));
    global3 = array<vec3<i32>, 7>();
    return Struct_4(min(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -16506i), u_input.d), vec4<i32>(1i, 0i, 23325i, u_input.a) ^ vec4<i32>(-2147483647i, 19174i, 20335i, 1i)), 1i) | -(arg_0.a.x << (select(var_3.x, global0[_wgslsmith_index_u32(45712u, 15u)], false) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i)), u_input.d), -reverseBits(-36866i), firstTrailingBit(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, 0i), firstTrailingBit(2147483647i), ~u_input.a)));
    var var_1 = func_4(Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -22222i, 23242i) >> (u_input.c.zxx % vec3<u32>(32u)), vec3<i32>(u_input.e, 31808i, u_input.a)), vec3<i32>(0i, 42681i, u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(2147483647i), func_1(Struct_3(vec4<u32>(u_input.c.x, 45976u, 12617u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2781u, 15u)], 15u)]), Struct_1(var_0, -1960f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29167u, 15u)], 15u)], 15u)], -520f, 43508u)), vec3<i32>(u_input.a, 0i, -1585i)), ~vec4<u32>(4294967295u, 66492u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)]), var_0 ^ vec3<i32>(u_input.d.x, u_input.a, 1i))) * 332f), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1195f))))), 14530u));
    var_1 = Struct_4(func_1(Struct_3(_wgslsmith_mult_vec4_u32(min(vec4<u32>(4294967295u, 0u, 118454u, 9421u), u_input.c), ~u_input.b), Struct_1(max(vec3<i32>(u_input.d.x, 24993i, var_1.a), vec3<i32>(u_input.e, u_input.d.x, 57209i)), _wgslsmith_f_op_f32(-402f + -2090f), firstTrailingBit(97204u), _wgslsmith_div_f32(545f, -208f), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]))), vec3<i32>(firstTrailingBit(-9912i) | ~var_1.a, func_4(Struct_1(var_0, 482f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)], -1497f, 1u)).a, firstTrailingBit(i32(-1i) * -20268i))).a);
    let x = u_input.a;
    s_output = StorageBuffer(20573u, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -21669i), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 0u), vec2<u32>(u_input.b.x & _wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], 15u)]), global0[_wgslsmith_index_u32(~u_input.c.x, 15u)]) << (~abs(~u_input.c.wy) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(450f + 1771f), _wgslsmith_f_op_f32(1640f - 156f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1449f - -663f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f))))));
}

