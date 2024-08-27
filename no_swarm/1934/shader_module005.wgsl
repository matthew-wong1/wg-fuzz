struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-2130f, 176f, -284f, 734f), vec4<f32>(-921f, -994f, -949f, -1507f), vec4<f32>(222f, -1000f, 293f, -193f), vec4<f32>(1620f, 169f, 646f, -263f), vec4<f32>(-1000f, -1000f, -1437f, -1265f), vec4<f32>(-1619f, 808f, -149f, -1188f), vec4<f32>(-1000f, 898f, 250f, -648f), vec4<f32>(-906f, -730f, -131f, -389f));

var<private> global2: Struct_1 = Struct_1(-1393f, false, vec3<u32>(16416u, 1u, 760u), -1i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * 167f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(315f, -464f)) * _wgslsmith_f_op_f32(-543f - 603f)), 924f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -127f), global2.a)))));
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.c.x, u_input.d), vec2<u32>(37649u, u_input.d)), vec2<u32>(~571u, 1u)) <= ~26599u;
    global1 = array<vec4<f32>, 8>();
    global2 = Struct_1(_wgslsmith_f_op_f32(exp2(global2.a)), all(vec4<bool>(true, global2.b, any(vec2<bool>(false, var_1)), true)), (select(vec3<u32>(u_input.c, 4294967295u, 6174u) & global0[_wgslsmith_index_u32(15441u, 7u)], vec3<u32>(59710u, u_input.b, global2.c.x), false) >> (~select(vec3<u32>(22654u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 1867u), var_1) % vec3<u32>(32u))) >> ((vec3<u32>(global2.c.x, ~global2.c.x, _wgslsmith_mod_u32(1u, global2.c.x)) | global0[_wgslsmith_index_u32(global2.c.x, 7u)]) % vec3<u32>(32u)), -u_input.e.x);
    global0 = array<vec3<u32>, 7>();
    return Struct_1(var_0.x, true, vec3<u32>(abs(43823u), firstTrailingBit(~global2.c.x), 46770u), -2147483647i);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.e.x, global2.d), -2147483647i, -1i) << (vec3<u32>(~12571u, abs(arg_1.x), 12953u) % vec3<u32>(32u)), max(vec3<i32>(~arg_0.d, ~var_0, min(-2147483647i, global2.d)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, 2147483647i, 1i), vec3<i32>(global2.d, 0i, global2.d)), -vec3<i32>(1i, var_0, var_0), _wgslsmith_add_vec3_i32(vec3<i32>(28258i, arg_0.d, -1i), vec3<i32>(var_0, u_input.e.x, 44635i))))), _wgslsmith_mult_vec3_i32(vec3<i32>(-31344i, 94862i, 61377i | global2.d), vec3<i32>(_wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -1i, -19453i, 2147483647i), vec4<i32>(arg_0.d, -55132i, global2.d, 735i))), global2.d, 1i)));
    var var_2 = Struct_3(Struct_2(select(vec2<bool>(true, true), vec2<bool>(!arg_0.b, global2.b), global2.b), Struct_1(1103f, all(vec3<bool>(true, global2.b, false)), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.zy, global2.c.xz), 1u, arg_0.c.x | 11498u), 54161i), func_2(), !select(!vec4<bool>(true, true, global2.b, true), select(vec4<bool>(arg_0.b, arg_0.b, true, global2.b), vec4<bool>(arg_0.b, arg_0.b, global2.b, arg_0.b), vec4<bool>(true, false, false, true)), vec4<bool>(global2.b, true, arg_0.b, true))), vec3<f32>(global2.a, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - 1933f))), ~(~((vec4<u32>(arg_0.c.x, global2.c.x, 15611u, 32745u) << (vec4<u32>(global2.c.x, global2.c.x, 4294967295u, arg_1.x) % vec4<u32>(32u))) >> (vec4<u32>(arg_1.x, arg_1.x, 33362u, global2.c.x) % vec4<u32>(32u)))), (_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 43321i, 5753i), vec3<i32>(-1i, 9974i, 0i)), vec3<i32>(var_0, 0i, arg_0.d)) << (~(arg_0.c.x ^ arg_1.x) % 32u)) | _wgslsmith_clamp_i32(global2.d, reverseBits(_wgslsmith_mod_i32(u_input.e.x, 0i)), firstLeadingBit(_wgslsmith_mult_i32(2147483647i, var_0))), firstLeadingBit(min(arg_0.c.x, 19768u)));
    var_2 = Struct_3(Struct_2(var_2.a.a, func_2(), var_2.a.b, select(var_2.a.d, var_2.a.d, !all(vec4<bool>(false, var_2.a.c.b, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.b * _wgslsmith_f_op_vec3_f32(var_2.b + vec3<f32>(arg_0.a, global2.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(-var_2.b), func_2().b == true))), var_2.c, i32(-1i) * -61711i, ~arg_1.x);
    let var_3 = _wgslsmith_f_op_f32(-arg_0.a);
    return arg_0;
}

fn func_1() -> bool {
    let var_0 = 1855f;
    global2 = func_3(func_2(), ~select(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(1u, 7u)], vec3<u32>(0u, 32690u, u_input.d)), global0[_wgslsmith_index_u32(0u, 7u)]), select(vec3<u32>(4294967295u, u_input.b, 1u), global2.c, !global2.b), false));
    let var_1 = Struct_1(global2.a, all(select(select(!vec3<bool>(false, global2.b, global2.b), select(vec3<bool>(global2.b, true, global2.b), vec3<bool>(global2.b, false, false), false), !vec3<bool>(global2.b, global2.b, true)), vec3<bool>(true, global2.b | false, !global2.b), !select(false, false, global2.b))), vec3<u32>(25159u, _wgslsmith_mult_u32(101431u | u_input.a, u_input.d) & ~0u, 4294967295u), i32(-1i) * -1107i);
    let var_2 = ~(~(-u_input.e.x));
    let var_3 = -2147483647i;
    return !(!global2.b) & global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(~countOneBits(_wgslsmith_add_u32(u_input.b, 30162u)), max(1u, ~u_input.c) | abs(firstTrailingBit(u_input.c))), global2.c.x, global2.c.x, ~u_input.b);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-global2.a)), select(true & all(!vec3<bool>(false, global2.b, global2.b)), true || func_1(), any(select(!vec3<bool>(global2.b, false, global2.b), select(vec3<bool>(global2.b, false, global2.b), vec3<bool>(global2.b, false, false), false), global2.b))), vec3<u32>(u_input.a, global2.c.x << (var_0.x % 32u), _wgslsmith_add_u32(u_input.c, _wgslsmith_add_u32(u_input.b << (1u % 32u), 10210u))), countOneBits(~(-(global2.d ^ -1i))));
    var var_2 = Struct_3(Struct_2(select(vec2<bool>(any(vec3<bool>(true, false, false)), false), select(!vec2<bool>(true, global2.b), select(vec2<bool>(global2.b, var_1.b), vec2<bool>(false, true), false), var_1.b), 1u != _wgslsmith_mod_u32(u_input.c, 16988u)), var_1, var_1, vec4<bool>(func_3(func_2(), vec3<u32>(var_0.x, 1u, var_1.c.x)).b, var_1.b, any(vec2<bool>(global2.b, true)), any(!vec2<bool>(global2.b, var_1.b)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, -1202f, global2.a), vec3<f32>(global2.a, 131f, -1008f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.a, global2.a, global2.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, var_1.a, var_1.a), vec3<f32>(global2.a, global2.a, global2.a))))), true)), vec4<u32>(reverseBits(var_1.c.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, var_1.c.x), firstLeadingBit(var_0.x) << (~u_input.d % 32u), firstTrailingBit(1u)), _wgslsmith_mult_u32(max(1u, global2.c.x) & ~var_0.x, select(~u_input.b, global2.c.x, true | var_1.b)), ~(1u >> (1u % 32u))), select(~12162i, global2.d, global2.b), u_input.c);
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.b.x)), _wgslsmith_f_op_f32(-var_2.a.c.a), all(var_2.a.a))), -866f, var_2.a.c.a) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-291f, func_3(var_2.a.b, var_2.c.xzx).a, -1373f), _wgslsmith_f_op_vec3_f32(sign(var_2.b))))), var_2.c, reverseBits(u_input.e.x & _wgslsmith_div_i32(u_input.e.x, 0i)) | func_3(Struct_1(-1000f, var_1.a > 1452f, ~vec3<u32>(var_1.c.x, u_input.b, var_0.x), i32(-1i) * -8314i), ~vec3<u32>(4294967295u, var_2.a.b.c.x, var_0.x)).d, var_1.c.x);
    let var_3 = Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(var_2.b))))), reverseBits(vec4<u32>(func_3(var_1, vec3<u32>(var_0.x, 41720u, var_2.e)).c.x, select(var_0.x, var_0.x, all(var_2.a.d.zyx)), _wgslsmith_sub_u32(reverseBits(var_2.e), 1u ^ var_2.a.b.c.x), ~(~global2.c.x))), var_2.d, global2.c.x);
    let var_4 = var_2.a.b.c.x ^ 52968u;
    var var_5 = Struct_2(select(!select(vec2<bool>(var_2.a.a.x, var_3.a.b.b), vec2<bool>(false, false), var_3.a.d.wz), select(!(!var_3.a.a), select(!var_3.a.d.zx, select(var_2.a.a, vec2<bool>(false, true), var_3.a.d.x), var_1.b), !(!var_3.a.a)), func_2().b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(-351f)))), false, reverseBits(firstLeadingBit(var_3.a.b.c)), 7779i), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-799f + var_3.b.x), -503f))), !global2.b, global2.c, _wgslsmith_sub_i32(-(i32(-1i) * -5732i), _wgslsmith_dot_vec2_i32(u_input.e ^ u_input.e, vec2<i32>(var_2.a.c.d, -2147483647i)))), var_2.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.d >> ((u_input.b & 0u) % 32u), var_1.d), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(37966i, 47676i), vec2<i32>(16257i, 1i)), -u_input.e), -(~vec2<i32>(u_input.e.x, var_5.b.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f)), _wgslsmith_mod_vec3_u32(firstLeadingBit(~max(global0[_wgslsmith_index_u32(var_0.x, 7u)], var_2.c.yyx)), select(~(vec3<u32>(11683u, global2.c.x, 13046u) >> (var_0.yyz % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(var_5.b.c.x, var_2.a.c.c.x, 21541u)), select(select(vec3<bool>(var_3.a.c.b, true, global2.b), vec3<bool>(var_5.d.x, false, true), vec3<bool>(var_1.b, false, true)), var_2.a.d.wzy, all(var_3.a.d)))));
}

