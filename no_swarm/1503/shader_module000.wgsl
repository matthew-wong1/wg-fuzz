struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<i32, 23>;

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(35568u, 44505u, 22189u, 145560u), vec4<u32>(38529u, 0u, 4294967295u, 75083u), vec4<u32>(1815u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 34701u, 21278u), vec4<u32>(126818u, 1u, 11664u, 41878u), vec4<u32>(0u, 0u, 4294967295u, 25852u), vec4<u32>(0u, 1u, 2659u, 16940u), vec4<u32>(10991u, 5209u, 0u, 1u), vec4<u32>(17711u, 0u, 63229u, 4294967295u), vec4<u32>(5926u, 23705u, 41057u, 1u), vec4<u32>(0u, 6878u, 37183u, 1u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(29237u, 56547u, 4294967295u, 20149u), vec4<u32>(1u, 23014u, 10945u, 4294967295u), vec4<u32>(49418u, 68232u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 16228u), vec4<u32>(49386u, 0u, 1u, 2565u), vec4<u32>(51098u, 51318u, 7503u, 0u), vec4<u32>(15955u, 14941u, 0u, 1u));

var<private> global3: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    var var_0 = ~firstTrailingBit(1i) ^ 40796i;
    let var_1 = ~abs(57352u);
    var var_2 = Struct_3(arg_1.b);
    let var_3 = min(select(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_2.a.a, var_2.a.a, var_1)), vec3<u32>(min(35270u, 1u), firstTrailingBit(0u), 4294967295u & var_1)), _wgslsmith_mod_vec3_u32(~vec3<u32>(50185u, 54027u, 1938u), vec3<u32>(var_2.a.a, _wgslsmith_mult_u32(var_2.a.a, 1u), ~arg_3)), (select(true, true, var_2.a.e.x) || true) | arg_1.d.e.x), vec3<u32>(~1u, ~1u, ~(~(4294967295u & var_1))));
    var var_4 = arg_1.b.d.x;
    return 1i;
}

