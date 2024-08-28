struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec3<u32>(reverseBits(u_input.c), u_input.c, u_input.c);
    return vec3<bool>(false, true, false);
}

fn func_2() -> u32 {
    let var_0 = select(vec3<bool>(true, true, true), select(select(!func_3(), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false), true), true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), 0i != u_input.b), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, all(vec2<bool>(true, false)), true)));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-13659i, u_input.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -68455i) ^ vec3<i32>(u_input.b, u_input.b, u_input.b), -vec3<i32>(2147483647i, u_input.b, u_input.b)), _wgslsmith_sub_i32(max(~4261i, select(u_input.b, u_input.b, true)), ~_wgslsmith_add_i32(-2147483647i, 33857i))), ~vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -14351i), -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, 1200i), vec4<i32>(u_input.b, -2147483647i, -37556i, 6675i)), _wgslsmith_mod_i32(0i, u_input.b)) & vec4<i32>(-11511i, 63700i, _wgslsmith_mult_i32(0i, -1i) | _wgslsmith_clamp_i32(51318i, u_input.b, -350i), 4982i), -(~(~vec4<i32>(0i, u_input.b, 2147483647i, u_input.b)) & -vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i)));
    var var_2 = !select(vec4<bool>(true, all(!vec3<bool>(false, var_0.x, true)), all(!vec4<bool>(var_0.x, var_0.x, false, true)), any(select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x))), vec4<bool>(var_0.x, var_0.x, false, any(var_0.xx)), !vec4<bool>(true, var_0.x, var_0.x, true));
    let var_3 = _wgslsmith_f_op_f32(sign(-1486f));
    var_2 = vec4<bool>(false, !(_wgslsmith_f_op_f32(-var_3) <= 847f) && (!(var_0.x & var_2.x) && true), all(vec2<bool>(true, !var_2.x & var_2.x)), !any(func_3()));
    return u_input.a;
}

