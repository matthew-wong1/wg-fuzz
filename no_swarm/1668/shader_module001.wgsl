struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, 0i, true, vec4<i32>(-56116i, 0i, 38928i, 52788i)), Struct_1(true, i32(-2147483648), true, vec4<i32>(41707i, -5012i, 5073i, 9153i)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> bool {
    global0 = Struct_2(Struct_1(global0.b.a, -24722i, global0.b.c, max(u_input.c, global0.a.d >> (abs(vec4<u32>(4294967295u, 9234u, 4294967295u, 29086u)) % vec4<u32>(32u)))), Struct_1(global0.a.c, _wgslsmith_sub_i32(2147483647i >> (firstTrailingBit(7704u) % 32u), arg_3.x & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_3.x, 17510i, arg_2.x), arg_2)), true, firstTrailingBit(vec4<i32>(arg_0, u_input.a, 26516i, 4599i)) >> (vec4<u32>(0u, max(4294967295u, 0u), 1u, abs(17073u)) % vec4<u32>(32u))));
    var var_0 = global0.b;
    global0 = Struct_2(Struct_1(!all(select(vec3<bool>(var_0.a, var_0.a, var_0.c), vec3<bool>(var_0.a, var_0.a, global0.b.a), true)), 2147483647i, any(vec4<bool>(any(vec4<bool>(global0.a.c, var_0.a, var_0.c, var_0.c)), true, true, true)), vec4<i32>(-9715i, _wgslsmith_add_i32(-6082i, _wgslsmith_dot_vec4_i32(var_0.d, u_input.d)), 24724i, firstTrailingBit(reverseBits(arg_0)))), Struct_1(!(!any(vec2<bool>(var_0.c, global0.b.c))), -min(abs(global0.a.b), max(-1i, 2014i)), select(true, var_0.c, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, global0.b.a), vec3<bool>(true, false, global0.a.c)))), abs(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(global0.a.d, vec4<i32>(arg_3.x, arg_2.x, 2147483647i, 1i)), u_input.c))));
    let var_1 = abs(~(-_wgslsmith_sub_vec4_i32(var_0.d, u_input.c)) | -u_input.c);
    let var_2 = ~max(~(-var_1), -var_1);
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4) -> vec2<bool> {
    global0 = Struct_2(Struct_1(select(true, true, select(all(arg_1.d.xwy), true, !arg_0.x)), ~(~arg_1.a.a.b), arg_1.d.x, -_wgslsmith_mult_vec4_i32(~global0.b.d, vec4<i32>(arg_1.a.a.d.x, arg_1.a.b.d.x, 19741i, u_input.d.x))), Struct_1(any(vec4<bool>(arg_1.d.x, global0.a.a, arg_1.d.x, arg_0.x)), ~u_input.d.x, arg_0.x, vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, 2147483647i, arg_1.a.a.d.x, u_input.a))));
    let var_0 = all(vec3<bool>(global0.b.c, func_3(~countOneBits(46941i), vec2<f32>(-615f, _wgslsmith_div_f32(-225f, 269f)), vec4<i32>(_wgslsmith_sub_i32(arg_1.a.a.d.x, global0.a.b), arg_1.a.a.d.x, u_input.c.x, -arg_1.a.a.b), -u_input.c.wxz), true));
    let var_1 = Struct_3(Struct_1(true, 0i, global0.a.a, vec4<i32>(arg_1.a.a.b, u_input.c.x, -_wgslsmith_sub_i32(1i, -1i), max(select(global0.b.b, -13753i, arg_0.x), _wgslsmith_mod_i32(2147483647i, 8939i)))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_1.c.x, arg_1.b, 49967u, arg_1.b)) | vec4<u32>(1u, _wgslsmith_clamp_u32(0u, 0u, arg_1.c.x), 4294967295u, arg_1.c.x), (~vec4<u32>(arg_1.c.x, 72959u, arg_1.b, arg_1.b) << (~arg_1.c % vec4<u32>(32u))) << (vec4<u32>(arg_1.c.x, arg_1.b, 4048u, _wgslsmith_mult_u32(0u, arg_1.b)) % vec4<u32>(32u))), Struct_1(var_0, -(u_input.d.x & -u_input.b), 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.b, arg_1.c.x, arg_1.c.x), reverseBits(arg_1.c)), reverseBits(firstLeadingBit(global0.b.d ^ vec4<i32>(-34112i, u_input.a, arg_1.a.b.b, 1896i)))), Struct_1(!all(arg_1.d), -arg_1.a.b.b, true, _wgslsmith_sub_vec4_i32(global0.b.d, arg_1.a.b.d)));
    let var_2 = ~23370u;
    var var_3 = vec4<i32>(arg_1.a.a.d.x, max(-17002i, -2147483647i << ((select(56249u, 1u, global0.b.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, var_2, arg_1.c.x), var_1.b.wzx)) % 32u)), -9532i, _wgslsmith_div_i32(abs(arg_1.a.a.d.x), u_input.c.x));
    return select(vec2<bool>(global0.b.a, true), vec2<bool>(true, true), arg_0.x);
}

