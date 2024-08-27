struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = true;
    let var_1 = _wgslsmith_sub_i32(25446i, _wgslsmith_dot_vec3_i32(~arg_2.c.yxx, arg_2.c.zzz ^ arg_2.c.wzx) & 1i) ^ abs(arg_2.c.x);
    var_0 = true;
    let var_2 = arg_2.b;
    let var_3 = _wgslsmith_f_op_f32(490f - -149f);
    return arg_0.b.yzy;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(func_3(Struct_1(0u, abs(~vec4<u32>(0u, arg_0.a.x, 4294967295u, 41111u)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(937f, -1139f, -2527f)))), Struct_1(abs(firstLeadingBit(4294967295u)), min(max(vec4<u32>(35310u, arg_0.a.x, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 12514u, u_input.a)), vec4<u32>(u_input.a, 1u, 4294967295u, arg_0.a.x) & vec4<u32>(u_input.a, 4294967295u, 4294967295u, 44185u)), vec4<i32>(1i, 1i, 1i, 1i))), select(!select(arg_0.b, select(arg_0.b, vec2<bool>(arg_0.b.x, arg_0.b.x), false), arg_0.b), arg_0.b, !all(vec3<bool>(false, false, false))));
    global0 = 1i;
    global0 = ~firstTrailingBit(0i);
    let var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(var_0.a.x), abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 55453u, var_0.a.x), var_0.a), 37466u), vec4<u32>(var_0.a.x ^ 12449u, 70313u, ~4294967295u, max(42763u, arg_0.a.x))), 0u);
    let var_2 = var_0.a.yz;
    return Struct_1(~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(var_1, 4294967295u), _wgslsmith_div_u32(1u, var_1) | countOneBits(var_1)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(50130u, ~arg_0.a.x, _wgslsmith_dot_vec2_u32(var_0.a.yx, var_0.a.yz), ~arg_0.a.x), ~(~vec4<u32>(56872u, 1u, 7054u, var_1))), ~(~vec4<u32>(0u, var_0.a.x, var_2.x, var_0.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(-43406i), 1i, -4023i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 11037i, 23148i, -2147483647i), vec4<i32>(0i, -8017i, 0i, -17028i))), -firstTrailingBit(vec4<i32>(-8480i, -10620i, -2147483647i, 0i) >> (vec4<u32>(var_2.x, arg_0.a.x, 62855u, 60368u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = arg_1.c.yy;
    let var_1 = false;
    var_0 = vec2<i32>(-countOneBits(0i), ~(-10143i));
    global0 = _wgslsmith_div_i32(~arg_1.c.x, -70593i);
    var_0 = arg_1.c.yz;
    return Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.a, ~(~vec3<u32>(arg_0.a.x, 3168u, arg_0.a.x))), _wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(~3939u, ~74305u, arg_0.a.x))), vec2<bool>(true, any(!vec4<bool>(var_1, true, true, var_1))));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = vec3<i32>(~abs(~max(-1i, 14180i)), 1i, _wgslsmith_mod_i32(-(~(-42280i << (0u % 32u))), 1i));
    let var_1 = arg_2.a;
    let var_2 = ~(~(-var_0.x) ^ (var_0.x >> (func_3(Struct_1(arg_2.a.x, vec4<u32>(0u, 1u, u_input.a, var_1.x), vec4<i32>(var_0.x, 58612i, var_0.x, var_0.x)), vec3<f32>(arg_1.x, 1000f, arg_0), Struct_1(u_input.a, vec4<u32>(u_input.a, 0u, 1u, 1u), vec4<i32>(41669i, -18066i, 0i, 2147483647i))).x % 32u))) << (firstTrailingBit(11321u) % 32u);
    var var_3 = var_0.yy & min(min(~_wgslsmith_add_vec2_i32(var_0.yz, vec2<i32>(var_2, 16849i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_2), -vec2<i32>(var_0.x, var_0.x))), var_0.zz);
    let var_4 = 11413u;
    return Struct_2(countOneBits(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(var_1, vec3<u32>(0u, arg_2.a.x, arg_2.a.x)), _wgslsmith_sub_vec3_u32(arg_2.a, vec3<u32>(var_1.x, arg_2.a.x, arg_2.a.x)) << (~vec3<u32>(var_1.x, 16651u, 0u) % vec3<u32>(32u)))), func_4(func_4(arg_2, Struct_1(u_input.a, vec4<u32>(u_input.a, 49760u, arg_2.a.x, arg_2.a.x), ~vec4<i32>(var_0.x, var_0.x, -2147483647i, -3128i)), vec2<f32>(_wgslsmith_div_f32(-660f, 370f), _wgslsmith_f_op_f32(997f - arg_1.x))), Struct_1(abs(~4294967295u), ~vec4<u32>(arg_2.a.x, 25594u, 4294967295u, 1u), countOneBits(vec4<i32>(8863i, var_0.x, var_3.x, var_2)) & ~vec4<i32>(var_0.x, var_0.x, var_0.x, 0i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1356f, arg_0) + vec2<f32>(arg_0, -1447f))), arg_1, select(vec2<bool>(true, true), select(vec2<bool>(true, true), arg_2.b, vec2<bool>(arg_3, false)), !vec2<bool>(arg_3, arg_2.b.x))))).b);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(378f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f - arg_1)) * arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1947f - _wgslsmith_f_op_f32(ceil(-818f))) - _wgslsmith_f_op_f32(-460f + 963f)))));
    global0 = arg_0.x;
    var var_1 = _wgslsmith_div_vec3_i32(~arg_0.xxz, vec3<i32>(-29646i, max(arg_0.x, 38337i), arg_0.x));
    var var_2 = func_5(301f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(134f, -189f)), _wgslsmith_f_op_f32(-1151f - var_0)) + vec2<f32>(-582f, arg_1)))), func_4(Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 36370u), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.a, 14507u, 8046u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), func_2(Struct_2(~vec3<u32>(u_input.a, 1u, 24125u), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1415f, 1242f))))), true);
    let var_3 = select(select(select(select(select(vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x), vec4<bool>(false, true, var_2.b.x, true), var_2.b.x), vec4<bool>(false, var_2.b.x, var_2.b.x, false), !vec4<bool>(var_2.b.x, false, var_2.b.x, false)), select(select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), vec4<bool>(true, var_2.b.x, true, var_2.b.x), true), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_2.b.x, false, true, false), var_2.b.x), vec4<bool>(true, var_2.b.x, true, var_2.b.x), all(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true)))), !(!select(vec4<bool>(true, var_2.b.x, var_2.b.x, true), vec4<bool>(false, true, var_2.b.x, true), vec4<bool>(false, true, true, false))), !vec4<bool>(var_2.b.x, false, var_2.b.x, false)), select(select(select(select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), vec4<bool>(false, false, var_2.b.x, var_2.b.x), var_2.b.x), !vec4<bool>(false, var_2.b.x, true, false), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false)), !(!vec4<bool>(false, var_2.b.x, true, var_2.b.x)), true), select(!vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), select(vec4<bool>(var_2.b.x, false, false, false), !vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), select(vec4<bool>(true, var_2.b.x, var_2.b.x, true), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), false)), all(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)) || (665f <= arg_1)), true), arg_0.x < -12609i);
    return ~(~_wgslsmith_add_vec4_u32(abs(~vec4<u32>(4294967295u, 21431u, 1u, u_input.a)), vec4<u32>(u_input.a, 25594u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4013u, 4294967295u, 4294967295u), vec4<u32>(39525u, u_input.a, 41600u, u_input.a)), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(max(firstTrailingBit(-vec3<i32>(0i, 17707i, 11642i)), vec3<i32>(1i, 1i, 1i)) & ~select(~vec3<i32>(-2147483647i, 2889i, -1i), -vec3<i32>(1i, -2147483647i, 1i), true));
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 919u), 1u), _wgslsmith_sub_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), _wgslsmith_sub_vec4_u32(~func_1(vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), -824f), func_1(-vec4<i32>(var_0.x, var_0.x, var_0.x, 0i), -1136f))), max(~(-vec4<i32>(-2814i, -1i, var_0.x, var_0.x)) >> (vec4<u32>(0u, 1u, 0u, select(8483u, 35023u, true)) % vec4<u32>(32u)), -vec4<i32>(~var_0.x, -var_0.x, 52997i, ~(-2147483647i))));
    global0 = var_0.x;
    var_1 = Struct_1(27538u, ~(vec4<u32>(_wgslsmith_mod_u32(26187u, u_input.a), ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_1.b.yw), 18783u) << (abs(countOneBits(vec4<u32>(var_1.b.x, 1u, 24718u, 15384u))) % vec4<u32>(32u))), vec4<i32>(~(~var_0.x), _wgslsmith_add_i32(func_2(Struct_2(var_1.b.yzy, vec2<bool>(false, false))).c.x, (var_0.x << (u_input.a % 32u)) & var_1.c.x), var_1.c.x, var_1.c.x));
    let var_2 = select(vec3<bool>(false, !(!any(vec3<bool>(false, true, true))), false), vec3<bool>(true, false, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, all(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(firstTrailingBit(var_1.b.x)), firstTrailingBit(reverseBits(u_input.a)), 10490u, 101541u) | vec4<u32>(29923u, var_1.a & 25297u, 100479u, func_1(select(vec4<i32>(-33372i, var_1.c.x, var_0.x, -13028i), vec4<i32>(-29640i, var_1.c.x, -2147483647i, var_1.c.x), var_2.x), _wgslsmith_f_op_f32(round(261f))).x), 2147483647i, var_1.c.yw | var_1.c.wz, u_input.a);
}

