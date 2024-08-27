struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = global1.a;
    let var_1 = min(~(~u_input.b.x) | u_input.b.x, firstTrailingBit(countOneBits(global0.b.b.x ^ global0.c.a.b.x)));
    let var_2 = !(!select(select(select(vec4<bool>(global0.a.a.a.x, var_0.a.x, global1.a.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, global0.b.a.x, false), vec4<bool>(global0.a.a.a.x, global1.a.a.x, global1.a.a.x, true)), select(vec4<bool>(false, false, false, var_0.a.x), vec4<bool>(false, false, false, false), vec4<bool>(global1.a.a.x, true, false, false)), any(vec3<bool>(global1.a.a.x, true, false))), !vec4<bool>(false, false, false, global0.c.a.a.x), vec4<bool>(global1.a.a.x, all(vec2<bool>(true, global0.a.a.a.x)), !var_0.a.x, true)));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.c.a.b.x, 25358u), var_1);
    let var_4 = -10980i;
    return global1.a.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(global1.a, -(~(~global0.c.b) | global1.b), reverseBits(_wgslsmith_clamp_u32(~reverseBits(0u), ~_wgslsmith_clamp_u32(80910u, 38058u, u_input.b.x), 0u)));
    var var_1 = Struct_2(Struct_1(select(select(vec3<bool>(true, true, true), global1.a.a, vec3<bool>(true, global0.a.a.a.x, false)), !global1.a.a, false), arg_1), 2147483647i, _wgslsmith_dot_vec2_u32(global0.b.b >> (func_3() % vec2<u32>(32u)), global0.b.b));
    let var_2 = arg_0.x;
    global1 = var_0;
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(19149u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, global0.b.b.x, 10072u)), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, arg_1.x))), firstTrailingBit(~arg_0.x)), global1.a.b.x), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.xyy, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.a.b.x, 46790u) ^ vec3<u32>(global0.b.b.x, arg_0.x, var_0.a.b.x), ~arg_0.wxw)), countOneBits(_wgslsmith_mult_u32(u_input.b.x >> (var_2 % 32u), global1.a.b.x))));
    return Struct_2(Struct_1(!select(global0.a.a.a, vec3<bool>(false, global1.a.a.x, true), !global0.a.a.a), ~_wgslsmith_div_vec2_u32(~arg_1, vec2<u32>(22892u, 19373u) & vec2<u32>(4294967295u, arg_0.x))), global1.b ^ global0.c.b, 3629u);
}

