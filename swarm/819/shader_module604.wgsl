struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = arg_1;
    global0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(2711f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1649f)) - -678f));
    var var_2 = vec4<u32>(~38240u >> (1u % 32u), ~(~(~arg_1.a)) | _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.a), u_input.b.xz), abs(abs(u_input.b.xz))), 18864u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(2577u & var_0.a, ~global0.a), abs(~(~1u))));
    var var_3 = countOneBits(u_input.d.xzw);
    return -reverseBits(global0.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-2710f)))))), -1451f, _wgslsmith_f_op_f32(238f * -656f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(686f, 1703f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(868f, 2929f, 1176f, 417f), vec4<f32>(-1408f, -496f, 416f, 1035f))), vec4<f32>(1f, 1f, 1f, 1f)))), select(select(select(vec4<bool>(true, false, false, arg_0.x), !vec4<bool>(true, true, arg_0.x, true), false), !select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, true, false, true)), arg_0.x), select(select(select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true))), vec4<bool>(arg_0.x, true, true, all(arg_0)), !vec4<bool>(true, arg_0.x, false, false)), any(vec2<bool>(all(vec3<bool>(true, arg_0.x, false)), arg_0.x)))));
    let var_1 = arg_2.b.x >> (~1u % 32u);
    var var_2 = arg_3;
    global0 = Struct_1(~var_2.a, vec4<i32>(_wgslsmith_clamp_i32(~countOneBits(global0.b.x), ~1i, -(~var_2.b.x)), 43285i, var_1, -var_2.b.x));
    let var_3 = ~u_input.b.zx;
    return var_2.a & 0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec3<bool> {
    let var_0 = ~vec4<u32>(_wgslsmith_sub_u32(~(~arg_1), ~58760u), 4294967295u, u_input.a & arg_1, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, u_input.d), u_input.d) & 25941u);
    global0 = Struct_1(59327u, -((abs(global0.b) >> (abs(var_0) % vec4<u32>(32u))) | max(_wgslsmith_mult_vec4_i32(global0.b, global0.b), global0.b & global0.b)));
    global0 = Struct_1(func_4(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), firstTrailingBit(firstTrailingBit(u_input.b.yw) >> (abs(u_input.d.zz) % vec2<u32>(32u))), Struct_1(arg_1, func_3(arg_0.x | -1i, Struct_1(var_0.x, vec4<i32>(0i, 2147483647i, 0i, -458i)), arg_1, select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))), Struct_1(select(_wgslsmith_clamp_u32(u_input.a, 4294967295u, arg_1), global0.a, false), vec4<i32>(-global0.b.x, ~u_input.c, func_3(-20171i, Struct_1(0u, vec4<i32>(-2147483647i, u_input.c, global0.b.x, -2147483647i)), var_0.x, vec4<bool>(false, false, false, true)).x, 19727i))), global0.b);
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~select(var_0, ~vec4<u32>(arg_1, var_0.x, 0u, 0u), vec4<bool>(true, true, true, true)), firstLeadingBit(countOneBits(vec4<u32>(var_0.x, arg_1, var_0.x, 41632u)) << (u_input.b % vec4<u32>(32u)))), -_wgslsmith_mult_vec4_i32(-global0.b, ~(-vec4<i32>(arg_0.x, -1i, u_input.c, u_input.c))));
    var_1 = Struct_1((arg_1 >> ((1u << (1u % 32u)) % 32u)) >> (86473u % 32u), firstLeadingBit(var_1.b));
    return select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), false), all(vec2<bool>(true, true)) && true), !vec3<bool>(all(vec3<bool>(true, true, true)), true, true), !any(vec2<bool>(true, true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    var var_0 = arg_1;
    var_0 = Struct_1(55347u, ~var_0.b);
    var_0 = arg_1;
    let var_1 = ~abs(abs(u_input.b.zx & u_input.d.yz));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = arg_2.xyz;
    global0 = arg_0;
    let var_1 = func_5(select(func_2(reverseBits(vec2<i32>(66966i, 1375i)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global0.a, global0.a), u_input.b.yxy)), arg_2.xzx, arg_2.wyz), arg_0);
    global0 = Struct_1(~(~var_1.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, abs(abs(-16676i)), arg_3.x, _wgslsmith_mod_i32(arg_0.b.x, func_3(var_1.b.x, Struct_1(global0.a, global0.b), var_1.a, arg_2).x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-9041i ^ var_1.b.x, reverseBits(u_input.c), -var_1.b.x, -1i), arg_0.b, ~vec4<i32>(-2147483647i, arg_0.b.x, global0.b.x, u_input.c)), ~var_1.b));
    let var_2 = arg_0;
    return Struct_1(var_1.a, ((vec4<i32>(2670i, -28836i, -10175i, arg_0.b.x) ^ (vec4<i32>(global0.b.x, 0i, -8474i, -1i) | vec4<i32>(var_2.b.x, arg_3.x, -30462i, var_1.b.x))) << (u_input.b % vec4<u32>(32u))) | arg_0.b);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = select(~u_input.b.zy, u_input.b.yw, select(vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), 43893u >= global0.a))));
    global0 = func_6(func_5(select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), func_2(vec2<i32>(28020i, global0.b.x), global0.a)), vec3<bool>(true, true, true), false), Struct_1(_wgslsmith_clamp_u32(var_0.x, 4294967295u, 1u) & firstTrailingBit(14456u), _wgslsmith_div_vec4_i32(~global0.b, global0.b))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, -1634f), _wgslsmith_div_f32(-1356f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-571f)))))), !vec4<bool>(!(global0.b.x == global0.b.x), true, true, true), func_5(vec3<bool>(all(vec2<bool>(true, true)), true, false), Struct_1(var_0.x, vec4<i32>(u_input.c | global0.b.x, global0.b.x, ~(-21347i), global0.b.x >> (24713u % 32u)))).b.xyx);
    var var_1 = u_input.d.xww;
    global0 = func_6(Struct_1(~var_0.x, func_3(u_input.c << (global0.a % 32u), Struct_1(countOneBits(0u), global0.b), _wgslsmith_mod_u32(1u, abs(4917u)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1433f), arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-265f, 563f) + -1379f)))), vec4<bool>(true, true, true, true), min(-(~vec3<i32>(1i, 16928i, u_input.c)), abs(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.c), global0.b.zyz, global0.b.xyw)))));
    let var_2 = func_2(global0.b.xw, countOneBits(49899u)).x;
    return all(!vec2<bool>(func_2(firstTrailingBit(global0.b.yx), var_1.x).x, true));
}

