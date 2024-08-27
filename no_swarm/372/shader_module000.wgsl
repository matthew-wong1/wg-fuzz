struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-265f, -255f);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(11071u), Struct_2(1u), Struct_2(56912u), Struct_2(2301u), Struct_2(1u), Struct_2(33485u), Struct_2(0u), Struct_2(1u), Struct_2(1u), Struct_2(25282u), Struct_2(17910u), Struct_2(17819u), Struct_2(30269u), Struct_2(79242u), Struct_2(6419u), Struct_2(1u), Struct_2(1u), Struct_2(4294967295u), Struct_2(1u), Struct_2(4166u), Struct_2(37806u), Struct_2(0u), Struct_2(4294967295u), Struct_2(55792u), Struct_2(4294967295u), Struct_2(40005u), Struct_2(24915u), Struct_2(4294967295u), Struct_2(0u), Struct_2(15270u), Struct_2(4294967295u));

var<private> global2: vec4<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1100f - global0.x), -1122f) + -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -806f));
    global2 = _wgslsmith_add_vec4_i32(~(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.a, global2.x, 28432i), vec4<i32>(-27386i, u_input.a, -7958i, u_input.a)) | (vec4<i32>(-58960i, u_input.a, global2.x, u_input.c) & vec4<i32>(global2.x, u_input.a, global2.x, 17632i))) & vec4<i32>(global2.x, u_input.a | min(0i, -2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.c), global2.yz), firstLeadingBit(~u_input.c)), -_wgslsmith_mod_vec4_i32(vec4<i32>(45339i ^ u_input.a, -global2.x, -32779i, -1i), abs(vec4<i32>(u_input.c, u_input.a, u_input.c, -1i))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 437f, global0.x, 1708f))))));
    global2 = _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -1i), global2.zyy), reverseBits(-2147483647i), 2147483647i), ~vec4<i32>(u_input.c, u_input.c, 0i, 2147483647i)), reverseBits((-vec4<i32>(global2.x, 16148i, u_input.a, -1i) & select(vec4<i32>(16005i, 7117i, -2147483647i, global2.x), vec4<i32>(u_input.c, -1i, global2.x, u_input.a), vec4<bool>(true, true, true, true))) & ~(vec4<i32>(37413i, -1i, global2.x, global2.x) ^ vec4<i32>(1i, -2147483647i, global2.x, -1i))));
    var var_1 = false;
    return u_input.b;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global1 = array<Struct_2, 31>();
    let var_0 = 667f;
    let var_1 = Struct_4(Struct_1(abs(-vec4<i32>(-2147483647i, 11885i, u_input.c, global2.x)) & (-vec4<i32>(0i, -1296i, -13190i, 2147483647i) & vec4<i32>(2147483647i, 0i, 1i, u_input.c)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0, u_input.b, 90711u, arg_0) >> (vec4<u32>(arg_0, arg_0, u_input.b, 2543u) % vec4<u32>(32u))), vec4<u32>(17632u, ~u_input.b, arg_0, func_3())), -(~reverseBits(global2.x)), -1179i), 9300u >> (arg_0 % 32u), Struct_3(abs(global2.xy), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), any(vec2<bool>(false, true)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(trunc(var_0)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(548f + 2048f), _wgslsmith_f_op_f32(min(var_0, var_0))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1145f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1298f), _wgslsmith_div_f32(var_0, -139f), true))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global0.x))));
    return !var_1.c.b.zy;
}

