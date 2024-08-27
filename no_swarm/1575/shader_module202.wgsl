struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    let var_0 = -24967i;
    return ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-3423i, u_input.a, -5130i, var_0), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, 2147483647i, -1i, var_0), vec4<i32>(15503i, -23117i, var_0, u_input.a)), -vec4<i32>(u_input.d, -1i, u_input.d, -2026i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(19230i, 2147483647i, -17637i, u_input.d), vec4<i32>(u_input.d, 0i, 33955i, 35003i))));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(true, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, -2147483647i)), vec2<i32>(u_input.a, u_input.d) << (u_input.b % vec2<u32>(32u))), ~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, -1i), vec2<bool>(false, false))), _wgslsmith_mult_vec2_i32(~select(vec2<i32>(2147483647i, -42824i), vec2<i32>(0i, 2707i), true), -(~vec2<i32>(2147483647i, -31901i)))), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, i32(-1i) * -1i, _wgslsmith_sub_i32(30025i, u_input.d >> (86718u % 32u))), func_3(), min(countOneBits(1i), ~_wgslsmith_add_i32(u_input.a, u_input.d))), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, false)))));
    let var_1 = Struct_3(Struct_1(false, var_0.c.yz, vec3<i32>(var_0.b.x, -4023i, firstTrailingBit(~1i)), all(!vec2<bool>(var_0.d, var_0.a))));
    var_0 = var_1.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-658f, -1000f, -267f) * vec3<f32>(-948f, -458f, 344f)), vec3<f32>(-314f, 1054f, -1489f))))));
    let var_3 = ~(~4677i);
    return max(_wgslsmith_sub_vec3_i32(var_1.a.c, var_0.c), max(countOneBits(var_0.c), var_1.a.c));
}