fn func_7(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(0u ^ _wgslsmith_clamp_u32(func_4(arg_0.yx, u_input.b.yx, func_6(Struct_1(15701u, global0.b), vec3<f32>(-166f, -345f, -1000f), vec4<bool>(false, arg_0.x, false, true), global0.b.zzz), Struct_1(u_input.d.x, vec4<i32>(-1i, 0i, 0i, -2147483647i))), 0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.a, global0.a), arg_1 >> (global0.a % 32u))), global0.b);
    global0 = Struct_1(0u, vec4<i32>(i32(-1i) * -(~57279i), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_sub_i32(-48879i, 1i)), 16764i, -_wgslsmith_dot_vec4_i32(vec4<i32>(4390i, u_input.c, u_input.c, global0.b.x), global0.b)), 11877i << (~max(0u, global0.a) % 32u), _wgslsmith_div_i32(global0.b.x, ~max(u_input.c, -10633i))));
    return func_5(func_2(_wgslsmith_clamp_vec2_i32((vec2<i32>(u_input.c, u_input.c) & global0.b.xz) & (global0.b.xx | global0.b.yy), vec2<i32>(-1i, _wgslsmith_sub_i32(1i, global0.b.x)), vec2<i32>(-1i) * -vec2<i32>(-19314i, 0i)), ~5450u), Struct_1(arg_1, firstLeadingBit(firstTrailingBit(global0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(abs(countOneBits(-u_input.c)));
    global0 = func_7(!vec3<bool>(func_1(_wgslsmith_f_op_f32(f32(-1f) * -644f)), true, true), 4308u, -278f, any(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), any(vec4<bool>(true, false, false, false)))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1459f + 2110f))));
    global0 = func_7(select(func_2(firstLeadingBit(firstLeadingBit(global0.b.zw)), ~u_input.b.x), !vec3<bool>(any(vec2<bool>(var_1, true)), true, func_2(global0.b.wz, 25015u).x), false), max(_wgslsmith_mult_u32(u_input.d.x, 1u), ~firstLeadingBit(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - _wgslsmith_div_f32(var_2, -1262f))), !any(!vec2<bool>(var_1, false)) || var_1);
    global0 = func_7(select(func_2(-_wgslsmith_mult_vec2_i32(global0.b.wy, global0.b.zx), 41417u), func_2(_wgslsmith_add_vec2_i32(~vec2<i32>(var_0, -14838i), _wgslsmith_div_vec2_i32(global0.b.wy, global0.b.xx)), ~15343u), !vec3<bool>(true, u_input.b.x >= 34631u, true)), reverseBits(~u_input.d.x), 1409f, true);
    global0 = func_6(func_5(func_2(~(vec2<i32>(-1i, 2147483647i) >> (vec2<u32>(global0.a, 40605u) % vec2<u32>(32u))), _wgslsmith_mod_u32(11232u, ~81756u)), Struct_1(func_7(vec3<bool>(true, var_1, false), u_input.b.x, -2233f, true).a & ~0u, _wgslsmith_div_vec4_i32(~vec4<i32>(var_0, u_input.c, 16603i, var_0), global0.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-492f, 1387f)) * _wgslsmith_f_op_f32(trunc(351f))), _wgslsmith_f_op_f32(round(-1101f)), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, var_2, var_2))))), !(!(!vec3<bool>(false, var_1, true))))), !select(vec4<bool>(false, var_1, any(vec2<bool>(var_1, var_1)), var_1), !select(vec4<bool>(true, true, false, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, false, true, var_1)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_1, false, var_1), !vec4<bool>(true, var_1, var_1, false))), select(vec3<i32>(1i, abs(_wgslsmith_sub_i32(var_0, -1i)), _wgslsmith_add_i32(var_0, global0.b.x) | _wgslsmith_add_i32(global0.b.x, u_input.c)), firstTrailingBit(_wgslsmith_sub_vec3_i32(global0.b.wzw, global0.b.yxw)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f) - -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(step(var_2, var_2)))), 1138f, _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -556f)))));
}

