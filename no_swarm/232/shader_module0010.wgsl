struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    return -48016i;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_1(abs(u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, -162f, -416f, -1243f)) - vec4<f32>(-1000f, -699f, -1000f, 733f))))));
    let var_2 = min(abs(~(-vec4<i32>(0i, var_0.a, -4196i, -13581i))), _wgslsmith_div_vec4_i32(vec4<i32>(54208i, 17750i, -10782i, -15189i), vec4<i32>(11752i, var_0.a, -52325i, ~1i))) ^ select(~(~vec4<i32>(11764i, 1i, u_input.a.x, 23157i)), ~vec4<i32>(-2147483647i, var_0.a, ~(-1i), u_input.a.x), _wgslsmith_f_op_f32(floor(911f)) < _wgslsmith_f_op_f32(ceil(-536f)));
    let var_3 = Struct_1(1i);
    var var_4 = !(!(var_1.x < var_1.x));
    return _wgslsmith_f_op_vec3_f32(select(var_1.yxy, vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(min(var_1.x, -1146f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1017f * 1083f) + 1000f)), vec3<bool>(true, all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, any(vec2<bool>(true, true)), true, true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = Struct_3(Struct_1(func_1(arg_1.c)), arg_1.d.b, arg_1.d, Struct_2(arg_1.d.a, firstTrailingBit(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(arg_2, 25u)], 66313u)))), arg_1.e);
    global0 = array<u32, 25>();
    let var_1 = !(!(!vec3<bool>(true, true, var_0.b.x != global0[_wgslsmith_index_u32(arg_1.b.x, 25u)])));
    var var_2 = var_0.c;
    var_2 = var_0.c;
    return ~_wgslsmith_add_u32(35115u, ~var_0.b.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = arg_1.x;
    let var_1 = Struct_3(Struct_1(u_input.a.x), ~(~max(select(arg_0.b, vec3<u32>(5134u, 19285u, arg_0.b.x), false), ~arg_0.b)), arg_0, Struct_2(Struct_1(u_input.a.x), min(select(vec3<u32>(13286u, 0u, 58008u), min(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22571u, 25u)], 25u)], arg_0.b.x), arg_0.b), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(0u, 52442u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 1u, arg_0.b.x)), vec3<u32>(20006u, 27332u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_0.b.x, 25u)], 1u)))), Struct_1(-26328i));
    var var_2 = arg_0;
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(func_3(var_1.b.yx, ~(~39563u))), var_1, select(arg_0.b.x, ~1u, any(vec4<bool>(false, false, true, true)))) & ~arg_0.b.x;
    let var_4 = (!any(vec2<bool>(true, true)) != true) & all(vec3<bool>(true, true || all(vec4<bool>(true, true, false, false)), true));
    return Struct_3(Struct_1(37057i), var_2.b, Struct_2(var_2.a, select(vec3<u32>(var_1.d.b.x >> (var_1.c.b.x % 32u), ~var_2.b.x, ~0u), ~max(var_2.b, vec3<u32>(27942u, global0[_wgslsmith_index_u32(1u, 25u)], 64795u)), true & var_4)), arg_0, Struct_1(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(2147483647i, var_2.a.a, -56159i, var_1.c.a.a)), vec4<i32>(arg_0.a.a, -38064i, -21622i, u_input.a.x))));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(1u ^ ~firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 25u)])), 25u)], 25u)];
    let var_1 = !(!arg_0);
    let var_2 = Struct_3(arg_2.e, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u >> (global0[_wgslsmith_index_u32(1u, 25u)] % 32u), 4294967295u, var_0), select(reverseBits(arg_2.b), _wgslsmith_clamp_vec3_u32(arg_2.b, vec3<u32>(global0[_wgslsmith_index_u32(arg_2.b.x, 25u)], 1u, 1u), vec3<u32>(arg_2.d.b.x, 4294967295u, var_0)), vec3<bool>(true, true, true)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, arg_2.b.x, arg_2.c.b.x), vec3<u32>(arg_2.d.b.x, arg_2.d.b.x, var_0))), min(select(arg_2.b, vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)]), var_1), abs(vec3<u32>(4294967295u, 4294967295u, var_0))) ^ vec3<u32>(_wgslsmith_add_u32(65155u, global0[_wgslsmith_index_u32(var_0, 25u)]), 4294967295u, ~0u)), func_2(func_2(arg_2.d, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -2317i), u_input.a), _wgslsmith_div_i32(arg_2.c.a.a, 1i), ~arg_1.x)).c, abs(u_input.a)).c, arg_2.d, func_2(Struct_2(Struct_1(2147483647i), ~arg_2.c.b), vec3<i32>(30571i, -(-18005i >> (var_0 % 32u)), -1i)).a);
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    return func_2(Struct_2(func_2(var_2.d, ~vec3<i32>(-39881i, 0i, -38695i)).d.a, vec3<u32>(~(1u & arg_2.b.x), firstTrailingBit(15493u), firstLeadingBit(10242u))), vec3<i32>(arg_2.a.a, -6368i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(10824i, -1i, arg_1.x, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, 25050i, 16090i, u_input.a.x), vec4<i32>(-46704i, -1i, 1i, -12048i)) << (max(vec4<u32>(4294967295u, 4294967295u, 0u, 61251u), vec4<u32>(47369u, 60174u, var_0, 4294967295u)) % vec4<u32>(32u))))).c;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(abs(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, arg_0.a.a))));
    var_0 = Struct_1(~arg_0.a.a);
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, -422f, -1386f, -496f)) - vec4<f32>(757f, 748f, 245f, -757f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(2012f, -672f, -549f, 769f), vec4<f32>(670f, 711f, 556f, 423f)))))))));
    return -9168i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    var var_0 = firstTrailingBit(~firstTrailingBit(select(vec4<i32>(48404i, -33i, -38017i, u_input.a.x), vec4<i32>(1i, 27433i, u_input.a.x, 0i), true)) >> (~firstTrailingBit(select(vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 1u, 0u, 1u), vec4<u32>(72433u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14817u, 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(60106u, 25u)], 0u), true)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -43216i, countOneBits(var_0.x), u_input.a.x), vec4<i32>(_wgslsmith_add_i32(var_0.x, u_input.a.x), i32(-1i) * -43487i, func_1(Struct_2(Struct_1(-88085i), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(53996u, 25u)], 19771u))), _wgslsmith_sub_i32(var_0.x, 765i))) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(110096u, 25u)], 25u)], 13974u, 1u, global0[_wgslsmith_index_u32(38822u, 25u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 25u)], 1u)) % vec4<u32>(32u)), vec4<i32>(0i, func_6(func_5(true, ~u_input.a.yx, func_2(Struct_2(Struct_1(0i), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52886u, 25u)], 25u)])), u_input.a)), Struct_1(i32(-1i) * -21384i)), -(i32(-1i) * -2147483647i), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(0u, 4294967295u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25271u, 25u)], 25u)])).x)) - -322f), _wgslsmith_f_op_f32(abs(-1461f)), -625f, -1373f)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1504f, var_1.x, -1209f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-748f, var_1.x, -135f, var_1.x) + vec4<f32>(-715f, 594f, -888f, -1970f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -378f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.xwx);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, (countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19115u, 25u)], 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(21507u, 25u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 25u)]))) | func_5(any(vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, 37994i), vec2<i32>(var_0.x, -59897i), vec2<i32>(u_input.a.x, -1i)), Struct_3(Struct_1(u_input.a.x), vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(0u, 25u)]), Struct_2(Struct_1(-45199i), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7864u, 25u)], 25u)], 84079u, 45786u)), Struct_2(Struct_1(var_0.x), vec3<u32>(2805u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)])), Struct_1(u_input.a.x))).b.yy) >> (_wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, 10863u)), ~(~vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)));
}

