struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(1909f, Struct_1(3353u, vec3<i32>(37235i, 2147483647i, -4687i), -31260i), -591f), Struct_2(1092f, Struct_1(4294967295u, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), -28349i), 217f), Struct_2(-440f, Struct_1(41599u, vec3<i32>(2147483647i, 2147483647i, 0i), 10659i), 753f));

var<private> global1: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    global1 = any(select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, false), vec4<bool>(true, !(u_input.c > 1u), select(true, true, u_input.c == u_input.c), false)));
    var var_0 = Struct_4(u_input.c, select(vec4<bool>(false, any(vec2<bool>(true, true)), select(true, true, false), all(vec4<bool>(true, true, true, true))), vec4<bool>(~u_input.c < (u_input.c >> (u_input.c % 32u)), true, false, true), true), all(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(all(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, -2180f)))) * vec2<f32>(_wgslsmith_f_op_f32(select(-1737f, -374f, true)), _wgslsmith_f_op_f32(-767f + 1990f))))), !select(vec4<bool>(true, true, true, u_input.c <= u_input.c), vec4<bool>(any(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, true)), true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_3(Struct_1(u_input.c, u_input.a, u_input.a.x));
    let var_2 = reverseBits(vec2<u32>(~var_1.a.a, u_input.c));
    var_1 = Struct_3(Struct_1(4294967295u, vec3<i32>(reverseBits(abs(u_input.a.x)), -13680i, max(1329i, var_1.a.c)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.a, vec3<i32>(u_input.a.x, -13504i, u_input.b)), firstTrailingBit(-u_input.a))));
    return !vec4<bool>(select(!(-920f <= var_0.d.x), var_0.b.x, false), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + 356f) >= var_0.d.x, (~u_input.c | 2053u) > var_0.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(~(arg_0 | vec3<u32>(arg_3, u_input.c, 4294967295u)), ~(vec3<u32>(arg_3, 3958u, arg_3) | arg_0)), u_input.a, -29018i));
    var var_1 = ~_wgslsmith_add_u32(1u, ~(~u_input.c));
    let var_2 = Struct_3(var_0.a);
    let var_3 = Struct_4(~arg_3, arg_2, (arg_3 != countOneBits(var_0.a.a)) && true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1555f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, 254f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-805f, 482f))), arg_2.xw))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-260f, -179f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(634f, -173f), vec2<f32>(-1000f, 778f)))))), arg_2);
    var var_4 = abs(-(~_wgslsmith_mod_i32(-3195i, ~var_0.a.b.x)));
    return select(!var_3.e, !select(arg_2, var_3.b, !all(arg_2.xz)), true);
}