fn func_1() -> vec2<u32> {
    var var_0 = vec2<u32>(u_input.c, ~u_input.c);
    var_0 = _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(select(u_input.c, var_0.x ^ var_0.x, u_input.b > 39256i), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.x, 4294967295u, 1u)), vec3<u32>(4294967295u, var_0.x, 47384u) << (vec3<u32>(844u, var_0.x, 68918u) % vec3<u32>(32u))))), ~vec2<u32>(1u, max(func_2(), ~0u)));
    var var_1 = Struct_1(func_3());
    var_0 = max(_wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, var_0.x) | (vec2<u32>(0u, u_input.c) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)))), select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, var_0.x), vec2<u32>(u_input.a, var_0.x)), vec2<u32>(55711u, 66555u) | vec2<u32>(u_input.c, 40084u)), ~min(vec2<u32>(var_0.x, u_input.c), vec2<u32>(u_input.c, var_0.x)), !any(vec3<bool>(var_1.a.x, false, true)))), _wgslsmith_mod_vec2_u32(select(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a, 54370u), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), ~vec2<u32>(10540u, 76163u)), ~vec2<u32>(u_input.a, 0u), func_3().zy), _wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1184u, 39467u), vec2<u32>(var_0.x, var_0.x))), ~vec2<u32>(0u, 21705u))));
    let var_2 = var_1.a.x;
    return ~_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a | _wgslsmith_add_u32(u_input.c, u_input.a), _wgslsmith_sub_u32(u_input.a, 5932u) & ~u_input.a), _wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.c, u_input.a)), ~vec2<u32>(19401u, 37836u) ^ vec2<u32>(26083u, var_0.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = Struct_2(1u, Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))) | select(func_2() > ~46579u, any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false));
    var var_2 = vec4<i32>(~_wgslsmith_sub_i32(~arg_1.x, -1i), u_input.b, u_input.b, u_input.b);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-333f, _wgslsmith_f_op_f32(-arg_3), var_1.b.a.x && var_1.c)))), arg_3, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(327f, arg_3), arg_3)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 * 231f)))), -147f)));
    return Struct_2(reverseBits(4557u), var_1.b, var_1.c);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<f32> {
    let var_0 = firstTrailingBit(select(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.b), vec4<i32>(42369i, u_input.b, 2147483647i, 35073i), vec4<i32>(u_input.b, u_input.b, -38387i, 0i)), ~vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), ~(vec4<i32>(-13021i, -26892i, u_input.b, u_input.b) | vec4<i32>(-26914i, 19296i, 0i, -7040i)), arg_2.c) << ((_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(0u, arg_1, u_input.a, arg_2.a)), vec4<u32>(61559u, 6386u, 80105u, 45603u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_2.a, 1u, 6227u), vec4<u32>(1u, u_input.a, 1u, u_input.a))) & vec4<u32>(u_input.c, 1u, _wgslsmith_div_u32(u_input.c, 2223u), 1u)) % vec4<u32>(32u)));
    var var_1 = arg_2.b;
    var_1 = func_4((~vec2<u32>(arg_1, 0u) & _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(arg_1, 8536u)), vec2<u32>(arg_1, 0u), ~vec2<u32>(28774u, 7576u))) >> ((_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_2.a), vec2<u32>(43936u, u_input.a)), countOneBits(vec2<u32>(arg_2.a, arg_2.a))) >> (vec2<u32>(u_input.c, 20728u ^ u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(-(_wgslsmith_mod_vec2_i32(var_0.xz, var_0.zx) & abs(var_0.zy)), vec2<i32>(var_0.x, abs(u_input.b) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -7762i), vec3<i32>(2147483647i, var_0.x, 0i)))), u_input.a, arg_0).b;
    var_1 = Struct_1(func_4(~(~(~vec2<u32>(arg_1, arg_2.a))), -min(abs(vec2<i32>(14436i, 22581i)), ~var_0.zw), firstLeadingBit(0u), _wgslsmith_f_op_f32(abs(arg_3.x))).b.a);
    let var_2 = arg_2.b;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, _wgslsmith_f_op_f32(arg_3.x - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1452f, arg_0, -286f, -702f), vec4<f32>(arg_0, arg_0, arg_3.x, 821f)))))), !(!(var_0.x == u_input.b))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !vec4<bool>(arg_1.b.a.x, all(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_3.a.x, arg_3.a.x, false, arg_3.a.x), vec4<bool>(false, arg_1.b.a.x, arg_3.a.x, arg_1.c))), any(func_3()), false);
    var var_1 = !func_4(~arg_2, select(-max(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, -1i)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-57351i, 1i), vec2<i32>(-11978i, -6993i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 23300i), vec2<i32>(u_input.b, u_input.b))), any(var_0.zz)), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(arg_0.x, -1140f))))).b.a;
    let var_2 = (_wgslsmith_div_vec3_i32(~vec3<i32>(-28933i, u_input.b, 15134i), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-51178i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), var_0.zwy), abs(vec3<i32>(0i, u_input.b, 19151i)))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(18813u, 0u, arg_1.a), abs(vec3<u32>(4192u, arg_1.a, u_input.c)), ~(~vec3<u32>(u_input.a, arg_1.a, arg_2.x))) % vec3<u32>(32u))) << (vec3<u32>(111184u, ~arg_1.a, _wgslsmith_div_u32(abs(arg_2.x), u_input.c)) % vec3<u32>(32u));
    let var_3 = 0i;
    var_1 = !vec3<bool>(arg_3.a.x, var_1.x, false);
    return func_4(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(arg_2.x, arg_1.a)), _wgslsmith_mod_vec2_u32(~arg_2, arg_2) | ~(vec2<u32>(u_input.c, 1u) ^ vec2<u32>(u_input.c, arg_2.x))), -(~var_2.xz), min(~_wgslsmith_clamp_u32(func_1().x, _wgslsmith_mult_u32(arg_1.a, 4294967295u), _wgslsmith_add_u32(u_input.c, 0u)), ~arg_2.x), _wgslsmith_f_op_f32(ceil(-1911f))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a, func_6(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-946f * 1009f))), _wgslsmith_sub_u32(u_input.a, firstLeadingBit(u_input.a)), func_4(func_1(), select(vec2<i32>(-10177i, 0i), vec2<i32>(u_input.b, u_input.b), false), 0u, _wgslsmith_f_op_f32(-1000f * -1099f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-210f, 2337f, 1105f), vec3<f32>(1600f, 212f, -600f)))))), func_4(vec2<u32>(4294967295u, u_input.a & u_input.a), -vec2<i32>(u_input.b, u_input.b), 7848u, _wgslsmith_f_op_f32(-1324f * _wgslsmith_f_op_f32(trunc(1657f)))), ~(~countOneBits(vec2<u32>(u_input.c, u_input.a))), Struct_1(vec3<bool>(false, all(vec2<bool>(true, false)), true))), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1825f)), -287f, -186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1420f), -278f, true)))));
    var_0 = func_4(vec2<u32>(~u_input.c, ~_wgslsmith_mod_u32(var_0.a & 1u, func_2())), vec2<i32>(-(u_input.b | -u_input.b), u_input.b), abs(var_0.a), 448f);
    var var_2 = var_0.b;
    let var_3 = var_0.b.a.x;
    var_2 = var_0.b;
    var_0 = Struct_2(~1u, var_0.b, var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, 1000f)) + 1000f))), -1645f, ~(~(~var_0.a)));
}

