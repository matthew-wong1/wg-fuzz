struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-235f, -577f), vec2<f32>(1948f, -274f), vec2<f32>(802f, 1114f), vec2<f32>(1000f, 1198f), vec2<f32>(101f, -360f), vec2<f32>(-1856f, -1000f), vec2<f32>(-228f, -108f), vec2<f32>(689f, -1000f), vec2<f32>(823f, 1209f));

var<private> global1: array<f32, 19> = array<f32, 19>(-502f, 1428f, 733f, -757f, -438f, 1588f, 595f, -676f, 407f, -311f, 1742f, -1009f, 1646f, 1000f, -710f, -2084f, -1517f, -567f, 1516f);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<f32>(-903f, 434f, 1532f, -1792f), vec2<u32>(35421u, 0u), vec2<u32>(4294967295u, 105049u), vec3<u32>(20959u, 1u, 1u)), Struct_1(vec4<f32>(-1519f, -1312f, 2687f, -489f), vec2<u32>(1u, 1u), vec2<u32>(0u, 13041u), vec3<u32>(41912u, 23119u, 1665u)), Struct_1(vec4<f32>(983f, 728f, -1304f, 822f), vec2<u32>(1u, 35208u), vec2<u32>(90188u, 4294967295u), vec3<u32>(0u, 57193u, 0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> i32 {
    global0 = array<vec2<f32>, 9>();
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, 0u, ~u_input.c, 10633u), countOneBits(select(vec4<u32>(u_input.d.x, 0u, u_input.d.x, 14331u), vec4<u32>(u_input.e, 47118u, u_input.b.x, u_input.c), vec4<bool>(true, true, false, false))))), vec2<u32>(~(~1u), ~_wgslsmith_div_u32(u_input.c, u_input.c)));
    global1 = array<f32, 19>();
    var var_1 = vec2<bool>(all(vec4<bool>(true, true, true, true)), -1084f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)] + _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(21006u, 19u)]))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(78724u, 19u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false))));
    var var_2 = vec2<f32>(-667f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)]));
    return -17450i;
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = arg_0.c.x;
    var var_1 = select(select(vec4<bool>(arg_0.a, !(!arg_0.a), !(!arg_0.a), !(!arg_0.a)), select(select(select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, true), vec4<bool>(false, true, arg_0.a, false)), vec4<bool>(arg_0.a, true, true, true), true), !select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, false), false), true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)] > 330f, arg_0.a, !arg_0.a, true), vec4<bool>(true, false, any(vec3<bool>(arg_0.a, false, arg_0.a)), arg_0.a), (global1[_wgslsmith_index_u32(0u, 19u)] >= global1[_wgslsmith_index_u32(u_input.c, 19u)]) & arg_0.a)), !vec4<bool>(any(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), false)), true, true, arg_0.a), vec4<bool>(true || (_wgslsmith_div_f32(global1[_wgslsmith_index_u32(6735u, 19u)], -198f) >= 1000f), !(!arg_0.a), !any(!vec2<bool>(arg_0.a, arg_0.a)), false));
    global0 = array<vec2<f32>, 9>();
    var var_2 = var_1.wxy;
    global2 = array<Struct_1, 3>();
    return vec4<u32>(abs(_wgslsmith_add_u32(var_0, firstLeadingBit(1u))), u_input.c, var_0, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0, _wgslsmith_sub_u32(arg_0.c.x ^ arg_0.c.x, var_0)), ~(42664u & u_input.c)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_3(true, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, 20004i), u_input.a, max(-1i, u_input.a), _wgslsmith_div_i32(u_input.a, -1i)), -(vec4<i32>(u_input.a, -1i, arg_0.x, -2147483647i) << (vec4<u32>(u_input.d.x, 0u, 74496u, u_input.e) % vec4<u32>(32u)))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, arg_0.x, arg_0.x, -31042i), vec4<i32>(-6029i, -8936i, u_input.a, arg_0.x)), arg_0 | vec4<i32>(u_input.a, -2147483647i, 33757i, arg_0.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, ~arg_1.b.x, 45441u & arg_1.d.x, ~u_input.d.x) >> (firstLeadingBit(vec4<u32>(48929u, arg_1.d.x, arg_1.d.x, 1u)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.d.x, firstTrailingBit(71027u), firstTrailingBit(1u), abs(28114u)))));
    global2 = array<Struct_1, 3>();
    var var_1 = Struct_3(!var_0.a, vec4<i32>(-40360i, ~var_0.b.x, func_2((arg_0.x << (4294967295u % 32u)) >> (_wgslsmith_mod_u32(0u, u_input.d.x) % 32u)), countOneBits(abs(var_0.b.x))), max(func_3(Struct_3(var_0.a, vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, arg_0.x) ^ arg_0, vec4<u32>(arg_1.d.x, 0u, var_0.c.x, 1u))), ~var_0.c));
    let var_2 = arg_1;
    let var_3 = !select(var_0.a, arg_0.x >= -1i, false);
    return arg_1.a.x;
}

