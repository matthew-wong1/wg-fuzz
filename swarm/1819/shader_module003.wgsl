struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(-1577f, (countOneBits(u_input.a.x) >= -(i32(-1i) * -1i)) == !all(vec3<bool>(true, true, false)), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), true)), any(vec4<bool>(true, true, true, true))), all(vec4<bool>(true, (u_input.b.x ^ u_input.b.x) >= firstTrailingBit(u_input.d), select(true, true, false) && any(vec4<bool>(true, true, true, true)), true)), select(-11053i, -35769i, select(true, true, true)) >> (95302u % 32u));
    var var_1 = _wgslsmith_sub_vec3_u32(u_input.c, u_input.c);
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-10691i, abs(var_0.e), _wgslsmith_add_i32(-13239i, u_input.b.x), u_input.b.x >> (u_input.c.x % 32u)) >> (abs(~(~vec4<u32>(0u, 30526u, u_input.c.x, 1u))) % vec4<u32>(32u)), -(~reverseBits(u_input.a << (vec4<u32>(u_input.c.x, u_input.c.x, 76235u, u_input.c.x) % vec4<u32>(32u)))), vec4<i32>(-6068i ^ (_wgslsmith_div_i32(6787i, var_0.e) << (_wgslsmith_mod_u32(21291u, var_1.x) % 32u)), min(_wgslsmith_sub_i32(12636i << (u_input.c.x % 32u), -30449i), u_input.a.x), 35927i, ~(~abs(-22247i))));
    var var_3 = 29566u;
    var var_4 = var_0.a;
    return ~u_input.a.wyw;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1624f)))) + 1f)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 36643u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 25464u, 1u, 0u)), u_input.c.x, 13977u), _wgslsmith_mod_u32(u_input.c.x, 1u), u_input.c.x), ~vec3<u32>(_wgslsmith_sub_u32(23371u, u_input.c.x), u_input.c.x | u_input.c.x, u_input.c.x)), !(!(!vec4<bool>(true, arg_0, true, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-372f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-437f, 653f)) * -752f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-949f, -2058f))));
    var var_1 = vec3<i32>(-(u_input.b.x << (var_0.b.x % 32u)), u_input.a.x, ~u_input.d);
    var_1 = func_3();
    let var_2 = true;
    let var_3 = var_0.c.wyy;
    return Struct_2(var_0.d.x, false, var_0.c.xx, false, var_1.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_3) -> bool {
    var var_0 = 4294967295u;
    var var_1 = func_2(arg_0.a.d);
    let var_2 = arg_1;
    var var_3 = vec3<bool>(!(!arg_1.b.x && var_2.b.x), var_1.b || true, var_1.b);
    var var_4 = true;
    return false;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.c;
    var_0 = arg_2.c;
    let var_1 = -(~vec4<i32>(_wgslsmith_sub_i32(~(-1i), u_input.d ^ arg_1.x), _wgslsmith_sub_i32(1i, -4673i) << (~arg_0.d.x % 32u), -2147483647i, _wgslsmith_div_i32(-arg_3.e, 33720i)));
    var_0 = arg_3.c;
    let var_2 = 29282u;
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = ~u_input.a.xw;
    var var_1 = ~abs(~u_input.c.x | max(8696u, 0u)) >> (~(~_wgslsmith_dot_vec3_u32(u_input.c, min(u_input.c, u_input.c))) % 32u);
    let var_2 = func_5(Struct_1(min(u_input.c.xz, vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -1144f), func_4(Struct_4(func_2(true), Struct_3(-1000f, u_input.c, vec4<bool>(true, false, true, false), vec2<f32>(1402f, 162f)), u_input.c.x >> (26449u % 32u)), Struct_5(u_input.c.xy, vec2<bool>(true, true), vec4<f32>(761f, 958f, -103f, -1000f)), Struct_3(528f, u_input.c ^ vec3<u32>(u_input.c.x, 9105u, u_input.c.x), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1819f, 1000f)))), vec2<u32>(firstLeadingBit(0u), ~(u_input.c.x ^ u_input.c.x)), vec3<i32>(u_input.b.x, ~(-26001i), ~var_0.x) ^ vec3<i32>(17741i, -6249i, countOneBits(var_0.x))), u_input.a.yyz, func_2(all(vec4<bool>(var_0.x > var_0.x, any(vec3<bool>(false, false, false)), u_input.b.x >= arg_0, all(vec3<bool>(false, false, true))))), Struct_2(_wgslsmith_f_op_f32(158f * 216f), false, select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c.x < 4294967295u), true, ~arg_0));
    var var_3 = u_input.b;
    let var_4 = Struct_2(var_2.b, true, func_2(false).c, all(!(!vec4<bool>(false, var_2.c, var_2.c, true))), func_5(Struct_1(~(~vec2<u32>(u_input.c.x, var_2.d.x)), var_2.b, !var_2.c, ~(~vec2<u32>(4575u, var_2.d.x)), -u_input.a.wwz), ~(~vec3<i32>(var_3.x, -2147483647i, var_0.x)), func_2(80588u <= abs(var_2.d.x)), Struct_2(var_2.b, (u_input.a.x < u_input.b.x) & true, !vec2<bool>(var_2.c, true), false, _wgslsmith_div_i32(~(-68155i), arg_0))).e.x);
    return Struct_5(vec2<u32>(u_input.c.x, 0u), !(!(!vec2<bool>(true, var_2.c))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(522f, _wgslsmith_f_op_f32(step(1358f, var_2.b)), 877f, -228f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.a, var_4.a, 1488f, var_2.b)))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_5) -> f32 {
    var var_0 = 19820i;
    var var_1 = _wgslsmith_clamp_i32(~6653i, _wgslsmith_div_i32(u_input.a.x, u_input.d), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, ~44405i, reverseBits(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-51630i, u_input.b.x, u_input.a.x), vec3<i32>(2147483647i, u_input.d, -2147483647i))), u_input.a << (vec4<u32>(u_input.c.x, 55915u, u_input.c.x, ~arg_1.a.x) % vec4<u32>(32u))));
    var_0 = 1i;
    let var_2 = func_5(Struct_1(~u_input.c.yz, -1495f, true, arg_1.a, u_input.a.xyz), vec3<i32>(firstTrailingBit(0i), _wgslsmith_mult_i32(select(-1i, -u_input.a.x, arg_0.x == arg_1.c.x), u_input.d), ~func_2(arg_1.b.x).e), func_2((arg_0.x <= _wgslsmith_f_op_f32(min(501f, arg_0.x))) == !func_4(Struct_4(Struct_2(arg_1.c.x, true, vec2<bool>(true, true), arg_1.b.x, 3028i), Struct_3(988f, vec3<u32>(arg_1.a.x, 24463u, arg_1.a.x), vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x), vec2<f32>(arg_0.x, arg_1.c.x)), arg_1.a.x), Struct_5(u_input.c.xx, vec2<bool>(true, arg_1.b.x), vec4<f32>(arg_0.x, arg_1.c.x, 1015f, -1000f)), Struct_3(arg_1.c.x, vec3<u32>(u_input.c.x, 4294967295u, arg_1.a.x), vec4<bool>(arg_1.b.x, false, false, true), vec2<f32>(-1000f, 1320f)))), Struct_2(888f, true, vec2<bool>(select(arg_1.b.x, func_1(-16460i).b.x, !arg_1.b.x), func_2(9396u > u_input.c.x).d), u_input.a.x > -67819i, select(-2147483647i, _wgslsmith_mod_i32(u_input.a.x >> (7320u % 32u), u_input.b.x), arg_1.b.x)));
    var var_3 = ~49421u;
    return _wgslsmith_div_f32(arg_0.x, func_1(func_5(func_5(var_2, vec3<i32>(2147483647i, 1i, 2147483647i), Struct_2(1161f, arg_1.b.x, vec2<bool>(var_2.c, arg_1.b.x), true, -1i), func_2(arg_1.b.x)), var_2.e, Struct_2(arg_1.c.x, false, arg_1.b, false, u_input.a.x), Struct_2(_wgslsmith_f_op_f32(select(arg_0.x, 440f, false)), false, select(arg_1.b, arg_1.b, var_2.c), true, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e.x, var_2.e.x), vec2<i32>(-699i, u_input.d)))).e.x).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(vec4<f32>(-118f, _wgslsmith_f_op_f32(step(-397f, -999f)), _wgslsmith_f_op_f32(step(-1306f, 1000f)), -228f), func_1(u_input.a.x))) + -520f), u_input.c | vec3<u32>(_wgslsmith_add_u32(func_1(0i).a.x, _wgslsmith_mod_u32(0u, 1u)), u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), !vec4<bool>(func_4(Struct_4(Struct_2(-1195f, false, vec2<bool>(false, true), true, u_input.b.x), Struct_3(-857f, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(false, true, true, false), vec2<f32>(1000f, 1033f)), 1u), func_1(u_input.b.x), Struct_3(257f, u_input.c, vec4<bool>(true, false, false, true), vec2<f32>(-1000f, -1873f))), any(vec4<bool>(true, false, true, false)), true, func_5(func_5(Struct_1(u_input.c.xy, 2898f, false, u_input.c.xx, vec3<i32>(-1i, 16648i, u_input.d)), u_input.a.wyx, Struct_2(-1000f, false, vec2<bool>(false, true), false, u_input.b.x), Struct_2(-463f, false, vec2<bool>(false, false), true, 0i)), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), func_2(false), Struct_2(-826f, true, vec2<bool>(false, true), false, u_input.a.x)).c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1036f, -346f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 1302f)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(244f - 638f))), -122f)));
    let var_1 = Struct_2(850f, true, func_2(var_0.c.x).c, -26977i >= ~u_input.d, func_5(func_5(Struct_1(vec2<u32>(var_0.b.x, var_0.b.x), var_0.a, var_0.c.x, var_0.b.yy, vec3<i32>(-1i, -7041i, u_input.a.x)), max(vec3<i32>(u_input.b.x, 8085i, -1i), u_input.a.wyx), func_2(var_0.c.x), Struct_2(var_0.d.x, var_0.c.x, var_0.c.xy, var_0.c.x, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -23873i, 2147483647i), vec3<i32>(u_input.b.x, 2147483647i, u_input.d)), u_input.d, ~(-2147483647i)), func_2(true && var_0.c.x), Struct_2(_wgslsmith_f_op_f32(step(var_0.d.x, -1237f)), all(var_0.c.xy), var_0.c.xy, false, _wgslsmith_add_i32(u_input.d, u_input.b.x))).e.x ^ (-(~u_input.b.x) & -66293i));
    var_0 = Struct_3(1237f, vec3<u32>(39650u, 4294967295u, reverseBits(var_0.b.x)), !vec4<bool>(true | !var_0.c.x, false, func_5(Struct_1(var_0.b.zy, -130f, var_1.c.x, vec2<u32>(0u, u_input.c.x), vec3<i32>(var_1.e, -1i, 0i)), vec3<i32>(var_1.e, u_input.d, -1i), func_2(true), var_1).c, var_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 882f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 270f) + var_0.d)) * vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_div_f32(902f, 430f)))));
    let var_2 = func_2(var_0.c.x);
    var var_3 = _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 50303u, 4481u, var_0.b.x), vec4<u32>(36430u, 36262u, var_0.b.x, var_0.b.x))), vec4<u32>(u_input.c.x, 1u, 7246u, _wgslsmith_div_u32(u_input.c.x, 92987u))), ~vec4<u32>(u_input.c.x, countOneBits(var_0.b.x), max(var_0.b.x, ~26360u), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-u_input.b), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.b.x, u_input.c.x), var_3.xx), min(~var_3.yx, select(var_3.yx, vec2<u32>(1u, 1u), vec2<bool>(var_2.c.x, var_0.c.x))) ^ u_input.c.xx), countOneBits(min(~var_0.b.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(var_3.x, 4294967295u))) ^ _wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.b.zy), ~vec2<u32>(var_3.x, 12982u))), u_input.a);
}

