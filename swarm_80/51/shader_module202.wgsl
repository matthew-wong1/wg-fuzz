struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> u32 {
    return 1u >> (u_input.b % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2546f);
    var var_1 = ~abs(select(max(vec3<u32>(arg_1.c, u_input.b, arg_2.c), vec3<u32>(u_input.b, arg_1.c, arg_1.c)), max(vec3<u32>(arg_2.c, arg_0.c, arg_0.c), vec3<u32>(arg_1.c, 26580u, 4294967295u)), any(vec3<bool>(arg_2.a, arg_2.a, true)))) ^ ~(~countOneBits(~vec3<u32>(54995u, 0u, 4294967295u)));
    let var_2 = global0[_wgslsmith_index_u32(arg_2.c, 5u)];
    var var_3 = arg_1.a;
    let var_4 = ~firstTrailingBit(vec4<u32>(1u, _wgslsmith_sub_u32(112934u, 1u), ~0u, var_2.c | 22587u));
    return 4294967295u;
}

fn func_2() -> vec4<i32> {
    var var_0 = func_4(Struct_1(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(u_input.b, u_input.b, u_input.b)), ~vec3<u32>(29402u, u_input.b, 1u)) < _wgslsmith_clamp_u32(1u, u_input.c, 1u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1159f)), _wgslsmith_f_op_f32(sign(-1271f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -554f) + -755f)), ~(~func_3(global0[_wgslsmith_index_u32(u_input.b, 5u)], 1159f, vec3<f32>(-955f, 1883f, -720f), vec4<bool>(false, true, false, false))), _wgslsmith_div_i32(~2147483647i, -u_input.a.x) >> ((u_input.b | (u_input.b | 0u)) % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(936f, -715f, -1000f, -803f), vec4<f32>(-326f, 116f, -661f, -676f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-279f, 1109f, 243f, -123f) + vec4<f32>(-441f, 804f, -589f, 262f)))))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(113441u, u_input.c, u_input.b, 86430u), vec4<u32>(1u, u_input.b, 4294967295u, u_input.b), vec4<bool>(true, true, true, true)), select(select(vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.c, 21171u, 13376u, u_input.b), vec4<bool>(false, false, true, true)), ~vec4<u32>(u_input.b, 67863u, u_input.b, u_input.c), true)), 5u)], Struct_1(select(true, true, false), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1390f, 626f, -892f)))), 10326u, firstTrailingBit(i32(-1i) * -14356i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)), _wgslsmith_div_f32(-2919f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-1549f * _wgslsmith_f_op_f32(trunc(1000f))), -511f)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1479f)) * -978f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-318f, -398f, true)) * _wgslsmith_f_op_f32(abs(-552f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1205f * -153f), _wgslsmith_f_op_f32(max(385f, 616f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2241f))))));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b, 5u)];
    var var_2 = Struct_1(all(select(!(!vec4<bool>(var_1.a, var_1.a, false, var_1.a)), !vec4<bool>(true, false, false, var_1.a), var_1.a)), _wgslsmith_f_op_vec3_f32(min(var_1.e.zxy, var_1.b)), var_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, _wgslsmith_dot_vec2_i32(u_input.a.yx, min(u_input.a.xz, vec2<i32>(u_input.a.x, var_1.d))), firstLeadingBit(-45666i), -(~34964i)), max(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, var_1.d), vec4<i32>(var_1.d, -2147483647i, var_1.d, 39144i)) | ~(vec4<i32>(32i, -43067i, 24942i, u_input.a.x) >> (vec4<u32>(var_1.c, var_1.c, 4294967295u, u_input.c) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_1.e, var_1.e))));
    let var_3 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(~countOneBits(-26789i), var_1.d), max(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-5950i, -9470i, var_2.d)), -u_input.a), 1i)), var_1.d);
    return ~(-reverseBits(firstLeadingBit(vec4<i32>(var_3.x, var_1.d, u_input.a.x, var_1.d)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.c, 10836u, 6252u), vec4<u32>(14101u, u_input.b, var_2.c, u_input.c)) % vec4<u32>(32u))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-406f * 1f);
    let var_0 = select(vec3<bool>(true, true, true), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(97713u != u_input.b, true, false), !all(vec3<bool>(true, false, true)))), true);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(740f - -125f), _wgslsmith_f_op_f32(sign(-485f))));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.c << (_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c, func_4(Struct_1(true, vec3<f32>(-455f, -279f, -688f), 24104u, arg_0.x, vec4<f32>(278f, 502f, 200f, -1745f)), Struct_1(true, vec3<f32>(-476f, 909f, -272f), u_input.c, arg_0.x, vec4<f32>(861f, -610f, -721f, -734f)), Struct_1(false, vec3<f32>(-718f, -252f, 1291f), 1u, u_input.a.x, vec4<f32>(254f, -1000f, -1002f, 673f)))) & ~select(u_input.b, 53301u, true), ~(~func_4(Struct_1(var_0.x, vec3<f32>(1000f, -1000f, -1987f), 1u, arg_1.x, vec4<f32>(-514f, 864f, -1654f, -506f)), global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]))) % 32u), 5u)];
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c, ~4294967295u), 5u)];
    return Struct_1(var_2.a, var_1.b, 0u, 2147483647i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(var_1.e)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    var var_0 = func_5(vec4<i32>(_wgslsmith_clamp_i32(~(~u_input.a.x), arg_0.d, 1i), -7465i, ~u_input.a.x, ~(-u_input.a.x) >> (_wgslsmith_div_u32(4294967295u | u_input.c, ~15416u) % 32u)), func_2());
    var_0 = func_5(vec4<i32>(arg_0.d, var_0.d, _wgslsmith_add_i32(-42893i, arg_0.d), 18783i), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_0.d, u_input.a.x, var_0.d)), var_0.d), -49423i, _wgslsmith_sub_i32(var_0.d, i32(-1i) * -2147483647i), var_0.d) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d, _wgslsmith_mod_i32(var_0.d, u_input.a.x), -1i, _wgslsmith_mult_i32(u_input.a.x, 12199i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.d, arg_0.d, -49i, 33732i), vec4<i32>(u_input.a.x, arg_0.d, var_0.d, -8353i))));
    global1 = 933f;
    global0 = array<Struct_1, 5>();
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1861f, 1416f))));
    return _wgslsmith_add_u32(22894u, ~_wgslsmith_div_u32(u_input.b, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f) * -1274f) - -234f), _wgslsmith_f_op_f32(floor(-883f)), false));
    global1 = 993f;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, ~(~1u | u_input.b), ~min(0u, u_input.c)), ~vec3<u32>(u_input.b, ~u_input.b, func_1(global0[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.c, 6475u), vec4<u32>(u_input.b, 1u, u_input.c, 12350u))))), 5u)];
    let var_2 = vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(var_0, var_1.e.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) + var_1.b.x))), -1200f, _wgslsmith_f_op_f32(ceil(var_0)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1620f * _wgslsmith_f_op_f32(var_1.b.x - var_1.e.x)))));
    var var_3 = u_input.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(54427u, var_1.c, var_1.c, u_input.b)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.b, 4294967295u, 1u, 27946u)), vec4<u32>(u_input.c, 37763u, 62414u, 4294967295u) & vec4<u32>(4294967295u, u_input.b, 1u, var_1.c))), ~(~(vec4<u32>(u_input.b, u_input.b, 1u, u_input.c) ^ vec4<u32>(0u, var_1.c, var_1.c, u_input.c)))), 73573u, u_input.c & 0u);
}

