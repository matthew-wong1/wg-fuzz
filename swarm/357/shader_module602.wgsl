struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_4,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = ~select(vec3<u32>(~_wgslsmith_div_u32(4294967295u, arg_3.d.x), 10122u, 1u), arg_3.d, true);
    var var_1 = -countOneBits(_wgslsmith_mult_vec2_i32(~(vec2<i32>(arg_3.b.a.d, u_input.a) & vec2<i32>(-28267i, 2147483647i)), select(vec2<i32>(arg_1, -18267i), vec2<i32>(1i, arg_0.a.d), arg_3.a.x)));
    var var_2 = abs(-vec3<i32>(-1i, _wgslsmith_mod_i32(arg_0.c.c, 2147483647i), _wgslsmith_clamp_i32(11996i, 1i, 4204i)) << (select(~(~arg_0.c.b.a.a.xyy), vec3<u32>(_wgslsmith_mod_u32(arg_0.c.b.e.a.x, 0u), reverseBits(6188u), var_0.x << (var_0.x % 32u)), arg_3.a.x) % vec3<u32>(32u)));
    var var_3 = 60602i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))) > arg_2.x;
    return arg_2;
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_4(!(!select(!vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), true), !vec2<bool>(true, arg_0))), Struct_2(Struct_1(~vec4<u32>(arg_2.x, arg_2.x, 31697u, 29463u), -12556i, abs(-u_input.a), 0i, 1u), Struct_1(~vec4<u32>(1u, arg_2.x, 25748u, arg_2.x), -_wgslsmith_mod_i32(-1i, u_input.a), abs(u_input.a), -38808i, ~arg_2.x), _wgslsmith_sub_u32(arg_2.x, arg_2.x), -1i, Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(89045u, arg_2.x, 20724u, arg_2.x), vec4<u32>(arg_2.x, 23953u, arg_2.x, 20618u)), u_input.a, 1i, 1i | select(-9607i, 1i, arg_0), arg_2.x)), _wgslsmith_mod_i32(u_input.a, -(~(-30958i >> (1u % 32u)))), arg_2);
    let var_1 = !arg_0;
    var var_2 = abs(~(~(~var_0.b.b.a.wz)));
    var_2 = vec2<u32>(7855u, ~var_2.x);
    let var_3 = u_input.a;
    return firstLeadingBit(~(~min(9655u << (var_0.d.x % 32u), abs(var_2.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-138f, arg_2.e)), arg_2.e, arg_2.e) - _wgslsmith_f_op_vec3_f32(vec3<f32>(389f, _wgslsmith_f_op_f32(-296f - arg_2.e), -461f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(393f, arg_2.e, 548f) - vec3<f32>(-202f, arg_2.e, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, arg_2.e, -1866f) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(786f, arg_2.e, arg_2.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 226f, arg_2.e)))), arg_2.b));
    var var_1 = Struct_1(arg_1.d, arg_0.d, _wgslsmith_mult_i32(u_input.a, reverseBits(-1i)), -_wgslsmith_add_i32(0i, 1i), reverseBits(~_wgslsmith_add_u32(func_3(false, vec4<f32>(230f, -336f, var_0.x, 2302f), arg_2.c.b.a.xwz), arg_0.a.a.x)));
    var var_2 = -abs(1i);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(-1090f, _wgslsmith_f_op_f32(474f * -341f), any(vec2<bool>(arg_1.b.x, arg_2.b)))), -1221f)));
    var var_3 = ~abs(arg_0.b.b);
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_1.a.x, ~52085u ^ arg_0.c), ~(abs(arg_2.d) >> ((arg_1.e.x ^ arg_2.a.e.e) % 32u))) | ~arg_2.a.c;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_clamp_u32(1438u, 1u, 4294967295u), 4358u, 1u, firstTrailingBit(71533u))), -32896i, arg_1, _wgslsmith_add_i32(2147483647i, ~0i | _wgslsmith_sub_i32(~u_input.a, arg_1 | arg_1)), 1u);
    var_0 = Struct_1(firstTrailingBit(vec4<u32>(~var_0.e, var_0.e, _wgslsmith_dot_vec2_u32(var_0.a.wy, vec2<u32>(var_0.a.x, 1328u) << (var_0.a.wx % vec2<u32>(32u))), ~var_0.e)), ~(-1i) >> ((abs(var_0.a.x) ^ var_0.a.x) % 32u), -56998i & (~(10352i << (var_0.e % 32u)) << (var_0.e % 32u)), arg_1, ~1u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_5(Struct_1(vec4<u32>(26814u, 23861u, var_0.e, var_0.a.x), 2147483647i, -2147483647i, arg_1, var_0.e), vec3<bool>(arg_0, false, arg_0), Struct_4(vec2<bool>(true, true), Struct_2(Struct_1(var_0.a, arg_1, -28316i, -12556i, var_0.e), Struct_1(vec4<u32>(1u, var_0.e, var_0.e, var_0.e), 2147483647i, 18227i, var_0.c, var_0.a.x), 24177u, 2147483647i, Struct_1(vec4<u32>(var_0.a.x, 40551u, 78122u, 11040u), -1i, arg_1, -1i, 11924u)), var_0.d, var_0.a.yyw), var_0.a, vec3<u32>(4294967295u, 4294967295u, 0u)), -2147483647i, vec3<f32>(-918f, -1294f, -2197f), Struct_4(vec2<bool>(false, true), Struct_2(Struct_1(var_0.a, var_0.c, 12406i, 86999i, 27559u), Struct_1(vec4<u32>(var_0.e, var_0.e, 30394u, var_0.a.x), -9525i, -4187i, arg_1, var_0.e), var_0.a.x, 0i, Struct_1(var_0.a, u_input.a, u_input.a, 9414i, var_0.a.x)), -2147483647i, vec3<u32>(var_0.a.x, 1u, 1u)))).x)) - -1050f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2744f + _wgslsmith_f_op_f32(-787f + _wgslsmith_f_op_f32(ceil(-426f)))))));
    var var_2 = func_4(Struct_2(Struct_1(vec4<u32>(_wgslsmith_sub_u32(var_0.e, 4294967295u), 4294967295u, var_0.a.x | var_0.e, var_0.a.x & 4294967295u), ~(-u_input.a), var_0.d, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, var_0.b, u_input.a), vec4<i32>(2147483647i, 1i, -6544i, u_input.a) << (var_0.a % vec4<u32>(32u))), 1u), Struct_1(reverseBits(vec4<u32>(var_0.a.x, 2747u, var_0.a.x, 89886u) | var_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-22908i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b, 46641i), vec2<i32>(var_0.d, u_input.a))), ~u_input.a & ~u_input.a, 2147483647i, firstLeadingBit(abs(var_0.e))), min(~reverseBits(var_0.a.x), ~(var_0.e & 1u)), min(0i, _wgslsmith_div_i32(_wgslsmith_add_i32(10590i, u_input.a), -2147483647i)), Struct_1(vec4<u32>(~117687u, func_3(arg_0, vec4<f32>(var_1, 727f, var_1, var_1), var_0.a.wzw), 59324u, 18973u), reverseBits(~var_0.c), _wgslsmith_add_i32(var_0.b & 241i, 0i), select(-u_input.a, 9702i, true), func_3(!arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(var_1, 839f, 890f, var_1), vec4<f32>(var_1, var_1, var_1, var_1)), var_0.a.yzz >> (var_0.a.zxz % vec3<u32>(32u))))), Struct_5(Struct_1(max(~vec4<u32>(21397u, var_0.a.x, 1u, 35425u), ~vec4<u32>(var_0.e, 0u, var_0.e, 21792u)), _wgslsmith_sub_i32(~0i, ~arg_1), -15702i, -arg_1, var_0.e), vec3<bool>(!(true || arg_0), !(var_1 != var_1), arg_0), Struct_4(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(arg_0, true)), vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false)), Struct_2(Struct_1(vec4<u32>(1u, 8813u, 1u, 60091u), var_0.b, -2147483647i, u_input.a, 61712u), Struct_1(var_0.a, arg_1, 2147483647i, 2147483647i, var_0.e), 1u >> (var_0.e % 32u), ~var_0.d, Struct_1(vec4<u32>(1u, 10676u, var_0.a.x, var_0.e), var_0.b, 0i, var_0.b, 1u)), 1i, vec3<u32>(var_0.e, var_0.a.x, 7507u) & firstTrailingBit(vec3<u32>(1u, var_0.a.x, 4294967295u))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(~6424u, var_0.e), ~42543u, 1u), abs(reverseBits(countOneBits(vec3<u32>(var_0.e, 1u, 4294967295u))))), Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.a.x, var_0.e, var_0.a.x), vec4<u32>(29409u, 33135u, 4294967295u, var_0.a.x)), 0i, min(1i, u_input.a), i32(-1i) * -2662i, _wgslsmith_clamp_u32(4294967295u, 1u, 1u)), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(54444u, var_0.e, 4294967295u, var_0.a.x), vec4<u32>(0u, var_0.e, 35522u, 4294967295u)), 0i, var_0.c, -2147483647i, var_0.a.x ^ 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, 4087u), var_0.a.zzw), select(~var_0.d, ~arg_1, var_0.e != 0u), Struct_1(vec4<u32>(var_0.e, var_0.e, var_0.a.x, var_0.a.x), u_input.a, firstTrailingBit(34381i), _wgslsmith_clamp_i32(-2147483647i, 0i, 38635i), ~var_0.e)), true, Struct_2(Struct_1(~vec4<u32>(var_0.a.x, var_0.e, 31654u, 0u), 44037i, min(arg_1, -2147483647i), -10666i, 4294967295u), Struct_1(var_0.a ^ vec4<u32>(var_0.e, var_0.e, var_0.a.x, 23458u), reverseBits(arg_1), var_0.c ^ -3672i, select(78471i, u_input.a, arg_0), _wgslsmith_add_u32(var_0.a.x, 17749u)), ~firstLeadingBit(21274u), var_0.b << (abs(1u) % 32u), Struct_1(max(var_0.a, vec4<u32>(var_0.a.x, var_0.e, 9225u, 4294967295u)), _wgslsmith_clamp_i32(var_0.c, -32589i, u_input.a), countOneBits(0i), ~var_0.c, func_3(true, vec4<f32>(var_1, 1000f, var_1, var_1), var_0.a.xwy))), firstLeadingBit(4294967295u) << (firstLeadingBit(4294967295u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))))));
    var_0 = Struct_1(var_0.a, u_input.a, var_0.c, -var_0.c, var_0.a.x);
    return Struct_4(select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(arg_0, arg_0), vec2<bool>(!arg_0, all(vec2<bool>(true, true)))), Struct_2(Struct_1(~max(vec4<u32>(0u, 71144u, var_0.e, 36652u), var_0.a), abs(-23678i ^ var_0.c), _wgslsmith_add_i32(u_input.a, select(-43554i, var_0.d, false)), -2147483647i, abs(0u)), Struct_1(~(~vec4<u32>(var_0.a.x, 4294967295u, var_0.e, 43672u)), -18821i, _wgslsmith_mult_i32(u_input.a, u_input.a), -firstTrailingBit(arg_1), abs(_wgslsmith_mult_u32(4294967295u, var_0.a.x))), min(var_0.a.x, 0u & var_0.a.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_1, var_0.d, arg_1, var_0.b) << (vec4<u32>(71394u, var_0.e, 4294967295u, var_0.e) % vec4<u32>(32u)), vec4<i32>(var_0.c, 25979i, arg_1, -54557i)), _wgslsmith_div_vec4_i32(-vec4<i32>(arg_1, 1i, 16481i, -24782i), vec4<i32>(-958i, u_input.a, -2147483647i, u_input.a))), Struct_1(var_0.a, 28627i, abs(firstLeadingBit(var_0.d)), -17594i, 1u)), _wgslsmith_add_i32(reverseBits(0i), -(i32(-1i) * -1i)), var_0.a.yzz);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = select(vec3<bool>(arg_0.a.x, !any(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), arg_0.a.x), vec3<bool>(true, true, false), !arg_0.a.x);
    var var_1 = select(select(select(!(!vec3<bool>(arg_0.a.x, arg_0.a.x, var_0.x)), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(false, true, var_0.x)), select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, arg_0.a.x, arg_0.a.x)), vec3<bool>(false, var_0.x, arg_0.a.x), true)), !select(!vec3<bool>(var_0.x, arg_0.a.x, arg_0.a.x), !vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, arg_0.a.x)), true), vec3<bool>(false, true, arg_0.b.a.a.x <= ~arg_0.d.x), select(vec3<bool>(false, true, false), vec3<bool>(any(var_0.xy), all(vec3<bool>(var_0.x, arg_0.a.x, false)) | select(true, var_0.x, false), arg_1.x > func_2(true, u_input.a).c), !var_0.x));
    var_0 = !vec3<bool>(true, !(!any(vec2<bool>(true, true))), true);
    var_1 = vec3<bool>(false, !(arg_0.a.x & true), true);
    var_0 = vec3<bool>(true, false, (arg_0.b.e.e > 4294967295u) == (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(975f)), -1000f)) >= 391f));
    return arg_0;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: bool) -> f32 {
    let var_0 = Struct_5(func_2(arg_3, abs(-68219i)).b.b, !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(false, true, arg_2.a.x), arg_3), arg_3), arg_2, ~arg_2.b.a.a, _wgslsmith_mod_vec3_u32(arg_2.b.e.a.wwz, arg_2.b.b.a.zwz));
    var var_1 = vec4<i32>(abs(~(i32(-1i) * -arg_1.x)), -1i, -2147483647i, u_input.a);
    let var_2 = !arg_2.a;
    var_1 = min(vec4<i32>(2147483647i, _wgslsmith_add_i32(-1i, countOneBits(-1i)), var_0.a.d, -func_5(func_5(var_0.c, vec4<i32>(6591i, u_input.a, var_0.c.b.e.d, arg_1.x)), -vec4<i32>(arg_1.x, 1i, arg_2.c, arg_1.x)).b.a.c), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(-8043i, -13439i), ~arg_2.b.b.b, -2147483647i, -var_0.c.c)) >> ((vec4<u32>(1u, ~4294967295u, arg_2.d.x, ~10u) << (arg_2.b.e.a % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_2.b.b.b, -20194i, u_input.a), vec4<i32>(40304i, -1i, 13366i, arg_1.x))) | vec4<i32>(countOneBits(arg_2.b.e.d), abs(-1i), 2147483647i | arg_1.x, var_1.x | arg_1.x)), select(~(-vec4<i32>(var_0.c.c, var_0.a.d, -14614i, 2147483647i)), vec4<i32>(arg_1.x, min(_wgslsmith_mult_i32(var_0.c.b.d, var_1.x), _wgslsmith_clamp_i32(var_1.x, var_0.a.c, 53227i)), ~(~(-6900i)), (-23538i ^ var_1.x) & _wgslsmith_clamp_i32(arg_1.x, arg_1.x, -24470i)), true));
    return 119f;
}

