struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 47268i, 31715i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = Struct_3(vec4<i32>(_wgslsmith_clamp_i32(45993i, -1i, ~_wgslsmith_mult_i32(arg_2.b.c, arg_1.c.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_2.b.c, 1i & arg_0, 58326i), firstTrailingBit(-global0.x)), ~_wgslsmith_add_i32(select(global0.x, 1i, true), -global0.x), arg_2.c.x << (~(~41651u) % 32u)), true, vec3<f32>(-1129f, -744f, 330f), _wgslsmith_mult_u32(arg_1.b.b.x, _wgslsmith_div_u32(1u, ~arg_2.b.b.x)) << (6407u % 32u));
    var var_1 = !any(arg_1.b.a.wzw);
    var_1 = false;
    let var_2 = arg_2.b;
    return ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(~59773i, arg_2.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(115356i, 0i), vec2<i32>(2147483647i, var_2.c)), -arg_0), vec4<i32>(-1i) * -vec4<i32>(50322i, 2147483647i, var_0.a.x, -26445i)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    global0 = ~vec4<i32>(_wgslsmith_mod_i32(global0.x & -1i, global0.x), ~17892i, _wgslsmith_div_i32(max(-1i, 2147483647i), 65786i), max(i32(-1i) * -77852i, i32(-1i) * -4867i)) ^ _wgslsmith_clamp_vec4_i32(func_3(1i, Struct_2(true, Struct_1(vec4<bool>(false, false, false, true), u_input.a, 40737i), _wgslsmith_div_vec3_i32(global0.xzy, global0.yxz), -469f, vec2<bool>(true, true)), Struct_2(true, Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(16486u, 27253u, 806u), arg_0.x), arg_0, _wgslsmith_f_op_f32(-624f + 641f), vec2<bool>(true, true))), -select(vec4<i32>(arg_0.x, global0.x, arg_0.x, -1i), vec4<i32>(0i, -2147483647i, global0.x, arg_0.x), false) ^ vec4<i32>(abs(arg_0.x), 20664i, ~(-7769i), min(global0.x, arg_0.x)), abs(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, arg_0.x, global0.x, arg_0.x)));
    var var_0 = !((true && (true | all(vec3<bool>(true, true, true)))) && true);
    var_0 = false;
    var_0 = !all(vec2<bool>(true, true));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1619f * 158f)))));
    return Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-19106i, arg_0.x), vec2<i32>(arg_0.x, -2147483647i) & (vec2<i32>(arg_0.x, -34055i) >> (vec2<u32>(u_input.a.x, 58457u) % vec2<u32>(32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x ^ 50500i, arg_0.x, arg_0.x, -16702i), ~(~vec4<i32>(2147483647i, arg_0.x, 2147483647i, global0.x))), -(~(~arg_0.x)), arg_0.x), _wgslsmith_mod_u32(countOneBits(u_input.a.x), 4097u) <= reverseBits(~firstLeadingBit(35771u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, var_1.x))) + vec3<f32>(_wgslsmith_div_f32(945f, -100f), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), var_1.x))), abs(abs(u_input.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = abs(func_2(global0.yyw).a.wyw);
    let var_1 = 56730u;
    return max(~(~vec4<i32>(arg_0.c, abs(0i), -24296i, ~0i)), ~_wgslsmith_mod_vec4_i32(arg_2.a, vec4<i32>(-38271i, -51095i, i32(-1i) * -1i, ~arg_0.c)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global0 = func_4(Struct_1(vec4<bool>(true, true, true, true), u_input.a, abs(-35431i)), vec4<u32>(1u, _wgslsmith_mod_u32(36130u, 45370u), arg_0.x, (~arg_0.x << (firstTrailingBit(arg_0.x) % 32u)) | 55048u), func_2(global0.xzy));
    let var_0 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 26341u, 2717u, ~9632u >> (1u % 32u)), abs(abs(vec4<u32>(0u, arg_0.x, arg_0.x, 0u))) & (~vec4<u32>(arg_0.x, 10685u, 26494u, u_input.a.x) | (vec4<u32>(33579u, arg_0.x, arg_0.x, 4294967295u) & vec4<u32>(u_input.a.x, 38625u, 16817u, 0u)))));
    var var_1 = ~var_0;
    let var_2 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, false)), reverseBits(firstTrailingBit(select(min(var_1.zzz, vec3<u32>(16006u, 40621u, 44616u)), var_1.xxz & var_1.ywx, vec3<bool>(false, false, false)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, global0.x, global0.x), ~vec4<i32>(global0.x, global0.x, global0.x, 20875i)) << (var_0.x % 32u), _wgslsmith_dot_vec4_i32(func_3(global0.x, Struct_2(true, Struct_1(vec4<bool>(false, true, true, true), var_1.wzw, -2147483647i), vec3<i32>(-2147483647i, -2659i, global0.x), -343f, vec2<bool>(false, false)), Struct_2(true, Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(var_0.x, arg_0.x, 0u), global0.x), global0.xxy, -628f, vec2<bool>(true, false))), reverseBits(vec4<i32>(global0.x, global0.x, global0.x, global0.x)))));
    let var_3 = vec2<f32>(1f, 1f);
    return Struct_2(!all(!vec3<bool>(false, var_2.a.x, false)) && false, var_2, -(~select(vec3<i32>(global0.x, -16980i, global0.x), vec3<i32>(23427i, var_2.c, global0.x), vec3<bool>(false, var_2.a.x, true))) | ~vec3<i32>(select(-55551i, -2147483647i, true), global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, var_2.c, var_2.c, global0.x), vec4<i32>(1954i, 0i, -1i, var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2163f)))), !select(select(vec2<bool>(false, var_2.a.x), var_2.a.yw, all(vec2<bool>(var_2.a.x, false))), vec2<bool>(false && var_2.a.x, true), select(select(var_2.a.zx, var_2.a.yz, vec2<bool>(false, false)), vec2<bool>(true, var_2.a.x), 1032f != var_3.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> i32 {
    global0 = func_2(arg_0.c).a;
    let var_0 = vec3<u32>(~(~min(arg_0.b.b.x, 0u)), ~(~_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(0u, u_input.a.x))) | 1u, arg_0.b.b.x);
    global0 = firstTrailingBit(select((~vec4<i32>(arg_0.b.c, arg_0.b.c, -1i, arg_0.b.c) ^ vec4<i32>(-46473i, 1i, 9613i, -1i)) ^ firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 49923i, 1i, arg_0.b.c), vec4<i32>(30745i, -2147483647i, arg_0.c.x, global0.x))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(13327i, arg_0.b.c, 71361i, 13679i)) | reverseBits(vec4<i32>(global0.x, global0.x, 9169i, global0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, arg_0.b.c, 14968i, global0.x), select(vec4<i32>(-23012i, arg_0.c.x, arg_0.c.x, arg_0.b.c), vec4<i32>(-36256i, arg_0.b.c, -2147483647i, global0.x), arg_0.b.a.x))), arg_0.b.a));
    let var_1 = ~(-2147483647i);
    let var_2 = global0.yw;
    return -firstLeadingBit(func_2(~_wgslsmith_clamp_vec3_i32(vec3<i32>(19181i, var_1, global0.x), arg_0.c, global0.zzy)).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(vec4<i32>(global0.x, func_5(func_1(u_input.a.xz), vec3<f32>(1975f, -945f, -1609f), _wgslsmith_f_op_vec2_f32(vec2<f32>(532f, 708f) + vec2<f32>(136f, -1374f)), false), min(firstLeadingBit(1i), global0.x), ~1i) & _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 2147483647i, global0.x, -1i), vec4<i32>(-1i, global0.x, 52940i, global0.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -33615i, global0.x, 1i), vec4<i32>(0i, global0.x, 0i, 45085i), vec4<i32>(global0.x, 2147483647i, 2147483647i, -57741i))));
    let var_0 = global0.x;
    var var_1 = global0.wyz;
    var var_2 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(global0.yxy, firstTrailingBit(global0.yxz)), vec3<i32>(1i, 1i, 1i));
    var var_3 = 22631u;
    let var_4 = _wgslsmith_div_f32(func_2(func_3(-2147483647i, Struct_2(true, func_1(u_input.a.zz).b, vec3<i32>(-3445i, var_1.x, -2147483647i) ^ vec3<i32>(global0.x, -2147483647i, var_2.x), 795f, vec2<bool>(true, true)), Struct_2(false, Struct_1(vec4<bool>(true, false, false, false), u_input.a, -1i), global0.ywx, _wgslsmith_f_op_f32(sign(-1802f)), vec2<bool>(false, true))).wxz).c.x, _wgslsmith_f_op_f32(f32(-1f) * -1060f));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, -(~global0.xzz), vec3<f32>(var_4, _wgslsmith_div_f32(var_4, _wgslsmith_f_op_f32(-var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4)))));
}

