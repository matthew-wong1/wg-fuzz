struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_dot_vec2_u32(~countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, u_input.c) & vec2<u32>(u_input.c, u_input.b))), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.d, u_input.a) | vec2<u32>(u_input.b, ~0u), ~(~countOneBits(vec2<u32>(u_input.d, 0u)))));
    var_0 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(21799u, 7888u)), u_input.a), 1u);
    var_0 = 1u;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.b, 1u), ~vec4<u32>(u_input.d, 1u, u_input.c, u_input.c)), firstTrailingBit(78009u), firstLeadingBit(~1u), 0u), countOneBits((_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 2051u, 4294967295u), vec4<u32>(u_input.d, 1u, u_input.a, u_input.a)) ^ ~vec4<u32>(54249u, 0u, u_input.b, u_input.a)) >> (vec4<u32>(~4294967295u, 4294967295u, abs(1u), ~u_input.a) % vec4<u32>(32u))));
    return firstTrailingBit(var_1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(574f)) - _wgslsmith_f_op_f32(select(-1180f, -571f, true)))), _wgslsmith_f_op_f32(sign(-608f))) - 149f);
    let var_1 = -(~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.e.x, -1i, 14992i), vec3<i32>(1i, arg_1.a, u_input.e.x), vec3<bool>(true, true, false)), min(vec3<i32>(u_input.e.x, u_input.e.x, arg_1.a), vec3<i32>(u_input.e.x, -2147483647i, arg_1.a)), vec3<i32>(50870i, arg_1.a, arg_1.a)) >> (arg_0.zyx % vec3<u32>(32u)));
    let var_2 = false;
    let var_3 = ~_wgslsmith_sub_i32(u_input.e.x, -u_input.e.x) << (~(~(~_wgslsmith_add_u32(u_input.c, 0u))) % 32u);
    return all(select(vec4<bool>(var_2, false, true, firstTrailingBit(32458i) > 1i), select(vec4<bool>(true, true, var_2, any(vec4<bool>(var_2, var_2, var_2, false))), select(vec4<bool>(false, var_2, false, false), vec4<bool>(var_2, var_2, true, var_2), select(false, false, var_2)), select(!vec4<bool>(false, var_2, false, var_2), !vec4<bool>(true, false, var_2, false), vec4<bool>(true, false, false, var_2))), select(vec4<bool>(true, var_2, var_2, true), select(vec4<bool>(true, true, true, true), vec4<bool>(var_2, var_2, var_2, false), any(vec3<bool>(true, var_2, true))), select(vec4<bool>(true, var_2, true, false), vec4<bool>(false, var_2, var_2, false), arg_0.x < 16307u))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    let var_0 = u_input.a;
    var var_1 = (~(~(~vec2<u32>(30726u, u_input.a))) << (vec2<u32>(~u_input.b, ~u_input.b) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_clamp_u32(~u_input.a, countOneBits(_wgslsmith_clamp_u32(u_input.b, var_0, 1u)), firstLeadingBit(4294967295u) | ~var_0), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0, 29350u) | ~u_input.d, ~u_input.d));
    var var_2 = -1023f;
    var var_3 = func_4(vec4<u32>(1u, ~23596u, func_3(_wgslsmith_div_i32(u_input.e.x, ~arg_0.x)), 52685u), Struct_1(u_input.e.x));
    var_1 = vec2<u32>(var_0, 100460u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))) * _wgslsmith_f_op_f32(f32(-1f) * -363f)));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = ~(vec3<u32>(firstLeadingBit(~1u), arg_2.x & u_input.c, _wgslsmith_mult_u32(49672u, 1u) ^ arg_2.x) << (vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.x, arg_2.x), max(34337u, u_input.c)), 4294967295u, _wgslsmith_add_u32(0u, arg_2.x)) % vec3<u32>(32u)));
    let var_1 = 1i;
    var_0 = vec3<u32>(23396u, u_input.a, select(22036u, u_input.b, true));
    var_0 = arg_2.zzz;
    let var_2 = Struct_3(vec4<bool>(false, !any(vec2<bool>(true, false)), true | select(true, all(vec4<bool>(false, true, true, false)), true), true));
    return _wgslsmith_sub_i32(-2147483647i, arg_3.b.a);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(~(~(~32000i)), max(arg_2.x >> (4294967295u % 32u), 1i)));
    var var_1 = Struct_3(select(!(!select(arg_0, arg_0, arg_0)), arg_0, arg_0));
    let var_2 = Struct_3(select(select(vec4<bool>(false, true, !arg_0.x, arg_2.x <= arg_2.x), vec4<bool>(arg_3 != 4294967295u, var_1.a.x, true, arg_0.x), vec4<bool>(true, true, !var_1.a.x, true)), var_1.a, !arg_0.x));
    var_1 = var_2;
    var var_3 = true;
    return var_0;
}

