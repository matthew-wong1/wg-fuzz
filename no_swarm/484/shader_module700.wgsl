struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    global0 = array<i32, 22>();
    return vec3<u32>(0u, arg_0.a, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~arg_0.a, ~75139u, 0u), _wgslsmith_div_u32(~u_input.a.x, u_input.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(0u, arg_3.b);
    var var_1 = vec4<u32>(select((var_0.a << (11494u % 32u)) >> (u_input.a.x % 32u), _wgslsmith_add_u32(u_input.a.x, var_0.a) ^ var_0.a, var_0.b && true), reverseBits(max(6153u, arg_1.x)), ~(~1u), ~(~(~25941u))) ^ ~firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(23110u, 12306u, arg_1.x, arg_3.a), max(vec4<u32>(4294967295u, arg_3.a, 73503u, 36993u), vec4<u32>(1u, var_0.a, 1u, 68476u))));
    var var_2 = arg_3;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-553f, arg_0.x, 150f), vec3<f32>(arg_0.x, arg_0.x, -839f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, 339f, arg_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(124f, -1051f, arg_0.x), vec3<f32>(arg_0.x, -945f, arg_0.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -313f, arg_0.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, 1332f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, 468f))), vec3<bool>(true, false, false))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -359f, 483f) - vec3<f32>(arg_0.x, arg_0.x, 1374f)), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-904f, arg_0.x, _wgslsmith_f_op_f32(floor(-1000f))) * vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(-215f, -273f)), _wgslsmith_f_op_f32(floor(arg_0.x)))), !(!(!vec3<bool>(true, var_0.b, true))))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.x, arg_0.x))), 1766f, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(arg_0.x + var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, var_3.x, arg_0.x) + vec4<f32>(arg_0.x, var_3.x, arg_0.x, var_3.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, 865f, arg_0.x, -435f), vec4<f32>(var_3.x, var_3.x, 896f, 499f))), true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1324f)), _wgslsmith_f_op_f32(arg_0.x * var_3.x), _wgslsmith_f_op_f32(-554f + -2528f), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, -1087f, -724f, -146f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, -3201f, -269f, -962f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1123f, -326f, var_3.x, var_3.x))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 271f, arg_0.x, 332f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1602f, var_3.x, 1306f) - vec4<f32>(var_3.x, arg_0.x, -1000f, arg_0.x)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(-806f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1006f * -604f), -1913f)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(77452u, arg_1.a, arg_3.a), u_input.a), ~func_3(Struct_1(arg_2, arg_1.b), 672f), vec3<u32>(arg_3.a, u_input.a.x, arg_2) << ((u_input.a | u_input.a) % vec3<u32>(32u))), ~(reverseBits(0i) >> (0u % 32u)), Struct_1(u_input.a.x >> (~arg_1.a % 32u), select(true, false, arg_3.b | arg_1.b)))));
    let var_1 = arg_1;
    let var_2 = 0i;
    var var_3 = Struct_1(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), vec3<u32>(arg_3.a, 24161u, 4294967295u))), true);
    let var_4 = var_1;
    return countOneBits(abs(0u));
}

fn func_5(arg_0: u32, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_1(~arg_0, !all(vec4<bool>(arg_0 == u_input.a.x, true, true, select(false, false, false))));
    let var_1 = ~1u;
    global0 = array<i32, 22>();
    var var_2 = Struct_1(1u, true);
    let var_3 = vec4<u32>(0u, ~4294967295u, min(30311u, _wgslsmith_sub_u32(~(~var_0.a), func_3(Struct_1(u_input.a.x, var_0.b), _wgslsmith_f_op_f32(-1028f * 349f)).x)), 4294967295u);
    return ~(~vec3<u32>(var_2.a, ~var_3.x, arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<i32, 22>();
    var var_0 = ~(_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.a), ~min(vec3<u32>(51829u, arg_0.a, arg_0.a), u_input.a)) | ~(~(~u_input.a)));
    var_0 = func_5(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, u_input.a.x, 86518u, 19248u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 83878u, 18147u, 1u), vec4<u32>(47963u, 41163u, var_0.x, var_0.x))), reverseBits(~vec4<u32>(101325u, 5372u, var_0.x, 0u))), _wgslsmith_sub_u32(4874u, 2701u) >> (_wgslsmith_add_u32(func_2(2147483647i >> (var_0.x % 32u), Struct_1(u_input.a.x, true), _wgslsmith_mult_u32(35359u, 1141u), arg_0), 1u) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(select(-1308f, -437f, false))), arg_0.b)), _wgslsmith_f_op_f32(sign(-1374f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1741f, -2380f)) - _wgslsmith_f_op_f32(-2585f - -820f)), _wgslsmith_f_op_f32(f32(-1f) * -134f)), _wgslsmith_f_op_f32(474f * 1f))));
    let var_2 = Struct_1(var_0.x, any(vec2<bool>(any(vec3<bool>(false, true, arg_0.b)), true)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(4294967295u, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(31938u | u_input.a.x, 22u)], -1i) > _wgslsmith_div_i32(_wgslsmith_div_i32(14949i, u_input.d), -1i)), 1i, ~(-(~(~vec3<i32>(43518i, 2147483647i, u_input.b)))));
    var var_1 = !select(select(!(!vec3<bool>(false, var_0.b, true)), select(!vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, false, var_0.b), !vec3<bool>(false, var_0.b, false)), vec3<bool>(var_0.b, false, global0[_wgslsmith_index_u32(var_0.a, 22u)] == -2147483647i)), !vec3<bool>(var_0.b, !var_0.b, var_0.b), any(!(!vec3<bool>(false, var_0.b, true))));
    var_1 = select(!(!vec3<bool>(true, var_1.x && var_1.x, 1u != var_0.a)), vec3<bool>(true, !(!(var_1.x & true)), true), !(true | var_1.x));
    var_1 = vec3<bool>(var_0.b, var_1.x, global0[_wgslsmith_index_u32(~u_input.a.x, 22u)] < 0i);
    var var_2 = func_1(Struct_1(_wgslsmith_mult_u32(1u, 72789u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(713f, 1020f), u_input.a, 1i, Struct_1(var_0.a, var_0.b))).x) != -947f), _wgslsmith_div_i32(-12363i, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, u_input.b, -49313i), vec3<i32>(global0[_wgslsmith_index_u32(12523u, 22u)], global0[_wgslsmith_index_u32(2661u, 22u)], u_input.b) << (u_input.a % vec3<u32>(32u)))), -vec3<i32>(~(-1i), ~global0[_wgslsmith_index_u32(var_0.a, 22u)], 31479i) >> (~firstTrailingBit(select(u_input.a, u_input.a, var_1.x)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(414f, 245f) + vec2<f32>(-217f, 359f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(742f, 736f) - vec2<f32>(-1014f, 1152f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, -2083f)) - vec2<f32>(-314f, -323f))), vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1269f, 305f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1497f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-575f, -464f, -407f, 781f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, 1000f, 2097f, 918f) * vec4<f32>(1000f, 975f, 836f, -430f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 163f, 271f, -910f))))));
}

