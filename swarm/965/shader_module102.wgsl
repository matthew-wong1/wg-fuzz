struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -27452i, -70533i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = vec3<i32>(arg_0.a, -6012i, 4897i) | reverseBits(_wgslsmith_mult_vec3_i32(-abs(vec3<i32>(global0.x, -2147483647i, -2147483647i)), abs(vec3<i32>(2147483647i, -63583i, 25494i))));
    var var_0 = u_input.c;
    global0 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(5137i, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a | -30353i, reverseBits(6537i)) | _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, 43946i, global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0.a, arg_0.a), vec3<i32>(arg_0.a, u_input.d.x, arg_0.a))), -vec3<i32>(0i & global0.x, 2147483647i, -3095i)), -(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, global0.x, u_input.d.x), vec3<i32>(arg_0.a, global0.x, global0.x) << (vec3<u32>(44703u, 4294967295u, 0u) % vec3<u32>(32u)))));
    let var_1 = !vec2<bool>(!(true || all(vec2<bool>(false, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.b.x == 43152u)));
    var var_2 = vec4<i32>(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 29393i, 1i), -vec4<i32>(0i, global0.x, u_input.d.x, -64412i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(15960i, 39159i), true), global0.zx)), u_input.d.x, global0.x & global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global0.x, arg_0.a), abs(global0.x), -2147483647i, arg_0.a) & ~(~vec4<i32>(-49009i, 33723i, 2147483647i, 0i)), select(countOneBits(select(vec4<i32>(-7440i, 14183i, arg_0.a, 33213i), vec4<i32>(arg_0.a, -6796i, arg_0.a, 27454i), true)), firstLeadingBit(~vec4<i32>(u_input.a, 0i, arg_0.a, 40746i)), vec4<bool>(var_1.x, false, var_1.x, true))));
    return abs(var_2.x);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    global0 = _wgslsmith_mult_vec3_i32(min(firstLeadingBit(abs(vec3<i32>(-16979i, global0.x, 1i) >> (vec3<u32>(28504u, 4294967295u, 1u) % vec3<u32>(32u)))), vec3<i32>(16723i, u_input.a, min(_wgslsmith_add_i32(arg_3.c, 17221i), reverseBits(arg_3.c)))), select(max(abs(~vec3<i32>(-1i, global0.x, global0.x)), vec3<i32>(36775i, ~(-2147483647i), func_3(Struct_1(u_input.d.x, u_input.c)))), ~(select(vec3<i32>(arg_3.c, global0.x, -2147483647i), vec3<i32>(-57194i, 2147483647i, 2147483647i), true) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 39939u, u_input.e), vec3<u32>(u_input.b, 0u, u_input.e), vec3<u32>(u_input.c.x, arg_3.a, 5464u)) % vec3<u32>(32u))), arg_1.x));
    let var_0 = -1285f;
    global0 = _wgslsmith_mult_vec3_i32(firstLeadingBit(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, -30192i), vec3<i32>(arg_3.c, u_input.d.x, -7749i)))) << (vec3<u32>(firstLeadingBit(u_input.e) & arg_3.a, _wgslsmith_sub_u32(~arg_3.a, _wgslsmith_add_u32(53916u, 27773u)), min(_wgslsmith_add_u32(arg_3.a, 1u), ~arg_3.a)) % vec3<u32>(32u)), vec3<i32>(0i, ~firstLeadingBit(~arg_3.c), _wgslsmith_clamp_i32(global0.x, 34642i, -46924i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.d), _wgslsmith_f_op_f32(round(arg_3.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(exp2(var_0)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, -105f, arg_3.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.d, var_0, arg_3.b) + vec3<f32>(arg_3.d, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1452f, arg_3.d, arg_3.b), vec3<f32>(arg_3.b, arg_3.d, var_0), arg_1.x))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(474f, var_0, var_0))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-387f, 1000f, var_0))))))));
    var var_2 = arg_3;
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    global0 = -(abs(vec3<i32>(-71393i, _wgslsmith_mult_i32(23617i, -6607i), i32(-1i) * -1i)) >> ((max(vec3<u32>(19145u, arg_1.a, arg_1.a), vec3<u32>(arg_1.a, 4294967295u, 2855u)) ^ (vec3<u32>(4294967295u, 56161u, 1u) & (vec3<u32>(u_input.e, arg_1.a, u_input.c.x) << (vec3<u32>(4294967295u, u_input.b, 25993u) % vec3<u32>(32u))))) % vec3<u32>(32u)));
    global0 = vec3<i32>(~global0.x, ~0i, u_input.d.x);
    let var_0 = _wgslsmith_div_i32(-1i, -1i);
    global0 = max(-select(~(-vec3<i32>(0i, 0i, global0.x)), max(-vec3<i32>(var_0, u_input.d.x, 0i), -vec3<i32>(global0.x, 1i, -611i)), vec3<bool>(arg_0 < 0u, any(vec4<bool>(true, true, true, true)), true)), _wgslsmith_div_vec3_i32(abs(select(_wgslsmith_div_vec3_i32(vec3<i32>(-34529i, 6845i, 1i), vec3<i32>(12677i, 24391i, global0.x)), vec3<i32>(26428i, u_input.d.x, var_0), vec3<bool>(false, true, true))), vec3<i32>(_wgslsmith_div_i32(arg_1.c, -39649i), _wgslsmith_mod_i32(global0.x, 0i) << (countOneBits(4294967295u) % 32u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(7364i, arg_2, u_input.d.x, u_input.a), vec4<i32>(u_input.d.x, 0i, -36733i, 52491i), vec4<bool>(true, true, false, false)), vec4<i32>(-48032i, 0i, 2147483647i, -1i)))));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a, 29773u, arg_0), vec3<u32>(36246u, arg_0, 4294967295u), vec3<u32>(1u, 1u, u_input.e))), vec3<u32>(arg_0, _wgslsmith_add_u32(arg_1.a, arg_0), ~func_2(true, vec2<bool>(true, false), false, Struct_4(arg_1.a, -639f, 1i, 548f)).a)), min(vec3<u32>(firstLeadingBit(arg_0), select(18278u, 30000u, false), arg_1.a), vec3<u32>(_wgslsmith_sub_u32(u_input.b, 4294967295u), ~59419u, select(697u, 6132u, false))) << (vec3<u32>(~_wgslsmith_sub_u32(u_input.b, 1u), func_2(false, vec2<bool>(false, false), false, func_2(true, vec2<bool>(false, false), true, Struct_4(u_input.c.x, 682f, 2147483647i, -798f))).a, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(arg_0, arg_0, u_input.c.x) & vec3<u32>(u_input.e, u_input.e, arg_1.a))) % vec3<u32>(32u)));
    return Struct_1(reverseBits(18261i), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_1.a, 1816u), 1u), u_input.c) << (vec2<u32>(~arg_1.a ^ _wgslsmith_clamp_u32(19389u, 23549u, 17564u), u_input.c.x) % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = func_4(1u, func_2(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), vec2<bool>(true, false), !all(vec4<bool>(true, true, true, true)), Struct_4(_wgslsmith_mult_u32(u_input.c.x << (u_input.e % 32u), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f + 1100f)), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -693f))), reverseBits(-23350i));
    global0 = vec3<i32>(1i << (~u_input.c.x % 32u), (-20147i << ((abs(u_input.e) << (firstLeadingBit(17872u) % 32u)) % 32u)) | _wgslsmith_dot_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(-2147483647i, 54011i, 30224i))), reverseBits(vec3<i32>(var_0.a, global0.x, 20620i))), -(abs(~global0.x) << (_wgslsmith_div_u32(~u_input.b, u_input.c.x) % 32u)));
    var var_1 = select(vec2<bool>(all(vec3<bool>(false, false, true)), false), select(vec2<bool>(any(vec3<bool>(false, true, true)), (i32(-1i) * -19224i) <= var_0.a), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, 17410i > var_0.a), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !vec2<bool>(select(false, false, true) & select(true, false, false), !all(vec4<bool>(true, false, false, true))));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(1i, min(28995i, 17210i)), -44093i, ~u_input.d.x, global0.x);
    let var_3 = func_4(~(~reverseBits(~var_0.b.x)), func_2(true, !vec2<bool>(var_1.x, any(vec4<bool>(true, var_1.x, var_1.x, false))), -14629i >= firstTrailingBit(global0.x >> (var_0.b.x % 32u)), func_2(true, select(vec2<bool>(false, true), vec2<bool>(false, false), var_2.x >= -2147483647i), var_1.x, Struct_4(~var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1863f), 17079i, 591f))), u_input.d.x);
    return -748f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    global0 = abs(~vec3<i32>(func_2(true, vec2<bool>(true, true), true, func_2(false, vec2<bool>(true, false), false, Struct_4(u_input.b, 1258f, global0.x, var_0))).c, min(-2147483647i, global0.x) << (abs(1u) % 32u), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(22255i, 22525i), ~(-20328i), -344i << (u_input.b % 32u))));
    let var_1 = Struct_3(!(!(u_input.e >= 13387u) & all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1427f, -1063f, 389f, var_0), vec4<f32>(-1044f, 358f, var_0, var_0))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(all(vec4<bool>(true, true, true, var_1.a)), vec2<bool>(true, true), any(vec2<bool>(var_1.a, var_1.a)), func_2(true, vec2<bool>(false, false), var_1.a, Struct_4(4294967295u, 1727f, global0.x, 1058f))).b + -1057f)) - var_1.b.x);
    let var_3 = func_4(~51614u, Struct_4(_wgslsmith_div_u32(firstLeadingBit(21252u), 69157u), -597f, ~3357i, -394f), -global0.x);
    let var_4 = var_3;
    global0 = abs(reverseBits(vec3<i32>(-36349i, _wgslsmith_add_i32(1i, 0i), ~var_3.a)) >> (vec3<u32>(~_wgslsmith_sub_u32(4294967295u, var_3.b.x), _wgslsmith_div_u32(var_4.b.x, var_4.b.x), 1u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~vec4<u32>(39135u, 4294967295u, u_input.c.x, ~var_4.b.x), abs(countOneBits(~vec4<u32>(2757u, var_3.b.x, 41623u, u_input.e)))), _wgslsmith_mult_vec4_i32(max(firstLeadingBit(-vec4<i32>(var_4.a, global0.x, 49992i, 2422i)), firstLeadingBit(-vec4<i32>(-18524i, u_input.d.x, -2147483647i, var_3.a))), firstLeadingBit(-vec4<i32>(u_input.d.x, global0.x, 38820i, 52508i)) & (_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 14456i, -975i, var_3.a), vec4<i32>(0i, -1i, 24580i, 2147483647i)) << (vec4<u32>(4294967295u, 27013u, 14274u, var_4.b.x) % vec4<u32>(32u)))));
}

