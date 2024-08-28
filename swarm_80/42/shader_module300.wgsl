struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_4(arg_0.a, arg_0.b, arg_0.c);
    let var_1 = u_input.b;
    let var_2 = ~(-40492i);
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1626f))), 1338f, -1974f, _wgslsmith_f_op_f32(f32(-1f) * -114f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-700f, 3134f), _wgslsmith_f_op_f32(abs(-1801f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f + 503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -422f)))))));
    return _wgslsmith_mod_u32(var_0.b, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_0.b, 1u)), firstLeadingBit(vec2<u32>(0u, var_0.b)))) & ~_wgslsmith_sub_u32(~var_3.b, ~var_3.b));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, _wgslsmith_div_u32(0u, 21345u), func_3(Struct_4(vec4<i32>(arg_0.x, arg_0.x, 5671i, 1859i), u_input.b, vec2<bool>(true, false)))), ~select(vec4<u32>(u_input.a, 0u, u_input.a, 4757u), vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<bool>(false, true, true, false))) ^ abs(select(firstLeadingBit(~vec4<u32>(u_input.b, u_input.a, 1u, 27103u)), (vec4<u32>(0u, 78723u, 59310u, u_input.a) ^ vec4<u32>(u_input.b, 23910u, u_input.b, 4294967295u)) & firstLeadingBit(vec4<u32>(0u, 26428u, u_input.b, u_input.b)), false));
    var_0 = abs(vec4<u32>((u_input.a | 8699u) >> (~15928u % 32u), 13913u, var_0.x, ~(~reverseBits(4294967295u))));
    var var_1 = vec3<bool>(any(!vec3<bool>(true, true, var_0.x < 0u)), all(!vec2<bool>(true, all(vec2<bool>(true, false)))), true);
    var_0 = max(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, 0u), vec4<u32>(1u, u_input.a, 4294967295u, var_0.x)), vec4<u32>(4294967295u, var_0.x, 4294967295u, var_0.x) & vec4<u32>(35612u, var_0.x, u_input.b, u_input.b), vec4<u32>(2719u, 1u, 0u, 3111u) << (vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u) % vec4<u32>(32u)))), select(vec4<u32>(4294967295u, ~58217u, 57352u, ~_wgslsmith_clamp_u32(4294967295u, u_input.a, var_0.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, var_0.x, u_input.a, var_0.x) ^ vec4<u32>(1192u, u_input.a, var_0.x, var_0.x)), ~(~vec4<u32>(var_0.x, u_input.a, 0u, u_input.a))), vec4<bool>(var_1.x, all(vec4<bool>(true, false, true, true)) == true, true, any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)))));
    var_0 = reverseBits(vec4<u32>(~countOneBits(u_input.b | u_input.b), countOneBits(0u), ~_wgslsmith_add_u32(var_0.x, 4294967295u) << (4294967295u % 32u), u_input.b));
    return Struct_2(-(~u_input.c));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, arg_1, u_input.a), vec4<u32>(arg_1, arg_1, arg_1, arg_1)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, 94307u, 1u), vec4<u32>(0u, u_input.a, 4294967295u, arg_1)), ~countOneBits(vec4<u32>(2299u, 1u, u_input.a, 35785u))), vec3<i32>(-1i, _wgslsmith_div_i32(-3126i, arg_0.a.x) >> (53838u % 32u), _wgslsmith_clamp_i32(~0i, arg_0.a.x >> (4294967295u % 32u), i32(-1i) * -12245i)), !any(vec3<bool>(false, true, true))), Struct_2(func_2(u_input.c).a), func_2(func_2(vec2<i32>(arg_0.a.x, _wgslsmith_mod_i32(23915i, 2147483647i))).a), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, arg_0.a.x, 2147483647i, 2147483647i) >> ((vec4<u32>(1u, 0u, 21419u, 1u) << (vec4<u32>(35853u, u_input.b, 74491u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(16252i, arg_0.a.x, -1i, 34811i) | _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -23374i, 16865i, arg_0.a.x), vec4<i32>(2147483647i, 2147483647i, arg_0.a.x, 0i))), u_input.c.x));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.a.a, var_0.a.a), min(select(~var_0.a.a, vec4<u32>(u_input.a, u_input.b, var_0.a.a.x, var_0.a.a.x), select(vec4<bool>(var_0.d.x, true, var_0.a.c, var_0.d.x), vec4<bool>(true, false, var_0.d.x, var_0.a.c), true)), vec4<u32>(_wgslsmith_mult_u32(arg_1, 26805u), 46122u, 58158u, u_input.a >> (82720u % 32u)))), ~var_0.a.b, !var_0.d.x);
    var var_2 = arg_1;
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(abs(arg_2.x));
    return ~(-83657i);
}

fn func_1(arg_0: u32, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_4(vec4<i32>(u_input.c.x, -2147483647i, func_4(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-1642i, 0i), u_input.c)), 16153u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, 382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1698f, -188f, false)))), -1i), _wgslsmith_add_u32(abs(u_input.b), u_input.a), !vec2<bool>(false, all(!vec4<bool>(arg_1, true, false, arg_1))));
    let var_1 = 15893i;
    var var_2 = Struct_4(~select(vec4<i32>(-var_0.a.x, var_0.a.x, u_input.c.x | 6432i, -39994i), abs(vec4<i32>(-30289i, -56711i, var_1, u_input.c.x)) | vec4<i32>(var_1, var_0.a.x, 0i, 11336i), !vec4<bool>(arg_1, true, true, arg_1)), arg_0, vec2<bool>(!arg_1, true));
    var_2 = Struct_4(-var_2.a, 4230u << (0u % 32u), select(!vec2<bool>(select(true, true, true), all(vec3<bool>(arg_1, var_2.c.x, var_2.c.x))), var_2.c, !select(!var_0.c, select(vec2<bool>(false, false), vec2<bool>(var_0.c.x, false), var_0.c.x), all(vec2<bool>(arg_1, false)))));
    var_2 = Struct_4(vec4<i32>(firstTrailingBit(var_0.a.x), min(-61420i, _wgslsmith_sub_i32(var_2.a.x, u_input.c.x)), var_0.a.x, -(var_1 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(45223u, 4294967295u), vec2<u32>(75450u, 1u)) % 32u))), func_3(Struct_4(select(vec4<i32>(-34625i, -2147483647i, var_0.a.x, -39719i), var_2.a, false), 4294967295u, vec2<bool>(true, var_2.c.x))) ^ reverseBits(arg_0), select(vec2<bool>(u_input.c.x <= -u_input.c.x, arg_1), vec2<bool>(false, true), true));
    return StorageBuffer(77134i, ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, -19354i), var_0.a.wxx), _wgslsmith_sub_i32(-22665i, -1i) << (var_0.b % 32u), ~(-10359i) << (var_2.b % 32u)), u_input.b, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~(vec2<i32>(2003i, 0i) ^ vec2<i32>(u_input.c.x, -28699i))) & min(u_input.c, u_input.c | _wgslsmith_add_vec2_i32(u_input.c, u_input.c)));
    var_0 = u_input.c;
    let var_1 = true;
    var_0 = u_input.c;
    var_0 = -_wgslsmith_mult_vec2_i32(u_input.c, u_input.c);
    let var_2 = vec3<f32>(-1876f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(909f, _wgslsmith_f_op_f32(sign(-358f)))) * 200f), 374f);
    var var_3 = var_1;
    let x = u_input.a;
    s_output = func_1(abs(firstTrailingBit(firstTrailingBit(4630u))), var_1);
}

