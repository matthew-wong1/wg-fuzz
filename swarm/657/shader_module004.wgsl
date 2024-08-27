struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: array<i32, 13> = array<i32, 13>(1i, i32(-2147483648), 46001i, 0i, -6446i, 40417i, -4506i, 2147483647i, 14888i, 0i, -3493i, 0i, -32176i);

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global4: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    global4 = -2026f;
    let var_0 = Struct_3(Struct_2(select(!global1.a, select(vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), global1.a, all(vec2<bool>(true, global1.a.x))), true), vec2<u32>(19667u, 35881u)));
    var var_1 = _wgslsmith_mod_i32(abs(max(global2[_wgslsmith_index_u32(u_input.a, 13u)], -19302i)), i32(-1i) * -(~(~0i)));
    var var_2 = 1i;
    let var_3 = Struct_5(Struct_4(var_0.a, Struct_1(vec2<u32>(global1.b.x, global1.b.x), true, ~global1.b.x), Struct_2(var_0.a.a, max(~vec2<u32>(var_0.a.b.x, global1.b.x), vec2<u32>(49168u, 4294967295u))), reverseBits(~1i)), Struct_4(Struct_2(!vec4<bool>(false, true, global1.a.x, global1.a.x), select(global1.b, var_0.a.b, false) | (vec2<u32>(0u, 4294967295u) & global1.b)), Struct_1(var_0.a.b, all(select(global3.zwx, global3.xxy, var_0.a.a.x)), reverseBits(u_input.a)), var_0.a, abs(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(87380u, 1u), 13u)])), var_0, global0.x);
    return ~(~abs(_wgslsmith_add_u32(1u, max(var_3.a.a.b.x, var_0.a.b.x))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec2<f32>) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec2_f32(arg_3 - _wgslsmith_f_op_vec2_f32(round(arg_3)));
    let var_0 = Struct_4(Struct_2(global1.a, ~(vec2<u32>(arg_1.a.b.x, 42612u) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.b.x, 1u), arg_2.yx))), Struct_1(arg_1.a.b, _wgslsmith_clamp_i32(reverseBits(1i), ~global2[_wgslsmith_index_u32(16296u, 13u)], _wgslsmith_dot_vec2_i32(vec2<i32>(3958i, 12008i), vec2<i32>(0i, global2[_wgslsmith_index_u32(arg_2.x, 13u)]))) != 1768i, func_3()), arg_1.a, -22761i);
    let var_1 = Struct_3(var_0.a);
    global2 = array<i32, 13>();
    global1 = Struct_2(vec4<bool>(var_0.b.b, !select(false, false, true), all(!var_0.c.a.zwy), true), ~global1.b);
    return var_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_4) -> bool {
    var var_0 = Struct_3(func_2(select(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(63470u, global1.b.x, u_input.a, u_input.a)), vec4<u32>(arg_2.c.b.x, 24711u, global1.b.x, 0u), firstTrailingBit(vec4<u32>(8283u, global1.b.x, arg_2.c.b.x, 0u))), select(~vec4<u32>(52618u, u_input.a, 0u, 0u), firstLeadingBit(vec4<u32>(4294967295u, 8996u, arg_2.a.b.x, 0u)), all(global1.a.yz)), true), Struct_3(arg_2.a), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.b.x, u_input.a, global1.b.x), select(vec4<u32>(0u, arg_2.b.c, global1.b.x, global1.b.x), vec4<u32>(26146u, global1.b.x, arg_2.c.b.x, global1.b.x), global1.a.x)), max(vec4<u32>(global1.b.x, arg_2.a.b.x, 30729u, 8605u), vec4<u32>(4294967295u, global1.b.x, global1.b.x, 4294967295u)) & ~vec4<u32>(10814u, u_input.a, 8958u, 6530u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-548f * global0.x), arg_1.x))).c);
    var var_1 = select(vec3<bool>(!(~arg_2.d < (arg_0.x ^ -2147483647i)), true, any(global1.a)), vec3<bool>(global1.a.x, any(select(global3.wxy, !global1.a.zxx, any(var_0.a.a.yyx))), global3.x), var_0.a.a.x);
    var_1 = global1.a.xxx;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(177f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + 1265f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1589f) + arg_1.x)), func_2(select(vec4<u32>(u_input.a, var_0.a.b.x, 1306u, u_input.a), ~vec4<u32>(0u, arg_2.a.b.x, u_input.a, 61739u), true), Struct_3(var_0.a), vec4<u32>(arg_2.b.c & arg_2.a.b.x, abs(u_input.a), _wgslsmith_div_u32(65896u, u_input.a), func_3()), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(arg_1.xx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(702f, global0.x) + arg_1.xz), !global1.a.zy))).c.a.x)));
    var var_2 = ~47619u;
    return global1.a.x;
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global3 = select(vec4<bool>(!any(select(vec3<bool>(arg_2.a.a.x, true, arg_2.a.a.x), vec3<bool>(true, false, true), vec3<bool>(false, global3.x, false))), !func_4(~vec2<i32>(arg_1, global2[_wgslsmith_index_u32(global1.b.x, 13u)]), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 2042f, -1013f))), func_2(vec4<u32>(1u, arg_3.a.x, arg_0.b.c.b.x, arg_3.a.x), arg_2, vec4<u32>(arg_2.a.b.x, 53320u, 4294967295u, global1.b.x), vec2<f32>(-311f, 1000f))), global1.a.x, !any(arg_0.a.a.a)), select(vec4<bool>(arg_3.b, global1.a.x, !arg_0.c.a.a.x, global1.a.x), arg_2.a.a, global1.a.x), false);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-300f - 1036f))), global0.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(186f, 740f) + vec2<f32>(1404f, -115f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-664f, 352f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_0.d))))), vec2<bool>(global1.a.x, arg_0.a.c.a.x))) + vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1630f + -1601f))))));
    global4 = _wgslsmith_f_op_f32(-arg_0.d);
    let var_0 = Struct_5(arg_0.b, Struct_4(Struct_2(!(!vec4<bool>(arg_3.b, true, arg_0.b.b.b, global3.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.c, 22036u), vec2<u32>(1u, u_input.a), arg_3.a)), Struct_1(vec2<u32>(4294967295u, 1u), !arg_0.a.c.a.x, global1.b.x), func_2(~(~vec4<u32>(arg_2.a.b.x, arg_2.a.b.x, arg_3.c, arg_3.c)), arg_0.c, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_2.a.b.x, arg_2.a.b.x, 7954u), vec4<u32>(arg_2.a.b.x, arg_3.c, 61414u, 57784u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -268f), vec2<f32>(542f, arg_0.d), global1.a.ww)))).a, -((arg_1 | global2[_wgslsmith_index_u32(arg_2.a.b.x, 13u)]) << (~4294967295u % 32u))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1933f))));
    var var_1 = !arg_0.a.c.a.wx;
    return true;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_1 {
    global2 = array<i32, 13>();
    global4 = 1578f;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(ceil(var_0.x)));
    var var_1 = Struct_4(Struct_2(arg_3.a.a, vec2<u32>(56638u, _wgslsmith_clamp_u32(func_2(vec4<u32>(arg_1.b.x, 1u, 1785u, 9673u), Struct_3(arg_1), vec4<u32>(33819u, 0u, 6726u, arg_3.a.b.x), arg_0).c.b.x, 4294967295u, ~u_input.a))), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(~1u, arg_3.c.b.x), vec2<u32>(~arg_1.b.x, 13550u >> (0u % 32u))), true, ~arg_1.b.x), arg_1, 0i);
    return func_2(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 48349u, u_input.a) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.b.x, 1u, 22293u, 4294967295u), vec4<u32>(global1.b.x, 4294967295u, 1u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.x, u_input.a, global1.b.x, 5424u) << (vec4<u32>(arg_3.a.b.x, 0u, 4294967295u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 1u, arg_1.b.x, 69645u)))), Struct_3(arg_3.a), vec4<u32>(arg_1.b.x, max(var_1.c.b.x, ~var_1.a.b.x), abs(~_wgslsmith_mult_u32(37863u, 0u)), _wgslsmith_sub_u32(1u, var_1.b.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, var_0.x)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-567f, arg_0.x), var_0))))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(round(1281f))))))).b;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_4 {
    global1 = arg_3;
    global2 = array<i32, 13>();
    global2 = array<i32, 13>();
    var var_0 = global3.x;
    var var_1 = global1.a.x;
    return func_2((~vec4<u32>(global1.b.x, u_input.a, u_input.a, 4294967295u) >> (~(vec4<u32>(u_input.a, arg_3.b.x, arg_0.a.x, 79955u) ^ vec4<u32>(u_input.a, global1.b.x, 25183u, 19198u)) % vec4<u32>(32u))) >> (~vec4<u32>(94508u, arg_2.x, arg_2.x, u_input.a) % vec4<u32>(32u)), Struct_3(Struct_2(vec4<bool>(1u > arg_0.a.x, true, false, false), max(firstTrailingBit(vec2<u32>(0u, 66259u)), ~arg_0.a))), vec4<u32>(~4294967295u, _wgslsmith_sub_u32(~4294967295u, arg_2.x) >> (34301u % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, arg_0.c) & vec2<u32>(1u, 46949u), select(arg_2, vec2<u32>(arg_2.x, 4294967295u), vec2<bool>(false, arg_0.b))), ~(~1u)), ~arg_2.x), vec2<f32>(-1663f, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec2<f32>(global0.x, _wgslsmith_f_op_f32(exp2(global0.x))), Struct_2(vec4<bool>(true, false, func_1(Struct_5(Struct_4(Struct_2(vec4<bool>(true, global1.a.x, false, global3.x), global1.b), Struct_1(global1.b, global3.x, global1.b.x), Struct_2(global1.a, global1.b), 68377i), Struct_4(Struct_2(global1.a, vec2<u32>(4294967295u, 11539u)), Struct_1(vec2<u32>(global1.b.x, 0u), false, 1u), Struct_2(global1.a, global1.b), -48218i), Struct_3(Struct_2(vec4<bool>(global1.a.x, global3.x, true, true), vec2<u32>(1u, 4294967295u))), 704f), global2[_wgslsmith_index_u32(global1.b.x, 13u)], Struct_3(Struct_2(global1.a, global1.b)), Struct_1(vec2<u32>(22422u, 53039u), global1.a.x, global1.b.x)), global3.x), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(0u, global1.b.x), global1.b))), vec4<bool>(all(!global3.zxx), all(select(global1.a, vec4<bool>(true, global1.a.x, false, false), global1.a.x)), any(vec4<bool>(false, true, false, false)), false), func_2(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 49277u, u_input.a, 1u), vec4<u32>(4294967295u, global1.b.x, u_input.a, global1.b.x)), Struct_3(Struct_2(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), vec2<u32>(39542u, global1.b.x))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(global1.b.x, 0u, 15100u, global1.b.x), vec4<u32>(global1.b.x, 51099u, 4294967295u, 31928u)), countOneBits(vec4<u32>(u_input.a, 8705u, 1u, u_input.a)), vec4<u32>(0u, u_input.a, 4294967295u, 3203u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -746f)))), global2[_wgslsmith_index_u32(~abs(global1.b.x << (8245u % 32u)), 13u)], ~select(vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(8157u, u_input.a), global1.b), !global1.a.zx) << (min(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(global1.b, global1.b)), vec2<u32>(_wgslsmith_mult_u32(0u, 27092u), 0u)) % vec2<u32>(32u)), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global1.b.x >> (global1.b.x % 32u), 1u << (global1.b.x % 32u), ~7415u), ~(~vec4<u32>(113029u, 27314u, 8098u, u_input.a))), Struct_3(func_2(vec4<u32>(global1.b.x, 1u, 38816u, u_input.a), Struct_3(Struct_2(vec4<bool>(global3.x, true, true, global3.x), vec2<u32>(global1.b.x, 4294967295u))), vec4<u32>(global1.b.x, global1.b.x, 4916u, global1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))).a), _wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, 4294967295u, 10947u, 55847u), _wgslsmith_div_vec4_u32(vec4<u32>(19462u, 0u, 0u, 1u), vec4<u32>(7472u, 12298u, global1.b.x, global1.b.x))) & (~vec4<u32>(global1.b.x, u_input.a, 65552u, u_input.a) >> ((vec4<u32>(global1.b.x, global1.b.x, 1u, 1u) ^ vec4<u32>(global1.b.x, 49384u, 1u, global1.b.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-382f, global0.x), vec2<f32>(-1379f, global0.x), global3.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 502f), vec2<f32>(-179f, global0.x))))).a);
    global3 = !vec4<bool>(!var_0.a.a.x, func_2(_wgslsmith_mult_vec4_u32(max(vec4<u32>(global1.b.x, 6209u, 0u, 17833u), vec4<u32>(46646u, 0u, global1.b.x, 12999u)), ~vec4<u32>(18115u, 4294967295u, u_input.a, u_input.a)), Struct_3(func_6(var_0.b, global2[_wgslsmith_index_u32(var_0.b.c, 13u)], vec2<u32>(120537u, 1u), var_0.a).a), ~(~vec4<u32>(0u, 77334u, u_input.a, 10326u)), vec2<f32>(_wgslsmith_div_f32(402f, -1158f), _wgslsmith_f_op_f32(trunc(1353f)))).c.a.x, global3.x, func_6(var_0.b, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, var_0.d, var_0.d), vec3<i32>(-8002i, var_0.d, -2147483647i))), var_0.b.a, Struct_2(func_2(vec4<u32>(0u, 0u, 30797u, 0u), Struct_3(Struct_2(global1.a, vec2<u32>(25796u, global1.b.x))), vec4<u32>(4294967295u, u_input.a, 0u, 1u), vec2<f32>(global0.x, global0.x)).c.a, vec2<u32>(u_input.a, 81049u) & vec2<u32>(20758u, var_0.a.b.x))).c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(670f * global0.x), 218f))) * _wgslsmith_f_op_f32(f32(-1f) * -2075f)), max(~4294967295u, max(~(~u_input.a), ~(1u >> (1u % 32u)))), ~var_0.d, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(66751u, 43955u, 22770u), countOneBits(vec3<u32>(41259u, 143505u, global1.b.x)), false), reverseBits(vec3<u32>(4294967295u, 9470u, global1.b.x)) << ((vec3<u32>(global1.b.x, var_0.a.b.x, 42454u) << (vec3<u32>(var_0.b.a.x, u_input.a, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), ~vec3<u32>(global1.b.x, 2108u, 29454u) >> (vec3<u32>(var_0.c.b.x, ~global1.b.x, u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x + global0.x))))));
}

