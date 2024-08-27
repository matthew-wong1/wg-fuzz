struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(102f, 1000f, 1850f, -941f), vec4<f32>(-1125f, 1640f, 287f, -157f), vec4<bool>(false, true, false, false))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-518f - -1974f), -658f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -540f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f - -797f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-290f + -1171f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1634f, -766f, -1740f, -110f) + vec4<f32>(-285f, -358f, 126f, -652f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    let var_0 = arg_0.xw;
    let var_1 = Struct_2(-vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.d.x & u_input.c.x, min(28499i, -44148i), i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.d.x, -1i, u_input.d.x), vec4<i32>(51468i, u_input.d.x, -14883i, u_input.a.x)), _wgslsmith_mult_i32(-u_input.c.x, -13266i)), u_input.c.x, vec2<u32>(_wgslsmith_mod_u32(min(arg_1, ~arg_1), _wgslsmith_add_u32(arg_1, ~9552u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(1u, 24128u, arg_1)), firstTrailingBit(vec3<u32>(arg_1, arg_1, 7009u)))), ~29383u, ~(i32(-1i) * -38136i) & _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, ~1i), u_input.c.x));
    var var_2 = Struct_1(-871f, any(!arg_2.yz), ~u_input.a.x);
    var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1975f), false, var_2.c);
    var_2 = Struct_1(var_2.a, !(!select(all(vec4<bool>(false, true, false, arg_2.x)), false, arg_3)), 1i);
    return 4294967295u >> (_wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(~arg_1, var_1.d | 4294967295u)), arg_1) % 32u);
}

