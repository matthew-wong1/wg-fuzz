struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: array<bool, 10>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: f32 = -967f;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_4) -> vec4<bool> {
    global1 = select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(2688u, 10u)], global0[_wgslsmith_index_u32(18305u, 10u)], global1.x))), vec3<bool>(all(!global1.zx) | select(false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 10u)], true), true, any(select(select(vec4<bool>(true, arg_3.a.b, global1.x, global1.x), vec4<bool>(global1.x, false, false, false), vec4<bool>(true, true, global1.x, true)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_3.a.c.d, 10u)], true, false), true), !global0[_wgslsmith_index_u32(38295u, 10u)]))), global1.x);
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_3.a.d, select(vec3<i32>(15037i, -4877i, -90000i) ^ vec3<i32>(1i, arg_1.x, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.a.e.b.x, arg_3.a.a.x, -26506i), vec3<i32>(u_input.b, arg_3.a.a.x, -38424i)), vec3<bool>(true, true, true)) ^ -vec3<i32>(arg_3.a.c.e.x, arg_0, 33951i)), _wgslsmith_sub_vec3_i32(abs(reverseBits(arg_3.a.c.b) & arg_2.yyx), arg_1.zyy));
    global1 = vec3<bool>(!((!arg_3.a.b & global1.x) | true), true, arg_3.a.b);
    var var_1 = Struct_4(arg_3.a);
    let var_2 = arg_3.a.c.a.x;
    return !(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(71663u, 10u)], global0[_wgslsmith_index_u32(32253u, 10u)], false, global1.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = ~(~_wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(arg_1.x, u_input.a.x))));
    global0 = array<bool, 10>();
    let var_1 = all(arg_0.xy);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(677f, 1000f, -1620f), vec3<f32>(-359f, 1000f, -1000f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(745f, 233f, 833f))), vec3<bool>(arg_0.x, arg_0.x, false))), vec3<f32>(_wgslsmith_f_op_f32(sign(-2073f)), -814f, -1167f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(211f, 1438f, -1679f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1177f, 1076f, 673f), vec3<f32>(-1355f, 1156f, -612f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1520f, -336f, -729f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1395f, -249f, -1000f)))))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return vec3<i32>(i32(-1i) * -2147483647i, -(_wgslsmith_clamp_i32(31675i, _wgslsmith_mod_i32(-45488i, u_input.b), -12887i) & -(~58938i)), -1i);
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32((_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 20670u, 29647u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 43064u, u_input.a.x)) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 50965u), vec4<u32>(1927u, u_input.a.x, u_input.a.x, u_input.a.x)))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 28628u), vec4<u32>(0u, 4294967295u, 4294967295u, 31864u) << (vec4<u32>(29295u, 82599u, 15044u, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, u_input.a.x, ~firstLeadingBit(1u >> (u_input.a.x % 32u)), u_input.a.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1378f, -540f) * vec3<f32>(733f, -151f, -687f)) + vec3<f32>(1869f, 472f, 546f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(120f, 1000f, -461f), vec3<f32>(921f, 248f, 454f), vec3<bool>(global1.x, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(var_0, 10u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1089f, 1331f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, _wgslsmith_div_f32(-963f, 642f), _wgslsmith_f_op_f32(f32(-1f) * -436f))), global1.x)), ~(vec3<i32>(55969i, 2436i, u_input.b) | ~vec3<i32>(u_input.b, -27218i, 0i)) ^ select(func_4(func_3(-17083i, vec4<i32>(u_input.b, 60691i, 74540i, u_input.b), vec4<i32>(25770i, u_input.b, 9518i, 18891i), Struct_4(Struct_3(vec2<i32>(u_input.b, u_input.b), false, Struct_1(vec3<f32>(-547f, -649f, -1000f), vec3<i32>(59666i, u_input.b, u_input.b), 235f, 86310u, vec2<i32>(32701i, 11756i)), vec3<i32>(u_input.b, 1i, u_input.b), Struct_1(vec3<f32>(212f, -1487f, 778f), vec3<i32>(-48484i, 109349i, 21727i), 3559f, u_input.a.x, vec2<i32>(u_input.b, 1i))))), ~u_input.a.zz), -abs(vec3<i32>(-33395i, 43528i, -1i)), any(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(44463u, 10u)]))), 1000f, 1u, firstTrailingBit(firstTrailingBit(-select(vec2<i32>(-9821i, u_input.b), vec2<i32>(-2147483647i, -44008i), false))));
    let var_2 = vec4<i32>(u_input.b, _wgslsmith_mult_i32(-(~u_input.b), u_input.b) << (u_input.a.x % 32u), 1i & _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.x, var_1.e.x, 19037i, var_1.e.x), vec4<i32>(u_input.b, -2147483647i, 0i, var_1.b.x)) << (var_1.d % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(var_1.e.x, -2147483647i, 2147483647i)), u_input.b)), -25147i);
    var var_3 = func_3(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(5948i, var_1.e.x), abs(var_1.e)), min(var_1.b.x, -1i)), vec4<i32>(~33030i, 1i, -u_input.b, min(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.e.x, -28485i), _wgslsmith_sub_i32(var_1.e.x, var_1.b.x)), 29375i)), var_2, Struct_4(Struct_3(_wgslsmith_mult_vec2_i32(-var_1.e, -vec2<i32>(var_2.x, u_input.b)), true, Struct_1(_wgslsmith_f_op_vec3_f32(min(var_1.a, var_1.a)), -vec3<i32>(-1i, u_input.b, u_input.b), _wgslsmith_f_op_f32(1360f * 1409f), u_input.a.x & 84361u, -vec2<i32>(u_input.b, var_1.e.x)), abs(min(vec3<i32>(1i, -12657i, 0i), vec3<i32>(var_1.e.x, u_input.b, var_1.e.x))), Struct_1(_wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(1000f, -1331f, 1125f), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(10182u, 10u)], global1.x))), var_1.b, 2729f, var_0, max(vec2<i32>(-1i, 66249i), var_2.xy)))));
    global0 = array<bool, 10>();
    return !vec3<bool>(var_3.x, (var_2.x == var_2.x) && global0[_wgslsmith_index_u32(34064u, 10u)], global1.x);
}