fn func_1() -> vec3<u32> {
    var var_0 = 2147483647i;
    var_0 = firstLeadingBit(_wgslsmith_add_i32(u_input.e.x, ~(i32(-1i) * -26176i)));
    let var_1 = func_6(!vec4<bool>(true, true, true | all(vec3<bool>(false, false, false)), true), ~abs(countOneBits(abs(vec2<u32>(u_input.c, 4294967295u)))), vec3<i32>(func_5(u_input.e.x, _wgslsmith_f_op_f32(-565f - _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec2<f32>(1039f, 232f), vec3<f32>(281f, -1000f, 1110f), 2609f))), vec4<u32>(4294967295u, u_input.b, ~70021u, ~61474u), Struct_2(Struct_1(-5150i), Struct_1(0i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, -61794i, -2147483647i), vec3<i32>(2147483647i, 1i, 2147483647i)), Struct_1(-1i))), u_input.e.x << (37708u % 32u), firstTrailingBit(u_input.e.x)), 0u);
    var_0 = u_input.e.x;
    var_0 = -1i;
    return ~(~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.a)), abs(~u_input.d), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1() << (firstLeadingBit(min(~firstTrailingBit(vec3<u32>(21871u, 0u, 1u)), _wgslsmith_mod_vec3_u32(max(vec3<u32>(37309u, 4294967295u, u_input.a), vec3<u32>(6170u, u_input.a, 19792u)), vec3<u32>(111033u, u_input.c, 1u)))) % vec3<u32>(32u));
    let var_1 = select(var_0.yy, var_0.yx & var_0.xy, !(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(false, true, false)))));
    let var_2 = Struct_2(func_6(vec4<bool>(true, true, true, true), var_1, min(~(~vec3<i32>(1i, -35293i, -2147483647i)), abs(vec3<i32>(-2147483647i, 1i, -2147483647i)) | -vec3<i32>(u_input.e.x, u_input.e.x, -17787i)), firstLeadingBit(abs(1u))), Struct_1(u_input.e.x), -(~(~(-vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)))), func_6(select(vec4<bool>(true, true, true, true), vec4<bool>(false, func_4(vec4<u32>(58924u, var_0.x, var_0.x, 33278u), Struct_1(-1i)), false, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))), (~var_1 ^ vec2<u32>(var_0.x, 1u)) >> (var_0.yx % vec2<u32>(32u)), -vec3<i32>(-2147483647i, select(37572i, -13781i, true), u_input.e.x | 20689i), 1u));
    var_0 = vec3<u32>(max(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, var_0.x))), 42252u, _wgslsmith_clamp_u32(var_0.x, firstLeadingBit(48109u >> (var_0.x % 32u)), abs(0u & u_input.c))) ^ _wgslsmith_sub_vec3_u32(abs(~reverseBits(vec3<u32>(2378u, var_0.x, var_0.x))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, u_input.d) | vec3<u32>(var_1.x, u_input.b, u_input.b), vec3<u32>(_wgslsmith_mod_u32(26880u, 61780u), 1u, ~var_0.x)));
    let var_3 = var_2.a;
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(1u, var_0.x, 35753u)), ~vec3<u32>(var_1.x, u_input.b, u_input.b) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 93584u), vec3<u32>(1u, var_1.x, 1u))), ~(vec3<u32>(23784u, 25581u, var_1.x) >> (vec3<u32>(58365u, var_1.x, var_1.x) % vec3<u32>(32u))) >> (~(~vec3<u32>(u_input.b, 1u, 4294967295u)) % vec3<u32>(32u))), abs(vec3<u32>(42580u, ~_wgslsmith_clamp_u32(4294967295u, 52704u, 0u), firstTrailingBit(~u_input.a))));
    var_0 = vec3<u32>(var_0.x, u_input.d, 32022u) & ~(~vec3<u32>(1u, ~1u, func_1().x));
    var var_4 = u_input.e.x;
    var var_5 = abs(var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(~2993u, _wgslsmith_dot_vec3_u32(func_1(), ~vec3<u32>(var_1.x, 2689u, 4294967295u))), var_0.x, _wgslsmith_mult_u32(var_1.x, abs(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -624f), min(vec4<i32>(select(var_3.a, firstTrailingBit(0i), true), _wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_div_i32(54465i, var_3.a)), var_3.a, _wgslsmith_mult_i32(firstTrailingBit(26444i), 0i | var_2.b.a)), min(~select(vec4<i32>(var_5.x, -2147483647i, u_input.e.x, 79199i), vec4<i32>(1i, -28441i, var_5.x, -1i), true), _wgslsmith_sub_vec4_i32(vec4<i32>(20836i, -20469i, 31013i, var_2.b.a), vec4<i32>(var_3.a, var_2.c.x, -1i, 26268i)))));
}

