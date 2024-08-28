struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = abs(~(arg_1.b ^ (u_input.c.xy >> (arg_2.wy % vec2<u32>(32u)))));
    let var_1 = arg_1.d.x;
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-max(min(vec2<i32>(-17284i, arg_3), vec2<i32>(u_input.b.x, -1i)), -vec2<i32>(arg_3, -1i)), u_input.b.zw), abs(u_input.b.xx ^ vec2<i32>(_wgslsmith_div_i32(-26218i, -2147483647i), -3655i)));
    var_2 = -2147483647i | select(_wgslsmith_mod_i32(arg_3, u_input.b.x), select(_wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), u_input.b.x), _wgslsmith_mult_i32(arg_3, 254i), _wgslsmith_sub_u32(2160u, arg_1.b.x) == ~arg_1.c.x), !arg_1.a);
    var_2 = _wgslsmith_sub_i32(abs(-min(1i, arg_3)), -2147483647i);
    return select(!(!(!vec3<bool>(arg_0.a, arg_1.a, true))), select(!select(vec3<bool>(true, arg_0.a, true), vec3<bool>(false, arg_1.a, arg_0.a), any(vec3<bool>(true, arg_0.a, arg_0.a))), select(vec3<bool>(all(vec4<bool>(arg_1.a, false, false, true)), true, false), vec3<bool>(true, arg_0.a, true), true), vec3<bool>(false, arg_1.a && !arg_1.a, select(all(vec3<bool>(arg_0.a, false, arg_0.a)), !arg_1.a, arg_1.a))), select(!select(select(vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_1.a, arg_0.a, arg_1.a), vec3<bool>(arg_1.a, arg_0.a, true)), select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_1.a, false, true), false), arg_1.a & arg_1.a), !select(!vec3<bool>(false, true, arg_0.a), select(vec3<bool>(false, arg_1.a, false), vec3<bool>(false, arg_0.a, false), false), true), !vec3<bool>(arg_0.a, arg_1.a, !arg_0.a)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = -(_wgslsmith_dot_vec2_i32(min(u_input.b.xx, ~u_input.b.xz), vec2<i32>(_wgslsmith_div_i32(18225i, u_input.b.x), -1874i)) & -46537i);
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec3_i32(firstLeadingBit(-_wgslsmith_mod_vec3_i32(u_input.b.xyx, u_input.b.yzz)), ~vec3<i32>(1i, u_input.b.x << (1u % 32u), ~2995i)));
    var_1 = ~firstLeadingBit(vec3<i32>(var_1.x, firstTrailingBit(-16017i) | _wgslsmith_div_i32(26786i, u_input.b.x), select(abs(2147483647i), u_input.b.x, true)));
    var var_2 = Struct_1(all(!vec4<bool>(true, u_input.c.x > 762u, all(vec4<bool>(false, arg_0, arg_0, arg_0)), arg_2.x == true)), reverseBits(vec2<u32>(u_input.c.x, _wgslsmith_div_u32(u_input.c.x >> (u_input.c.x % 32u), 58168u))), u_input.a, vec4<f32>(1000f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1497f))));
    var_0 = -1i;
    return vec3<f32>(-277f, var_2.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1673f * -152f)) - -291f))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    let var_0 = Struct_1(true, ~u_input.c.xy, vec4<u32>(min(~_wgslsmith_add_u32(36970u, 16037u), countOneBits(33923u)), min(abs(4294967295u), u_input.a.x), ~(abs(u_input.c.x) & 1u), u_input.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, -466f, -765f, -157f) * vec4<f32>(966f, 1553f, 1000f, 818f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2339f, -565f, 1254f, -660f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(((4294967295u & var_0.c.x) >= firstLeadingBit(4294967295u)) & all(func_3(Struct_1(false, vec2<u32>(0u, u_input.a.x), u_input.d, var_0.d), Struct_1(true, var_0.c.zx, vec4<u32>(u_input.a.x, var_0.b.x, u_input.a.x, var_0.c.x), var_0.d), vec4<u32>(var_0.b.x, 29865u, 10481u, var_0.c.x), -16064i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.d.xx)) * _wgslsmith_f_op_vec2_f32(max(var_0.d.ww, vec2<f32>(1000f, var_0.d.x)))) - vec2<f32>(1000f, -1362f)), vec2<bool>(false, true))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_0.d.x, var_1.x)))) * var_0.d.wyx));
    var var_2 = vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(~u_input.a.x, firstLeadingBit(47024u)) >> (_wgslsmith_sub_u32(1u | var_0.b.x, select(u_input.d.x, 0u, var_0.a)) % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 13389u, var_0.b.x, firstTrailingBit(42142u)), max(u_input.a, ~var_0.c)), vec4<u32>(countOneBits(u_input.a.x << (var_0.b.x % 32u)), 30520u, var_0.c.x, u_input.c.x)), u_input.a.x);
    let var_3 = u_input.b ^ vec4<i32>(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.x, 0i, -17508i, u_input.b.x), vec4<i32>(0i, 2147483647i, u_input.b.x, 7505i)), _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(arg_0.x, u_input.b.x, arg_0.x, u_input.b.x))), arg_0.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) | ~(25271i >> (var_2.x % 32u)), u_input.b.x);
    return _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(var_0.c.x), 0u, ~(35862u & var_2.x), ~30328u) << (~((vec4<u32>(var_0.b.x, 4294967295u, 512u, u_input.c.x) ^ vec4<u32>(4294967295u, u_input.a.x, 20073u, var_2.x)) & ~vec4<u32>(u_input.a.x, var_2.x, u_input.d.x, 15694u)) % vec4<u32>(32u)), ~u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = func_2(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) >> (0u % 32u), arg_3.x, arg_1));
    let var_2 = 0u;
    var var_3 = arg_3.x << (max(~reverseBits(1u), _wgslsmith_mod_u32(79044u, var_2)) % 32u);
    let var_4 = u_input.a.x >> (arg_2.b.x % 32u);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = func_1(Struct_1(false, _wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.b.x, arg_1.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.c.x, 0u), ~vec2<u32>(u_input.d.x, 40916u), ~vec2<u32>(arg_0.c.x, arg_0.b.x))), ~vec4<u32>(1u, 20807u, u_input.a.x, 0u) | vec4<u32>(arg_0.b.x << (arg_1.c.x % 32u), arg_0.c.x, u_input.d.x, abs(u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(arg_1.d)), arg_1.d)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_1.d, arg_1.d))))), u_input.b.x | (_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(27224i, -1i), vec2<i32>(u_input.b.x, u_input.b.x))) ^ u_input.b.x), func_1(arg_1, u_input.b.x | firstTrailingBit(u_input.b.x), func_1(arg_0, -u_input.b.x, arg_1, vec2<i32>(u_input.b.x, 1i) | min(u_input.b.wy, u_input.b.zy)), firstTrailingBit(u_input.b.yw)), _wgslsmith_mod_vec2_i32(-max(u_input.b.yw, vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.yw));
    let var_1 = !func_3(Struct_1(!(true | var_0.a), ~(~arg_0.c.xw), vec4<u32>(var_0.c.x, _wgslsmith_div_u32(1u, u_input.d.x), ~89135u, arg_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 1904f, -2586f, var_0.d.x))), func_1(arg_0, min(min(u_input.b.x, 31213i), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -52458i)), func_1(Struct_1(false, vec2<u32>(u_input.d.x, arg_1.b.x), arg_1.c, vec4<f32>(-1000f, arg_0.d.x, arg_1.d.x, 598f)), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), func_1(arg_1, 50242i, var_0, u_input.b.ww), vec2<i32>(1i, -2147483647i) >> (var_0.c.wx % vec2<u32>(32u))), firstTrailingBit(u_input.b.zy)), ~vec4<u32>(15088u, ~1u, arg_1.c.x >> (0u % 32u), abs(10003u)), reverseBits(-2147483647i | (u_input.b.x | u_input.b.x))).x;
    var var_2 = func_1(arg_0, 2147483647i >> ((~(arg_0.c.x >> (u_input.d.x % 32u)) << (~(43770u >> (arg_1.b.x % 32u)) % 32u)) % 32u), arg_0, select(u_input.b.ww ^ u_input.b.yz, vec2<i32>(1872i, firstLeadingBit(u_input.b.x | u_input.b.x)), !(!arg_1.a) == !any(vec2<bool>(true, var_1))));
    var var_3 = Struct_1(any(select(select(vec4<bool>(false, arg_0.a, var_0.a, true), !vec4<bool>(false, arg_1.a, true, arg_1.a), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, arg_1.a, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, var_2.a, true, var_0.a)), select(select(vec4<bool>(arg_0.a, arg_1.a, true, var_2.a), vec4<bool>(false, arg_1.a, false, var_2.a), vec4<bool>(var_2.a, false, arg_0.a, var_2.a)), vec4<bool>(true, var_2.a, var_1, arg_1.a), true | var_0.a))), func_1(func_1(arg_1, 0i, arg_1, u_input.b.yy), -_wgslsmith_div_i32(u_input.b.x, firstLeadingBit(u_input.b.x)), func_1(func_1(func_1(arg_1, 2147483647i, arg_0, u_input.b.zy), -2147483647i, Struct_1(true, u_input.a.yz, var_0.c, vec4<f32>(1067f, 1349f, -701f, var_2.d.x)), -u_input.b.yy), _wgslsmith_clamp_i32(abs(u_input.b.x), _wgslsmith_mod_i32(0i, 9382i), u_input.b.x | -2962i), arg_0, select(select(u_input.b.yy, vec2<i32>(2147483647i, 2147483647i), vec2<bool>(true, arg_1.a)), vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(true, true))), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -2147483647i, -14105i, 0i)) << (~arg_1.b.x % 32u), u_input.b.x)).c.zw, _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 8812u, 13241u, u_input.d.x), var_2.c) >> (vec4<u32>(46466u, _wgslsmith_mult_u32(u_input.d.x, 46770u), 41155u, _wgslsmith_dot_vec3_u32(~var_0.c.wwy, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, arg_0.c.x, 4294967295u), vec3<u32>(var_2.c.x, var_2.b.x, u_input.a.x)))) % vec4<u32>(32u)), var_0.d);
    let var_4 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(49572u, var_3.c.x), var_0.c.x & 2257u, firstLeadingBit(var_0.c.x)), vec3<u32>(max(1u, 1u), func_1(arg_0, -2147483647i, arg_0, u_input.b.wz).c.x, 4294967295u << (var_2.c.x % 32u)) & ~vec3<u32>(4294967295u, var_3.c.x, 33278u));
    return 1i;
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(func_3(func_1(func_1(func_1(Struct_1(false, vec2<u32>(u_input.c.x, 61461u), vec4<u32>(1u, u_input.a.x, 0u, 4294967295u), vec4<f32>(762f, 1211f, arg_1.x, arg_1.x)), arg_0, Struct_1(arg_3, u_input.d.xy, u_input.d, vec4<f32>(arg_1.x, -838f, 586f, arg_1.x)), u_input.b.yw), -1305i, func_1(Struct_1(arg_3, vec2<u32>(u_input.d.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, 19242u, 23423u), vec4<f32>(arg_1.x, arg_1.x, -669f, arg_1.x)), arg_0, Struct_1(arg_3, u_input.a.ww, u_input.a, vec4<f32>(632f, arg_1.x, -690f, -320f)), vec2<i32>(1i, arg_0)), vec2<i32>(-52179i, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_2, u_input.b.x), max(vec3<i32>(16549i, u_input.b.x, arg_0), u_input.b.wwz)), func_1(func_1(Struct_1(false, vec2<u32>(12573u, u_input.d.x), u_input.a, vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_0, Struct_1(arg_3, vec2<u32>(18554u, 29428u), u_input.d, vec4<f32>(-415f, 830f, -687f, arg_1.x)), vec2<i32>(arg_2, 2147483647i)), -53055i, func_1(Struct_1(arg_3, u_input.a.yx, u_input.d, vec4<f32>(arg_1.x, -1738f, arg_1.x, arg_1.x)), 5782i, Struct_1(arg_3, u_input.a.yy, vec4<u32>(56654u, 4294967295u, 0u, u_input.a.x), vec4<f32>(1000f, 2100f, arg_1.x, arg_1.x)), vec2<i32>(20945i, u_input.b.x)), _wgslsmith_div_vec2_i32(u_input.b.zw, vec2<i32>(arg_2, -23794i))), _wgslsmith_add_vec2_i32(u_input.b.yw >> (u_input.d.wz % vec2<u32>(32u)), vec2<i32>(2788i, u_input.b.x))), func_1(func_1(func_1(Struct_1(arg_3, u_input.c.zz, vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<f32>(arg_1.x, arg_1.x, -148f, arg_1.x)), 21103i, Struct_1(true, vec2<u32>(1u, u_input.d.x), vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.a.x), vec4<f32>(-266f, -1419f, 980f, arg_1.x)), u_input.b.yw), select(u_input.b.x, arg_2, true), func_1(Struct_1(false, vec2<u32>(u_input.a.x, u_input.c.x), u_input.d, vec4<f32>(arg_1.x, arg_1.x, -888f, arg_1.x)), arg_2, Struct_1(false, u_input.d.yy, vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.d.x), vec4<f32>(-357f, arg_1.x, -592f, arg_1.x)), u_input.b.zw), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_2), u_input.b.yw)), 9061i, func_1(func_1(Struct_1(arg_3, vec2<u32>(u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<f32>(-658f, arg_1.x, -896f, 1000f)), 1i, Struct_1(false, u_input.c.xy, vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, 54263u), vec4<f32>(725f, -252f, 1609f, arg_1.x)), vec2<i32>(0i, u_input.b.x)), _wgslsmith_add_i32(arg_0, arg_0), func_1(Struct_1(false, u_input.c.yz, u_input.a, vec4<f32>(arg_1.x, -567f, arg_1.x, 533f)), u_input.b.x, Struct_1(arg_3, vec2<u32>(4294967295u, 1535u), vec4<u32>(u_input.c.x, 105438u, 54018u, 61076u), vec4<f32>(arg_1.x, 2664f, arg_1.x, arg_1.x)), vec2<i32>(1i, arg_0)), u_input.b.zy), vec2<i32>(arg_0 | arg_0, 6440i & arg_0)), u_input.d, _wgslsmith_add_i32(arg_0, _wgslsmith_dot_vec2_i32(-vec2<i32>(-4117i, arg_0), vec2<i32>(-2147483647i, arg_0)))).x, vec2<u32>(reverseBits(func_1(func_1(Struct_1(false, u_input.c.yy, u_input.a, vec4<f32>(-974f, -1176f, arg_1.x, arg_1.x)), arg_0, Struct_1(false, vec2<u32>(u_input.a.x, 1u), u_input.d, vec4<f32>(arg_1.x, -1117f, arg_1.x, arg_1.x)), vec2<i32>(u_input.b.x, arg_0)), abs(arg_0), func_1(Struct_1(false, vec2<u32>(0u, u_input.c.x), vec4<u32>(u_input.a.x, 26730u, 43464u, u_input.d.x), vec4<f32>(arg_1.x, -1202f, -2134f, 397f)), -2147483647i, Struct_1(false, u_input.d.xy, u_input.d, vec4<f32>(-433f, -594f, arg_1.x, arg_1.x)), u_input.b.zw), ~u_input.b.yx).c.x), 1u), ~_wgslsmith_mult_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(119226u, u_input.d.x, u_input.c.x, u_input.a.x), u_input.d, vec4<u32>(0u, 4294967295u, 4294967295u, 1u))), firstTrailingBit(~u_input.d)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -400f, -351f) + vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_vec3_f32(func_4(arg_3, vec2<f32>(arg_1.x, arg_1.x), vec2<bool>(arg_3, arg_3))).x, _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x)) - vec4<f32>(790f, -1312f, _wgslsmith_f_op_f32(-1017f - arg_1.x), 479f)))));
    var var_1 = select(select(vec4<bool>(any(!vec3<bool>(arg_3, false, var_0.a)), true, var_0.a, !arg_3), !vec4<bool>(true, any(vec4<bool>(arg_3, true, var_0.a, true)), all(vec4<bool>(arg_3, var_0.a, true, false)), !arg_3), !vec4<bool>(var_0.a, arg_3 | true, arg_3 || false, arg_3)), !vec4<bool>(true, arg_1.x >= _wgslsmith_f_op_f32(var_0.d.x * arg_1.x), true, any(!vec2<bool>(false, var_0.a))), arg_3);
    let var_2 = -3630i;
    var var_3 = select(arg_3, true, (-1000f == _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, -1304f)))) || (var_0.a && (_wgslsmith_mult_i32(arg_2, 15915i) != ~arg_0)));
    var var_4 = all(var_1.xz);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~19740u;
    let var_1 = u_input.b;
    let var_2 = ~5492u;
    var var_3 = func_6(func_5(func_1(Struct_1(false, vec2<u32>(var_2, u_input.d.x), abs(u_input.d), vec4<f32>(1000f, -237f, -1621f, -145f)), u_input.b.x, Struct_1(u_input.d.x < 18344u, _wgslsmith_sub_vec2_u32(u_input.d.xz, vec2<u32>(15234u, 0u)), u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(241f, 1327f, 1000f, 717f) - vec4<f32>(763f, 575f, 159f, -1000f))), vec2<i32>(_wgslsmith_add_i32(2698i, var_1.x), -19377i)), Struct_1(!all(vec4<bool>(false, true, true, true)), u_input.d.xz, vec4<u32>(~var_0, max(u_input.d.x, var_0), 1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-426f, -2090f, -507f, -281f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, -944f, -1610f)))))), countOneBits(~u_input.b.x), !(false | (func_1(Struct_1(false, vec2<u32>(var_0, 10816u), vec4<u32>(u_input.a.x, 15698u, u_input.d.x, u_input.a.x), vec4<f32>(-1110f, -2240f, -450f, -490f)), -1215i, Struct_1(true, vec2<u32>(38434u, 9098u), vec4<u32>(3013u, 1u, var_0, var_0), vec4<f32>(435f, -511f, 911f, 1309f)), vec2<i32>(var_1.x, 2147483647i)).a | any(vec4<bool>(false, false, false, true)))));
    let var_4 = ~var_3.b.x;
    var_3 = Struct_1(var_3.a, func_2(var_1.xzy).yz, ~(vec4<u32>(~var_3.b.x, ~14892u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.c.x), u_input.a.wxy), var_3.b.x) ^ vec4<u32>(var_3.b.x << (u_input.d.x % 32u), _wgslsmith_add_u32(u_input.c.x, 1u), 1062u & var_2, min(var_3.b.x, var_2))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1220f, 1997f, var_3.d.x, 621f))))) * var_3.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_3.d)))))));
    var var_5 = Struct_1(false, u_input.c.xx, ~reverseBits(func_6(u_input.b.x & -1i, _wgslsmith_f_op_vec3_f32(-var_3.d.yzy), -u_input.b.x, func_3(Struct_1(false, vec2<u32>(1u, 57299u), u_input.a, vec4<f32>(668f, var_3.d.x, var_3.d.x, -2677f)), Struct_1(true, var_3.c.zx, vec4<u32>(var_4, 0u, var_4, 4294967295u), var_3.d), var_3.c, -1i).x).c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2004f * var_3.d.x)), _wgslsmith_f_op_f32(866f + _wgslsmith_f_op_f32(max(399f, var_3.d.x))), -105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -714f) * _wgslsmith_f_op_f32(sign(var_3.d.x)))) - func_1(Struct_1(func_3(Struct_1(var_3.a, vec2<u32>(var_3.b.x, 34456u), vec4<u32>(var_3.c.x, 68942u, var_2, var_2), var_3.d), Struct_1(var_3.a, u_input.a.zw, var_3.c, var_3.d), vec4<u32>(var_2, 0u, 5834u, 64581u), var_1.x).x, max(u_input.c.yx, vec2<u32>(var_4, 30270u)), ~vec4<u32>(u_input.d.x, var_3.c.x, var_4, var_4), var_3.d), 1i & _wgslsmith_dot_vec2_i32(var_1.xy, vec2<i32>(2147483647i, 1i)), func_6(i32(-1i) * -2147483647i, func_6(var_1.x, vec3<f32>(var_3.d.x, 1030f, var_3.d.x), 15903i, true).d.wyz, u_input.b.x, false), vec2<i32>(-1i) * -var_1.xy).d));
    var var_6 = func_6(~u_input.b.x, _wgslsmith_f_op_vec3_f32(-var_3.d.wxz), _wgslsmith_mult_i32(~0i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1.yx, vec2<i32>(1i, u_input.b.x)), u_input.b.wz), ~2147483647i), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<f32>(var_5.d.x, _wgslsmith_f_op_f32(var_3.d.x * -1902f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_5.d.x)) - _wgslsmith_f_op_f32(var_3.d.x - 246f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f + -768f) - _wgslsmith_div_f32(var_5.d.x, var_3.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.d.x)) + _wgslsmith_f_op_f32(-var_5.d.x))))), vec2<u32>(_wgslsmith_div_u32(1u, var_4), u_input.d.x), 1i, _wgslsmith_f_op_f32(-var_3.d.x));
}

