struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(414f, 691f, 675f);

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, true, false, true, false, false, true, false, false);

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(22218i, 1379i, 3909i, 1i), vec4<i32>(0i, -5861i, -1i, 29987i), vec4<i32>(-1i, -44338i, 28972i, 3843i), vec4<i32>(29262i, -9391i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 72701i, -1246i, -36386i), vec4<i32>(1i, 0i, -3256i, -22547i), vec4<i32>(-3239i, 2147483647i, 21919i, 1i), vec4<i32>(23335i, 19012i, -1i, 4199i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<f32> {
    let var_0 = !arg_2.b.x;
    return arg_1.a;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.x)))) - _wgslsmith_f_op_f32(-global0.x)) - arg_0), !select(vec2<bool>(false, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), select(vec2<bool>(global1[_wgslsmith_index_u32(3969u, 10u)], false), select(arg_1.ww, vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)]), global1[_wgslsmith_index_u32(4294967295u, 10u)]), true), true), 276f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-global0.x), select(vec2<bool>(false, true), vec2<bool>(var_0.b.x, false), var_0.b.x), arg_0), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 783f, 606f) * vec3<f32>(1556f, 1842f, var_0.a))), var_0, ~(vec3<i32>(-61277i, 20288i, u_input.a) | vec3<i32>(u_input.a, -30978i, u_input.a))))));
    let var_2 = 958f;
    let var_3 = 0u;
    var var_4 = vec4<i32>(1i, firstLeadingBit(u_input.a), _wgslsmith_mult_i32(-(~0i), u_input.a), firstTrailingBit(~_wgslsmith_div_i32(2147483647i, i32(-1i) * -2147483647i)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, max(1u, var_3), 0u, 0u), max(~vec4<u32>(var_3, 44357u, var_3, var_3) & _wgslsmith_div_vec4_u32(vec4<u32>(var_3, var_3, var_3, var_3), ~vec4<u32>(43698u, 97128u, var_3, 4294967295u)), vec4<u32>(var_3, 0u, ~11354u, 4294967295u)));
}

fn func_1() -> i32 {
    global1 = array<bool, 10>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(92895u, 1u), 8u)], -(vec4<i32>(39450i, -2147483647i, 2147483647i, u_input.a) >> (vec4<u32>(23415u, 1u, 1u, 0u) % vec4<u32>(32u)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(37359u), firstLeadingBit(_wgslsmith_add_u32(27381u, 0u))), 8u)]), 0i << (_wgslsmith_add_u32(~(~42076u), abs(func_2(global0.x, vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(69102u, 10u)], global1[_wgslsmith_index_u32(26552u, 10u)])))) % 32u));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-723f + -1369f), -162f, _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-global0.x), vec2<bool>(false, global1[_wgslsmith_index_u32(32015u, 10u)]), 1f), Struct_2(vec3<f32>(global0.x, -337f, global0.x)), Struct_1(_wgslsmith_f_op_f32(global0.x * global0.x), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(55418u, 10u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(global1[_wgslsmith_index_u32(36393u, 10u)], global1[_wgslsmith_index_u32(23773u, 10u)])), -646f), vec3<i32>(_wgslsmith_mult_i32(35412i, u_input.a), _wgslsmith_add_i32(u_input.a, -2147483647i), u_input.a))).x), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, max(74548u, 0u)), 4294967295u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(18716u, 53141u, 3302u, 4294967295u), vec4<u32>(67714u, 1u, 4294967295u, 31651u), vec4<bool>(global1[_wgslsmith_index_u32(21404u, 10u)], false, global1[_wgslsmith_index_u32(4294967295u, 10u)], true)), vec4<u32>(22393u, 0u, 4294967295u, 3674u))), _wgslsmith_add_vec3_u32(vec3<u32>(24229u, ~1u, _wgslsmith_mult_u32(9981u, 0u)), abs(vec3<u32>(1u, 1u, 1u))), ~vec3<u32>(1u, 1u, 1u) << (~firstTrailingBit(vec3<u32>(1u, 1u, 117930u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + -448f), _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-global0.x), -1000f)))), global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 10u)]);
    var var_2 = func_2(var_1.d.x, !(!select(!vec4<bool>(var_1.e, var_1.e, var_1.e, false), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], true, var_1.e, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(var_1.e, true, false, global1[_wgslsmith_index_u32(var_1.c.x, 10u)]), false), !vec4<bool>(var_1.e, global1[_wgslsmith_index_u32(var_1.c.x, 10u)], var_1.e, var_1.e))));
    global0 = var_1.a.a;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 8>();
    var var_0 = -(~14896i | _wgslsmith_mult_i32(select(u_input.a, firstLeadingBit(11154i), false), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, 21344i, u_input.a)))));
    var_0 = func_1();
    var var_1 = vec3<i32>(26827i, ~(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -61116i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(u_input.a, 33730i, u_input.a) | vec3<i32>(u_input.a, -29761i, u_input.a))), u_input.a & u_input.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -2016f), _wgslsmith_div_f32(-2113f, _wgslsmith_f_op_f32(floor(661f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.x, vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 10u)]), global0.x), Struct_2(vec3<f32>(global0.x, global0.x, 812f)), Struct_1(2447f, vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], false), global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(25057i, -10707i, -2147483647i), vec3<i32>(-21504i, u_input.a, -10907i)))).x, -988f))), select(vec2<bool>(all(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(26207u, 10u)])), true), select(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], true), vec2<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 10u)])), any(vec2<bool>(true, false))), vec2<bool>(true, -873f <= global0.x)), vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(21909u, 0u), 10u)], all(vec3<bool>(global1[_wgslsmith_index_u32(50703u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(25310u, 10u)])))), 219f);
    var var_3 = var_2;
    var var_4 = abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 1u, 72197u, 87560u), vec4<u32>(abs(1u), _wgslsmith_clamp_u32(25029u, 22510u, 1u), reverseBits(42697u), 1u)), vec4<u32>(0u, 1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1715u, 69176u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(var_3.b.x, var_3.b.x, global1[_wgslsmith_index_u32(52721u, 10u)])), vec3<u32>(1u, 1u, 1u)), 0u)), 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.zwz), vec4<u32>(1u, 82748u, ~0u, 1u), u_input.a & u_input.a, ~(min(firstTrailingBit(vec2<u32>(1u, 1u)), select(vec2<u32>(82498u, 28698u), vec2<u32>(1u, 4294967295u), var_3.b.x)) & vec2<u32>(1u, 1u)), 1173f);
}

