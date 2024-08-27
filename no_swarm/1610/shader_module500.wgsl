struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, true, false, true, true, true, true, false, true, true, false, true, false, true, true, true, true, false, false, false, false, false, true, false, false, true, true, false, true, false, true, false);

var<private> global1: u32 = 31226u;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1i, 873f, vec3<i32>(-1i, 47180i, -41226i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<bool>(true, true, false)), Struct_1(0i, -524f, vec3<i32>(2174i, 26959i, -16544i), vec3<i32>(23555i, 1i, -16476i), vec3<bool>(true, false, false)), Struct_1(63295i, 851f, vec3<i32>(-33611i, 0i, 2147483647i), vec3<i32>(3727i, 33614i, 1i), vec3<bool>(false, true, false)), Struct_1(54i, -857f, vec3<i32>(-1i, 1i, 18757i), vec3<i32>(-38056i, -7880i, -66041i), vec3<bool>(true, true, true)), Struct_1(0i, -2584f, vec3<i32>(1i, i32(-2147483648), 65470i), vec3<i32>(0i, -13389i, 52565i), vec3<bool>(true, false, true)), Struct_1(0i, 579f, vec3<i32>(1i, 1i, 17960i), vec3<i32>(40516i, 0i, 2147483647i), vec3<bool>(true, true, true)), Struct_1(10540i, 1000f, vec3<i32>(-5882i, 28464i, -39842i), vec3<i32>(-38338i, -19051i, 2147483647i), vec3<bool>(true, false, false)), Struct_1(i32(-2147483648), 662f, vec3<i32>(0i, 54664i, 1i), vec3<i32>(-1i, -8688i, -34243i), vec3<bool>(false, true, false)), Struct_1(i32(-2147483648), -495f, vec3<i32>(4445i, 7339i, -29332i), vec3<i32>(-4573i, 2147483647i, -31762i), vec3<bool>(true, false, true)), Struct_1(i32(-2147483648), -427f, vec3<i32>(1i, 0i, -43856i), vec3<i32>(-1i, -25999i, i32(-2147483648)), vec3<bool>(false, true, true)), Struct_1(11148i, 688f, vec3<i32>(i32(-2147483648), 8163i, 428i), vec3<i32>(874i, 1i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(i32(-2147483648), -472f, vec3<i32>(2147483647i, 68755i, -21182i), vec3<i32>(-1i, 0i, -1i), vec3<bool>(true, false, false)), Struct_1(-33099i, -1877f, vec3<i32>(1i, -24507i, -10876i), vec3<i32>(2147483647i, i32(-2147483648), 1881i), vec3<bool>(false, false, false)), Struct_1(i32(-2147483648), -855f, vec3<i32>(59586i, i32(-2147483648), -9943i), vec3<i32>(0i, i32(-2147483648), -28526i), vec3<bool>(true, true, false)), Struct_1(0i, 1168f, vec3<i32>(0i, 1i, -1i), vec3<i32>(0i, i32(-2147483648), -24707i), vec3<bool>(false, true, false)), Struct_1(-353i, -1004f, vec3<i32>(1i, 0i, 0i), vec3<i32>(-7121i, 1i, 1i), vec3<bool>(true, true, false)));

var<private> global3: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-14980i, -1i, 1i), vec3<i32>(1i, 0i, 1i), vec3<i32>(-1517i, -1i, -1650i), vec3<i32>(17870i, -51231i, 1i), vec3<i32>(0i, 25151i, -54381i), vec3<i32>(1i, i32(-2147483648), 1i));

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    global3 = array<vec3<i32>, 6>();
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.a), ~u_input.b), u_input.a) & 36842u, 16u)];
    var var_1 = -1020f;
    var var_2 = var_0.e.yz;
    global1 = _wgslsmith_clamp_u32(1u, 13284u, 99401u);
    return -2560i & _wgslsmith_mod_i32(max(-29376i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.d.x, -8000i, global4.d.x, 19357i), vec4<i32>(global4.d.x, var_0.d.x, global4.a, 0i)))), _wgslsmith_div_i32(var_0.d.x, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, var_0.a), global4.c.yx))));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(abs(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global4.c.x, 2823i, 2147483647i, global4.d.x), vec4<i32>(-2147483647i, 1i, global4.c.x, global4.d.x)), -max(vec4<i32>(global4.d.x, 2147483647i, global4.c.x, -56270i), vec4<i32>(19390i, global4.d.x, global4.d.x, -40876i)))), -1000f, vec3<i32>(_wgslsmith_mod_i32(abs(global4.a), -1813i), global4.d.x, select(~func_3(), func_3(), global4.e.x)), global3[_wgslsmith_index_u32(~(~u_input.a) & 28688u, 6u)], select(select(select(!global4.e, !vec3<bool>(true, global4.e.x, global0[_wgslsmith_index_u32(37241u, 32u)]), global4.e.x), !(!global4.e), true), global4.e, select(select(vec3<bool>(true, true, true), !global4.e, u_input.a < 11766u), global4.e, global4.e)));
    var var_1 = var_0.b;
    var_0 = global2[_wgslsmith_index_u32(~u_input.b, 16u)];
    var var_2 = Struct_1(-_wgslsmith_add_i32(~(-24211i), 0i), global4.b, var_0.d, select(_wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(~abs(35638u), 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)]), abs(abs(global3[_wgslsmith_index_u32(u_input.a, 6u)])) & ~vec3<i32>(-43216i, global4.d.x, var_0.c.x), any(select(vec2<bool>(false, var_0.e.x), select(var_0.e.yx, vec2<bool>(global4.e.x, var_0.e.x), var_0.e.x), vec2<bool>(var_0.e.x, false)))), select(vec3<bool>(true, any(select(vec4<bool>(var_0.e.x, false, var_0.e.x, global4.e.x), vec4<bool>(var_0.e.x, global4.e.x, true, global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec4<bool>(false, var_0.e.x, true, true))), true), !(!global4.e), !global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 53475u, u_input.a, 1u), vec4<u32>(53595u, u_input.b, 15685u, 0u)), 32u)]));
    var_2 = global2[_wgslsmith_index_u32(select(u_input.a, u_input.b, false), 16u)];
    return firstLeadingBit(_wgslsmith_add_i32(var_2.a, _wgslsmith_dot_vec2_i32(var_2.c.zy & var_0.c.yz, var_2.d.yx & var_2.c.xy)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(84229u, 32u)];
    var var_1 = Struct_1(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(func_2(), global4.c.x), _wgslsmith_sub_i32(1i, global4.c.x)), 162f, vec3<i32>(global4.c.x, _wgslsmith_add_i32(global4.c.x, -2147483647i) & _wgslsmith_dot_vec3_i32(global4.c, global4.c), -12210i) ^ vec3<i32>(_wgslsmith_div_i32(func_3(), global4.a), ~(~global4.c.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(global4.d.x, global4.c.x), global4.d.zz)), (_wgslsmith_div_vec3_i32(vec3<i32>(global4.a, global4.c.x, global4.d.x) | global4.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(-44578i, 62665i, -43729i), global3[_wgslsmith_index_u32(1u, 6u)], vec3<i32>(-31854i, 9732i, global4.a))) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(u_input.a, 6u)], vec3<i32>(global4.c.x, 56612i, global4.c.x)), ~global4.a, global4.a)) & _wgslsmith_sub_vec3_i32(global3[_wgslsmith_index_u32(u_input.a, 6u)], global4.d), select(!global4.e, !global4.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1658f))) <= global4.b));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~_wgslsmith_mod_u32(0u, u_input.a) ^ 4294967295u) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a & 0u, u_input.b, ~u_input.a, firstLeadingBit(u_input.a)), vec4<u32>(u_input.a, 1u, 4294967295u, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 21672u, u_input.a, 115248u), vec4<u32>(1u, 10166u, 0u, u_input.b))), ~max(select(vec4<u32>(u_input.a, u_input.b, 7855u, u_input.a), vec4<u32>(1u, 47039u, 102676u, u_input.a), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 32u)], arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b, 23880u, u_input.a), vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.b, u_input.b, 80620u, u_input.a)))) % 32u), 16u)];
    var var_3 = true;
    var var_4 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~u_input.a), u_input.a, ~93237u, (u_input.b & _wgslsmith_add_u32(48847u, 232u)) & 104208u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(u_input.b), 0u, u_input.a, u_input.b), abs(vec4<u32>(40393u, 1u, 0u, u_input.a)))));
    return 160f;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: f32, arg_3: f32) -> vec3<i32> {
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    global3 = array<vec3<i32>, 6>();
    var var_0 = !(!(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, u_input.b), ~u_input.a, ~u_input.a) > ~(~4294967295u)));
    global3 = array<vec3<i32>, 6>();
    return firstTrailingBit(~(abs(vec3<i32>(39647i, -1i, 9742i) ^ global3[_wgslsmith_index_u32(u_input.a, 6u)]) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 43203u), ~vec3<u32>(u_input.b, u_input.b, 29920u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1595f);
    let var_1 = vec2<i32>(-(~abs(~global4.a)), -36211i);
    global3 = array<vec3<i32>, 6>();
    let var_2 = global2[_wgslsmith_index_u32(~u_input.a, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_4(~(~vec4<i32>(-1i, 16433i, -1i, var_2.a)) | firstLeadingBit(~vec4<i32>(var_1.x, 15223i, var_2.d.x, 0i)), _wgslsmith_f_op_f32(-1284f * var_2.b) < -181f, _wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_2.e.xy))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(617f, -1659f) + _wgslsmith_f_op_f32(global4.b * -1601f)))), func_4(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(global4.a, 14880i), reverseBits(4903i)), var_2.d.x, abs(-27548i), _wgslsmith_dot_vec2_i32(vec2<i32>(-711i, var_1.x) | vec2<i32>(global4.a, var_1.x), -vec2<i32>(global4.a, 3723i))), global4.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) + _wgslsmith_f_op_f32(-global4.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b, var_2.b)) - 1f)).zz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.b)) - _wgslsmith_f_op_f32(1721f - _wgslsmith_f_op_f32(var_0 + global4.b))), -156f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * -158f) * _wgslsmith_f_op_f32(var_2.b - -1177f)) - -136f), global4.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.b)) - _wgslsmith_f_op_f32(-global4.b)), 463f)), vec4<i32>(1i, max(~0i, global4.d.x), 3475i, func_4(-(~vec4<i32>(1i, -33151i, global4.c.x, -28647i)), any(vec2<bool>(false, true)), -1000f, _wgslsmith_f_op_f32(213f - global4.b)).x));
}

