struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true));

var<private> global2: array<i32, 3> = array<i32, 3>(19462i, 0i, 2147483647i);

var<private> global3: array<u32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -2016f, 1317f), vec3<f32>(275f, -114f, -1572f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(763f, 828f, 649f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(835f, -1224f, -568f), vec3<f32>(385f, -1107f, 1000f))), select(arg_1.e, arg_1.e, arg_1.d.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1240f, 349f, -1000f) * vec3<f32>(-1820f, 1453f, -1000f))))));
    let var_2 = -168f;
    var var_3 = arg_1;
    var var_4 = reverseBits(min((vec4<i32>(47826i, 2147483647i, arg_1.a.x, arg_1.a.x) ^ -vec4<i32>(-56502i, 23751i, var_3.a.x, 0i)) | abs(vec4<i32>(arg_1.a.x, 27905i, arg_0, u_input.a)), reverseBits(select(~vec4<i32>(var_3.a.x, -23462i, 2147483647i, u_input.a), vec4<i32>(16049i, var_3.a.x, u_input.a, u_input.a), any(var_3.e)))));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~abs(~var_3.b), select(var_3.b, vec4<u32>(4294967295u, 117651u, arg_1.b.x, 33863u), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -207f))), select(u_input.b, _wgslsmith_mult_u32(arg_1.c.x, 4448u), false));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    global2 = array<i32, 3>();
    global0 = 4294967295u;
    let var_0 = vec4<u32>(global3[_wgslsmith_index_u32(~(~func_3(-2147483647i, Struct_1(vec2<i32>(-29922i, u_input.a), arg_1, arg_1.wy, vec2<bool>(false, true), vec3<bool>(arg_0, true, arg_0)))), 27u)] >> (func_3(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 4427u), 3u)], -32916i), Struct_1(countOneBits(vec2<i32>(-23729i, -41146i)), vec4<u32>(global3[_wgslsmith_index_u32(arg_1.x, 27u)], 0u, 46280u, arg_1.x), vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false), !vec3<bool>(true, arg_0, arg_0))) % 32u), 10260u, arg_1.x, arg_1.x);
    global2 = array<i32, 3>();
    let var_1 = true;
    return Struct_1(vec2<i32>(~(~(-24855i)), -1i), var_0, ~countOneBits(max(~arg_1.xx, ~vec2<u32>(4294967295u, 24256u))), !(!(!vec2<bool>(true, var_1))), !(!select(vec3<bool>(false, arg_0, false), vec3<bool>(true, false, false), vec3<bool>(true, false, var_1))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> bool {
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2181f)))) <= -1498f, vec4<u32>(~(~arg_0.b.x), 1u, abs(_wgslsmith_dot_vec2_u32(arg_0.c, arg_0.b.ww)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0.b.x), vec2<u32>(u_input.b, 1u)), firstLeadingBit(4294967295u), u_input.b))).b.x;
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(select(arg_0.a.x, arg_0.a.x, true), arg_1) ^ vec2<i32>(-1i & arg_3, global2[_wgslsmith_index_u32(~arg_0.c.x, 3u)]), vec2<i32>(max(arg_1, 14981i), _wgslsmith_add_i32(arg_0.a.x, -2147483647i)) >> (~(~vec2<u32>(arg_0.b.x, 82428u)) % vec2<u32>(32u))), ~firstLeadingBit(vec4<u32>(~global3[_wgslsmith_index_u32(0u, 27u)], firstTrailingBit(0u), firstTrailingBit(1u), u_input.b ^ u_input.b)), firstTrailingBit(select(arg_0.c, firstLeadingBit(max(vec2<u32>(arg_0.b.x, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(0u, 27u)], 0u))), func_2(true, arg_0.b).d)), arg_0.d, func_2(arg_2.x & all(vec2<bool>(true, true)), vec4<u32>(global3[_wgslsmith_index_u32(countOneBits(firstTrailingBit(60616u)), 27u)], _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.b.x, u_input.b), _wgslsmith_add_u32(arg_0.b.x, 52615u)), 142528u, abs(1u))).e);
    var var_1 = min(~_wgslsmith_mult_u32(~firstLeadingBit(0u), _wgslsmith_add_u32(min(arg_0.c.x, 14121u), u_input.b)), _wgslsmith_dot_vec3_u32(~(var_0.b.wzz >> (vec3<u32>(var_0.c.x, 0u, 0u) % vec3<u32>(32u))), arg_0.b.xzw) & firstLeadingBit(var_0.b.x));
    global1 = array<vec4<bool>, 32>();
    var var_2 = 653f;
    return all(arg_2.xwy);
}

