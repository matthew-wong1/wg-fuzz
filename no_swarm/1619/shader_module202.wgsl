struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a.x & 1i, ~arg_3.a, firstTrailingBit(~(-13494i)), ~(-2147483647i)), min(-select(vec4<i32>(arg_3.a, u_input.a.x, arg_3.a, -4542i), vec4<i32>(-1i, 0i, 2147483647i, u_input.a.x), true), select(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_3.a, arg_3.a, 1i), vec4<i32>(arg_2, arg_3.a, 0i, 41778i)), reverseBits(vec4<i32>(arg_2, 2147483647i, 2147483647i, -2147483647i)), arg_2 < arg_2))), vec4<i32>(i32(-1i) * -arg_2, arg_2, _wgslsmith_dot_vec3_i32(~(vec3<i32>(arg_3.a, -18762i, arg_2) >> (arg_3.c.wwy % vec3<u32>(32u))), vec3<i32>(~1i, _wgslsmith_clamp_i32(arg_2, arg_2, arg_3.a), _wgslsmith_mult_i32(21819i, -10683i))), -16031i), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(min(-1410f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(716f, arg_1), _wgslsmith_div_f32(1158f, arg_3.b)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_3.b)), 515f)), select(false, _wgslsmith_f_op_f32(abs(291f)) >= _wgslsmith_f_op_f32(ceil(arg_1)), true) || all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec4<bool>(false, false, false, false))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1729f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, var_1.x)))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-959f, arg_3.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, 461f) * vec2<f32>(-348f, var_1.x))))))));
    let var_2 = arg_3;
    return ~65781u;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(~arg_2.x, _wgslsmith_mult_u32(~86628u, select(_wgslsmith_mod_u32(_wgslsmith_mult_u32(10861u, arg_2.x), arg_2.x), arg_2.x, arg_1)), 1u, (4294967295u >> (0u % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(67068u, ~arg_2.x), 9409u) % 32u));
    var_0 = (reverseBits(max(vec4<u32>(arg_2.x, 43093u, arg_2.x, arg_0.x), vec4<u32>(4294967295u, var_0.x, 1u, arg_0.x))) & (vec4<u32>(4294967295u, arg_0.x, 3768u, ~arg_2.x) << ((vec4<u32>(4294967295u, 1u, 4294967295u, 18529u) >> (vec4<u32>(var_0.x, var_0.x, 0u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)))) | _wgslsmith_sub_vec4_u32(vec4<u32>(func_3(vec2<u32>(12010u, arg_2.x), -1288f, u_input.a.x, Struct_1(u_input.a.x, 1000f, vec4<u32>(var_0.x, arg_0.x, 4179u, 0u))), 0u, firstLeadingBit(10463u), 1u) & vec4<u32>(arg_2.x, arg_0.x >> (34969u % 32u), ~arg_2.x, ~arg_0.x), ~(~vec4<u32>(1u, 60395u, var_0.x, 6274u)));
    let var_1 = firstTrailingBit(~(~(-_wgslsmith_div_vec4_i32(vec4<i32>(14485i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -41812i, -1i, 38825i)))));
    var var_2 = Struct_1(-7274i << (func_3(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1946f) + _wgslsmith_f_op_f32(f32(-1f) * -1306f)), ~min(26119i, u_input.a.x), Struct_1(39657i, _wgslsmith_f_op_f32(f32(-1f) * -1097f), ~vec4<u32>(arg_2.x, 11712u, 1u, var_0.x))) % 32u), -1261f, reverseBits(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(264u, arg_2.x, 16956u, 83396u), vec4<u32>(var_0.x, arg_2.x, 60917u, arg_0.x) >> (vec4<u32>(var_0.x, 90302u, var_0.x, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 50361u, var_0.x, arg_0.x), vec4<u32>(80119u, arg_2.x, arg_2.x, arg_0.x))))));
    var_2 = Struct_1(1901i, var_2.b, reverseBits(var_2.c));
    return Struct_1(_wgslsmith_dot_vec3_i32(var_1.zyz, _wgslsmith_mult_vec3_i32(~select(vec3<i32>(var_2.a, var_1.x, 6542i), var_1.wzw, vec3<bool>(arg_3.x, arg_3.x, true)), var_1.wwx)), -953f, firstLeadingBit(_wgslsmith_add_vec4_u32(var_2.c | min(var_2.c, var_2.c), var_2.c)));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = Struct_2(vec3<u32>(arg_2.a.x, 23124u << (arg_2.a.x % 32u), _wgslsmith_sub_u32(arg_1, arg_1)) << (max(vec3<u32>(arg_1, arg_2.a.x, arg_2.c.c.x) ^ arg_2.c.c.xxy, vec3<u32>(1u, 30516u, arg_1) & select(vec3<u32>(arg_1, arg_2.c.c.x, 94942u), arg_2.c.c.wxw, vec3<bool>(true, false, false))) % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(-arg_2.b, firstTrailingBit(~firstLeadingBit(vec2<i32>(-2147483647i, arg_2.b.x)))), arg_2.c);
    let var_1 = false;
    var var_2 = firstLeadingBit(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(arg_2.a & vec3<u32>(var_0.c.c.x, 1u, arg_1), min(vec3<u32>(4294967295u, 56960u, 16908u), vec3<u32>(var_0.c.c.x, arg_1, arg_1))), ~arg_2.a.x, arg_2.c.c.x));
    let var_3 = abs(arg_2.c.a >> (var_0.c.c.x % 32u));
    let var_4 = var_1;
    return firstTrailingBit(firstLeadingBit(vec3<i32>(-25951i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(55402i, u_input.a.x, -859i), vec3<i32>(var_0.b.x, u_input.a.x, u_input.a.x)), arg_2.b.x)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = reverseBits(countOneBits(_wgslsmith_dot_vec2_i32(u_input.a, arg_2.b))) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(arg_2.c.c, vec4<u32>(arg_0.x, 33513u, 4294967295u, arg_0.x)), ~max(arg_2.c.c, arg_2.c.c)), abs(abs(countOneBits(arg_2.c.c)))) % 32u);
    var_0 = 13914i;
    var var_1 = ~arg_2.a.x;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.a, func_2(vec2<u32>(0u, arg_0.x), false, vec2<u32>(arg_2.c.c.x, 100791u), select(vec4<bool>(false, false, true, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x), arg_3.x)).c.wyz), vec3<u32>(arg_0.x, _wgslsmith_sub_u32(func_2(arg_0.xx, false, arg_0.xz, vec4<bool>(false, arg_3.x, true, arg_3.x)).c.x, 1u), _wgslsmith_div_u32(1u | arg_0.x, arg_2.a.x))), _wgslsmith_dot_vec2_u32(arg_2.a.yz, ~(arg_0.zz << (arg_2.c.c.wx % vec2<u32>(32u)))) ^ _wgslsmith_mod_u32(4294967295u, ~61450u));
    let var_3 = _wgslsmith_mod_i32(func_4(vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(-607f, -2446f)), 1223f), arg_2.a.x, Struct_2(~vec3<u32>(1u, 174019u, arg_2.c.c.x), ~vec2<i32>(-12248i, -2147483647i), arg_2.c)).x, ~2147483647i) ^ arg_1.x;
    return -(~firstTrailingBit((vec4<i32>(4840i, var_3, -1i, arg_1.x) | vec4<i32>(-1i, -789i, var_3, var_3)) << (vec4<u32>(1u, arg_0.x, arg_2.c.c.x, arg_2.c.c.x) % vec4<u32>(32u))));
}

