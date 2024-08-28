struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 34660i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = 0u;
    global0 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(~u_input.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(43024i, arg_0.b.x, -1i, u_input.c.x), vec4<i32>(1i, global0.x, arg_0.b.x, 1i)), _wgslsmith_mult_i32(-arg_0.b.x, -1i))), vec2<i32>(_wgslsmith_mod_i32(63776i, global0.x), -arg_0.b.x), firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.b.yx, arg_0.b) << (_wgslsmith_sub_vec2_u32(arg_0.a.zz, vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))));
    var var_1 = Struct_2(Struct_1(abs(vec3<u32>(0u, 111179u, arg_0.a.x) & (arg_0.a ^ vec3<u32>(4294967295u, u_input.a, 34013u))), vec2<i32>(0i, reverseBits(min(-13428i, u_input.c.x))), 481f, true), Struct_1(min(~vec3<u32>(u_input.a, 46630u, 1u), abs(arg_0.a)), countOneBits(min(arg_0.b, arg_0.b) ^ ~vec2<i32>(-1i, -25639i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-865f))))), arg_0.d), Struct_1(firstTrailingBit(arg_0.a), select(arg_0.b, _wgslsmith_sub_vec2_i32(countOneBits(arg_0.b), ~u_input.c), all(!vec3<bool>(arg_0.d, false, false))), 962f, any(select(!vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d), select(vec4<bool>(false, arg_0.d, true, arg_0.d), vec4<bool>(true, arg_0.d, arg_0.d, false), vec4<bool>(true, arg_0.d, arg_0.d, false)), !vec4<bool>(true, true, arg_0.d, false)))));
    let var_2 = Struct_3(Struct_2(Struct_1(min(_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(u_input.a, u_input.a, var_1.a.a.x)), ~vec3<u32>(u_input.a, 0u, var_1.b.a.x)), (u_input.c ^ var_1.c.b) & abs(vec2<i32>(-2147483647i, global0.x)), arg_0.c, any(vec4<bool>(false, false, var_1.a.d, false))), Struct_1(select(min(vec3<u32>(0u, var_1.b.a.x, 4201u), vec3<u32>(0u, 1u, 77097u)), var_1.b.a, true), -vec2<i32>(-13699i, var_1.a.b.x), _wgslsmith_f_op_f32(min(var_1.c.c, -1600f)), true), var_1.a), Struct_1(vec3<u32>(_wgslsmith_div_u32(0u, 1u), u_input.a, firstTrailingBit(_wgslsmith_mod_u32(var_1.a.a.x, arg_0.a.x))), -vec2<i32>(reverseBits(u_input.b.x), reverseBits(global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.c))), 324f)), global0.x < ~(-24578i)), Struct_2(var_1.a, arg_0, Struct_1(var_1.b.a, arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, arg_0.c)), 818f), true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c)), _wgslsmith_div_f32(var_1.c.c, 681f), -133f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, 182f) + vec3<f32>(arg_0.c, -2283f, var_1.a.c)))))));
    let var_3 = abs(var_1.b.a.x);
    return arg_0.b >> (~vec2<u32>(_wgslsmith_clamp_u32(~64583u, _wgslsmith_dot_vec4_u32(vec4<u32>(12332u, arg_0.a.x, 22020u, u_input.a), vec4<u32>(u_input.a, arg_0.a.x, 52392u, u_input.a)), ~arg_0.a.x), var_1.a.a.x) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    global0 = _wgslsmith_add_vec2_i32(u_input.c, -firstTrailingBit(func_3(arg_1)));
    global0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(-u_input.b.yz, ~(-arg_1.b)));
    global0 = _wgslsmith_mult_vec2_i32(arg_1.b, func_3(Struct_1(arg_1.a | vec3<u32>(0u, 4294967295u, 0u), select(arg_2, vec2<i32>(-1i, arg_1.b.x), vec2<bool>(false, arg_1.d)), -2080f, false)) & -arg_2);
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~(~_wgslsmith_add_vec3_u32(arg_1.a, arg_1.a)), vec3<u32>(abs(u_input.a << (arg_1.a.x % 32u)), arg_1.a.x, ~u_input.a ^ u_input.a)), vec3<u32>(u_input.a, 0u | arg_1.a.x, _wgslsmith_dot_vec2_u32(arg_1.a.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 3261u), ~arg_1.a.xz))));
    global0 = u_input.b.yy;
    return ~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(42574u, 2554u), vec2<u32>(1u, 1u)), _wgslsmith_mult_u32(u_input.a, var_0.x) ^ 0u, select(1u, arg_1.a.x, !(arg_1.d | arg_1.d)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> bool {
    global0 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(arg_2.xz, ~select(arg_2.yz, u_input.c, true));
    let var_0 = -vec4<i32>(global0.x, -1i, ~u_input.b.x, countOneBits(-59937i));
    let var_1 = Struct_1((arg_0.c.c.a | func_4(vec2<f32>(-1889f, -859f), arg_0.c.b, func_3(Struct_1(arg_0.c.c.a, arg_0.c.c.b, arg_0.d.x, true)))) >> (arg_0.b.a % vec3<u32>(32u)), vec2<i32>(-(~(~var_0.x)), global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(611f)) + _wgslsmith_f_op_f32(487f - 1000f)) - _wgslsmith_f_op_f32(892f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.c, arg_0.c.b.c))))), arg_0.b.d);
    let var_2 = vec4<f32>(-166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-417f)), -1546f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(sign(arg_0.c.a.c))));
    global0 = _wgslsmith_div_vec2_i32(select(~arg_2.zx, vec2<i32>(global0.x, abs(abs(arg_2.x))), true), abs(-u_input.c) | ~_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_0.yy, vec2<i32>(0i, var_0.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global0.x), arg_0.c.a.b)));
    return !(!any(select(vec2<bool>(true, var_1.d), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(true, false), arg_0.a.b.d), select(vec2<bool>(arg_0.a.a.d, arg_0.c.a.d), vec2<bool>(var_1.d, false), vec2<bool>(var_1.d, arg_0.c.a.d)))));
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = Struct_1(firstLeadingBit((vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a)) << (~vec3<u32>(4294967295u, 4294967295u, u_input.a) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 266u, 38374u), vec3<u32>(u_input.a, u_input.a, 7267u)), vec3<u32>(4294967295u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 0u)), reverseBits(vec3<u32>(35949u, 1u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, -35734i), firstLeadingBit(~(vec2<i32>(-2147483647i, u_input.c.x) ^ vec2<i32>(32521i, global0.x)))), -368f, (select(func_2(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a, 0u, 1u), u_input.b.xz, 549f, false), Struct_1(vec3<u32>(8065u, 1u, 23309u), vec2<i32>(global0.x, 0i), 541f, true), Struct_1(vec3<u32>(u_input.a, 0u, 0u), u_input.b.zy, 618f, true)), Struct_1(vec3<u32>(u_input.a, 20626u, 20551u), u_input.c, 2080f, false), Struct_2(Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), u_input.b.yz, 818f, true), Struct_1(vec3<u32>(u_input.a, 1u, 1u), u_input.c, -192f, false), Struct_1(vec3<u32>(18898u, u_input.a, 11357u), u_input.c, 900f, false)), vec3<f32>(1000f, 990f, 522f)), -905f, vec3<i32>(11494i, 0i, -2147483647i)), all(vec4<bool>(true, true, false, false)), true) && true) | true);
    var var_1 = -2147483647i;
    let var_2 = ~vec4<u32>(var_0.a.x, ~56863u | var_0.a.x, ~var_0.a.x, abs(reverseBits(u_input.a)));
    global0 = var_0.b;
    var_1 = -37293i | var_0.b.x;
    return Struct_5(select(vec3<i32>(-u_input.b.x, u_input.c.x, -2147483647i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, u_input.b.x, -21061i), vec3<i32>(-59433i, 31772i, global0.x) << (var_2.xxw % vec3<u32>(32u)))), select(!select(vec3<bool>(false, true, var_0.d), vec3<bool>(var_0.d, false, true), var_0.d), select(select(vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(false, var_0.d, false), var_0.d), select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(var_0.d, var_0.d, var_0.d), true), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, true, var_0.d), var_0.d)), !any(vec4<bool>(var_0.d, true, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1543f), var_0.c, var_0.c), Struct_3(Struct_2(Struct_1(~vec3<u32>(var_0.a.x, var_2.x, 1u), vec2<i32>(arg_0, global0.x), _wgslsmith_f_op_f32(-var_0.c), true), var_0, var_0), Struct_1(min(var_0.a, max(var_2.zxy, var_0.a)), _wgslsmith_mod_vec2_i32(u_input.c << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), abs(vec2<i32>(0i, 1i))), var_0.c, select(all(vec3<bool>(var_0.d, var_0.d, var_0.d)), true, true)), Struct_2(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2135f, var_0.c, var_0.c), vec3<f32>(var_0.c, -413f, -1226f), true)) * vec3<f32>(-2529f, 823f, 206f)))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_5 {
    let var_0 = func_1(-2147483647i).c;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1157f - _wgslsmith_f_op_f32(f32(-1f) * -1268f)), var_0.a.a.c);
    let var_2 = (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.a.c.a.x, u_input.a, var_0.a.a.a.x, u_input.a) & vec4<u32>(arg_0.c.b.a.x, arg_0.c.a.a.a.x, var_0.a.c.a.x, 3399u), abs(vec4<u32>(var_0.a.b.a.x, arg_0.c.c.c.a.x, 4294967295u, 1u))) << (_wgslsmith_div_u32(firstTrailingBit(3484u), u_input.a) % 32u)) << (var_0.c.c.a.x % 32u);
    let var_3 = func_1(-41661i).c;
    global0 = var_3.c.b.b;
    return func_1(~select(arg_0.c.b.b.x, arg_0.c.a.c.b.x, false));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5) -> Struct_2 {
    global0 = arg_0.c.a.b.b;
    let var_0 = func_5(Struct_5(-vec3<i32>(arg_0.a.x, arg_1.c.b.b.x, func_5(arg_0, vec4<f32>(arg_0.b.x, 1913f, -418f, arg_0.c.c.c.c), arg_1.c.d).c.c.c.b.x), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - func_1(0i).c.c.b.c), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(round(-981f))))), arg_1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(1103f, _wgslsmith_f_op_f32(arg_1.c.d.x * _wgslsmith_f_op_f32(110f * 1498f)), 1115f, _wgslsmith_f_op_f32(exp2(arg_0.c.c.a.c))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1625f, -230f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.c.b.c, arg_0.b.x, 1879f)), func_5(Struct_5(u_input.b, arg_0.c.d, arg_1.c), vec4<f32>(arg_0.c.c.c.c, arg_1.c.b.c, arg_1.c.a.b.c, 1081f), arg_1.b).c.b.d))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.d.x + 1126f), _wgslsmith_f_op_f32(1529f * arg_0.c.d.x), -1455f), arg_1.c.d), arg_0.c.d)).c.a.a.a.x;
    global0 = _wgslsmith_clamp_vec2_i32(~(func_3(Struct_1(arg_0.c.b.a, arg_1.a.xx, -1298f, false)) | func_3(Struct_1(arg_0.c.c.b.a, u_input.b.yz, arg_1.c.d.x, false))) & -func_1(abs(arg_1.c.a.c.b.x)).a.yz, vec2<i32>(-1i) * -((vec2<i32>(global0.x, 43907i) & vec2<i32>(4283i, global0.x)) | -u_input.b.yx), ~reverseBits(countOneBits(_wgslsmith_sub_vec2_i32(arg_1.c.b.b, vec2<i32>(-52029i, arg_0.c.a.b.b.x)))));
    var var_1 = arg_0.c.a.a.a.x;
    var var_2 = 52265u;
    return func_5(Struct_5(u_input.b << (_wgslsmith_div_vec3_u32(arg_1.c.a.c.a, abs(vec3<u32>(var_0, var_0, 25939u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.d) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1274f, arg_1.b.x, 1000f) + vec3<f32>(arg_1.c.a.c.c, arg_0.b.x, -376f))))), Struct_3(arg_0.c.c, Struct_1(arg_1.c.a.a.a, max(vec2<i32>(-24504i, -6593i), arg_1.a.yz), arg_0.c.d.x, true), func_5(Struct_5(arg_0.a, vec3<f32>(arg_1.c.a.c.c, -1687f, 637f), arg_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -262f, arg_1.b.x, -413f) * vec4<f32>(1732f, arg_1.b.x, arg_1.c.a.c.c, 1694f)), arg_1.b).c.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(arg_1.c.d)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-568f, arg_0.c.a.b.c, arg_1.b.x))), vec3<bool>(true, arg_0.c.b.d, false))))), vec4<f32>(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_f32(sign(131f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.d.x)) + 1171f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.c.b.c - arg_0.b.x), _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.d.x, _wgslsmith_f_op_f32(ceil(arg_1.b.x)))) - arg_0.b.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1518f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-arg_1.b.x)))))).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec3<i32>(global0.x, ~(-1i) | (8897i << ((u_input.a ^ 51224u) % 32u)), countOneBits(u_input.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(2089f, 769f, 472f) - vec3<f32>(-1417f, 1187f, -395f)), vec3<f32>(-1000f, -355f, 625f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-239f, 874f, -294f), vec3<f32>(251f, -1000f, -257f))), vec3<f32>(-1861f, 319f, -480f), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(310f, -477f, 935f) - vec3<f32>(554f, 1546f, -1456f))))), Struct_3(func_6(Struct_5(vec3<i32>(-2147483647i, 1i, 1i) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1190f, 438f, -1319f), vec3<f32>(177f, 1240f, -3674f), true)), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, u_input.a, u_input.a), vec2<i32>(27087i, u_input.c.x), 236f, true), Struct_1(vec3<u32>(33889u, u_input.a, 1u), u_input.c, 1013f, true), Struct_1(vec3<u32>(0u, 1u, u_input.a), vec2<i32>(global0.x, 44238i), -388f, true)), Struct_1(vec3<u32>(28015u, u_input.a, 34405u), u_input.c, 755f, false), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec2<i32>(-6791i, 0i), 2061f, false), Struct_1(vec3<u32>(u_input.a, 37647u, u_input.a), u_input.b.zx, 1000f, true), Struct_1(vec3<u32>(0u, 0u, u_input.a), vec2<i32>(u_input.c.x, global0.x), -494f, false)), vec3<f32>(-526f, 1667f, 1869f))), func_5(func_1(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(767f, -1011f, -1000f, -113f)), vec3<f32>(324f, 1651f, 1000f))), Struct_1(~max(vec3<u32>(45817u, 1124u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.b.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f - -1908f)), select(true, func_6(Struct_5(u_input.b, vec3<f32>(-727f, 145f, -1102f), Struct_3(Struct_2(Struct_1(vec3<u32>(3596u, 1u, 59448u), u_input.c, 1140f, false), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.c, -1579f, false), Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.a), u_input.b.yy, -1940f, false)), Struct_1(vec3<u32>(u_input.a, 67219u, u_input.a), u_input.c, 643f, true), Struct_2(Struct_1(vec3<u32>(u_input.a, 0u, 1u), u_input.c, 152f, true), Struct_1(vec3<u32>(4294967295u, 36555u, u_input.a), u_input.c, 374f, true), Struct_1(vec3<u32>(u_input.a, u_input.a, 1u), u_input.c, -1339f, true)), vec3<f32>(838f, -1826f, 1553f))), Struct_5(vec3<i32>(global0.x, u_input.b.x, u_input.c.x), vec3<f32>(-1644f, 206f, -109f), Struct_3(Struct_2(Struct_1(vec3<u32>(9384u, 42338u, u_input.a), vec2<i32>(global0.x, 2147483647i), 528f, true), Struct_1(vec3<u32>(84805u, 0u, 26040u), u_input.b.xx, -2172f, true), Struct_1(vec3<u32>(u_input.a, 2934u, 53640u), u_input.b.yy, 295f, false)), Struct_1(vec3<u32>(0u, u_input.a, u_input.a), vec2<i32>(global0.x, u_input.b.x), -835f, false), Struct_2(Struct_1(vec3<u32>(109110u, u_input.a, u_input.a), vec2<i32>(u_input.c.x, -14340i), -2488f, false), Struct_1(vec3<u32>(40164u, u_input.a, 0u), u_input.c, -585f, true), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.b.zz, -1000f, true)), vec3<f32>(-364f, 512f, 188f)))).b.d, true)), Struct_2(Struct_1(vec3<u32>(1u, 1123u, u_input.a), u_input.c, func_1(1i).b.x, func_2(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.a, 4294967295u), u_input.c, -912f, true), Struct_1(vec3<u32>(u_input.a, 3456u, 1u), vec2<i32>(global0.x, u_input.b.x), -617f, true), Struct_1(vec3<u32>(u_input.a, 26660u, 4294967295u), u_input.c, 941f, true)), Struct_1(vec3<u32>(4294967295u, u_input.a, 24516u), vec2<i32>(global0.x, -36372i), 1404f, false), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.c, -2190f, true), Struct_1(vec3<u32>(u_input.a, 4294967295u, 1u), u_input.c, -1000f, false), Struct_1(vec3<u32>(1u, 33238u, 31234u), u_input.b.yy, 994f, false)), vec3<f32>(-1000f, -100f, 532f)), -1403f, vec3<i32>(5704i, -1i, -9275i))), func_5(func_5(Struct_5(vec3<i32>(u_input.b.x, global0.x, 15272i), vec3<f32>(-637f, -988f, 680f), Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.b.xy, 340f, true), Struct_1(vec3<u32>(u_input.a, u_input.a, 31472u), u_input.b.yy, -868f, false), Struct_1(vec3<u32>(u_input.a, u_input.a, 1u), vec2<i32>(27605i, u_input.b.x), 416f, false)), Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), vec2<i32>(6999i, u_input.c.x), -1625f, true), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.c, 934f, true), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.b.zz, -630f, false), Struct_1(vec3<u32>(u_input.a, u_input.a, 14349u), vec2<i32>(u_input.b.x, 0i), 1000f, false)), vec3<f32>(-242f, 886f, 169f))), vec4<f32>(108f, -1637f, 613f, 127f), vec3<f32>(-1000f, -428f, 669f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1976f, 577f, 1000f, 1173f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1853f, 143f)))).c.c.a, func_6(func_5(Struct_5(vec3<i32>(2147483647i, u_input.b.x, global0.x), vec3<f32>(-1000f, 1348f, 398f), Struct_3(Struct_2(Struct_1(vec3<u32>(39695u, u_input.a, u_input.a), vec2<i32>(-46375i, global0.x), -1319f, true), Struct_1(vec3<u32>(4294967295u, u_input.a, 4294967295u), u_input.c, 1648f, true), Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.a), vec2<i32>(u_input.b.x, 15491i), -1000f, false)), Struct_1(vec3<u32>(0u, u_input.a, 29606u), u_input.b.xz, 670f, true), Struct_2(Struct_1(vec3<u32>(4294967295u, 38200u, u_input.a), u_input.b.zy, -1309f, true), Struct_1(vec3<u32>(u_input.a, u_input.a, 19277u), vec2<i32>(global0.x, -18520i), 1000f, false), Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), vec2<i32>(-63999i, 1i), 1141f, true)), vec3<f32>(1024f, 1625f, 1868f))), vec4<f32>(-856f, 631f, -1238f, 885f), vec3<f32>(-513f, 1603f, 1000f)), Struct_5(u_input.b, vec3<f32>(826f, 1966f, 1286f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 1u, 4294967295u), u_input.b.yx, -2296f, true), Struct_1(vec3<u32>(u_input.a, 0u, 4294967295u), vec2<i32>(global0.x, 28012i), 1495f, true), Struct_1(vec3<u32>(22364u, 4294967295u, u_input.a), u_input.c, -379f, true)), Struct_1(vec3<u32>(u_input.a, 0u, 28272u), vec2<i32>(-2147483647i, u_input.c.x), 1000f, false), Struct_2(Struct_1(vec3<u32>(35987u, 62324u, 0u), vec2<i32>(u_input.c.x, global0.x), 1242f, true), Struct_1(vec3<u32>(1u, 40271u, u_input.a), u_input.c, -1086f, true), Struct_1(vec3<u32>(120384u, 18159u, u_input.a), u_input.b.zx, -791f, false)), vec3<f32>(-270f, 140f, 677f)))).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(768f, -1321f, -941f) - vec3<f32>(991f, 1352f, 453f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, 1375f, 1000f))))));
    global0 = func_3(var_0.c.b);
    var var_1 = vec2<bool>(false, true);
    let var_2 = var_0.c;
    let var_3 = ~vec4<i32>(var_2.a.c.b.x, -var_0.a.x, _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(68909i, 50883i, var_2.b.b.x, global0.x), vec4<i32>(global0.x, global0.x, global0.x, var_0.a.x)), abs(46587i)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.c.d.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.c.a.c.c), _wgslsmith_f_op_f32(round(-593f)))))), _wgslsmith_div_f32(var_0.b.x, var_2.a.a.c));
}

