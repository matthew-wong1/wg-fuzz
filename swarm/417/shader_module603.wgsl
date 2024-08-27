struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 12> = array<u32, 12>(0u, 1u, 31986u, 11020u, 0u, 15779u, 1u, 40338u, 4294967295u, 37300u, 4294967295u, 0u);

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<bool>(false, true, true, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> u32 {
    global0 = any(!select(vec3<bool>(true, global2.a.a.x || global2.a.a.x, all(vec2<bool>(false, false))), select(select(arg_1.a.yww, arg_1.a.zzx, false), select(arg_3.c.a.yzy, vec3<bool>(global2.a.a.x, arg_1.a.x, global2.a.a.x), global2.a.a.xyx), 55799u <= global1[_wgslsmith_index_u32(0u, 12u)]), select(vec3<bool>(global2.a.a.x, arg_1.a.x, false), !vec3<bool>(global2.a.a.x, arg_3.c.a.x, global2.a.a.x), !vec3<bool>(arg_1.a.x, false, true))));
    var var_0 = arg_1.a.x;
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.b.xy, vec2<u32>(~(~1u >> (_wgslsmith_dot_vec3_u32(u_input.b.xyz, u_input.b.wzw) % 32u)), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.e, 12u)], 12u)], 12u)])), 12u)]), u_input.b.zw | u_input.b.yz);
    global1 = array<u32, 12>();
    let var_2 = -reverseBits(~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_3.b.x, -2147483647i, u_input.a, -2147483647i)), -vec4<i32>(u_input.d, arg_3.b.x, arg_3.b.x, 0i)));
    return arg_3.e;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_4) -> vec3<i32> {
    global0 = arg_2.b > -25530i;
    var var_0 = Struct_4(u_input.b, arg_0.b, ~(~global1[_wgslsmith_index_u32(1u, 12u)]));
    global2 = Struct_3(Struct_1(global2.a.a));
    let var_1 = max(abs(abs(abs(vec4<i32>(-51753i, 4266i, var_0.b, arg_0.b))) & -vec4<i32>(u_input.c, arg_0.b, 8943i, 5009i)), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.b, 2147483647i, u_input.c, 1i)), vec4<i32>(-53395i, arg_2.b, -21327i, u_input.a) & vec4<i32>(var_0.b, -9990i, 0i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 1i, arg_0.b, -13891i) >> (arg_1 % vec4<u32>(32u)), vec4<i32>(var_0.b, arg_0.b, arg_0.b, -24011i) >> (vec4<u32>(19653u, arg_1.x, 17789u, 0u) % vec4<u32>(32u)))));
    let var_2 = Struct_3(Struct_1(!(!global2.a.a)));
    return var_1.zzy;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<i32>(u_input.c, u_input.c, -32392i);
    global2 = Struct_3(Struct_1(!vec4<bool>(global2.a.a.x, !global2.a.a.x, false, global2.a.a.x)));
    let var_1 = -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, var_0.x, -61026i), -25087i | var_0.x), 2147483647i, _wgslsmith_add_i32(var_0.x, u_input.d) | firstLeadingBit(u_input.c)) & -firstTrailingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, u_input.d, var_0.x)), vec3<i32>(-12813i, 0i, var_0.x), vec3<i32>(var_0.x, u_input.d, 52331i)));
    global1 = array<u32, 12>();
    let var_2 = Struct_2(global2.a, _wgslsmith_clamp_vec3_i32(var_1, var_1, _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.x, var_1.x), var_1), -vec3<i32>(var_1.x, -51440i, var_0.x) ^ vec3<i32>(-28118i, u_input.a, var_0.x))), Struct_1(global2.a.a), global2.a.a.x, ~1u);
    return Struct_2(var_2.c, func_4(Struct_4(u_input.b, countOneBits(abs(1i)), 1u), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, ~8326u), ~func_3(796f, Struct_1(vec4<bool>(false, false, true, var_2.c.a.x)), var_0.x, var_2), u_input.b.x, 1u), Struct_4(u_input.b >> (u_input.b % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_i32(u_input.d, var_0.x, var_1.x)), _wgslsmith_mod_u32(abs(18437u), ~50849u))), Struct_1(vec4<bool>(false, true, false, true)), false, firstLeadingBit(u_input.e & min(var_2.e, 31393u)) ^ ~(~var_2.e));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    global0 = arg_2.c.a.x;
    return (~(~vec4<u32>(arg_0.x, 44605u, arg_2.e, arg_2.e) & ~vec4<u32>(38772u, arg_2.e, 84120u, u_input.b.x)) ^ vec4<u32>(func_3(_wgslsmith_f_op_f32(min(560f, arg_1)), func_2().c, -2147483647i, arg_2), max(abs(arg_0.x), 57569u), firstTrailingBit(32548u), 14327u)) ^ (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12181u), select(vec2<u32>(37494u, 38446u), vec2<u32>(arg_2.e, 35962u), global2.a.a.x)), _wgslsmith_div_u32(arg_2.e, 1u) >> (arg_2.e % 32u), ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 29417u, 0u), u_input.b.zzx), 12u)]) ^ vec4<u32>(arg_2.e, ~u_input.b.x << (u_input.b.x % 32u), _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_dot_vec3_u32(u_input.b.zzy, u_input.b.xzz)), _wgslsmith_mult_u32(71725u, 0u) << (0u % 32u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = countOneBits(arg_1.a);
    var var_1 = Struct_4(func_5(~u_input.b.xw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1141f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-540f))))), func_2()), -26883i, arg_2.x);
    var_0 = min(var_1.a, vec4<u32>(var_0.x, ~2236u, ~_wgslsmith_dot_vec3_u32(arg_1.a.wxx, ~var_1.a.yzz), u_input.b.x));
    return Struct_2(Struct_1(global2.a.a), vec3<i32>(_wgslsmith_mult_i32(0i, -1i | arg_1.b) & arg_1.b, ~func_4(arg_1, ~u_input.b, arg_1).x, u_input.a), global2.a, false, 1u);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = global2.a;
    var_0 = func_2().c;
    let var_1 = Struct_4(abs(~_wgslsmith_mult_vec4_u32(~u_input.b, ~u_input.b)), _wgslsmith_add_i32(~arg_0.x, arg_1.b.x), 21050u);
    let var_2 = !arg_1.c.a;
    var var_3 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, ~4294967295u), abs(global1[_wgslsmith_index_u32(var_1.c >> (12369u % 32u), 12u)]))), 12u)] ^ 79322u;
    return arg_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 12>();
    let var_0 = -43708i;
    var var_1 = global2.a;
    global0 = any(vec4<bool>(func_6(vec2<i32>(1179i, 2147483647i) >> (vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(42507u, 12u)]) % vec2<u32>(32u)), func_1(var_1.a.ww, Struct_4(vec4<u32>(0u, global1[_wgslsmith_index_u32(29817u, 12u)], u_input.e, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), u_input.a, 1u), u_input.b.xz), global2.a.a.x, _wgslsmith_sub_i32(var_0, u_input.a)), select(u_input.e <= 4294967295u, global2.a.a.x, true), !global2.a.a.x, true)) || any(!func_2().c.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(225f, _wgslsmith_f_op_f32(max(1000f, 906f))) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(530f, -253f)))), -1053f, 1053f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -894f))));
}

