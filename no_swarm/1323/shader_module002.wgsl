struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = vec2<i32>(~(-(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (u_input.b % 32u))), max(_wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(0i, -2147483647i, u_input.c, u_input.a.x), vec4<i32>(-26027i, u_input.c, -40875i, u_input.c))), vec4<i32>(u_input.c, ~u_input.a.x, ~(-1i), u_input.c)), ~(-_wgslsmith_div_i32(u_input.c, u_input.c))));
    let var_1 = Struct_4(Struct_2(-(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, u_input.c, var_0.x)), !arg_0.x), vec3<u32>(81067u, 0u, u_input.b), Struct_2(countOneBits(countOneBits(max(vec4<i32>(-1i, var_0.x, -53557i, u_input.a.x), vec4<i32>(32233i, u_input.c, var_0.x, u_input.c)))), !arg_0.x));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -950f)))))));
    var var_4 = vec3<u32>(firstTrailingBit(~(~u_input.b)), _wgslsmith_clamp_u32(var_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(56099u, 79631u)), _wgslsmith_div_u32(var_2.b.x, u_input.b)) << (max(select(3590u, 4294967295u, arg_0.x), 1u) % 32u), _wgslsmith_mod_u32(32903u, select(1241u | var_1.b.x, u_input.b, false))) & ~countOneBits(firstLeadingBit(~vec3<u32>(0u, 0u, var_2.b.x)));
    return ~min(vec3<u32>(35287u, u_input.b, ~var_1.b.x), var_2.b);
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(0u, u_input.b, u_input.b)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b)), firstTrailingBit(vec3<u32>(11053u, u_input.b, u_input.b)))), ~vec3<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), 1u & u_input.b, u_input.b), func_3(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))) ^ abs(vec3<u32>(u_input.b, 4294967295u, 49550u))), ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, 12351u)), 4294967295u), u_input.b, select(~u_input.b, u_input.b, true)));
    var_0 = vec3<u32>(u_input.b << ((_wgslsmith_sub_u32(1u, 1u) >> ((~var_0.x ^ 22636u) % 32u)) % 32u), u_input.b, firstTrailingBit(u_input.b));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.a.x, 5109i) >> (vec2<u32>(var_0.x, 29954u) % vec2<u32>(32u))), -vec2<i32>(48004i, 22418i)) & _wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), reverseBits(56445i)), u_input.c, 2147483647i, ~u_input.c << (var_0.x % 32u));
    var var_2 = Struct_3(-2147483647i, Struct_2(vec4<i32>(select(u_input.a.x, 0i, false), u_input.a.x, _wgslsmith_dot_vec3_i32(var_1.xxz, vec3<i32>(0i, var_1.x, 6303i)), -u_input.c) << (firstTrailingBit(select(vec4<u32>(var_0.x, u_input.b, 51231u, u_input.b), vec4<u32>(var_0.x, var_0.x, var_0.x, 87819u), false)) % vec4<u32>(32u)), true), Struct_2(_wgslsmith_mult_vec4_i32((var_1 << (vec4<u32>(var_0.x, var_0.x, var_0.x, 13890u) % vec4<u32>(32u))) ^ var_1, firstLeadingBit(var_1) & vec4<i32>(30133i, var_1.x, u_input.a.x, -45125i)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true))), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a.x, -u_input.c), var_1.yx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, 1f)), vec2<f32>(1f, 1f)));
    var var_3 = any(vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, var_2.c.b)), vec2<bool>(var_2.b.b, var_2.b.b), select(vec2<bool>(true, true), vec2<bool>(var_2.c.b, true), vec2<bool>(false, var_2.c.b)))), var_2.c.b || (!var_2.b.b & var_2.c.b), var_2.c.b));
    return select(select(select(select(vec3<bool>(var_2.c.b, false, var_2.b.b), !vec3<bool>(var_2.b.b, var_2.b.b, true), true), vec3<bool>(var_2.b.b, all(vec2<bool>(var_2.c.b, false)), any(vec3<bool>(var_2.b.b, true, var_2.c.b))), true), select(!select(vec3<bool>(true, var_2.c.b, var_2.b.b), vec3<bool>(true, false, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_2.b.b), var_2.b.b), vec3<bool>(true, var_2.b.b, var_2.c.b), var_2.c.b), select(!vec3<bool>(var_2.b.b, false, false), !vec3<bool>(var_2.c.b, false, var_2.b.b), var_2.e.x < 579f)), var_2.c.b), !(!vec3<bool>(true, !var_2.b.b, var_2.b.b)), false);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(758f)))) * 195f))), _wgslsmith_f_op_f32(floor(184f)));
    let var_1 = select(!func_2(), select(vec3<bool>(true, true && all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), any(vec2<bool>(u_input.b < u_input.b, func_2().x))), true);
    var var_2 = ~countOneBits(firstLeadingBit(vec4<i32>(31704i, u_input.c, u_input.c, u_input.c) & vec4<i32>(u_input.a.x, u_input.a.x, 38337i, -1i)) >> ((vec4<u32>(u_input.b, arg_0, 1u, 0u) ^ firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 27235u, u_input.b))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(336f)))))))));
    var_2 = firstLeadingBit(~firstTrailingBit(select(abs(vec4<i32>(2147483647i, 1467i, 11714i, -11255i)), firstTrailingBit(vec4<i32>(2147483647i, -10007i, 16656i, u_input.a.x)), select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x))));
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, i32(-1i) * -20551i, ~(1i | firstLeadingBit(u_input.c)), u_input.a.x), -vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 20925i, u_input.c), u_input.a & vec3<i32>(0i, u_input.a.x, 24653i)), ~u_input.a.x & u_input.a.x, u_input.a.x));
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(1u, u_input.b), u_input.b, ~(~u_input.b), ~1u), vec4<u32>(u_input.b, ~0u, abs(u_input.b & 3041u), ~1u)), vec4<u32>(1u, u_input.b, ~abs(u_input.b & 24744u), 20398u));
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -26180i, countOneBits(u_input.c), 2147483647i), firstLeadingBit(max(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a.x, -11980i, 33755i), vec4<i32>(_wgslsmith_sub_i32(0i, var_0.x), u_input.c, func_1(var_1.x), abs(u_input.c)))));
    var_0 = select(vec4<i32>(i32(-1i) * -61128i, -_wgslsmith_add_i32(~26814i, var_0.x >> (50015u % 32u)), 42180i, 5122i), abs(firstTrailingBit(~(~vec4<i32>(u_input.c, var_0.x, 24289i, u_input.a.x)))), !(!vec4<bool>(true, all(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, false, false)), true)));
    var_0 = vec4<i32>(-2147483647i, reverseBits(_wgslsmith_mult_i32(var_0.x, ~(-46776i))), -1i, select(-_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 1i, 21015i, u_input.c)), -vec4<i32>(u_input.a.x, u_input.c, 21248i, -2147483647i)), 0i, false));
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(var_0.x), -2147483647i, ~0i, -1i), vec4<i32>(-101196i, reverseBits(20228i), 5480i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c | -16414i, u_input.c), min(abs(var_0.x), 1i))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) * -1185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(623f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-517f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1320f, 1697f, var_2.x))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(floor(1000f)), var_2.x)) * vec3<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1358f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-427f)), var_2.x)))));
}

