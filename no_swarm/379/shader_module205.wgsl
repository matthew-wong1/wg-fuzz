struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 20794i;

var<private> global1: u32 = 4294967295u;

var<private> global2: bool = false;

var<private> global3: array<vec3<bool>, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global3 = array<vec3<bool>, 2>();
    let var_0 = ~(~(-_wgslsmith_mult_i32(reverseBits(u_input.b), -u_input.d)));
    var var_1 = ~(~abs(_wgslsmith_sub_i32(-599i, _wgslsmith_clamp_i32(var_0, 0i, var_0))));
    global1 = 0u >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(60215u, _wgslsmith_mult_u32(~u_input.c, abs(arg_0.x)), countOneBits(arg_1.c)), arg_1.c) % 32u);
    let var_2 = Struct_1(any(vec4<bool>(arg_1.b, !(!arg_1.b), ~arg_1.c >= _wgslsmith_div_u32(arg_0.x, arg_0.x), true)), arg_1.b, ~(arg_0.x & 14434u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, arg_0.x, 1u, 29330u), vec4<u32>(u_input.c, arg_1.c, 1u, 0u), vec4<bool>(false, arg_1.d, true, false)), ~(vec4<u32>(4294967295u, arg_1.c, arg_1.c, 1u) ^ vec4<u32>(4294967295u, 57645u, arg_0.x, 133152u))) < 33495u);
    return 787f;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    global0 = _wgslsmith_add_i32(reverseBits(-7358i | (_wgslsmith_mult_i32(26596i, arg_0) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a, u_input.d, u_input.d), vec4<i32>(-1i, u_input.d, 0i, 54811i)))), reverseBits(1i));
    var var_0 = arg_1;
    global3 = array<vec3<bool>, 2>();
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(true, select(var_0.b, arg_0 < 0i, var_1.x), 1u, any(vec2<bool>(var_1.x, false)));
    return _wgslsmith_f_op_f32(func_3(arg_2.xy, Struct_1(!var_0.d, true, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.c, var_2.c, 1u, 22124u), vec4<u32>(28337u, var_2.c, u_input.c, arg_2.x)), vec4<u32>(0u, 4294967295u, var_0.c, arg_2.x)), arg_0 > ~(u_input.a << (arg_2.x % 32u)))));
}

fn func_4(arg_0: f32) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_i32(0i, u_input.d));
    let var_1 = Struct_1(any(vec4<bool>(true, any(vec3<bool>(false, true, true)), false, all(vec2<bool>(false, true)))) && false, false, reverseBits(reverseBits(~(~u_input.c))), !(arg_0 < _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 131f) * arg_0)));
    let var_2 = u_input.c;
    var var_3 = Struct_1(arg_0 >= -2730f, var_1.d || var_1.d, var_2, false);
    let var_4 = 95681i;
    return -1i;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    let var_0 = ~arg_2;
    global0 = -52854i;
    var var_1 = reverseBits(vec4<i32>(u_input.d, -1i, func_4(_wgslsmith_f_op_f32(func_2(1i, Struct_1(false, false, 1u, true), vec3<u32>(24925u, var_0.x, arg_2.x)))), -1i) ^ abs(vec4<i32>(1i, 1i >> (u_input.c % 32u), -1i, reverseBits(u_input.b))));
    var_1 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, -20138i), select(-10383i, 2147483647i, false), i32(-1i) * -5745i, abs(0i)), vec4<i32>(~var_1.x, select(var_1.x, var_1.x, false), var_1.x, _wgslsmith_div_i32(u_input.b, var_1.x))), ~(~_wgslsmith_add_vec4_i32(vec4<i32>(5127i, var_1.x, var_1.x, -19300i), vec4<i32>(-1i, 2147483647i, -8676i, -44898i))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(arg_3 != arg_0.x, select(false, false, true), any(global3[_wgslsmith_index_u32(67446u, 2u)])))) ^ vec4<i32>(-u_input.b, u_input.b, ~(-142i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 3017u, u_input.c, 13526u), vec4<u32>(9674u, 4294967295u, 19358u, 1u), vec4<u32>(arg_1, 0u, 57501u, 5199u)), countOneBits(vec4<u32>(arg_1, 4294967295u, arg_2.x, arg_2.x))) % 32u), ~countOneBits(1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1455f, _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(max(-508f, -1000f))))), arg_0)), arg_0));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-firstLeadingBit(var_1.x), ~abs(~u_input.b), abs(1i), ~14623i), firstLeadingBit(vec4<i32>(0i, abs(_wgslsmith_add_i32(var_1.x, -2147483647i)), ~reverseBits(var_1.x), 11354i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, any(vec2<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true)))), ~u_input.c, false);
    global2 = any(vec3<bool>(false, any(vec4<bool>(false, !var_0.a, 31477u >= var_0.c, true)), var_0.a));
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(min(-(~vec3<i32>(u_input.b, 2147483647i, -2147483647i)), vec3<i32>(-27027i, u_input.b, u_input.a) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.d, -12682i), vec3<i32>(0i, u_input.a, -2147483647i))), abs(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(-27788i, -1i, u_input.d), var_0.a), vec3<i32>(16387i, u_input.b, u_input.b) ^ vec3<i32>(u_input.b, 2147483647i, u_input.d)))), vec3<i32>(-8063i, -_wgslsmith_mult_i32(-u_input.d, -1i & u_input.b), u_input.a));
    global0 = ~1i;
    let var_2 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(2147483647i), func_1(vec3<f32>(1296f, 156f, 451f), u_input.c, vec3<u32>(var_0.c, 47840u, var_0.c), -407f), _wgslsmith_mult_i32(63678i, var_1.x)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_1.x, var_1.x, u_input.a)), vec3<i32>(var_1.x, u_input.b, 2147483647i) | vec3<i32>(-1i, 0i, 2147483647i))) ^ 18405i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zx, u_input.d, ~var_0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(215f, 1000f, -151f) + vec3<f32>(-783f, 1488f, -1515f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-374f, 1652f, -1134f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 800f, -1702f), vec3<f32>(1015f, -348f, 363f), var_0.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2164f, 248f, 755f) + vec3<f32>(-351f, -1809f, 2080f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1183f, 580f, 523f, 589f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(-208f * 894f), 653f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(440f - -977f), _wgslsmith_f_op_f32(sign(-674f)), -590f, 482f) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, -2284f, -1196f, 1412f)), vec4<f32>(2825f, 559f, 1142f, -735f))))));
}

