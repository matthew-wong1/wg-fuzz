struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<f32>(-209f, -1034f)), Struct_1(vec2<f32>(986f, -769f)), Struct_1(vec2<f32>(-969f, -324f)), Struct_1(vec2<f32>(-227f, 1114f)), Struct_1(vec2<f32>(647f, -475f)), Struct_1(vec2<f32>(-148f, 520f)), Struct_1(vec2<f32>(-1234f, 354f)), Struct_1(vec2<f32>(-883f, 557f)), Struct_1(vec2<f32>(1020f, 1017f)), Struct_1(vec2<f32>(221f, 1615f)), Struct_1(vec2<f32>(-617f, 432f)), Struct_1(vec2<f32>(1795f, 215f)), Struct_1(vec2<f32>(697f, 1217f)), Struct_1(vec2<f32>(-377f, 380f)), Struct_1(vec2<f32>(629f, -1401f)), Struct_1(vec2<f32>(679f, -1172f)), Struct_1(vec2<f32>(-722f, 245f)), Struct_1(vec2<f32>(106f, -1000f)), Struct_1(vec2<f32>(-791f, 832f)), Struct_1(vec2<f32>(143f, -128f)), Struct_1(vec2<f32>(864f, -967f)), Struct_1(vec2<f32>(204f, 175f)), Struct_1(vec2<f32>(-1000f, 1000f)), Struct_1(vec2<f32>(-563f, 1622f)), Struct_1(vec2<f32>(1000f, 257f)), Struct_1(vec2<f32>(308f, -1495f)));

var<private> global1: array<i32, 23> = array<i32, 23>(4838i, 36958i, 0i, -2379i, -1i, 1i, 2147483647i, i32(-2147483648), 1i, -1i, 1255i, -912i, 27464i, 0i, 0i, 0i, -6007i, 16389i, -24589i, -38609i, -1i, 0i, 2147483647i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(574f, arg_0.a.x) + arg_0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 140f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1301f)), -1016f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(~vec4<u32>(0u, 55998u, 23328u, 69775u))), firstLeadingBit(reverseBits(vec4<u32>(0u, 0u, ~37775u, 1u)))), 26u)];
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -872f)))) * _wgslsmith_f_op_f32(f32(-1f) * -872f));
    return _wgslsmith_clamp_vec4_i32((vec4<i32>(countOneBits(-5851i), global1[_wgslsmith_index_u32(25969u, 23u)] << (51543u % 32u), arg_3.x, -2147483647i) | max(_wgslsmith_mod_vec4_i32(vec4<i32>(10283i, arg_3.x, -36344i, global1[_wgslsmith_index_u32(10167u, 23u)]), vec4<i32>(24900i, 15641i, 1i, arg_3.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 23u)], 1i, -2147483647i, global1[_wgslsmith_index_u32(26265u, 23u)]), vec4<i32>(-15039i, u_input.a, 392i, 2147483647i)))) >> (~(~vec4<u32>(0u, 0u, 1u, 1u)) % vec4<u32>(32u)), select(vec4<i32>(max(select(-1i, global1[_wgslsmith_index_u32(0u, 23u)], false), -1i), max(arg_3.x, firstLeadingBit(27467i)), global1[_wgslsmith_index_u32(countOneBits(reverseBits(21590u)), 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-11532i, global1[_wgslsmith_index_u32(48793u, 23u)], global1[_wgslsmith_index_u32(34771u, 23u)], 47823i)), vec4<i32>(arg_3.x, u_input.a, arg_3.x, u_input.a)), ~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], -1i, arg_3.x, global1[_wgslsmith_index_u32(0u, 23u)])), vec4<bool>(all(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), select(true, arg_2.x, arg_1), !any(vec4<bool>(arg_1, false, false, arg_1)), all(vec2<bool>(arg_2.x, arg_2.x)))), _wgslsmith_div_vec4_i32(abs(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, global1[_wgslsmith_index_u32(30995u, 23u)], arg_3.x, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(18350u, 23u)], global1[_wgslsmith_index_u32(98228u, 23u)], -1i, global1[_wgslsmith_index_u32(89236u, 23u)])))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 28042i, global1[_wgslsmith_index_u32(9966u, 23u)], 1i), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(39727u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], -1i), vec4<i32>(arg_3.x, -34733i, 1i, global1[_wgslsmith_index_u32(32409u, 23u)])) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(92657u, _wgslsmith_mult_u32(1u, 0u) << (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u), firstLeadingBit(40868u & arg_2)), firstTrailingBit(5535u), 4294967295u, ~abs(arg_2 | 4294967295u)), ~(~vec4<u32>(abs(4294967295u), 21728u, ~4294967295u, ~15708u)));
    var var_1 = max(-reverseBits(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(51474u, 23u)], 17129i, -12145i)) & select(~(~vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), ~func_3(global0[_wgslsmith_index_u32(var_0.x, 26u)], false, vec2<bool>(false, false), vec3<i32>(global1[_wgslsmith_index_u32(1u, 23u)], -84709i, 22037i)), vec4<bool>(1104f >= arg_1.x, arg_0.x | false, arg_0.x, true)), abs(~(~(-vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 23u)], u_input.a, 1i)))));
    let var_2 = -1000f;
    global0 = array<Struct_1, 26>();
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(var_2 + arg_1.x)), var_2), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(var_2, -1218f)), _wgslsmith_f_op_f32(var_2 - 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -338f) * arg_1.zz)), all(!arg_0.yy)))));
    return arg_2;
}

