struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(0i, 0i), vec2<i32>(10261i, -71363i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-8345i, 10827i), vec2<i32>(-61436i, -1i), vec2<i32>(-9778i, 0i), vec2<i32>(i32(-2147483648), -96i), vec2<i32>(0i, 54939i), vec2<i32>(2147483647i, 6011i), vec2<i32>(0i, 13356i), vec2<i32>(2147483647i, -9117i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 13663i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-7630i, i32(-2147483648)));

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 33107u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-46573i, -min(-1i ^ arg_0.a, arg_0.a), firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, reverseBits(1i), firstLeadingBit(8341i)))), vec3<i32>(~(~firstLeadingBit(arg_0.a)), ~(-24676i), ~(arg_0.a >> (~u_input.a % 32u))));
    global0 = array<vec2<i32>, 16>();
    let var_1 = _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(min(vec3<i32>(1i, -33753i, -23905i), ~vec3<i32>(2310i, -39920i, 23613i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.x, -1i, arg_0.a), countOneBits(vec3<i32>(-57928i, -1i, -23425i))))), ~firstLeadingBit(~vec3<i32>(var_0.x, -65120i, 2147483647i)), ~(~vec3<i32>(_wgslsmith_add_i32(18935i, var_0.x), _wgslsmith_div_i32(1i, -21728i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.x, -16456i), vec3<i32>(arg_0.a, 1i, -2147483647i)))));
    var var_2 = arg_0;
    global0 = array<vec2<i32>, 16>();
    return var_2.e.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<f32>(-441f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1267f * arg_2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_1)), arg_2.b.x, _wgslsmith_f_op_f32(func_3(arg_2, vec2<u32>(~(~4294967295u), ~firstTrailingBit(global1.x)))));
    global1 = vec4<u32>((_wgslsmith_dot_vec2_u32(global1.wy, vec2<u32>(25766u, global1.x)) << (~u_input.a % 32u)) ^ global1.x, global1.x, ~countOneBits(global1.x), u_input.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1000f) - _wgslsmith_f_op_f32(max(var_0.x, -611f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(193f, var_0.x)))), _wgslsmith_f_op_f32(-arg_2.b.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f))) - arg_0.x));
    var var_2 = 1210f;
    var var_3 = Struct_1(_wgslsmith_mult_i32(firstTrailingBit(arg_2.a) >> (~7032u % 32u), ~arg_2.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.e.x)) + arg_0.x), -613f, 1f))), ~(global1.x << ((abs(0u) & global1.x) % 32u)), true, var_1);
    return Struct_2(all(!(!vec2<bool>(var_3.d, var_3.d))), arg_2, ~32331u);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = vec2<f32>(arg_3.b.b.x, _wgslsmith_div_f32(arg_3.b.b.x, arg_1));
    var var_1 = arg_3.b.b.x;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~(57397u ^ global1.x), u_input.a), arg_0) & u_input.a, 16u)];
    var_1 = 229f;
    return func_2(_wgslsmith_f_op_vec2_f32(-var_0), all(select(vec3<bool>(arg_2 & false, all(vec4<bool>(arg_3.b.d, false, false, arg_2)), !arg_2), select(vec3<bool>(false, arg_2, false), select(vec3<bool>(true, true, true), vec3<bool>(arg_2, arg_3.a, true), vec3<bool>(true, arg_2, arg_2)), false), select(!vec3<bool>(arg_3.b.d, false, arg_3.b.d), !vec3<bool>(arg_3.a, false, false), arg_3.b.d))), arg_3.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.b.b.x)), _wgslsmith_f_op_f32(abs(arg_0.b.b.x)), _wgslsmith_f_op_f32(arg_0.b.b.x + -2173f))))) * _wgslsmith_f_op_vec3_f32(-arg_0.b.e.zyw));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.b.b.xw);
    var var_2 = Struct_2(!select(arg_0.a, false, (arg_2 >= var_0.x) || !arg_0.b.d), arg_0.b, firstLeadingBit(u_input.a));
    var_2 = arg_0;
    var var_3 = Struct_2(true, var_2.b, u_input.a);
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(40313u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1.yyy, global1.xxx), firstLeadingBit(vec3<u32>(arg_0.c, 1u, 4294967295u)))), vec2<u32>(arg_0.b.c, ~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(~4294967295u, 0u), func_4(func_1(firstLeadingBit(28465u), -1163f, true, Struct_2(true, Struct_1(-1i, vec4<f32>(403f, 1489f, -955f, 709f), u_input.a, true, vec4<f32>(350f, -1000f, -1000f, 1513f)), u_input.a)), vec2<i32>(0i, -2147483647i), -147f), firstTrailingBit(_wgslsmith_clamp_u32(u_input.a ^ 0u, 1u, 0u)), _wgslsmith_add_u32(select(reverseBits(0u), ~29907u, true), ~global1.x ^ ~global1.x)));
    let var_0 = Struct_2(select(true, false, true), Struct_1(~1i, func_1(18016u, -923f, true, Struct_2(true, Struct_1(43639i, vec4<f32>(1130f, -2577f, 1248f, 2176f), 4294967295u, true, vec4<f32>(289f, -1115f, 203f, 315f)), u_input.a | global1.x)).b.e, u_input.a, any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(-1527f, -2083f), false, Struct_1(2147483647i, vec4<f32>(-1366f, -201f, 404f, -495f), global1.x, true, vec4<f32>(723f, 1292f, 1000f, -117f))).b.e + _wgslsmith_f_op_vec4_f32(select(func_2(vec2<f32>(-1315f, -534f), false, Struct_1(2147483647i, vec4<f32>(2125f, 870f, -538f, 1000f), 82823u, false, vec4<f32>(-1474f, -899f, 436f, -1000f))).b.e, vec4<f32>(-2109f, -1026f, 1062f, 381f), func_2(vec2<f32>(-1656f, 687f), true, Struct_1(-40373i, vec4<f32>(810f, -1708f, -1000f, -332f), 0u, true, vec4<f32>(748f, -852f, -895f, 1635f))).a)))), _wgslsmith_div_u32(func_1(36198u, 1921f, any(vec2<bool>(true, true)), Struct_2(true, Struct_1(-32725i, vec4<f32>(-116f, 552f, 2421f, 873f), u_input.a, true, vec4<f32>(201f, 412f, 1000f, 2192f)), ~0u)).c, 1u >> (_wgslsmith_sub_u32(~0u, 4294967295u) % 32u)));
    var var_1 = vec4<bool>(true, -1746f >= _wgslsmith_f_op_f32(-var_0.b.b.x), var_0.a, var_0.b.d);
    let var_2 = ~33502u;
    global1 = abs(~vec4<u32>(1u, _wgslsmith_sub_u32(var_2 & 1u, ~global1.x), 564u, ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.c, ~(~var_0.b.c), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1.wx, vec2<u32>(var_2, 43698u)), 18065u), var_2 & _wgslsmith_mult_u32(global1.x, 29439u)), ~vec4<u32>(max(1u, 4294967295u), _wgslsmith_mod_u32(global1.x, u_input.a), var_0.c, 15442u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, global1.x), min(~global1.zy, ~global1.xz)), ~_wgslsmith_sub_vec2_u32(global1.zz, vec2<u32>(27177u, 1u)) << (~(~global1.wx) % vec2<u32>(32u))), min(var_0.b.a, (_wgslsmith_mod_i32(var_0.b.a, var_0.b.a) << (~19404u % 32u)) | ~42883i), 0u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, var_0.c), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, var_2), global1.yxz << (global1.zwy % vec3<u32>(32u)))), select(_wgslsmith_dot_vec3_u32(max(global1.yxx, vec3<u32>(4294967295u, var_0.c, 0u)), ~vec3<u32>(var_2, 1u, var_0.b.c)), _wgslsmith_dot_vec3_u32(global1.yww, ~vec3<u32>(1u, 11282u, var_2)), var_1.x)));
}

