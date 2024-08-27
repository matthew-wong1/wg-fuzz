struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 26267u, 4294967295u, 1u, 1u, 4294967295u, 74321u, 4294967295u, 26875u, 4294967295u, 73717u, 97091u, 1u, 1u, 0u, 0u, 8545u);

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-62799i, 1i, i32(-2147483648)), vec3<i32>(-21034i, -45384i, -12365i), vec3<i32>(0i, 1i, -32978i), vec3<i32>(9161i, i32(-2147483648), 28357i), vec3<i32>(-40442i, 1i, -57450i), vec3<i32>(2147483647i, 19998i, 2147483647i), vec3<i32>(2147483647i, 6630i, -12000i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: f32) -> i32 {
    global0 = array<u32, 17>();
    let var_0 = Struct_4(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<u32>(global0[_wgslsmith_index_u32(77586u, 17u)], global0[_wgslsmith_index_u32(25000u, 17u)], global0[_wgslsmith_index_u32(21284u, 17u)], 53738u)), min(vec4<u32>(global0[_wgslsmith_index_u32(36436u, 17u)], 1u, 0u, 21491u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, 4294967295u))) != ~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(73886u, 17u)], 4294967295u)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1259f, arg_1), vec2<f32>(-515f, 381f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -113f)))), Struct_1(vec2<u32>(_wgslsmith_mult_u32(97470u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52095u, 17u)], 17u)]), 75886u), vec4<i32>(1i, 1i, 1i, 1i), vec3<bool>(true, true, true)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), vec4<bool>(all(vec3<bool>(true, false, false)), true, true, any(vec4<bool>(false, false, false, true)))), ~(~select(vec4<u32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(arg_0.x, 17u)], arg_0.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 1u, u_input.a.x, 4294967295u), vec4<bool>(true, false, false, true)))), Struct_1(select(vec2<u32>(u_input.a.x, abs(global0[_wgslsmith_index_u32(arg_0.x, 17u)])), reverseBits(reverseBits(vec2<u32>(19425u, 4294967295u))), all(vec4<bool>(true, true, true, true))), vec4<i32>(1i, 1i, min(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2945i, 15927i), vec2<i32>(0i, -1i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, -776i), reverseBits(51350i))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(true, false))), vec3<bool>(true, true, false), vec3<bool>(true, 0u == global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true))));
    global1 = array<vec3<i32>, 7>();
    global1 = array<vec3<i32>, 7>();
    global1 = array<vec3<i32>, 7>();
    return ~(~(-var_0.b.b.b.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    global1 = array<vec3<i32>, 7>();
    var var_0 = abs(-vec3<i32>(max(1i, 15243i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -45754i, 1i, 39503i), vec4<i32>(0i, 0i, 26212i, -1i)) >> (1u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.d);
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(func_3(arg_1.c.zxz, -764f, arg_1.d, -656f) | select(-31771i, 2147483647i, true), -10999i), -var_0.x, -var_0.x), ~_wgslsmith_mod_vec3_i32(~abs(global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec3<i32>(var_0.x, ~var_0.x, ~2147483647i)));
    return all(arg_0.wxy);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_1(u_input.a.zx, firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-28299i), 34590i, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(arg_1, 7u)], vec3<i32>(69148i, -2147483647i, 38505i)), -1i), -vec4<i32>(1i, 1i, 1i, 1i))), select(!vec3<bool>(false, select(arg_0.x, false, arg_0.x), !arg_0.x), !vec3<bool>(any(vec4<bool>(arg_0.x, arg_0.x, true, true)), arg_0.x, arg_0.x), !vec3<bool>(true, any(vec3<bool>(arg_0.x, true, false)), false)));
    global0 = array<u32, 17>();
    var var_1 = Struct_2(_wgslsmith_add_u32(4481u, u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, -1795f, 698f, -379f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-771f, -293f, 217f, 1146f), vec4<f32>(213f, -857f, -171f, -493f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(272f, -1000f, 311f, 1160f), vec4<f32>(-1616f, 1608f, -346f, -623f))))), vec4<f32>(1599f, _wgslsmith_f_op_f32(ceil(2599f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2478f + -1000f), -1693f)))), _wgslsmith_div_vec4_u32(vec4<u32>(abs(max(arg_1, arg_1)), 4294967295u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 17u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(73613u, 17u)], var_0.a.x), 17u)]), ~1u), reverseBits(~abs(vec4<u32>(global0[_wgslsmith_index_u32(1u, 17u)], 4294967295u, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1074f, -1622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1590f))))));
    global1 = array<vec3<i32>, 7>();
    let var_2 = Struct_4(all(select(vec3<bool>(true, var_0.c.x, true), vec3<bool>(!var_0.c.x, all(arg_0), false), var_0.c)), Struct_3(_wgslsmith_f_op_vec2_f32(var_1.b.yz - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1034f, var_1.d), var_1.b.zy, vec2<bool>(true, var_0.c.x))), vec2<f32>(-579f, var_1.b.x), !var_0.c.yz))), Struct_1(reverseBits(vec2<u32>(4294967295u, var_0.a.x)), min(var_0.b, _wgslsmith_mod_vec4_i32(var_0.b, var_0.b)), select(!var_0.c, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true)), vec4<bool>(true, arg_0.x, false, !(!arg_0.x)), ~var_1.c), var_0);
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec3<f32> {
    global1 = array<vec3<i32>, 7>();
    var var_0 = Struct_4(any(select(!vec4<bool>(true, arg_0, false, true), select(!vec4<bool>(false, arg_0, false, true), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), true), !(!vec4<bool>(false, false, arg_0, true)))), func_4(!vec2<bool>(arg_0, func_2(vec4<bool>(false, true, arg_0, false), Struct_2(40797u, vec4<f32>(-1956f, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(u_input.a.x, 8796u, 63725u, 0u), 2526f))), global0[_wgslsmith_index_u32(u_input.a.x ^ (global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 17u)] ^ ~0u), 17u)]), Struct_1(~(~u_input.a.zx ^ u_input.a.zy), _wgslsmith_div_vec4_i32(~firstTrailingBit(vec4<i32>(0i, 26000i, -22408i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-14593i, -52820i, 0i, -1i) << (vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 17u)], 19226u) % vec4<u32>(32u)), -vec4<i32>(1i, 13100i, 1i, 30536i))), func_4(vec2<bool>(func_4(vec2<bool>(false, arg_0), 1067u).b.c.x, !arg_0), _wgslsmith_add_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(89096u, 17u)]), ~global0[_wgslsmith_index_u32(u_input.a.x, 17u)])).b.c));
    global0 = array<u32, 17>();
    var_0 = Struct_4(!(!(42153u <= u_input.a.x)), var_0.b, func_4(vec2<bool>(all(vec2<bool>(arg_0, false)), _wgslsmith_f_op_f32(var_0.b.a.x + 665f) < -398f), ~(~8109u)).b);
    global0 = array<u32, 17>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(false, vec3<f32>(-2220f, 976f, 1000f)));
    global1 = array<vec3<i32>, 7>();
    global1 = array<vec3<i32>, 7>();
    global1 = array<vec3<i32>, 7>();
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.yz, ~firstTrailingBit(vec2<u32>(u_input.a.x, 22513u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 463f, -809f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(1283f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(874f + var_0.x), _wgslsmith_f_op_f32(-var_0.x), -743f <= var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * var_0.x))), ~(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(11930u, 17u)], u_input.a.x), firstTrailingBit(vec4<u32>(4294967295u, 88770u, u_input.a.x, global0[_wgslsmith_index_u32(135591u, 17u)])), vec4<u32>(4599u, 64454u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 17u)])) ^ abs(func_4(vec2<bool>(true, false), 4294967295u).d)), _wgslsmith_f_op_f32(abs(var_0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -150f, -101f)));
    global0 = array<u32, 17>();
    let var_3 = var_1.a;
    global1 = array<vec3<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(abs(var_2.x))), func_4(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), 14786u).b.b.zxy);
}

