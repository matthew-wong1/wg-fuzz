struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_mult_i32(min(-u_input.e, 19804i), u_input.e);
    let var_1 = select(vec2<bool>(1u >= _wgslsmith_dot_vec4_u32(~vec4<u32>(28476u, 53205u, 13875u, 1u), min(vec4<u32>(27679u, 4294967295u, 4294967295u, 0u), vec4<u32>(24878u, 31891u, 59411u, 7326u))), !(true || any(vec4<bool>(false, true, true, true)))), select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), true), ~9035u < firstTrailingBit(0u)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), true), true), vec2<bool>(!all(vec3<bool>(true, true, true)), false));
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.c, u_input.b.x, u_input.d.x), vec4<i32>(var_0, 1i, var_0, var_0)), 1i, -1i) >> (vec4<u32>(36492u, ~13171u << (_wgslsmith_div_u32(7278u, 9228u) % 32u), ~(~31055u), firstTrailingBit(0u)) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, ~_wgslsmith_mod_i32(u_input.b.x, -1i), 2147483647i, countOneBits(var_0)), firstTrailingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -3214i, var_0, var_0), vec4<i32>(-2147483647i, 2147483647i, u_input.e, 1i)) | min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, 4026i, 2147483647i), vec4<i32>(var_0, var_0, u_input.c, u_input.a.x)), min(vec4<i32>(-1i, -1i, var_0, u_input.b.x), vec4<i32>(-2341i, -35622i, u_input.b.x, var_0)))));
    let var_3 = Struct_1(abs(firstTrailingBit(min(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(1u, 19372u, 27753u))))), abs(~firstLeadingBit(vec2<u32>(4294967295u, 1u))), u_input.a, vec4<bool>(!(_wgslsmith_f_op_f32(round(-642f)) >= _wgslsmith_f_op_f32(step(1075f, 1562f))), true, var_1.x, (-u_input.b.x ^ _wgslsmith_mod_i32(-1i, 2147483647i)) == -41488i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(520f, -761f, 353f, -367f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(948f, 382f, 1117f, -335f), vec4<f32>(-166f, -1178f, -1560f, 2472f), vec4<bool>(var_1.x, var_1.x, var_1.x, true))))))));
    var var_4 = !(!(!select(!vec2<bool>(var_1.x, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    return var_2;
}

fn func_2() -> vec3<i32> {
    var var_0 = ~(-vec4<i32>(_wgslsmith_add_i32(1i, 35617i), -_wgslsmith_add_i32(u_input.c, u_input.c), u_input.d.x, -4537i));
    var_0 = -vec4<i32>(1i, var_0.x, -u_input.c ^ _wgslsmith_mult_i32(-u_input.c, u_input.b.x), abs(select(_wgslsmith_mult_i32(var_0.x, u_input.e), -4331i, any(vec4<bool>(false, true, true, false)))));
    var_0 = func_3();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) + _wgslsmith_f_op_f32(1000f + -159f))));
    var_0 = vec4<i32>(2147483647i, ~(i32(-1i) * -var_0.x), select(firstLeadingBit(_wgslsmith_add_i32(~u_input.c, u_input.b.x)), ~(-var_0.x << (countOneBits(1u) % 32u)), true), _wgslsmith_div_i32(func_3().x, reverseBits(var_0.x) << (abs(reverseBits(4294967295u)) % 32u)));
    return -(u_input.a >> (_wgslsmith_clamp_vec3_u32(countOneBits(abs(vec3<u32>(11634u, 0u, 1u))), vec3<u32>(1u, 1u, 1u), vec3<u32>(abs(1u), _wgslsmith_mult_u32(4294967295u, 0u), 4294967295u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(func_2(), func_2()), max(reverseBits(~vec3<i32>(var_0.x, 0i, -14728i)) >> (min(~vec3<u32>(0u, 1u, 1u), firstTrailingBit(vec3<u32>(59927u, 1u, 1u))) % vec3<u32>(32u)), ~(abs(u_input.d) | (vec3<i32>(arg_3, 1i, -33484i) << (vec3<u32>(1u, 4294967295u, 12122u) % vec3<u32>(32u))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 597f) + _wgslsmith_f_op_f32(step(-2450f, arg_1))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1102f + arg_2) - _wgslsmith_f_op_f32(1158f - 420f))) + arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(177f, 741f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1011f))), _wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_f32(sign(578f)), _wgslsmith_f_op_f32(trunc(-1321f)), 0i)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1821f, _wgslsmith_f_op_f32(f32(-1f) * -725f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(282f, -720f))), 136f, 1f)));
    var var_1 = var_0.xzy;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, 668f, var_1.x, u_input.b.x))))), -1143f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(871f + var_0.x))))))), -1000f);
    var var_3 = -1408f;
    let var_4 = vec4<f32>(1000f, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1746f + -160f), -2126f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + 343f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), 336f);
    let var_5 = abs(max(~u_input.b.x & (-2147483647i | u_input.a.x), ~reverseBits(50638i)) & reverseBits(u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -914f)) - -577f)))), abs(4294967295u), u_input.a.yx);
}

