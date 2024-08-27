struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(4294967295u, false), Struct_1(0u, true), Struct_1(4294967295u, false), Struct_1(3259u, true), Struct_1(15752u, false), Struct_1(0u, false), Struct_1(74799u, true), Struct_1(32435u, true));

var<private> global1: array<vec4<bool>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(abs(~min(1u, ~61142u | firstTrailingBit(0u))), 8u)];
    var var_1 = global0[_wgslsmith_index_u32(~6514u, 8u)];
    var var_2 = Struct_1(var_1.a, true);
    global1 = array<vec4<bool>, 23>();
    var_2 = global0[_wgslsmith_index_u32(var_1.a, 8u)];
    return 32728u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = !(!(!(!(!global1[_wgslsmith_index_u32(arg_0.a, 23u)]))));
    global1 = array<vec4<bool>, 23>();
    var_0 = !global1[_wgslsmith_index_u32(~(~36573u), 23u)];
    global1 = array<vec4<bool>, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, _wgslsmith_f_op_f32(-1325f - -1276f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-424f + -995f), -346f)), -387f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(192f, 1541f, -1426f, -377f) - vec4<f32>(-1610f, 642f, 621f, -1487f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1018f, 1080f, 596f, -1410f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-935f, -567f, 1000f, 1084f) - vec4<f32>(1000f, -1854f, -3079f, 694f))))));
    return ~(~4294967295u) & arg_1.d.x;
}

