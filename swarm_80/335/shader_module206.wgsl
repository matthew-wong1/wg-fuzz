struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_div_u32(0u, min(abs(u_input.b.x), ~1u)), ~19794u, abs(arg_2.b.e.x), 38630u), max(vec4<u32>(59464u | arg_1, abs(4294967295u), arg_1, arg_2.d.b.x), firstLeadingBit(~vec4<u32>(21813u, 4294967295u, arg_2.b.e.x, arg_2.a))), u_input.b.yyz, _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.b.e.x, arg_1), vec2<u32>(4294967295u, countOneBits(~4294967295u))), vec3<u32>(min(4294967295u, _wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_add_u32(u_input.b.x, 0u))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(u_input.b.x), 51555u, 1u), 0u), select(~arg_1, reverseBits(0u) & arg_1, any(vec3<bool>(true, false, false)))));
    var var_2 = Struct_2(~abs(_wgslsmith_sub_u32(var_0.d.e.x, 45085u)), var_0.b, -1000f, Struct_1(max(vec4<u32>(~u_input.b.x, 4294967295u, arg_1 ^ var_1.b.x, 1u), arg_2.b.a), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, var_0.a, u_input.b.x, 87457u), select(~arg_2.d.b, ~var_0.b.b, all(vec3<bool>(false, true, true)))), _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, arg_1, 20112u), var_1.c), var_1.c), firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.b.yx, vec2<u32>(4923u, 1u))) ^ (abs(u_input.b.zy) >> (firstLeadingBit(u_input.b.zx) % vec2<u32>(32u))), vec3<u32>(arg_1, 32319u, abs(~arg_1))), -var_0.e);
    let var_3 = arg_2;
    var_1 = var_3.d;
    return 56127u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(abs(firstTrailingBit(_wgslsmith_div_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)))), u_input.b, ~vec3<u32>(1u, u_input.b.x, 0u), vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, ~(u_input.b.x >> (4294967295u % 32u))), ~_wgslsmith_add_u32(func_3(vec2<i32>(u_input.a, u_input.a), 4294967295u, Struct_2(11811u, Struct_1(u_input.b, vec4<u32>(31432u, 30383u, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x), vec3<u32>(27326u, 24372u, u_input.b.x)), -457f, Struct_1(u_input.b, vec4<u32>(28280u, u_input.b.x, u_input.b.x, 15239u), vec3<u32>(0u, 20803u, u_input.b.x), u_input.b.zw, u_input.b.zyz), u_input.a)), 10236u)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 24607u) >> (u_input.b.x % 32u), 1u, ~u_input.b.x), select(vec3<u32>(76285u, u_input.b.x, 27981u) & ~u_input.b.xxz, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ u_input.b.zzz, min(u_input.b.zzx, vec3<u32>(u_input.b.x, u_input.b.x, 85699u))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, true, true)))));
    let var_1 = Struct_2(select(var_0.d.x, 4799u, true && any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(271f))), Struct_1(abs(~vec4<u32>(var_0.a.x, var_0.c.x, u_input.b.x, var_0.e.x)) >> (vec4<u32>(84317u, u_input.b.x, firstLeadingBit(29776u), 39824u) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_div_u32(var_0.d.x, 10528u), _wgslsmith_add_u32(0u, var_0.a.x), func_3(vec2<i32>(u_input.a, u_input.a), 18459u, Struct_2(u_input.b.x, Struct_1(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, var_0.a.x, 1u), vec3<u32>(60446u, u_input.b.x, var_0.a.x), vec2<u32>(13018u, 0u), u_input.b.zww), 1346f, Struct_1(var_0.b, var_0.b, u_input.b.xyz, u_input.b.xz, var_0.a.www), u_input.a)), 1u), var_0.b.yzw, var_0.d | _wgslsmith_add_vec2_u32(vec2<u32>(19280u, 4294967295u), ~vec2<u32>(75014u, var_0.a.x)), ~var_0.a.zzx), _wgslsmith_div_i32(~1i, 29365i));
    var var_2 = var_0;
    var var_3 = var_1;
    return Struct_1(vec4<u32>(~func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -31086i), vec2<i32>(var_1.e, 23654i)), _wgslsmith_clamp_u32(7383u, u_input.b.x, var_1.b.e.x), Struct_2(u_input.b.x, Struct_1(var_3.b.b, vec4<u32>(4294967295u, 1u, var_1.a, 47086u), vec3<u32>(var_1.b.c.x, var_3.b.d.x, var_3.a), var_2.a.xw, var_2.b.www), -358f, Struct_1(vec4<u32>(u_input.b.x, 21259u, u_input.b.x, 5514u), var_3.d.a, vec3<u32>(u_input.b.x, var_3.d.d.x, 0u), vec2<u32>(var_2.b.x, var_3.a), vec3<u32>(0u, 22116u, var_1.a)), 2796i)), 4294967295u, _wgslsmith_mod_u32(var_1.a, _wgslsmith_mod_u32(var_1.b.c.x, 4294967295u)), ~_wgslsmith_sub_u32(61302u, var_3.d.a.x) ^ var_3.d.e.x), vec4<u32>(u_input.b.x, var_3.b.b.x, abs(48457u), var_1.b.a.x), firstLeadingBit(firstTrailingBit(var_0.e)), min(firstTrailingBit(firstLeadingBit(var_2.d)), var_3.b.e.yy) ^ vec2<u32>(_wgslsmith_mod_u32(~var_2.b.x, var_3.a >> (4294967295u % 32u)), ~4294967295u), vec3<u32>(abs(1u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 0u), var_1.d.b.wyz), 5265u), 4294967295u));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = firstLeadingBit(select(_wgslsmith_clamp_vec2_u32(max(u_input.b.yz, vec2<u32>(28339u, u_input.b.x)) >> (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)), u_input.b.yz, vec2<u32>(~0u, ~34810u)), countOneBits(u_input.b.zy), true));
    return Struct_2(var_0.x >> (~(~u_input.b.x) % 32u), Struct_1(vec4<u32>(u_input.b.x ^ ~21906u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, var_0.x), 82676u), firstLeadingBit(u_input.b.x), u_input.b.x), _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, u_input.b)) ^ select(u_input.b, vec4<u32>(u_input.b.x, 1u, var_0.x, 0u) ^ u_input.b, select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true), true)), ~reverseBits(vec3<u32>(var_0.x, 0u, u_input.b.x)) << (vec3<u32>(4294967295u, _wgslsmith_div_u32(var_0.x, var_0.x), 54476u) % vec3<u32>(32u)), u_input.b.zw, u_input.b.xxw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(364f)), _wgslsmith_f_op_f32(sign(349f))))), func_2(), -2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = func_1((0i | u_input.a) >> (arg_2.d.b.x % 32u), _wgslsmith_dot_vec2_i32(countOneBits((vec2<i32>(arg_2.e, 2147483647i) ^ vec2<i32>(0i, -2147483647i)) & (vec2<i32>(1i, -5428i) & vec2<i32>(arg_2.e, u_input.a))), ~(-vec2<i32>(u_input.a, u_input.a))), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.c)))) <= arg_0.c), select(vec2<i32>(_wgslsmith_sub_i32(arg_0.e & 31256i, 0i), 43366i), _wgslsmith_mod_vec2_i32(select(abs(vec2<i32>(arg_0.e, arg_0.e)), vec2<i32>(9561i, u_input.a) >> (vec2<u32>(60402u, arg_2.d.b.x) % vec2<u32>(32u)), vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-48183i, arg_0.e), vec2<i32>(u_input.a, arg_0.e), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(u_input.a, arg_2.e), vec2<i32>(0i, 1180i)))), vec2<bool>(all(vec2<bool>(false, false)), true)));
    let var_1 = arg_0.d;
    let var_2 = !select(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), !any(vec4<bool>(true, true, false, false)), true && all(vec4<bool>(true, true, false, false))), !vec4<bool>(false, all(vec4<bool>(false, true, false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.e != arg_2.e, 0i <= arg_2.e, all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), var_0.c < -1845f)));
    let var_3 = func_1(arg_2.e, 14338i, any(select(select(var_2.xw, !var_2.xx, select(var_2.yx, vec2<bool>(false, var_2.x), var_2.zz)), var_2.xx, var_2.yx)), -(~vec2<i32>(~arg_2.e, abs(1i))));
    let var_4 = vec3<f32>(arg_0.c, arg_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(func_1(firstLeadingBit(var_3.e), u_input.a, var_2.x, select(vec2<i32>(-22621i, -2147483647i), vec2<i32>(arg_0.e, -1i), var_2.wy)).c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * -372f)))));
    return vec3<u32>(arg_2.d.c.x, u_input.b.x, func_1(~2147483647i, 1i, var_2.x, _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(arg_0.e, -2147483647i)), ~vec2<i32>(50020i, arg_2.e))).b.e.x) ^ (_wgslsmith_mod_vec3_u32(var_3.d.b.xyw, ~var_1.e) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.zyx, vec3<u32>(var_0.a, 47359u, arg_1.e.x)), vec3<u32>(min(13420u, 1u), u_input.b.x, arg_1.c.x), vec3<u32>(62402u, ~arg_2.d.d.x, 24767u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec3<i32>(-u_input.a, -u_input.a >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-13048i, u_input.a), vec2<bool>(true, false)), vec2<i32>(u_input.a, u_input.a) >> (u_input.b.ww % vec2<u32>(32u)))) & -_wgslsmith_mult_vec3_i32(-vec3<i32>(-41832i, u_input.a, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-285f, -1426f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = Struct_1(u_input.b, vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(max(u_input.b.x, min(u_input.b.x, u_input.b.x)), _wgslsmith_mult_u32(~u_input.b.x, 1u)), _wgslsmith_dot_vec2_u32(u_input.b.xz >> (u_input.b.wy % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yw, vec2<u32>(0u, u_input.b.x)), _wgslsmith_sub_vec2_u32(u_input.b.yw, vec2<u32>(17908u, 0u)))), _wgslsmith_div_u32(~_wgslsmith_mod_u32(0u, 4294967295u), ~13764u << (u_input.b.x % 32u))), ~func_4(func_1(_wgslsmith_add_i32(12047i, -2147483647i), ~var_0.x, any(vec4<bool>(var_1, var_1, var_1, var_1)), -vec2<i32>(u_input.a, var_0.x)), Struct_1(reverseBits(vec4<u32>(53848u, 58436u, u_input.b.x, u_input.b.x)), vec4<u32>(0u, u_input.b.x, 41658u, u_input.b.x), select(vec3<u32>(u_input.b.x, 43649u, 0u), u_input.b.zyy, var_1), u_input.b.yz, _wgslsmith_div_vec3_u32(u_input.b.wyw, u_input.b.wxy)), Struct_2(31009u << (u_input.b.x % 32u), Struct_1(u_input.b, vec4<u32>(61952u, 1u, u_input.b.x, 1438u), u_input.b.yzy, u_input.b.zx, vec3<u32>(u_input.b.x, 68005u, 50359u)), -1801f, Struct_1(vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x), u_input.b, vec3<u32>(u_input.b.x, 1u, 17119u), u_input.b.xw, vec3<u32>(41216u, u_input.b.x, u_input.b.x)), -u_input.a)), u_input.b.xy & vec2<u32>(6200u, 1u), _wgslsmith_sub_vec3_u32(~reverseBits(u_input.b.zxx), vec3<u32>(u_input.b.x, func_2().e.x, u_input.b.x)));
    let var_4 = Struct_2(u_input.b.x, func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, -1i, 10875i), _wgslsmith_add_vec4_i32(-vec4<i32>(38535i, u_input.a, var_0.x, 0i), ~vec4<i32>(2147483647i, -9331i, 2332i, 11174i))), _wgslsmith_dot_vec2_i32(vec2<i32>(21338i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.x), vec2<i32>(-55939i, 2147483647i))), vec2<i32>(-var_0.x, _wgslsmith_mod_i32(var_0.x, u_input.a))), true, abs(vec2<i32>(21737i, countOneBits(u_input.a)))).b, var_2, Struct_1(~vec4<u32>(5817u, var_3.d.x, 0u, ~u_input.b.x), ~(reverseBits(var_3.a) >> ((var_3.a >> (vec4<u32>(var_3.d.x, 0u, 15743u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), var_3.e, func_4(Struct_2(10309u, func_1(-2147483647i, var_0.x, true, var_0.yy).b, _wgslsmith_f_op_f32(exp2(var_2)), func_2(), -var_0.x), Struct_1(vec4<u32>(0u, var_3.b.x, u_input.b.x, var_3.c.x), func_1(var_0.x, u_input.a, true, var_0.xy).d.a, u_input.b.zyz, abs(u_input.b.yx), vec3<u32>(4294967295u, 1u, 67983u)), func_1(1i, select(var_0.x, var_0.x, var_1), any(vec3<bool>(true, false, var_1)), _wgslsmith_add_vec2_i32(var_0.yy, vec2<i32>(2147483647i, var_0.x)))).xx, abs(var_3.b.wwx)), ~(-u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(reverseBits(u_input.b.x) >> (_wgslsmith_add_u32(1u, var_4.d.a.x) % 32u), _wgslsmith_mult_u32(4294967295u, u_input.b.x)), _wgslsmith_add_u32(_wgslsmith_sub_u32(func_1(var_0.x, countOneBits(u_input.a), select(var_1, true, true), _wgslsmith_add_vec2_i32(var_0.zz, var_0.yz)).d.c.x, ~var_3.d.x & ~12379u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_3.e.x, 35228u, 4294967295u)), firstLeadingBit(vec3<u32>(0u, 0u, 7486u)))), func_1(_wgslsmith_dot_vec2_i32(-var_0.xx | countOneBits(vec2<i32>(var_0.x, var_0.x)), vec2<i32>(firstLeadingBit(var_0.x), 1i)), var_4.e, false, _wgslsmith_mult_vec2_i32(vec2<i32>(abs(2147483647i), 1i), ~max(var_0.yy, vec2<i32>(var_4.e, -1i)))).c, _wgslsmith_div_f32(-1134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1118f * var_4.c))), var_4.c);
}

