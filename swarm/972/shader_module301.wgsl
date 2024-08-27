struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 108746u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    global0 = ~abs(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(global0.x, 1u)), vec2<u32>(0u, 25078u), _wgslsmith_add_vec2_u32(vec2<u32>(36592u, 1u), vec2<u32>(0u, 599u))) ^ ~(~vec2<u32>(global0.x, 1u)));
    let var_0 = max(u_input.a, 1i);
    let var_1 = vec2<bool>(!any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)), all(vec3<bool>(true, true, true)));
    let var_2 = -303f;
    let var_3 = Struct_2(vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_0, -6735i)), -(~vec2<i32>(-9847i, -50748i))), _wgslsmith_dot_vec4_i32(vec4<i32>(10881i, var_0, u_input.a, u_input.a) | ~vec4<i32>(-37443i, u_input.a, 0i, 0i), -(vec4<i32>(arg_0, u_input.a, var_0, 53675i) >> (vec4<u32>(global0.x, global0.x, global0.x, global0.x) % vec4<u32>(32u))))), Struct_1(true, var_1, _wgslsmith_mod_u32(global0.x, global0.x ^ global0.x) >> (abs(~global0.x) % 32u), u_input.a), Struct_1(true, vec2<bool>(!(!var_1.x), true), global0.x, -15125i));
    return reverseBits(var_3.b.c);
}

