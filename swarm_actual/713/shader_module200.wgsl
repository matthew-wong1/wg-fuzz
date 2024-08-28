struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-1367f), Struct_1(-1000f), Struct_1(-778f), Struct_1(-186f), Struct_1(-1000f), Struct_1(-861f), Struct_1(-1760f), Struct_1(-729f), Struct_1(151f), Struct_1(-589f), Struct_1(519f), Struct_1(-274f), Struct_1(456f), Struct_1(748f), Struct_1(1031f), Struct_1(1799f));

var<private> global1: u32 = 0u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = select(vec4<bool>(all(vec3<bool>(false, false, true)) == true, false | any(vec3<bool>(true, true, true)), (u_input.a << (reverseBits(0u) % 32u)) >= 47991u, !all(vec3<bool>(true, true, true))), !(!vec4<bool>(true, select(true, true, true), any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false)))), vec4<bool>(true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(3718u, 63730u, u_input.b, u_input.a), vec4<u32>(u_input.b, u_input.b, u_input.b, 19264u)) <= u_input.a, true, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1713f)), _wgslsmith_f_op_f32(step(1f, 1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(sign(-219f)))), _wgslsmith_f_op_f32(abs(-333f))) + vec4<f32>(1572f, 1386f, -1219f, 407f));
    let var_2 = 54411u;
    var var_3 = 2147483647i;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + 213f), _wgslsmith_div_f32(-869f, 784f)), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(274f * _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -416f, var_1.x, -1964f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-764f, var_1.x, -809f, var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -2034f, var_1.x, var_1.x) * vec4<f32>(-355f, var_1.x, var_1.x, -1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1150f)))), -702f, ~36237i > (1i >> (var_2 % 32u)))), 1439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(1018f, -225f)))), _wgslsmith_f_op_f32(floor(var_1.x))));
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    global1 = ~firstTrailingBit(88u);
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 16u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, -913f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-896f)), arg_0)), arg_1.b.e.x) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1155f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(func_3()))))));
    var var_2 = arg_0;
    return arg_1.b.c;
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global1 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(53093u, u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b)), abs(vec3<u32>(1u, u_input.a, 92990u) & (vec3<u32>(0u, u_input.a, u_input.a) & vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    global1 = ~_wgslsmith_mult_u32(1u, u_input.b << (29690u % 32u));
    var var_0 = select(~abs(select(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 1u, 1u), false)), vec3<u32>(22488u, abs(~4294967295u), 1u), u_input.b <= u_input.a);
    let var_1 = func_2(arg_0.a, Struct_3(u_input.b, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-954f, arg_0.a) + vec2<f32>(-894f, 252f))), vec4<bool>(true, true, true, true), func_2(_wgslsmith_div_f32(657f, arg_0.a), Struct_3(u_input.b, Struct_2(vec2<f32>(arg_0.a, 1000f), vec4<bool>(false, false, true, false), Struct_1(arg_0.a), var_0.xy, vec2<f32>(-796f, 1627f)), vec3<f32>(arg_0.a, 1446f, 1396f), vec2<bool>(false, true))), var_0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(380f, -1000f, -1985f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-968f, 255f, arg_0.a) + vec3<f32>(arg_0.a, arg_0.a, -317f)), true)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_2 = ~var_0.x;
    return _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, reverseBits(_wgslsmith_add_i32(-2147483647i, 0i)), firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -17965i, -1i), vec3<i32>(2147483647i, 63562i, -41476i)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-21848i, -2147483647i, -13972i, -1i) >> (vec4<u32>(u_input.b, var_0.x, 97000u, 75228u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 1i, 15192i) << (vec4<u32>(1u, 1u, var_0.x, var_0.x) % vec4<u32>(32u)), abs(vec4<i32>(-42991i, 0i, 0i, 1i))), vec4<bool>(true, true, true, true)), (vec4<i32>(-1i) * -vec4<i32>(-1i, 30288i, 0i, 59283i)) | firstTrailingBit(~vec4<i32>(2147483647i, -22613i, -5219i, 2147483647i))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~(-_wgslsmith_add_vec4_i32(vec4<i32>(-36533i, -1359i, 0i, -2147483647i), vec4<i32>(-26561i, -30245i, -42136i, 42174i))), ~func_4(func_2(-945f, Struct_3(arg_1.d.x, Struct_2(arg_1.a, vec4<bool>(false, true, false, true), Struct_1(arg_2.e.x), vec2<u32>(0u, u_input.b), arg_1.a), vec3<f32>(arg_0, arg_0, -1393f), vec2<bool>(arg_1.b.x, arg_1.b.x))))), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_add_i32(1i, 1i), ~0i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-50501i, -1i)), vec2<i32>(21312i, -1i)), ~1i), !select(arg_1.b, !vec4<bool>(false, true, arg_1.b.x, true), arg_1.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 378f))))))));
    var var_2 = abs(func_4(Struct_1(arg_2.a.x)).x);
    var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.e);
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = Struct_3(4294967295u, Struct_2(vec2<f32>(arg_0.e.x, arg_0.c.a), select(vec4<bool>(all(arg_0.b), true, true, !arg_0.b.x), select(select(arg_0.b, arg_0.b, false), !arg_0.b, !vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x)), any(arg_0.b.wx)), global0[_wgslsmith_index_u32(4294967295u, 16u)], firstTrailingBit(~(~vec2<u32>(1u, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x))), 146f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, 187f, arg_0.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -349f, arg_0.a.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, -1571f, arg_0.a.x))))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-288f))), func_1(_wgslsmith_f_op_f32(trunc(arg_0.c.a)), Struct_2(arg_0.a, select(arg_0.b, vec4<bool>(false, arg_0.b.x, false, false), true), func_2(-915f, Struct_3(0u, arg_0, vec3<f32>(arg_0.a.x, arg_0.a.x, 694f), arg_0.b.yz)), ~arg_0.d, _wgslsmith_f_op_vec2_f32(ceil(arg_0.a))), arg_0), arg_0).b.xw);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.c, _wgslsmith_f_op_vec3_f32(floor(var_0.c)))))));
    var var_2 = vec4<u32>(0u, _wgslsmith_sub_u32(func_1(_wgslsmith_f_op_f32(round(1126f)), arg_0, var_0.b).d.x, var_0.a) & 58882u, arg_0.d.x, 116723u);
    var var_3 = Struct_1(-272f);
    global1 = 26434u;
    return -vec3<i32>(select(-(32142i >> (var_2.x % 32u)), reverseBits(1i), false), ~min(i32(-1i) * -30542i, 1i), _wgslsmith_clamp_i32(~abs(42699i), 2147483647i, -12479i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(~(vec3<i32>(1i, 6964i >> (u_input.a % 32u), -1287i) ^ vec3<i32>(_wgslsmith_div_i32(26996i, 15919i), 6676i << (u_input.b % 32u), 1i << (u_input.a % 32u))), _wgslsmith_mod_vec3_i32(select(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), ~firstLeadingBit(vec3<i32>(-20213i, -1i, -2147483647i)), false), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(1i, 0i, 2147483647i)), func_5(func_1(-1264f, Struct_2(vec2<f32>(-2375f, -1562f), vec4<bool>(true, true, false, false), Struct_1(-561f), vec2<u32>(4294967295u, 9293u), vec2<f32>(-2575f, -947f)), Struct_2(vec2<f32>(389f, -395f), vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(u_input.a, 16u)], vec2<u32>(4294967295u, 30181u), vec2<f32>(-149f, -776f)))))));
    let var_1 = Struct_3(u_input.b, Struct_2(vec2<f32>(-733f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1008f + -2140f), _wgslsmith_f_op_f32(f32(-1f) * -533f))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, false, true)), func_2(223f, Struct_3(u_input.b, Struct_2(vec2<f32>(1627f, 828f), vec4<bool>(false, true, false, false), Struct_1(-356f), vec2<u32>(u_input.b, u_input.b), vec2<f32>(-668f, -136f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, 626f, -972f)), vec2<bool>(true, true))), vec2<u32>(u_input.b << (u_input.b % 32u), u_input.b) | (~vec2<u32>(u_input.b, 1u) << (vec2<u32>(48150u, 37066u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-797f, 888f), _wgslsmith_f_op_vec2_f32(vec2<f32>(998f, -607f) + vec2<f32>(-185f, -310f)), vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1577f)) * -996f), _wgslsmith_div_f32(-653f, 209f), -447f)), vec2<bool>(true, u_input.b < u_input.a));
    var var_2 = countOneBits(var_0.zz);
    let var_3 = var_2.x;
    global0 = array<Struct_1, 16>();
    var var_4 = Struct_1(419f);
    var_2 = -(-select(var_0.yz, var_0.zy, any(vec4<bool>(false, var_1.d.x, true, var_1.b.b.x))) & var_0.xy);
    var var_5 = 21468i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_div_u32(var_1.a, reverseBits(35294u)), ~31584u, 10925u), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(205f, _wgslsmith_f_op_f32(abs(var_4.a)))))), 659f, 298f, _wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-711f, -1974f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-362f, -668f)), var_1.b.a.x, true))));
}

