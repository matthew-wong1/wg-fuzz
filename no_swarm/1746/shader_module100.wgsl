struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global1: array<f32, 9>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    let var_0 = 28651u;
    let var_1 = Struct_1(abs(abs(firstTrailingBit(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(-1i, -18339i), vec2<bool>(false, true))))), vec2<u32>(_wgslsmith_clamp_u32(global0.x, u_input.b, u_input.b), ~_wgslsmith_clamp_u32(~0u, global0.x, ~u_input.a)));
    var var_2 = Struct_2(Struct_1(abs(~var_1.a), max(firstLeadingBit(vec2<u32>(var_0, u_input.d)) >> (var_1.b % vec2<u32>(32u)), ~(~var_1.b))), var_1, var_1);
    return false;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = abs(~(-(~firstTrailingBit(vec2<i32>(-15683i, -15147i)))));
    var var_1 = Struct_3(~vec2<u32>(min(25539u, ~global0.x), ~(~8609u)));
    let var_2 = countOneBits(~(-vec4<i32>(var_0.x, -21139i, 0i, 1i)));
    global0 = var_1.a & firstLeadingBit(var_1.a);
    global1 = array<f32, 9>();
    return abs(_wgslsmith_div_vec4_u32(~(~min(vec4<u32>(global0.x, 4294967295u, u_input.b, global0.x), vec4<u32>(u_input.d, global0.x, 4294967295u, 56430u))), vec4<u32>(max(abs(var_1.a.x), abs(1u)), ~14373u, ~_wgslsmith_mod_u32(38991u, var_1.a.x), abs(~global0.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = 0i;
    global0 = ~reverseBits(arg_3.yy ^ max(select(arg_3.yx, arg_3.zz, true), vec2<u32>(u_input.d, global0.x) & arg_3.zy));
    global0 = _wgslsmith_mod_vec2_u32(max(~vec2<u32>(~global0.x, ~0u), arg_3.zw), vec2<u32>(arg_3.x, global0.x));
    var var_1 = -21444i;
    let var_2 = vec3<u32>(global0.x, abs(arg_3.x), countOneBits(min(abs(49327u), ~min(arg_3.x, 4294967295u))));
    return Struct_2(Struct_1(~(-vec2<i32>(var_0, 1i)), firstLeadingBit(_wgslsmith_mult_vec2_u32(~var_2.yz, var_2.zx & vec2<u32>(arg_3.x, var_2.x)))), Struct_1(vec2<i32>(arg_2, _wgslsmith_dot_vec2_i32(~vec2<i32>(-42554i, 0i), ~vec2<i32>(-32976i, var_0))), ~var_2.xz), Struct_1(-vec2<i32>(arg_2, arg_2) ^ ~(vec2<i32>(112477i, -1i) ^ vec2<i32>(var_0, 0i)), arg_3.wy));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = true;
    let var_1 = ~arg_0.a.a.x > 2147483647i;
    global1 = array<f32, 9>();
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 9u)]) - -1000f), global1[_wgslsmith_index_u32(min(arg_1.x, ~arg_2.b.x), 9u)]))), !vec3<bool>(true, false || !var_1, true), arg_2.a.x, ~countOneBits(arg_1));
    global1 = array<f32, 9>();
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 9u)]), 360f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(arg_1.x, 1u)) | global0.x, 9u)] * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.wzx, arg_1.ywy), abs(arg_1.zzx)), arg_1.yxz), 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -1106f), global1[_wgslsmith_index_u32(arg_1.x, 9u)]);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-412f, -876f), vec2<f32>(-457f, -809f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-150f, 255f) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 307f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1648f, -287f) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(global0.x, 9u)])), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1360f, -1305f))), true))), vec3<bool>(-15842i <= select(1i, 31512i, true), !func_2(), true), -53373i, _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u), func_3(global1[_wgslsmith_index_u32(global0.x, 9u)], true, vec3<bool>(true, false, false))) ^ vec4<u32>(~4294967295u, global0.x, ~1u, global0.x)), ~vec4<u32>(8005u, global0.x, _wgslsmith_mult_u32(u_input.a, 70678u), 4294967295u), Struct_1(vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(9094i, 0i, -1i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(16192i, -30752i, 0i, 8070i)), vec4<i32>(26533i, 19749i, 1i, 0i))), vec2<u32>(0u, ~global0.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c, 9u)])) + _wgslsmith_f_op_f32(337f * -328f));
    let var_2 = select(vec3<bool>(true, _wgslsmith_div_i32(-23984i, 1i) < -firstTrailingBit(-2147483647i), false), vec3<bool>(true, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(23041u, 4294967295u), vec2<u32>(u_input.d, 4718u))) < 0u, true), !all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)));
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zy, vec2<f32>(global1[_wgslsmith_index_u32(33996u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), var_2.xy)) + _wgslsmith_f_op_vec2_f32(-var_0.zz))), _wgslsmith_f_op_vec2_f32(var_0.xw * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(var_0.x - -142f))), select(vec2<bool>(true, true), !vec2<bool>(var_2.x, true), var_2.yz))), select(var_2, !vec3<bool>(!var_2.x, !var_2.x, all(vec4<bool>(var_2.x, var_2.x, true, false))), select(!vec3<bool>(var_2.x, true, false), !var_2, max(2147483647i, 2147483647i) > _wgslsmith_dot_vec3_i32(vec3<i32>(-36856i, 0i, 1i), vec3<i32>(2147483647i, -1i, 0i)))), 25334i, max(_wgslsmith_mod_vec4_u32(~vec4<u32>(10488u, u_input.b, 4294967295u, global0.x), ~vec4<u32>(global0.x, global0.x, u_input.c, u_input.d)), vec4<u32>(u_input.a >> (global0.x % 32u), u_input.a << (global0.x % 32u), 470u, _wgslsmith_div_u32(global0.x, 0u))) << (vec4<u32>(~func_3(455f, var_2.x, vec3<bool>(var_2.x, true, true)).x, max(~0u, ~global0.x), 17637u, 91834u) % vec4<u32>(32u))).b;
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(var_3, var_3, Struct_1(_wgslsmith_clamp_vec2_i32(var_3.a, vec2<i32>(19727i, var_3.a.x), var_3.a), countOneBits(vec2<u32>(global0.x, u_input.c)))), vec4<u32>(countOneBits(1u), ~global0.x << (45677u % 32u), ~(~1564u), ~global0.x << (select(67904u, var_3.b.x, var_2.x) % 32u)), var_3)).x));
    return -16051i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~reverseBits(vec2<u32>(global0.x, global0.x)));
    global1 = array<f32, 9>();
    let var_0 = vec2<i32>(1i, func_1());
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-174f, 1000f)), vec3<bool>(true, any(vec2<bool>(true, true)), false), 1i, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, ~(~1u), u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 28316u, global0.x), ~vec3<u32>(4294967295u, 1u, u_input.b))), select(vec4<u32>(1u, ~global0.x, ~55618u, func_4(vec2<f32>(518f, global1[_wgslsmith_index_u32(u_input.d, 9u)]), vec3<bool>(true, false, false), 2147483647i, vec4<u32>(0u, 1u, 1u, u_input.c)).c.b.x), vec4<u32>(global0.x, 1u, u_input.c, ~global0.x), true))).a;
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(0u, ~43065u)), var_1.b);
    global1 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.d, 9u)])), -1184f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1987f, -477f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(35797u, 9u)] + 435f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(66494u, 9u)], global1[_wgslsmith_index_u32(515u, 9u)], global1[_wgslsmith_index_u32(6610u, 9u)])), vec3<f32>(global1[_wgslsmith_index_u32(26357u, 9u)], -1148f, -883f)) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(var_1.b.x, 9u)], global1[_wgslsmith_index_u32(var_1.b.x, 9u)]), vec3<f32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(77349u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]) + vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 9u)], global1[_wgslsmith_index_u32(var_1.b.x, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]))))), i32(-1i) * -20426i, ~vec3<i32>(i32(-1i) * -43612i, (var_1.a.x ^ var_1.a.x) ^ -170i, 46180i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(1000f - -712f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(53768u, 9u)] + -828f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_1.b.x, 9u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_1.b.x, 9u)], global1[_wgslsmith_index_u32(var_1.b.x, 9u)], 461f, global1[_wgslsmith_index_u32(76744u, 9u)]) - vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 9u)], global1[_wgslsmith_index_u32(var_1.b.x, 9u)], global1[_wgslsmith_index_u32(var_1.b.x, 9u)], 945f))))))));
}