fn func_1() -> vec4<u32> {
    let var_0 = select(!func_2(vec2<bool>(global0.b.a, false), Struct_4(Struct_2(global0.b, global0.a), _wgslsmith_mod_u32(11924u, 96562u), select(vec4<u32>(57987u, 68039u, 4294967295u, 4294967295u), vec4<u32>(131794u, 1u, 60975u, 0u), global0.b.c), select(vec4<bool>(global0.b.c, global0.b.a, true, global0.b.a), vec4<bool>(global0.b.c, false, false, global0.b.c), true))), !(!func_2(!vec2<bool>(global0.b.c, global0.b.c), Struct_4(Struct_2(Struct_1(true, global0.b.b, global0.b.c, u_input.d), Struct_1(global0.b.a, 43326i, true, vec4<i32>(global0.a.b, 0i, 1i, 1i))), 48421u, vec4<u32>(63209u, 3127u, 0u, 64946u), vec4<bool>(true, global0.a.a, global0.a.a, false)))), !vec2<bool>(func_2(!vec2<bool>(global0.b.c, true), Struct_4(Struct_2(global0.a, global0.b), 3416u, vec4<u32>(0u, 14936u, 6915u, 28990u), vec4<bool>(global0.b.a, global0.a.a, global0.a.c, global0.b.c))).x, true));
    let var_1 = -2147483647i;
    let var_2 = ~vec2<u32>(~(~772u), _wgslsmith_sub_u32(max(~50616u, 61765u), ~select(28284u, 32231u, false)));
    global0 = Struct_2(global0.a, Struct_1(all(vec4<bool>(true, true, select(false, global0.a.a, var_0.x), !var_0.x)), abs(-3550i), !func_3(1i, vec2<f32>(228f, 866f), u_input.d ^ vec4<i32>(global0.a.b, -1i, var_1, u_input.d.x), u_input.c.zxy), vec4<i32>(reverseBits(var_1 << (var_2.x % 32u)), ~(var_1 ^ -1i), ~(u_input.d.x & u_input.c.x), min(_wgslsmith_div_i32(var_1, -110494i), u_input.b))));
    let var_3 = func_2(var_0, Struct_4(Struct_2(Struct_1(var_0.x, 0i >> (1u % 32u), all(vec4<bool>(true, true, true, true)), vec4<i32>(-2147483647i, var_1, u_input.d.x, 6247i)), global0.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, 7955u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(0u, 0u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_2.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 26375u, var_2.x, var_2.x), vec4<u32>(40016u, 94997u, 88928u, var_2.x)), vec4<u32>(3696u, var_2.x, 11162u, var_2.x)), var_2.x, ~select(var_2.x, var_2.x, global0.b.a), 1u), vec4<bool>(any(select(vec2<bool>(var_0.x, true), var_0, global0.b.c)), var_0.x | !var_0.x, -var_1 != ~global0.b.d.x, true))).x;
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, var_2.x, 0u, 18708u) << (abs(~vec4<u32>(var_2.x, var_2.x, 12950u, var_2.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_2.x, 56229u, var_2.x, 18420u), ~vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u)), vec4<u32>(abs(var_2.x), 4294967295u, select(var_2.x, 1u, false), 13642u >> (var_2.x % 32u))), select(vec4<u32>(var_2.x, var_2.x, 1u, var_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_2.x, 36452u, var_2.x), vec4<u32>(var_2.x, var_2.x, 2438u, var_2.x)), select(vec4<bool>(true, false, var_3, false), vec4<bool>(false, var_0.x, true, false), global0.a.a)) ^ vec4<u32>(36531u, min(4294967295u, var_2.x), ~104997u, reverseBits(13959u)), vec4<u32>(23598u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(4294967295u, 1u, var_2.x)) | 52619u, abs(var_2.x) << (_wgslsmith_add_u32(34638u, var_2.x) % 32u), 42240u)), _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 37183u, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 35851u, 4294967295u) ^ vec4<u32>(0u, var_2.x, var_2.x, var_2.x), ~vec4<u32>(4294967295u, 18230u, 2738u, 0u)), ~vec4<u32>(~var_2.x, 1u, var_2.x, var_2.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = select(vec2<bool>(true, global0.b.c), func_2(vec2<bool>(any(vec3<bool>(arg_2.d.c, arg_0.x, true)), ~arg_2.b.x <= 1u), Struct_4(Struct_2(global0.b, global0.a), arg_2.b.x, max(abs(vec4<u32>(7295u, arg_2.b.x, 0u, arg_2.b.x)), vec4<u32>(arg_2.b.x, arg_2.b.x, 4294967295u, arg_2.b.x)), select(!vec4<bool>(arg_0.x, arg_0.x, global0.b.a, true), vec4<bool>(false, true, global0.a.a, arg_0.x), false))), !vec2<bool>(false, !arg_0.x));
    global0 = Struct_2(global0.b, Struct_1(true, _wgslsmith_mod_i32(arg_2.d.b, 1i), arg_2.c.a, max(arg_2.d.d, arg_2.d.d)));
    let var_1 = Struct_4(Struct_2(Struct_1(true & any(vec2<bool>(false, arg_2.a.c)), 0i, !(!var_0.x), select(global0.b.d, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(74113i, -1i, global0.a.b, -11698i)), vec4<bool>(true, arg_2.c.a, global0.a.a, var_0.x))), arg_2.a), ~(~(arg_2.b.x << (select(arg_2.b.x, arg_2.b.x, true) % 32u))), arg_2.b, vec4<bool>(true, var_0.x, true, any(var_0)));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_2.b.x << (_wgslsmith_clamp_u32(var_1.b, 4294967295u, arg_2.b.x) % 32u), var_1.b), _wgslsmith_clamp_u32(_wgslsmith_add_u32(firstTrailingBit(49891u), 0u), ~arg_2.b.x | func_1().x, _wgslsmith_div_u32(var_1.c.x, arg_2.b.x) << (19610u % 32u))), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(~var_1.b, 1u), abs(vec2<u32>(0u, arg_2.b.x)))));
    let var_3 = _wgslsmith_sub_vec4_u32(~(~var_1.c) << (abs(abs(_wgslsmith_add_vec4_u32(arg_2.b, vec4<u32>(arg_2.b.x, 36228u, 18303u, 0u)))) % vec4<u32>(32u)), arg_2.b & _wgslsmith_clamp_vec4_u32(~(~arg_2.b), arg_2.b, vec4<u32>(~arg_2.b.x, select(arg_2.b.x, arg_2.b.x, global0.a.a), var_1.c.x, firstTrailingBit(1u))));
    return Struct_2(var_1.a.b, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(!(!vec2<bool>(true, global0.b.a)), ~global0.a.d.zwy, Struct_3(Struct_1(true, 1i, false, u_input.d), func_1(), global0.b, global0.a));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(1232f)), -453f, -958f, 163f);
    let var_1 = vec4<bool>(502f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1592f), true)), global0.a.a, true, global0.b.c);
    global0 = Struct_2(Struct_1(!func_4(!vec2<bool>(true, var_1.x), abs(vec3<i32>(global0.a.b, 0i, -43829i)), Struct_3(global0.a, vec4<u32>(1u, 4294967295u, 1u, 1u), Struct_1(false, -1i, true, global0.b.d), Struct_1(var_1.x, 0i, true, global0.a.d))).b.a, _wgslsmith_clamp_i32(-(~(-2147483647i)), global0.b.b, global0.b.b), func_2(var_1.wz, Struct_4(Struct_2(Struct_1(var_1.x, 0i, false, vec4<i32>(u_input.d.x, u_input.c.x, 1i, 2147483647i)), Struct_1(true, 2147483647i, var_1.x, vec4<i32>(global0.b.b, -19987i, global0.a.b, u_input.c.x))), ~0u, vec4<u32>(1u, 20768u, 1u, 0u), var_1)).x, ~_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(2784i, global0.b.b, u_input.b, u_input.d.x))), func_4(vec2<bool>(all(func_2(var_1.zy, Struct_4(Struct_2(global0.a, Struct_1(global0.a.c, -1i, true, global0.a.d)), 1u, vec4<u32>(2484u, 51977u, 31999u, 12838u), vec4<bool>(true, global0.a.a, false, var_1.x)))), true), vec3<i32>(-1i, -u_input.a, (u_input.d.x | global0.b.b) << (~11399u % 32u)), Struct_3(Struct_1(true, select(34535i, global0.b.b, var_1.x), !global0.b.c, vec4<i32>(u_input.a, global0.a.d.x, global0.a.b, -46514i)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, 50231u, 50479u, 32624u)), max(vec4<u32>(33975u, 0u, 1u, 1u), vec4<u32>(20472u, 24435u, 18448u, 1u)), abs(vec4<u32>(36768u, 1u, 5846u, 62940u))), Struct_1(false, _wgslsmith_sub_i32(global0.b.b, -2147483647i), var_1.x, global0.b.d), Struct_1(var_1.x, global0.a.d.x, global0.a.c & global0.a.a, vec4<i32>(1i, global0.b.d.x, global0.a.b, -1i)))).a);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-687f, 761f, -403f, var_0.x), vec4<f32>(-1366f, -546f, 522f, var_0.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(var_0.x, -1000f), _wgslsmith_div_f32(439f, 428f), _wgslsmith_f_op_f32(var_0.x * 921f), var_0.x)))));
    let var_2 = Struct_4(Struct_2(global0.b, Struct_1(any(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, false, global0.a.c), true)), _wgslsmith_clamp_i32(abs(global0.b.d.x), ~u_input.b, abs(32027i)), true, ~max(vec4<i32>(0i, 0i, u_input.b, global0.a.d.x), global0.b.d))), 4294967295u, vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(66692u, 28237u), vec2<u32>(53877u, 0u)), ~4294967295u, any(vec3<bool>(false, var_1.x, false))), 1u, 1u, 4294967295u) % vec4<u32>(32u)), select(var_1, var_1, any(vec4<bool>(true, true, true, true))));
    let var_3 = var_1.zyw;
    let var_4 = Struct_2(Struct_1(global0.b.c, ~var_2.a.b.b, var_1.x, _wgslsmith_clamp_vec4_i32(-var_2.a.b.d, firstLeadingBit(u_input.c), vec4<i32>(-1i, global0.a.b, var_2.a.b.d.x, 15121i)) ^ vec4<i32>(i32(-1i) * -415i, ~u_input.b, _wgslsmith_div_i32(u_input.d.x, 49036i), ~(-2147483647i))), var_2.a.a);
    let var_5 = Struct_1(var_1.x, -28850i >> (1u % 32u), true, firstTrailingBit(_wgslsmith_add_vec4_i32(func_4(!var_1.zy, vec3<i32>(-13644i, var_2.a.b.d.x, var_4.b.d.x) >> (vec3<u32>(var_2.b, 478u, var_2.c.x) % vec3<u32>(32u)), Struct_3(var_2.a.a, vec4<u32>(var_2.b, var_2.b, 0u, 743u), Struct_1(var_3.x, global0.a.b, var_2.d.x, var_2.a.b.d), var_4.a)).b.d, vec4<i32>(-1i, -1i, u_input.a, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(81353u, var_2.b, 13473u)) >> (~vec3<u32>(var_2.b, 21127u, var_2.b) % vec3<u32>(32u)), min(_wgslsmith_add_vec3_u32(var_2.c.xzy, var_2.c.zyz), ~vec3<u32>(35834u, 0u, var_2.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.c.x, var_2.c.x, var_2.b), _wgslsmith_mult_vec3_u32(vec3<u32>(25008u, var_2.b, var_2.b), vec3<u32>(var_2.b, var_2.b, var_2.b)))), _wgslsmith_sub_vec3_u32(var_2.c.xzw ^ firstLeadingBit(var_2.c.zxy), vec3<u32>(1u, 30393u, var_2.b)), select(countOneBits(vec3<u32>(var_2.c.x, var_2.c.x, var_2.b)), vec3<u32>(abs(130994u), _wgslsmith_dot_vec3_u32(var_2.c.yyx, var_2.c.xwy), var_2.c.x), true)), ~vec3<i32>(var_2.a.b.b, -9657i, var_5.d.x), ~4294967295u);
}

