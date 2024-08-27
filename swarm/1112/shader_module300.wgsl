struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(2147483647i, -44399i), vec2<i32>(0i, 6384i), vec2<i32>(1i, 1i), vec2<i32>(-355i, 2147483647i), vec2<i32>(-2101i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(49942i, -30704i), vec2<i32>(-38856i, -1i), vec2<i32>(i32(-2147483648), -44754i), vec2<i32>(i32(-2147483648), 5516i), vec2<i32>(14329i, -39230i), vec2<i32>(1i, -54077i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-18655i, -65274i), vec2<i32>(18123i, -69023i));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(0i, 0i, i32(-2147483648)), 1i, 7177u, 19550u);

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec3<bool>(true, true, true), -1000f, Struct_1(vec3<i32>(0i, 31732i, -32207i), 51624i, 4294967295u, 17849u), vec2<i32>(9466i, 1i)), Struct_3(vec3<bool>(true, true, true), 760f, Struct_1(vec3<i32>(41536i, i32(-2147483648), -18964i), i32(-2147483648), 19515u, 64911u), vec2<i32>(i32(-2147483648), 1381i)), Struct_3(vec3<bool>(false, false, true), 834f, Struct_1(vec3<i32>(2147483647i, 7876i, 0i), -19932i, 13143u, 1u), vec2<i32>(3751i, 2147483647i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = abs(global1.a.x);
    let var_1 = Struct_2(Struct_1(~vec3<i32>(_wgslsmith_clamp_i32(4102i, 2147483647i, u_input.c.x), reverseBits(global1.a.x), 1i), abs(var_0), ~0u, _wgslsmith_mult_u32(4294967295u, 0u)));
    global1 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_i32(max(_wgslsmith_clamp_vec3_i32(arg_2.zwz, arg_2.xyy, vec3<i32>(u_input.d.x, var_0, arg_2.x)), vec3<i32>(0i, 15177i, 14343i)), u_input.a.zwx ^ _wgslsmith_div_vec3_i32(u_input.a.wxz, u_input.a.xwz), _wgslsmith_sub_vec3_i32(select(var_1.a.a, global1.a, arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(-3409i, arg_2.x, 0i), global1.a)))), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0 & 23942i, reverseBits(var_0), _wgslsmith_dot_vec2_i32(global1.a.yx, arg_2.xy), -var_1.a.b), ~min(vec4<i32>(2147483647i, arg_2.x, global1.b, -16371i), arg_2 >> (vec4<u32>(global1.d, 94216u, 8756u, u_input.b) % vec4<u32>(32u)))), var_1.a.d, var_1.a.d);
    global1 = Struct_1(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_2.x & var_0, global1.a.x, 37730i << (var_1.a.c % 32u)), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(39682i, global1.b, 1i), abs(arg_2.zzz)))), ~(-149i), global1.c << (~var_1.a.d % 32u), 0u);
    return ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(arg_2, vec4<i32>(12572i, 36079i, 55110i, -2147483647i)), firstLeadingBit(vec4<i32>(var_0, 1i, var_0, global1.a.x)) | arg_2), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(global1.b, 0i, 6675i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0, -2925i, u_input.d.x), vec3<i32>(global1.b, -1i, 52359i))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.a.x, arg_2.x, -28530i), vec3<i32>(global1.a.x, var_1.a.b, -1929i)), -arg_2.zzw)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(func_3(vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global1.d), vec2<u32>(global1.d, u_input.b) | vec2<u32>(33182u, 1u)), ~global1.d), -((vec4<i32>(-32857i, -2147483647i, 0i, u_input.d.x) << (vec4<u32>(17284u, 0u, global1.c, 47556u) % vec4<u32>(32u))) << (~vec4<u32>(arg_0.c, u_input.b, 0u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(sign(-1000f)) < _wgslsmith_f_op_f32(trunc(233f))), 0i);
    var var_1 = Struct_3(vec3<bool>(true, true, true), -1071f, Struct_1(max(firstLeadingBit(vec3<i32>(u_input.c.x, u_input.a.x, global1.b) ^ arg_0.a), min(-vec3<i32>(2147483647i, arg_0.a.x, -32602i), ~u_input.a.yww)), _wgslsmith_dot_vec2_i32(firstTrailingBit(global1.a.zy >> (vec2<u32>(1u, global1.d) % vec2<u32>(32u))), u_input.d), firstTrailingBit(u_input.b << ((u_input.b << (4294967295u % 32u)) % 32u)), ~u_input.b), -vec2<i32>(-(~arg_0.a.x), arg_0.a.x | firstLeadingBit(u_input.c.x)));
    global0 = array<vec2<i32>, 16>();
    var_0 = countOneBits(arg_0.a.x);
    let var_2 = Struct_2(arg_0);
    return Struct_1(countOneBits(u_input.a.wxz), u_input.c.x & global1.b, max(~abs(reverseBits(global1.d)), abs(u_input.b >> ((u_input.b >> (44657u % 32u)) % 32u))), abs(var_1.c.d) << ((~arg_0.c | min(_wgslsmith_div_u32(global1.c, 36008u), var_2.a.d)) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = firstTrailingBit(0u << (~(52864u ^ (arg_0.d >> (u_input.b % 32u))) % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -699f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) - _wgslsmith_f_op_f32(378f + arg_2)) * _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 + arg_2), arg_2))))));
    let var_2 = global2[_wgslsmith_index_u32(~30175u, 3u)];
    let var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(min(firstTrailingBit(vec3<i32>(global1.a.x, arg_0.a.x, arg_0.b)), vec3<i32>(0i >> (0u % 32u), _wgslsmith_add_i32(global1.a.x, var_2.c.b), countOneBits(1i))), countOneBits(_wgslsmith_add_vec3_i32(select(vec3<i32>(-2147483647i, -10360i, 2147483647i), vec3<i32>(arg_1, global1.a.x, u_input.a.x), var_2.a), -vec3<i32>(u_input.a.x, global1.a.x, var_2.d.x))), ~vec3<i32>(-1i, 1i, min(35813i, 2147483647i))), ~(-global1.a.x >> (reverseBits(arg_0.d) % 32u)), _wgslsmith_mult_u32(firstTrailingBit(abs(max(0u, 20374u))), global1.d), 4294967295u);
    return func_2(var_3);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~vec2<u32>(0u, _wgslsmith_div_u32(~global1.c, select(arg_0.a.c, 1u, true))) | (vec2<u32>(global1.d, 1u) >> (vec2<u32>(4294967295u & ~global1.d, _wgslsmith_add_u32(~u_input.b, 4294967295u)) % vec2<u32>(32u)));
    global0 = array<vec2<i32>, 16>();
    var var_1 = vec3<bool>(true, true, true);
    var_1 = !select(select(select(select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, true)), vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(!var_1.x, any(vec3<bool>(false, var_1.x, var_1.x)), var_1.x), select(var_1.x, var_1.x, var_1.x)), select(select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, false), var_1.x), !vec3<bool>(var_1.x, var_1.x, false), all(vec3<bool>(var_1.x, false, false))), !vec3<bool>(true, var_1.x, true), !(!vec3<bool>(var_1.x, var_1.x, false))), vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, var_1.x));
    var var_2 = true;
    return Struct_2(Struct_1(~min(global1.a, global1.a) >> (vec3<u32>(arg_0.a.c, abs(0u), ~53175u) % vec3<u32>(32u)), -_wgslsmith_dot_vec3_i32(select(arg_0.a.a, vec3<i32>(arg_0.a.b, 1i, u_input.c.x), true), vec3<i32>(global1.a.x, arg_0.a.a.x, 0i)), ~_wgslsmith_mod_u32(~77740u, _wgslsmith_sub_u32(arg_0.a.d, 9920u)), _wgslsmith_clamp_u32(~1u, abs(~global1.d), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1938f));
    global1 = Struct_1(u_input.a.yyy, abs(max(_wgslsmith_clamp_i32(firstLeadingBit(12838i), ~2147483647i, u_input.d.x), ~u_input.c.x)), 73714u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, u_input.b, global1.d, ~65244u) << (_wgslsmith_div_vec4_u32(vec4<u32>(31424u, u_input.b, global1.c, global1.c), vec4<u32>(38401u, u_input.b, global1.c, 32868u) ^ vec4<u32>(u_input.b, u_input.b, 66164u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(60228u, global1.c, 32835u << (u_input.b % 32u), abs(_wgslsmith_mod_u32(1u, u_input.b)))));
    var var_1 = reverseBits(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -881f)));
    let var_3 = func_4(Struct_2(func_1(Struct_1(global1.a | vec3<i32>(global1.a.x, global1.b, 11798i), ~global1.b, u_input.b, abs(7579u)), _wgslsmith_dot_vec4_i32(-u_input.a, ~vec4<i32>(global1.a.x, global1.a.x, u_input.a.x, global1.b)), var_2)));
    let var_4 = select(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(any(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), true), vec2<bool>(select(var_2 >= 199f, true, select(false, false, false)) | true, any(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(false, true))))), all(vec4<bool>(select(true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)))));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<u32>(_wgslsmith_sub_u32(global1.c, 1u), 0u, ~1u)), vec3<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_3.a.c, 16536u, 5187u), vec4<u32>(10102u, 34569u, u_input.b, 11381u)) ^ _wgslsmith_mult_u32(global1.d, 2556u)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_3.a.c, 28204u), var_3.a.d), firstLeadingBit(~26343u)), ~(-2147483647i), reverseBits(global1.b));
}

