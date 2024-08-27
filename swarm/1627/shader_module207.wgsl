struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    return arg_0;
}

fn func_2() -> u32 {
    let var_0 = ~(~(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(52973i, 1i), _wgslsmith_add_i32(0i, u_input.a))));
    let var_1 = select(!(!vec2<bool>(true, select(true, false, false))), select(!vec2<bool>(select(true, false, false), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), false), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false), true), func_3(vec2<bool>(true, true), Struct_2(Struct_1(27075u, vec3<f32>(1888f, 1091f, 1203f), true), Struct_1(4294967295u, vec3<f32>(404f, -2326f, -192f), false), Struct_1(5773u, vec3<f32>(-601f, -721f, -1160f), true), 10072u, vec3<bool>(false, true, false)), all(vec2<bool>(false, true))), select(false, false, true) & func_3(vec2<bool>(true, false), Struct_2(Struct_1(1u, vec3<f32>(1220f, -117f, -361f), false), Struct_1(0u, vec3<f32>(-275f, 968f, -1289f), false), Struct_1(36592u, vec3<f32>(500f, 1395f, -1095f), true), 17376u, vec3<bool>(false, false, true)), false).x), func_3(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), Struct_2(Struct_1(0u, vec3<f32>(-1280f, 811f, 267f), true), Struct_1(8479u, vec3<f32>(-347f, -1000f, -573f), true), Struct_1(0u, vec3<f32>(783f, -1833f, 1875f), false), 72205u, select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), any(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = Struct_5(max(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, var_0, -31165i), vec3<i32>(u_input.a, var_0, u_input.a), vec3<i32>(var_0, u_input.a, 1i)) & vec3<i32>(u_input.a, var_0, u_input.a)), firstTrailingBit(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, 2147483647i, -11298i), vec3<i32>(-4397i, u_input.a, 11418i))))), u_input.a, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(1282f - -798f)), _wgslsmith_f_op_f32(f32(-1f) * -1193f), 1769f, _wgslsmith_f_op_f32(f32(-1f) * -1224f))));
    var var_4 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~countOneBits(10824u), ~(~0u), 1u), vec3<u32>(select(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(70001u, 7147u, 12681u, 6297u), vec4<u32>(39516u, 1u, 41594u, 0u)), true), countOneBits(countOneBits(firstTrailingBit(66352u))), ~6522u));
    return var_4.x ^ ~(~(~7481u ^ _wgslsmith_sub_u32(var_4.x, var_4.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(false, _wgslsmith_div_i32(_wgslsmith_div_i32(~u_input.a, ~(i32(-1i) * -16965i)), ~u_input.a << (~1u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(215f, -420f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-700f, 1000f))))), select(vec4<i32>(2147483647i << (func_2() % 32u), ~reverseBits(u_input.a), u_input.a, 0i), min(vec4<i32>(~u_input.a, abs(u_input.a), select(u_input.a, u_input.a, false), _wgslsmith_mod_i32(u_input.a, -2147483647i)), firstLeadingBit(~vec4<i32>(1i, 18083i, u_input.a, 15632i))), false), vec2<u32>(1u, 1u));
    let var_1 = firstLeadingBit(var_0.e.x);
    let var_2 = var_0.d.yyw;
    var var_3 = var_0.a;
    let var_4 = vec3<bool>(_wgslsmith_clamp_i32(-25627i, _wgslsmith_div_i32(31892i, var_2.x) << (abs(42255u) % 32u), _wgslsmith_mod_i32(2147483647i, 32849i << (var_0.e.x % 32u))) != select(2147483647i, _wgslsmith_add_i32(1i, i32(-1i) * -29930i), select(var_0.a, false, var_0.a) || (2147483647i != u_input.a)), true, false);
    return Struct_2(Struct_1(31049u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x) + vec3<f32>(var_0.c.x, 648f, var_0.c.x))))), var_4.x), Struct_1(117642u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, 1456f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x))))), all(!select(vec4<bool>(false, var_4.x, var_4.x, true), vec4<bool>(var_4.x, var_4.x, var_0.a, false), false))), Struct_1(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, 1000f, var_0.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1522f, var_0.c.x, -899f) * vec3<f32>(-2048f, var_0.c.x, var_0.c.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1789f, var_0.c.x, 1008f), vec3<f32>(-1296f, -1034f, 877f)))), true), var_0.e.x, select(vec3<bool>(any(select(vec2<bool>(var_4.x, true), var_4.yz, vec2<bool>(var_0.a, true))), all(var_4), !(var_1 > 26224u)), !select(var_4, vec3<bool>(false, var_0.a, var_0.a), var_4), vec3<bool>(all(vec3<bool>(false, true, false)), !var_4.x, var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a, 83660u), max(vec2<u32>(var_0.c.a, 19421u), vec2<u32>(1u, 1u)))), var_0.d, var_0.c.a, countOneBits(_wgslsmith_mult_u32(func_2(), _wgslsmith_div_u32(var_0.d, 4294967295u)))), var_0.a);
    var var_2 = Struct_5(~vec3<i32>(~5757i, ~u_input.a, reverseBits(~u_input.a)), 4664i, var_0.b.c);
    var_2 = Struct_5(select(var_2.a, var_2.a, true), 14307i, var_0.b.a > var_1.a.x);
    var_2 = Struct_5(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.b, 40459i, ~(-5466i)), ~firstTrailingBit(~vec3<i32>(13181i, var_2.b, u_input.a))), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-9787i, u_input.a, 2147483647i, u_input.a)), vec4<i32>(u_input.a, 2147483647i, 1i, -u_input.a)), var_0.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_0.b.a);
}

