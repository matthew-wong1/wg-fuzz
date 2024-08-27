struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.b;
    let var_1 = arg_0.a.zy;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_0.c, var_1.x), _wgslsmith_div_vec3_f32(arg_0.a, arg_0.a), 4294967295u > u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.c, -1536f)))))), Struct_1(24108i), _wgslsmith_f_op_f32(-arg_0.a.x));
    var var_3 = ~(-min(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(14308i, 23568i, arg_0.b.a), u_input.b), var_0.a, 2147483647i), vec4<i32>(arg_0.b.a, -arg_0.b.a, abs(2147483647i), abs(u_input.b.x))));
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1383f, var_1.x))))), -160f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, arg_0.a.x, false)), _wgslsmith_f_op_f32(var_1.x - var_1.x))))));
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = 579f;
    var var_1 = select(!select(!vec4<bool>(true, arg_0.x, false, false), arg_0, vec4<bool>(func_3(Struct_2(vec3<f32>(arg_1, arg_1, var_0), Struct_1(u_input.b.x), -187f)), true, arg_0.x, true && arg_0.x)), !(!arg_0), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_1, 1488f, true)), _wgslsmith_f_op_f32(sign(-1369f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, var_0) - vec2<f32>(var_0, 915f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(107f, 485f)))));
    var_1 = arg_0;
    let var_3 = u_input.b.zz;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2)), select(var_1.zx, vec2<bool>(arg_1 >= var_0, u_input.a.x >= u_input.a.x), !vec2<bool>(arg_0.x, false)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))))), -153f));
}

fn func_1() -> vec4<i32> {
    var var_0 = vec2<f32>(139f, _wgslsmith_f_op_f32(abs(-405f)));
    var_0 = _wgslsmith_f_op_vec2_f32(func_2(select(!vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), u_input.a.x == u_input.a.x), vec4<bool>(false, true, false, false), vec4<bool>(true, select(true, any(vec2<bool>(false, true)), true), true, true)), var_0.x, u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_div_u32(0u, u_input.a.x), 1u) >> (~(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) ^ vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u)), min(~(vec4<u32>(64997u, u_input.a.x, u_input.a.x, 0u) & vec4<u32>(34434u, u_input.a.x, 7341u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1917u, 4294967295u, u_input.a.x, 4294967295u), ~vec4<u32>(1u, u_input.a.x, 10910u, u_input.a.x))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))), Struct_1(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), 552f, vec3<i32>(u_input.b.x, u_input.b.x, -35107i) << (abs(vec3<u32>(86678u, 1u, u_input.a.x)) % vec3<u32>(32u)), ~reverseBits(vec4<u32>(0u, 38499u, u_input.a.x, 34183u)))).x));
    let var_2 = Struct_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(var_0.x + -555f), 1f), Struct_1(_wgslsmith_mult_i32(0i, firstTrailingBit(2147483647i))), _wgslsmith_div_f32(1090f, var_1.a.x));
    var var_3 = Struct_1(-29268i);
    return -(~(~max(countOneBits(vec4<i32>(1i, var_2.b.a, u_input.b.x, -1i)), firstTrailingBit(vec4<i32>(u_input.b.x, -1814i, var_1.b.a, -1i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(u_input.a.x, 4537u);
    var var_1 = (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), ~_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(var_0, 33047u), u_input.a)) < 0u) || (-1i > (abs(~arg_1.b.a) >> (u_input.a.x % 32u)));
    var_1 = !any(vec3<bool>(true, true, true));
    var_1 = abs(var_0) >= u_input.a.x;
    var_1 = !(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)) && all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false))));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(253f * 830f), _wgslsmith_f_op_f32(f32(-1f) * -972f), -951f) * vec3<f32>(-1853f, _wgslsmith_f_op_f32(495f + 356f), _wgslsmith_f_op_f32(select(342f, 1291f, false))))), func_4(func_1(), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, -971f, 430f)), Struct_1(u_input.b.x), _wgslsmith_f_op_f32(min(1096f, _wgslsmith_f_op_f32(262f + 1766f)))), _wgslsmith_f_op_f32(f32(-1f) * -872f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1298f, -662f)) - _wgslsmith_f_op_f32(round(-849f))), vec3<i32>(11684i ^ u_input.b.x, -u_input.b.x, firstTrailingBit(-17533i)), ~(vec4<u32>(0u, 4294967295u, u_input.a.x, 0u) ^ vec4<u32>(42750u, 0u, u_input.a.x, 35952u)))).x * -1299f));
    var var_1 = Struct_1(1i >> (countOneBits(1u) % 32u));
    var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(var_0.b.a, u_input.b.x), var_1.a), var_0.b.a, ~(~var_0.b.a)), u_input.b.x));
    let var_2 = u_input.a;
    var_1 = func_4(~_wgslsmith_mult_vec4_i32(-vec4<i32>(48080i, var_1.a, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, u_input.a.x, var_2.x, 1u) % vec4<u32>(32u)), -(~vec4<i32>(u_input.b.x, var_1.a, -2147483647i, var_0.b.a))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1446f, _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x + -2956f))), Struct_1(1i), var_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_div_f32(var_0.c, -318f), _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, false, true, false), 686f, vec3<i32>(-2147483647i, var_1.a, -1215i), vec4<u32>(1u, 84548u, u_input.a.x, u_input.a.x))).x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, -184f)), _wgslsmith_div_f32(var_0.c, 1255f), var_0.a.x))), Struct_1(-((var_0.b.a | 1i) << (~1u % 32u))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1288f, 4294967295u, max(_wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, -17802i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.a, var_0.b.a, 2147483647i, var_0.b.a), vec4<i32>(79272i, u_input.b.x, var_3.b.a, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, -15961i, -9102i))), func_1()), firstLeadingBit(~(-vec4<i32>(-6180i, 8215i, var_0.b.a, u_input.b.x)))), _wgslsmith_f_op_f32(-522f * 280f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -1249f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, -243f)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, var_0.c)) - var_3.a.yx))) - vec2<f32>(1671f, -264f)));
}