fn func_1() -> Struct_1 {
    var var_0 = max(_wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(func_2(u_input.b.x)), 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, 4294967295u), vec2<u32>(1u, ~16471u))), firstLeadingBit(reverseBits(vec2<u32>(32910u, 4294967295u)) | select(vec2<u32>(0u, 127392u), vec2<u32>(26641u, 66254u), false)));
    let var_1 = Struct_1(26322u << (var_0.x % 32u), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(false, true, true))) && true);
    let var_2 = global1[_wgslsmith_index_u32(91920u, 23u)];
    var var_3 = -443f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(873f)));
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_0.x), countOneBits(var_1.a)), ~vec2<u32>(_wgslsmith_add_u32(49154u, 0u), ~15524u)), 8u)], Struct_1(func_3(global0[_wgslsmith_index_u32(1u, 8u)], Struct_2(var_1, var_1, -vec4<i32>(-9810i, -2147483647i, u_input.a.x, u_input.c.x), vec4<u32>(var_1.a, var_0.x, var_0.x, var_0.x))), true), ~vec4<i32>(_wgslsmith_dot_vec3_i32(~u_input.b.wzx, ~vec3<i32>(u_input.c.x, 2147483647i, u_input.b.x)), u_input.b.x, -2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b.x, -3939i, u_input.a.x, u_input.a.x)), i32(-1i) * -1939i)), _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, 0u, 1u, 0u))), ~(~vec4<u32>(11596u, 4294967295u, 16067u, 0u))) | select(firstLeadingBit(~vec4<u32>(1u, 0u, 21799u, 4294967295u)), ~max(vec4<u32>(45824u, 12693u, var_0.x, 4294967295u), vec4<u32>(var_0.x, 18719u, 2978u, 28000u)), var_1.b));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_3, Struct_1(firstLeadingBit(~arg_1.a.a), _wgslsmith_add_i32(arg_1.c.x, _wgslsmith_dot_vec2_i32(arg_1.c.zw, u_input.b.yw)) > (u_input.c.x << (arg_1.d.x % 32u))), vec4<i32>(u_input.a.x, arg_1.c.x, ~(u_input.c.x & u_input.c.x), ~min(arg_2, u_input.c.x)), vec4<u32>(func_3(arg_3, Struct_2(func_1(), func_1(), vec4<i32>(arg_2, -50812i, -1882i, u_input.a.x), _wgslsmith_mod_vec4_u32(arg_1.d, arg_1.d))), 16435u, 5621u, 17128u));
    let var_1 = Struct_1(select(_wgslsmith_sub_u32(func_3(Struct_1(22779u, false), Struct_2(var_0.a, arg_1.a, var_0.c, vec4<u32>(0u, arg_3.a, var_0.d.x, arg_3.a))) << (var_0.a.a % 32u), reverseBits(_wgslsmith_sub_u32(0u, arg_1.d.x))), ~var_0.a.a << (24534u % 32u), false), true);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 164f)));
    let var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(arg_2, var_0.c.x, -2147483647i), -64275i, arg_1.c.x), vec3<i32>(1i, -u_input.c.x, -1i)), countOneBits(abs(firstLeadingBit(var_0.c.wzx)))) << (~_wgslsmith_mod_vec3_u32(~(arg_1.d.yzy & var_0.d.zzy), ~var_0.d.zzw) % vec3<u32>(32u));
    let var_4 = Struct_2(var_1, func_1(), arg_1.c, vec4<u32>(arg_3.a, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, arg_1.b.a), max(arg_1.a.a, var_1.a)), 1u), _wgslsmith_dot_vec4_u32(~(~arg_1.d), _wgslsmith_add_vec4_u32(select(arg_1.d, vec4<u32>(39524u, 15555u, var_1.a, 47789u), arg_0), vec4<u32>(120u, arg_1.a.a, 2018u, var_1.a))), 64571u));
    return arg_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(arg_1.a.a, 1u) | ~func_1().a;
    var_0 = _wgslsmith_div_u32(1u, arg_2.b.a);
    let var_1 = Struct_2(arg_1.a, global0[_wgslsmith_index_u32(abs(arg_2.a.a), 8u)], select(vec4<i32>(abs(9356i) & arg_0.x, arg_0.x, ~26773i | u_input.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, 2147483647i), arg_1.c.yyz)), _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(arg_1.c.x, -25816i, 2147483647i, arg_2.c.x)), ~vec4<i32>(u_input.b.x, -3516i, arg_2.c.x, -5722i)), any(select(select(vec4<bool>(arg_2.a.b, false, true, true), vec4<bool>(true, true, true, true), false), !vec4<bool>(arg_3, arg_2.b.b, true, arg_1.a.b), !arg_2.a.b))), select(reverseBits(arg_1.d), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(42885u, 14463u, 35126u, 4294967295u), vec4<u32>(12097u, 34391u, arg_2.a.a, 1u))), all(!select(vec3<bool>(false, true, arg_1.a.b), vec3<bool>(arg_2.a.b, arg_1.b.b, true), vec3<bool>(false, arg_3, false)))));
    var_0 = _wgslsmith_mult_u32(1u, ~(_wgslsmith_dot_vec2_u32(arg_1.d.zx, vec2<u32>(0u, 1u)) ^ 629u));
    global1 = array<vec4<bool>, 23>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-u_input.c, Struct_2(global0[_wgslsmith_index_u32(~(1u << (_wgslsmith_clamp_u32(93702u, 45538u, 77577u) % 32u)), 8u)], func_4(false, Struct_2(global0[_wgslsmith_index_u32(countOneBits(20093u), 8u)], Struct_1(495u, false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -39413i, -5400i, -2147483647i), u_input.b), countOneBits(vec4<u32>(4294967295u, 0u, 1u, 0u))), u_input.a.x, func_1()), vec4<i32>(_wgslsmith_div_i32(u_input.b.x, abs(u_input.a.x)), -1i, ~u_input.c.x ^ _wgslsmith_sub_i32(42852i, 2147483647i), -firstTrailingBit(43992i)), vec4<u32>(abs(_wgslsmith_sub_u32(30011u, 11794u)), 65183u, 1u, _wgslsmith_add_u32(0u, _wgslsmith_add_u32(5760u, 705u)))), Struct_2(global0[_wgslsmith_index_u32(1u, 8u)], func_4(true, Struct_2(global0[_wgslsmith_index_u32(~18682u, 8u)], Struct_1(4519u, true), min(vec4<i32>(61616i, 2147483647i, u_input.c.x, -1i), u_input.c), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), u_input.b.x, func_1()), vec4<i32>(u_input.b.x, ~(-1i), u_input.c.x, 2147483647i), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 49403u), func_2(2147483647i)), 0u, abs(4019u), 0u)), true);
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(Struct_1(1u, true), Struct_1(~abs(4294967295u | var_0.a), false || (u_input.a.x == u_input.b.x)), vec4<i32>(0i, -22944i, -(~(~1i)), u_input.a.x | 0i), min(vec4<u32>(var_0.a, var_0.a, 1u, ~_wgslsmith_add_u32(var_0.a, var_0.a)), reverseBits(vec4<u32>(0u, 59406u, func_1().a, 35175u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f));
    var var_4 = !all(!select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_2.a.b, true), select(vec2<bool>(var_2.b.b, false), vec2<bool>(var_2.a.b, false), vec2<bool>(var_2.b.b, var_0.b))));
    let var_5 = vec2<u32>(33601u, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1621f, _wgslsmith_f_op_f32(f32(-1f) * -379f), -530f, _wgslsmith_f_op_f32(ceil(-573f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-344f, -202f, 595f, 981f) - vec4<f32>(647f, 119f, -1459f, -162f))), vec4<f32>(_wgslsmith_f_op_f32(step(343f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -2655f), -990f, _wgslsmith_f_op_f32(select(896f, 1426f, true))), false)))), ~_wgslsmith_add_u32(var_0.a, var_5.x & var_0.a) << (firstTrailingBit(~reverseBits(var_5.x)) % 32u));
}