fn func_1() -> vec3<bool> {
    let var_0 = ~min(~vec4<u32>(_wgslsmith_div_u32(38577u, u_input.b), 1u, firstTrailingBit(0u), ~u_input.b), vec4<u32>(~46859u, 1u, 0u, u_input.d) ^ ~(~vec4<u32>(u_input.d, u_input.b, 23216u, u_input.d)));
    let var_1 = !select(any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)), any(func_2(u_input.b)) || !all(vec2<bool>(true, false)), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(2113f, -1540f, 931f) - vec3<f32>(global0.x, global0.x, global0.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -356f, 705f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, 1000f, global0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(-401f, 1575f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f - global0.x) + _wgslsmith_f_op_f32(abs(-113f))), global0.x)));
    var var_3 = !(!(!vec3<bool>(true, var_1, true)));
    var var_4 = false;
    return vec3<bool>(any(func_2(func_3())), !(!var_3.x), any(!select(!vec4<bool>(true, var_1, var_3.x, false), vec4<bool>(true, false, var_1, var_1), var_3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_5) -> f32 {
    var var_0 = global0.x;
    var var_1 = vec4<bool>(true, func_1().x, !all(vec2<bool>(true, true)), arg_3.b.c.b.x | any(func_1()));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1489f, global0.x) - vec2<f32>(945f, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(950f, global0.x) * vec2<f32>(global0.x, -1000f))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + 1140f))), true & arg_1.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1064f, -383f))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))))));
    let var_2 = arg_1;
    var var_3 = -2289f;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(2147483647i, ~(-1267i), 2147483647i, -471i), ~max(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 0u, 19273u, 1u)), firstLeadingBit(global2.x) ^ abs(global2.x), -56279i), Struct_3(global2.yw, func_1()), Struct_5(func_1().x, Struct_4(Struct_1(vec4<i32>(10318i, u_input.c, u_input.c, u_input.a), vec4<u32>(0u, 4294967295u, 11260u, u_input.b), u_input.a, global2.x), u_input.d, Struct_3(global2.ww, vec3<bool>(false, false, false))), true), Struct_5(!(global2.x > -18642i), Struct_4(Struct_1(vec4<i32>(global2.x, u_input.a, -2565i, 36724i), vec4<u32>(u_input.d, 1u, u_input.d, 90578u), 1i, -1i), 1u, Struct_3(vec2<i32>(global2.x, global2.x), vec3<bool>(false, false, false))), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))))));
    var var_0 = _wgslsmith_dot_vec3_i32(select(global2.zzz, global2.xwy, !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true))), abs(vec3<i32>(_wgslsmith_mult_i32(-71051i, global2.x), global2.x, global2.x)) ^ global2.xww);
    let var_1 = ~reverseBits(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(28076u, u_input.d), vec2<u32>(u_input.b, 45213u), vec2<u32>(11082u, u_input.b)) << (vec2<u32>(18105u, 1u) % vec2<u32>(32u))));
    var var_2 = Struct_5(min(_wgslsmith_dot_vec3_i32(-global2.yww, select(vec3<i32>(2147483647i, -14727i, -2147483647i), vec3<i32>(42571i, u_input.a, -53983i), vec3<bool>(false, false, true))), 2147483647i) >= (i32(-1i) * -1i), Struct_4(Struct_1(-max(vec4<i32>(u_input.c, u_input.c, 12832i, -2147483647i), vec4<i32>(u_input.c, 2147483647i, u_input.c, global2.x)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1.x, 41673u, 17994u, u_input.d)), ~vec4<u32>(4294967295u, var_1.x, u_input.d, u_input.b)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.c, global2.x, -2147483647i), abs(vec4<i32>(global2.x, global2.x, u_input.a, u_input.c))), reverseBits(select(2147483647i, 2147483647i, false))), 0u, Struct_3(firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i) | vec2<i32>(global2.x, u_input.a)), vec3<bool>(-334f > global0.x, true, true))), !((-1000f <= _wgslsmith_f_op_f32(-global0.x)) | true));
    var var_3 = _wgslsmith_mult_vec3_u32(~(~var_2.b.a.b.wwz) << ((~(~vec3<u32>(49890u, var_1.x, var_2.b.b)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(63457u, 12832u, var_1.x), ~var_2.b.a.b.wwx)) % vec3<u32>(32u)), firstLeadingBit(~var_2.b.a.b.xzy));
    global1 = array<Struct_2, 31>();
    var var_4 = (var_3.x << ((5942u ^ (select(27824u, u_input.d, var_2.b.c.b.x) | ~u_input.d)) % 32u)) <= ~var_2.b.b;
    var var_5 = var_2.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(1u, var_1.x, ~0u, 0u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -818f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1264f, 559f)), vec2<f32>(652f, 832f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(-global0.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_3.x, var_1.x), 44880u, u_input.d, ~6970u), abs(vec4<u32>(39784u, 1u, 61529u, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(878f + global0.x), global0.x)), _wgslsmith_f_op_f32(trunc(global0.x))))), vec4<f32>(970f, _wgslsmith_f_op_f32(-global0.x), global0.x, global0.x));
}

