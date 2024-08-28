struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(~u_input.b, -u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 126f, 122f), vec3<f32>(-797f, 1186f, 581f))) * vec3<f32>(413f, -891f, -1835f)))));
    var_0 = Struct_1(max(abs(vec2<u32>(0u, var_0.a.x) ^ vec2<u32>(u_input.d, 4294967295u)), vec2<u32>(102043u, 1u)) ^ ~u_input.b, 2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 174f, -190f) - _wgslsmith_f_op_vec3_f32(floor(var_0.c))) + vec3<f32>(var_0.c.x, var_0.c.x, -896f)) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.c.x, 785f), var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -614f))));
    let var_1 = select(!select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(any(vec4<bool>(false, false, false, false)), true), vec2<bool>(false, true)), vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.c.x, -697f, true)))) > var_0.c.x, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false));
    var var_2 = Struct_1(vec2<u32>(u_input.d & _wgslsmith_dot_vec3_u32(vec3<u32>(20621u, var_0.a.x, var_0.a.x), firstTrailingBit(vec3<u32>(0u, 7155u, var_0.a.x))), 0u), 20214i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(exp2(var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + var_0.c.x), var_0.c.x) + _wgslsmith_f_op_vec3_f32(sign(var_0.c))));
    var_0 = Struct_1(~u_input.b, -_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.b, _wgslsmith_sub_i32(37541i, var_2.b)), 1i), var_0.c);
    return -reverseBits(_wgslsmith_div_i32(~select(-2147483647i, 2147483647i, var_1.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.b, var_2.b), reverseBits(6629i))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, var_1, -888f, -1259f)))) * vec4<f32>(arg_1.c.x, arg_0, 107f, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1152f, 525f, 749f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_1.c.x, arg_1.c.x, 789f) - vec4<f32>(741f, var_1, 1761f, -152f)), vec4<bool>(true, true, true, true))))));
    var var_3 = arg_1.a.x & ~arg_1.a.x;
    var var_4 = ~(~(~min(~u_input.d, u_input.a)));
    return Struct_1(_wgslsmith_add_vec2_u32(countOneBits(arg_1.a), ~vec2<u32>(~1527u, 0u)), arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.zzz))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -2904f, -901f)), vec3<f32>(_wgslsmith_f_op_f32(arg_0 + var_1), _wgslsmith_div_f32(var_2.x, var_1), -920f), vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true)))));
}

fn func_1() -> f32 {
    let var_0 = func_2(198f, Struct_1(u_input.b, _wgslsmith_add_i32(_wgslsmith_div_i32(28127i << (0u % 32u), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -100389i, u_input.c.x, u_input.c.x))), u_input.c.x), vec3<f32>(1f, 1f, 1f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(977f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_3.a, i32(-1i) * -35401i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c + _wgslsmith_div_vec3_f32(vec3<f32>(778f, arg_3.c.x, -442f), arg_3.c))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(3087f * arg_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1283f), _wgslsmith_f_op_f32(arg_2.c.x - -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1175f, arg_3.c.x, -991f))))));
    var_0 = Struct_1(~vec2<u32>(firstLeadingBit(4294967295u) >> (_wgslsmith_mod_u32(u_input.d, arg_3.a.x) % 32u), 45959u), arg_3.b, arg_2.c);
    var var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2.b, 458i, -1i), vec3<i32>(firstLeadingBit(1i), var_0.b, 1i)), u_input.c.yzx >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a) | vec3<u32>(0u, 0u, 10485u), vec3<u32>(arg_3.a.x, 0u, var_0.a.x), min(vec3<u32>(arg_2.a.x, 3014u, 0u), vec3<u32>(1u, var_0.a.x, var_0.a.x))) % vec3<u32>(32u))), vec3<i32>(-(max(var_0.b, arg_2.b) ^ _wgslsmith_mod_i32(arg_2.b, -33291i)), -2147483647i, -2147483647i), -vec3<i32>(-1i, ~_wgslsmith_dot_vec2_i32(u_input.c.zw, u_input.c.yw), u_input.c.x));
    let var_2 = arg_2;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x;
    var var_1 = func_4(vec2<bool>(true, !select(true, true, true) & false), true, Struct_1(~vec2<u32>(_wgslsmith_mult_u32(32957u, 0u), 46635u ^ var_0), firstTrailingBit(u_input.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2178f, 1440f), _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(func_1())))), Struct_1(u_input.b, _wgslsmith_div_i32(select(firstLeadingBit(u_input.c.x), -21066i, true), -26063i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1958f, -773f, -427f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(176f, -1935f, 1590f)))))));
    var_1 = func_4(select(vec2<bool>(!all(vec3<bool>(false, false, false)), true), vec2<bool>(true, true), vec2<bool>(_wgslsmith_div_i32(-27389i, 24803i) >= -var_1.b, _wgslsmith_f_op_f32(abs(525f)) >= var_1.c.x)), true, Struct_1(~(~(~u_input.b)), 16693i, var_1.c), Struct_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 14446u), firstTrailingBit(var_1.a)) >> (var_1.a % vec2<u32>(32u)), ~var_1.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1025f, 650f, 1479f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.x, -282f, 1086f))))))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-686f, var_1.c.x, true)) - var_1.c.x)));
    var var_3 = Struct_1(u_input.b, _wgslsmith_div_i32(var_1.b, u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(var_1.c.x, 2130f, -2423f)) - _wgslsmith_f_op_vec3_f32(var_1.c * var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec4_u32(firstLeadingBit(min(vec4<u32>(0u, 4294967295u, 1u, var_0), vec4<u32>(u_input.a, 53391u, var_1.a.x, 43863u))), ~select(vec4<u32>(4294967295u, 0u, var_0, 30426u), vec4<u32>(1u, 7762u, u_input.d, 0u), vec4<bool>(true, true, true, false)))), func_4(vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)), func_2(var_3.c.x, func_2(_wgslsmith_f_op_f32(1000f * var_3.c.x), func_4(vec2<bool>(true, false), true, Struct_1(u_input.b, var_3.b, vec3<f32>(-122f, var_1.c.x, var_3.c.x)), Struct_1(vec2<u32>(7207u, var_0), u_input.c.x, var_1.c)))), func_4(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(any(vec2<bool>(false, true)), false, true), Struct_1(var_3.a, -8513i << (1u % 32u), var_1.c), Struct_1(vec2<u32>(var_1.a.x, 1u), 30221i ^ u_input.c.x, vec3<f32>(var_1.c.x, var_3.c.x, 161f)))).b, -70527i, _wgslsmith_f_op_f32(f32(-1f) * -1230f), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, 1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), func_4(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)), func_2(-2118f, Struct_1(vec2<u32>(var_3.a.x, u_input.b.x), -2147483647i, var_1.c)), Struct_1(var_3.a, -1i, vec3<f32>(var_1.c.x, var_3.c.x, 293f))).a.x, var_3.a.x, ~func_2(var_3.c.x, Struct_1(var_1.a, var_1.b, vec3<f32>(var_1.c.x, -1578f, -733f))).a.x), (vec4<u32>(var_0, 1u, var_0, 1116u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, var_3.a.x, var_0, 1u), vec4<u32>(33523u, 1u, 3656u, 121891u)) % vec4<u32>(32u))) & ~(vec4<u32>(4294967295u, var_3.a.x, 1890u, var_0) >> (vec4<u32>(1u, var_3.a.x, var_3.a.x, var_3.a.x) % vec4<u32>(32u)))));
}

