struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 52577u, 0u), vec3<u32>(95620u, 4294967295u, 4294967295u), vec3<u32>(0u, 17659u, 1u), vec3<u32>(21870u, 1u, 1u), vec3<u32>(69946u, 3019u, 10113u), vec3<u32>(10233u, 31242u, 18678u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(4294967295u, !arg_0.yy, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(abs(u_input.c.wxw), ~vec3<i32>(arg_1, arg_1, arg_1)), vec3<i32>(arg_1 | 49521i, _wgslsmith_mod_i32(u_input.b, -60837i), u_input.c.x)), vec3<i32>(arg_1 & 58433i, 1i, arg_1 ^ u_input.c.x) & vec3<i32>(u_input.c.x, firstLeadingBit(arg_1), _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(2147483647i, -27057i)))), _wgslsmith_dot_vec2_u32(select(countOneBits(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(37420u, 3761u))), abs(vec2<u32>(28799u, u_input.a) ^ vec2<u32>(u_input.a, 4294967295u)), arg_0.x), vec2<u32>(0u, _wgslsmith_clamp_u32(u_input.a, reverseBits(u_input.a), ~9923u))));
    var_0 = Struct_1(4294967295u, select(select(!select(var_0.b, arg_0.xz, var_0.b.x), vec2<bool>(true, true), vec2<bool>(false, any(arg_0.zwy))), select(vec2<bool>(!var_0.b.x, arg_0.x), arg_0.yz, all(arg_0.xzw)), arg_0.x), vec3<i32>(_wgslsmith_div_i32(~u_input.c.x, (30817i | var_0.c.x) << (reverseBits(519u) % 32u)), var_0.c.x, -(firstTrailingBit(arg_1) >> (4294967295u % 32u))), 2332u);
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, arg_1, abs(_wgslsmith_add_i32(2147483647i | u_input.c.x, arg_1))), u_input.c.wxy);
    var var_2 = Struct_1(var_0.a, !select(arg_0.wy, !vec2<bool>(arg_0.x, var_0.b.x), select(true, !var_0.b.x, all(vec3<bool>(false, false, arg_0.x)))), vec3<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1, -22151i)), vec2<i32>(arg_1, 39834i)), i32(-1i) * -94486i), var_0.d ^ ((~var_0.d | ~u_input.a) << (_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(var_0.a, 6u)], global0[_wgslsmith_index_u32(var_0.a, 6u)] >> (global0[_wgslsmith_index_u32(4997u, 6u)] % vec3<u32>(32u))) % 32u)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(389f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * 265f), arg_2.x)), !arg_0.zw, arg_2, ~max(28684i, var_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.x, arg_2.x, -182f, arg_2.x))))))));
    return !select(var_2.b, select(vec2<bool>(!arg_0.x, true), select(select(vec2<bool>(var_3.b.x, arg_0.x), var_2.b, arg_0.ww), var_3.b, !arg_0.ww), var_3.b), reverseBits(var_3.d) < var_2.c.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_3 {
    global0 = array<vec3<u32>, 6>();
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-683f, -1060f, arg_2, -2553f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, arg_2, 1139f, -1119f))))))));
    var_0 = _wgslsmith_f_op_f32(trunc(522f));
    var_0 = 180f;
    return Struct_3(Struct_1(~_wgslsmith_clamp_u32(arg_1.x, abs(u_input.a), arg_1.x), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), -vec3<i32>(abs(u_input.b), u_input.c.x | u_input.c.x, u_input.c.x), arg_1.x), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-711f - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.yw, vec2<f32>(arg_0.x, var_1.x), true))), (u_input.b >> (~0u % 32u)) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 65665i), u_input.c.xx), vec4<f32>(-392f, var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(round(1241f)))), _wgslsmith_f_op_f32(-arg_2))), Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, ~4294967295u), min(countOneBits(22582u), arg_1.x)), func_3(vec4<bool>(true, true, true, true), 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(arg_2 + -1710f), -1459f)), u_input.c.wxy, max(u_input.a, ~reverseBits(u_input.a))), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.x * 1007f)))), arg_3, arg_3));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(round(var_0.zy)), ~(~(~(vec4<u32>(4294967295u, 22714u, u_input.a, arg_1.c.a) & vec4<u32>(1u, arg_1.a.a, arg_1.a.d, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_3)))))).a;
    let var_2 = 1i;
    var var_3 = 4294967295u;
    var_3 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.c + vec2<f32>(-989f, 1000f)), _wgslsmith_f_op_vec2_f32(-arg_2.e.xy)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.c.x)), -170f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.xx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, -1128f)))))), select(~abs(min(vec4<u32>(4294967295u, 4294967295u, var_1.a, 7981u), vec4<u32>(1u, var_1.a, 25074u, arg_1.c.d))), max(vec4<u32>(u_input.a, u_input.a, arg_1.a.a, 57694u), ~vec4<u32>(4294967295u, 169471u, u_input.a, 0u)) << (vec4<u32>(var_1.d, abs(22329u), var_1.d, _wgslsmith_clamp_u32(var_1.d, 4294967295u, arg_1.a.a)) % vec4<u32>(32u)), arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(577f, -370f)), arg_1.b.a.x)) * -959f)))).a.d;
    return Struct_1(arg_1.a.d, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.c.x, arg_1.b.e.x), arg_1.b.c)) * _wgslsmith_div_vec2_f32(arg_1.b.a.yy, vec2<f32>(arg_2.e.x, -952f)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.a, 2997u), vec2<u32>(arg_1.a.d, 73851u)), var_1.a), u_input.a, var_1.a >> (5421u % 32u), ~1u), -106f).c.b, vec3<i32>(-1i, -73068i << (min(var_1.a, 40507u) % 32u), _wgslsmith_mult_i32(-11016i, arg_2.d) & ~arg_2.d) << (min(max(abs(vec3<u32>(u_input.a, 11104u, var_1.d)), vec3<u32>(var_1.a, 1u, 6661u)), global0[_wgslsmith_index_u32(var_1.a & ~0u, 6u)]) % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_1.a), ~0u, var_1.d), reverseBits(global0[_wgslsmith_index_u32(7767u, 6u)])));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    let var_0 = Struct_3(func_4(vec4<bool>(true, true, true != any(vec2<bool>(true, false)), true), func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1371f)), _wgslsmith_div_f32(1150f, 308f)), ~(~vec4<u32>(u_input.a, 14868u, 26017u, u_input.a)), 540f), func_2(vec2<f32>(1318f, _wgslsmith_f_op_f32(sign(-1701f))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 0u, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) + _wgslsmith_f_op_f32(trunc(377f)))).b, _wgslsmith_f_op_f32(365f * 641f)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-194f)))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(228f, 1993f) + vec2<f32>(-572f, -815f)), abs(vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1263f)).b.e.x, _wgslsmith_f_op_f32(-112f + -997f)), func_3(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(252f - 437f), -1172f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(-908f, -238f)), -1214f))), _wgslsmith_clamp_i32(~func_2(vec2<f32>(-742f, 1190f), vec4<u32>(u_input.a, u_input.a, u_input.a, 60258u), -312f).a.c.x, u_input.c.x, 45984i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1040f), -854f, _wgslsmith_f_op_f32(select(731f, -940f, true)), -2092f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, 1307f, -718f, -1000f)))), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1019f, 968f)))), vec2<f32>(1f, 1f))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u), vec4<u32>(4294967295u, u_input.a, 0u, u_input.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1178f)) * 1000f)))).c, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1951f, 487f), _wgslsmith_f_op_f32(floor(-670f)))), vec4<u32>(func_4(vec4<bool>(true, true, true, true), Struct_3(Struct_1(u_input.a, vec2<bool>(false, true), vec3<i32>(u_input.c.x, 336i, u_input.b), 3170u), Struct_2(vec3<f32>(-1923f, 2087f, -480f), vec2<bool>(true, false), vec2<f32>(-1127f, -288f), 20938i, vec4<f32>(-488f, -1790f, 2339f, 713f)), Struct_1(u_input.a, vec2<bool>(false, false), u_input.c.yzz, u_input.a), false), Struct_2(vec3<f32>(-2167f, 318f, -253f), vec2<bool>(false, false), vec2<f32>(227f, -1476f), u_input.b, vec4<f32>(1102f, 473f, 817f, 311f)), 1199f).a, u_input.a, 19871u, _wgslsmith_div_u32(0u, u_input.a) ^ _wgslsmith_div_u32(1u, u_input.a)), _wgslsmith_f_op_f32(313f + _wgslsmith_f_op_f32(f32(-1f) * -1627f))).a.b.x);
    let var_1 = (min(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, var_0.b.d), vec3<i32>(u_input.c.x, u_input.b, 14177i)), countOneBits(-58359i)) | u_input.c.x) >> (4294967295u % 32u);
    var var_2 = var_0;
    return Struct_1(firstLeadingBit(1u) | ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(67871u, 1u)) >> (_wgslsmith_mod_u32(0u, u_input.a) % 32u)), var_0.c.b, vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1, -2147483647i), vec3<i32>(var_0.a.c.x, var_0.a.c.x, 43192i))), 2147483647i, var_2.c.c.x), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -963f;
    global0 = array<vec3<u32>, 6>();
    let var_1 = Struct_3(func_1(), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, 1939f, var_0)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-342f, var_0, var_0)))))), func_1().b, vec2<f32>(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(243f, 366f), vec2<f32>(-1000f, 584f), false)), vec4<u32>(u_input.a, u_input.a, 21985u, 0u), _wgslsmith_f_op_f32(floor(var_0))).b.e.x, var_0), u_input.c.x, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -839f) * vec2<f32>(-780f, var_0))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 72545u, 4294967295u, 3202u), vec4<u32>(u_input.a, 0u, 51404u, 4294967295u)), select(vec4<u32>(4294967295u, 12389u, u_input.a, 4294967295u), vec4<u32>(18841u, u_input.a, 74852u, u_input.a), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(ceil(150f))).b.e), func_4(select(vec4<bool>(all(vec3<bool>(true, false, false)), false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, all(vec4<bool>(false, false, false, false)), true)), Struct_3(Struct_1(u_input.a, vec2<bool>(true, true), vec3<i32>(u_input.b, 1i, 0i), 14526u << (u_input.a % 32u)), func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, -1155f))), vec4<u32>(76675u, u_input.a, u_input.a, 92588u), _wgslsmith_f_op_f32(round(var_0))).b, Struct_1(u_input.a, vec2<bool>(true, false), -u_input.c.yzx, reverseBits(0u)), false), func_2(vec2<f32>(var_0, var_0), vec4<u32>(~u_input.a, 0u, func_1().a, _wgslsmith_mod_u32(u_input.a, u_input.a)), var_0).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(ceil(-1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, var_0)) * 332f))), select(false, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), all(vec3<bool>(true, true, true)) && true));
    var var_2 = abs(min(51450u, ~var_1.c.a));
    let var_3 = countOneBits(vec4<u32>(var_1.c.d, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.a.d, 0u), _wgslsmith_div_u32(var_1.c.a, 4260u)), 52383u), abs(0u), ~firstTrailingBit(var_1.a.a) << (var_1.a.a % 32u)));
    let var_4 = vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(func_2(vec2<f32>(var_1.b.c.x, -706f), vec4<u32>(u_input.a, 0u, var_3.x, var_1.a.d), _wgslsmith_f_op_f32(abs(var_0))).c.c.x, ~firstLeadingBit(u_input.c.x))), countOneBits(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.c >> (var_3 % vec4<u32>(32u)))) & _wgslsmith_add_i32(u_input.b, -u_input.c.x), func_1().c.x, 1i);
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 1u, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_3.x, 0u), vec3<u32>(u_input.a, 1u, var_1.c.a)), vec3<u32>(60767u, var_3.x, 16381u) ^ vec3<u32>(u_input.a, 58925u, u_input.a)), global0[_wgslsmith_index_u32(var_3.x, 6u)]), abs(var_3.xzw)));
}