fn func_2() -> vec2<i32> {
    global1 = array<i32, 23>();
    global2 = array<vec4<u32>, 19>();
    global3 = ~_wgslsmith_mod_i32(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.c, 23u)], u_input.b), vec3<i32>(u_input.e, -2147483647i, u_input.d)), Struct_2(9898i, Struct_1(u_input.a, vec2<f32>(1011f, -1000f), vec2<f32>(1000f, -509f), vec2<bool>(false, false), vec3<bool>(false, false, true)), u_input.a, Struct_1(75253u, vec2<f32>(-1057f, 106f), vec2<f32>(-1179f, 735f), vec2<bool>(true, false), vec3<bool>(false, true, true)), 1000f), vec4<f32>(134f, -2130f, -1041f, -2138f), 22033u), global1[_wgslsmith_index_u32(u_input.c, 23u)]) ^ u_input.b;
    var var_0 = Struct_2(4624i, Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1479f, 329f) + vec2<f32>(247f, 653f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-189f, -120f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(288f, -685f), vec2<f32>(166f, -1000f))))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec3<bool>(!any(vec4<bool>(true, false, true, true)), true, u_input.d < global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 23u)])), u_input.c | (~u_input.c ^ abs(reverseBits(u_input.c))), Struct_1(1u, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -251f), _wgslsmith_f_op_f32(-439f + -463f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 1611f), _wgslsmith_f_op_f32(round(-541f))))), vec2<f32>(_wgslsmith_f_op_f32(338f + _wgslsmith_div_f32(493f, 460f)), 1000f), vec2<bool>(all(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true))), vec3<bool>(any(vec2<bool>(true, true)), true, ~u_input.c >= u_input.a)), 1187f);
    global1 = array<i32, 23>();
    return abs(~vec2<i32>(12501i, _wgslsmith_div_i32(max(var_0.a, 0i), max(-2147483647i, var_0.a))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = 816f;
    let var_1 = func_2().x ^ 1i;
    return Struct_1(19348u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1271f), -1000f))), vec2<f32>(-206f, -932f), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true), select(vec3<bool>(select(true, false, any(vec3<bool>(true, true, false))), false, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), false));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global3 = arg_0.a;
    var var_0 = select(vec4<bool>(func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(1597i, 27778i) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), countOneBits(vec2<i32>(u_input.b, 7795i))), vec4<i32>(-1i) * -vec4<i32>(arg_0.a, 0i, u_input.e, 2147483647i)).e.x, !all(!vec2<bool>(arg_0.d.d.x, true)), all(vec4<bool>(any(vec2<bool>(true, true)), arg_0.d.e.x, false, false)), all(!vec4<bool>(arg_0.b.d.x, arg_0.b.d.x, arg_0.d.d.x, arg_0.b.d.x))), select(select(select(vec4<bool>(arg_0.b.e.x, arg_0.d.e.x, arg_0.d.d.x, false), !vec4<bool>(arg_0.b.d.x, false, arg_0.b.e.x, true), vec4<bool>(false, arg_0.b.d.x, arg_0.d.e.x, arg_0.d.d.x)), !select(vec4<bool>(arg_0.b.d.x, arg_0.d.e.x, false, arg_0.d.e.x), vec4<bool>(false, arg_0.b.e.x, arg_0.d.e.x, arg_0.d.e.x), arg_0.d.d.x), select(select(vec4<bool>(arg_0.b.e.x, arg_0.d.e.x, arg_0.b.d.x, arg_0.d.d.x), vec4<bool>(arg_0.b.e.x, arg_0.d.d.x, arg_0.b.d.x, false), vec4<bool>(arg_0.b.e.x, false, true, true)), vec4<bool>(arg_0.d.d.x, false, arg_0.d.d.x, arg_0.b.e.x), any(arg_0.d.d))), !(!vec4<bool>(false, false, arg_0.b.d.x, true)), select(select(vec4<bool>(true, arg_0.b.d.x, false, arg_0.b.e.x), !vec4<bool>(false, false, arg_0.d.e.x, true), select(vec4<bool>(arg_0.d.d.x, false, arg_0.d.d.x, false), vec4<bool>(false, true, arg_0.d.e.x, true), vec4<bool>(false, false, false, false))), vec4<bool>(arg_0.b.e.x == true, true, all(vec4<bool>(true, arg_0.d.e.x, false, false)), arg_0.c > arg_0.d.a), true)), select(select(select(vec4<bool>(false, arg_0.d.d.x, arg_0.d.d.x, arg_0.b.e.x), select(vec4<bool>(false, false, arg_0.d.d.x, false), vec4<bool>(arg_0.d.d.x, true, true, arg_0.b.d.x), vec4<bool>(arg_0.b.e.x, true, arg_0.d.e.x, false)), arg_0.b.a > 614u), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.d.d.x, false, false, true), !arg_0.d.e.x), select(!vec4<bool>(arg_0.d.e.x, true, true, true), !vec4<bool>(false, false, true, arg_0.d.d.x), true)), select(!(!vec4<bool>(arg_0.b.d.x, arg_0.d.e.x, arg_0.b.e.x, arg_0.d.d.x)), vec4<bool>(true, true, false, arg_0.d.e.x), arg_0.d.e.x), arg_0.b.e.x));
    var var_1 = Struct_2(u_input.e, Struct_1(u_input.c | ~25801u, arg_0.d.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.d.b, arg_0.d.c, var_0.yx)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.e, -918f)))), vec2<f32>(-199f, arg_0.b.c.x)), var_0.yy, !vec3<bool>(true, 1i <= u_input.b, var_0.x)), ~(~(~2455u)), func_4(vec2<i32>(5384i, 1i), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], 20672i, 10932i), vec4<i32>(arg_0.a, 4890i, -2227i, global1[_wgslsmith_index_u32(arg_0.d.a, 23u)])), firstTrailingBit(-2147483647i), u_input.e, ~u_input.b))), 738f);
    global2 = array<vec4<u32>, 19>();
    global1 = array<i32, 23>();
    return var_1.b;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32((vec2<u32>(1u, u_input.a) >> (~vec2<u32>(14948u, 87334u) % vec2<u32>(32u))) | countOneBits(vec2<u32>(u_input.c, 4294967295u) ^ vec2<u32>(u_input.c, 17716u)), ~(~(vec2<u32>(4294967295u, u_input.c) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))))), vec2<u32>(17638u, 63361u & _wgslsmith_sub_u32(u_input.c, select(0u, 4294967295u, true))));
    var_0 = ~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_0.x, var_0.x) >> (vec2<u32>(83566u, var_0.x) % vec2<u32>(32u))) << (~(~vec2<u32>(u_input.a, 59554u) << (vec2<u32>(var_0.x, 28052u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, reverseBits(~1u)), _wgslsmith_div_u32(0u, 1u)), _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.x, ~73550u) & u_input.a, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(abs(var_0.x), 19u)], ~vec4<u32>(u_input.a, var_0.x, 8053u, var_0.x))), true), 23u)];
    global1 = array<i32, 23>();
    var var_1 = func_5(Struct_2(0i, func_4(func_2(), -firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 23u)], u_input.d, u_input.d, u_input.d))), firstTrailingBit(u_input.a), Struct_1(_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.x), vec2<u32>(22977u, 99847u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-369f, -776f))), _wgslsmith_div_vec2_f32(vec2<f32>(-788f, 1313f), vec2<f32>(-785f, 556f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), -1606f), vec2<bool>(true, true), select(func_4(vec2<i32>(u_input.b, u_input.e), vec4<i32>(0i, 24686i, -2147483647i, u_input.d)).e, vec3<bool>(arg_0, false, true), func_4(vec2<i32>(-2147483647i, 1i), vec4<i32>(-39125i, global1[_wgslsmith_index_u32(4294967295u, 23u)], -70265i, -34237i)).e)), -362f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.b.x) + _wgslsmith_f_op_f32(-var_1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -1i;
    global3 = reverseBits(global1[_wgslsmith_index_u32(~(u_input.a << (53948u % 32u)) << (~(~63545u) % 32u), 23u)]) | _wgslsmith_sub_i32(-(abs(0i) | (u_input.e << (u_input.c % 32u))), -(~u_input.e));
    global2 = array<vec4<u32>, 19>();
    global2 = array<vec4<u32>, 19>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-871f + _wgslsmith_f_op_f32(func_1(false))) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1641f - -613f) - _wgslsmith_f_op_f32(round(1381f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1771f))), _wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(999f + 846f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1234f - -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -561f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(203f, 399f) + 765f))), func_4(countOneBits(reverseBits(vec2<i32>(u_input.e, global1[_wgslsmith_index_u32(u_input.c, 23u)]))) ^ -select(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(42189u, 23u)]), vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.c, 23u)]), true), vec4<i32>(-33378i, 1i, firstLeadingBit(u_input.e), 28060i)).b.x);
    let var_1 = 1120f;
    let var_2 = Struct_3(func_4(-(~(~vec2<i32>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(u_input.c, 23u)]))), vec4<i32>(_wgslsmith_mod_i32(-26095i, -1i), u_input.e, abs(global1[_wgslsmith_index_u32(72353u, 23u)]), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 23u)]) << (~(~vec4<u32>(4294967295u, 3352u, 60377u, u_input.a)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(select(vec2<i32>(u_input.e, u_input.e), vec2<i32>(0i, u_input.e), var_2.a.e.x), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(679u, 23u)], -2147483647i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.e, u_input.e, -7425i))).c.x) + 105f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wyw * vec3<f32>(var_1, -878f, var_1)))) - var_0.zxw), global1[_wgslsmith_index_u32(u_input.a, 23u)] ^ -(global1[_wgslsmith_index_u32(~u_input.c, 23u)] >> (~43886u % 32u)));
}