fn func_1() -> i32 {
    global1 = !select(vec3<bool>(global1.x, 54080u != u_input.a.x, true), select(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 10u)], all(vec2<bool>(global0[_wgslsmith_index_u32(46386u, 10u)], true)), !global0[_wgslsmith_index_u32(69824u, 10u)]), func_2()), any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global1.x, false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global1.x), vec4<bool>(true, global1.x, global1.x, global0[_wgslsmith_index_u32(0u, 10u)])), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)], true), vec4<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(12546u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))));
    let var_0 = Struct_4(Struct_3(reverseBits(vec2<i32>(_wgslsmith_sub_i32(u_input.b, 0i), -2147483647i)), !(func_3(-2147483647i, vec4<i32>(u_input.b, 0i, 48162i, u_input.b), vec4<i32>(4877i, u_input.b, -1i, u_input.b), Struct_4(Struct_3(vec2<i32>(u_input.b, 56801i), true, Struct_1(vec3<f32>(2547f, -635f, 1284f), vec3<i32>(0i, u_input.b, u_input.b), -167f, u_input.a.x, vec2<i32>(u_input.b, -71410i)), vec3<i32>(-57710i, 2147483647i, u_input.b), Struct_1(vec3<f32>(-189f, -970f, -288f), vec3<i32>(u_input.b, u_input.b, 0i), 1000f, u_input.a.x, vec2<i32>(0i, -2147483647i))))).x & true), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-223f, -807f, -241f), vec3<f32>(-1000f, 1000f, -523f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 343f, -286f)))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(u_input.b, -45245i, -41214i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1407f, -191f) + 1000f), 4294967295u, -vec2<i32>(u_input.b, 1i) >> (abs(vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))), ~vec3<i32>(u_input.b, 2147483647i, ~1i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, 504f, -345f))), vec3<i32>(u_input.b ^ 0i, -7116i, 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f), _wgslsmith_f_op_f32(sign(477f))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.xx)), firstTrailingBit(vec2<i32>(-1i, 30198i)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(868f, _wgslsmith_f_op_f32(-var_0.a.c.a.x))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(abs(738f)))));
    let var_1 = vec4<u32>(countOneBits(1u), 4294967295u, 15616u, var_0.a.e.d);
    var var_2 = select(!select(vec3<bool>(var_0.a.b, global0[_wgslsmith_index_u32(var_0.a.e.d, 10u)] | true, all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(5029u, 10u)]))), func_2(), vec3<bool>(987f > var_0.a.c.a.x, var_0.a.b, false)), func_2(), func_3(_wgslsmith_clamp_i32(max(u_input.b, ~var_0.a.d.x), -47891i, _wgslsmith_dot_vec3_i32(var_0.a.d, abs(var_0.a.e.b))), vec4<i32>(_wgslsmith_sub_i32(8333i, i32(-1i) * -1i), 39745i, ~(u_input.b & var_0.a.c.b.x), 21120i), -(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.d.x, u_input.b, u_input.b, -27577i), vec4<i32>(u_input.b, u_input.b, 0i, var_0.a.a.x)) << (var_1 % vec4<u32>(32u))), var_0).zxz);
    return _wgslsmith_clamp_i32(var_0.a.d.x, firstLeadingBit(-(~var_0.a.c.e.x)), 12585i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(max(_wgslsmith_clamp_i32(~u_input.b, select(1i, u_input.b, global0[_wgslsmith_index_u32(38807u, 10u)]), -1898i), -7548i ^ func_1()) ^ 32100i, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(118f, 1000f, -1043f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1932f, 780f, 1273f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, 804f, 2265f)) - vec3<f32>(1f, 1f, 1f)))), vec3<i32>(u_input.b, reverseBits(-1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f * -500f) * _wgslsmith_f_op_f32(trunc(-962f))) - -477f), max(~abs(u_input.a.x), ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), reverseBits(vec2<i32>(_wgslsmith_add_i32(u_input.b, -1i), u_input.b))));
    let var_1 = Struct_3(~vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-106185i, u_input.b), countOneBits(var_0.b.b.zz))), false, var_0.b, var_0.b.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1089f), _wgslsmith_f_op_f32(sign(var_0.b.a.x)), _wgslsmith_f_op_f32(sign(var_0.b.c))), vec3<i32>(-1i) * -firstTrailingBit(var_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c * -299f) + _wgslsmith_f_op_f32(sign(var_0.b.a.x)))), firstLeadingBit(1u), var_0.b.b.zx));
    global1 = !vec3<bool>(var_1.b, false, var_1.b && (true && !global1.x));
    global0 = array<bool, 10>();
    var var_2 = select(vec2<bool>(var_1.b, true), !vec2<bool>(any(select(vec4<bool>(true, global1.x, false, false), vec4<bool>(true, false, global1.x, global1.x), var_1.b)), global1.x), select(func_3(-var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(15216i, 1i, -1i, u_input.b), vec4<i32>(-9577i, u_input.b, u_input.b, u_input.b)) | ~vec4<i32>(1i, 2147483647i, var_0.b.e.x, u_input.b), vec4<i32>(firstTrailingBit(-2147483647i), -19155i, -var_1.d.x, -2147483647i), Struct_4(var_1)).zx, vec2<bool>(!global1.x, 1u < u_input.a.x), global0[_wgslsmith_index_u32(34634u, 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~(var_1.c.d << (4294967295u % 32u))), 34908u));
}

