struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(i32(-2147483648), -37137i);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(9870u, 10587u, 4294967295u, 4294967295u));

var<private> global2: vec3<f32> = vec3<f32>(-136f, 772f, -1396f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = ~reverseBits(~(firstTrailingBit(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(43617u, 2u)], u_input.b, u_input.b)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(global1.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)], 1595i), vec4<i32>(global0[_wgslsmith_index_u32(global1.a.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)]))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global2.x)))))));
    global0 = array<i32, 2>();
    return vec3<i32>(_wgslsmith_clamp_i32(max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1.a.x, u_input.c, 9270u), u_input.c), 2u)], abs(-23271i)), -1i >> (u_input.c % 32u), _wgslsmith_dot_vec4_i32(var_0, -var_0 | (var_0 & var_0))), 40117i, global0[_wgslsmith_index_u32(~41873u, 2u)]);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(global1.a & select(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 0u) << (vec4<u32>(global1.a.x, global1.a.x, 0u, 75992u) % vec4<u32>(32u)), vec4<u32>(1u, global1.a.x, 8754u, 1u), all(vec4<bool>(false, false, false, true)))), Struct_1(~_wgslsmith_clamp_vec4_u32(global1.a, global1.a, global1.a)), vec2<i32>(min(_wgslsmith_dot_vec3_i32(func_3(), abs(vec3<i32>(2147483647i, u_input.a.x, -1i))), _wgslsmith_mult_i32(u_input.a.x, -46301i) << (u_input.c % 32u)), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.a.x, u_input.c, 1u), 2u)])), !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true != any(vec2<bool>(true, false)), true));
    var var_1 = select(vec4<bool>(all(var_0.d.xy), ~_wgslsmith_div_i32(2147483647i, u_input.b) != (i32(-1i) * -global0[_wgslsmith_index_u32(14844u, 2u)]), !(_wgslsmith_mod_u32(u_input.c, u_input.c) > (u_input.c | 31094u)), var_0.d.x), vec4<bool>((var_0.d.x == true) || select(true, !var_0.d.x, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1036f - global2.x))) >= _wgslsmith_f_op_f32(floor(global2.x)), var_0.d.x, all(select(vec4<bool>(var_0.d.x, true, false, var_0.d.x), !vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true)))), var_0.d.x);
    return Struct_2(Struct_1(vec4<u32>(39167u, ~15255u, u_input.c, global1.a.x) << (~(~var_0.b.a) % vec4<u32>(32u))), var_0.a, -var_0.c, var_0.d);
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = func_2();
    let var_1 = 0u;
    var var_2 = Struct_1(var_0.b.a);
    global1 = func_2().a;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, _wgslsmith_f_op_f32(abs(-551f)), -616f));
    return i32(-1i) * -var_0.c.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1.a.x;
    var var_1 = u_input.a;
    var var_2 = arg_0;
    var_1 = (u_input.a & _wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(220u, 2u)]), u_input.a.x), max(u_input.a << (arg_0.a.zz % vec2<u32>(32u)), u_input.a), u_input.a)) << (_wgslsmith_mult_vec2_u32(~arg_0.a.xy, ~vec2<u32>(~arg_0.a.x, arg_0.a.x & 31034u)) % vec2<u32>(32u));
    let var_3 = vec4<i32>(~28215i >> ((_wgslsmith_sub_u32(1u, var_2.a.x) ^ ~10583u) % 32u), func_4(func_2()), 32307i, ~2147483647i);
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<i32, 2>();
    return Struct_1(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(95186u, arg_2.a.x), arg_0.b.a.x >> (30184u % 32u)) ^ arg_0.b.a.x, 495u, ~_wgslsmith_dot_vec3_u32(arg_2.a.www, vec3<u32>(global1.a.x, arg_0.b.a.x, arg_0.a.a.x)), global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    global1 = func_5(Struct_2(func_1(Struct_1(vec4<u32>(global1.a.x, global1.a.x, 0u, u_input.c) >> (global1.a % vec4<u32>(32u)))), Struct_1(select(_wgslsmith_add_vec4_u32(global1.a, global1.a), global1.a, true)), -(~vec2<i32>(31877i, u_input.a.x)) ^ vec2<i32>(-23411i, 1i), func_2().d), _wgslsmith_add_vec3_i32(-max(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], u_input.b, 12592i)), -vec3<i32>(global0[_wgslsmith_index_u32(99599u, 2u)], 1i, -16167i)), ~(-vec3<i32>(u_input.b, u_input.b, u_input.a.x))), func_1(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, global1.a.x, 44136u, global1.a.x), global1.a) ^ _wgslsmith_clamp_vec4_u32(global1.a, vec4<u32>(u_input.c, 30553u, 4294967295u, global1.a.x), global1.a))));
    var var_0 = true;
    var var_1 = func_2().b;
    global0 = array<i32, 2>();
    var var_2 = ~var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_div_vec4_i32(~vec4<i32>(-5540i, u_input.b, u_input.b, u_input.a.x), ~vec4<i32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(60144u, 2u)], 6745i))), vec4<i32>(~(-_wgslsmith_sub_i32(-41307i, 1i)), select(u_input.b, reverseBits(global0[_wgslsmith_index_u32(~var_1.a.x, 2u)]), select(true, all(vec3<bool>(true, true, true)), true)), i32(-1i) * -_wgslsmith_div_i32(u_input.b, 0i), -1i), global2.yx);
}