fn func_2() -> i32 {
    var var_0 = Struct_4(~(~(~u_input.c)), func_4(~(~vec3<u32>(84215u, 10176u, u_input.c) & (vec3<u32>(u_input.c, u_input.c, 0u) & vec3<u32>(27025u, 45923u, u_input.c))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, 0i) << (vec3<u32>(0u, 50415u, u_input.c) % vec3<u32>(32u)), u_input.a), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, false, true), func_3()), vec4<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, true, true)), u_input.c), u_input.a.x > _wgslsmith_dot_vec2_i32(u_input.a.yz, select(vec2<i32>(-2147483647i, u_input.b) << (vec2<u32>(79961u, 1u) % vec2<u32>(32u)), vec2<i32>(8792i, u_input.b), func_4(vec3<u32>(27142u, u_input.c, 24839u), vec3<i32>(0i, u_input.a.x, 2147483647i), vec4<bool>(false, true, false, false), 4294967295u).yx)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(753f, 957f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, 663f)))))), !(!vec4<bool>(false, false, any(vec2<bool>(false, false)), false)));
    let var_1 = vec4<u32>(~firstLeadingBit(u_input.c), 15302u, ~u_input.c, ~(countOneBits(u_input.c) & ~var_0.a)) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(20916u, _wgslsmith_sub_u32(var_0.a, 21090u), _wgslsmith_dot_vec2_u32(vec2<u32>(11800u, var_0.a), vec2<u32>(u_input.c, u_input.c)), ~81722u), vec4<u32>(1u, 4294967295u, 15568u, 39416u) >> (countOneBits(vec4<u32>(1u, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u))), vec4<u32>(u_input.c | 1u, 95142u, var_0.a, u_input.c | ~var_0.a)) % vec4<u32>(32u));
    var var_2 = Struct_4(1u, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f * 374f) * var_0.d.x), all(vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), !(!(1i < u_input.a.x)), var_0.e.x), var_0.e.x, vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(round(1f))), !vec4<bool>(false, func_4(reverseBits(var_1.yxx), u_input.a, !vec4<bool>(var_0.c, var_0.b.x, var_0.c, var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.c, 1u, var_0.a), vec4<u32>(var_0.a, u_input.c, var_0.a, var_0.a))).x, true & all(vec2<bool>(false, false)), func_3().x));
    var var_3 = Struct_4(1u, select(var_2.b, !func_4(~vec3<u32>(var_2.a, var_0.a, 4294967295u), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a.x), u_input.a), var_0.e, 19795u), true), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.x, var_0.d.x), vec2<f32>(1099f, -801f), var_2.c))), var_0.d), vec4<bool>(false, true, var_2.c, select(!(!var_0.e.x), var_2.b.x, var_2.e.x)));
    var var_4 = Struct_4(select(countOneBits(~_wgslsmith_sub_u32(var_3.a, 6773u)), ~abs(_wgslsmith_mult_u32(1u, 10223u)), all(!vec3<bool>(true, var_2.b.x, var_3.c))), vec4<bool>(false, var_3.c, true, true), countOneBits(_wgslsmith_sub_i32(u_input.a.x, 0i)) < firstTrailingBit(u_input.a.x), var_2.d, !var_0.b);
    return 1i;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = true;
    let var_0 = abs(func_2());
    var var_1 = Struct_4(~arg_0.b.a, vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-463f, _wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_div_f32(arg_0.a, arg_0.a))))), vec4<bool>(false, any(func_4(max(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(1u, u_input.c, arg_0.b.a)), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(22904i, -1i, var_0)), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, arg_0.b.a))).yyw), true, select(_wgslsmith_mod_u32(39195u, u_input.c), 4294967295u, all(vec2<bool>(true, false))) == _wgslsmith_mod_u32(~1u, 59172u)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1260f * _wgslsmith_f_op_f32(-arg_0.a))), 1885f, -1628f, _wgslsmith_f_op_f32(655f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(438f, arg_0.c, var_1.b.x && false)) * arg_0.a)));
    let var_3 = !func_4(~vec3<u32>(19706u, max(var_1.a, 4294967295u), arg_0.b.a), abs(abs(min(vec3<i32>(36906i, var_0, 0i), u_input.a))), select(vec4<bool>(var_1.e.x, !var_1.b.x, true, true), var_1.e, vec4<bool>(var_1.b.x, var_1.b.x | true, var_1.b.x | var_1.b.x, true)), ~(~6629u & ~var_1.a)).yz;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-722f - 265f)))) * var_2.x), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a, 15582u, 0u), vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, arg_0.b.a), abs(arg_0.b.a), firstTrailingBit(0u))), ~max(u_input.a, ~arg_0.b.b), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(84061i, 71154i, var_0), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-380f, -483f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1069f, -477f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(676f, -1486f) * vec2<f32>(-1453f, -1000f)))), vec2<f32>(564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f - -1067f))), any(vec3<bool>(true, true, true))))));
    let var_1 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(16010u, 19294u), abs(u_input.c)), _wgslsmith_mod_u32(~min(0u, 0u), 8531u)) >> (~countOneBits(vec2<u32>(u_input.c, u_input.c) & ~vec2<u32>(94316u, u_input.c)) % vec2<u32>(32u));
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b & 0i, ~0i, 3002i), abs(u_input.b << (u_input.c % 32u)) & (-u_input.a.x ^ countOneBits(32097i))), ~(~u_input.b), 2147483647i);
    let var_3 = func_1(global0[_wgslsmith_index_u32(abs(var_1.x) ^ (591u ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.c), ~var_1.x, ~35991u)), 3u)]);
    global1 = select(select(func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 50157u) ^ vec3<u32>(105126u, 51988u, u_input.c), abs(vec3<u32>(1u, 1u, u_input.c))), u_input.a, select(func_3(), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_u32(var_3.b.a, 1u, abs(24978u))).x, !all(func_3().ww), true), true, true);
    var var_4 = Struct_4(~var_3.b.a, !(!select(vec4<bool>(true, true, true, true), func_4(vec3<u32>(var_3.b.a, u_input.c, 71825u), var_3.b.b, vec4<bool>(true, true, false, false), 32858u), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true))), -2147483647i >= (firstLeadingBit(u_input.b) ^ -1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1285f, var_0.x) * var_0), func_3());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

