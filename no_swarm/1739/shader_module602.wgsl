struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<f32>(-933f, 1967f, 119f)), Struct_4(vec3<f32>(-668f, -286f, 400f)), Struct_4(vec3<f32>(-1265f, 445f, 1297f)), Struct_4(vec3<f32>(982f, 1569f, -1064f)), Struct_4(vec3<f32>(-359f, 2439f, -1480f)), Struct_4(vec3<f32>(681f, 748f, 2002f)), Struct_4(vec3<f32>(-186f, 266f, 678f)), Struct_4(vec3<f32>(1569f, -395f, 524f)), Struct_4(vec3<f32>(1084f, -169f, 598f)), Struct_4(vec3<f32>(863f, -346f, 1813f)), Struct_4(vec3<f32>(816f, -777f, -234f)), Struct_4(vec3<f32>(442f, -509f, 2213f)), Struct_4(vec3<f32>(645f, -392f, 1541f)), Struct_4(vec3<f32>(995f, -766f, 1301f)), Struct_4(vec3<f32>(-135f, 376f, 1322f)), Struct_4(vec3<f32>(-421f, -656f, -415f)), Struct_4(vec3<f32>(1869f, -117f, 141f)), Struct_4(vec3<f32>(-270f, -1878f, -1000f)), Struct_4(vec3<f32>(-407f, 2225f, -596f)), Struct_4(vec3<f32>(1195f, 1490f, 370f)), Struct_4(vec3<f32>(-392f, 2513f, -499f)), Struct_4(vec3<f32>(1774f, 834f, -523f)), Struct_4(vec3<f32>(-327f, -1874f, 258f)), Struct_4(vec3<f32>(-1307f, 1360f, -1000f)), Struct_4(vec3<f32>(1000f, -788f, -1614f)), Struct_4(vec3<f32>(-1086f, 398f, -105f)), Struct_4(vec3<f32>(1339f, 896f, 724f)), Struct_4(vec3<f32>(648f, -840f, -548f)), Struct_4(vec3<f32>(1175f, 1496f, -1231f)), Struct_4(vec3<f32>(1493f, -492f, -997f)), Struct_4(vec3<f32>(-840f, -286f, -1691f)), Struct_4(vec3<f32>(773f, 1716f, -2306f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32) -> vec4<i32> {
    global0 = array<Struct_4, 32>();
    var var_0 = global0[_wgslsmith_index_u32(0u, 32u)];
    global0 = array<Struct_4, 32>();
    var var_1 = Struct_5(!(_wgslsmith_dot_vec3_u32(~vec3<u32>(69129u, 4294967295u, 1u), vec3<u32>(94349u, 42337u, 15650u)) <= ~(~4294967295u)), _wgslsmith_f_op_f32(arg_0 - arg_0), -32238i, false, global0[_wgslsmith_index_u32(~reverseBits(firstLeadingBit(24749u)), 32u)]);
    let var_2 = vec3<u32>(57330u, 1u, ~1u);
    return _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, 1i, -75887i), reverseBits(vec4<i32>(1i, -29481i, -2147483647i, var_1.c))), ~_wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, -1i, u_input.b.x, -1i), vec4<i32>(var_1.c, -33271i, var_1.c, u_input.b.x)), vec4<i32>(var_1.c, 18322i, 20221i, 2147483647i))) << (~(~max(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 10332u, 0u))) % vec4<u32>(32u));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_5(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), -(~1i), true, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1609f, arg_0.x, arg_0.x)))))));
    let var_1 = !(!(!(!(!vec3<bool>(true, false, var_0.a)))));
    var_0 = Struct_5(var_0.d, 388f, firstTrailingBit(_wgslsmith_mult_i32(u_input.a, -_wgslsmith_clamp_i32(var_0.c, 0i, 27966i))), var_1.x, Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(-383f + 1287f), _wgslsmith_f_op_f32(var_0.b + 140f)))));
    let var_2 = _wgslsmith_f_op_f32(-444f - _wgslsmith_f_op_f32(-arg_0.x));
    var var_3 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(-select(var_0.c, u_input.b.x, var_0.a), _wgslsmith_div_i32(reverseBits(73783i), abs(var_0.c)), i32(-1i) * -u_input.b.x), vec3<i32>(var_0.c << (abs(66255u) % 32u), firstTrailingBit(0i), -var_0.c), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 8357i, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, 2147483647i, 50228i), vec3<i32>(-44412i, u_input.c, var_0.c)), reverseBits(vec3<i32>(var_0.c, var_0.c, var_0.c))) >> (~(~vec3<u32>(14987u, 0u, 1u)) % vec3<u32>(32u)));
    return !any(select(!select(vec4<bool>(var_0.a, false, false, var_1.x), vec4<bool>(false, false, true, false), true), vec4<bool>(var_0.a, var_0.a, var_2 < 1042f, var_1.x), var_0.a));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_5 {
    var var_0 = Struct_3(!arg_1.x, vec3<u32>(33469u, 0u, ~_wgslsmith_mult_u32(1u, min(4294967295u, 1u))));
    let var_1 = Struct_1(select(!vec4<bool>(var_0.a, arg_1.x, var_0.a, true), vec4<bool>(!arg_1.x, true == func_3(vec2<f32>(487f, 1201f)), var_0.a, !func_3(vec2<f32>(-1720f, 1675f))), !(!vec4<bool>(var_0.a, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f - -304f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(510f))))), _wgslsmith_f_op_f32(f32(-1f) * -277f))));
    let var_2 = Struct_2(_wgslsmith_sub_vec4_i32(countOneBits(countOneBits(-arg_0.a)), vec4<i32>(~_wgslsmith_mod_i32(0i, 43604i), 23949i, func_1(var_1.b).x, func_1(-1014f).x)));
    let var_3 = _wgslsmith_mod_vec2_u32(var_0.b.yz, ~var_0.b.yx);
    var var_4 = var_0.b.x;
    return Struct_5(var_0.a & false, 1425f, ~0i, ~arg_0.a.x > 2147483647i, global0[_wgslsmith_index_u32(0u, 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 32>();
    var var_0 = func_2(Struct_2(-_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.c, 2147483647i, 7148i, u_input.b.x), vec4<i32>(u_input.a, u_input.a, 28688i, u_input.b.x), vec4<bool>(true, true, false, true)), func_1(-1170f))), vec2<bool>(true, !any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16921u, 6315u, 4294967295u), vec3<u32>(115101u, 4294967295u, 37104u)) >> (1u % 32u), select(1u, countOneBits(2340u), var_0.d)), _wgslsmith_clamp_u32(1u, reverseBits(~67087u), select(_wgslsmith_mult_u32(19106u, 0u), _wgslsmith_add_u32(0u, 1u), select(var_0.d, var_0.a, var_0.a))), 1857u, ~1u), select(max(vec2<u32>(1u, 0u), firstTrailingBit(vec2<u32>(17781u, 21578u)) << (vec2<u32>(17819u, 4294967295u) % vec2<u32>(32u))), countOneBits(~vec2<u32>(1u, 0u)), true), _wgslsmith_f_op_f32(-1255f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-350f, -1908f), _wgslsmith_f_op_f32(var_0.e.a.x + -961f)))))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.c << (0u % 32u)), 2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.c, var_0.c, var_0.c), countOneBits(vec4<i32>(-2147483647i, var_0.c, u_input.b.x, 1775i))), -var_0.c | var_0.c), -min(-vec4<i32>(u_input.a, var_0.c, 2147483647i, var_0.c), vec4<i32>(23246i, var_0.c, 9230i, u_input.b.x))));
}

