struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1879f;

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(704f, false, vec2<u32>(55112u, 27336u)), Struct_4(-1447f, true, vec2<u32>(1u, 10167u)), Struct_4(168f, true, vec2<u32>(1u, 7024u)), Struct_4(-269f, false, vec2<u32>(1u, 99424u)), Struct_4(1000f, true, vec2<u32>(3393u, 38643u)), Struct_4(-292f, false, vec2<u32>(33922u, 0u)), Struct_4(897f, true, vec2<u32>(4294967295u, 44562u)), Struct_4(175f, false, vec2<u32>(1u, 27887u)), Struct_4(1470f, false, vec2<u32>(1u, 33677u)), Struct_4(-1000f, true, vec2<u32>(0u, 0u)));

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(i32(-2147483648), -27545i), vec2<i32>(16234i, -8391i), vec2<i32>(16165i, -11782i), vec2<i32>(2147483647i, 14056i), vec2<i32>(0i, 51549i), vec2<i32>(-1i, -18958i), vec2<i32>(-22370i, -16515i), vec2<i32>(32118i, 0i), vec2<i32>(16782i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1941i, 1i), vec2<i32>(80227i, -23596i), vec2<i32>(0i, -27986i), vec2<i32>(1i, 18732i), vec2<i32>(-303i, 34865i), vec2<i32>(26676i, 7870i), vec2<i32>(-13900i, -10804i), vec2<i32>(8265i, 1i), vec2<i32>(-16203i, -46188i), vec2<i32>(2147483647i, -13595i), vec2<i32>(2147483647i, -40772i), vec2<i32>(56041i, i32(-2147483648)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(1836u), u_input.d.x, u_input.d.x, ~(4294967295u >> (1u % 32u))) & (~vec4<u32>(u_input.c.x, 1u, 51876u, u_input.c.x) >> (~_wgslsmith_add_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u))), countOneBits(u_input.c));
    let var_1 = global1[_wgslsmith_index_u32(~var_0.x, 10u)];
    let var_2 = -_wgslsmith_mult_vec3_i32(vec3<i32>(~(~38094i), -9802i, firstTrailingBit(-2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, u_input.a, 1717i), vec3<i32>(u_input.a, arg_0.x, arg_0.x) ^ vec3<i32>(0i, arg_0.x, -18262i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, -21155i), vec3<i32>(50696i, arg_0.x, -24805i)) << (~vec3<u32>(4294967295u, var_0.x, 25463u) % vec3<u32>(32u))));
    let var_3 = select(-u_input.a, -3228i, !(all(vec2<bool>(true, true)) || false));
    global2 = array<vec2<i32>, 23>();
    return var_1.a;
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = ~u_input.c;
    var var_1 = Struct_1(_wgslsmith_div_f32(-1392f, arg_1.b), min(_wgslsmith_clamp_vec3_u32(~var_0.xwz, vec3<u32>(0u, _wgslsmith_add_u32(u_input.b.x, arg_0), 5307u), abs(vec3<u32>(var_0.x, 0u, var_0.x))), vec3<u32>(_wgslsmith_mult_u32(36633u, arg_0) | 1u, arg_0, ~(var_0.x | u_input.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-365f + 1554f) + 1000f)))), var_0);
    let var_2 = vec2<i32>(arg_1.a | -max(_wgslsmith_dot_vec4_i32(vec4<i32>(34153i, u_input.a, 39568i, -2147483647i), vec4<i32>(88334i, u_input.a, arg_1.a, u_input.a)), -1i), _wgslsmith_dot_vec2_i32(min(-global2[_wgslsmith_index_u32(1u, 23u)], vec2<i32>(u_input.a, -59904i)), -global2[_wgslsmith_index_u32(4294967295u, 23u)]) & -arg_1.a);
    let var_3 = select(vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true))), true, arg_1.b >= _wgslsmith_f_op_f32(246f + _wgslsmith_f_op_f32(sign(arg_1.b)))), !select(vec3<bool>(select(true, true, false), arg_1.b == var_1.c, all(vec2<bool>(false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), false), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(true, true))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b))), var_1.c)));
    return _wgslsmith_sub_vec4_u32(~vec4<u32>(2137u, _wgslsmith_sub_u32(~4294967295u, u_input.c.x), ~24613u, 4294967295u), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_1.d.x, u_input.b.x, 37036u, u_input.b.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<u32>(1u, 30428u, var_1.b.x, 28428u)), vec4<u32>(max(31918u, 43579u), u_input.c.x, 52288u, _wgslsmith_mult_u32(arg_0, var_1.b.x))), ~(vec4<u32>(4294967295u, 1u, 1u, 1u) ^ vec4<u32>(62161u, var_0.x, 52328u, 1u))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(vec2<i32>(~arg_1, ~u_input.a) | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), global2[_wgslsmith_index_u32(12831u, 23u)], vec2<i32>(0i, -2147483647i)))), u_input.c.xyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_div_f32(arg_2, arg_2))))), u_input.c);
    global1 = array<Struct_4, 10>();
    let var_1 = _wgslsmith_mod_vec4_u32(var_0.d, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(func_3(1921u, Struct_3(0i, -854f)), u_input.c), vec4<u32>(101279u, abs(4898u), abs(var_0.d.x), 48958u)), reverseBits(_wgslsmith_div_vec4_u32(var_0.d | u_input.c, ~var_0.d))));
    global1 = array<Struct_4, 10>();
    var_0 = Struct_1(201f, vec3<u32>(_wgslsmith_div_u32(var_0.d.x, var_1.x), ~_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(var_1.x, 1u, var_0.b.x, 24129u)) << ((var_1.x | var_1.x) % 32u), 102309u), arg_2, _wgslsmith_sub_vec4_u32(vec4<u32>(~(~4294967295u), var_0.d.x, (1u ^ u_input.b.x) >> (var_1.x % 32u), var_1.x), ~_wgslsmith_mult_vec4_u32(u_input.c, var_0.d) ^ abs(abs(vec4<u32>(17650u, 63142u, var_1.x, var_0.d.x)))));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -468f, _wgslsmith_f_op_f32(func_1(true, -309i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(744f * 667f) - _wgslsmith_f_op_f32(trunc(-120f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1333f + -638f))))));
    let var_1 = !vec3<bool>(true, select(false, false, _wgslsmith_f_op_f32(var_0.x * var_0.x) == _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(-1493f + var_0.x)) >= _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_2(false, _wgslsmith_sub_vec4_i32(abs(~(~vec4<i32>(u_input.a, 2147483647i, u_input.a, -19562i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a) | max(vec4<i32>(u_input.a, -1i, 39071i, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), -abs(vec4<i32>(2147483647i, -1i, 29044i, -63160i)), ~vec4<i32>(38469i, u_input.a, u_input.a, u_input.a))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), ~u_input.d, var_0.x, _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, 56795u, u_input.b.x, u_input.b.x)), func_3(u_input.c.x, Struct_3(47275i, 231f))) << (~vec4<u32>(0u, 18645u, u_input.d.x, u_input.d.x) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(exp2(var_0.x)), vec3<u32>(u_input.d.x, ~18233u, abs(0u)) >> (~u_input.b % vec3<u32>(32u)), _wgslsmith_f_op_f32(func_1(any(vec2<bool>(var_1.x, true)), abs(-1i), 525f)), countOneBits(~vec4<u32>(6812u, u_input.c.x, 6979u, 1u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x), u_input.c))));
    let var_3 = abs(~vec2<u32>(~var_2.c.b.x, _wgslsmith_sub_u32(19102u, 3482u)));
    global2 = array<vec2<i32>, 23>();
    global0 = -171f;
    global1 = array<Struct_4, 10>();
    global1 = array<Struct_4, 10>();
    global0 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, u_input.c.xy, ~var_2.b.zyz);
}

