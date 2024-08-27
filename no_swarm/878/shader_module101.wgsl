struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(4294967295u, Struct_1(vec2<i32>(-1i, 71456i), true, 1i, vec3<f32>(1000f, -304f, 215f), 6524i), Struct_1(vec2<i32>(3691i, 14743i), true, 26334i, vec3<f32>(-196f, 1931f, 107f), 8517i)), Struct_3(57285u, Struct_1(vec2<i32>(-6940i, 1i), false, -1i, vec3<f32>(2286f, -1453f, -1057f), -1i), Struct_1(vec2<i32>(0i, 20237i), false, -30763i, vec3<f32>(1011f, -366f, 1291f), 26155i)), Struct_3(54168u, Struct_1(vec2<i32>(0i, 2147483647i), false, 21215i, vec3<f32>(195f, 1513f, -1347f), 25072i), Struct_1(vec2<i32>(-37113i, -10119i), true, -1i, vec3<f32>(1236f, -222f, -584f), -20551i)), Struct_3(0u, Struct_1(vec2<i32>(35926i, 1i), false, i32(-2147483648), vec3<f32>(-234f, 977f, 739f), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 0i), true, -364i, vec3<f32>(-350f, -1443f, 348f), 36993i)), Struct_3(4294967295u, Struct_1(vec2<i32>(32199i, 2147483647i), false, -21822i, vec3<f32>(-1000f, 891f, 662f), 21438i), Struct_1(vec2<i32>(-18662i, 2147483647i), true, 0i, vec3<f32>(-351f, 286f, -186f), -16927i)), Struct_3(1u, Struct_1(vec2<i32>(i32(-2147483648), 0i), true, -1i, vec3<f32>(-1387f, 455f, -1460f), -1i), Struct_1(vec2<i32>(i32(-2147483648), 12209i), true, i32(-2147483648), vec3<f32>(-350f, -537f, -538f), -57494i)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec3<u32> {
    global0 = array<Struct_3, 6>();
    var var_0 = u_input.b.x;
    let var_1 = u_input.b.x;
    return arg_1;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<u32>(0u, 4294967295u ^ u_input.d, _wgslsmith_mult_u32(~29344u, ~(1u >> (_wgslsmith_add_u32(4294967295u, u_input.d) % 32u))));
    var_0 = vec3<u32>(1u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.d), 4294967295u) >> (67930u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.x), vec2<u32>(0u, 50882u)) & var_0.x, 1u, 21651u), min(~(~vec3<u32>(94695u, var_0.x, 427u)), ~(~vec3<u32>(var_0.x, 1u, 33943u)))));
    var_0 = firstTrailingBit(firstLeadingBit(vec3<u32>(min(var_0.x, u_input.a), _wgslsmith_clamp_u32(u_input.c, u_input.d, u_input.d), var_0.x))) & ~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 89426u), func_3(vec4<f32>(211f, -1121f, 1143f, 106f), vec3<u32>(var_0.x, 1u, 1u))));
    let var_1 = Struct_2(vec2<i32>(u_input.b.x, ~(u_input.b.x & u_input.b.x) >> (~(~4294967295u) % 32u)), (_wgslsmith_add_vec2_i32(-u_input.b.yy, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 8587i), u_input.b.xz)) & -firstLeadingBit(vec2<i32>(15928i, u_input.b.x))) ^ vec2<i32>(_wgslsmith_div_i32(9887i, 1i), u_input.b.x), ~abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -2147483647i), vec4<i32>(1i, -1i, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, -5347i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -44566i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -1i, 2147483647i), vec4<i32>(u_input.b.x, 35648i, -4523i, 0i)))));
    let var_2 = 7310u;
    return Struct_1(max(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_1.a.x, 54306i), var_1.c.ww, vec2<bool>(false, false)), min(vec2<i32>(7459i, var_1.b.x), u_input.b.yz)), var_1.a), var_1.a), false, 33328i, vec3<f32>(1f, _wgslsmith_f_op_f32(max(-1000f, -106f)), _wgslsmith_div_f32(1f, 1f)), _wgslsmith_dot_vec2_i32(~var_1.b, vec2<i32>(2147483647i >> (1u % 32u), ~u_input.b.x) & _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, -1i)), u_input.b.yz)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_3, 6>();
    let var_0 = arg_0.c.b.e;
    var var_1 = 60280u;
    let var_2 = vec4<bool>(arg_0.b.b, all(vec4<bool>(!arg_0.b.b, all(select(vec3<bool>(false, arg_0.c.b.b, arg_0.b.b), vec3<bool>(arg_0.c.b.b, arg_0.b.b, arg_0.c.b.b), arg_0.c.c.b)), true, func_2().b)), all(select(vec3<bool>(arg_0.b.d.x > arg_0.b.d.x, any(vec3<bool>(arg_0.c.c.b, false, true)), 23476i > u_input.b.x), !(!vec3<bool>(arg_0.c.b.b, false, arg_0.c.b.b)), !arg_0.b.b)), any(select(select(vec2<bool>(false, true), vec2<bool>(false, arg_0.c.b.b), select(vec2<bool>(true, false), vec2<bool>(true, arg_0.c.b.b), false)), vec2<bool>(any(vec4<bool>(true, arg_0.c.b.b, true, true)), any(vec2<bool>(true, arg_0.b.b))), !(arg_0.c.b.b | arg_0.c.c.b))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2518f), _wgslsmith_f_op_f32(sign(1393f))), arg_0.b.d.x, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0.b.d.x, arg_0.c.b.d.x))))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(629f)))), -1271f, -1000f, _wgslsmith_f_op_f32(arg_0.c.c.d.x - -261f))));
    return arg_0.d;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~(-countOneBits(-550i) >> (firstTrailingBit(firstTrailingBit(4294967295u)) % 32u)) >> ((u_input.c << (_wgslsmith_clamp_u32(~u_input.a, u_input.d, 0u) % 32u)) % 32u);
    global0 = array<Struct_3, 6>();
    var var_1 = select(vec2<bool>(false, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec3<bool>(false, true, false)), true)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true), all(vec4<bool>(false, false, false, false)))));
    global0 = array<Struct_3, 6>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-602f, 1235f) * -168f)));
    return func_2();
}

