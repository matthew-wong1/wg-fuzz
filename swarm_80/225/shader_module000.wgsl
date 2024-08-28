struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<i32>(4298i, 9234i, 1i, 0i)), Struct_2(vec4<i32>(0i, 43605i, 18120i, i32(-2147483648))), Struct_2(vec4<i32>(7786i, 72538i, 0i, 0i)), Struct_2(vec4<i32>(i32(-2147483648), 7265i, -22535i, -1i)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -20307i, 5441i)), Struct_2(vec4<i32>(-32494i, 0i, 1750i, -1i)), Struct_2(vec4<i32>(1i, 1i, 15055i, -4788i)), Struct_2(vec4<i32>(1i, -25829i, -45737i, i32(-2147483648))), Struct_2(vec4<i32>(28766i, 0i, -6613i, 2147483647i)), Struct_2(vec4<i32>(-1i, 1i, 1i, 28649i)), Struct_2(vec4<i32>(2652i, 2266i, -60314i, i32(-2147483648))), Struct_2(vec4<i32>(2147483647i, 35478i, 5166i, 17082i)), Struct_2(vec4<i32>(-16853i, 1i, 69652i, 34729i)), Struct_2(vec4<i32>(2147483647i, 53780i, 2147483647i, 1i)), Struct_2(vec4<i32>(2147483647i, -40050i, -37627i, 1i)), Struct_2(vec4<i32>(-42076i, -33394i, -20679i, -1i)), Struct_2(vec4<i32>(i32(-2147483648), -84487i, i32(-2147483648), 17413i)), Struct_2(vec4<i32>(i32(-2147483648), -58690i, -10281i, 0i)), Struct_2(vec4<i32>(2147483647i, 35535i, 18117i, 0i)), Struct_2(vec4<i32>(33887i, 0i, 8648i, i32(-2147483648))), Struct_2(vec4<i32>(-17895i, -18494i, i32(-2147483648), -1i)), Struct_2(vec4<i32>(34562i, 4735i, 15513i, 1i)), Struct_2(vec4<i32>(i32(-2147483648), -17005i, 31146i, 0i)), Struct_2(vec4<i32>(1i, -25189i, -1i, 0i)), Struct_2(vec4<i32>(6891i, -22329i, 26245i, 0i)), Struct_2(vec4<i32>(45234i, 15375i, 63762i, 0i)));

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(11196u, 18222u), vec2<u32>(0u, 26210u), vec2<u32>(4294967295u, 0u), vec2<u32>(62271u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(12773u, 7407u), vec2<u32>(4294967295u, 1u), vec2<u32>(11060u, 95930u), vec2<u32>(1u, 0u), vec2<u32>(1u, 57835u), vec2<u32>(4294967295u, 71005u), vec2<u32>(32321u, 4294967295u), vec2<u32>(28671u, 29877u), vec2<u32>(31818u, 0u), vec2<u32>(4294967295u, 48208u), vec2<u32>(12113u, 1u), vec2<u32>(11680u, 72484u), vec2<u32>(4294967295u, 60350u), vec2<u32>(20302u, 1u), vec2<u32>(1u, 37913u), vec2<u32>(0u, 43499u), vec2<u32>(37750u, 6554u), vec2<u32>(7177u, 1u), vec2<u32>(60667u, 4069u), vec2<u32>(4294967295u, 56035u));

var<private> global3: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = select(-vec3<i32>(-u_input.d << (_wgslsmith_dot_vec4_u32(vec4<u32>(624u, 67370u, global0.d.x, u_input.b.x), global0.a) % 32u), abs(global0.c.x) >> (global0.a.x % 32u), global0.e), -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.x, global0.b, u_input.d) | vec3<i32>(u_input.d, global0.e, 47093i), select(vec3<i32>(-17729i, 34546i, -50822i), vec3<i32>(global0.b, 0i, 68516i), true), -vec3<i32>(u_input.d, 2147483647i, 2147483647i)), firstTrailingBit(countOneBits(vec3<i32>(u_input.d, u_input.d, global0.e)))), !vec3<bool>(false, true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))));
    var_0 = -_wgslsmith_add_vec3_i32(abs(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(61647i, -9515i, global0.c.x), vec3<i32>(global0.c.x, var_0.x, global0.e)), ~vec3<i32>(19324i, u_input.d, global0.b))), abs(-vec3<i32>(u_input.d, var_0.x, 30251i) ^ (vec3<i32>(var_0.x, -24985i, u_input.d) & vec3<i32>(10476i, global0.e, -1i))));
    global1 = array<Struct_2, 26>();
    let var_1 = vec4<f32>(1214f, 1000f, _wgslsmith_f_op_f32(round(-655f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xy) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1524f, var_1.x))))))));
    return min(~(~reverseBits(0u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, ~61843u, firstLeadingBit(global0.a.x), u_input.b.x), select(~global0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(5u, u_input.a, 66207u, global0.a.x), global0.a, vec4<u32>(u_input.e, 1u, 71232u, 0u)), var_2.x >= var_2.x)), _wgslsmith_mod_u32(global0.d.x, ~_wgslsmith_sub_u32(global0.a.x, 30242u))));
}

