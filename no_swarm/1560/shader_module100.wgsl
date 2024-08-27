struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<i32, 31> = array<i32, 31>(2147483647i, 0i, -15413i, 0i, 0i, -1i, -599i, -6328i, -30217i, 2147483647i, 1i, -1i, -17945i, 18353i, 1i, -1397i, -1i, 0i, 827i, 38307i, 1i, 64879i, i32(-2147483648), -1i, -49924i, 31717i, 2147483647i, 0i, -1i, 18301i, -1i);

var<private> global2: array<vec3<f32>, 32>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(9889u, 65330u, 14811u, 0u), vec3<i32>(30230i, 1i, -1i)), Struct_1(vec4<u32>(4294967295u, 15971u, 38672u, 23631u), vec3<i32>(26169i, -6513i, 1i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 72772u), vec3<i32>(-1i, -33628i, i32(-2147483648))), Struct_1(vec4<u32>(10747u, 4294967295u, 421u, 4294967295u), vec3<i32>(19963i, i32(-2147483648), -40598i)), Struct_1(vec4<u32>(71649u, 0u, 0u, 1u), vec3<i32>(94i, 1i, -53543i)), Struct_1(vec4<u32>(32998u, 53344u, 30227u, 32718u), vec3<i32>(0i, 39404i, -8116i)), Struct_1(vec4<u32>(4891u, 39006u, 4294967295u, 34282u), vec3<i32>(2147483647i, 41160i, -5822i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec3<i32>(1i, 0i, 88059i)), Struct_1(vec4<u32>(6984u, 131353u, 0u, 33966u), vec3<i32>(i32(-2147483648), 58783i, -75213i)), Struct_1(vec4<u32>(12250u, 0u, 19144u, 4294967295u), vec3<i32>(-32400i, -1i, 19899i)), Struct_1(vec4<u32>(41552u, 7729u, 1575u, 34751u), vec3<i32>(0i, -1i, -16544i)), Struct_1(vec4<u32>(4294967295u, 41843u, 0u, 4294967295u), vec3<i32>(0i, i32(-2147483648), 19787i)), Struct_1(vec4<u32>(4294967295u, 10712u, 0u, 4294967295u), vec3<i32>(10524i, 2147483647i, 71858i)), Struct_1(vec4<u32>(66891u, 0u, 0u, 95643u), vec3<i32>(-1i, 56058i, 0i)), Struct_1(vec4<u32>(0u, 17790u, 0u, 30500u), vec3<i32>(2147483647i, 2147483647i, 39467i)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u), vec3<i32>(-1i, 0i, 46727i)));

