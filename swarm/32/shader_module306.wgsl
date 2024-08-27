struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 4>;

var<private> global2: array<bool, 26> = array<bool, 26>(true, true, true, true, true, true, true, true, true, true, false, false, true, false, true, false, true, true, false, false, false, true, true, true, true, false);

var<private> global3: array<i32, 11>;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> bool {
    var var_0 = Struct_1(u_input.b, 4294967295u ^ u_input.a.x, 0i);
    global3 = array<i32, 11>();
    var var_1 = !select(vec2<bool>(true, max(0u, var_0.b) >= 2110u), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(true, true), false), vec2<bool>(true, true));
    let var_2 = ~u_input.a.x;
    let var_3 = -firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(24647u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], var_0.c), vec3<i32>(10291i, 46263i, -17157i)) << (u_input.a.x % 32u)));
    return var_0.b > var_2;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(637f, -1245f, -483f)) * vec3<f32>(-539f, _wgslsmith_div_f32(-525f, 1031f), -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1422f)), 1095f, _wgslsmith_f_op_f32(1271f - 1862f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1041f, 1545f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    global4 = array<Struct_1, 8>();
    let var_1 = u_input.a.xz;
    var var_2 = Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13637u, 0u, var_1.x, global0.b), vec4<u32>(23570u, 4294967295u, 0u, u_input.a.x)), _wgslsmith_mult_u32(0u, global0.b)), 11u)], global0.c, _wgslsmith_add_i32(1i, global0.a.x), global0.a.x) ^ ~vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, 2147483647i), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global0.b, 11u)], 29208i), -21525i, _wgslsmith_sub_i32(global0.c, 1i)), global0.b, ~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_1, u_input.a.yz)), 11u)] << ((var_1.x ^ 1u) % 32u));
    let var_3 = vec4<i32>(global0.a.x, global3[_wgslsmith_index_u32(4294967295u, 11u)], -(var_2.a.x >> (u_input.a.x % 32u)), 36200i);
    return true;
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global2 = array<bool, 26>();
    global4 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_add_vec4_i32(-arg_0.a, u_input.b);
    var var_1 = select(!vec3<bool>(global2[_wgslsmith_index_u32(countOneBits(~16863u), 26u)], any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(global0.b, 26u)], true, true)), ~30016u >= _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zx)), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(6139u, 26u)] | true, arg_0.b > global0.b)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0.b, u_input.a.x, 64793u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.b, 22106u, arg_0.b), vec4<u32>(arg_0.b, 4294967295u, 0u, arg_0.b))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.a.x), vec4<u32>(global0.b, global0.b, global0.b, u_input.a.x)), countOneBits(vec4<u32>(4294967295u, global0.b, global0.b, u_input.a.x)))) & max(_wgslsmith_sub_u32(global0.b, ~global0.b), ~global0.b), 26u)]);
    var var_2 = ~_wgslsmith_mult_i32(-21189i, abs(1i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -645f, 1486f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(330f, -1000f, 1036f)), global0.b > u_input.a.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global2 = array<bool, 26>();
    let var_0 = select(select(!vec3<bool>(true, global2[_wgslsmith_index_u32(global0.b, 26u)], any(vec4<bool>(global2[_wgslsmith_index_u32(22819u, 26u)], false, global2[_wgslsmith_index_u32(12547u, 26u)], false))), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], false, false)), vec3<bool>(false, any(vec4<bool>(true, global2[_wgslsmith_index_u32(5033u, 26u)], false, true)), -3394i != global0.c), (0i >= global0.c) & (arg_0.x < arg_0.x)), true), select(!select(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, global2[_wgslsmith_index_u32(0u, 26u)]), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 26u)])), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.b, 26u)], all(!vec2<bool>(global2[_wgslsmith_index_u32(arg_1.b, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 24959u), 26u)]), !any(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, true))), !(!select(vec3<bool>(false, global2[_wgslsmith_index_u32(39557u, 26u)], global2[_wgslsmith_index_u32(global0.b, 26u)]), !vec3<bool>(global2[_wgslsmith_index_u32(global0.b, 26u)], global2[_wgslsmith_index_u32(global0.b, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), func_2())));
    global4 = array<Struct_1, 8>();
    var var_1 = Struct_1(-arg_1.a, 1u, -12931i);
    var var_2 = Struct_1(arg_1.a, var_1.b ^ arg_1.b, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.c, -39826i, global3[_wgslsmith_index_u32(3953u, 11u)]), u_input.b)) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.b, u_input.a.x, 5882u), vec4<u32>(var_1.b, 4294967295u, 0u, 1u)), 59219u) % 32u));
    return all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 26u)] | var_0.x, !(_wgslsmith_dot_vec3_i32(global0.a.zwz, global1[_wgslsmith_index_u32(0u, 4u)]) >= ~11263i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(!select(true, false, false), true, true, false), vec4<bool>(func_1(), false, true, !all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, global2[_wgslsmith_index_u32(45779u, 26u)]))), !(true & func_2())), !select(select(!vec4<bool>(global2[_wgslsmith_index_u32(6380u, 26u)], global2[_wgslsmith_index_u32(16128u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(global0.b, 26u)], global2[_wgslsmith_index_u32(global0.b, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), !vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(11628u, 26u)])), vec4<bool>(!global2[_wgslsmith_index_u32(global0.b, 26u)], true, global2[_wgslsmith_index_u32(0u, 26u)] || global2[_wgslsmith_index_u32(global0.b, 26u)], true), vec4<bool>(func_1(), false, true, !global2[_wgslsmith_index_u32(57963u, 26u)])), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global4[_wgslsmith_index_u32(64743u, 8u)])) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1837f, 464f, -887f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2418f, -103f, 380f) + vec3<f32>(-749f, -817f, -310f)))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, global0.b, 4294967295u, 23250u)), firstLeadingBit(vec4<u32>(70082u, 29594u, 60657u, 4294967295u))), 8u)]));
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global0.b, u_input.a.x), ~countOneBits(~u_input.a.yx), any(vec3<bool>(global2[_wgslsmith_index_u32(~u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], true))), u_input.a.yy), 8u)];
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1779f - _wgslsmith_f_op_f32(f32(-1f) * -1520f)), 2136f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1599f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f))));
    let var_2 = 1069f;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(250f, 1191f, var_2), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2, var_2, var_2))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-709f, var_2, var_2) - vec3<f32>(596f, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1381f, var_2)))))), vec3<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35813u, 4294967295u, u_input.a.x) ^ vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b, 1u, u_input.a.x, u_input.a.x), vec4<u32>(global0.b, global0.b, u_input.a.x, u_input.a.x))) >= (firstTrailingBit(4294967295u) ^ global0.b), true)));
    var var_4 = var_3.x;
    let var_5 = max(_wgslsmith_div_i32(_wgslsmith_add_i32(-5482i, countOneBits(i32(-1i) * -61593i)), global0.a.x), 2147483647i);
    var_1 = _wgslsmith_f_op_f32(-var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(var_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -283f)))), var_3, ~(-_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(4718i, global0.a.x, -2147483647i), u_input.b.xzw), vec3<i32>(2147483647i, 2147483647i, 1i) & global0.a.zyz)));
}

