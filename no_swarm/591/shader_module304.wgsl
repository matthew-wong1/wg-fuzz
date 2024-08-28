struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(23543i, 0i, 12908i), vec3<i32>(2147483647i, 8246i, 10925i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(-35779i, -28345i, 49130i), vec3<i32>(1325i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, -46706i), vec3<i32>(2147483647i, -15563i, 64391i), vec3<i32>(10533i, i32(-2147483648), -51099i), vec3<i32>(2147483647i, 32734i, -1i), vec3<i32>(-13122i, 0i, -1i), vec3<i32>(1i, 75706i, -26918i));

var<private> global1: array<f32, 11> = array<f32, 11>(657f, -709f, 1651f, -467f, 484f, -1058f, 499f, -1547f, 2167f, -986f, -1004f);

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<i32>, 23>;

var<private> global4: array<bool, 8> = array<bool, 8>(false, true, true, false, true, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<bool>) -> vec4<u32> {
    global0 = array<vec3<i32>, 13>();
    global2 = select(vec3<bool>(any(arg_2), true, true & global2.x), !(!select(arg_2.xyw, arg_2.wyw, any(vec4<bool>(false, false, arg_2.x, global4[_wgslsmith_index_u32(59565u, 8u)])))), all(select(global2.yy, arg_2.wy, global2.yy)));
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x), u_input.a)), ~(-vec4<i32>(25218i, -2147483647i, u_input.a.x, u_input.a.x))), min(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(~4294967295u, 23u)], abs(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, u_input.d.x))), u_input.a.x), -2147483647i), _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -16105i, u_input.d.x), _wgslsmith_mod_vec3_i32(u_input.a.zyx, vec3<i32>(-7486i, -2147483647i, u_input.b.x))), u_input.a.yzx));
    var var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0, 4294967295u), ~vec2<u32>(1u, 59713u)) << (~(~(~vec2<u32>(u_input.c, 0u))) % vec2<u32>(32u)), ((abs(vec2<u32>(38246u, arg_1)) & (vec2<u32>(24247u, u_input.c) ^ vec2<u32>(511u, arg_0))) | _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, arg_0), ~vec2<u32>(u_input.c, 54567u))) & vec2<u32>(u_input.c, ~u_input.c));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_0, 11u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4259u, 11u)], global1[_wgslsmith_index_u32(arg_1, 11u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 11u)]), true)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 14574u, 1u, 11008u), vec4<u32>(1u, 7351u, arg_1, arg_1), vec4<u32>(arg_0, 1u, 24502u, arg_1)) ^ (vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u) >> (firstTrailingBit(vec4<u32>(0u, 4102u, arg_0, arg_1)) % vec4<u32>(32u))), _wgslsmith_div_vec3_u32(~(vec3<u32>(21909u, arg_1, arg_1) << (vec3<u32>(arg_1, 0u, arg_0) % vec3<u32>(32u))), ~vec3<u32>(1u, 1u, 1u)), ~countOneBits(_wgslsmith_sub_i32(21995i, var_0.x))), vec2<i32>(max(_wgslsmith_div_i32(min(2147483647i, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, u_input.a.x), u_input.a.zxw)), _wgslsmith_dot_vec4_i32(u_input.a, reverseBits(vec4<i32>(-45831i, 2147483647i, -19041i, u_input.d.x)))), var_0.x), Struct_1(794f, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4294967295u, arg_1), vec4<u32>(arg_0, 3616u, 34023u, 35787u)), 4294967295u, ~u_input.c, u_input.c), vec3<u32>(~17612u, arg_0, max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.c), vec2<u32>(1u, 21746u)), arg_0)), 59982i), u_input.a.xxx);
    return vec4<u32>(_wgslsmith_add_u32(var_2.a.c.x << (arg_0 % 32u), _wgslsmith_div_u32(arg_1, ~u_input.c)), u_input.c, u_input.c, arg_1);
}

