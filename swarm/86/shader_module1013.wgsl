struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(vec3<f32>(1043f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-481f, _wgslsmith_f_op_f32(f32(-1f) * -847f))) + 317f)), _wgslsmith_sub_vec4_u32(u_input.b, ~(~vec4<u32>(0u, arg_0.x, 4294967295u, 34009u))), ~vec3<u32>(countOneBits(arg_0.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.b.x, arg_0.x), 40537u), select(~u_input.b.x, ~0u, true)), select(~abs(reverseBits(vec3<i32>(-2147483647i, -1i, 2147483647i))), firstLeadingBit(abs(vec3<i32>(-2147483647i, 2690i, -51994i))), !(!select(true, true, false))), Struct_1(arg_0, vec3<i32>(firstTrailingBit(~(-2147483647i)), 1i, _wgslsmith_mod_i32(1i, 1i))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1467f, 173f, -247f)) * _wgslsmith_f_op_vec3_f32(exp2(var_0.a))), vec3<f32>(-575f, 953f, -1448f))), select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b.x, 4294967295u, 1u), _wgslsmith_add_vec4_u32(u_input.b, var_0.b)), 1u, ~48550u, 0u), vec4<u32>(countOneBits(4294967295u), ~u_input.b.x, select(arg_0.x, var_0.c.x, false), ~1u) & ~vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, 4294967295u), vec4<bool>(true, false, !any(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true)))), u_input.b.xxy, var_0.d >> (vec3<u32>(~0u, 20535u, abs(4294967295u)) % vec3<u32>(32u)), Struct_1(arg_0, abs(var_0.d)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 409f, _wgslsmith_f_op_f32(step(223f, var_0.a.x)))))), ~(~_wgslsmith_sub_vec4_u32(var_0.b, var_0.b)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(u_input.b.x), 103538u, countOneBits(4294967295u)), vec3<u32>(var_0.c.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_0.e.a.x, 15586u), var_0.b))), ~(~_wgslsmith_add_vec3_u32(u_input.b.yyw, vec3<u32>(48233u, var_0.b.x, u_input.b.x)))), var_0.e.b << (arg_0 % vec3<u32>(32u)), var_0.e);
    var var_2 = reverseBits(firstLeadingBit(~_wgslsmith_mult_u32(reverseBits(arg_0.x), 0u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, _wgslsmith_div_f32(182f, 467f), -1946f, _wgslsmith_f_op_f32(exp2(var_0.a.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f))) - var_3.x);
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(243f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-657f, _wgslsmith_f_op_f32(2100f + -129f))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-285f - -516f) + -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-1706f, -651f)) * _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1194f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1693f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(840f - 1026f) - _wgslsmith_div_f32(-1104f, _wgslsmith_f_op_f32(f32(-1f) * -1518f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global0 = arg_2.b.x;
    global0 = arg_2.b.x;
    global0 = ~(-24539i);
    var var_0 = arg_3.e.b.x;
    var var_1 = ~4294967295u;
    return Struct_2(_wgslsmith_div_vec3_f32(arg_3.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_3.a.x), -708f, arg_1)), min(max(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_3.b.x, u_input.b.x, arg_2.a.x, 4294967295u)), u_input.b), vec4<u32>(~4294967295u, ~arg_2.a.x, 15456u, _wgslsmith_mod_u32(arg_2.a.x, u_input.a.x))), (vec4<u32>(u_input.b.x, 0u, 27782u, 27459u) | u_input.b) << (vec4<u32>(abs(0u), 44363u, arg_2.a.x | arg_2.a.x, reverseBits(arg_2.a.x)) % vec4<u32>(32u))), ~_wgslsmith_mult_vec3_u32(~select(vec3<u32>(1u, 4294967295u, 38106u), vec3<u32>(56838u, 20328u, 31682u), vec3<bool>(false, true, false)), ~vec3<u32>(u_input.a.x, 1u, 23336u) << ((u_input.b.xyx & u_input.b.zyx) % vec3<u32>(32u))), arg_3.d, arg_3.e);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = u_input.b;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -600f), arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1245f, 1238f, 455f))))), vec4<u32>(0u, 0u, firstLeadingBit(arg_0.a.x), _wgslsmith_sub_u32(arg_0.a.x, u_input.a.x)) << (u_input.b % vec4<u32>(32u)), ~(~countOneBits(var_0.yxw)), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_0.b.x, arg_1.x), vec3<i32>(arg_1.x, arg_0.b.x, arg_1.x), vec3<i32>(arg_0.b.x, -5700i, arg_0.b.x))), Struct_1(firstLeadingBit(vec3<u32>(57209u, 34797u, arg_0.a.x)), -vec3<i32>(2147483647i, -1i, 0i))));
    let var_2 = _wgslsmith_sub_u32(~func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)))), _wgslsmith_div_f32(574f, 465f), arg_0, func_4(_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a), _wgslsmith_f_op_f32(-var_1.a.x), Struct_1(vec3<u32>(arg_0.a.x, 76392u, 1u), var_1.d), var_1)).e.a.x, var_1.c.x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-283f, var_1.a.x, var_1.a.x) + var_1.a), var_1.a))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.a, var_1.a, true)) - var_1.a)))), u_input.b, ~(~u_input.b.yxx), arg_1.yyy, Struct_1(_wgslsmith_mod_vec3_u32(u_input.b.wwx, ~(~u_input.b.zxx)), vec3<i32>(~(-12518i), func_4(vec3<f32>(416f, var_1.a.x, var_1.a.x), -891f, Struct_1(var_0.zxw, arg_1.xzz), Struct_2(var_1.a, vec4<u32>(u_input.a.x, 69770u, u_input.a.x, 47087u), var_1.c, vec3<i32>(var_1.d.x, -62141i, arg_1.x), arg_0)).e.b.x >> (arg_0.a.x % 32u), _wgslsmith_div_i32(var_1.e.b.x, min(var_1.d.x, -2147483647i)))));
    let var_4 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -672f, -840f) * var_3.a)), 1384f, var_1.e, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_f_op_vec3_f32(func_2()).x, var_1.e, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_3.a.x, 153f), vec3<f32>(1011f, var_1.a.x, var_1.a.x)) - _wgslsmith_f_op_vec3_f32(var_3.a + var_3.a)), vec4<u32>(var_1.e.a.x, abs(6695u), min(var_3.c.x, var_3.c.x), ~77668u), func_4(_wgslsmith_f_op_vec3_f32(var_3.a + vec3<f32>(var_3.a.x, -162f, -1339f)), _wgslsmith_f_op_f32(f32(-1f) * -1042f), var_3.e, var_1).c, var_3.d, var_1.e))).e;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a)))), -1431f, _wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -325f))));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = arg_1.wyy;
    var var_1 = ~arg_0;
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(abs(var_0)))), _wgslsmith_f_op_f32(step(-442f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))))), Struct_1(firstLeadingBit(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(551f, arg_1.x, arg_1.x) + var_0), var_0.x, Struct_1(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<i32>(arg_0, arg_0, arg_0)), func_4(arg_1.wwz, arg_1.x, Struct_1(u_input.b.zxz, vec3<i32>(arg_0, arg_0, arg_0)), Struct_2(arg_1.yyz, u_input.b, vec3<u32>(35695u, 20211u, 1u), vec3<i32>(arg_0, arg_0, arg_0), Struct_1(u_input.b.zyx, vec3<i32>(arg_0, -15118i, arg_0))))).b.yyy), ~select(vec3<i32>(-73904i, arg_0, arg_0) << (vec3<u32>(4294967295u, 51152u, 1u) % vec3<u32>(32u)), max(vec3<i32>(-1i, 5875i, arg_0), vec3<i32>(-15008i, arg_0, -1i)), vec3<bool>(true, true, true))), Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1.xwx * var_0), vec3<f32>(782f, -364f, arg_1.x))))), ~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), ~vec3<u32>(13086u, _wgslsmith_add_u32(66632u, u_input.a.x), ~27821u), select(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_0, 0i, 37294i), vec3<i32>(arg_0, 7116i, -2147483647i) ^ vec3<i32>(16002i, -62386i, arg_0)), (vec3<i32>(arg_0, arg_0, arg_0) ^ vec3<i32>(2147483647i, arg_0, arg_0)) << (select(vec3<u32>(u_input.a.x, u_input.b.x, 0u), u_input.b.wyy, true) % vec3<u32>(32u)), true), Struct_1(u_input.b.xxy, vec3<i32>(arg_0, _wgslsmith_clamp_i32(-7679i, arg_0, arg_0), 1i ^ arg_0)))).e;
    return func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1929f, _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec3<u32>(u_input.b.x, 1u, u_input.a.x), vec3<i32>(68630i, arg_0, 1507i)), vec4<i32>(-37375i, arg_0, arg_0, 29440i))).x, -2143f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f * var_0.x)), Struct_1((vec3<u32>(u_input.b.x, var_2.a.x, u_input.b.x) << (select(vec3<u32>(0u, u_input.a.x, var_2.a.x), u_input.b.xwx, true) % vec3<u32>(32u))) << ((vec3<u32>(1u, 17749u, var_2.a.x) | vec3<u32>(95224u, 15558u, 18039u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_2.b.x, var_2.b.x, arg_0)), vec3<i32>(firstLeadingBit(0i), i32(-1i) * -8734i, var_2.b.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(var_0.x, arg_1.x, -812f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1008f, 1000f)))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(0u, var_2.a.x, var_2.a.x, u_input.a.x)), ~u_input.b | vec4<u32>(u_input.a.x, var_2.a.x, u_input.a.x, 1u)), var_2.a, -firstTrailingBit(countOneBits(var_2.b)), Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(28617u, var_2.a.x, var_2.a.x), var_2.a | vec3<u32>(var_2.a.x, 4294967295u, u_input.a.x)), -vec3<i32>(19184i, arg_0, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 40983i;
    var var_0 = func_5(~(-_wgslsmith_div_i32(0i, -14614i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1341f, 404f, 1947f, -260f), vec4<f32>(1403f, 1877f, 1349f, 1257f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-720f, 1359f, -115f, 140f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, -921f, 1000f, -1000f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u), vec3<i32>(-60623i, 0i, -2147483647i)), vec4<i32>(2147483647i, -4416i, 0i, -3974i))))));
    global0 = 2147483647i;
    var var_1 = func_5(var_0.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(782f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.a.x, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1226f, var_0.a.x))), _wgslsmith_f_op_f32(func_5(-16102i, vec4<f32>(-1000f, -1226f, var_0.a.x, 200f)).a.x * _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))))).e.a.x;
    var_0 = func_5(((var_0.e.b.x >> (_wgslsmith_mod_u32(1u, u_input.a.x) % 32u)) & var_0.e.b.x) ^ ~var_0.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.x, -497f, 1353f)) + vec4<f32>(-451f, var_0.a.x, -380f, -440f))))));
    let var_2 = !(!(!vec2<bool>(any(vec4<bool>(true, false, false, false)), select(false, true, true))));
    var_1 = 3015u;
    let var_3 = _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x & 1u) ^ 68991u, 27921u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, firstLeadingBit(~vec4<i32>(-1i & var_0.d.x, ~var_0.d.x, var_0.e.b.x, -1i)), 1568f, var_0.e.b, _wgslsmith_f_op_f32(-1608f + 1612f));
}

