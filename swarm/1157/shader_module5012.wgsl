struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec4<bool>,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1633f, 356f);

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(530i, 29851u, Struct_4(vec2<i32>(-17171i, 43465i), Struct_3(Struct_2(vec4<i32>(-20002i, 0i, 22624i, -13359i), 4294967295u, Struct_1(vec3<u32>(35183u, 51166u, 1u))), Struct_2(vec4<i32>(-28013i, i32(-2147483648), -1i, 2147483647i), 4294967295u, Struct_1(vec3<u32>(2562u, 20445u, 4294967295u))), vec3<i32>(-1i, -42531i, -44444i), Struct_2(vec4<i32>(-18489i, -9675i, 1i, i32(-2147483648)), 4294967295u, Struct_1(vec3<u32>(4294967295u, 35334u, 36357u))), vec3<f32>(1000f, 1127f, 988f)), vec4<bool>(true, false, true, false), 5692i)), Struct_5(24601i, 8210u, Struct_4(vec2<i32>(i32(-2147483648), -45675i), Struct_3(Struct_2(vec4<i32>(1i, 12253i, 10004i, 1i), 4294967295u, Struct_1(vec3<u32>(61857u, 1u, 39595u))), Struct_2(vec4<i32>(0i, 10255i, -1005i, 0i), 47076u, Struct_1(vec3<u32>(1u, 0u, 19041u))), vec3<i32>(i32(-2147483648), 28717i, 1i), Struct_2(vec4<i32>(15496i, 7230i, -68094i, i32(-2147483648)), 1816u, Struct_1(vec3<u32>(4294967295u, 50616u, 34202u))), vec3<f32>(382f, 112f, -1428f)), vec4<bool>(false, false, true, true), 19015i)), Struct_5(-4672i, 22625u, Struct_4(vec2<i32>(2147483647i, 9559i), Struct_3(Struct_2(vec4<i32>(0i, 0i, -34310i, -11897i), 1u, Struct_1(vec3<u32>(109846u, 0u, 9952u))), Struct_2(vec4<i32>(1244i, 2147483647i, 0i, 0i), 4294967295u, Struct_1(vec3<u32>(4294967295u, 31036u, 1u))), vec3<i32>(2147483647i, -3502i, -1i), Struct_2(vec4<i32>(1953i, 1165i, -35240i, -1i), 19735u, Struct_1(vec3<u32>(31095u, 1u, 4294967295u))), vec3<f32>(-1115f, -528f, -208f)), vec4<bool>(true, false, false, true), -5687i)), Struct_5(i32(-2147483648), 1u, Struct_4(vec2<i32>(0i, 1i), Struct_3(Struct_2(vec4<i32>(-26279i, -1i, 44009i, 79941i), 1u, Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_2(vec4<i32>(0i, i32(-2147483648), -49126i, -1i), 126749u, Struct_1(vec3<u32>(49043u, 23904u, 1u))), vec3<i32>(-18435i, -4751i, -20351i), Struct_2(vec4<i32>(78563i, 30992i, 23131i, 2147483647i), 0u, Struct_1(vec3<u32>(1u, 4294967295u, 0u))), vec3<f32>(-1000f, -221f, 1000f)), vec4<bool>(true, true, true, false), 1i)), Struct_5(-10830i, 1u, Struct_4(vec2<i32>(-49850i, 0i), Struct_3(Struct_2(vec4<i32>(-8760i, 32463i, 10507i, 0i), 21883u, Struct_1(vec3<u32>(36613u, 10759u, 32413u))), Struct_2(vec4<i32>(2147483647i, 14072i, 3934i, -24158i), 1u, Struct_1(vec3<u32>(5948u, 2873u, 0u))), vec3<i32>(1i, -37395i, -21683i), Struct_2(vec4<i32>(46751i, 17157i, i32(-2147483648), i32(-2147483648)), 42278u, Struct_1(vec3<u32>(0u, 56702u, 1u))), vec3<f32>(1484f, 887f, -1873f)), vec4<bool>(true, true, true, false), 16241i)), Struct_5(i32(-2147483648), 52391u, Struct_4(vec2<i32>(-13352i, 14122i), Struct_3(Struct_2(vec4<i32>(-60487i, -13384i, -1i, i32(-2147483648)), 6903u, Struct_1(vec3<u32>(1u, 24242u, 8020u))), Struct_2(vec4<i32>(1i, -62701i, 29359i, 1i), 4294967295u, Struct_1(vec3<u32>(1u, 33054u, 0u))), vec3<i32>(1i, -8466i, 1i), Struct_2(vec4<i32>(0i, 31680i, 2147483647i, 25033i), 4294967295u, Struct_1(vec3<u32>(0u, 0u, 30467u))), vec3<f32>(-1000f, 641f, -493f)), vec4<bool>(true, false, false, true), 18150i)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec3<u32> {
    global2 = array<Struct_5, 6>();
    global2 = array<Struct_5, 6>();
    let var_0 = _wgslsmith_mod_vec2_i32(select(_wgslsmith_sub_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 21339i), vec2<i32>(-47195i, 1i)), vec2<i32>(0i, 8848i)), _wgslsmith_div_vec2_i32(~vec2<i32>(-26901i, 25542i), _wgslsmith_sub_vec2_i32(vec2<i32>(27633i, 1i), vec2<i32>(0i, 62402i)))), firstTrailingBit(vec2<i32>(1i, i32(-1i) * -6229i)), all(arg_1)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, 1i)) << ((~u_input.a.yy >> (vec2<u32>(60127u, 1044u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(0i << (u_input.b % 32u), _wgslsmith_mod_i32(1i, -1i)) >> (vec2<u32>(firstLeadingBit(31731u), _wgslsmith_add_u32(0u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(~(-7964i), min(1i >> (0u % 32u), -20814i))));
    var var_1 = var_0.x;
    var var_2 = firstTrailingBit(vec2<i32>(var_0.x, -2147483647i));
    return _wgslsmith_mod_vec3_u32(u_input.a, ~(~(~u_input.a)) << (vec3<u32>(_wgslsmith_clamp_u32(47765u, reverseBits(4294967295u), 1u), ~69003u, 66828u) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    var var_0 = u_input.b;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 2534f) - _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(-global0.x)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(1f))))), vec2<f32>(-527f, global0.x));
    var var_1 = u_input.a.x;
    var_1 = 1u;
    var var_2 = global1[_wgslsmith_index_u32(arg_0.a.x, 3u)];
    return ~countOneBits(vec4<u32>(u_input.b >> (_wgslsmith_sub_u32(u_input.a.x, var_2.b.c.a.x) % 32u), _wgslsmith_clamp_u32(0u, 4294967295u | u_input.b, var_2.a.c.a.x), ~u_input.a.x | 1u, 32174u));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global2 = array<Struct_5, 6>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1763f * global0.x))), 999f);
    let var_0 = arg_0.x;
    var var_1 = func_4(Struct_1(func_3(true, vec4<bool>(true, true, true, 31523u < u_input.b))), false || (all(!vec3<bool>(false, false, arg_0.x)) && false));
    let var_2 = Struct_1(u_input.a);
    return Struct_2(_wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, -2147483647i, 32063i), vec4<i32>(-33649i, 2147483647i, -1i, 2147483647i), vec4<i32>(26929i, 49953i, 2342i, 1i)) >> (~vec4<u32>(var_1.x, 1u, 82672u, 3640u) % vec4<u32>(32u)), vec4<i32>(-3355i, -40869i, max(25442i, 1036i), abs(-22567i)), all(arg_0)), _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(44946i, 1i, 1i, -1i), vec4<i32>(-16421i, -3298i, 19073i, -10747i)), ~vec4<i32>(0i, -2147483647i, -33359i, -2147483647i))), u_input.a.x, Struct_1(select(_wgslsmith_div_vec3_u32(var_1.wyx, u_input.a), abs(u_input.a), true & var_0)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = ~0i;
    var var_1 = vec2<i32>(arg_0.a.x, ~arg_0.a.x);
    let var_2 = arg_0.a;
    let var_3 = global1[_wgslsmith_index_u32(~(~reverseBits(_wgslsmith_add_u32(61212u, u_input.b))), 3u)];
    let var_4 = arg_0;
    return true;
}

