struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = countOneBits(reverseBits(vec4<i32>(~0i, u_input.c, _wgslsmith_sub_i32(-2147483647i, arg_2.c.b.a.x), ~u_input.d.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(abs(arg_2.c.b.c), reverseBits(4294967295u), arg_2.a.c, reverseBits(arg_2.b.b.c)), vec4<u32>(arg_1.x, ~4294967295u, firstTrailingBit(arg_0.x), ~4198u)) % vec4<u32>(32u)));
    let var_1 = 99367u;
    let var_2 = _wgslsmith_mod_u32(select(~max(countOneBits(arg_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(55134u, 28603u, arg_2.b.b.c), vec3<u32>(1u, arg_0.x, 58575u))), abs(25323u), arg_2.c.a.b.x), 4855u);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-655f, 195f, -462f, 2055f))))))), vec4<f32>(-1426f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1228f + -250f)), 158f), _wgslsmith_f_op_f32(sign(-215f))), all(!(!select(arg_2.c.a.b.xy, arg_2.a.b.zx, vec2<bool>(false, arg_2.b.a.b.x))))));
    var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1530f, var_3.x, var_3.x, -1524f) - vec4<f32>(1290f, -1973f, var_3.x, 1732f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-548f, 199f, var_3.x, -1368f), vec4<f32>(var_3.x, -1043f, var_3.x, 1346f), vec4<bool>(arg_2.c.b.b.x, true, true, arg_2.c.a.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, -847f))))))));
    return vec3<bool>(true, !arg_2.b.a.b.x & (any(!arg_2.a.b.zx) | arg_2.c.b.b.x), false);
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-47653i, -1i), select(u_input.d, min(u_input.d, vec2<i32>(u_input.d.x, u_input.c)), vec2<bool>(true, true))), func_3(abs(vec3<u32>(var_0.x, 1u, u_input.a.x)), ~vec4<u32>(var_0.x, var_0.x, 1u, 27511u), Struct_3(Struct_1(vec2<i32>(u_input.d.x, 11306i), vec3<bool>(false, false, false), 4294967295u), Struct_2(Struct_1(vec2<i32>(70103i, 7022i), vec3<bool>(false, false, false), var_0.x), Struct_1(vec2<i32>(2147483647i, -7216i), vec3<bool>(true, true, false), 4294967295u), u_input.b), Struct_2(Struct_1(vec2<i32>(u_input.c, u_input.c), vec3<bool>(true, true, true), u_input.a.x), Struct_1(u_input.d, vec3<bool>(false, true, true), 11424u), 0u)), u_input.d), _wgslsmith_sub_u32(~u_input.a.x, var_0.x >> (_wgslsmith_add_u32(84987u, u_input.a.x) % 32u))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.c) & _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d.x, u_input.c), vec3<i32>(-19541i, u_input.d.x, u_input.c)), i32(-1i) * -16928i)), select(vec3<bool>(true, select(true, false, false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), ~var_0.x), 60472u);
    var_1 = Struct_2(Struct_1(-(_wgslsmith_div_vec2_i32(vec2<i32>(24207i, var_1.a.a.x), vec2<i32>(u_input.c, var_1.b.a.x)) ^ vec2<i32>(0i, var_1.b.a.x)), vec3<bool>(var_1.a.b.x, !var_1.a.b.x, func_3(~u_input.a, ~vec4<u32>(33718u, 0u, var_1.b.c, var_1.b.c), Struct_3(var_1.b, Struct_2(var_1.a, Struct_1(vec2<i32>(-15978i, u_input.c), var_1.a.b, 4405u), 4294967295u), Struct_2(var_1.b, var_1.b, 0u)), vec2<i32>(u_input.d.x, 11293i)).x), _wgslsmith_add_u32(var_0.x, var_1.b.c)), var_1.a, ~(max(~u_input.a.x, ~4294967295u) | var_0.x));
    var_0 = min(vec3<u32>(firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_u32(1836u, u_input.b, 0u))), 0u, ~u_input.b), ~(~(u_input.a | u_input.a)) & vec3<u32>(select(88092u, 68310u, true), 48422u, reverseBits(~43037u)));
    return Struct_4(Struct_1(countOneBits(~(~var_1.b.a)), !var_1.a.b, var_1.c), Struct_1(u_input.d, var_1.b.b, u_input.a.x ^ var_0.x), arg_0.xz);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, -1662f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.x * arg_2.c.x))))));
    let var_1 = arg_2.b;
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_1.a.x, u_input.d.x), u_input.c), vec2<i32>(min(19830i, var_1.a.x), -1i)) | vec2<i32>(-reverseBits(-16133i), arg_0.a.a.x), vec3<bool>(!any(select(vec4<bool>(arg_0.b.b.x, false, var_1.b.x, var_1.b.x), vec4<bool>(false, false, arg_0.a.b.x, arg_0.b.b.x), vec4<bool>(false, var_1.b.x, true, false))), (~20089i <= reverseBits(var_1.a.x)) == arg_0.b.b.x, 4294967295u > ~min(arg_0.a.c, u_input.a.x)), ~0u & (max(~arg_1.a.c, ~arg_2.b.c) & ~(~4294967295u)));
    let var_3 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-10525i, min(~var_2.a.x, -1i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-38802i, 2147483647i, var_2.a.x, 0i)), vec4<i32>(-10430i, 16976i, arg_1.a.a.x, arg_2.b.a.x)))), min(select(min(-vec3<i32>(u_input.c, 15823i, arg_2.a.a.x), select(vec3<i32>(-24336i, u_input.c, u_input.c), vec3<i32>(u_input.c, var_2.a.x, 0i), vec3<bool>(true, arg_1.a.b.x, false))), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_2.a.a.x, -2147483647i), vec3<i32>(arg_0.b.a.x, arg_1.a.a.x, -6468i))), any(func_2(vec3<f32>(-324f, arg_0.c.x, var_0)).b.b)), min(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 1i, var_2.a.x) ^ vec3<i32>(arg_2.b.a.x, 2147483647i, 2147483647i), vec3<i32>(u_input.c, arg_0.b.a.x, arg_0.b.a.x)), vec3<i32>(_wgslsmith_add_i32(0i, var_1.a.x), _wgslsmith_mod_i32(arg_1.b.a.x, arg_1.b.a.x), _wgslsmith_add_i32(var_1.a.x, -1i)))), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-33870i, 2147483647i, var_1.a.x), vec3<i32>(arg_0.a.a.x, arg_2.b.a.x, 0i)), ~vec3<i32>(u_input.d.x, -1i, var_2.a.x)) | -countOneBits(~vec3<i32>(var_1.a.x, 2147483647i, 1i)));
    var var_4 = ~28649i;
    return Struct_1(vec2<i32>(37755i, ~var_3.x), select(vec3<bool>(true, false, true), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, 516f, arg_0.c.x))).a.b, all(select(!vec4<bool>(var_1.b.x, true, arg_1.a.b.x, arg_1.b.b.x), !vec4<bool>(true, arg_2.a.b.x, false, false), !vec4<bool>(arg_0.a.b.x, false, arg_2.a.b.x, var_2.b.x)))), 11468u);
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_2(func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1102f, 1831f, -187f))))), Struct_4(func_2(vec3<f32>(-1778f, 2992f, 485f)).a, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-449f, -447f, 1791f) + vec3<f32>(-1512f, 169f, -392f))).a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1347f, 861f), vec2<f32>(-1322f, -1203f)))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, 1000f, -1000f)) - vec3<f32>(-275f, 563f, 423f)))), Struct_1(u_input.d, vec3<bool>(all(vec3<bool>(true, true, true)), select(func_3(u_input.a, vec4<u32>(u_input.a.x, u_input.b, 27449u, u_input.b), Struct_3(Struct_1(vec2<i32>(u_input.d.x, u_input.d.x), vec3<bool>(true, true, false), 3108u), Struct_2(Struct_1(vec2<i32>(u_input.d.x, 11850i), vec3<bool>(false, true, false), 36153u), Struct_1(u_input.d, vec3<bool>(false, true, false), 4294967295u), u_input.b), Struct_2(Struct_1(vec2<i32>(1i, u_input.d.x), vec3<bool>(true, true, true), 47959u), Struct_1(u_input.d, vec3<bool>(true, false, false), u_input.a.x), u_input.a.x)), u_input.d).x, true, func_3(vec3<u32>(57923u, 21770u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 31957u, 37723u), Struct_3(Struct_1(vec2<i32>(0i, -2147483647i), vec3<bool>(true, false, false), u_input.a.x), Struct_2(Struct_1(vec2<i32>(-34120i, 14011i), vec3<bool>(false, false, false), u_input.a.x), Struct_1(u_input.d, vec3<bool>(true, false, false), 0u), u_input.b), Struct_2(Struct_1(vec2<i32>(u_input.c, u_input.c), vec3<bool>(false, true, true), u_input.b), Struct_1(u_input.d, vec3<bool>(false, true, false), 0u), u_input.b)), vec2<i32>(1i, u_input.c)).x), true), ~(~firstLeadingBit(u_input.b))), u_input.b);
    let var_1 = ~var_0.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1283f, -2189f, -1363f)) * vec4<f32>(843f, -130f, -742f, 438f))))));
    var var_3 = vec3<i32>(2147483647i, 5836i, _wgslsmith_dot_vec2_i32(vec2<i32>(func_4(func_2(vec3<f32>(var_2.x, 147f, var_2.x)), func_2(vec3<f32>(-2046f, var_2.x, var_2.x)), Struct_4(var_0.b, var_0.a, var_2.yx)).a.x, u_input.c), vec2<i32>(func_4(Struct_4(Struct_1(u_input.d, var_0.b.b, 1u), Struct_1(vec2<i32>(var_0.a.a.x, -2147483647i), var_0.b.b, 1u), vec2<f32>(-782f, -416f)), func_2(vec3<f32>(var_2.x, var_2.x, -1183f)), Struct_4(var_0.a, Struct_1(vec2<i32>(var_0.b.a.x, u_input.d.x), var_0.a.b, 83974u), vec2<f32>(1112f, var_2.x))).a.x, firstTrailingBit(_wgslsmith_add_i32(var_0.a.a.x, var_0.a.a.x)))));
    var var_4 = Struct_2(Struct_1(var_3.xx, !vec3<bool>(var_0.b.b.x & var_0.a.b.x, all(vec4<bool>(true, var_0.a.b.x, var_0.b.b.x, var_0.b.b.x)), var_0.a.b.x), abs(68213u)), var_0.b, var_1 ^ 1u);
    return vec4<i32>(-10028i, ~var_0.a.a.x, firstLeadingBit(func_4(func_2(_wgslsmith_f_op_vec3_f32(select(var_2.wzz, var_2.wxy, true))), Struct_4(var_0.a, func_4(Struct_4(Struct_1(u_input.d, var_4.b.b, var_4.a.c), var_0.b, vec2<f32>(-1030f, 1820f)), Struct_4(Struct_1(vec2<i32>(20027i, -5003i), var_0.a.b, 82256u), Struct_1(vec2<i32>(var_3.x, var_0.a.a.x), var_0.a.b, 1u), vec2<f32>(var_2.x, -854f)), Struct_4(var_0.a, var_4.a, var_2.xx)), var_2.xz), Struct_4(var_4.a, Struct_1(var_0.b.a, vec3<bool>(var_4.a.b.x, false, var_0.b.b.x), var_4.b.c), _wgslsmith_f_op_vec2_f32(round(var_2.zw)))).a.x), -var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = _wgslsmith_dot_vec4_i32(countOneBits(func_1()), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(u_input.c, u_input.c), u_input.d.x, _wgslsmith_mult_i32(-2727i, u_input.c), _wgslsmith_mod_i32(-2147483647i, u_input.c)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, -59686i, -2147483647i), vec4<i32>(u_input.d.x, -36716i, u_input.d.x, -1i), vec4<i32>(-1i, -2147483647i, u_input.d.x, u_input.c)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -1i, -2147483647i, u_input.d.x), vec4<i32>(u_input.c, 16733i, u_input.c, u_input.c)), -vec4<i32>(24976i, -1i, -21662i, 1i), true)), vec4<i32>(-u_input.d.x, -23361i, -28933i, func_4(func_2(vec3<f32>(-166f, 897f, -551f)), func_2(vec3<f32>(-1446f, -302f, 518f)), func_2(vec3<f32>(174f, -914f, -311f))).a.x), abs(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c) ^ (vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, -87963i) | vec4<i32>(u_input.c, u_input.c, 7512i, -2782i)))));
    let var_2 = _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -1i, u_input.d.x, 0i)), vec4<i32>(-45777i, _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.d.x, u_input.c | var_1, 6374i), max(select(vec3<i32>(var_1, u_input.d.x, u_input.d.x), vec3<i32>(-1i, -27708i, u_input.c), true), -vec3<i32>(0i, u_input.d.x, var_1))), 38242i, _wgslsmith_add_i32(1i, -27948i & ~u_input.d.x)));
    var var_3 = firstLeadingBit(firstLeadingBit(~(~(11773u ^ u_input.b))));
    var_0 = ~(~_wgslsmith_div_u32(8418u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1128f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f + 353f) - 828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-176f, -957f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(337f, -227f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(585f * -1107f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1652f, 358f)))))), func_4(Struct_4(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(1156f, -826f, -640f), vec3<f32>(1398f, -600f, -1519f))).b, func_4(Struct_4(Struct_1(var_2.zx, vec3<bool>(true, false, true), 4294967295u), Struct_1(vec2<i32>(u_input.c, u_input.d.x), vec3<bool>(false, false, true), u_input.a.x), vec2<f32>(1004f, -1091f)), Struct_4(Struct_1(var_2.wx, vec3<bool>(true, true, false), u_input.b), Struct_1(var_2.wz, vec3<bool>(true, false, true), 4294967295u), vec2<f32>(-1000f, -1027f)), func_2(vec3<f32>(465f, 183f, -378f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, 377f) + vec2<f32>(-670f, 1129f)))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(742f, -941f, 209f) * vec3<f32>(118f, -708f, -190f)))), func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-967f, 191f, 1000f) - vec3<f32>(-964f, -755f, 2802f)))))).a.x, vec4<i32>(var_1, 46725i, var_1, 0i), -1845f, -u_input.d.x);
}

