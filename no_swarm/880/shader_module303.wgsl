struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(2147483647i, -28631i, -21559i, -1i), vec4<i32>(24569i, 26861i, -8651i, -27846i), vec4<i32>(1i, 2147483647i, 28159i, -1i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -1i, -26542i, 0i), vec4<i32>(-16921i, -71433i, -1i, 2147483647i), vec4<i32>(2147483647i, -1i, 22824i, -1i), vec4<i32>(-1i, 2147483647i, -20813i, 40475i), vec4<i32>(-17644i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 0i, -498i, -32930i), vec4<i32>(2147483647i, i32(-2147483648), -36289i, -38492i), vec4<i32>(4090i, 1i, -12420i, 22017i), vec4<i32>(-16768i, -1i, -20257i, 2147483647i), vec4<i32>(1i, -6117i, -1i, 5415i));

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = true;
    var var_1 = arg_0.x;
    let var_2 = !var_0;
    global1 = arg_1.c;
    return vec2<f32>(526f, arg_1.b.a);
}

fn func_3() -> i32 {
    var var_0 = abs(firstLeadingBit(min(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -25298i, global1.d), vec3<i32>(global1.b, global1.b, global1.c)), vec3<i32>(global1.b, -29771i, 6473i)), vec3<i32>(-1i) * -vec3<i32>(global1.d, 5452i, 2147483647i))));
    global0 = array<vec4<i32>, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, global1.a, global1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(219f, global1.a, 1172f, global1.a) + vec4<f32>(-427f, global1.a, global1.a, -509f))), vec4<f32>(_wgslsmith_div_f32(global1.a, global1.a), _wgslsmith_div_f32(2116f, -418f), -407f, _wgslsmith_f_op_f32(floor(global1.a)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(ceil(-1135f)), _wgslsmith_f_op_f32(-556f - global1.a), -1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(872f, -644f, 549f, 1470f)))))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(1u, abs(4294967295u), _wgslsmith_clamp_u32(4294967295u, 7513u, 1u), 0u), Struct_2(Struct_1(var_1.x, -1i, -1i, -2147483647i), Struct_1(-1140f, global1.d, u_input.a.x, -13098i), Struct_1(var_1.x, var_0.x, var_0.x, global1.d)))).x, ~firstTrailingBit(i32(-1i) * -39194i), -(~_wgslsmith_sub_i32(51944i, 75411i)), ~u_input.a.x), Struct_1(var_1.x, global1.b, -3242i, -2147483647i ^ global1.d), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -360f), var_1.x)), -var_0.x, global1.b, u_input.a.x));
    var var_3 = var_1.xz;
    return var_0.x;
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_div_i32(reverseBits(u_input.a.x), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(-global1.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(exp2(global1.a)))), _wgslsmith_div_i32(-1i, global1.d), _wgslsmith_div_i32(func_3(), -2147483647i), u_input.a.x);
    let var_3 = select(vec4<bool>(true, true, (true || any(vec3<bool>(true, false, true))) & !all(vec3<bool>(true, false, true)), false), !(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false))), vec4<bool>(true, true, true, true), false));
    let var_4 = 1u;
    return ~_wgslsmith_add_vec3_i32(vec3<i32>(min(~(-2147483647i), i32(-1i) * -13570i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_2.b), vec2<i32>(35769i, u_input.a.x)), _wgslsmith_add_i32(-2147483647i, global1.b), var_3.x), firstLeadingBit(_wgslsmith_clamp_i32(5951i, global1.c, var_2.d))), firstLeadingBit(~vec3<i32>(var_2.d, var_2.b, -12533i)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> f32 {
    global1 = Struct_1(915f, global1.c, min(_wgslsmith_sub_i32(_wgslsmith_mod_i32(13889i, u_input.a.x), -global1.b) << (~abs(4533u) % 32u), -_wgslsmith_clamp_i32(arg_2.x, -35853i, u_input.a.x) >> (1u % 32u)), -max(1i, -11838i));
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(141f, -1382f))), u_input.a.x, -1i, 10535i);
    return 890f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 14>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-3319f, 596f), vec2<f32>(-197f, global1.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(4294967295u, 4294967295u, 12951u, 4294967295u), Struct_2(Struct_1(global1.a, 34619i, 36879i, global1.d), Struct_1(global1.a, -2147483647i, -2147483647i, -18099i), Struct_1(854f, u_input.a.x, global1.c, 12367i)))) + vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(4294967295u, 8327u, 0u, 0u), Struct_2(Struct_1(global1.a, global1.c, -1976i, 34435i), Struct_1(global1.a, u_input.a.x, 19266i, 9956i), Struct_1(-744f, global1.b, global1.c, global1.b)))).x))), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(u_input.a, ~max(u_input.a & u_input.a, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(select(global1.a, 785f, !all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) * vec2<f32>(1134f, 973f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-600f, global1.a), vec2<f32>(-294f, -973f))))), vec3<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)), true), func_2()))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(all(vec2<bool>(true, true)), true), true));
    let var_1 = vec3<u32>(~(~firstLeadingBit(~4766u)), 8036u, 1u);
    var var_2 = var_1;
    let var_3 = var_2.x & 4294967295u;
    var var_4 = 732f;
    var_4 = _wgslsmith_div_f32(-718f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-650f, global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * 510f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(abs(min(var_1, var_1) << (~var_1 % vec3<u32>(32u))), ~vec3<u32>(min(0u, var_2.x), ~var_2.x, firstTrailingBit(1u))), _wgslsmith_add_vec4_u32(vec4<u32>(min(0u, 10685u), max(~5044u, _wgslsmith_clamp_u32(var_1.x, var_1.x, var_2.x)), var_3, _wgslsmith_clamp_u32(~var_3, firstTrailingBit(54702u), var_2.x)), firstLeadingBit(reverseBits(firstTrailingBit(vec4<u32>(var_2.x, var_2.x, var_1.x, var_1.x))))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(51361i, u_input.a.x, 18739i), _wgslsmith_sub_vec3_i32((vec3<i32>(global1.c, 1i, var_0.c) >> (var_1 % vec3<u32>(32u))) >> (var_1 % vec3<u32>(32u)), -vec3<i32>(-56486i, u_input.a.x, 33741i))));
}