fn func_1() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 80118u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 26050u), vec2<u32>(28031u, 4294967295u)), func_2(vec3<bool>(false, true, true), vec4<f32>(720f, 912f, 1306f, -422f), 4294967295u) >> (1u % 32u)), ~vec4<u32>(1u, 1u, 1u, 1u)), 26u)];
    global1 = array<i32, 23>();
    let var_1 = Struct_1(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), var_0.a.x)));
    var var_2 = (vec4<u32>(1u, 1u, 1u, 1u) | (firstTrailingBit(vec4<u32>(4294967295u, 1u, 48018u, 1u)) | vec4<u32>(8784u, _wgslsmith_dot_vec4_u32(vec4<u32>(57360u, 1u, 19428u, 1u), vec4<u32>(23785u, 4294967295u, 57838u, 0u)), _wgslsmith_sub_u32(4294967295u, 0u), min(41006u, 52765u)))) & reverseBits(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = global0[_wgslsmith_index_u32(var_2.x, 26u)];
    return !(_wgslsmith_dot_vec2_u32(abs(var_2.zw), _wgslsmith_div_vec2_u32(firstTrailingBit(var_2.wz), ~var_2.xx)) > 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(!(u_input.a != u_input.a), func_1(), false), all(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, false)), any(vec3<bool>(false, true, false))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), true), !any(vec3<bool>(true, false, true)))), any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)) || true);
    global1 = array<i32, 23>();
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_div_i32(-1i, max(global1[_wgslsmith_index_u32(min(countOneBits(~1u), ~1u), 23u)], i32(-1i) * -9325i));
    var_1 = firstTrailingBit(reverseBits(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u << (_wgslsmith_div_u32(0u, 4294967295u) % 32u), 23u)], func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(71142u, 0u), vec2<u32>(4294967295u, 4294967295u)), 26u)], true, vec2<bool>(var_0.x, false), -vec3<i32>(-2147483647i, 1i, u_input.a)).x)));
    var var_2 = vec3<bool>(true, select(true, !select(true, !var_0.x, var_0.x), true), all(!(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true)))));
    var var_3 = ~abs(~(~(~80676u)));
    var_1 = -(u_input.a << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1128f, _wgslsmith_f_op_f32(-578f - 265f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1444f, 639f, 746f, -668f)), vec4<f32>(-943f, 1741f, -907f, -430f)), var_2.x))), ~vec3<u32>(0u, select(~52366u, ~27729u, true), abs(4294967295u)), u_input.a);
}