fn func_7(arg_0: u32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(3332i, u_input.a) | vec2<i32>(-52588i, 2147483647i)), select(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, 1i), u_input.a), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), u_input.a) >> (firstTrailingBit(vec2<u32>(23688u, arg_0) << (arg_3.xz % vec2<u32>(32u))) % vec2<u32>(32u)), func_2(true, u_input.a).a));
    var var_1 = Struct_3(func_5(func_2(true, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, var_0.x), vec3<i32>(-3470i, -1i, var_0.x))), -vec4<i32>(_wgslsmith_mod_i32(var_0.x, -2147483647i), _wgslsmith_clamp_i32(1i, var_0.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, -40178i, var_0.x), vec4<i32>(var_0.x, var_0.x, -1i, var_0.x)), ~2147483647i)).b, all(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, all(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, false, false, false))), false)), func_2(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), var_0.x).b, countOneBits(~(~arg_3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(-1578f, 839f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(vec3<f32>(arg_1, arg_1, arg_1), vec3<i32>(-2475i, u_input.a, var_0.x), Struct_4(vec2<bool>(true, true), Struct_2(Struct_1(arg_3, u_input.a, -15142i, u_input.a, 10156u), Struct_1(vec4<u32>(0u, 26867u, arg_0, 1u), 2147483647i, -2147483647i, -1i, arg_3.x), arg_3.x, u_input.a, Struct_1(vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 29228u), 18554i, var_0.x, u_input.a, arg_3.x)), 7963i, vec3<u32>(0u, arg_3.x, 353u)), false)) + _wgslsmith_f_op_vec3_f32(func_1(Struct_5(Struct_1(arg_3, u_input.a, u_input.a, var_0.x, arg_3.x), vec3<bool>(false, true, false), Struct_4(vec2<bool>(true, false), Struct_2(Struct_1(arg_3, -1i, var_0.x, u_input.a, 38434u), Struct_1(vec4<u32>(arg_0, arg_3.x, arg_3.x, arg_3.x), 2147483647i, u_input.a, -88546i, arg_3.x), arg_0, u_input.a, Struct_1(vec4<u32>(1054u, arg_3.x, 0u, 0u), var_0.x, var_0.x, u_input.a, arg_0)), var_0.x, vec3<u32>(arg_0, arg_0, 7697u)), vec4<u32>(arg_0, arg_0, arg_3.x, arg_3.x), arg_3.yxx), 2147483647i, vec3<f32>(1000f, 1421f, arg_2.x), Struct_4(vec2<bool>(true, true), Struct_2(Struct_1(arg_3, u_input.a, var_0.x, var_0.x, arg_3.x), Struct_1(arg_3, 0i, 0i, -48233i, 0u), arg_0, -1i, Struct_1(vec4<u32>(0u, 4294967295u, 17613u, 1u), 6225i, 28589i, -5111i, 4294967295u)), -2147483647i, arg_3.xxx))).x)), 1046f, false)));
    var var_2 = var_0.x;
    var var_3 = func_5(func_5(func_5(Struct_4(vec2<bool>(var_1.b, var_1.b), var_1.a, var_1.c.e.c, abs(vec3<u32>(43827u, 0u, 0u))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -24349i, 6343i, var_1.c.a.c), vec4<i32>(var_0.x, var_0.x, -31899i, -1i)))), vec4<i32>(0i, 23952i, ~firstLeadingBit(-43851i), var_0.x)), vec4<i32>(~(-52147i), -9011i, func_5(func_5(func_5(Struct_4(vec2<bool>(true, var_1.b), var_1.c, -2147483647i, var_1.a.b.a.zyx), vec4<i32>(u_input.a, -1i, 2147483647i, var_1.c.b.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_1.c.a.d, 1i, 14019i, u_input.a))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.b.b, -56624i, 25589i, var_0.x), vec4<i32>(u_input.a, u_input.a, 9851i, var_0.x))).c, var_0.x));
    var_1 = Struct_3(func_2(((var_1.b & true) && true) || func_5(func_5(Struct_4(vec2<bool>(var_3.a.x, var_3.a.x), var_1.c, var_3.b.a.b, vec3<u32>(var_3.d.x, arg_3.x, var_1.c.e.e)), vec4<i32>(var_3.b.e.d, 13099i, var_3.c, var_1.c.b.c)), countOneBits(vec4<i32>(-1i, 38808i, -30827i, var_1.c.a.b))).a.x, var_3.b.a.c).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.e)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(arg_1)), false || var_1.b))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 1000f)), var_3.b, var_1.c.e.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -531f));
    return Struct_3(var_3.b, 66158u <= arg_3.x, Struct_2(func_2(true, -1i).b.e, func_2(all(vec2<bool>(var_3.a.x, var_3.a.x)), ~u_input.a).b.b, abs(arg_0), u_input.a, Struct_1(vec4<u32>(arg_3.x, arg_3.x, 1u, func_3(true, vec4<f32>(990f, -596f, 516f, -410f), var_1.c.e.a.xxz)), -u_input.a, -35558i, 1i, 61413u)), ~4294967295u, _wgslsmith_f_op_f32(max(-1011f, 753f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    var var_1 = func_7(abs(max(countOneBits(1u) << (firstLeadingBit(1u) % 32u), 0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_5(Struct_1(vec4<u32>(1u, 26288u, 0u, 1u), 11632i, 44569i, 25649i, 49689u), vec3<bool>(true, false, true), Struct_4(vec2<bool>(false, false), Struct_2(Struct_1(vec4<u32>(4294967295u, 24921u, 25874u, 41109u), -1i, 18416i, 70480i, 26098u), Struct_1(vec4<u32>(4294967295u, 70462u, 1u, 0u), var_0, var_0, 0i, 0u), 4294967295u, 0i, Struct_1(vec4<u32>(41658u, 4294967295u, 55693u, 51435u), u_input.a, var_0, var_0, 0u)), u_input.a, vec3<u32>(6019u, 27211u, 45962u)), vec4<u32>(4294967295u, 78925u, 0u, 0u), vec3<u32>(1u, 9661u, 1u)), u_input.a, vec3<f32>(752f, -1000f, -771f), Struct_4(vec2<bool>(true, true), Struct_2(Struct_1(vec4<u32>(65099u, 1u, 0u, 1u), 2147483647i, -48577i, 24282i, 12124u), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), var_0, u_input.a, 18552i, 91464u), 4294967295u, 0i, Struct_1(vec4<u32>(64519u, 43691u, 23851u, 1u), var_0, -30511i, 10725i, 71016u)), -1i, vec3<u32>(1170u, 0u, 1u)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -1437f, -268f))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(0i, u_input.a, var_0), vec3<i32>(2147483647i, u_input.a, var_0), false), vec3<i32>(var_0, u_input.a, -2147483647i), -vec3<i32>(1i, var_0, -1i)), func_5(func_2(true, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 2270i) << (vec4<u32>(12337u, 1u, 0u, 17223u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(1466f, 576f, true)) < -407f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-411f, 1122f) + vec2<f32>(659f, 1009f)))))))), vec4<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(39825u, 0u))), _wgslsmith_mod_u32(select(47139u, 0u, true) >> (~4294967295u % 32u), 1u), ~select(93865u, _wgslsmith_dot_vec4_u32(vec4<u32>(33970u, 21286u, 4294967295u, 0u), vec4<u32>(0u, 1u, 52239u, 4294967295u)), true), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(31774u);
}