fn func_1() -> vec2<u32> {
    let var_0 = -(i32(-1i) * -28230i);
    var var_1 = -firstLeadingBit(-max(select(vec4<i32>(2147483647i, 92355i, u_input.a.x, var_0), vec4<i32>(2147483647i, 17658i, -26360i, -2147483647i), vec4<bool>(false, true, true, true)), firstLeadingBit(vec4<i32>(19195i, 19296i, 2147483647i, 44750i))));
    var var_2 = false;
    var_1 = func_5(~vec3<u32>(_wgslsmith_add_u32(4294967295u, 0u), ~0u, _wgslsmith_add_u32(1u, 5778u)) | vec3<u32>(~_wgslsmith_mult_u32(1u, 3161u), _wgslsmith_mult_u32(firstTrailingBit(12376u), abs(24186u)), reverseBits(_wgslsmith_clamp_u32(1u, 16636u, 33557u))), _wgslsmith_sub_vec3_i32(func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(949f, -1094f, -1000f) * vec3<f32>(-386f, 2150f, 1000f)))), _wgslsmith_clamp_u32(~6744u, min(1u, 9723u), 79183u), Struct_2(vec3<u32>(34835u, 41071u, 4294967295u), ~var_1.yw, func_2(vec2<u32>(17650u, 0u), false, vec2<u32>(0u, 7352u), vec4<bool>(false, false, true, true)))), ~vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.a.x), var_1.x, _wgslsmith_mod_i32(var_1.x, 29035i))), Struct_2(vec3<u32>(1u, 1u, 1u), var_1.xx, Struct_1(func_2(select(vec2<u32>(32989u, 4294967295u), vec2<u32>(7479u, 6568u), true), all(vec3<bool>(false, false, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 117662u), vec2<u32>(4294967295u, 40389u)), vec4<bool>(true, true, true, false)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-900f, -160f)) * 1f), ~vec4<u32>(64893u, 0u, 39644u, 1u))), vec2<bool>(select(true, any(vec4<bool>(true, true, true, true)), false), all(vec3<bool>(true, true, true))));
    let var_3 = Struct_1(min(i32(-1i) * -var_0, -2147483647i), -853f, func_2(vec2<u32>(1u, 1u), true, ~vec2<u32>(0u, 0u), vec4<bool>(true, true, true, true)).c >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~0u, 1u, _wgslsmith_add_u32(0u, 18164u), _wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u)), vec4<u32>(24306u, ~54499u, _wgslsmith_sub_u32(1u, 1u), 19283u)) % vec4<u32>(32u)));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.c.x, 4294967295u), var_3.c.zw, vec2<u32>(~(1u >> (abs(1u) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.x, _wgslsmith_sub_u32(12018u, var_3.c.x)), vec2<u32>(~4294967295u, var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(~(~select(_wgslsmith_add_vec2_u32(vec2<u32>(31764u, 1u), vec2<u32>(31076u, 26644u)), vec2<u32>(1u, 1u), select(false, true, true))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), ~func_1()));
    let var_1 = var_0.x;
    let var_2 = Struct_2(~select(firstTrailingBit(~vec3<u32>(1u, 93813u, var_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(84023u, var_1, var_1) & vec3<u32>(25507u, 23916u, 12409u), max(vec3<u32>(1u, 1221u, 68775u), vec3<u32>(var_0.x, var_1, var_1))), false), ~(max(u_input.a, vec2<i32>(1i, u_input.a.x)) ^ vec2<i32>(-u_input.a.x, -4438i)), Struct_1(~41399i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1010f + -421f) * _wgslsmith_f_op_f32(round(699f))), -493f)), firstLeadingBit(min(~vec4<u32>(var_1, 9118u, var_0.x, var_1), abs(vec4<u32>(49609u, var_1, 4294967295u, 0u))))));
    let var_3 = var_2;
    var var_4 = Struct_2(_wgslsmith_mult_vec3_u32(~var_2.a, ~var_2.c.c.xyx), abs(var_3.b), var_2.c);
    let var_5 = u_input.a.x;
    var_4 = var_3;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.b, _wgslsmith_f_op_f32(f32(-1f) * -936f), -646f, _wgslsmith_f_op_f32(var_4.c.b * -1641f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1091f, 1703f, 1134f, var_2.c.b) + vec4<f32>(656f, 108f, var_3.c.b, var_4.c.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(819f, -566f, var_2.c.b, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.b, var_3.c.b, -385f, var_3.c.b))))));
    var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<u32>(var_1 ^ 734u, ~var_3.c.c.x), var_2.a.xz), vec2<f32>(var_6.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-993f, -798f)))))), -var_3.b.x);
}

