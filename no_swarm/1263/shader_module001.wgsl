struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, false, false, true, false, false, true, false, true, true, false);

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, -1i), vec2<f32>(1415f, -820f), true, 337f);

var<private> global2: Struct_2 = Struct_2(false, vec2<bool>(true, true), true, -1381f, vec3<u32>(0u, 0u, 20484u));

var<private> global3: array<f32, 24>;

var<private> global4: array<vec2<f32>, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_4(vec3<u32>(abs(max(global2.e.x | 60238u, ~arg_1.x)), global2.e.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~global2.e.x, global2.e.x), _wgslsmith_sub_u32(4294967295u, 107899u))), Struct_3(!(!select(global2.b, global2.b, false)), ~_wgslsmith_mod_i32(8433i, 1i), Struct_1(u_input.b.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-407f, 1331f) + global4[_wgslsmith_index_u32(0u, 19u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global2.e, vec3<u32>(0u, arg_1.x, 18631u) | arg_1), 12u)], _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 0u), 24u)]))), vec3<f32>(_wgslsmith_div_f32(431f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(global2.e.x, 24u)]))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.e.x & 54114u, 24u)], _wgslsmith_div_f32(global2.d, global2.d)), 1138f), Struct_1(vec2<i32>(global1.a.x, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.b, vec2<f32>(-2147f, global3[_wgslsmith_index_u32(92099u, 24u)])))), !(global3[_wgslsmith_index_u32(global2.e.x, 24u)] <= 1093f), 742f)), Struct_3(!(!select(vec2<bool>(true, global1.c), global2.b, false)), -9894i | arg_0, Struct_1(global1.a, vec2<f32>(-390f, _wgslsmith_f_op_f32(ceil(115f))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(19688u, arg_1.x), 12u)], global3[_wgslsmith_index_u32(reverseBits(~15453u), 24u)]), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 1000f, -354f))))))), Struct_1(abs(vec2<i32>(global1.a.x, global1.a.x)), _wgslsmith_div_vec2_f32(global1.b, global4[_wgslsmith_index_u32(~global2.e.x, 19u)]), global0[_wgslsmith_index_u32(countOneBits(arg_1.x), 12u)], _wgslsmith_f_op_f32(-global2.d))), (global2.e.x & arg_1.x) ^ 7186u);
    let var_1 = arg_1.yy;
    let var_2 = ~countOneBits(firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(arg_1.x, 0u), _wgslsmith_clamp_u32(arg_1.x, 4294967295u, var_0.d), arg_1.x, _wgslsmith_sub_u32(39984u, arg_1.x))));
    var var_3 = firstLeadingBit(0i) > _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(0i), -2147483647i, select(arg_0, 11078i, global1.c), 30809i) & -vec4<i32>(1i, arg_0, 2147483647i, arg_0), -(~u_input.b));
    let var_4 = global2.d;
    return global1.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    global4 = array<vec2<f32>, 19>();
    let var_0 = i32(-1i) * -abs(22433i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.x)), global1.b.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(5948u, 24u)])))))), global3[_wgslsmith_index_u32(~global2.e.x, 24u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.e.x, 24u)]));
    global1 = Struct_1(func_3(var_0, reverseBits(global2.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(global2.d)), global1.b.x)))), global2.b.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(global2.e.x, global2.e.x), global2.e.x, !global2.b.x), 24u)]));
    global4 = array<vec2<f32>, 19>();
    return ~global2.e.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(14581i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-19758i, arg_1), global1.a), vec2<i32>(1i, 1i)) & ((20292i & global1.a.x) | 1i)), -39771i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(143f, _wgslsmith_f_op_f32(-660f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(global2.e.x, 24u)]))))));
    var var_2 = _wgslsmith_mult_vec4_i32(~(~vec4<i32>(-2147483647i, i32(-1i) * -7038i, -64358i, ~global1.a.x)), -u_input.b);
    let var_3 = global2.e.x;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(-394f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(global2.e.x, 24u)])))), 1372f < var_1)), 404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(floor(-1572f))) - _wgslsmith_f_op_f32(max(-342f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 24u)]))))), global3[_wgslsmith_index_u32(arg_0.x, 24u)]);
    return Struct_1(vec2<i32>(~u_input.e.x, ~(-2147483647i)) | global1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_vec2_f32(global1.b + var_4.yw)), firstTrailingBit(_wgslsmith_div_i32(34796i, reverseBits(var_2.x))) == max(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_2.x, 7218i), abs(u_input.c)), reverseBits(global1.a.x) & 1i), _wgslsmith_f_op_f32(abs(1530f)));
}