fn func_4(arg_0: f32, arg_1: bool) -> vec4<u32> {
    let var_0 = vec3<i32>(global0.e, -abs(1i), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(37948i << (u_input.e % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -6107i, -1i), vec3<i32>(-5537i, -10882i, -60953i)))), _wgslsmith_clamp_i32(global0.b, 60599i, ~1i & global0.b)));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32((reverseBits(u_input.c) << (~u_input.b.x % 32u)) & 56488u, ~(_wgslsmith_sub_u32(u_input.b.x, global0.a.x) ^ _wgslsmith_mult_u32(1u, u_input.e))), ~(~36713u));
    var var_2 = Struct_2(~(~vec4<i32>(_wgslsmith_add_i32(global0.b, 0i), global0.c.x, _wgslsmith_mult_i32(global0.e, global0.c.x), -2147483647i >> (global0.d.x % 32u))));
    return firstTrailingBit(select(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(4294967295u, global0.a.x, 28026u, 27869u)), select(vec4<u32>(39242u, u_input.e, u_input.e, u_input.b.x), global0.a, arg_1)), vec4<u32>(1u << (global0.a.x % 32u), ~func_3(), 4294967295u, u_input.a), _wgslsmith_f_op_f32(265f + arg_0) > _wgslsmith_f_op_f32(f32(-1f) * -1235f)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32) -> vec4<i32> {
    global0 = Struct_1(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1578f, 1144f) - 941f) - _wgslsmith_f_op_f32(f32(-1f) * -462f)), select(~0u != func_3(), true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), _wgslsmith_div_i32(u_input.d, -_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, 1i, -73933i, -23391i), -vec4<i32>(u_input.d, -3712i, -26333i, 43140i))), vec2<i32>(~global0.e, max(-2147483647i, global0.c.x)), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(57929u, global0.d.x), func_4(758f, false).xx), ~global0.d), -(~(-(global0.e | -27795i))));
    var var_0 = !(-_wgslsmith_clamp_i32(u_input.d, global0.e, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, -1i, global0.b), vec3<i32>(u_input.d, u_input.d, 15563i))) <= (i32(-1i) * -2147483647i));
    let var_1 = vec3<bool>(!(!any(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)), !(4294967295u >= arg_0));
    let var_2 = _wgslsmith_add_u32(65134u, ~(77655u | u_input.a));
    var var_3 = vec3<i32>(u_input.d, -countOneBits(u_input.d), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 8414i, -1i, 1i), ~vec4<i32>(u_input.d, -1i, -31969i, u_input.d)), -global0.c.x)) & ~(~vec3<i32>(global0.b, 0i, global0.b));
    return -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~countOneBits(vec4<i32>(u_input.d, -4196i, -21967i, u_input.d)), firstLeadingBit(~vec4<i32>(global0.e, global0.c.x, 6762i, global0.c.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i) << (global0.a % vec4<u32>(32u)), vec4<i32>(1i, var_3.x, -36129i, -1i)), -(~vec4<i32>(global0.c.x, global0.e, global0.e, 0i)), -abs(vec4<i32>(global0.e, var_3.x, -93617i, 2147483647i))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(func_2(4294967295u, ~(~u_input.c), ~global0.a.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_3.a.x, 1i, 0i), ~vec4<i32>(-56313i, 12570i, 0i, arg_2))), vec4<i32>(-2147483647i, ~firstLeadingBit(u_input.d), max(~(-30842i), arg_2), u_input.d), select((arg_3.a ^ ~arg_3.a) | countOneBits(~arg_3.a), select(arg_3.a, _wgslsmith_mult_vec4_i32(arg_3.a, arg_3.a), -7367i > _wgslsmith_dot_vec2_i32(arg_3.a.zx, vec2<i32>(-1i, -57302i))), !any(vec3<bool>(true, true, true))));
    global0 = Struct_1(vec4<u32>(global0.a.x, ~(~1u), ~1u, 12174u), var_0.x, _wgslsmith_sub_vec2_i32(-(~vec2<i32>(var_0.x, arg_3.a.x)), select(global0.c, arg_3.a.yz, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))) | vec2<i32>(~arg_3.a.x, _wgslsmith_sub_i32(u_input.d, firstTrailingBit(arg_2))), firstTrailingBit(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, global0.d.x), vec2<u32>(u_input.e, global0.a.x)))), 0i);
    var var_1 = Struct_1(~global0.a, countOneBits(_wgslsmith_dot_vec3_i32(var_0.yyw, vec3<i32>(reverseBits(-33662i), 35392i, ~arg_3.a.x))), min(vec2<i32>(-1i) * -vec2<i32>(arg_3.a.x, var_0.x), -var_0.xx), ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(919u, u_input.b.x), 25u)], global0.b >> (_wgslsmith_mod_u32(~arg_0.x << (countOneBits(65615u) % 32u), ~u_input.e) % 32u));
    let var_2 = 1644f;
    global2 = array<vec2<u32>, 25>();
    return vec4<u32>(firstTrailingBit(~firstTrailingBit(7157u)), 91306u, 1u, select(global0.a.x, global0.d.x | 61782u, any(vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 51709u, arg_2.d.x, ~0u), arg_2.a), 7534i, -vec2<i32>(global0.c.x, -arg_2.b), global2[_wgslsmith_index_u32(85294u, 25u)], ~global0.e);
    global1 = array<Struct_2, 26>();
    let var_1 = Struct_2(countOneBits(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -10195i, -2147483647i, var_0.b), countOneBits(vec4<i32>(1i, -1i, 2147483647i, -53698i)), vec4<i32>(global0.c.x, var_0.e, var_0.e, 1i)))));
    global2 = array<vec2<u32>, 25>();
    global0 = Struct_1(~vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.a, _wgslsmith_sub_vec4_u32(var_0.a, var_0.a)), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.a), global0.d.x), var_0.d.x, func_1(vec3<u32>(44230u, 0u, 4294967295u), _wgslsmith_f_op_f32(abs(-911f)), ~(-83285i), var_1).x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.d, -46512i)), -(var_1.a.yx ^ vec2<i32>(var_0.e, 2147483647i))), i32(-1i) * -21631i), abs(global0.c), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.d.x, 1u) & arg_2.d, vec2<u32>(reverseBits(u_input.c), arg_2.d.x | 4294967295u))), 1i);
    return global1[_wgslsmith_index_u32((~abs(14740u << (u_input.a % 32u)) | 20397u) << (var_0.d.x % 32u), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(-22659i, ~(-41449i), true);
    let var_1 = global1[_wgslsmith_index_u32(global0.d.x, 26u)];
    global2 = array<vec2<u32>, 25>();
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2181f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1217f - 429f), 449f))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-223f, _wgslsmith_div_f32(-2248f, -662f), true)), _wgslsmith_div_f32(-798f, _wgslsmith_div_f32(-1095f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-748f, -583f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-773f, -103f)))))));
    var var_4 = var_3 < 138f;
    var var_5 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), true, Struct_1(func_1(global0.a.wyx, var_3, -global0.b, global1[_wgslsmith_index_u32(1u, 26u)]), min(~(-2147483647i), -1i), ((var_1.a.xz ^ var_1.a.xy) | -global0.c) ^ func_2(u_input.c, ~91367u, firstTrailingBit(0u)).zz, vec2<u32>(4294967295u, abs(abs(4294967295u))), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.a.xy, global0.c)) ^ abs(1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 1405f)));
    let var_6 = vec3<bool>(all(vec2<bool>(false, true)) && (min(-21637i, select(40475i, var_1.a.x, true)) <= countOneBits(global0.e & var_1.a.x)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec2<bool>(true, true))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(var_1.a, ~vec4<i32>(~15868i, _wgslsmith_mod_i32(var_1.a.x, var_0), -11156i | var_1.a.x, max(var_1.a.x, -31933i))), 250f);
}

