struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = abs(arg_3.a.b.x) << (_wgslsmith_mod_u32(u_input.a.x, arg_3.a.c) % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(sign(-158f))));
    var_1 = arg_2.x;
    var var_2 = vec4<i32>(countOneBits(-(i32(-1i) * -arg_1.a.b.x)), -19136i, -8682i, ~arg_3.a.b.x >> (4294967295u % 32u));
    var_2 = arg_1.a.d.b;
    return arg_1.a.d.b;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1268f, 146f, 378f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 613f, 2193f) * vec3<f32>(-707f, -1000f, -673f)), _wgslsmith_div_vec3_f32(vec3<f32>(-969f, -497f, 944f), vec3<f32>(-1076f, 1646f, 515f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(547f, -1744f, -1862f))) + vec3<f32>(-1000f, -1000f, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-927f - -254f), _wgslsmith_f_op_f32(-978f + 973f), _wgslsmith_f_op_f32(f32(-1f) * -1458f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(468f, -325f, -802f))))));
    var var_1 = 654f;
    let var_2 = Struct_4(Struct_3(max(-1i, arg_0.d.a), arg_0.b & vec2<i32>(abs(-1i), -45028i), ~vec2<u32>(abs(arg_0.c.x), 0u >> (u_input.a.x % 32u)), Struct_1(_wgslsmith_clamp_i32(-arg_0.b.x, 1i ^ arg_0.a, 49943i), vec4<i32>(arg_0.d.a, abs(736i), -1i, ~0i), ~arg_0.d.c, (arg_0.d.b >> (vec4<u32>(1u, 7696u, arg_0.d.c, 24289u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.a.x, u_input.a.x, 35878u, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1384f))));
    var_1 = 1145f;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_i32(-(var_2.a.d.d.x & arg_0.b.x), ~func_3(Struct_5(4294967295u, arg_0), Struct_4(Struct_3(25015i, vec2<i32>(-2147483647i, var_2.a.b.x), u_input.a.yx, var_2.a.d), 1208f), var_0, Struct_2(arg_0.d, Struct_1(-1i, vec4<i32>(arg_0.a, 25401i, var_2.a.d.d.x, arg_0.b.x), u_input.a.x, var_2.a.d.b), 474f, -1i)).x), vec4<i32>(var_2.a.a, -1i, -2654i, arg_0.a), arg_0.c.x, abs(vec4<i32>(-1277i, arg_0.a, 2147483647i, arg_0.b.x)) >> (~vec4<u32>(arg_0.d.c, 1u, 5112u, 0u) % vec4<u32>(32u))), var_2.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -146f)))), abs(~select(1i, 17985i, arg_1) | -2147483647i));
    return _wgslsmith_clamp_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(0i, 25955i)), vec2<i32>(func_3(Struct_5(13850u, Struct_3(-2147483647i, vec2<i32>(var_2.a.b.x, var_3.b.d.x), var_2.a.c, var_2.a.d)), var_2, var_0, var_3).x ^ -var_2.a.d.b.x, -(~(-2783i))) ^ firstTrailingBit(vec2<i32>(arg_0.a, -2147483647i)), ~min(func_3(Struct_5(var_3.a.c, arg_0), Struct_4(Struct_3(var_3.d, arg_0.d.b.wx, vec2<u32>(4294967295u, 1u), Struct_1(-2147483647i, vec4<i32>(arg_0.d.d.x, var_3.a.b.x, -2147483647i, arg_0.a), 29712u, var_2.a.d.d)), var_3.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-429f, var_2.b, var_0.x))), var_3).ww, -select(arg_0.b, vec2<i32>(var_3.d, 29874i), vec2<bool>(true, false))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_mod_i32(1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(-13275i, 2147483647i, 14490i), vec3<i32>(0i, 0i, 15144i)) & -21461i, -8524i)), func_4(Struct_3(-11569i, vec2<i32>(1i, 1i), vec2<u32>(~4294967295u, _wgslsmith_mult_u32(1u, 4294967295u)), Struct_1(1i, func_3(Struct_5(arg_3.x, Struct_3(-26827i, vec2<i32>(-3758i, -1i), vec2<u32>(1u, 1u), Struct_1(0i, vec4<i32>(17794i, 2147483647i, -2147483647i, -80178i), arg_3.x, vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 43058i)))), Struct_4(Struct_3(1i, vec2<i32>(12031i, 45341i), vec2<u32>(4294967295u, 89778u), Struct_1(-46773i, vec4<i32>(-18426i, 4638i, -21570i, 1i), arg_0, vec4<i32>(-54435i, 0i, -15887i, 2277i))), -1000f), vec3<f32>(-131f, 1865f, 437f), Struct_2(Struct_1(-41163i, vec4<i32>(-60981i, 1i, 56690i, -1i), arg_3.x, vec4<i32>(51243i, 1i, 8716i, -22484i)), Struct_1(-1i, vec4<i32>(0i, -776i, 0i, 51029i), 0u, vec4<i32>(17401i, -37093i, -1i, -1i)), 198f, 40162i)), ~u_input.a.x, -vec4<i32>(1i, -9844i, -16661i, 1i))), all(vec2<bool>(arg_2, true))), vec2<u32>(arg_3.x, ~arg_3.x ^ u_input.a.x), Struct_1(~firstTrailingBit(1i), vec4<i32>(func_4(Struct_3(23041i, vec2<i32>(1i, 13780i), vec2<u32>(arg_0, 9510u), Struct_1(-2147483647i, vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 0i), arg_3.x, vec4<i32>(2147483647i, -1i, -713i, 0i))), !arg_2).x, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 35329i, 2147483647i), vec3<i32>(-1i, 0i, -2147483647i))), func_4(Struct_3(20072i, vec2<i32>(-2147483647i, -4791i), arg_3.yz, Struct_1(-3596i, vec4<i32>(2147483647i, -33542i, -1i, 62348i), arg_1, vec4<i32>(103625i, -24652i, 7433i, 0i))), true).x, 2147483647i << (_wgslsmith_div_u32(0u, u_input.a.x) % 32u)), max(~(~u_input.a.x), u_input.a.x), -vec4<i32>(~(-25276i), -4824i, _wgslsmith_mod_i32(-13910i, 1i), -15934i >> (0u % 32u))));
    let var_1 = select(!vec2<bool>(all(vec4<bool>(arg_2, true, arg_2, true)), any(vec4<bool>(arg_2, false, false, false))), !vec2<bool>(!(var_0.d.b.x != 0i), false), vec2<bool>(!select(true, true, !arg_2), true));
    var var_2 = Struct_3(_wgslsmith_mult_i32(abs(_wgslsmith_add_i32(0i, var_0.b.x)), reverseBits(-1154i)), ~(~abs(_wgslsmith_clamp_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, var_0.d.b.x), vec2<i32>(-62312i, var_0.b.x)))), var_0.c, Struct_1(var_0.b.x, vec4<i32>(abs(-2147483647i), var_0.d.a >> (_wgslsmith_mult_u32(arg_0, arg_3.x) % 32u), var_0.b.x, firstTrailingBit(9202i)), 1u, firstLeadingBit(~func_3(Struct_5(arg_0, Struct_3(6557i, var_0.b, vec2<u32>(arg_0, 1u), Struct_1(var_0.a, vec4<i32>(-39921i, -38691i, var_0.a, -6740i), 4357u, vec4<i32>(32434i, var_0.b.x, var_0.a, 2147483647i)))), Struct_4(Struct_3(-1i, var_0.d.b.wx, arg_3.wx, Struct_1(-2147483647i, var_0.d.d, u_input.a.x, vec4<i32>(-1i, var_0.b.x, var_0.b.x, var_0.b.x))), -379f), vec3<f32>(1529f, -1712f, -713f), Struct_2(var_0.d, var_0.d, 442f, var_0.a)))));
    var_0 = Struct_3(firstTrailingBit(var_0.d.b.x & (var_0.b.x >> (12931u % 32u))), -_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, var_2.b.x), ~_wgslsmith_div_vec2_i32(var_0.d.b.wz, vec2<i32>(var_2.a, var_0.d.d.x))), ~(~(~firstTrailingBit(var_0.c))), var_0.d);
    var_2 = Struct_3(abs(func_3(Struct_5(var_0.d.c << (arg_3.x % 32u), Struct_3(var_2.d.d.x, var_2.d.d.zx, vec2<u32>(84356u, var_2.c.x), var_0.d)), Struct_4(Struct_3(var_0.a, var_0.b, vec2<u32>(78788u, 0u), Struct_1(var_2.a, vec4<i32>(var_2.a, var_0.b.x, 58406i, var_2.a), 4294967295u, var_0.d.b)), _wgslsmith_f_op_f32(round(529f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, -152f, -1363f)), Struct_2(var_0.d, var_2.d, _wgslsmith_div_f32(408f, 1130f), var_2.a)).x), vec2<i32>(countOneBits(i32(-1i) * -var_2.b.x), ~var_0.d.a), arg_3.yx, var_0.d);
    return firstLeadingBit(arg_1);
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(1i, 2147483647i, ~(-9708i)), countOneBits(_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 25552i), ~vec2<i32>(30716i, 0i), vec2<i32>(1i, 1i))) & min(select(-vec2<i32>(-5062i, -28540i), countOneBits(vec2<i32>(-22739i, -1i)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<i32>(1i, 1i)), select(~_wgslsmith_mod_vec2_u32(vec2<u32>(1612u, u_input.a.x), max(u_input.a.zy, u_input.a.zy)), ~vec2<u32>(u_input.a.x, func_2(62558u, u_input.a.x, false, vec4<u32>(48048u, u_input.a.x, 5154u, 37811u))), true), Struct_1(1i, _wgslsmith_add_vec4_i32(vec4<i32>(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-25680i, -1i, 2147483647i, 0i), vec4<i32>(-2147483647i, 0i, -14617i, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(17781i, 1i), vec2<i32>(0i, 74140i)), 3648i), min(firstLeadingBit(vec4<i32>(-6889i, 67169i, -1i, -29964i)), ~vec4<i32>(-2147483647i, -1i, -17160i, 1i))), 74947u, countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-26486i, 0i, -1i, 8017i), vec4<i32>(2147483647i, -1i, 0i, -51884i)), vec4<i32>(4990i, -2147483647i, -13907i, -17119i), vec4<i32>(1i, 1i, 1i, 1i)))));
    var var_1 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, 1366f >= arg_0.x), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), 18450u != u_input.a.x)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(all(vec4<bool>(false, false, false, false)), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(false, false)), _wgslsmith_div_u32(39719u, 17244u) == u_input.a.x), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), !all(vec2<bool>(false, false))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -374f)));
    let var_3 = Struct_3(var_0.a, min(var_0.d.b.xx, var_0.b), ~vec2<u32>(~var_0.d.c, firstTrailingBit(u_input.a.x)), Struct_1(var_0.d.d.x, _wgslsmith_mult_vec4_i32(~vec4<i32>(23874i, var_0.a, -22608i, var_0.a) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, u_input.a.x, 0u), vec4<u32>(13283u, u_input.a.x, 80004u, u_input.a.x)) % vec4<u32>(32u)), ~var_0.d.d << (vec4<u32>(var_0.d.c, u_input.a.x, var_0.c.x, 106425u) % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(11657u, 15381u)), var_0.c >> (vec2<u32>(4294967295u, var_0.c.x) % vec2<u32>(32u))), abs(-(var_0.d.d >> (vec4<u32>(u_input.a.x, 1u, 1u, 20377u) % vec4<u32>(32u))))));
    let var_4 = u_input.a;
    return _wgslsmith_dot_vec3_i32(var_3.d.b.xwy, -((vec3<i32>(0i, -2147483647i, -1i) & vec3<i32>(2147483647i, var_3.d.a, -35668i)) & ~var_3.d.b.wyz) << (vec3<u32>(~4294967295u, 4294967295u, max(_wgslsmith_div_u32(4294967295u, 4294967295u), u_input.a.x)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-39915i, func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(334f, -536f, -1040f)))), _wgslsmith_add_i32(6447i, ~0i)), _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, 17681i), vec3<i32>(-1i, 49356i, -23612i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, -30898i), vec3<i32>(37230i, 52324i, 0i), vec3<i32>(0i, 48633i, -2147483647i)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-83316i, -55947i, -15494i, 0i), vec4<i32>(-1i, -7643i, -1i, -8899i)), -(~5985i))));
    var_0 = _wgslsmith_clamp_i32(countOneBits(min(_wgslsmith_div_i32(1i, 32521i) ^ select(-18454i, 0i, false), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, -973i), 20125i, min(-30150i, 1304i)))), 26982i, _wgslsmith_mult_i32(countOneBits(~2147483647i) >> (u_input.a.x % 32u), max(-1i, _wgslsmith_mod_i32(abs(-2147483647i), -7413i))));
    var var_1 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(abs(-54564i), i32(-1i) * -1i), _wgslsmith_add_i32(~29462i, min(0i, 53326i)), _wgslsmith_mult_i32(~0i, 1i), ~(~(-48777i))), _wgslsmith_add_vec4_i32(vec4<i32>(min(1i, -18022i), select(42432i, -16285i, true), -33495i, 7088i), vec4<i32>(~15111i, abs(2147483647i), -1i, 0i))), _wgslsmith_div_i32(1i, func_3(Struct_5(max(0u, 41398u), Struct_3(6544i, vec2<i32>(55975i, -18148i), vec2<u32>(u_input.a.x, 53901u), Struct_1(0i, vec4<i32>(-20371i, -13893i, 35880i, -15165i), 16311u, vec4<i32>(1i, 31704i, 2147483647i, -37223i)))), Struct_4(Struct_3(0i, vec2<i32>(1i, -1i), u_input.a.yy, Struct_1(-2147483647i, vec4<i32>(-24510i, -1i, 0i, 67754i), u_input.a.x, vec4<i32>(-22620i, 2147483647i, -27167i, -49815i))), 692f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-273f, 1905f, 1000f))) * vec3<f32>(789f, -1290f, 911f)), Struct_2(Struct_1(41523i, vec4<i32>(71807i, -2147483647i, 1i, 1i), 0u, vec4<i32>(-33913i, 29745i, 1i, 2147483647i)), Struct_1(-1i, vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -1i), u_input.a.x, vec4<i32>(0i, -5685i, 0i, -2147483647i)), _wgslsmith_f_op_f32(sign(633f)), 6941i)).x));
    var var_2 = all(vec3<bool>((~2147483647i >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u)) != ~(-2147483647i), all(vec4<bool>(false, true, true, true)), true));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(893i, 2147483647i, 0i, 46396i), vec4<i32>(-5668i, 15043i, -1i, -1i)), firstLeadingBit(vec4<i32>(25147i, 12631i, -20619i, -5108i)), vec4<i32>(-1i, -29203i, -53324i, 0i)), -vec4<i32>(-1i, 60414i, -2147483647i, -2147483647i)), ~select(vec4<i32>(42296i, 55974i, -7271i, 2147483647i), vec4<i32>(1i, -57148i, 1i, -42013i), true) | _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, -1i, -20937i), min(vec4<i32>(2147483647i, -22566i, -32756i, -49959i), vec4<i32>(-1i, -2147483647i, -46536i, 86398i)))), abs(~vec4<i32>(-16011i, 1i, select(1i, -1i, true), -16248i)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(10526u, u_input.a.x, 0u, 1252u), select(vec4<u32>(26588u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 62586u, 0u, 10117u), vec4<bool>(true, false, true, true))), u_input.a.x) << (~u_input.a.x % 32u), (max(-vec4<i32>(-17729i, 12232i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, -9343i, -3919i, -1i)) << (vec4<u32>(u_input.a.x << (41178u % 32u), abs(34228u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(0u, u_input.a.x)) % vec4<u32>(32u))) | abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_mult_i32(~abs(var_3.a) ^ -46390i, var_3.d.x));
}

