struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(1239f, 1480f, ~firstLeadingBit(firstTrailingBit(abs(vec3<u32>(1u, 4294967295u, 17046u)))), ~global0.x);
    var var_1 = var_0;
    let var_2 = var_1.b;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1466f))), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-1312f - _wgslsmith_f_op_f32(-var_1.a)))), ~var_1.c >> ((vec3<u32>(18631u, 1u, var_0.c.x & var_1.d) << (vec3<u32>(~0u, global0.x, reverseBits(32693u)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~var_0.d);
    var var_4 = ~(-u_input.a.wwx);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-130f, var_0.b, var_1.b), vec3<f32>(var_0.b, var_3.a, 173f), vec3<bool>(true, false, false)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_1.a, 694f) + vec3<f32>(1823f, -1499f, 1135f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -421f, 1092f) - vec3<f32>(var_3.b, var_0.a, 393f)))))), true));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f)), -726f, 2219f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(935f, -556f) * vec2<f32>(-597f, -1265f)))), vec2<f32>(_wgslsmith_f_op_f32(623f * 1304f), 361f), !(arg_2 <= 4294967295u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_div_f32(1335f, -1851f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1395f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(185f + _wgslsmith_div_f32(1307f, 629f)))), vec3<u32>(select(arg_2, 1u, arg_3.x) & 128513u, ~1u, countOneBits(arg_2)), global0.x));
    global0 = vec3<u32>(~arg_2 >> (_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(4294967295u, var_0.c.c.x, var_0.c.d), _wgslsmith_mult_u32(~4294967295u, max(global0.x, 0u))) % 32u), firstTrailingBit(1u), 17181u);
    var var_1 = Struct_2(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), 197f), var_0.c);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.c.a, 1412f, 913f)) + var_0.a) + _wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x)))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -303f))), _wgslsmith_f_op_f32(var_1.b.x * var_1.c.b), _wgslsmith_add_vec3_u32(var_1.c.c << (reverseBits(vec3<u32>(47762u, 0u, 19301u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(select(var_1.c.c, vec3<u32>(0u, arg_2, 12679u), vec3<bool>(true, arg_3.x, false)), _wgslsmith_div_vec3_u32(vec3<u32>(97948u, 4294967295u, 6483u), vec3<u32>(var_0.c.d, global0.x, 80711u)))), var_1.c.d));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(-528f, -1044f, var_2.c.b)))) - vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1690f - var_0.b.x))), -644f, _wgslsmith_f_op_f32(-var_1.a.x))), var_0.b, Struct_1(_wgslsmith_f_op_f32(-2672f - var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.b), -683f), vec3<u32>(abs(global0.x), ~abs(56403u), _wgslsmith_add_u32(1u, global0.x | var_0.c.c.x)), ~0u));
    return var_2.c.d;
}

fn func_1() -> Struct_1 {
    global0 = abs(~vec3<u32>(~20812u, func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-22204i, -7401i), vec2<i32>(59058i, -24234i)), max(u_input.a.x, -2147483647i), 4294967295u, vec2<bool>(true, true)), min(select(global0.x, 4294967295u, true), _wgslsmith_add_u32(33268u, 26879u))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-351f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-147f)))))), _wgslsmith_f_op_f32(1913f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(397f, 695f)) * _wgslsmith_f_op_f32(f32(-1f) * -926f))))));
    var var_1 = vec3<u32>(global0.x, _wgslsmith_mod_u32(abs(min(global0.x, global0.x)), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global0.x, 4294967295u), global0.x), max(~global0.yz, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 4091u), global0.xx))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(-1391f))))), _wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(abs(1f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, global0.x) >> ((global0.zy << (vec2<u32>(21055u, 49965u) % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.yx), max(global0.x ^ ~1u, _wgslsmith_mod_u32(func_2(4349i, u_input.a.x, global0.x, vec2<bool>(false, true)), min(global0.x, 21893u))), global0.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12792u, global0.x, 4734u) ^ vec3<u32>(var_1.x, global0.x, var_1.x), vec3<u32>(global0.x, 0u, var_1.x) << (vec3<u32>(global0.x, var_1.x, 26108u) % vec3<u32>(32u))), ~(~var_1.x)), func_2(-1i, max(8573i, u_input.b.x), 26604u, !select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1336f, 676f, -2943f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, -503f, -597f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-648f, 238f, 923f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(364f - -128f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(448f, -1181f)), vec2<f32>(-773f, 503f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-554f, -856f)))), Struct_1(-698f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(321f + -1179f)))), abs(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 4294967295u, 4294967295u), vec3<u32>(64143u, global0.x, 0u)), ~vec3<u32>(global0.x, 1u, 4294967295u))), abs(_wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(4294967295u, 16421u)) << (1u % 32u))));
    global0 = var_0.c.c;
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(-1306f, _wgslsmith_f_op_f32(-136f - 555f))), var_0.a.x, -1000f), _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b, var_0.a.x) - var_0.b)))), func_1());
    global0 = var_0.c.c;
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.b, u_input.b), vec4<i32>(2127i, ~18128i, _wgslsmith_add_i32(-2147483647i, -(~u_input.b.x)), ~firstTrailingBit(u_input.b.x) << (_wgslsmith_add_u32(_wgslsmith_div_u32(var_1.c.d, var_1.c.c.x), func_2(-1i, u_input.a.x, 11753u, vec2<bool>(true, false))) % 32u)));
    let var_3 = var_1.b;
    global0 = var_1.c.c;
    let var_4 = _wgslsmith_mult_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 22263u, 4294967295u, global0.x), vec4<u32>(global0.x, 9973u, global0.x, 68085u)) ^ countOneBits(vec4<u32>(11154u, var_0.c.c.x, 38044u, global0.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32((vec4<u32>(global0.x, var_0.c.c.x, var_0.c.d, 41556u) & vec4<u32>(90294u, 0u, var_0.c.c.x, 16941u)) & ~vec4<u32>(24811u, 40714u, 4294967295u, 4294967295u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.c.c.x, 1u, var_1.c.d), vec4<u32>(var_0.c.d, 15081u, var_1.c.c.x, var_0.c.c.x))), firstTrailingBit(abs(~vec4<u32>(9538u, 37147u, 0u, var_0.c.d))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, global0.x, 4294967295u), vec4<u32>(var_1.c.c.x, 44111u, 37430u, 0u)), vec4<u32>(var_0.c.d, var_1.c.c.x, 8023u, var_1.c.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-793f, _wgslsmith_div_f32(-746f, -655f), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x)))), 1793f), var_3.x, firstTrailingBit(var_0.c.c));
}