fn func_1() -> bool {
    var var_0 = all(vec3<bool>(true, func_4(func_2(false, vec4<u32>(u_input.b, 1u, 26031u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], 27u)], 27u)]) & vec4<u32>(0u, global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(u_input.b, 27u)])), global2[_wgslsmith_index_u32(1u, 3u)], !(!global1[_wgslsmith_index_u32(109799u, 32u)]), u_input.a), true));
    var var_1 = vec3<u32>(global3[_wgslsmith_index_u32(27129u, 27u)] & 12151u, ~8258u, firstTrailingBit(global3[_wgslsmith_index_u32(~2916u, 27u)]));
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    let var_2 = 22491i;
    return (firstTrailingBit(var_2) <= -(_wgslsmith_sub_i32(88436i, var_2) & abs(global2[_wgslsmith_index_u32(21783u, 3u)]))) | ((all(func_2(false, vec4<u32>(0u, u_input.b, u_input.b, 47279u)).e) != (all(vec3<bool>(false, false, false)) != false)) & any(func_2(true, ~vec4<u32>(0u, u_input.b, u_input.b, var_1.x)).e));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = var_0;
    var var_2 = 2497f;
    var var_3 = _wgslsmith_mult_u32(func_3(abs(arg_1.a.x), Struct_1(abs(func_2(arg_1.d.x, vec4<u32>(0u, var_0.b.x, var_0.c.x, global3[_wgslsmith_index_u32(40564u, 27u)])).a), vec4<u32>(3472u, var_0.c.x, u_input.b, var_0.c.x) | _wgslsmith_mult_vec4_u32(var_1.b, vec4<u32>(25575u, 0u, 53834u, var_0.c.x)), firstLeadingBit(vec2<u32>(var_1.b.x, 0u)), var_0.e.zz, !select(vec3<bool>(arg_0, false, arg_0), var_1.e, true))), ~1u);
    global1 = array<vec4<bool>, 32>();
    return func_2(true, ~_wgslsmith_mult_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(var_1.c.x, 27u)], 4294967295u, 16681u, u_input.b), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), func_2(all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 23554u, 0u), vec4<u32>(1u, u_input.b, u_input.b, 83921u)))));
    var var_1 = func_2(false, ~countOneBits(~vec4<u32>(var_0.c.x, u_input.b, var_0.c.x, 53867u)));
    global1 = array<vec4<bool>, 32>();
    let var_2 = Struct_1(max(-func_2(var_1.d.x, vec4<u32>(global3[_wgslsmith_index_u32(var_0.b.x, 27u)], 0u, 4294967295u, u_input.b)).a, ~(~reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(54353u, 3u)], global2[_wgslsmith_index_u32(17658u, 3u)])))), _wgslsmith_mod_vec4_u32(var_1.b, firstTrailingBit(var_0.b >> (var_1.b % vec4<u32>(32u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.c.x), ~(~(~var_1.c))), vec2<bool>(any(vec2<bool>(1u > var_1.c.x, true)), func_1()), var_0.e);
    global1 = array<vec4<bool>, 32>();
    var var_3 = Struct_1(vec2<i32>(11317i << (~func_3(0i, Struct_1(var_1.a, vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, u_input.b), var_0.c, var_2.d, vec3<bool>(var_0.e.x, false, var_2.d.x))) % 32u), -u_input.a), ~var_2.b, var_2.c, vec2<bool>((firstTrailingBit(0u) >= 13959u) & any(select(vec3<bool>(var_1.e.x, true, true), vec3<bool>(false, false, true), var_2.e.x)), !(-global2[_wgslsmith_index_u32(0u, 3u)] < select(u_input.a, var_0.a.x, var_2.d.x))), vec3<bool>(var_1.d.x, var_0.d.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_sub_vec3_i32(min(abs(max(vec3<i32>(33230i, 69572i, 0i), vec3<i32>(7295i, 9374i, 37296i))), -vec3<i32>(0i, var_1.a.x, -24439i)), vec3<i32>(var_2.a.x, ~(~2147483647i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_3.a.x, -2147483647i, var_2.a.x), vec4<i32>(var_1.a.x, var_0.a.x, var_2.a.x, var_1.a.x)))));
}