fn func_2() -> vec2<u32> {
    let var_0 = -646f;
    var var_1 = -1i;
    var_1 = 2147483647i;
    let var_2 = Struct_4(vec2<bool>(true, -1i <= -min(2147483647i, u_input.b.x)), countOneBits(-u_input.d.x), vec4<u32>(1u, func_4(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(2729u, 55406u, 53739u, 1u)), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true), all(vec4<bool>(false, false, false, false))), countOneBits(_wgslsmith_div_u32(4040u, 15369u) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(24729u, 4294967295u))), ~4294967295u), Struct_1(1000f, false, 1i), countOneBits(abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 35735u), ~0u))));
    let var_3 = firstLeadingBit(var_2.c.yz);
    return ~vec2<u32>(firstTrailingBit(countOneBits(~var_3.x)), 1u >> (0u % 32u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = vec3<u32>(4294967295u, 0u, select(arg_2.x, func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -910f, 531f, -414f) - vec4<f32>(-1390f, arg_3, arg_0.d.a, arg_0.d.a)))), arg_2.x, select(select(vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_0.d.b), vec4<bool>(arg_0.a.x, true, arg_1.b, true)), !vec4<bool>(arg_1.b, arg_0.a.x, arg_1.b, arg_0.d.b), !arg_0.a.x), !(arg_0.c.x != arg_2.x)), any(select(!vec4<bool>(true, true, false, arg_0.d.b), !vec4<bool>(arg_1.b, true, true, arg_0.d.b), select(true, arg_1.b, false)))));
    var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2.x, 1u), arg_0.c.wyx) & _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.e, arg_2.x, arg_0.e), vec3<u32>(var_0.x, arg_0.c.x, 45065u)), (vec3<u32>(48107u, arg_0.c.x, arg_2.x) ^ vec3<u32>(5692u, var_0.x, 4294967295u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_0.c.x), vec3<u32>(arg_0.e, 21632u, arg_2.x)) % vec3<u32>(32u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.x, 0u, arg_0.e, 0u), vec4<u32>(arg_2.x, 1u, arg_2.x, var_0.x), false), vec4<u32>(21049u, 32945u, 42664u, 1u) << (arg_0.c % vec4<u32>(32u))), 0u)), 4294967295u, ~62716u);
    var_0 = ~(~vec3<u32>(52791u, ~arg_2.x, ~arg_2.x) ^ select(~vec3<u32>(var_0.x, arg_2.x, arg_0.c.x), vec3<u32>(countOneBits(4294967295u), 22019u, _wgslsmith_clamp_u32(1u, 8205u, 1u)), _wgslsmith_dot_vec2_u32(arg_0.c.ww, vec2<u32>(arg_0.e, arg_0.c.x)) == max(4294967295u, 26754u)));
    var var_1 = Struct_2(abs(~vec4<i32>(u_input.d.x, _wgslsmith_mult_i32(arg_1.c, 28870i), _wgslsmith_dot_vec4_i32(vec4<i32>(11983i, arg_0.d.c, -34289i, 1i), vec4<i32>(-936i, arg_1.c, arg_0.b, -29656i)), ~u_input.d.x)), ~_wgslsmith_add_i32(arg_0.d.c, arg_1.c), vec2<u32>(~_wgslsmith_sub_u32(func_4(vec4<f32>(-1494f, 111f, arg_0.d.a, arg_1.a), 18913u, vec4<bool>(arg_0.d.b, arg_1.b, arg_0.d.b, arg_0.a.x), arg_0.d.b), _wgslsmith_dot_vec3_u32(arg_0.c.yww, arg_0.c.xzx)), ~_wgslsmith_dot_vec2_u32(arg_0.c.yw, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 43964u), vec2<u32>(arg_0.e, arg_2.x)))), var_0.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.c));
    let var_2 = Struct_2(select(~var_1.a, var_1.a, all(vec3<bool>(arg_0.a.x, true, true)) || arg_0.d.b) & vec4<i32>(countOneBits(_wgslsmith_clamp_i32(u_input.d.x, arg_1.c, arg_0.b)), firstLeadingBit(var_1.a.x) | _wgslsmith_sub_i32(arg_0.b, arg_1.c), countOneBits(arg_0.d.c >> (arg_2.x % 32u)), u_input.b.x), ~(-20400i), ~min(~select(vec2<u32>(1u, 67357u), vec2<u32>(0u, 1u), arg_0.a.x), select(var_1.c, var_1.c, !vec2<bool>(false, arg_0.d.b))), abs(4294967295u & ~arg_2.x), ~_wgslsmith_sub_i32(reverseBits(~43361i), ~1i));
    return Struct_2(-firstTrailingBit(var_2.a), ~(-3055i), select(_wgslsmith_mod_vec2_u32(func_2(), var_1.c), arg_2, _wgslsmith_div_f32(arg_1.a, _wgslsmith_div_f32(arg_1.a, arg_3)) <= _wgslsmith_f_op_f32(-530f - 135f)), ~(var_1.c.x & abs(54417u)), -(~(-3841i)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(Struct_4(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_mult_i32(~15997i, u_input.c.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(33734u, 0u, 26209u, 0u)), ~vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -387f)), true, -8192i), 1u << (_wgslsmith_clamp_u32(1u, 108725u, 1u) % 32u)), Struct_1(1203f, all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, false))), u_input.c.x), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1356u), vec2<u32>(1u, 78402u)), vec2<u32>(1u, 1u), ~vec2<u32>(1u, 4294967295u)) | select(select(vec2<u32>(1u, 42002u), vec2<u32>(0u, 19792u), vec2<bool>(false, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(19796u, 4294967295u), vec2<u32>(0u, 86163u)), true), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(84078u, 0u), ~16374u), select(reverseBits(vec2<u32>(6451u, 40961u)), func_2(), 6798i < u_input.d.x))), 1397f);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, 1100f, -507f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -174f, -1481f), vec3<f32>(-828f, 142f, 266f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -367f), -754f, _wgslsmith_f_op_f32(abs(-473f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1422f, 401f)))), 1f, _wgslsmith_f_op_vec4_f32(func_3()).x), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(true, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), vec3<bool>(false, select(true, true, select(false, true, false)), true), false), var_0.c.x, select(select(vec3<bool>(true, select(true, true, true), true), vec3<bool>(true, true, u_input.b.x >= 2147483647i), any(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(var_0.a.x != -u_input.b.x, true, false)), Struct_1(639f, all(vec2<bool>(all(vec4<bool>(false, false, false, true)), true)), -_wgslsmith_add_i32(-7723i, 20694i)));
    let var_2 = true;
    let var_3 = Struct_1(var_1.a.x, var_1.d.x, -45098i);
    return func_5(Struct_4(var_1.b.xz, var_1.e.c, select(vec4<u32>(countOneBits(48480u), 0u, var_1.c ^ var_0.d, firstTrailingBit(var_0.c.x)), ~vec4<u32>(var_1.c, 35973u, var_0.c.x, 65594u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, 0u, 4294967295u, 48869u), vec4<u32>(var_1.c, 0u, 69702u, 3500u)) % vec4<u32>(32u)), var_3.b | (5952u >= var_0.c.x)), var_3, var_0.d), Struct_1(var_1.e.a, all(select(select(vec4<bool>(var_1.e.b, true, false, var_2), vec4<bool>(false, var_1.d.x, false, false), var_1.d.x), !vec4<bool>(var_2, var_1.d.x, true, var_1.d.x), vec4<bool>(true, var_3.b, var_1.b.x, true))), -8680i), func_5(Struct_4(select(var_1.d.yz, select(vec2<bool>(true, true), var_1.b.zy, var_1.b.yy), select(vec2<bool>(false, true), var_1.d.yy, var_1.d.yx)), 0i, vec4<u32>(var_1.c, var_1.c >> (1u % 32u), var_0.c.x >> (var_0.d % 32u), 1u), Struct_1(-131f, any(var_1.b.zz), var_3.c), min(_wgslsmith_div_u32(var_0.d, var_0.c.x), ~16707u)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -274f))), true, firstLeadingBit(_wgslsmith_add_i32(10805i, 35176i))), min(var_0.c, var_0.c), _wgslsmith_f_op_f32(round(458f))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a)) + _wgslsmith_f_op_f32(-var_1.a.x))) - 1129f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_5(Struct_4(vec2<bool>(!select(true, false, true), select(true, true, any(vec3<bool>(true, true, true)))), func_1().e << (var_0.c.x % 32u), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(var_0.d, var_0.c.x)), ~func_5(Struct_4(vec2<bool>(true, true), u_input.d.x, vec4<u32>(var_0.d, var_0.d, 11342u, var_0.c.x), Struct_1(208f, false, 4582i), var_0.d), Struct_1(887f, true, var_0.a.x), vec2<u32>(var_0.d, 39398u), -834f).c.x, 1u, var_0.d), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f - 1782f) * 1000f), any(vec2<bool>(true, true)), 6275i), ~var_0.c.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1315f, -560f) * 152f)), true, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(42430i, var_0.e, -2147483647i), vec3<i32>(u_input.c.x, -2147483647i, -1i)), var_0.b << (var_0.d % 32u), reverseBits(u_input.c.x))), func_1().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-739f))))));
    let var_1 = ~(var_0.c << (var_0.c % vec2<u32>(32u)));
    var_0 = func_1();
    let var_2 = _wgslsmith_mod_vec2_i32(var_0.a.xw, ~(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.e, u_input.d.x), var_0.a.wz) ^ vec2<i32>(0i, -1i))) ^ (u_input.c & vec2<i32>(select(2147483647i, 1i << (var_1.x % 32u), true), _wgslsmith_dot_vec3_i32(abs(var_0.a.wxy), abs(u_input.d))));
    var var_3 = !all(vec3<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), all(vec3<bool>(false, false, true)) && all(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_1.x, 51364u), 42847u, 0u, 0u), abs(vec4<u32>(var_1.x, 1u, 41808u, 9196u)) << ((vec4<u32>(var_0.c.x, 26834u, 4294967295u, var_0.d) & vec4<u32>(var_0.c.x, var_1.x, 4294967295u, 1u)) % vec4<u32>(32u))) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1198f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-770f - -271f))))));
}

