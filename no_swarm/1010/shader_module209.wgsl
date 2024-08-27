struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    global0 = true;
    global0 = !(!all(vec2<bool>(false, true)) || ((u_input.a.x < _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, 12023i))) || true));
    let var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-21634i, u_input.a.x, u_input.a.x, u_input.a.x)), ~select(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(29962i, -33506i, u_input.a.x, u_input.a.x), false), _wgslsmith_mult_vec4_i32(~vec4<i32>(-17006i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(32572i, u_input.a.x, 20020i, 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-477f, 497f), 800f, _wgslsmith_f_op_f32(min(794f, -714f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), ~min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(77936i, 0i)), u_input.a.x, select(-5844i, u_input.a.x, false), i32(-1i) * -31932i), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(0i, 2147483647i), u_input.a.x & 1i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), vec4<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x, -_wgslsmith_mod_i32(u_input.a.x << (13469u % 32u), min(u_input.a.x, u_input.a.x))), vec3<u32>(1u, 1u, 1u));
    var var_1 = abs(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.x, 27328u, 0u, var_0.e.x) << (vec4<u32>(4294967295u, var_0.e.x, 36798u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(1u, 0u, 23929u, var_0.e.x)))) >> (min(countOneBits(~(~vec4<u32>(0u, var_0.e.x, var_0.e.x, var_0.e.x))), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(var_0.e.x, var_0.e.x, 53928u, 40820u), vec4<u32>(31901u, var_0.e.x, var_0.e.x, 25772u), vec4<bool>(true, false, false, false)), ~select(vec4<u32>(8211u, 2365u, var_0.e.x, 8340u), vec4<u32>(0u, 4294967295u, 1u, var_0.e.x), vec4<bool>(true, false, false, false)))) % vec4<u32>(32u));
    let var_2 = Struct_3(22242i, Struct_2(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), !(var_1.x < var_1.x) & true, reverseBits(var_0.e.xz), reverseBits(reverseBits(vec4<u32>(4294967295u, 1u, 40707u, var_0.e.x)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -680f), select(!any(vec2<bool>(true, true)), true, true), ~min(~var_1.zx, var_0.e.yz | var_0.e.xy), ~select(select(vec4<u32>(7384u, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, var_1.x, 0u, 20908u), vec4<bool>(true, false, false, true)), vec4<u32>(var_1.x, 4294967295u, var_0.e.x, 1u) << (vec4<u32>(var_1.x, var_1.x, 44804u, var_1.x) % vec4<u32>(32u)), vec4<bool>(true, false, false, false))), Struct_2(829f, false, var_0.e.xy, select(~min(vec4<u32>(var_0.e.x, var_1.x, var_1.x, 87079u), vec4<u32>(3433u, 36048u, 117669u, var_0.e.x)), abs(vec4<u32>(var_0.e.x, var_1.x, 56403u, 33182u) << (vec4<u32>(var_0.e.x, var_0.e.x, var_0.e.x, 22043u) % vec4<u32>(32u))), false)), -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-var_0.a, var_0.d), firstLeadingBit(var_0.c), var_0.c));
    return !vec4<bool>(1u <= _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 2536u, var_2.b.d.x), vec3<u32>(0u, var_2.c.d.x, var_0.e.x)), vec3<u32>(0u, 4294967295u, var_0.e.x) ^ vec3<u32>(1u, var_0.e.x, 12472u)), false, var_2.c.b, var_2.b.b);
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-568f, -585f)))), all(func_3()) || true, ~vec2<u32>(_wgslsmith_mod_u32(47519u, 1u), 1u) | vec2<u32>(firstLeadingBit(~1u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(39099u, 1u), ~52261u, ~25448u)), select(vec4<u32>(1u, 1u, ~68555u, 19066u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 1u, 23870u), vec4<u32>(4294967295u, 3040u, 13457u, 2366u)), vec4<bool>(any(vec2<bool>(arg_0, arg_0)), true, arg_0, all(vec2<bool>(arg_0, arg_0)))) >> (~vec4<u32>(~41677u, 33476u, 1u, 4294967295u) % vec4<u32>(32u)));
    var var_1 = vec4<i32>(-55406i & select(_wgslsmith_clamp_i32(u_input.a.x, ~(-1i), 1i), -30649i, false), abs(-18733i), abs(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), u_input.a.x, ~u_input.a.x)), 2147483647i);
    var_1 = -vec4<i32>(var_1.x, firstTrailingBit(reverseBits(~(-2147483647i))), 1i, u_input.a.x);
    var var_2 = Struct_1(~(-_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 1i, u_input.a.x, -1i), vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, 14776i)), firstLeadingBit(vec4<i32>(27274i, 17318i, 0i, var_1.x)))), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + 1214f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) * -536f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-535f, -1000f)))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(~(30074i ^ var_1.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_1.x, u_input.a.x), vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, 47246i)), -vec4<i32>(1i, 21069i, -4865i, 37389i)), firstLeadingBit(min(1i, u_input.a.x)), ~min(0i, var_1.x)), select(abs(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 2147483647i)), -vec4<i32>(10180i, var_1.x, -58950i, u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.b, true, true), select(vec4<bool>(arg_0, arg_0, arg_0, var_0.b), vec4<bool>(arg_0, var_0.b, false, arg_0), true)))), _wgslsmith_div_vec4_i32(-vec4<i32>(max(var_1.x, u_input.a.x), -2147483647i, -u_input.a.x, _wgslsmith_mod_i32(-1649i, 102374i)), vec4<i32>(u_input.a.x, max(_wgslsmith_dot_vec2_i32(var_1.wy, u_input.a.zz), abs(u_input.a.x)), ~select(var_1.x, var_1.x, true), u_input.a.x)), var_0.d.ywy);
    let var_3 = vec2<bool>(all(!vec2<bool>(var_2.e.x > 0u, false)), !var_0.b);
    return Struct_2(var_0.a, any(vec3<bool>(_wgslsmith_f_op_f32(step(-1000f, var_2.b.x)) > var_0.a, true, _wgslsmith_f_op_f32(sign(var_0.a)) > var_0.a)), vec2<u32>(countOneBits(4936u), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, var_2.e.x, var_2.e.x, 1u), vec4<u32>(1u, var_2.e.x, 40827u, 4934u)))), vec4<u32>(1u, 78406u, abs(~(~0u)), var_0.d.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_3.b;
    var var_1 = all(!vec3<bool>(arg_0.b & var_0.b, _wgslsmith_f_op_f32(-arg_3.b.a) != 1f, arg_3.c.b));
    let var_2 = arg_3;
    var var_3 = func_2(select(true, func_2(arg_0.b).b, false));
    var_1 = var_0.b;
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_3.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, -831f, arg_3.b.b)) * _wgslsmith_f_op_f32(step(459f, arg_0.a))))), -1291f)), !(reverseBits(43308u) > _wgslsmith_mult_u32(var_0.c.x, _wgslsmith_clamp_u32(var_0.c.x, 1u, var_0.c.x))), arg_0.d.xw, vec4<u32>(var_2.c.c.x, 1u, ~(~var_0.c.x >> (1010u % 32u)), 9069u));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_3(~(-11601i), Struct_2(497f, arg_0.b, firstLeadingBit(countOneBits(countOneBits(vec2<u32>(9339u, 0u)))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(42826u, 15239u, arg_0.c.x, arg_0.d.x)), select(arg_0.d, vec4<u32>(4294967295u, arg_0.c.x, 4294967295u, 4294967295u), false)) >> (vec4<u32>(arg_0.c.x, 4294967295u, ~arg_0.c.x, 35823u) % vec4<u32>(32u))), Struct_2(arg_0.a, true, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), max(_wgslsmith_div_vec2_u32(arg_0.c, vec2<u32>(arg_0.c.x, arg_0.c.x)), arg_0.d.yx), vec2<u32>(arg_0.d.x, arg_0.c.x)), vec4<u32>(arg_0.c.x, arg_0.c.x & arg_0.d.x, arg_0.c.x, arg_0.d.x)), arg_0, vec4<i32>(0i, countOneBits(u_input.a.x), ~u_input.a.x, firstTrailingBit(2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(arg_0.b).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.a))), _wgslsmith_f_op_f32(-var_0.d.a)), _wgslsmith_f_op_f32(-1005f - -1047f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, var_0.b.a, 2032f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.a, 176f) - vec3<f32>(arg_0.a, 216f, 872f))), vec3<f32>(_wgslsmith_div_f32(681f, var_0.d.a), -510f, _wgslsmith_f_op_f32(-var_0.c.a)), var_0.c.b & true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a, 911f, arg_0.a)))))));
    var_0 = Struct_3(-45030i, func_2(!all(!vec4<bool>(true, var_0.b.b, arg_0.b, true))), var_0.b, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -721f), true, ~arg_0.c, ~(~arg_0.d)), _wgslsmith_mult_vec4_i32(var_0.e, vec4<i32>(u_input.a.x, i32(-1i) * -7733i, u_input.a.x, arg_1.x)));
    global0 = true;
    global0 = var_0.d.c.x >= _wgslsmith_sub_u32(reverseBits(arg_0.c.x), arg_0.d.x);
    return Struct_3(-10198i, func_4(Struct_2(-236f, true & (arg_0.b != false), ~(~vec2<u32>(0u, 1u)), max(~arg_0.d, _wgslsmith_clamp_vec4_u32(arg_0.d, arg_0.d, vec4<u32>(arg_0.d.x, 61508u, 1u, arg_0.d.x)))), vec2<i32>(-_wgslsmith_dot_vec4_i32(var_0.e, vec4<i32>(arg_1.x, 43087i, -20214i, 2147483647i)), _wgslsmith_sub_i32(0i, 2147483647i)), ~_wgslsmith_sub_vec3_i32(firstLeadingBit(var_0.e.wyx), arg_1.wxw >> (var_0.c.d.wyx % vec3<u32>(32u))), Struct_3(~arg_1.x, func_4(func_2(var_0.d.b), vec2<i32>(var_0.a, arg_1.x) << (arg_0.c % vec2<u32>(32u)), min(vec3<i32>(var_0.e.x, 2147483647i, 0i), u_input.a), Struct_3(-1i, Struct_2(var_1.x, var_0.c.b, vec2<u32>(5532u, 22772u), var_0.d.d), var_0.b, arg_0, vec4<i32>(arg_1.x, u_input.a.x, 12789i, var_0.e.x))), var_0.d, var_0.b, _wgslsmith_div_vec4_i32(-vec4<i32>(var_0.e.x, arg_1.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, -2851i, -1i, var_0.e.x), arg_1)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -696f), true, vec2<u32>(arg_0.d.x, arg_0.c.x), vec4<u32>(_wgslsmith_sub_u32(0u, var_0.c.c.x), arg_0.c.x, var_0.b.c.x, ~27302u) >> ((func_2(true).d << (~arg_0.d % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0, arg_1);
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> Struct_1 {
    return Struct_1(vec4<i32>(~u_input.a.x, ~(~(-3304i)), _wgslsmith_mod_i32(arg_2, _wgslsmith_mult_i32(~(-1i), ~arg_1.a)), arg_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.b.a, arg_1.d.a, arg_1.d.a, arg_1.d.a), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.a, 1000f, arg_1.c.a, arg_1.d.a), vec4<f32>(arg_1.d.a, 521f, arg_1.c.a, arg_1.b.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.a, arg_1.d.a, arg_1.c.a, 596f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.a, 676f, arg_1.d.a, 768f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.a, arg_1.c.a, -1253f, arg_1.b.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a, arg_1.b.a, 1159f, -1780f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.a, 1540f, arg_1.b.a, arg_1.d.a) - vec4<f32>(arg_1.b.a, -1038f, -145f, arg_1.c.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-648f, 1000f, 155f, arg_1.d.a) + vec4<f32>(1265f, arg_1.c.a, 106f, arg_1.d.a))))), _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(arg_1.e, vec4<i32>(arg_1.a, arg_2, -1i, arg_3), -arg_1.e), -abs(arg_1.e >> (vec4<u32>(arg_0, arg_1.b.d.x, arg_0, 55433u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_sub_i32(-78122i, i32(-1i) * -47493i) >> (~arg_0 % 32u), -arg_1.a, -26994i, _wgslsmith_mod_i32(714i, -2147483647i)), max(~(~vec3<u32>(0u, 0u, arg_1.c.d.x)), arg_1.b.d.ywx));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    global0 = !any(vec3<bool>(select(u_input.a.x == u_input.a.x, false, all(vec3<bool>(false, true, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), true));
    var var_0 = firstTrailingBit(select(min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i) & vec4<i32>(-67581i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 55540i), vec4<i32>(u_input.a.x, 1i, -1i, 2147483647i))) & vec4<i32>(u_input.a.x, u_input.a.x & 2147483647i, u_input.a.x, u_input.a.x), -(~countOneBits(vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, 0i >= u_input.a.x), (0i << (arg_1 % 32u)) != _wgslsmith_add_i32(6465i, -51312i))));
    var var_1 = func_6(~67657u, func_5(func_4(func_2(true), -vec2<i32>(-2147483647i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, -2147483647i, 25821i), -vec3<i32>(2147483647i, -1i, 58664i)), Struct_3(1i, Struct_2(1019f, false, vec2<u32>(11147u, arg_0.x), vec4<u32>(1u, arg_0.x, 38970u, arg_1)), Struct_2(134f, true, arg_0.zz, vec4<u32>(arg_1, arg_1, 1u, 50651u)), func_2(false), vec4<i32>(0i, u_input.a.x, -11357i, 1i))), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_0.x, u_input.a.x, -1i, 40506i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-6382i, 22522i, var_0.x, var_0.x), -vec4<i32>(-37322i, var_0.x, 44377i, var_0.x)))), 2147483647i, _wgslsmith_mod_i32(var_0.x & (i32(-1i) * -u_input.a.x), var_0.x));
    var_1 = Struct_1(vec4<i32>(u_input.a.x, func_5(Struct_2(var_1.b.x, select(false, true, false), ~arg_0.xz, vec4<u32>(0u, 11207u, 0u, 30803u)), vec4<i32>(_wgslsmith_mod_i32(var_0.x, u_input.a.x), u_input.a.x, abs(u_input.a.x), i32(-1i) * -11424i)).e.x, ~(~u_input.a.x ^ func_5(Struct_2(-873f, true, vec2<u32>(arg_1, 1u), vec4<u32>(arg_1, 0u, arg_1, 1u)), vec4<i32>(-41441i, var_0.x, 1i, -35455i)).e.x), ~(_wgslsmith_mod_i32(-1i, -1i) & var_1.a.x)), var_1.b, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(var_1.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_1.a.x, -2147483647i, var_1.a.x), vec4<i32>(u_input.a.x, u_input.a.x, var_1.a.x, -6149i))), var_1.d), u_input.a.x, ~1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.d.x, 43994i), vec3<i32>(u_input.a.x, var_0.x, u_input.a.x))), vec4<i32>(~(~var_1.a.x & (var_1.c.x ^ var_1.d.x)), _wgslsmith_sub_i32(i32(-1i) * -18608i, var_0.x), ~abs(-var_1.c.x), _wgslsmith_sub_i32(70841i, var_1.d.x)), ~vec3<u32>(4294967295u, var_1.e.x, _wgslsmith_mod_u32(reverseBits(19017u), arg_1)));
    var var_2 = (-reverseBits(0i) == var_1.d.x) && (any(vec3<bool>(true, true, true)) == false);
    return Struct_2(-1506f, false, arg_0.zz, firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, var_1.e.x, arg_0.x, var_1.e.x), firstLeadingBit(vec4<u32>(var_1.e.x, var_1.e.x, 0u, arg_0.x)))));
}

