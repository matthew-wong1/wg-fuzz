struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<f32, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    return vec3<bool>(!(!arg_0.b.c), _wgslsmith_sub_i32(~10056i, u_input.a.x) > u_input.a.x, any(!select(vec4<bool>(arg_0.b.b.x, true, false, arg_0.b.b.x), !vec4<bool>(true, arg_0.b.c, false, false), vec4<bool>(true, false, false, arg_0.b.c))));
}

fn func_3() -> bool {
    global0 = _wgslsmith_mod_u32(min(countOneBits(~firstTrailingBit(1u)), abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(6300u, 0u), vec2<u32>(4294967295u, 16539u))))), 54283u);
    let var_0 = -u_input.b;
    var var_1 = 770f;
    global0 = _wgslsmith_mult_u32(min(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(23002u, 1u), 1u), 1u), reverseBits(select(~max(47218u, 1u), 22277u, !any(vec2<bool>(false, false)))));
    let var_2 = (max(select(vec3<u32>(60631u, 1u, 26203u), vec3<u32>(25853u, 45401u, 1u), true) ^ ~vec3<u32>(66722u, 61328u, 4294967295u), vec3<u32>(~39143u, _wgslsmith_mod_u32(27763u, 1614u), abs(0u))) ^ (vec3<u32>(_wgslsmith_clamp_u32(26802u, 18574u, 89974u), 4294967295u, ~43171u) >> (abs(vec3<u32>(25025u, 1u, 1u)) % vec3<u32>(32u)))) >> (countOneBits(vec3<u32>(_wgslsmith_mod_u32(~1u, 6383u), abs(firstLeadingBit(43886u)), select(~22909u, select(0u, 0u, false), all(vec2<bool>(true, true))))) % vec3<u32>(32u));
    return false;
}

fn func_1() -> i32 {
    let var_0 = abs(0u) <= firstLeadingBit(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 53091u, 4294967295u), vec3<u32>(1u, 94597u, 4294967295u)), ~58483u));
    global1 = array<f32, 29>();
    var var_1 = Struct_1(~max(abs(select(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 93203u), false)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(41445u, 4294967295u), vec2<u32>(53024u, 16135u))), func_2(Struct_2(2198u, Struct_1(select(vec2<u32>(1u, 1u), vec2<u32>(54150u, 1u), var_0), vec3<bool>(true, true, true), var_0, vec3<f32>(-2097f, global1[_wgslsmith_index_u32(4294967295u, 29u)], -823f), 1u), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(0u), 29u)] - _wgslsmith_div_f32(-112f, global1[_wgslsmith_index_u32(44586u, 29u)])))), func_3(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2832u, 29u)] + global1[_wgslsmith_index_u32(1u, 29u)]))), global1[_wgslsmith_index_u32(~3382u, 29u)], -315f), _wgslsmith_div_u32(min(firstLeadingBit(~0u), ~(~4294967295u)), 41225u));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 29u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2128f - _wgslsmith_f_op_f32(round(-891f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d.x))))), var_1.d.x);
    global1 = array<f32, 29>();
    return _wgslsmith_add_i32(1i, 523i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    global0 = arg_3.x;
    let var_0 = Struct_1(vec2<u32>(countOneBits(select(firstTrailingBit(73567u), arg_3.x >> (1u % 32u), true)), countOneBits(arg_3.x)), select(func_2(Struct_2(arg_3.x, Struct_1(arg_3, vec3<bool>(true, true, false), false, vec3<f32>(global1[_wgslsmith_index_u32(29681u, 29u)], 484f, -200f), arg_3.x), -1840f)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), any(vec2<bool>(true, true))), true), !func_3(), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-844f, -847f, 1118f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(65083u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], -117f), vec3<f32>(-954f, global1[_wgslsmith_index_u32(arg_3.x, 29u)], -419f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 29u)], -484f, global1[_wgslsmith_index_u32(12421u, 29u)])), vec3<bool>(true, true, true)))))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_3.x, abs(arg_3.x)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, arg_3.x, arg_3.x, arg_3.x)), ~vec4<u32>(arg_3.x, 17948u, arg_3.x, 51088u))), firstLeadingBit(4294967295u | arg_3.x) | 22293u));
    global0 = firstLeadingBit(var_0.a.x) | 4294967295u;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1323f))), _wgslsmith_f_op_vec2_f32(var_0.d.zz - vec2<f32>(-750f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)])))));
    let var_2 = ~(arg_2 & _wgslsmith_sub_i32(firstTrailingBit(arg_0.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(23207i, arg_2), arg_2)));
    return Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(~var_0.a, select(var_0.a, vec2<u32>(28928u, arg_3.x), var_0.b.xz)) & vec2<u32>(var_0.a.x, arg_3.x), select(vec3<bool>(true, true, all(vec2<bool>(var_0.b.x, var_0.b.x))), select(vec3<bool>(var_0.c, var_0.b.x, var_0.c), var_0.b, var_0.c), func_2(Struct_2(36705u, Struct_1(vec2<u32>(33987u, 0u), vec3<bool>(var_0.b.x, var_0.c, var_0.b.x), true, var_0.d, var_0.a.x), var_1.x))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-703f, 432f, -1395f) * vec3<f32>(517f, var_1.x, 720f)), var_0.d))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(arg_3.x, arg_3.x)), ~var_0.a, vec2<u32>(23489u, arg_3.x)), arg_3)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_3.x, 1u, var_0.e), vec4<u32>(4294967295u, 1u, var_0.a.x, arg_3.x)) & vec4<u32>(1u, _wgslsmith_mod_u32(var_0.a.x, var_0.e) >> (var_0.e % 32u), 35576u, var_0.e), Struct_2(_wgslsmith_dot_vec2_u32(min(~var_0.a, vec2<u32>(1u, arg_3.x)), arg_3 << (_wgslsmith_mult_vec2_u32(arg_3, vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), Struct_1(arg_3 >> (arg_3 % vec2<u32>(32u)), vec3<bool>(var_0.b.x || var_0.c, true, true), any(vec4<bool>(var_0.c, false, var_0.b.x, false)) & false, vec3<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_0.e, 29u)], -319f)), _wgslsmith_f_op_f32(-var_1.x), 1735f), max(~4294967295u, 1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.a.x, 29u)]))))))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 29>();
    let var_0 = func_4(_wgslsmith_add_vec2_i32(u_input.b.xz, u_input.b.zw), u_input.b.yxx, func_1(), ~vec2<u32>(65474u, ~4294967295u));
    let var_1 = var_0.c.b.d;
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, (u_input.a.x ^ 6842i) & ~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.wyy);
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 29u)] + -388f), global1[_wgslsmith_index_u32(firstLeadingBit(var_3.a), 29u)])));
    let var_5 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(round(var_0.a.d)), min(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u) << (var_5.a % vec2<u32>(32u)), var_5.a), _wgslsmith_sub_vec2_u32(vec2<u32>(2217u, 0u), vec2<u32>(var_5.a.x, _wgslsmith_sub_u32(17481u, var_5.a.x)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-36872i), 0i, 0i, func_1()), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wxw, vec3<i32>(1i, var_2.x, u_input.b.x)), 1i, var_2.x, -25732i)), vec4<i32>(-u_input.a.x, -var_2.x, select(var_2.x, countOneBits(var_2.x), var_3.b.b.x), -var_2.x)));
}