fn func_4(arg_0: f32) -> Struct_3 {
    global0 = array<vec2<f32>, 9>();
    let var_0 = Struct_3(!any(vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, u_input.a, 40407i, u_input.a)), vec4<i32>(_wgslsmith_add_i32(16384i, u_input.a) & func_2(u_input.a), u_input.a ^ max(u_input.a, 33875i), 14496i, u_input.a)), vec4<u32>(u_input.e & countOneBits(~12030u), 0u, func_3(Struct_3(true, vec4<i32>(u_input.a, 1i, 1i, u_input.a), vec4<u32>(u_input.e, u_input.b.x, u_input.e, 0u))).x ^ ~1u, 0u));
    let var_1 = var_0;
    global2 = array<Struct_1, 3>();
    let var_2 = Struct_3(any(!(!vec4<bool>(var_0.a, var_0.a, true, true))), var_1.b, max(vec4<u32>(u_input.d.x, 0u, var_1.c.x, _wgslsmith_mod_u32(abs(var_1.c.x), 1u)), abs(var_1.c)));
    return Struct_3(var_2.a, _wgslsmith_div_vec4_i32(~(~(-vec4<i32>(-19428i, u_input.a, -1877i, 31279i))), vec4<i32>(var_0.b.x, 7619i, min(countOneBits(var_0.b.x), i32(-1i) * -79035i), var_0.b.x)), ~(~vec4<u32>(80526u, var_2.c.x, 62911u, ~u_input.b.x)));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global2 = array<Struct_1, 3>();
    global1 = array<f32, 19>();
    var var_0 = 28127u >> (_wgslsmith_sub_u32(19334u, arg_0.c.x) % 32u);
    var var_1 = reverseBits(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-23136i, u_input.a, arg_0.b.x, 0i), vec4<i32>(-2147483647i, 32261i, -2147483647i, arg_0.b.x))) | _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.b, arg_0.b), func_4(global1[_wgslsmith_index_u32(53875u, 19u)]).b)) >> (59996u % 32u);
    global2 = array<Struct_1, 3>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(-1i, -2147483647i, 97985i, u_input.a), Struct_1(vec4<f32>(876f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 1190f, global1[_wgslsmith_index_u32(u_input.d.x, 19u)]), u_input.b, u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.d.x))))))));
    let var_1 = ~(~(-(~_wgslsmith_add_vec2_i32(var_0.b.wy, var_0.b.xx))));
    global2 = array<Struct_1, 3>();
    let var_2 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(reverseBits(~0u)), var_0.c.x), 19u)]);
    var var_3 = select(abs(15191u >> (~_wgslsmith_add_u32(u_input.e, 1u) % 32u)), 4294967295u, true);
    var_3 = var_2.c.x;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-(var_0.b.x << (25489u % 32u)), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(25392u, 19u)]))))) - global1[_wgslsmith_index_u32(var_2.c.x, 19u)]), vec4<f32>(1746f, _wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.c.x, 19u)]) - global1[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(countOneBits(var_2.c.x), 19u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(6672u, 0u, var_4.c.x, var_0.c.x), vec4<u32>(0u, u_input.d.x, u_input.c, u_input.b.x)), 19u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1547f, 1024f))), 188f)), ~(-(~2147483647i)));
}

