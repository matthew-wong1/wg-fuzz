struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(678f, -1278f, 1056f), vec3<f32>(1000f, -1038f, 1000f), vec3<f32>(2235f, -2372f, -895f), vec3<f32>(-2627f, -236f, -365f), vec3<f32>(1237f, 752f, 833f), vec3<f32>(-2483f, -492f, 1563f), vec3<f32>(1633f, -2077f, -363f), vec3<f32>(-413f, -492f, 1148f), vec3<f32>(-1666f, -835f, -327f), vec3<f32>(637f, -949f, 1411f), vec3<f32>(1385f, -1000f, 223f), vec3<f32>(1787f, -1082f, 1693f), vec3<f32>(179f, -349f, 963f), vec3<f32>(421f, -861f, 1275f), vec3<f32>(-837f, 837f, 1000f), vec3<f32>(-332f, -1906f, -587f), vec3<f32>(-1000f, -564f, -439f));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(283f, -298f, 449f, 2196f), vec4<f32>(-496f, 446f, -1000f, -961f), -29482i, -36383i, -1112f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<u32> {
    global2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)), arg_0), 139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(954f)) + _wgslsmith_f_op_f32(trunc(194f))), arg_0), vec4<f32>(115f, -750f, arg_0, -774f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.a.x, 694f))), global2.a.x, 1762f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-703f, arg_0))))), 0i, -u_input.a << (5689u % 32u), -144f);
    let var_0 = arg_2;
    let var_1 = 232f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -880f)), _wgslsmith_f_op_f32(step(-2198f, _wgslsmith_f_op_f32(f32(-1f) * -1729f)))));
    global1 = array<vec3<f32>, 17>();
    var var_2 = Struct_1(global2.b, global2.b, _wgslsmith_dot_vec2_i32(select(~(-arg_1.zx), arg_1.xx, true), min(reverseBits(_wgslsmith_mult_vec2_i32(arg_1.yz, vec2<i32>(-41760i, 14868i))), vec2<i32>(-arg_1.x, 0i))), max(u_input.b ^ _wgslsmith_sub_i32(-60309i, arg_1.x), u_input.b), arg_0);
    return _wgslsmith_sub_vec4_u32(select(select(reverseBits(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 0u, 12811u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23651u, 1u)], 1u)], 1u)], 1u)])), ~max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5681u, 1u)], 1u)], 1u)], 37606u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], 0u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)])), !select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2.a.x, var_1, var_1, arg_2.a.x), vec4<bool>(false, true, true, var_1))), vec4<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(591u, 1u)], 1u)], 1u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(12380u, 1u)], 4294967295u, global0[_wgslsmith_index_u32(75634u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)])), global0[_wgslsmith_index_u32(max(4294967295u, 34882u), 1u)], true), 109309u | countOneBits(global0[_wgslsmith_index_u32(24403u, 1u)]), ~37918u, firstTrailingBit(0u) & (global0[_wgslsmith_index_u32(4294967295u, 1u)] | 18693u)), arg_2.a.x), select(abs(~vec4<u32>(4294967295u, 3273u, 0u, 4294967295u) | vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(17402u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)])), ~vec4<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(42189u, 1u)]), 1u, _wgslsmith_mod_u32(16796u, 1u), _wgslsmith_clamp_u32(0u, 4294967295u, 1u)), vec4<bool>(select(false, arg_1.x < 0i, false), false, !arg_2.a.x == (global2.c >= 1i), true)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_2 {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global2.b, arg_1, firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)] ^ 31266u) <= firstTrailingBit(0u))), _wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(global2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(721f))), -454f, arg_1.x)), 0i, _wgslsmith_div_i32(u_input.a, -2147483647i) & ~(0i ^ _wgslsmith_mod_i32(global2.d, global2.c)), 960f);
    var var_0 = Struct_2(max(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37958u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17653u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(58210u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55447u, 1u)], 1u)]), func_3(-1156f, u_input.c.zwx, Struct_3(vec2<bool>(arg_0, false)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 62306u, 32784u, global0[_wgslsmith_index_u32(0u, 1u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10389u, 1u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)]))), vec4<u32>(abs(global0[_wgslsmith_index_u32(reverseBits(1u), 1u)]), ~0u << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u) % 32u), ~max(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18265u, 1u)], 1u)]), ~1u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-123f, arg_1.x, -219f, -1000f) - global2.b), global2.a, 1i, 2147483647i, 1007f), select(!(!vec3<bool>(arg_0, arg_0, true)), !vec3<bool>(false, true, !arg_0), true), ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(0u, 36963u, global0[_wgslsmith_index_u32(4294967295u, 1u)])), ~abs(vec3<u32>(82785u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83601u, 1u)], 1u)], 1u)], 1u))));
    var var_1 = Struct_3(vec2<bool>(var_0.b.b.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -757f))), var_0.c.x));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(701f)), 1f, global2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -831f), global2.a.x, -215f, _wgslsmith_f_op_f32(arg_1.x * 1168f)))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-17065i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, 16960i), u_input.c.xy), u_input.d.x, _wgslsmith_sub_i32(-38444i, u_input.c.x)), ~u_input.c >> (~var_0.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(2147483647i, 12672i, -1i, 5908i)), u_input.c)), min(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(57597i, 11438i, -2147483647i), u_input.c.yyw), u_input.c.x, var_0.b.d, 0i), -_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(global2.c, -26135i, u_input.a, global2.c)))), 1i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(ceil(108f))))));
    let var_2 = 22535u;
    return Struct_2(_wgslsmith_clamp_vec4_u32(var_0.a, firstTrailingBit(var_0.a), firstLeadingBit(~vec4<u32>(var_0.d.x, global0[_wgslsmith_index_u32(94383u, 1u)], 0u, var_0.d.x))) | vec4<u32>(~_wgslsmith_mod_u32(var_2, 14278u), firstTrailingBit(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_2, 1u)], var_0.a.x)), min(var_2, 34249u), _wgslsmith_add_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 1u)], var_2), 1u)), var_0.b, var_0.c, var_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)];
    let var_1 = Struct_3(!vec2<bool>(arg_0.c.x, true));
    var var_2 = Struct_3(vec2<bool>(false, true));
    var var_3 = func_2(!all(var_1.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(global2.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.b.a)) + arg_0.b.b)))).b;
    global0 = array<u32, 1>();
    return !vec2<bool>(false, all(select(var_2.a, !arg_0.c.zx, func_2(true, vec4<f32>(370f, -102f, arg_0.b.b.x, -677f)).c.yy)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    let var_0 = arg_1.d;
    let var_1 = arg_1.a.x;
    var var_2 = !arg_1.c.x | false;
    let var_3 = func_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1.b.a))), vec4<f32>(global2.e, _wgslsmith_f_op_f32(arg_1.b.a.x - arg_1.b.e), _wgslsmith_f_op_f32(min(874f, arg_1.b.b.x)), _wgslsmith_f_op_f32(-global2.a.x))))).b;
    let var_4 = true;
    return any(select(vec4<bool>(true, false, arg_0.a.x, all(!arg_1.c)), select(vec4<bool>(!arg_1.c.x, false, select(var_4, false, arg_0.a.x), false), select(vec4<bool>(true, true, false, arg_1.c.x), select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, true, true), true), arg_0.a.x), vec4<bool>(arg_0.a.x, true, true, arg_1.c.x)), !select(!vec4<bool>(arg_1.c.x, false, false, false), !vec4<bool>(arg_0.a.x, true, arg_1.c.x, false), !vec4<bool>(var_4, arg_0.a.x, true, false))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(Struct_3(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), func_4(func_2(true, global2.a), _wgslsmith_f_op_f32(min(-484f, 1410f)), _wgslsmith_clamp_vec3_i32(u_input.c.xxz, u_input.c.wzz, vec3<i32>(global2.c, 2147483647i, 48612i))))), func_2(_wgslsmith_add_i32(~31539i, abs(global2.d)) <= -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, -634f, 633f, global2.b.x) + global2.b) * _wgslsmith_f_op_vec4_f32(-global2.b))));
    let var_1 = vec4<bool>(!(!(_wgslsmith_f_op_f32(-global2.a.x) != _wgslsmith_f_op_f32(859f * global2.e))), !(!(!any(vec2<bool>(false, true)))), false, any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true), func_2(true, global2.b).c)));
    var var_2 = true;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1417f)))), global2.e) > _wgslsmith_div_f32(-1813f, -1336f);
    let var_4 = Struct_2(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(0u), max(global0[_wgslsmith_index_u32(66130u, 1u)], global0[_wgslsmith_index_u32(48564u, 1u)])), 1u)], 1u)], global0[_wgslsmith_index_u32(6518u, 1u)], max(global0[_wgslsmith_index_u32(1u, 1u)], ~global0[_wgslsmith_index_u32(4294967295u, 1u)]), 0u), func_2(var_1.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e, global2.a.x, 814f, -560f) - vec4<f32>(1000f, 1072f, global2.b.x, 253f))), global2.a)).b, select(!vec3<bool>(-913f != global2.e, false, var_1.x), select(vec3<bool>(false, var_1.x, false), func_2(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -687f, global2.b.x, global2.e) + vec4<f32>(-1481f, 282f, global2.b.x, -826f))).c, all(!vec4<bool>(var_1.x, false, true, true))), vec3<bool>(any(!var_1.zxw), false, !var_1.x)), vec3<u32>(20368u, ~(~firstTrailingBit(14423u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(23573u, 0u), (global0[_wgslsmith_index_u32(9043u, 1u)] & global0[_wgslsmith_index_u32(1u, 1u)]) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15882u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72520u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10203u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)])) % 32u)), 1u)]));
    return func_2(var_4.c.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1520f * 1000f), var_4.b.e), -1388f, -874f, _wgslsmith_f_op_f32(min(-356f, _wgslsmith_f_op_f32(-var_4.b.e))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global0 = array<u32, 1>();
    let var_0 = global0[_wgslsmith_index_u32(64990u, 1u)];
    global0 = array<u32, 1>();
    global2 = func_2(false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(938f * global2.e)), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.b.x + global2.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.e + global2.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - -1486f) - _wgslsmith_f_op_f32(499f * -290f)), global2.b.x, 1403f, -855f))).b;
    let var_1 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

