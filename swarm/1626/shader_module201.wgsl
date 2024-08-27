struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = arg_0.a.xyy;
    var var_1 = Struct_2(arg_0.a, arg_0.b);
    var var_2 = -45185i;
    var_1 = arg_0;
    let var_3 = arg_0;
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.b.c.x, var_1.b.c.x), ~_wgslsmith_mod_i32(firstLeadingBit(-16007i), arg_0.b.c.x));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    let var_0 = -(_wgslsmith_div_i32(arg_0, func_3(Struct_2(vec4<f32>(381f, -450f, -964f, 152f), Struct_1(u_input.a.x, 257f, vec3<i32>(arg_0, 16583i, arg_0), false)), Struct_3(1609f, -477f), Struct_3(-261f, -680f), true)) << (u_input.b.x % 32u));
    let var_1 = Struct_1(~(~abs(_wgslsmith_sub_u32(55029u, 535u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(197f, -269f)) + _wgslsmith_f_op_f32(f32(-1f) * -272f)))), 130f)), vec3<i32>(max(-reverseBits(var_0), -(~(-1i))), -arg_0, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(arg_0, arg_0)) ^ vec2<i32>(var_0, arg_0), select(min(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(var_0, -53909i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_0), vec2<i32>(arg_0, arg_0), vec2<i32>(-2147483647i, var_0)), vec2<bool>(true, true)))), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, false, false), true))));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-arg_0, ~arg_0, i32(-1i) * -16087i, ~(-2147483647i)), _wgslsmith_clamp_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0, -1i, 2147483647i), vec4<i32>(0i, var_1.c.x, -3344i, var_1.c.x)) >> (vec4<u32>(var_1.a, var_1.a, u_input.b.x, var_1.a) % vec4<u32>(32u))) | ~(vec4<i32>(arg_0, -1i, var_1.c.x, -1i) >> (vec4<u32>(1u, 31501u, 32470u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(~arg_0, arg_0 >> (u_input.b.x % 32u), _wgslsmith_add_i32(-2147483647i, -1i), var_0), _wgslsmith_mod_vec4_i32(min(vec4<i32>(var_1.c.x, 0i, -56581i, 11399i), vec4<i32>(-2147483647i, 33027i, var_1.c.x, var_1.c.x)), vec4<i32>(-63321i, -18522i, var_0, 1i) << (vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b.x) % vec4<u32>(32u)))), (-vec4<i32>(var_0, arg_0, var_0, arg_0) << (vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u))) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_1.a, 4294967295u), vec4<u32>(u_input.b.x, u_input.a.x, var_1.a, 0u)) & abs(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a))) % vec4<u32>(32u))));
    var var_3 = vec4<bool>(var_1.d, ((var_2.x != 44517i) || var_1.d) | any(!select(vec4<bool>(true, var_1.d, var_1.d, true), vec4<bool>(var_1.d, var_1.d, true, false), var_1.d)), any(vec3<bool>(!var_1.d, true, all(select(vec4<bool>(var_1.d, var_1.d, false, true), vec4<bool>(true, false, true, var_1.d), false)))), true);
    let var_4 = var_2;
    return vec2<bool>(!var_1.d, all(!select(!var_3.yyw, vec3<bool>(var_1.d, var_1.d, var_1.d), !var_3.wzy)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = select(arg_2, vec2<bool>(true | !arg_2.x, all(vec3<bool>(!arg_2.x, arg_1.x >= 1155f, arg_2.x))), !(any(arg_2) || !any(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x))));
    var_0 = vec2<bool>(true | var_0.x, all(select(!func_2(-23131i), select(func_2(1i), vec2<bool>(true, true), !arg_2), !(!arg_2.x))));
    var_0 = select(!vec2<bool>(all(vec3<bool>(arg_2.x, true, var_0.x)), func_2(1i).x), arg_2, false);
    var var_1 = vec2<i32>(firstTrailingBit(50223i), max(_wgslsmith_sub_i32(25125i, abs(1i)), -1i)) << (~_wgslsmith_mod_vec2_u32(~(vec2<u32>(22281u, 4294967295u) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), u_input.a) % vec2<u32>(32u));
    var_0 = vec2<bool>(false, true);
    return _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(19966u, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 77243u, u_input.b.x), vec4<u32>(8779u, 1u, u_input.b.x, u_input.a.x))), vec2<u32>(~59379u, 1u), select(reverseBits(vec2<u32>(u_input.a.x, 37304u)), max(vec2<u32>(u_input.b.x, 1u), u_input.a), arg_2)), _wgslsmith_mult_vec2_u32(abs(abs(vec2<u32>(u_input.b.x, u_input.b.x))), ~(u_input.b.xz << (u_input.b.yz % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: i32) -> Struct_5 {
    var var_0 = 4294967295u;
    return Struct_5(!(!arg_1.a), reverseBits(arg_1.b), firstLeadingBit(vec3<u32>(1u, _wgslsmith_add_u32(firstLeadingBit(4361u), 1u), 1u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.d.x))))))), Struct_1(_wgslsmith_sub_u32(arg_0.c.x, abs(arg_1.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b))), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, arg_1.e.c.x), arg_0.e.c), arg_1.e.c.x, ~(i32(-1i) * -1i)), arg_0.e.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(vec4<bool>(!any(vec4<bool>(true, false, false, false)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), ~u_input.b.x <= ~16572u, all(vec4<bool>(false, true, false, true))), func_1(-1246f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1671f, 1163f))))), vec2<bool>(true, true)), vec3<u32>(~abs(u_input.b.x), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(52520u, 1u, u_input.a.x), ~vec3<u32>(u_input.b.x, u_input.a.x, 17828u))), vec2<f32>(_wgslsmith_f_op_f32(select(-551f, _wgslsmith_f_op_f32(-1107f - 1000f), all(vec2<bool>(false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(586f * 768f), -1448f)), Struct_1(~4294967295u & abs(u_input.a.x), _wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(-403f * 339f)), vec3<i32>(1i, 1i, 1i), true)), Struct_5(vec4<bool>(true, true, true, true), vec2<u32>(abs(abs(u_input.a.x)), u_input.a.x), vec3<u32>(~u_input.b.x, u_input.b.x, 0u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f - 1797f) + _wgslsmith_div_f32(846f, -110f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f + 1360f))), Struct_1(reverseBits(27006u), _wgslsmith_f_op_f32(f32(-1f) * -1486f), vec3<i32>(1i, 1i, 1i), all(vec3<bool>(false, false, false)))), u_input.b, countOneBits(-1i) >> (~_wgslsmith_div_u32(u_input.b.x ^ 35318u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, 106125u))) % 32u));
    let var_1 = ~var_0.b.x;
    var_0 = func_4(Struct_5(select(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), var_0.a, !select(var_0.a, var_0.a, vec4<bool>(var_0.e.d, false, var_0.a.x, true))), ~func_4(func_4(Struct_5(vec4<bool>(false, true, var_0.e.d, var_0.a.x), var_0.c.yy, u_input.b, vec2<f32>(-457f, var_0.d.x), var_0.e), Struct_5(vec4<bool>(false, false, var_0.e.d, true), vec2<u32>(var_1, 0u), vec3<u32>(8554u, 29147u, 0u), vec2<f32>(var_0.e.b, -213f), var_0.e), vec3<u32>(16948u, u_input.b.x, 0u), -23795i), func_4(Struct_5(var_0.a, vec2<u32>(var_1, u_input.a.x), var_0.c, var_0.d, Struct_1(33278u, -255f, vec3<i32>(-1i, 21682i, -1i), var_0.a.x)), Struct_5(vec4<bool>(var_0.e.d, var_0.e.d, true, false), vec2<u32>(u_input.b.x, 4294967295u), u_input.b, vec2<f32>(1220f, var_0.e.b), Struct_1(31273u, 310f, vec3<i32>(var_0.e.c.x, var_0.e.c.x, var_0.e.c.x), false)), var_0.c, var_0.e.c.x), ~vec3<u32>(55578u, var_1, 54042u), min(43099i, var_0.e.c.x)).b, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(3936u, 72780u), ~u_input.b.zy), var_1, _wgslsmith_clamp_u32(4294967295u, ~4294967295u, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-344f, -1036f)), var_0.e), func_4(func_4(Struct_5(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.e.d), ~vec2<u32>(92760u, 5125u), var_0.c, var_0.d, var_0.e), func_4(Struct_5(vec4<bool>(false, true, false, var_0.e.d), var_0.b, vec3<u32>(var_1, 52220u, 0u), var_0.d, var_0.e), Struct_5(vec4<bool>(false, var_0.a.x, false, var_0.e.d), var_0.c.xx, u_input.b, var_0.d, var_0.e), vec3<u32>(0u, 598u, u_input.a.x), i32(-1i) * -2147483647i), u_input.b, _wgslsmith_dot_vec3_i32(var_0.e.c, ~var_0.e.c)), func_4(Struct_5(vec4<bool>(var_0.e.d, var_0.a.x, true, true), _wgslsmith_div_vec2_u32(vec2<u32>(var_1, var_1), var_0.c.zz), u_input.b, var_0.d, var_0.e), func_4(func_4(Struct_5(vec4<bool>(var_0.a.x, false, true, false), var_0.b, vec3<u32>(4294967295u, 1u, var_1), var_0.d, Struct_1(4294967295u, var_0.e.b, vec3<i32>(-62871i, 1i, var_0.e.c.x), var_0.a.x)), Struct_5(vec4<bool>(false, var_0.a.x, var_0.a.x, false), u_input.b.xy, var_0.c, vec2<f32>(var_0.e.b, var_0.e.b), Struct_1(1u, -608f, vec3<i32>(-2682i, var_0.e.c.x, -63016i), false)), vec3<u32>(0u, 8287u, 1u), 45149i), func_4(Struct_5(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.e.d), vec2<u32>(var_0.b.x, u_input.b.x), vec3<u32>(7737u, var_1, 11112u), var_0.d, var_0.e), Struct_5(var_0.a, vec2<u32>(1u, var_1), u_input.b, var_0.d, Struct_1(91424u, 1000f, vec3<i32>(0i, 1i, -48111i), true)), vec3<u32>(4294967295u, 4294967295u, var_0.b.x), var_0.e.c.x), var_0.c, ~var_0.e.c.x), vec3<u32>(~u_input.a.x, ~0u, 4294967295u), _wgslsmith_clamp_i32(firstTrailingBit(-17482i), var_0.e.c.x, -1i)), ~u_input.b, -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, -1i), -1i)), abs(max(~firstLeadingBit(u_input.b), u_input.b >> (abs(vec3<u32>(var_1, 22434u, var_0.c.x)) % vec3<u32>(32u)))), 2147483647i);
    var var_2 = var_0.e.b;
    var var_3 = _wgslsmith_f_op_f32(-var_0.e.b);
    let var_4 = var_0.e.c.x;
    var var_5 = 37932i;
    var_5 = -var_0.e.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_5(!select(vec4<bool>(var_0.e.d, var_0.a.x, false, var_0.e.d), var_0.a, var_0.a), (var_0.b >> (vec2<u32>(var_0.e.a, var_0.e.a) % vec2<u32>(32u))) ^ ~vec2<u32>(var_1, 47734u), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, 4294967295u, 63329u), vec3<u32>(var_0.c.x, u_input.a.x, 66704u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.x, var_0.e.b), var_0.d)) + _wgslsmith_div_vec2_f32(vec2<f32>(1335f, -672f), var_0.d)), func_4(Struct_5(var_0.a, vec2<u32>(u_input.b.x, u_input.b.x), vec3<u32>(1u, var_1, 48567u), var_0.d, var_0.e), func_4(Struct_5(vec4<bool>(true, var_0.e.d, var_0.a.x, var_0.e.d), u_input.b.xz, var_0.c, vec2<f32>(-1162f, var_0.e.b), Struct_1(41875u, -423f, vec3<i32>(var_0.e.c.x, var_0.e.c.x, var_0.e.c.x), true)), Struct_5(vec4<bool>(var_0.e.d, var_0.e.d, var_0.e.d, var_0.e.d), var_0.b, vec3<u32>(var_0.b.x, 17201u, var_0.b.x), var_0.d, var_0.e), vec3<u32>(89448u, 1u, 0u), var_0.e.c.x), var_0.c & vec3<u32>(4294967295u, var_0.c.x, u_input.a.x), -2147483647i).e), Struct_5(var_0.a, ~vec2<u32>(8913u, 1u), vec3<u32>(~10655u, ~var_0.b.x, _wgslsmith_mult_u32(u_input.b.x, 12230u)), _wgslsmith_f_op_vec2_f32(var_0.d * var_0.d), func_4(Struct_5(var_0.a, vec2<u32>(78172u, var_0.e.a), u_input.b, var_0.d, Struct_1(u_input.a.x, var_0.e.b, var_0.e.c, var_0.e.d)), Struct_5(vec4<bool>(var_0.e.d, var_0.a.x, false, false), var_0.c.xy, vec3<u32>(var_0.e.a, var_1, 33700u), vec2<f32>(-1328f, -1323f), Struct_1(0u, var_0.d.x, vec3<i32>(var_0.e.c.x, 2147483647i, var_0.e.c.x), var_0.e.d)), vec3<u32>(u_input.a.x, 44981u, 16595u), 17223i).e), ~(~(~var_0.c)), _wgslsmith_sub_i32(~_wgslsmith_add_i32(var_0.e.c.x, 12508i), var_0.e.c.x)).e.a, ~vec4<i32>(-var_0.e.c.x, select(1i, ~1i, select(true, var_0.a.x, var_0.a.x)), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.c.x, 2147483647i), var_0.e.c.yx), -2147483647i), 1u, 17669i << (0u % 32u));
}

