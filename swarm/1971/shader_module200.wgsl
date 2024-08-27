struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
    d: Struct_4,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: u32, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = ~(~(~arg_1.d.a.a));
    let var_1 = arg_3.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * -2123f)) * arg_3.d.c.x)) + _wgslsmith_f_op_f32(abs(var_1.c.x)));
    var var_3 = !select(vec2<bool>(arg_3.b, arg_3.b), arg_1.a.xy, !vec2<bool>(arg_1.a.x, true));
    var_3 = vec2<bool>(var_3.x, !(var_3.x || true) | !(!(4294967295u != arg_1.d.a.a.x)));
    return ~_wgslsmith_mult_vec2_u32(select(arg_3.a.a.zx | vec2<u32>(0u, arg_2), ~vec2<u32>(var_1.a.x, 0u), vec2<bool>(false, arg_3.b)) & vec2<u32>(firstLeadingBit(10074u), firstTrailingBit(1407u)), vec2<u32>(0u, 1u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(abs((~vec2<u32>(73295u, u_input.a) << (func_3(vec4<u32>(0u, u_input.b, 4294967295u, 0u), Struct_5(vec4<bool>(false, arg_0, true, arg_0), u_input.a, vec4<i32>(-16341i, 0i, 0i, 1i), Struct_4(Struct_2(vec4<u32>(u_input.a, 32470u, u_input.a, u_input.a), vec4<i32>(-65966i, 9609i, -602i, -2147483647i), vec4<f32>(1928f, 633f, -372f, -709f)), u_input.b, Struct_3(Struct_1(vec3<u32>(u_input.a, 4294967295u, 4294967295u), 4001u), arg_0, vec4<u32>(u_input.b, u_input.b, 20655u, 1u), Struct_2(vec4<u32>(u_input.b, u_input.b, 76673u, u_input.b), vec4<i32>(0i, 1i, 1i, 1i), vec4<f32>(179f, 117f, -410f, 783f)), vec2<u32>(4294967295u, 7729u)), Struct_3(Struct_1(vec3<u32>(u_input.b, 4294967295u, 5244u), 1u), false, vec4<u32>(u_input.a, 0u, u_input.b, u_input.b), Struct_2(vec4<u32>(4294967295u, 1u, u_input.a, 14852u), vec4<i32>(-5087i, 22259i, -2147483647i, -1i), vec4<f32>(-294f, -276f, 2319f, 496f)), vec2<u32>(u_input.a, 69984u))), vec3<i32>(0i, 1840i, 19652i)), 4294967295u, Struct_3(Struct_1(vec3<u32>(1u, 67414u, u_input.b), 9549u), false, vec4<u32>(u_input.a, 0u, 27288u, u_input.b), Struct_2(vec4<u32>(0u, 39503u, u_input.a, u_input.b), vec4<i32>(0i, 2147483647i, 12237i, 2147483647i), vec4<f32>(-1430f, -758f, 1221f, 835f)), vec2<u32>(u_input.a, u_input.b))) % vec2<u32>(32u))) & select(vec2<u32>(u_input.a, 775u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(40203u, u_input.a)), false)), ~((~vec2<u32>(u_input.a, u_input.a) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 48556u)) % vec2<u32>(32u))) ^ ~vec2<u32>(u_input.a, u_input.b)));
    var var_1 = var_0.x >> ((firstLeadingBit(64739u) ^ _wgslsmith_sub_u32(~17238u, _wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(6505u, u_input.b), 18136u))) % 32u);
    var var_2 = Struct_3(Struct_1(vec3<u32>(_wgslsmith_mult_u32(u_input.a, 0u) >> (_wgslsmith_div_u32(1u, 1u) % 32u), 0u & ~var_0.x, var_0.x), min(_wgslsmith_mod_u32(15457u, _wgslsmith_sub_u32(var_0.x, 25338u)), u_input.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f) + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1383f))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(611f - -1132f), 1f)), _wgslsmith_add_vec4_u32(~max(~vec4<u32>(1u, 1u, u_input.b, u_input.a), ~vec4<u32>(4294967295u, var_0.x, u_input.a, var_0.x)), vec4<u32>(u_input.b, _wgslsmith_div_u32(~var_0.x, reverseBits(18850u)), var_0.x, ~var_0.x)), Struct_2(vec4<u32>(var_0.x, ~(~var_0.x), 1u, 9617u), max(vec4<i32>(max(2147483647i, 2147483647i), 1i, 1i, ~35789i), max(abs(vec4<i32>(2147483647i, -2147483647i, -19516i, -2147483647i)), vec4<i32>(0i, 24108i, 2147483647i, 42478i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-909f, 1293f), _wgslsmith_div_f32(-321f, -656f), 1468f, _wgslsmith_f_op_f32(1660f + 304f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(295f, 931f, 894f, 1393f)))), vec2<u32>(u_input.a, 57674u) & firstLeadingBit(vec2<u32>(4294967295u, 0u) & var_0));
    let var_3 = firstLeadingBit(4294967295u);
    var var_4 = vec4<bool>(arg_0, arg_0, false, var_2.d.b.x != _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_2.d.b.x, 0i, -2147483647i, var_2.d.b.x)), var_2.d.b));
    return Struct_1(~var_2.d.a.xyz, _wgslsmith_add_u32(max(var_0.x, var_0.x) | ~var_3, 1u) << (var_3 % 32u));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = func_2(true).a.yx;
    var var_1 = vec3<u32>(u_input.a, ~arg_2.b >> (firstLeadingBit(43791u) % 32u), _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a));
    var var_2 = true;
    return Struct_4(Struct_2(vec4<u32>(reverseBits(_wgslsmith_clamp_u32(1u, 4294967295u, var_0.x)), u_input.a, var_0.x, var_1.x), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 0i, -19347i, -18608i)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(select(1i, -1i, true), _wgslsmith_mult_i32(-39476i, -10316i), i32(-1i) * -1i, ~(-89636i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 389f, -1000f)))))), 1u, Struct_3(func_2(!(arg_1.x & true)), !arg_3.x, ~vec4<u32>(u_input.a & 4294967295u, func_3(vec4<u32>(var_0.x, 4294967295u, arg_2.b, var_1.x), Struct_5(vec4<bool>(arg_3.x, arg_1.x, arg_1.x, false), 922u, vec4<i32>(2147483647i, 1i, 45004i, -2147483647i), Struct_4(Struct_2(vec4<u32>(var_1.x, u_input.b, 4294967295u, 1u), vec4<i32>(-21807i, 2147483647i, 61275i, 5895i), vec4<f32>(-109f, arg_0, arg_0, arg_0)), var_0.x, Struct_3(arg_2, false, vec4<u32>(4294967295u, 4294967295u, u_input.b, 5509u), Struct_2(vec4<u32>(18311u, u_input.a, 0u, arg_2.b), vec4<i32>(-2147483647i, 8220i, 1926i, 41659i), vec4<f32>(-1053f, arg_0, -746f, arg_0)), vec2<u32>(var_1.x, arg_2.a.x)), Struct_3(Struct_1(vec3<u32>(14393u, 0u, 5441u), var_1.x), arg_1.x, vec4<u32>(4294967295u, arg_2.a.x, 100924u, arg_2.a.x), Struct_2(vec4<u32>(var_1.x, 1u, u_input.a, 0u), vec4<i32>(-47809i, -2147483647i, 2147483647i, 0i), vec4<f32>(arg_0, -867f, arg_0, arg_0)), arg_2.a.zy)), vec3<i32>(0i, -35778i, 1i)), var_1.x, Struct_3(arg_2, false, vec4<u32>(var_0.x, 1u, arg_2.b, var_0.x), Struct_2(vec4<u32>(38960u, 1u, var_1.x, 83968u), vec4<i32>(12329i, 48202i, 0i, 1i), vec4<f32>(arg_0, 286f, -1451f, arg_0)), var_1.xz)).x, _wgslsmith_mod_u32(40258u, arg_2.b), ~var_1.x), Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, u_input.a, var_1.x, 0u), vec4<u32>(41071u, 62599u, 4294967295u, 37766u)), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), vec4<f32>(-1312f, -745f, _wgslsmith_f_op_f32(step(659f, -998f)), _wgslsmith_f_op_f32(arg_0 - arg_0))), max(_wgslsmith_mod_vec2_u32(var_0, var_0), _wgslsmith_sub_vec2_u32(abs(var_0), ~vec2<u32>(arg_2.a.x, 4294967295u)))), Struct_3(func_2(!arg_1.x), false, ~abs(~vec4<u32>(var_1.x, 79801u, var_1.x, var_0.x)), Struct_2(countOneBits(vec4<u32>(19965u, 59626u, var_1.x, 1u) & vec4<u32>(arg_2.a.x, u_input.a, 4294967295u, 1u)), ~select(vec4<i32>(43489i, 0i, -13867i, 2147483647i), vec4<i32>(37477i, 0i, -1i, 1i), arg_3.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 2054u), ~var_0)));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(1000f, vec2<bool>(true, true), func_2(1u != u_input.b), vec2<bool>(select(u_input.a != _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.a)), all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, true))), true));
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(365f)) * var_0.c.d.c.x))), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_0.d.b, false)), vec2<bool>(true, true), false), vec2<bool>(true, true), var_0.d.b), Struct_1(firstTrailingBit(~var_0.d.d.a.wyz ^ ~vec3<u32>(u_input.a, var_0.b, var_0.c.e.x)), ~u_input.b), vec2<bool>(true, !(select(var_0.c.b, var_0.c.b, true) | (false | var_0.d.b))));
    var_0 = func_4(-614f, vec2<bool>(var_0.d.b, true | var_0.c.b), var_0.d.a, vec2<bool>(~4294967295u >= (0u ^ (var_0.d.e.x | 0u)), false));
    var var_1 = 1537f;
    var_0 = Struct_4(Struct_2(vec4<u32>(1u, var_0.d.e.x, _wgslsmith_add_u32(u_input.a, u_input.b << (1u % 32u)), 1u), var_0.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.d.c.x, 310f, 560f, 1077f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.a.c.x, var_0.c.d.c.x, var_0.a.c.x), var_0.c.d.c))), 22229u, var_0.c, Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1372f, -1096f))), select(vec2<bool>(var_0.c.b, var_0.c.b), vec2<bool>(true, true), true), var_0.d.a, vec2<bool>(var_0.d.b, var_0.d.b)).d.a, var_0.c.b, var_0.c.c & reverseBits(vec4<u32>(4294967295u, 0u, 2385u, u_input.a)), var_0.a, vec2<u32>(1u, 4294967295u)));
    return StorageBuffer(_wgslsmith_sub_i32(-(select(16253i, -15701i, var_0.d.b) ^ -2147483647i), -1i), var_0.c.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1068f + -982f)) + var_0.c.d.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, var_0.c.d.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