fn func_2() -> bool {
    var var_0 = max(vec3<u32>(global0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 24809u, global0.x, global0.x) ^ vec4<u32>(global0.x, global0.x, 835u, 4294967295u), min(vec4<u32>(global0.x, global0.x, 35002u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x))), min(~vec4<u32>(global0.x, 4294967295u, 23899u, global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 50719u, global0.x, 4294967295u), vec4<u32>(1u, 0u, 0u, 7966u)))), _wgslsmith_add_u32(func_3(_wgslsmith_clamp_i32(0i, -796i, -33217i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1020f, -705f, 1288f), vec3<f32>(-344f, -832f, 915f)))), _wgslsmith_div_u32(1u, global0.x))), ~vec3<u32>(~func_3(0i, vec3<f32>(-1000f, 1772f, -383f)), _wgslsmith_dot_vec2_u32(vec2<u32>(25085u, 298u), vec2<u32>(3190u, 59124u)) & ~global0.x, 1u >> (global0.x % 32u)));
    var var_1 = select(reverseBits(~abs(abs(vec3<u32>(4294967295u, 78346u, global0.x)))), _wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(~0u), abs(global0.x ^ global0.x), _wgslsmith_add_u32(1u | global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global0.x), var_0.xz))), _wgslsmith_sub_vec3_u32(vec3<u32>(26989u, 121417u, global0.x), ~vec3<u32>(58569u, 40566u, 4294967295u)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, global0.x, 48243u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 4294967295u, 4294967295u), vec3<u32>(var_0.x, global0.x, 34378u), vec3<u32>(0u, 3495u, 103047u)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, false)), true), !any(vec3<bool>(true, false, false))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), true & any(vec2<bool>(false, true))));
    let var_2 = Struct_4(Struct_2(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 17617i), vec3<i32>(~u_input.a, select(u_input.a, 54950i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)))), Struct_1((var_0.x < 30874u) == any(vec2<bool>(false, false)), vec2<bool>(true, true), _wgslsmith_add_u32(var_0.x, ~27878u), ~u_input.a), Struct_1(select(true, true, false), vec2<bool>(true, all(vec3<bool>(false, true, true))), ~min(var_0.x, 45659u), ~(-68690i))), Struct_2(countOneBits(vec3<i32>(max(u_input.a, -1i), ~2147483647i, _wgslsmith_mod_i32(u_input.a, 0i))), Struct_1(any(vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), var_1.x | ~var_0.x, 1i), Struct_1(select(false, false, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(0i, 0i, u_input.a) << (vec3<u32>(var_1.x, 1u, 41187u) % vec3<u32>(32u))))), Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), any(vec2<bool>(true, false))), select(1u >> (var_0.x % 32u), var_1.x << (4294967295u % 32u), true), u_input.a), Struct_1(true, vec2<bool>(true, true), var_1.x, ~countOneBits(u_input.a))));
    let var_3 = abs(_wgslsmith_mod_u32(var_1.x, 4294967295u));
    var var_4 = Struct_2(~countOneBits(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(5502i, var_2.b.c.d, u_input.a), var_2.a.a))), Struct_1(all(vec3<bool>(var_2.b.c.a, var_2.b.c.a, true)), !(!(!vec2<bool>(var_2.b.b.b.x, var_2.a.c.b.x))), ~(~1u), -(countOneBits(u_input.a) << (var_3 % 32u))), var_2.a.b);
    return any(vec2<bool>(true, var_2.c.c.b.x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = vec2<u32>(_wgslsmith_mod_u32(global0.x, ~1u), 0u >> (_wgslsmith_add_u32(0u, global0.x) % 32u));
    global0 = ~_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x) & vec2<u32>(4294967295u, 13222u)), abs(vec2<u32>(_wgslsmith_div_u32(55591u, 4294967295u), 0u)));
    let var_0 = vec2<u32>(global0.x, ~select(_wgslsmith_mod_u32(abs(global0.x), global0.x & global0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(36132u, global0.x), vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(28360u, 0u)), arg_0));
    let var_1 = !vec2<bool>(arg_0, func_2());
    global0 = var_0;
    return Struct_1(1360f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-264f, -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f * 1396f))), select(!(!vec2<bool>(arg_0, false)), var_1, vec2<bool>(arg_0 != true, arg_0 && all(vec3<bool>(arg_0, var_1.x, false)))), 26910u, 1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    global0 = arg_1.xy ^ arg_1.xz;
    var var_0 = vec4<i32>(u_input.a, 1i, func_1(all(!vec3<bool>(arg_2.b.x, arg_2.a, false))).d, ~arg_2.d);
    let var_1 = vec3<bool>(true, arg_2.b.x, true);
    var var_2 = min(0u, 58255u);
    var var_3 = _wgslsmith_sub_u32(90136u, _wgslsmith_dot_vec2_u32(~(~arg_1.yx), arg_1.zx) ^ _wgslsmith_add_u32(arg_3, arg_2.c));
    return ~(~54014u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<i32>(min(reverseBits(u_input.a) ^ ~(-46922i), -u_input.a), u_input.a, u_input.a, -u_input.a), vec3<u32>(~0u, 4294967295u, abs(0u)), func_1(any(vec3<bool>(true, false, false)) | true), _wgslsmith_sub_u32(~global0.x, abs(_wgslsmith_add_u32(0u, ~4294967295u))));
    var var_1 = Struct_5(Struct_2(firstLeadingBit(-vec3<i32>(-2846i, 8352i, u_input.a)), func_1(all(vec4<bool>(false, true, true, false))), Struct_1(all(vec4<bool>(false, false, true, true)) & true, func_1(false).b, 13806u, 33234i)), Struct_2(_wgslsmith_add_vec3_i32((vec3<i32>(u_input.a, 5398i, -12536i) >> (vec3<u32>(30969u, 0u, 1u) % vec3<u32>(32u))) ^ firstTrailingBit(vec3<i32>(1i, u_input.a, 0i)), firstLeadingBit(max(vec3<i32>(u_input.a, -36747i, u_input.a), vec3<i32>(u_input.a, 0i, -25802i)))), func_1(true), Struct_1(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), vec2<bool>(false, true), var_0, 18202i)));
    var_1 = Struct_5(var_1.a, Struct_2(select(_wgslsmith_mod_vec3_i32(var_1.a.a, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, var_1.b.a.x, u_input.a), vec3<i32>(u_input.a, u_input.a, 10870i))), _wgslsmith_add_vec3_i32(var_1.a.a >> (vec3<u32>(0u, var_1.b.b.c, 1u) % vec3<u32>(32u)), -vec3<i32>(0i, 45503i, -56435i)), true), Struct_1(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, var_1.a.c.b.x, var_1.a.b.a), true)), var_1.a.c.b, 1u, -1i), func_1(var_1.b.c.a)));
    global0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, func_1(true).c) >> (~(~var_1.a.b.c) % 32u), 0u, max(var_0, max(1u, ~var_1.a.c.c))), _wgslsmith_div_u32(var_1.b.b.c, 1u));
    global0 = ~((_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(var_0, global0.x)), vec2<u32>(global0.x, var_1.b.c.c) >> (vec2<u32>(global0.x, 61148u) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(abs(vec2<u32>(global0.x, var_1.b.c.c)), vec2<u32>(1u, 1u)) % vec2<u32>(32u))) | (select(vec2<u32>(global0.x, 50691u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 5487u), vec2<u32>(global0.x, var_0)), var_1.a.c.b) | firstTrailingBit(max(vec2<u32>(global0.x, var_0), vec2<u32>(17973u, 21085u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, func_4(~vec4<i32>(1i, 0i, u_input.a, 1i), max(vec3<u32>(var_0, var_0, 901u), vec3<u32>(global0.x, 1u, 11412u)), Struct_1(true, vec2<bool>(var_1.a.c.b.x, false), var_0, var_1.b.b.d), select(var_1.b.c.c, var_0, false)) << (27552u % 32u), 4294967295u), firstTrailingBit(vec2<i32>(-19001i, firstLeadingBit(-20764i))), u_input.a >> (~_wgslsmith_mod_u32(var_1.b.c.c, 4294967295u << (var_0 % 32u)) % 32u), vec2<u32>(~var_1.a.b.c, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x << (global0.x % 32u), var_1.b.c.c), ~0u << ((var_0 | global0.x) % 32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(207f, -680f)) + _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(628f, 123f) + _wgslsmith_f_op_f32(667f + 1366f)))))));
}

