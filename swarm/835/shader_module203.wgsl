struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = -438f;
    let var_1 = -1170i;
    let var_2 = u_input.a.x;
    var var_3 = 351f;
    var_3 = _wgslsmith_f_op_f32(exp2(var_0));
    return select(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)), select(!vec2<bool>(false, var_0 == var_0), vec2<bool>(true, any(vec4<bool>(true, false, false, false))), ((var_0 >= -613f) && false) & !(var_1 < 0i)), any(!vec3<bool>(all(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false)), var_0 <= -1087f)));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = (i32(-1i) * -firstLeadingBit(~(-2147483647i))) >> ((arg_0 & arg_0) % 32u);
    let var_1 = _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(36145i, -29822i)), _wgslsmith_div_vec2_i32(min(vec2<i32>(var_0, 29521i), vec2<i32>(-40252i, var_0)), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-34312i, var_0), vec2<i32>(var_0, var_0)))) << (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a), select(vec2<u32>(0u, 25968u), ~vec2<u32>(55186u, 4594u), func_3())) % vec2<u32>(32u)));
    var var_2 = select(vec4<i32>(select(-1i << (arg_0 % 32u), _wgslsmith_add_i32(firstLeadingBit(0i), var_0), false), var_1.x, 1i, _wgslsmith_mod_i32(0i, ~var_1.x)), firstLeadingBit(countOneBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_1.x, var_0, var_1.x), vec4<i32>(var_0, -22249i, -1i, var_1.x)), abs(vec4<i32>(-45650i, 12036i, var_0, -2624i)), true))), !(true != all(vec3<bool>(true, true, true))));
    var_2 = vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(-19237i, -26293i), min(var_1.x, -31339i)), var_0), 2147483647i, _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(41677i, 2147483647i, 4764i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, select(-808i, -56371i, true), var_0, 22060i | var_0), countOneBits(vec4<i32>(8240i, 2147483647i, var_2.x, -2147483647i)) & vec4<i32>(var_0, var_2.x, 23529i, -337i))), var_1.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1808f - 985f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - -962f), -var_0, ~reverseBits(vec2<u32>(~u_input.a.x, max(4294967295u, 75303u))), var_0, vec4<f32>(-215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-285f)) * -444f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-929f)) + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1008f)) * -395f) - -1000f), 907f));
    return ~firstLeadingBit(reverseBits(abs(arg_0))) ^ 1u;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(~(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x) & _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), Struct_1(-1379f, _wgslsmith_mod_i32(-20734i, -2147483647i), u_input.a, _wgslsmith_mod_i32(~(0i >> (0u % 32u)), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-347f, 703f, -279f, 1425f)))))), func_2(_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), 19968u | u_input.a.x) >> (max(~u_input.a.x, abs(24774u)) % 32u)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.b.e)))), Struct_1(584f, -22925i, u_input.a, _wgslsmith_mod_i32(27293i, -27261i), var_0.b.e)), ~vec4<u32>(reverseBits(_wgslsmith_add_u32(var_0.c, 4294967295u)), var_0.c, _wgslsmith_mult_u32(~var_0.c, u_input.a.x), ~4294967295u | firstTrailingBit(34850u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b.e.x, var_1.a.a.x)), var_0.b.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.a))))));
    let var_3 = vec2<u32>(25827u, countOneBits(~firstLeadingBit(var_0.c)));
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2 - var_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1056f), -130f, _wgslsmith_f_op_f32(-var_0.b.e.x))), var_0.b), max(~(var_1.b << (abs(var_1.b) % vec4<u32>(32u))), ~vec4<u32>(select(74238u, 34000u, true), ~19998u, 0u >> (0u % 32u), reverseBits(var_1.b.x))));
    return var_4.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = vec4<u32>(arg_0.b.c.x, _wgslsmith_sub_u32(~(~7952u & arg_0.b.c.x), ~4294967295u), ~(~_wgslsmith_mod_u32(~arg_0.b.c.x, _wgslsmith_dot_vec3_u32(arg_2.xxy, arg_2.zzz))), ~u_input.a.x << (4294967295u % 32u));
    var var_1 = _wgslsmith_div_i32(select(arg_0.b.d, ~(-(arg_3.a.b.b >> (1u % 32u))), !select(true, 0u != arg_3.a.b.c.x, u_input.a.x >= 1u)), i32(-1i) * -1976i);
    let var_2 = select(~(-vec4<i32>(arg_1.b.d, _wgslsmith_clamp_i32(0i, -2147483647i, 25496i), ~1i, 1i)), _wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_1.b.b, -2147483647i, arg_0.b.b), vec4<i32>(2256i, -42055i, 1i, arg_0.b.b)), (countOneBits(vec4<i32>(arg_0.b.b, 52217i, arg_3.a.b.b, -2147483647i)) | select(vec4<i32>(-12996i, -3730i, arg_0.b.b, arg_3.a.b.d), vec4<i32>(-31513i, -24044i, arg_1.b.b, -33602i), true)) & ~(-vec4<i32>(76741i, arg_0.b.d, arg_0.b.b, arg_3.a.b.d))), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), true), !vec4<bool>(arg_0.b.e.x == arg_3.a.b.e.x, true, true, any(vec4<bool>(false, true, false, false))), true));
    var_1 = firstLeadingBit(arg_0.b.b);
    let var_3 = ~(~firstTrailingBit(var_2));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-349f)), -258f, _wgslsmith_f_op_f32(ceil(func_1().a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 288f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_4(1u, Struct_1(var_0, 1i, vec2<u32>(u_input.a.x, u_input.a.x), 69860i, vec4<f32>(2310f, 174f, -1149f, -600f)), 101019u), func_1(), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), Struct_3(func_1(), min(vec4<u32>(u_input.a.x, u_input.a.x, 43765u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 32122u, u_input.a.x)))))));
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(77314i, -11923i), firstLeadingBit(max(-2147483647i, 2147483647i)), ~(~19196i)) >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 21997i), vec3<i32>(-1i, -2147483647i, 1i)) >> ((var_3 << (var_3 % 32u)) % 32u)), -5121i, firstTrailingBit(_wgslsmith_mod_i32(-8075i, 1i)) << (u_input.a.x % 32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(var_1)), var_1))))));
}