fn func_1() -> Struct_3 {
    global1 = func_2(vec4<u32>(4294967295u, ~0u, u_input.b.x, 4294967295u) & vec4<u32>(_wgslsmith_mod_u32(~global1.c, 84058u), global0.b.b.x, max(0u, 4294967295u) & (4294967295u << (global1.a.b.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, global1.a.b.x, u_input.b.x), ~vec4<u32>(global0.b.b.x, 86264u, u_input.b.x, u_input.b.x))), global0.c.a.b);
    let var_0 = abs(global0.c.c);
    let var_1 = ~select(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(global0.a.a.b.x, var_0, 21762u)), firstTrailingBit(vec3<u32>(global1.a.b.x, 0u, u_input.b.x))), reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 1u, var_0), vec3<u32>(4294967295u, 88476u, 73206u)), ~vec3<u32>(global1.a.b.x, 4294967295u, 0u), select(vec3<u32>(47227u, 27277u, 59298u), vec3<u32>(7568u, var_0, global0.c.a.b.x), global0.b.a.x))), vec3<bool>(true, true, false | global0.a.a.a.x));
    var var_2 = Struct_1(global1.a.a, ~max(~global1.a.b, firstTrailingBit(vec2<u32>(4294967295u, 11195u))));
    return Struct_3(func_2(vec4<u32>(34211u, 4294967295u, global1.a.b.x, 4294967295u), vec2<u32>(~max(37330u, 17570u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.b.x, global0.b.b.x, 38980u), vec4<u32>(6009u, var_2.b.x, var_2.b.x, 1u) << (vec4<u32>(0u, 4294967295u, var_1.x, 4294967295u) % vec4<u32>(32u))))), global1.a, func_2(vec4<u32>(var_1.x, firstTrailingBit(1u), 0u, 1u), var_2.b));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = -2245f;
    var var_1 = func_1().a;
    var var_2 = Struct_1(func_2(vec4<u32>(u_input.b.x, 0u, firstLeadingBit(_wgslsmith_div_u32(43881u, u_input.b.x)), ~1u), vec2<u32>(1u, u_input.b.x >> (var_1.a.b.x % 32u)) ^ (arg_0.a.a.b | ~vec2<u32>(u_input.b.x, var_1.a.b.x))).a.a, func_1().c.a.b);
    var var_3 = func_1().a.a.a.x;
    var var_4 = 42586u < firstTrailingBit(global0.a.c);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), (vec3<i32>(-1i) * -countOneBits(vec3<i32>(-7938i, 4753i, global0.c.b))) & vec3<i32>(17537i, u_input.a.x, global1.b), global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f - -1011f)) * _wgslsmith_f_op_f32(max(1f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-258f + _wgslsmith_f_op_f32(abs(-394f))), 1168f)));
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(671f * 1606f) - _wgslsmith_div_f32(2525f, 222f)), -564f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(811f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-925f - -305f) * 876f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(525f, -631f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(944f - -643f))))))));
    global0 = Struct_3(func_4(Struct_3(Struct_2(Struct_1(vec3<bool>(true, global1.a.a.x, global1.a.a.x), vec2<u32>(global1.c, global1.a.b.x)), global0.a.b, ~0u), Struct_1(vec3<bool>(false, false, true), _wgslsmith_sub_vec2_u32(global1.a.b, global1.a.b)), func_4(Struct_3(Struct_2(global0.b, -7485i, 1u), Struct_1(vec3<bool>(false, false, true), global0.b.b), global0.c), ~vec3<i32>(0i, -2147483647i, global1.b), func_1().c, _wgslsmith_div_f32(-1765f, -1375f)).a), u_input.a, Struct_2(global1.a, _wgslsmith_mod_i32(~(-16535i), -1i), _wgslsmith_div_u32(global0.c.a.b.x, 4294967295u) | ~9775u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1246f, 1f))))).c, func_1().a.a, func_2(~_wgslsmith_mult_vec4_u32(~vec4<u32>(38748u, 1u, global0.c.a.b.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 30038u, 8429u, u_input.b.x), vec4<u32>(global1.c, u_input.b.x, u_input.b.x, 44638u))), ~func_1().c.a.b));
    var var_1 = Struct_3(Struct_2(global1.a, -5044i, 8977u), global0.a.a, global0.a);
    let var_2 = func_4(func_1(), vec3<i32>(4658i, -(~17633i), ~global1.b), var_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 1099f)))))).c.b;
    global0 = func_1();
    let var_3 = reverseBits(func_4(func_1(), min(_wgslsmith_mult_vec3_i32(-vec3<i32>(0i, u_input.a.x, -47418i), -u_input.a), ~vec3<i32>(-61678i, var_2, 1528i) | u_input.a), Struct_2(func_4(func_4(Struct_3(global0.a, var_1.a.a, Struct_2(Struct_1(vec3<bool>(false, false, var_1.a.a.a.x), vec2<u32>(global0.a.a.b.x, global1.c)), u_input.a.x, 48907u)), vec3<i32>(global0.a.b, -1i, -4046i), var_1.a, -159f), vec3<i32>(global0.a.b, -2147483647i, 1i), Struct_2(Struct_1(global1.a.a, var_1.b.b), -37056i, 28798u), _wgslsmith_f_op_f32(347f - var_0)).c.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5764i, 0i, 0i), vec3<i32>(var_2, -47996i, -7450i)), _wgslsmith_div_i32(-3956i, 1i)), ~var_1.a.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))).a.a.b.x);
    let var_4 = func_4(Struct_3(var_1.a, global1.a, Struct_2(Struct_1(vec3<bool>(var_1.b.a.x, true, global0.c.a.a.x), u_input.b), -(global1.b & 1i), 65141u)), min(-u_input.a, countOneBits(firstLeadingBit(vec3<i32>(-11172i, 40026i, -18400i)))), global0.a, -1544f);
    let x = u_input.a;
    s_output = StorageBuffer(-261f);
}