fn func_1() -> Struct_3 {
    let var_0 = abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(6571u, u_input.c.x, u_input.c.x, 4778u) & ~vec4<u32>(78085u, 62975u, u_input.b.x, u_input.b.x), countOneBits(vec4<u32>(55614u, u_input.b.x, u_input.b.x, 49310u)) | vec4<u32>(u_input.c.x, 82004u, u_input.c.x, u_input.c.x))));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, min(~(-2147483647i), max(u_input.a, u_input.a)) | abs(min(u_input.d, 1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(func_2(), vec3<i32>(-2042i, u_input.a, -2147483647i) ^ vec3<i32>(35373i, 40643i, -13859i)), min(-vec3<i32>(u_input.a, u_input.d, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.d, u_input.a, u_input.a))))), i32(-1i) * -8193i);
    var_1 = ~(~u_input.d) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(min(21662u, var_0.x), var_0.x, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.x), vec3<u32>(u_input.c.x, 19707u, 96826u))) % 32u);
    let var_2 = u_input.b.x;
    var_1 = -41128i;
    return Struct_3(Struct_1(true, _wgslsmith_mult_vec2_i32(vec2<i32>(func_3(), i32(-1i) * -6501i), vec2<i32>(u_input.a, u_input.a)), -(select(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-29145i, u_input.a, u_input.a), false) >> (var_0.zzy % vec3<u32>(32u))), u_input.a < u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = func_1().a;
    let var_1 = -vec3<i32>(arg_0.a.b.x, 2147483647i, arg_1.a.b.x);
    var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.b.x, arg_2.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.b, vec4<u32>(1u, arg_2.c.x, 9065u, 4294967295u)), arg_2.c), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 6386u), arg_2.c), ~7977u)) > arg_2.c.x, vec2<i32>(_wgslsmith_add_i32(-1i, var_1.x), _wgslsmith_add_i32(arg_0.a.c.x | abs(arg_2.a.b.x), var_1.x)), arg_2.a.c, true);
    let var_2 = arg_0.a.b.x;
    var_0 = func_1().a;
    return -(vec4<i32>(arg_0.a.c.x, 14234i, ~var_2 << (min(u_input.b.x, 0u) % 32u), reverseBits(func_2().x)) & select(firstLeadingBit(~vec4<i32>(19943i, 60981i, var_1.x, 0i)), ~abs(vec4<i32>(var_0.b.x, var_2, -1i, 42789i)), select(vec4<bool>(false, arg_0.a.a, arg_2.a.a, arg_0.a.a), vec4<bool>(var_0.a, arg_0.a.d, var_0.a, arg_2.a.a), select(vec4<bool>(false, false, arg_0.a.d, true), vec4<bool>(true, true, true, false), vec4<bool>(var_0.d, true, arg_0.a.d, arg_2.a.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(-func_4(func_1(), Struct_3(Struct_1(false, vec2<i32>(-1i, -2147483647i), vec3<i32>(u_input.a, u_input.d, 12991i), false)), Struct_2(Struct_1(true, vec2<i32>(u_input.d, u_input.a), vec3<i32>(-2147483647i, u_input.d, -40101i), true), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.b.x), vec4<u32>(61974u, u_input.c.x, 1u, 1381u))), vec4<i32>(u_input.a, 1i, 1i, abs(reverseBits(u_input.a)))) ^ firstTrailingBit(select(vec4<i32>(0i, 1i, u_input.d, u_input.d) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(26896i, 1i, -1i, u_input.d), vec4<i32>(u_input.a, u_input.d, u_input.d, 1i)), -vec4<i32>(u_input.a, u_input.d, u_input.a, 0i), true));
    var var_1 = ~(-firstTrailingBit(_wgslsmith_sub_i32(var_0.x, var_0.x)) ^ abs(u_input.d));
    var var_2 = Struct_2(Struct_1(false, vec2<i32>(-2147483647i, -12570i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), select(reverseBits(var_0.wyw), min(vec3<i32>(7965i, var_0.x, -3700i), vec3<i32>(17006i, 0i, 1i)), false)), any(vec3<bool>(true, true, true))), countOneBits(select(~(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.b.x) & vec4<u32>(u_input.b.x, u_input.c.x, 22158u, u_input.b.x)), firstTrailingBit(vec4<u32>(0u, 39083u, 4294967295u, u_input.b.x) << (vec4<u32>(u_input.c.x, 31088u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), true))), _wgslsmith_mult_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 1u), vec4<u32>(u_input.c.x, u_input.b.x, 1u, u_input.c.x)) >> (min(vec4<u32>(54590u, u_input.c.x, 35078u, 628u), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u)) % vec4<u32>(32u))), vec4<u32>(1483u, u_input.b.x, _wgslsmith_mod_u32(u_input.c.x, ~1u), u_input.c.x)));
    let var_3 = Struct_2(var_2.a, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_2.b << (vec4<u32>(var_2.c.x, 50143u, u_input.b.x, 34016u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c.x, 124745u, u_input.b.x, 1u), vec4<u32>(0u, 1u, 34983u, u_input.c.x), var_2.c)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 7675u, var_2.b.x, var_2.b.x), vec4<u32>(var_2.c.x, u_input.b.x, 4294967295u, 59166u), var_2.b)), vec4<u32>(~_wgslsmith_sub_u32(42978u, 0u), ~(~var_2.b.x), _wgslsmith_mod_u32(6746u, 4294967295u), ~_wgslsmith_mult_u32(50166u, var_2.c.x))), _wgslsmith_clamp_vec4_u32(~(~var_2.b), var_2.c, var_2.b));
    var var_4 = var_3;
    var var_5 = vec4<u32>(136752u & _wgslsmith_dot_vec2_u32(var_3.c.zz, ~vec2<u32>(71936u, var_3.c.x)), ~(~(~(~58382u))), abs(var_4.b.x) >> (~(~(u_input.b.x >> (0u % 32u))) % 32u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(1390f)), -1000f, 370f)))), countOneBits(var_2.c.yzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(729f, -484f, var_3.a.d)), -792f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f - -135f))) - -1000f), var_3.c);
}