fn func_2() -> u32 {
    global0 = array<vec3<i32>, 13>();
    global4 = array<bool, 8>();
    let var_0 = vec2<u32>(51227u, firstTrailingBit(_wgslsmith_div_u32(55063u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, 17785u), u_input.c))));
    let var_1 = select(_wgslsmith_div_i32(u_input.d.x, 1i), ~u_input.a.x, any(vec2<bool>(-846f == _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.x, 11u)], -1158f), true)));
    var var_2 = global2.xz;
    return _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(8270u, 40575u))), _wgslsmith_dot_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, var_0.x, 1u) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.c, 1u, 124180u, var_0.x), ~vec4<u32>(28038u, 45190u, 52833u, 4294967295u)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c, var_0.x, 70290u, 14457u)), func_3(u_input.c, u_input.c, vec4<bool>(global2.x, global2.x, true, global4[_wgslsmith_index_u32(u_input.c, 8u)])))), ~vec4<u32>(abs(1u), 22381u, _wgslsmith_add_u32(var_0.x, var_0.x), var_0.x)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(func_2(), ~u_input.c) & reverseBits(vec2<u32>(reverseBits(0u), u_input.c) << (firstTrailingBit(select(vec2<u32>(47681u, u_input.c), vec2<u32>(u_input.c, u_input.c), arg_0.yx)) % vec2<u32>(32u)));
    var_0 = ~firstTrailingBit(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(39043u, 23221u), firstLeadingBit(vec2<u32>(var_0.x, 4294967295u)), vec2<u32>(4294967295u, u_input.c)), reverseBits(vec2<u32>(1u, 59653u)), arg_0.zx));
    var_0 = vec2<u32>(~select(16159u, 52336u, true), ~(~var_0.x) ^ (~var_0.x << (_wgslsmith_sub_u32(43292u, ~var_0.x) % 32u)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 11u)], global1[_wgslsmith_index_u32(var_0.x, 11u)], 2042f), vec3<f32>(global1[_wgslsmith_index_u32(0u, 11u)], -2035f, global1[_wgslsmith_index_u32(u_input.c, 11u)])) * vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 430f, -574f))))), ~(var_0.x << (var_0.x % 32u)), vec3<bool>(true, true, all(select(vec4<bool>(false, false, global4[_wgslsmith_index_u32(var_0.x, 8u)], arg_0.x), vec4<bool>(false, true, arg_0.x, global4[_wgslsmith_index_u32(4294967295u, 8u)]), all(vec2<bool>(true, global4[_wgslsmith_index_u32(var_0.x, 8u)]))))), Struct_4(1u, i32(-1i) * -(~u_input.a.x)), func_3(countOneBits(~var_0.x << (u_input.c % 32u)), max(_wgslsmith_clamp_u32(12513u, ~54068u, 1471u), 1u), vec4<bool>(var_0.x > ~0u, arg_0.x, true, false)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(911f)) - global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.b, var_0.x, var_0.x), 11u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2368f))), vec4<u32>(select(1u, var_1.e.x << (u_input.c % 32u), arg_0.x), 22393u, reverseBits(1u), var_0.x ^ var_0.x), select(~vec3<u32>(13149u, u_input.c, u_input.c), countOneBits(reverseBits(var_1.e.xxw)), true), _wgslsmith_clamp_i32(u_input.d.x, -1i, abs(var_1.d.b))), vec2<i32>(-1i) * -u_input.d, Struct_1(var_1.a.x, var_1.e, vec3<u32>(u_input.c, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_1.b, 60186u), vec3<u32>(49336u, 0u, u_input.c))), 4759i), ~global0[_wgslsmith_index_u32(21518u, 13u)] ^ vec3<i32>(u_input.d.x, ~var_1.d.b, var_1.d.b));
    return Struct_1(-1388f, ~(~(~(~vec4<u32>(var_2.a.b.x, 1u, 0u, 4294967295u)))), ~(var_2.c.b.yyw << (var_1.e.wyw % vec3<u32>(32u))), _wgslsmith_clamp_i32(var_1.d.b, u_input.b.x, firstTrailingBit(~(-var_1.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 8>();
    var var_0 = ~(u_input.c | 36782u);
    var var_1 = Struct_3(func_1(vec3<bool>(false, any(vec3<bool>(global4[_wgslsmith_index_u32(8444u, 8u)], global4[_wgslsmith_index_u32(u_input.c, 8u)], false)), global2.x)));
    var var_2 = !vec3<bool>(false, true, global4[_wgslsmith_index_u32(~17498u, 8u)]);
    global2 = select(select(select(!(!vec3<bool>(global2.x, global4[_wgslsmith_index_u32(5796u, 8u)], global2.x)), vec3<bool>(var_2.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.a.b, vec4<u32>(var_1.a.b.x, 31700u, u_input.c, var_1.a.b.x)), 8u)], var_1.a.a <= 244f), vec3<bool>(false, true, all(vec4<bool>(true, true, true, var_2.x)))), !vec3<bool>(true, true || var_2.x, any(vec4<bool>(var_2.x, global4[_wgslsmith_index_u32(u_input.c, 8u)], global4[_wgslsmith_index_u32(83515u, 8u)], false))), select(select(!vec3<bool>(false, true, global2.x), select(vec3<bool>(var_2.x, global4[_wgslsmith_index_u32(u_input.c, 8u)], false), vec3<bool>(true, true, global2.x), global4[_wgslsmith_index_u32(var_1.a.c.x, 8u)]), all(vec2<bool>(true, false))), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), select(select(!(!vec3<bool>(global2.x, true, global4[_wgslsmith_index_u32(u_input.c, 8u)])), !select(vec3<bool>(false, false, true), vec3<bool>(true, global2.x, var_2.x), vec3<bool>(var_2.x, true, false)), var_2.x), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(global4[_wgslsmith_index_u32(var_1.a.b.x, 8u)], false, false)), global2.x), func_1(select(vec3<bool>(var_2.x, global4[_wgslsmith_index_u32(var_1.a.c.x, 8u)], true), vec3<bool>(false, global2.x, true), var_2.x)).b.x < 113824u), !(!(!(!vec3<bool>(global4[_wgslsmith_index_u32(var_1.a.c.x, 8u)], global2.x, global4[_wgslsmith_index_u32(u_input.c, 8u)])))));
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 391f, var_1.a.a), vec3<f32>(-613f, 530f, 442f)))))), u_input.c, select(vec3<bool>(true, select(var_2.x, true, true) != global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 8u)], global4[_wgslsmith_index_u32(u_input.c, 8u)]), vec3<bool>(any(select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 8u)], true, false, true), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, true, false, true))), !all(vec4<bool>(var_2.x, global2.x, var_2.x, true)), !global2.x), vec3<bool>(select(true, global2.x, false), true, false)), Struct_4(var_1.a.c.x, select(~(-2147483647i), 0i, all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 8u)], true, true, true)))), vec4<u32>(var_1.a.c.x, 0u, 100774u, var_1.a.c.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1533f, _wgslsmith_div_f32(-361f, _wgslsmith_f_op_f32(f32(-1f) * -736f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8077u, 11u)] + global1[_wgslsmith_index_u32(1740u, 11u)]) + -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f + 1250f) + _wgslsmith_f_op_f32(-var_3.a.x))), global1[_wgslsmith_index_u32(abs(var_3.e.x), 11u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_3.e.x, 11u)], 682f, var_1.a.a, global1[_wgslsmith_index_u32(var_3.d.a, 11u)]) * vec4<f32>(var_1.a.a, var_1.a.a, var_1.a.a, var_1.a.a)))))), false | select(global1[_wgslsmith_index_u32(1u, 11u)] > _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 11u)], 470f, true)), select(var_2.x, false, any(vec2<bool>(false, true))), global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.c, ~var_3.d.a, ~var_3.e.x) | ~var_3.e.www, ~(~4294967295u), -19664i, _wgslsmith_add_u32(~0u, ~_wgslsmith_dot_vec3_u32(var_1.a.b.zwx, var_3.e.wwz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.a))));
}

