struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(any(vec4<bool>(arg_2, true, !any(vec4<bool>(arg_2, arg_2, false, false)), arg_2)), _wgslsmith_mod_u32(5103u, ~abs(reverseBits(u_input.b))), ~0i);
    var var_1 = var_0;
    var var_2 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~(vec2<u32>(34191u, var_0.b) ^ u_input.c), _wgslsmith_sub_vec2_u32(~u_input.c, u_input.c >> (u_input.c % vec2<u32>(32u)))), ~u_input.c);
    return var_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(arg_1, vec2<u32>(u_input.c.x, 0u), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(7206i, arg_1.c, u_input.d), vec3<i32>(arg_1.c, -1i, -2147483647i)), vec3<i32>(1i, 14492i, arg_1.c) | vec3<i32>(2147483647i, -25421i, arg_1.c)), reverseBits(~vec3<i32>(-2147483647i, u_input.d, arg_1.c)), vec3<i32>(arg_1.c, i32(-1i) * -5641i, 2147483647i)));
    var var_1 = vec4<u32>(var_0.b.x, u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.b, abs(1u)), u_input.c.x);
    var_1 = select(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, _wgslsmith_div_u32(var_1.x, u_input.b), var_0.b.x, _wgslsmith_div_u32(var_0.b.x, 95326u)), select(vec4<u32>(28462u, var_0.a.b, 18848u, 5683u), firstTrailingBit(vec4<u32>(var_0.b.x, var_1.x, var_0.a.b, arg_1.b)), !vec4<bool>(true, arg_0.x, true, arg_1.a)), arg_1.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.a.b, 1u, arg_1.b, 0u), vec4<u32>(59244u, arg_1.b, arg_1.b, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, 50414u, var_0.b.x, 5557u), vec4<u32>(var_1.x, u_input.b, 10141u, 47211u))), countOneBits(vec4<u32>(8068u, 50497u, u_input.c.x, 1u) >> (vec4<u32>(u_input.c.x, arg_1.b, 1u, arg_1.b) % vec4<u32>(32u))), min(~vec4<u32>(1u, 21076u, var_0.b.x, u_input.c.x), vec4<u32>(4294967295u, 47364u, 1u, u_input.c.x)))), ~max(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 96542u, var_0.a.b, var_0.a.b), vec4<u32>(45101u, 18714u, 44094u, 41667u), vec4<u32>(u_input.c.x, var_1.x, 56697u, var_0.a.b))), ~countOneBits(vec4<u32>(0u, arg_1.b, 37975u, 21506u))), true);
    let var_2 = arg_0;
    var var_3 = arg_0.ywz;
    return _wgslsmith_sub_vec2_u32(max(u_input.c, ~reverseBits(vec2<u32>(55326u, 4294967295u))), ~_wgslsmith_mult_vec2_u32(min(~u_input.c, ~var_1.yy), abs(u_input.c) & ~vec2<u32>(4294967295u, arg_1.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = firstLeadingBit(arg_1.b.x);
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, 1u), arg_1.b.x, arg_2.b.x);
    let var_1 = vec4<i32>(reverseBits(~arg_0.c >> (~(~u_input.b) % 32u)), ~(_wgslsmith_mod_i32(~7362i, -1i) | func_2(~vec4<i32>(4169i, -127i, -39492i, 57843i), -vec3<i32>(arg_0.c, 30356i, arg_2.c.x), true, select(arg_2.a.a, arg_2.a.a, true)).c), _wgslsmith_clamp_i32(-2147483647i, 8565i, abs(1i)), ~(-40222i));
    var_0 = ~arg_2.a.b;
    var_0 = 4294967295u;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1f, -921f, true)), 1279f, _wgslsmith_div_f32(-1783f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1181f + -1699f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = vec3<i32>(2147483647i, firstTrailingBit(_wgslsmith_clamp_i32(arg_0.c, arg_1.c, select(arg_1.c, arg_0.c, false))) & arg_0.c, arg_1.c);
    let var_1 = _wgslsmith_f_op_f32(arg_2.x + 673f);
    var_0 = firstTrailingBit(vec3<i32>(~7588i, max(arg_1.c, 1i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, -8101i, -18489i, var_0.x), vec4<i32>(var_0.x, 2147483647i, arg_1.c, 52398i))))) | vec3<i32>(-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, arg_1.c, 2147483647i)), max(vec3<i32>(u_input.e, 0i, -1i), vec3<i32>(var_0.x, 2147483647i, arg_0.c))), u_input.e, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.c, -37424i, 2147483647i), -vec3<i32>(-4354i, arg_0.c, var_0.x)), ~vec3<i32>(2147483647i, 56450i, 54443i) ^ select(vec3<i32>(-1i, -2147483647i, arg_1.c), vec3<i32>(var_0.x, -19632i, 3425i), vec3<bool>(arg_0.a, false, true))));
    let var_2 = Struct_2(Struct_1(!arg_1.a, ~(~_wgslsmith_clamp_u32(1u, 0u, 4294967295u)), arg_1.c), vec2<u32>(abs(4294967295u), 27842u), _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(-2147483647i), -(~75553i), 58205i ^ var_0.x), vec3<i32>(u_input.e, func_2(~vec4<i32>(var_0.x, 2147483647i, u_input.d, arg_0.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.c, arg_1.c, arg_0.c), vec3<i32>(0i, 56068i, var_0.x), vec3<i32>(-79609i, arg_1.c, 0i)), !arg_0.a, true | arg_1.a).c, var_0.x)));
    var var_3 = max(~(~arg_1.b & ~0u), arg_0.b);
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * arg_2.x)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f - 1969f) - arg_2.x), firstTrailingBit(func_3(vec4<bool>(arg_2.x != 978f, false, var_0.x > var_0.x, false), func_2(vec4<i32>(u_input.d, -2147483647i, 1i, arg_0.c), _wgslsmith_mult_vec3_i32(var_2.c, var_2.c), func_2(vec4<i32>(-28935i, arg_0.c, -1i, 1i), vec3<i32>(var_0.x, u_input.e, 2147483647i), arg_1.a, true).a, all(vec4<bool>(arg_1.a, var_2.a.a, true, false)))).x), -1i);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(true, u_input.b, -48841i);
    var var_1 = Struct_2(func_2(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, var_0.c, var_0.c), vec4<i32>(41345i, -2147483647i, -1i, u_input.d)), abs(2147483647i) & _wgslsmith_sub_i32(u_input.a, u_input.d), u_input.d, 2147483647i), -(-vec3<i32>(2147483647i, -29960i, 1i) & -vec3<i32>(var_0.c, -1i, 2140i)), all(select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, var_0.a, true), select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(false, var_0.a, true)))), !any(vec4<bool>(var_0.a, true, var_0.a, var_0.a))), vec2<u32>(0u, _wgslsmith_mult_u32(min(var_0.b, var_0.b), 5143u)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(27755i, var_0.c, u_input.a), ~vec3<i32>(u_input.e, var_0.c, 42467i)), -(~vec3<i32>(u_input.d, var_0.c, -1086i))), select(abs(vec3<i32>(var_0.c, var_0.c, var_0.c)), reverseBits(~vec3<i32>(0i, -1i, var_0.c)), any(!vec4<bool>(var_0.a, var_0.a, true, var_0.a)))));
    var_1 = Struct_2(func_5(Struct_1(true, u_input.b, 0i), var_1.a, _wgslsmith_f_op_vec3_f32(func_4(var_1.a, Struct_2(Struct_1(false, 0u, u_input.d), abs(var_1.b), select(var_1.c, vec3<i32>(1i, var_1.a.c, u_input.d), vec3<bool>(var_0.a, true, var_0.a))), Struct_2(func_2(vec4<i32>(0i, -23833i, var_1.c.x, var_1.c.x), var_1.c, false, false), func_3(vec4<bool>(var_0.a, true, var_0.a, var_0.a), Struct_1(var_1.a.a, u_input.c.x, var_1.c.x)), vec3<i32>(var_1.a.c, 27927i, 2147483647i))))), vec2<u32>(~countOneBits(_wgslsmith_sub_u32(u_input.c.x, 34852u)), ~var_1.a.b), vec3<i32>(countOneBits(_wgslsmith_sub_i32(2635i, var_0.c)), _wgslsmith_mod_i32(select(23043i, u_input.a, false), 1i), max(-1i, u_input.d)) << (firstLeadingBit(vec3<u32>(~var_0.b, _wgslsmith_clamp_u32(u_input.c.x, var_0.b, var_1.a.b), ~var_0.b)) % vec3<u32>(32u)));
    let var_2 = Struct_1(!func_5(var_1.a, var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(451f, 495f, 1013f))).a, var_1.a.b, firstTrailingBit((abs(-2147483647i) ^ u_input.e) << (var_0.b % 32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f + -1698f))))));
    return Struct_2(func_2(vec4<i32>(~1i, var_0.c, var_1.c.x, var_0.c), var_1.c, var_1.a.a, true), abs(~countOneBits(vec2<u32>(var_0.b, var_2.b))), var_1.c);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-601f + 1008f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f + 1689f) + _wgslsmith_f_op_vec3_f32(func_4(arg_1.a, Struct_2(arg_1.a, arg_1.b, arg_0.c), Struct_2(Struct_1(arg_0.a.a, 8359u, arg_0.c.x), vec2<u32>(53524u, 60049u), vec3<i32>(0i, 18550i, -32312i)))).x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(883f)), _wgslsmith_f_op_f32(step(-1173f, 2984f)))) + _wgslsmith_f_op_vec3_f32(func_4(arg_1.a, func_1(), func_1())).x)) || true;
    var_0 = !(!(!(!all(vec2<bool>(true, arg_0.a.a)))));
    var var_1 = min(_wgslsmith_div_i32(~0i, 19162i), 0i);
    var var_2 = arg_0.a;
    var_1 = u_input.e;
    return func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-1i), max(max(arg_0.a.c, arg_1.a.c), firstLeadingBit(59913i)), -(2147483647i ^ arg_1.c.x), arg_0.c.x), vec4<i32>(-1i, _wgslsmith_add_i32(u_input.e, _wgslsmith_clamp_i32(-56384i, 2147483647i, u_input.e)), i32(-1i) * -u_input.e, 0i)), vec3<i32>(var_2.c, var_2.c, _wgslsmith_mult_i32(-(~arg_0.a.c), -2147483647i)), !(1u >= arg_1.b.x), arg_1.a.a);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_2(Struct_1(true, 1u, 0i), ~select(u_input.c, u_input.c, vec2<bool>(false, false)), -firstTrailingBit(vec3<i32>(2147483647i, u_input.e, u_input.d))), func_1()), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(713f + -646f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2783f, -1567f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(2039f)), -1532f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(393f))) * _wgslsmith_f_op_f32(floor(-905f))), _wgslsmith_f_op_f32(-239f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1620f * -1501f) - _wgslsmith_f_op_f32(f32(-1f) * -335f)))), Struct_2(Struct_1(true, 4294967295u, i32(-1i) * -1i), vec2<u32>(u_input.b, ~17297u), func_1().c));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, ~select(func_2(vec4<i32>(u_input.d, -1i, -2147483647i, var_0.a.c), var_0.c, true, false).b, u_input.b | 8116u, u_input.b <= u_input.c.x)), firstLeadingBit(~(~_wgslsmith_div_u32(4294967295u, 1u))));
    var var_2 = var_0;
    var var_3 = select(vec3<bool>(true, true, func_5(Struct_1(true, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, var_0.c.x), var_0.c.zy)), func_7(Struct_1(var_0.a.a, var_0.a.b, var_2.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(595f, 773f, 580f, 387f) - vec4<f32>(968f, 1081f, 772f, -212f)), var_0).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1331f, -2125f, -451f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(485f, 185f, -1411f) - vec3<f32>(1023f, -509f, -1530f)))).a), select(vec3<bool>(func_7(var_2.a, vec4<f32>(915f, -209f, -1670f, 1000f), func_1()).a.a, (false & var_2.a.a) || var_0.a.a, true), !select(vec3<bool>(true, false, var_0.a.a), !vec3<bool>(var_2.a.a, true, true), !vec3<bool>(var_2.a.a, true, true)), all(!(!vec2<bool>(var_0.a.a, var_0.a.a)))), !select(select(!vec3<bool>(true, var_2.a.a, false), vec3<bool>(true, true, true), !vec3<bool>(false, var_2.a.a, var_2.a.a)), select(vec3<bool>(false, false, var_2.a.a), vec3<bool>(true, true, true), true), (var_0.a.a || var_2.a.a) && !var_2.a.a));
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-193f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(412f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-499f)), _wgslsmith_div_f32(1894f, -1904f)))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1337f + -631f) - _wgslsmith_f_op_f32(step(-1092f, 1485f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1687f + -761f) * -1314f))), vec3<u32>(~var_4.b, ~(~(~4294967295u)), ~(0u & abs(var_4.b))));
}