fn func_6(arg_0: bool) -> Struct_4 {
    var var_0 = 40008u;
    var var_1 = _wgslsmith_add_vec2_i32(countOneBits(abs(max(~vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 1i)))), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -29244i, 5756i), -vec3<i32>(-33154i, -32806i, 80614i)) >> (~abs(26661u) % 32u), -1i));
    let var_2 = _wgslsmith_sub_u32(abs(7930u | select(u_input.b | 3327u, ~0u, func_5(Struct_2(vec4<i32>(var_1.x, 0i, var_1.x, 0i), 4239u, Struct_1(u_input.a)), Struct_1(vec3<u32>(u_input.a.x, 1u, u_input.b)), true))), u_input.a.x);
    return Struct_4(_wgslsmith_mod_vec2_i32(-vec2<i32>(1i, -11587i), _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_1.x), vec2<i32>(0i, var_1.x))), ~countOneBits(vec2<i32>(1i, 1i)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(711u, u_input.b, 4294967295u, 68623u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_2, 4294967295u, 4294967295u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, u_input.b, u_input.b, var_2), vec4<u32>(17623u, var_2, u_input.b, u_input.a.x), vec4<u32>(0u, u_input.a.x, var_2, 1u)))) << (~(var_2 ^ ~0u) % 32u), 3u)], !(!(!vec4<bool>(arg_0, arg_0, true, false))), 19055i);
}

fn func_1() -> Struct_4 {
    let var_0 = 2147483647i;
    global2 = array<Struct_5, 6>();
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-1322f - global0.x));
    return func_6(func_5(func_2(vec2<bool>(any(vec3<bool>(true, true, false)), true)), func_2(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), all(vec4<bool>(true, false, true, true)))).c, (_wgslsmith_add_i32(var_0, var_0) << (1u % 32u)) > 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 3>();
    let var_0 = func_1();
    let var_1 = -vec3<i32>(var_0.b.d.a.x, 1i, -_wgslsmith_add_i32(~(-1i), -var_0.d));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.b.e.zy - vec2<f32>(var_0.b.e.x, func_6(var_0.c.x).b.e.x))));
    let var_2 = Struct_2(min(reverseBits(_wgslsmith_mult_vec4_i32(var_0.b.d.a, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_1.x, var_0.d, 2147483647i), var_0.b.a.a))), var_0.b.b.a), u_input.b, Struct_1(vec3<u32>(_wgslsmith_sub_u32(func_3(false, var_0.c).x, func_4(Struct_1(vec3<u32>(1u, var_0.b.d.c.a.x, 1u)), false).x), _wgslsmith_mod_u32(u_input.a.x, u_input.b) >> ((var_0.b.d.c.a.x ^ 13705u) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.b.a.c.a, vec3<u32>(u_input.b, var_0.b.b.b, 28272u)), _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xy)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_1.x);
}

