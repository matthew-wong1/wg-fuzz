struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<u32>(14538u, 0u)), Struct_1(vec2<u32>(13021u, 45348u)), Struct_1(vec2<u32>(1736u, 1u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(31614u, 17044u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(0u, 56171u)), Struct_1(vec2<u32>(18636u, 24331u)), Struct_1(vec2<u32>(12738u, 1u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(98117u, 51637u)), Struct_1(vec2<u32>(499u, 22122u)), Struct_1(vec2<u32>(4294967295u, 91052u)));

var<private> global2: array<i32, 4> = array<i32, 4>(i32(-2147483648), i32(-2147483648), 15950i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global0 = array<u32, 25>();
    global1 = array<Struct_1, 13>();
    let var_0 = global2[_wgslsmith_index_u32((u_input.b | _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(72701u, global0[_wgslsmith_index_u32(u_input.c, 25u)]), vec2<u32>(u_input.b, 25194u)), 25u)], ~arg_0.a.x)) | arg_0.a.x, 4u)];
    global1 = array<Struct_1, 13>();
    global0 = array<u32, 25>();
    return -253f;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_1(~_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1u, 5836u)), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(40656u, 25u)] >> (74552u % 32u))));
    global0 = array<u32, 25>();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2646f, 557f, 579f, -974f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, 1475f, -288f, -561f), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))))) * vec4<f32>(155f, -218f, -877f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - 1836f)))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_mult_vec2_u32(var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, arg_2.x, -945f, -588f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-624f)))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.a.x, var_0.a.x), 15311u)), reverseBits(u_input.c), _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(1u, ~4294967295u)), _wgslsmith_mod_u32(40756u, u_input.b) << ((~var_2.a.x >> (global0[_wgslsmith_index_u32(4294967295u, 25u)] % 32u)) % 32u)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], var_0.a.x), 44495u, 0u), vec4<u32>(var_2.a.x << (var_0.a.x % 32u), ~u_input.b, ~9905u, 64581u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<f32> {
    global2 = array<i32, 4>();
    var var_0 = Struct_1(~vec2<u32>((arg_0.x | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 25u)], 25u)]) & arg_1.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.c, 25u)], 0u), arg_1.a.x << (global0[_wgslsmith_index_u32(u_input.b, 25u)] % 32u))));
    var var_1 = Struct_1(~(~(func_3(true, arg_2.x, vec3<f32>(1599f, 1091f, 490f)).wx & var_0.a)));
    var var_2 = min(_wgslsmith_div_vec2_i32(reverseBits(-u_input.d.yz), u_input.d.zw), max(u_input.d.wy, ~u_input.d.wy));
    let var_3 = Struct_2(Struct_1(var_1.a), ~select(~abs(u_input.d), -vec4<i32>(6573i, -39877i, 1i, var_2.x) ^ u_input.d, true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-907f, -2017f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(928f, 751f), vec2<f32>(-1271f, 253f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-517f, -2354f), vec2<f32>(-1549f, -1997f), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1129f, 575f) - vec2<f32>(-603f, 1000f))), any(select(arg_2.xy, arg_2.zy, arg_2.zx))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-2088f + 1264f);
    let var_1 = arg_0.a;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(10038u >> (u_input.b % 32u), 85125u), 13u)];
    let var_3 = _wgslsmith_f_op_f32(func_1(var_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1529f, arg_1.x, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -561f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(867f, 960f, arg_1.x, 528f), vec4<f32>(-2341f, arg_1.x, arg_1.x, arg_1.x)))), select(vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(arg_2, arg_2, false, false), true))))) > arg_1.x;
    var var_4 = _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.c | ~arg_0.a.a.x), ~var_1.a.x);
    return var_2.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = func_5(Struct_2(Struct_1(~vec2<u32>(32513u, global0[_wgslsmith_index_u32(1u, 25u)])), -select(~u_input.d, ~u_input.d, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_4(func_3(true, true, vec3<f32>(-810f, -2478f, 1347f)) ^ ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 158818u, 4294967295u, 0u), global1[_wgslsmith_index_u32(select(0u, min(0u, 1u), true), 13u)], select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), select(arg_0, arg_0, arg_0)))))), false);
    var var_1 = _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(0u, 4u)], -51253i);
    var var_2 = abs(vec2<i32>(~(~1i), 2147483647i) ^ abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-16139i, u_input.a), vec2<i32>(-40286i, 1i) | vec2<i32>(arg_1, u_input.a))));
    global2 = array<i32, 4>();
    var var_3 = 0i;
    return Struct_1(vec2<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)] ^ ~u_input.c, u_input.b), _wgslsmith_div_u32(52992u, _wgslsmith_sub_u32(abs(4294967295u), func_5(Struct_2(Struct_1(var_0), vec4<i32>(-1i, var_2.x, 0i, 35875i)), vec2<f32>(411f, -2166f), true).x))));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -193f), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), 329f));
    let var_1 = select(vec4<bool>((true & all(vec4<bool>(false, false, false, true))) & any(vec4<bool>(false, true, true, true)), true, true, any(vec2<bool>(true, true))), !vec4<bool>(any(vec2<bool>(true, false)), true, true, true), true && (any(vec3<bool>(true, true, true)) | all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    global1 = array<Struct_1, 13>();
    global2 = array<i32, 4>();
    var var_2 = !(!var_1.yw);
    return func_2(var_1.xxy, ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-u_input.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(28202i, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 4u)], 16193i), u_input.d, u_input.d)), -_wgslsmith_dot_vec2_i32(u_input.d.yw, u_input.d.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1420f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10019u, 0u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 25u)], 71434u)), 13u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1312f, 219f, -224f, 236f)))))) - -2037f));
    let var_1 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1143f, 1608f))), 1f), func_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), 1u < global0[_wgslsmith_index_u32(37149u, 25u)]), ~(~_wgslsmith_mod_i32(-1i, u_input.a))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, 1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31973u, 0u), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 25u)])), 1u)), 13u)], ~23308u);
    global2 = array<i32, 4>();
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(285f, 1666f)))) * vec2<f32>(_wgslsmith_f_op_f32(select(-1874f, 1136f, true)), -211f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f * 489f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-199f, 152f)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, -1662f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1491f, 1236f) + vec2<f32>(-1514f, 1000f)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))))))));
    global2 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-reverseBits(firstLeadingBit(-1i)), global2[_wgslsmith_index_u32(3296u, 4u)]), firstLeadingBit(~vec4<u32>(var_1.a.x, global0[_wgslsmith_index_u32(var_1.a.x, 25u)], 58670u, u_input.b)) | vec4<u32>(var_1.a.x, var_1.a.x ^ (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)] & global0[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_sub_u32(var_1.a.x, u_input.b) >> (~global0[_wgslsmith_index_u32(51171u, 25u)] % 32u), max(global0[_wgslsmith_index_u32(30996u, 25u)], var_1.a.x)), vec2<i32>(global2[_wgslsmith_index_u32(var_1.a.x, 4u)], _wgslsmith_div_i32(~(-1i << (0u % 32u)), ~_wgslsmith_add_i32(91268i, global2[_wgslsmith_index_u32(1u, 4u)]))), u_input.d.xyw, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x + -421f))), var_2.x)))));
}