var<private> global4: vec2<u32> = vec2<u32>(10786u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    global3 = array<Struct_1, 16>();
    let var_0 = Struct_1(arg_2.a, ~max(vec3<i32>(~arg_1.x, _wgslsmith_div_i32(arg_1.x, -1i), global1[_wgslsmith_index_u32(reverseBits(52105u), 31u)]), ~vec3<i32>(arg_2.b.x, global1[_wgslsmith_index_u32(9500u, 31u)], global1[_wgslsmith_index_u32(arg_2.a.x, 31u)])));
    let var_1 = Struct_1(max(~select(vec4<u32>(4294967295u, arg_3, global4.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, u_input.e, arg_3), vec4<bool>(false, true, false, true)), (arg_2.a & arg_2.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, arg_0, 5554u, 1u), var_0.a) % vec4<u32>(32u))) >> (select(var_0.a, vec4<u32>(0u, _wgslsmith_clamp_u32(4294967295u, 47956u, global4.x), u_input.e, 2265u), 1i < ~arg_2.b.x) % vec4<u32>(32u)), -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_1.x, -20750i, 0i), vec3<i32>(arg_2.b.x, 0i, arg_1.x), false) & _wgslsmith_clamp_vec3_i32(arg_2.b, vec3<i32>(u_input.b.x, -2147483647i, -1i), arg_2.b), vec3<i32>(u_input.b.x << (global4.x % 32u), _wgslsmith_sub_i32(u_input.d.x, -11096i), -7834i), arg_2.b));
    let var_2 = 24751i;
    var var_3 = Struct_1(vec4<u32>(arg_2.a.x, ~global4.x, abs(1u), _wgslsmith_dot_vec3_u32(~var_0.a.xwx, var_1.a.zwz)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(3578i, -2147483647i, 0i) & vec3<i32>(-5082i, arg_1.x, arg_1.x), var_0.b, ~var_0.b) ^ (vec3<i32>(-1i) * -var_0.b), ((vec3<i32>(10439i, 2147483647i, arg_2.b.x) & vec3<i32>(2147483647i, 0i, var_1.b.x)) ^ -vec3<i32>(5063i, 1i, global1[_wgslsmith_index_u32(arg_3, 31u)])) >> (vec3<u32>(_wgslsmith_add_u32(var_0.a.x, arg_2.a.x), 14209u, _wgslsmith_dot_vec3_u32(arg_2.a.xxz, vec3<u32>(u_input.a.x, 45246u, 109516u))) % vec3<u32>(32u))));
    return vec4<bool>(true, reverseBits(0u) >= arg_2.a.x, true, false);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = ~global1[_wgslsmith_index_u32(max(firstTrailingBit(1u), 12796u), 31u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1)))) - _wgslsmith_f_op_f32(trunc(-113f))), arg_1);
    global3 = array<Struct_1, 16>();
    var var_2 = !all(func_3(arg_2.a.x << (~4294967295u % 32u), ~arg_2.b.yx, global3[_wgslsmith_index_u32(global4.x | abs(110u), 16u)], u_input.a.x));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_1, var_1.x, false))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1061f, 2124f)) + _wgslsmith_div_f32(-1000f, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(trunc(1f)))));
    return arg_2.b;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-331f)) - _wgslsmith_f_op_f32(-1197f * -388f)))), _wgslsmith_f_op_f32(floor(140f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f + -1643f) * 787f), -1144f) + global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.e, u_input.e, global4.x >> (1u % 32u)), 30u)]);
    global2 = array<vec3<f32>, 32>();
    var var_1 = Struct_1(abs(vec4<u32>(~u_input.a.x, 40504u, ~firstTrailingBit(global4.x), ~u_input.e >> ((u_input.e ^ u_input.e) % 32u))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(~global4.x, 31u)] | -47808i, ~(~global1[_wgslsmith_index_u32(21187u, 31u)])), _wgslsmith_add_vec3_i32(-u_input.b.zyy, func_2(vec2<bool>(true, false), _wgslsmith_div_f32(var_0.x, var_0.x), global3[_wgslsmith_index_u32(min(0u, u_input.e), 16u)]))));
    var_1 = global3[_wgslsmith_index_u32(abs(101687u & ((~0u >> (0u % 32u)) ^ abs(_wgslsmith_sub_u32(8935u, var_1.a.x)))), 16u)];
    let var_2 = select(vec4<i32>(-1i) * -abs(-vec4<i32>(global1[_wgslsmith_index_u32(0u, 31u)], 45862i, var_1.b.x, -1i)), countOneBits(firstLeadingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(21555i, 15559i, -2207i, 15572i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], var_1.b.x, var_1.b.x, -13578i), vec4<i32>(17777i, global1[_wgslsmith_index_u32(0u, 31u)], 0i, 0i)))), true);
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, true, true, ~55840u != ~reverseBits(global4.x));
    var var_1 = global3[_wgslsmith_index_u32(~34246u, 16u)];
    var_1 = global3[_wgslsmith_index_u32(u_input.e, 16u)];
    let var_2 = global0[_wgslsmith_index_u32(1u, 30u)];
    var var_3 = select(_wgslsmith_mod_u32(8864u, ~func_1()), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.a.x, reverseBits(u_input.e)), ~firstLeadingBit(4294967295u << (var_1.a.x % 32u))), any(var_0.wy));
    let var_4 = vec3<u32>(firstLeadingBit(u_input.a.x), ~min(var_1.a.x, global4.x), 11950u);
    let var_5 = global3[_wgslsmith_index_u32((~firstLeadingBit(1u | global4.x) << (_wgslsmith_div_u32(36455u, ~(~global4.x)) % 32u)) << (var_1.a.x % 32u), 16u)];
    let var_6 = ~var_5.a.x;
    var_3 = ~(~(~(~var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1157f, _wgslsmith_f_op_f32(f32(-1f) * -1037f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-615f)))), -759f)), var_5.b.zx, -185f, u_input.b);
}