fn func_1() -> i32 {
    var var_0 = ~abs(~select(vec4<u32>(u_input.d, 80466u, u_input.c, 0u), select(vec4<u32>(u_input.d, 0u, u_input.c, 4294967295u), vec4<u32>(u_input.c, 1u, u_input.d, 1u), false), true));
    global0 = array<Struct_3, 6>();
    var var_1 = Struct_3(1u, func_5(func_4(Struct_4(vec3<i32>(u_input.b.x, 1i, u_input.b.x), func_2(), global0[_wgslsmith_index_u32(var_0.x, 6u)], Struct_2(u_input.b.zz, u_input.b.zx, vec4<i32>(9157i, u_input.b.x, u_input.b.x, u_input.b.x))), Struct_2(u_input.b.xy, u_input.b.xz, -vec4<i32>(19620i, u_input.b.x, -2147483647i, 19057i)))), func_5(func_4(Struct_4(reverseBits(u_input.b), Struct_1(u_input.b.yy, false, u_input.b.x, vec3<f32>(-665f, -1276f, -2335f), -2147483647i), global0[_wgslsmith_index_u32(u_input.a, 6u)], func_4(Struct_4(u_input.b, Struct_1(u_input.b.yy, false, -2147483647i, vec3<f32>(-1142f, 1655f, 134f), 26638i), global0[_wgslsmith_index_u32(var_0.x, 6u)], Struct_2(u_input.b.yz, u_input.b.yx, vec4<i32>(0i, 10513i, u_input.b.x, u_input.b.x))), Struct_2(u_input.b.zy, u_input.b.xz, vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)))), Struct_2(u_input.b.xz, u_input.b.yz, countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i))))));
    var_0 = select(vec4<u32>(var_1.a, (~u_input.a | countOneBits(1u)) << (~(0u << (var_0.x % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.a, var_0.x) & u_input.a, ~var_0.x), 58249u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, var_1.a, 1u, 0u), ~(~vec4<u32>(var_1.a, var_0.x, 1u, 1u) | select(vec4<u32>(var_1.a, var_0.x, u_input.d, 40042u), vec4<u32>(var_1.a, 0u, 1u, 59824u), var_1.b.b))), true);
    var_0 = select(~vec4<u32>(~(~0u), u_input.d, ~1u, var_1.a), vec4<u32>(~_wgslsmith_add_u32(var_0.x, firstLeadingBit(0u)), u_input.d, ~38466u, 0u), select(!vec4<bool>(any(vec3<bool>(false, true, var_1.b.b)), any(vec3<bool>(var_1.c.b, false, var_1.c.b)), any(vec4<bool>(true, var_1.b.b, true, true)), false), vec4<bool>(var_1.b.b, false, !(u_input.b.x >= 0i), true), var_1.b.b));
    return u_input.b.x;
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    global0 = array<Struct_3, 6>();
    var var_0 = -754f;
    var var_1 = Struct_4(firstLeadingBit(abs(countOneBits(u_input.b << (vec3<u32>(u_input.d, arg_0, 4294967295u) % vec3<u32>(32u))))), arg_2, Struct_3(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.c.a, 34294u, arg_1.c.a), vec3<u32>(0u, 3146u, arg_1.c.a)), vec3<u32>(arg_0, arg_1.c.a, 1u) | vec3<u32>(6976u, 313u, 27238u)), ~(~1851u), ~(~u_input.d)), arg_3, arg_2), func_4(arg_1, arg_1.d));
    var var_2 = vec2<u32>(min(arg_0, ~_wgslsmith_div_u32(1u, u_input.d)), 102046u) ^ vec2<u32>(firstLeadingBit(countOneBits(arg_0)), min(1u, 4294967295u));
    let var_3 = vec4<bool>(any(!(!vec4<bool>(arg_3.b, true, true, var_1.b.b))), true | any(select(!vec2<bool>(arg_1.c.b.b, true), vec2<bool>(var_1.c.c.b, var_1.b.b), !vec2<bool>(var_1.c.b.b, arg_1.c.b.b))), false, true);
    return Struct_3(arg_1.c.a, func_2(), func_5(Struct_2(arg_2.a, var_1.b.a, var_1.d.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    var var_0 = 1436f;
    var var_1 = func_6(~(~u_input.a), Struct_4(u_input.b, Struct_1(vec2<i32>(-u_input.b.x, ~1i), true, -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1615f, 533f, -291f))), ~func_1()), Struct_3(_wgslsmith_add_u32(9415u, u_input.c), func_2(), Struct_1(_wgslsmith_add_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x)), true, _wgslsmith_mod_i32(1i, 70567i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -286f, 1259f))), u_input.b.x)), Struct_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), min(u_input.b.yz, vec2<i32>(u_input.b.x, 2147483647i))), select(vec2<i32>(u_input.b.x, u_input.b.x) & u_input.b.xz, firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), true), _wgslsmith_mod_vec4_i32(-vec4<i32>(17384i, u_input.b.x, -25047i, u_input.b.x), min(vec4<i32>(0i, u_input.b.x, 60172i, u_input.b.x), vec4<i32>(u_input.b.x, -56116i, -22065i, u_input.b.x))))), Struct_1(-vec2<i32>(-2147483647i, u_input.b.x), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)), 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(147f, _wgslsmith_f_op_f32(ceil(1804f)), _wgslsmith_f_op_f32(f32(-1f) * -780f)) - vec3<f32>(491f, -190f, 1946f)), min(reverseBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), 0i)), func_2());
    let var_2 = max(var_1.a, _wgslsmith_mod_u32(~var_1.a, 4294967295u));
    var var_3 = 1u;
    let var_4 = vec4<bool>(func_2().b, all(!(!select(vec3<bool>(var_1.c.b, var_1.b.b, var_1.c.b), vec3<bool>(true, var_1.b.b, true), vec3<bool>(var_1.c.b, var_1.c.b, false)))), select(false, var_1.b.b, !func_2().b), false);
    let var_5 = ~vec3<i32>(var_1.b.c, -2147483647i, var_1.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(vec3<u32>(80032u, 4294967295u, _wgslsmith_sub_u32(27851u, var_1.a)), ~select(vec3<u32>(u_input.d, var_1.a, 70214u), vec3<u32>(u_input.a, 1664u, 4294967295u), var_1.c.b), ~select(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(1u, 0u, u_input.a), var_1.b.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c.d.x, var_1.c.d.x, 235f, -1230f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.d.x, var_1.c.d.x, var_1.c.d.x, var_1.b.d.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.d.x, 1125f, var_1.c.d.x, 1000f) * vec4<f32>(-695f, var_1.c.d.x, var_1.c.d.x, var_1.b.d.x))))), u_input.b.x, vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(~u_input.b.x, -2147483647i)), var_5.x, func_5(func_4(Struct_4(vec3<i32>(-32174i, -36887i, var_5.x), Struct_1(var_5.zx, var_1.c.b, -2147483647i, vec3<f32>(699f, var_1.b.d.x, -1521f), var_5.x), Struct_3(0u, Struct_1(vec2<i32>(29956i, var_1.c.a.x), var_4.x, -8823i, var_1.c.d, var_1.b.e), Struct_1(var_1.b.a, false, var_5.x, var_1.b.d, var_5.x)), Struct_2(var_1.b.a, vec2<i32>(0i, var_1.c.c), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, var_5.x))), Struct_2(vec2<i32>(u_input.b.x, -35397i), vec2<i32>(2147483647i, var_5.x), vec4<i32>(-6485i, 1377i, var_1.b.a.x, var_1.b.a.x)))).e), 4294967295u);
}