fn func_1(arg_0: f32) -> bool {
    global1 = func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.e.x, 0u, global2.e.x, _wgslsmith_mod_u32(func_2(vec3<f32>(-1286f, -210f, -1000f), u_input.b.x), 14990u)), ~vec4<u32>(~global2.e.x, _wgslsmith_dot_vec2_u32(global2.e.yz, vec2<u32>(0u, 4294967295u)), 4574u, _wgslsmith_mod_u32(0u, 61205u))), -8773i);
    var var_0 = Struct_4(global2.e, Struct_3(vec2<bool>(true, global1.c), 1i, func_4(~(~vec4<u32>(global2.e.x, 42623u, 1u, global2.e.x)), max(82976i, global1.a.x) >> (global2.e.x % 32u)), vec3<f32>(571f, global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), Struct_1(u_input.e.xx, vec2<f32>(2166f, 1252f), false, _wgslsmith_f_op_f32(-global1.b.x))), Struct_3(select(!vec2<bool>(false, global2.a), global2.b, select(vec2<bool>(global1.c, global0[_wgslsmith_index_u32(0u, 12u)]), global2.b, global2.b)), _wgslsmith_mult_i32(global1.a.x, func_3(5077i, vec3<u32>(global2.e.x, global2.e.x, 4294967295u) & vec3<u32>(0u, 58608u, global2.e.x)).x), Struct_1(vec2<i32>(~(-24761i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, global1.d) + global1.b), all(vec4<bool>(global2.c, true, global0[_wgslsmith_index_u32(global2.e.x, 12u)], global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f + -1107f) * -2496f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 590f, -159f), vec3<f32>(arg_0, 147f, global1.d)) + vec3<f32>(global2.d, -506f, arg_0)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.d, 861f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global2.e.x, 24u)], global1.d, global3[_wgslsmith_index_u32(4294967295u, 24u)]) * vec3<f32>(-534f, -500f, global3[_wgslsmith_index_u32(global2.e.x, 24u)])))), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(37714u, 19u)] * global1.b)), true, _wgslsmith_f_op_f32(min(global2.d, _wgslsmith_f_op_f32(trunc(arg_0)))))), ~(~(~_wgslsmith_div_u32(global2.e.x, 15023u))));
    var var_1 = !all(!vec2<bool>(func_4(vec4<u32>(4294967295u, var_0.d, var_0.a.x, 1413u), u_input.d).c, global1.c));
    global3 = array<f32, 24>();
    global3 = array<f32, 24>();
    return any(!select(select(vec2<bool>(global2.c, var_0.c.a.x), vec2<bool>(true, true), global2.b), select(select(global2.b, var_0.b.a, global0[_wgslsmith_index_u32(4294967295u, 12u)]), global2.b, true), !(!var_0.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    global3 = array<f32, 24>();
    global0 = array<bool, 12>();
    global2 = Struct_2(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(ceil(372f)))))), vec2<bool>(func_4(firstLeadingBit(vec4<u32>(23819u, global2.e.x, global2.e.x, 4087u) ^ vec4<u32>(19788u, 9605u, global2.e.x, 4294967295u)), -2147483647i).c, global0[_wgslsmith_index_u32(~0u, 12u)]), false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.e.x, 24u)] - global3[_wgslsmith_index_u32(4294967295u, 24u)]) + -1635f) * _wgslsmith_f_op_f32(-func_4(vec4<u32>(global2.e.x, 0u, 1u, global2.e.x), global1.a.x).d)))), vec3<u32>(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global2.e.zz, global2.e.zz), ~global2.e.x)), max(4294967295u, _wgslsmith_add_u32(global2.e.x << (37330u % 32u), firstTrailingBit(66306u))), ~global2.e.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-1471f * _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(~16717u, 24u)]))), _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-184f * global1.b.x))))));
    let var_1 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec2<f32>(_wgslsmith_f_op_f32(floor(-392f)), -134f), -197f);
}

