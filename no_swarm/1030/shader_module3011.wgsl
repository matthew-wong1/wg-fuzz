struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    var var_1 = -7228i;
    var var_2 = arg_1.wyw;
    var_2 = arg_1.xyw;
    let var_3 = !arg_1.xxz;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(firstLeadingBit(arg_2.a), reverseBits(abs(var_0.c.c.x)), 37211u, arg_0.a)), select(~arg_2.c.x, 47261u, true));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(1u, global0.x, vec2<u32>(~max(func_3(Struct_1(0u, global0.x, vec2<u32>(0u, 0u), vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec3<i32>(-11212i, global0.x, -27947i)), vec4<bool>(arg_0.x, true, arg_0.x, false), Struct_1(0u, global0.x, vec2<u32>(0u, 0u), u_input.c.yxx, u_input.c.wyz), Struct_2(true, vec4<u32>(0u, 19928u, 3518u, 0u), Struct_1(0u, u_input.c.x, vec2<u32>(1u, 12116u), u_input.c.xzz, u_input.c.xwx), 1270f, Struct_1(57111u, u_input.a, vec2<u32>(79409u, 29050u), u_input.c.wxz, vec3<i32>(global0.x, u_input.b.x, u_input.c.x)))), reverseBits(2340u)), 818u), select(-(vec3<i32>(-1i) * -vec3<i32>(global0.x, u_input.a, u_input.c.x)), u_input.c.yyy, arg_0), vec3<i32>(-1i, u_input.a, -firstLeadingBit(-1i)));
    var var_1 = Struct_1(var_0.c.x, -abs(-2147483647i), vec2<u32>(4294967295u, 85758u), u_input.c.xzz, max(select(-var_0.d, vec3<i32>(-global0.x, var_0.e.x, -2147483647i), !select(vec3<bool>(false, false, arg_0.x), arg_0, arg_0.x)), _wgslsmith_mult_vec3_i32(reverseBits(abs(u_input.c.wzx)), ~vec3<i32>(u_input.c.x, global0.x, global0.x))));
    let var_2 = 6040u;
    let var_3 = Struct_2(all(vec4<bool>(!arg_0.x, any(vec4<bool>(arg_0.x, true, true, false)), any(vec4<bool>(true, false, arg_0.x, arg_0.x)), select(1i != global0.x, true, true))), reverseBits(vec4<u32>(~(~11136u), var_1.c.x, var_0.c.x | _wgslsmith_div_u32(14253u, 2656u), ~_wgslsmith_mod_u32(var_2, 4294967295u))), Struct_1(_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(vec3<u32>(4294967295u, 0u, var_2))), vec3<u32>(~var_0.a, func_3(Struct_1(var_2, global0.x, var_1.c, vec3<i32>(var_1.e.x, var_0.b, 23488i), vec3<i32>(global0.x, -24392i, 0i)), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), Struct_1(4294967295u, u_input.c.x, vec2<u32>(var_1.c.x, 0u), vec3<i32>(u_input.b.x, u_input.a, 13122i), u_input.c.yyw), Struct_2(false, vec4<u32>(7419u, var_1.c.x, 28127u, var_1.a), Struct_1(82526u, -41075i, vec2<u32>(var_2, var_1.a), vec3<i32>(global0.x, 3259i, 261i), vec3<i32>(21397i, var_0.b, -2147483647i)), 1397f, Struct_1(var_0.a, -1i, vec2<u32>(var_2, var_1.a), vec3<i32>(-17212i, 19116i, -39391i), u_input.c.zyz))), ~4294967295u)), 19234i, max(firstLeadingBit(firstLeadingBit(var_0.c)), ~(var_0.c << (vec2<u32>(59471u, var_2) % vec2<u32>(32u)))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.d, ~vec3<i32>(global0.x, -3494i, 2147483647i)), -(~var_0.e)), -(vec3<i32>(-1i) * -vec3<i32>(global0.x, var_0.d.x, 32457i))), _wgslsmith_f_op_f32(sign(-529f)), Struct_1(52972u, _wgslsmith_dot_vec4_i32(~max(vec4<i32>(var_0.d.x, var_1.b, 2618i, u_input.a), vec4<i32>(35871i, -1i, 1i, 10934i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.x, 1i, -24347i, 2147483647i), u_input.c), u_input.c >> (vec4<u32>(var_2, 4294967295u, 41788u, 81826u) % vec4<u32>(32u)), arg_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2 | var_1.a, select(var_1.c.x, 29471u, arg_0.x)), ~firstTrailingBit(var_0.c), ~(~vec2<u32>(var_2, 64129u))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -2147483647i, var_1.d.x), vec4<i32>(var_1.d.x, -2147483647i, u_input.c.x, global0.x)), -1i, 1i), firstLeadingBit(countOneBits(vec3<i32>(var_0.b, var_0.b, -56632i)))), ~(~u_input.c.yyz)));
    global0 = vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b, var_3.e.e.x, -6621i, u_input.c.x), min(u_input.c, u_input.c)), max(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.d.x, -18036i), _wgslsmith_dot_vec2_i32(var_3.e.e.yx, vec2<i32>(49142i, var_3.e.e.x))), ~(-8483i))), var_1.e.x, 8851i);
    return Struct_2(!var_3.a, var_3.b, Struct_1(~(~21793u), _wgslsmith_div_i32(0i, abs(global0.x | 1i)), var_1.c, -vec3<i32>(global0.x, u_input.a, var_1.e.x), -(vec3<i32>(-1i) * -vec3<i32>(0i, 0i, var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(max(-182f, _wgslsmith_f_op_f32(-var_3.d))), var_3.a))), Struct_1(_wgslsmith_add_u32(~(~var_2), ~4294967295u), var_3.c.b, reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(91670u, var_0.c.x), vec2<u32>(var_3.b.x, 1u)), var_0.c)), countOneBits(var_1.e), var_0.d));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(!(0u <= ~select(0u, arg_1.c.c.x, true)), ~vec4<u32>(_wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x), ~arg_1.b.x, arg_1.b.x & (394u & arg_1.b.x), arg_1.b.x), func_2(select(vec3<bool>(all(vec4<bool>(arg_1.a, true, false, arg_1.a)), all(vec2<bool>(arg_1.a, true)), true), vec3<bool>(!arg_1.a, false, arg_1.a), all(vec2<bool>(arg_1.a, true)))).c, 700f, arg_1.c);
    let var_1 = arg_1.c;
    let var_2 = arg_1;
    global0 = arg_1.c.e;
    var var_3 = arg_1;
    return _wgslsmith_mod_vec3_i32(vec3<i32>(min(-5794i, u_input.a << (4294967295u % 32u)), global0.x, ((i32(-1i) * -14879i) >> (func_2(vec3<bool>(true, var_0.a, var_0.a)).b.x % 32u)) | u_input.b.x), max(vec3<i32>(-1i) * -(~var_0.e.d), countOneBits(abs(arg_1.e.e)) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.x, var_3.e.a, 0u), arg_1.b.wwy) | ~vec3<u32>(62140u, var_0.e.a, arg_1.e.a)) % vec3<u32>(32u))));
}

