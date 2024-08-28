struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(0u, 78579u, 0u, 27967u));

var<private> global2: array<vec4<u32>, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(Struct_2(~firstTrailingBit(~47019u), abs(max(2147483647i, 2147483647i)) == _wgslsmith_clamp_i32(abs(0i), 1i, 1i & u_input.a), global0[_wgslsmith_index_u32(countOneBits(~0u), 4u)], vec4<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)), _wgslsmith_mult_i32(abs(u_input.a), ~(-1i)), 1i, u_input.a)), any(vec2<bool>(false, all(vec2<bool>(false, true)) && true)), Struct_3(Struct_1(28833u, vec4<f32>(_wgslsmith_f_op_f32(round(-1427f)), _wgslsmith_f_op_f32(ceil(-2152f)), _wgslsmith_f_op_f32(-609f - 1287f), _wgslsmith_div_f32(-930f, -212f)), 15734i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-873f, -588f, -675f), vec3<f32>(919f, 853f, -2661f))))), Struct_1(max(max(~4751u, select(0u, 97341u, true)), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(907f, -1151f, 176f, 508f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1126f, 185f, 1483f, -1234f), vec4<f32>(-272f, -942f, -1000f, 1550f)))) + vec4<f32>(-277f, -1380f, _wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_div_f32(739f, -428f))), -32519i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1586f, 782f, 1172f)))), true || (-2147483647i < _wgslsmith_sub_i32(-1i, u_input.a)));
    global2 = array<vec4<u32>, 12>();
    global1 = array<vec4<u32>, 1>();
    return ~(var_0.d.a | 4294967295u);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: i32) -> Struct_2 {
    var var_0 = all(!select(vec4<bool>(true, select(true, true, arg_1.x), true, select(arg_1.x, arg_1.x, false)), !vec4<bool>(true, false, arg_1.x, arg_1.x), !(!vec4<bool>(true, false, arg_1.x, arg_1.x))));
    var var_1 = arg_0;
    var var_2 = ~_wgslsmith_div_u32(func_3(), select(~(~7009u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), false));
    let var_3 = vec4<i32>(3306i, firstTrailingBit(_wgslsmith_div_i32(~arg_2, _wgslsmith_mod_i32(-51304i, 1i))), arg_2, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, arg_2 ^ u_input.a, 1i)), vec3<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_mod_i32(1i, 39478i)), arg_2, 1i)));
    global2 = array<vec4<u32>, 12>();
    return Struct_2(_wgslsmith_add_u32(1u, 46663u), arg_1.x, global0[_wgslsmith_index_u32(~(firstTrailingBit(1u) << (firstLeadingBit(firstTrailingBit(0u)) % 32u)), 4u)], _wgslsmith_mult_vec4_i32(var_3, vec4<i32>(-7497i, 24669i, ~reverseBits(arg_2), 75534i)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: vec4<i32>) -> vec2<u32> {
    let var_0 = select(-38696i, -14584i, false);
    var var_1 = global0[_wgslsmith_index_u32(arg_0.c.a, 4u)];
    global0 = array<Struct_1, 4>();
    var var_2 = arg_0.c.d.xy;
    global1 = array<vec4<u32>, 1>();
    return vec2<u32>(func_3(), 28859u);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<i32>) -> vec2<u32> {
    return ~abs(func_4(func_2(-431f, arg_0.wwz, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-208f))), Struct_5(arg_2.x ^ -12966i), arg_2));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_5) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(126f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1.c.b.x))))))) * arg_1.c.b.x);
    return select(226i, 17596i, true) & -2147483647i;
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_2(572f, select(vec3<bool>(false, false, arg_3.b), vec3<bool>(arg_3.b, arg_3.b, false), arg_3.b), _wgslsmith_dot_vec2_i32(arg_3.d.wy, vec2<i32>(-92517i, u_input.a))).c.d.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.c.d.yz * arg_3.c.d.zx))) * arg_2)));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(62456u, 4u)]);
    var_1 = Struct_3(func_2(-1158f, vec3<bool>(true, arg_3.b, arg_0.x), 18123i).c);
    var var_2 = arg_0.x;
    var var_3 = func_2(_wgslsmith_f_op_f32(abs(var_1.a.d.x)), select(select(!select(vec3<bool>(true, false, arg_3.b), vec3<bool>(arg_3.b, false, arg_0.x), vec3<bool>(false, arg_0.x, false)), !(!vec3<bool>(arg_0.x, arg_0.x, false)), !vec3<bool>(arg_3.b, arg_0.x, true)), select(vec3<bool>(true, true, arg_3.b != false), !(!vec3<bool>(arg_3.b, false, arg_3.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(arg_0.x, true, arg_3.b)))), select(!select(vec3<bool>(arg_0.x, arg_3.b, arg_3.b), vec3<bool>(false, true, arg_3.b), true), select(!vec3<bool>(false, arg_3.b, arg_0.x), vec3<bool>(false, false, arg_3.b), !vec3<bool>(arg_0.x, false, false)), vec3<bool>(false, false, true))), 2147483647i);
    return _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 55103u) ^ select(vec2<u32>(var_3.c.a, var_3.a), vec2<u32>(5222u, 63088u), arg_0.x), ~reverseBits(vec2<u32>(24819u, var_3.c.a))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.a, 4294967295u), vec2<u32>(var_3.a, var_1.a.a)), vec2<u32>(0u, var_3.a)) | ~(~vec2<u32>(4294967295u, 41899u)), select(select(vec2<u32>(4294967295u, arg_3.c.a), vec2<u32>(4294967295u, var_1.a.a), arg_0.x) | (_wgslsmith_div_vec2_u32(vec2<u32>(39439u, 0u), vec2<u32>(arg_3.a, 29573u)) & vec2<u32>(0u, arg_3.a)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u ^ var_3.c.a, 1u)], global2[_wgslsmith_index_u32(1u | var_3.c.a, 12u)])), select(select(vec2<bool>(arg_0.x, arg_3.b), arg_0, func_2(arg_3.c.d.x, vec3<bool>(false, var_3.b, arg_3.b), 1i).b), !arg_0, vec2<bool>(false, all(vec2<bool>(false, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32((~_wgslsmith_mult_u32(1u, 0u) >> (_wgslsmith_clamp_u32(~15743u, abs(0u), ~0u) % 32u)) ^ ~4294967295u, 4u)]);
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.a.a) & abs(~vec2<u32>(4294967295u, 1u)), ~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(0u, var_0.a.a)), vec2<u32>(var_0.a.a, 0u))) ^ func_6(vec2<bool>(true, !(var_0.a.c > u_input.a)), func_5(firstTrailingBit(vec2<u32>(3051u, var_0.a.a)) << (func_1(vec4<bool>(true, false, false, false), true, vec4<i32>(-63095i, -5925i, 8094i, 0i)) % vec2<u32>(32u)), Struct_2(var_0.a.a, all(vec3<bool>(true, true, true)), var_0.a, vec4<i32>(-31467i, 1117i, var_0.a.c, u_input.a) >> (global1[_wgslsmith_index_u32(4294967295u, 1u)] % vec4<u32>(32u))), Struct_5(~var_0.a.c)), vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(-313f - var_0.a.b.x)), func_2(-561f, !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(404i, -2147483647i, 1i), -u_input.a, u_input.a)));
    let var_2 = vec2<u32>(~(~(~_wgslsmith_add_u32(var_1.x, 1u))), ~var_1.x);
    let var_3 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(func_2(var_0.a.d.x, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), var_0.a.c).c.b.x)))), select(vec3<bool>(false, !all(vec3<bool>(true, false, true)), func_6(vec2<bool>(false, false), 2147483647i, var_0.a.d.zx, Struct_2(var_0.a.a, false, var_0.a, vec4<i32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c))).x < (0u >> (var_1.x % 32u))), vec3<bool>(true, select(true, true, var_0.a.d.x != 762f), false), vec3<bool>(true, true, any(vec3<bool>(true, true, true)))), _wgslsmith_clamp_i32(var_0.a.c, 54342i, -1i >> ((0u | var_2.x) % 32u)) << ((~var_0.a.a ^ (firstLeadingBit(4294967295u) ^ ~var_1.x)) % 32u));
    var var_4 = select(select(vec3<bool>(!any(vec4<bool>(true, false, var_3.b, false)), !(var_0.a.c <= var_0.a.c), true), !(!(!vec3<bool>(var_3.b, false, var_3.b))), var_3.b), !(!vec3<bool>(var_3.b, true, select(var_3.b, var_3.b, var_3.b))), !vec3<bool>(var_3.b, !all(vec2<bool>(var_3.b, var_3.b)), true));
    var_1 = ~var_2 & vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(16555u, var_3.c.a, 52919u), ~var_1.x) >> (~func_4(var_3, var_0.a.b.x, Struct_5(0i), vec4<i32>(u_input.a, 8964i, 2147483647i, var_0.a.c)).x % 32u), ~28124u);
    var var_5 = Struct_1(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(round(var_3.c.b.x)), _wgslsmith_f_op_f32(var_3.c.b.x - 1386f), _wgslsmith_f_op_f32(select(161f, var_0.a.d.x, true))) - var_0.a.b)), u_input.a, _wgslsmith_f_op_vec3_f32(var_3.c.b.ywx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.c.b.yzw * var_0.a.b.zyx)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-320f, var_3.c.b.x), 1u);
}