fn func_7(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), 381f, arg_3.d.a));
    let var_1 = -vec3<i32>(func_5(Struct_2(-828f, arg_2.b, firstLeadingBit(vec2<u32>(0u, arg_3.b.d.x)), ~arg_3.d.d), vec4<i32>(firstTrailingBit(-1i), _wgslsmith_add_i32(u_input.a.x, 2147483647i), countOneBits(-17554i), arg_3.e.x << (4294967295u % 32u))).a, 1i, -u_input.a.x ^ u_input.a.x);
    let var_2 = _wgslsmith_div_vec2_f32(arg_1, var_0.zx);
    let var_3 = Struct_3(-max(4285i, _wgslsmith_dot_vec4_i32(-arg_3.e, vec4<i32>(var_1.x, var_1.x, u_input.a.x, arg_3.a))), Struct_2(func_4(arg_2, vec2<i32>(~u_input.a.x, 0i), ~(-vec3<i32>(var_1.x, u_input.a.x, arg_3.a)), arg_3).a, arg_3.b.b, vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(arg_3.d.d.x, arg_3.d.d.x)), 5278u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b.c.x, 1u, func_2(arg_3.c.b).d.x, arg_0), ~countOneBits(arg_2.d))), arg_3.b, func_1(arg_2.d.wzw, ~3562u), abs(vec4<i32>(i32(-1i) * -24191i, ~(-7304i), _wgslsmith_mult_i32(1i, arg_3.e.x), func_6(arg_0, arg_3, u_input.a.x, -1i).a.x) & vec4<i32>(arg_3.a, 2147483647i, _wgslsmith_clamp_i32(u_input.a.x, -21736i, 1i), countOneBits(var_1.x))));
    let var_4 = Struct_1(var_3.e << (vec4<u32>(func_1(reverseBits(vec3<u32>(arg_2.d.x, 1u, 0u)), 55495u).d.x, arg_3.c.d.x << (arg_2.c.x % 32u), _wgslsmith_div_u32(var_3.b.c.x, _wgslsmith_mod_u32(38053u, arg_2.c.x)), arg_2.c.x & ~arg_2.c.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1131f, 1271f, var_3.c.a, arg_2.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, -626f, var_0.x, -366f) + vec4<f32>(var_0.x, 1539f, arg_1.x, -337f)))))), ~abs(vec4<i32>(-6151i, var_3.a, min(-11649i, 1i), u_input.a.x)), vec4<i32>(max(1i, reverseBits(1i)) >> (func_2(all(vec2<bool>(false, false))).d.x % 32u), _wgslsmith_mult_i32(~arg_3.a, var_1.x), ~firstTrailingBit(arg_3.a), _wgslsmith_add_i32(17555i, var_3.a)), ~((vec3<u32>(arg_2.d.x, 0u, 56854u) ^ vec3<u32>(var_3.b.c.x, arg_3.c.c.x, arg_3.c.c.x)) & vec3<u32>(var_3.b.c.x, ~arg_2.c.x, ~0u)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(func_7(8006u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, 2274f)), func_1(vec3<u32>(46817u, 39704u, 4294967295u), 7365u), func_5(Struct_2(-123f, false, vec2<u32>(560u, 4294967295u), vec4<u32>(4294967295u, 6225u, 0u, 0u)), vec4<i32>(-15794i, -11632i, 41165i, -1i))) ^ (i32(-1i) * -u_input.a.x)) > _wgslsmith_div_i32(countOneBits(~u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(u_input.a), max(vec3<i32>(-3994i, -2147483647i, u_input.a.x), u_input.a)), ~abs(u_input.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1558f - -257f), 1101f, _wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(abs(-1038f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, -1085f, -1236f, -2290f) - vec4<f32>(-629f, 1055f, -964f, -313f))))))));
    var var_2 = func_1(firstLeadingBit(abs(vec3<u32>(20439u, 4294967295u, 1u))) & firstTrailingBit(~(~vec3<u32>(1u, 103828u, 55403u))), 72556u).d.x;
    let var_3 = true & (_wgslsmith_div_i32(u_input.a.x, u_input.a.x) == _wgslsmith_sub_i32(-reverseBits(u_input.a.x), ~(-43427i)));
    global0 = any(vec3<bool>(func_3().x, true, var_0)) | var_3;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_2(true).a, -993f, 1615f), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1608f) - func_1(vec3<u32>(88162u, 5169u, 35893u), 625u).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - var_1.x))), func_6(1u, func_5(Struct_2(var_1.x, true, vec2<u32>(38344u, 33279u), vec4<u32>(0u, 51376u, 4294967295u, 28026u)), vec4<i32>(-2147483647i, u_input.a.x, 37246i, 5395i)), max(2147483647i, u_input.a.x), -u_input.a.x).b.x, -1622f), select(vec3<bool>(true, true, true), func_3().xxz, var_0)));
    var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(max(_wgslsmith_mult_vec2_u32(func_5(Struct_2(var_1.x, var_3, vec2<u32>(0u, 4294967295u), vec4<u32>(104324u, 57267u, 54034u, 4294967295u)), vec4<i32>(2147483647i, -2147483647i, -1i, 0i)).c.d.yx, vec2<u32>(1u, 1u)), select(~vec2<u32>(25868u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(74963u, 10268u), vec2<u32>(1u, 19562u)), select(vec2<bool>(var_3, false), vec2<bool>(var_0, var_0), vec2<bool>(var_3, true)))), ~vec2<u32>(min(34625u, 0u), 1u)));
    var_2 = _wgslsmith_dot_vec2_u32(func_6(func_1(vec3<u32>(select(1u, 44978u, var_0), ~4294967295u, max(2929u, 1u)), _wgslsmith_mult_u32(0u, 4294967295u)).d.x, Struct_3(~_wgslsmith_mult_i32(1i, u_input.a.x), Struct_2(628f, var_3 != var_3, ~vec2<u32>(0u, 30787u), ~vec4<u32>(5887u, 30925u, 4294967295u, 94462u)), func_5(func_5(Struct_2(var_4.x, var_3, vec2<u32>(0u, 64635u), vec4<u32>(1u, 0u, 82470u, 93397u)), vec4<i32>(u_input.a.x, 2147483647i, 71485i, -1i)).b, -vec4<i32>(0i, -2147483647i, 1i, -78309i)).c, func_2(true && var_3), vec4<i32>(13406i, u_input.a.x, 1i, 52193i)), ~0i, -_wgslsmith_add_i32(0i, u_input.a.x) >> (_wgslsmith_div_u32(4294967295u, ~15040u) % 32u)).e.yx, func_2(!var_3).d.xw);
    let x = u_input.a;
    s_output = StorageBuffer(func_6(select(1u, 32571u, var_0), Struct_3(-u_input.a.x, Struct_2(func_4(Struct_2(833f, var_3, vec2<u32>(88534u, 46626u), vec4<u32>(62316u, 43161u, 70288u, 47834u)), vec2<i32>(u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), Struct_3(-1i, Struct_2(var_1.x, true, vec2<u32>(4294967295u, 1u), vec4<u32>(26851u, 1u, 0u, 79866u)), Struct_2(var_4.x, var_3, vec2<u32>(1u, 4294967295u), vec4<u32>(1u, 55790u, 26738u, 31357u)), Struct_2(var_4.x, true, vec2<u32>(22228u, 39195u), vec4<u32>(66893u, 5076u, 4294967295u, 4294967295u)), vec4<i32>(-1i, 0i, 69084i, -14456i))).a, u_input.a.x < 1i, _wgslsmith_add_vec2_u32(vec2<u32>(45139u, 54116u), vec2<u32>(1u, 149831u)), func_5(Struct_2(1000f, false, vec2<u32>(0u, 1u), vec4<u32>(40327u, 4294967295u, 0u, 4294967295u)), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)).c.d), func_4(Struct_2(1006f, false, vec2<u32>(22057u, 4294967295u), vec4<u32>(1u, 1u, 1u, 49571u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(15831i, u_input.a.x), vec2<i32>(0i, 1i), vec2<i32>(u_input.a.x, u_input.a.x)), vec3<i32>(-1i, u_input.a.x, -2147483647i), func_5(Struct_2(var_4.x, var_3, vec2<u32>(0u, 11890u), vec4<u32>(41625u, 0u, 54030u, 16415u)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i))), Struct_2(_wgslsmith_div_f32(var_4.x, 503f), !var_0, vec2<u32>(1u, 1u), vec4<u32>(0u, 44685u, 1u, 4294967295u)), vec4<i32>(16917i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(11672i, u_input.a.x, u_input.a.x, -2147483647i)), 1i, u_input.a.x)), func_7(35146u, _wgslsmith_f_op_vec2_f32(-var_1.yx), func_1(vec3<u32>(1u, 0u, 72155u), 18764u), Struct_3(0i, Struct_2(-1643f, false, vec2<u32>(4294967295u, 0u), vec4<u32>(3791u, 1u, 4294967295u, 0u)), Struct_2(-1557f, false, vec2<u32>(4294967295u, 90925u), vec4<u32>(1u, 30934u, 1u, 0u)), Struct_2(-1209f, var_3, vec2<u32>(60896u, 43380u), vec4<u32>(4294967295u, 4294967295u, 29918u, 51342u)), vec4<i32>(-2147483647i, -20894i, -2147483647i, u_input.a.x))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(22467u, 68076u), vec2<u32>(0u, 37720u)), firstTrailingBit(vec2<u32>(73153u, 0u))) % 32u), select(37290i, _wgslsmith_sub_i32(abs(-19579i), _wgslsmith_sub_i32(3347i, -1i)), true)).a, _wgslsmith_sub_i32(~u_input.a.x, -u_input.a.x), ~1u, u_input.a.yy);
}