fn func_1() -> vec3<u32> {
    global0 = -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b.x, -u_input.b.x), _wgslsmith_mult_vec3_i32(func_4(-1i, func_2(vec3<bool>(false, true, false))), vec3<i32>(u_input.c.x >> (35910u % 32u), ~global0.x, 1i)));
    var var_0 = Struct_2(true, vec4<u32>(1u, ~1u, ~(~abs(0u)), _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(1074u, 0u, 4294967295u, 26080u))), 45629u)), func_2(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), !all(vec4<bool>(true, false, false, true)))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-812f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_f_op_f32(step(-482f, 1008f))), all(vec3<bool>(true, true, true)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1522f * _wgslsmith_f_op_f32(-777f - -1529f))))), func_2(vec3<bool>(true, func_2(vec3<bool>(true, true, true)).a, true)).c);
    var var_1 = u_input.c.x;
    var var_2 = Struct_1(var_0.e.a, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -33032i), vec2<u32>((var_0.e.a ^ var_0.e.c.x) | ~1u, 35169u), u_input.c.xzz, var_0.e.e >> (~var_0.b.wwz % vec3<u32>(32u)));
    var_2 = var_0.c;
    return _wgslsmith_div_vec3_u32(~(~_wgslsmith_sub_vec3_u32(var_0.b.wzz, vec3<u32>(var_0.e.a, 4294967295u, var_2.c.x))), ~countOneBits(select(vec3<u32>(29185u, 50924u, 0u), ~var_0.b.wwz, var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 23519i;
    let var_1 = vec3<bool>(true, !all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true)));
    global0 = vec3<i32>(abs(1i), _wgslsmith_dot_vec3_i32(u_input.c.yyx, ~(-u_input.c.zyw) << (_wgslsmith_clamp_vec3_u32(func_1(), vec3<u32>(20410u, 37744u, 4294967295u), ~vec3<u32>(1u, 4294967295u, 51212u)) % vec3<u32>(32u))), ~(~reverseBits(-45301i)));
    let var_2 = Struct_2(false, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 14549u, 74499u), vec3<u32>(0u, 27635u, 0u), vec3<u32>(62066u, 30044u, 70975u)), ~vec3<u32>(59348u, 16601u, 4294967295u))), func_1().x, _wgslsmith_add_u32(~reverseBits(4294967295u), 1u), _wgslsmith_sub_u32(11096u, ~(~8071u))), Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(8256u, 1699u), vec2<u32>(1u, 10587u)), vec2<u32>(20308u, 5815u)), 0u), -24125i, reverseBits(countOneBits(~vec2<u32>(1u, 4294967295u))), u_input.c.wzz, ~vec3<i32>(func_2(var_1).c.e.x, u_input.a, abs(var_0))), _wgslsmith_f_op_f32(f32(-1f) * -831f), func_2(!vec3<bool>(!var_1.x, var_1.x || var_1.x, all(var_1))).e);
    let var_3 = 609f;
    let var_4 = var_2.c.c;
    let var_5 = Struct_1(46169u, ~(-_wgslsmith_mult_i32(-var_2.c.d.x, _wgslsmith_sub_i32(global0.x, u_input.c.x))), var_2.c.c, firstTrailingBit(firstTrailingBit(vec3<i32>(7101i, global0.x, 35020i))) << (var_2.b.xzx % vec3<u32>(32u)), reverseBits(~(vec3<i32>(84169i, var_0, var_0) | select(vec3<i32>(-2147483647i, var_0, var_2.c.b), vec3<i32>(var_2.c.d.x, 0i, 6865i), false))));
    var var_6 = reverseBits(var_2.b.zxy ^ select(~var_2.b.wxx, firstLeadingBit(vec3<u32>(var_5.a, 0u, 36783u)), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(_wgslsmith_mod_u32(firstTrailingBit(var_2.b.x), 4294967295u)), 90525u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_6.x, 1u, var_6.x), vec3<u32>(1u, 66681u, 48604u)) & (1u & var_4.x))));
}

