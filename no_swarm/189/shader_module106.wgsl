struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(13598u, 1u, 72860u, 4294967295u, 0u, 69067u, 0u, 9156u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: i32) -> u32 {
    return 1354u;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_5) -> Struct_5 {
    var var_0 = ~(-33568i);
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = Struct_4(Struct_2(((32058i >> (arg_2.a.e.x % 32u)) & var_1.a.d) | -2147483647i, all(vec3<bool>(true, true, true)) || true, abs(u_input.b)));
    var var_3 = var_1.a.d;
    return Struct_5(Struct_1(min(firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, arg_2.a.c.x)), ~_wgslsmith_clamp_vec3_u32(var_1.a.e, vec3<u32>(39534u, var_1.a.b, 79102u), arg_2.a.c.ywx)), arg_2.b, vec4<u32>(global0[_wgslsmith_index_u32(arg_1, 8u)] ^ 75834u, reverseBits(0u), global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a) << (var_1.a.c % vec4<u32>(32u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2379i, -5034i, arg_2.a.d), vec3<i32>(-74840i, u_input.b, 1i)), ~0i) & -1i, countOneBits(vec3<u32>(~14420u, ~4294967295u, ~4294967295u))), u_input.a);
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> vec3<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-arg_0.b)));
    let var_2 = func_3(1823f, func_2(vec4<u32>(0u, ~reverseBits(u_input.a), min(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51147u, 8u)], 8u)], 8u)], 23994u), 1u), 1u), _wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1018f + arg_0.b) + arg_0.b)), u_input.b), Struct_5(Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(52980u, 44040u, global0[_wgslsmith_index_u32(16558u, 8u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(22185u, 8u)])), u_input.a, ~(~vec4<u32>(u_input.a, 40882u, u_input.a, u_input.a)), ~arg_0.a >> (~0u % 32u), ~(vec3<u32>(22699u, u_input.a, u_input.a) ^ vec3<u32>(1u, 43405u, global0[_wgslsmith_index_u32(u_input.a, 8u)]))), ~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)]))));
    var var_3 = ~var_2.a.c.zxz >> (reverseBits(var_2.a.e) % vec3<u32>(32u));
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(2603f, arg_0.b)), -1000f, -171f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b - arg_0.b), -590f, _wgslsmith_f_op_f32(f32(-1f) * -950f), arg_0.b)), vec4<bool>(true, true, !(false || arg_0.c.x), all(!arg_0.c)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, -1446f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2030f * -586f))), _wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(729f + arg_0.b), 802f, _wgslsmith_f_op_f32(arg_0.b * -1542f), _wgslsmith_f_op_f32(333f + arg_0.b))), !(!select(vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), vec4<bool>(var_0, var_0, arg_0.c.x, arg_0.c.x), vec4<bool>(var_0, true, var_0, arg_1))))));
    return vec3<u32>(u_input.a, _wgslsmith_div_u32(~8842u, u_input.a), 0u);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(~102711u, 8u)], u_input.a);
    var var_1 = Struct_4(Struct_2(arg_1.x, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 10596i), i32(-1i) * -4436i)));
    var_1 = Struct_4(var_1.a);
    var var_2 = (var_1.a.b & var_1.a.b) || !var_1.a.b;
    var var_3 = Struct_4(var_1.a);
    return select(vec3<bool>(var_1.a.b && !all(vec2<bool>(true, var_3.a.b)), !all(select(vec3<bool>(true, var_1.a.b, true), vec3<bool>(var_1.a.b, true, var_1.a.b), true)), all(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b), vec3<bool>(var_1.a.b, var_3.a.b, true), all(vec4<bool>(true, false, false, var_3.a.b))), select(select(vec3<bool>(var_1.a.b, false, var_3.a.b), vec3<bool>(true, var_3.a.b, false), vec3<bool>(false, var_1.a.b, var_1.a.b)), vec3<bool>(true, var_3.a.b, false), vec3<bool>(false, true, var_1.a.b)), vec3<bool>(true, true, true)), select(!select(vec3<bool>(var_1.a.b, var_3.a.b, false), vec3<bool>(var_1.a.b, var_1.a.b, var_3.a.b), var_1.a.b), !(!vec3<bool>(true, true, var_1.a.b)), !vec3<bool>(var_1.a.b, true, var_3.a.b)), var_3.a.b), false);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = ~(~(~(0u & global0[_wgslsmith_index_u32(32189u, 8u)]))) <= ~(~1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + 1145f));
    var_1 = _wgslsmith_f_op_f32(776f - 2190f);
    let var_2 = Struct_3(firstLeadingBit(11470i), _wgslsmith_f_op_f32(-arg_1), arg_2);
    return func_3(_wgslsmith_f_op_f32(var_2.b - arg_1), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 44651u), vec3<u32>(24120u, 82097u, 0u), ~vec3<u32>(1u, 4294967295u, u_input.a))), u_input.a), Struct_5(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(~u_input.a, 8u)], u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(48054u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)]))), u_input.a, vec4<u32>(0u, u_input.a, u_input.a, 4294967295u) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(13230u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a, 0u)), u_input.b, vec3<u32>(~13031u, ~u_input.a, global0[_wgslsmith_index_u32(1u, 8u)])), 1u)).a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = 1417u;
    var var_1 = Struct_4(Struct_2(~arg_0.d, !(u_input.a >= (u_input.a & 4294967295u)), -8257i));
    var_1 = Struct_4(Struct_2(-arg_0.d, false == (var_1.a.b & all(vec4<bool>(var_1.a.b, var_1.a.b, var_1.a.b, var_1.a.b))), arg_1.d));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(arg_2.x, -16438i), -1i, reverseBits(abs(arg_0.d ^ (var_1.a.c >> (u_input.a % 32u)))));
    var var_3 = 5197i;
    return Struct_1(~(~reverseBits(arg_1.e)), (max(~arg_0.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.c.xy, arg_0.a.zz), 8u)], 8u)]) | ~arg_1.a.x) | 90330u, vec4<u32>(1u, _wgslsmith_div_u32(~63138u, ~arg_1.c.x), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(4294967295u, 4294967295u), arg_1.e.x, arg_1.a.x), 0u), _wgslsmith_mult_i32(~var_2.x, ~max(func_3(-814f, arg_1.a.x, Struct_5(Struct_1(vec3<u32>(arg_1.b, 10898u, arg_0.e.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], vec4<u32>(arg_0.a.x, 4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.a, 8u)]), var_1.a.a, vec3<u32>(4294967295u, 9327u, arg_0.a.x)), u_input.a)).a.d, arg_1.d)), arg_1.c.wwx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = func_6(func_5(_wgslsmith_clamp_i32(u_input.b >> (~4294967295u % 32u), ~u_input.b, -u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1203f)))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1329f, 919f, -1248f, 1853f))), vec4<i32>(~u_input.b, u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(0i, u_input.b, 1i))), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(6637u, 38177u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 8u)], u_input.a, 0u)), func_1(Struct_3(-2147483647i, 973f, vec3<bool>(true, false, false)), true)), 1i)), func_5(~_wgslsmith_sub_i32(u_input.b, countOneBits(u_input.b)), -2350f, vec3<bool>(true, any(func_4(vec4<f32>(449f, 190f, -377f, -1118f), vec4<i32>(1i, u_input.b, 64034i, u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4282u, 8u)], 8u)], 11332u, u_input.a), u_input.b).xz), true)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 60592i, u_input.b, u_input.b)), reverseBits(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b))), vec4<i32>(-1i, ~2147483647i, _wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(u_input.b, u_input.b, -5765i))), -select(firstLeadingBit(61464i), -20911i, true), func_5(-(1i & u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-212f + -1483f))), vec3<bool>(true, false, true)).d, -2411i));
    var var_2 = vec4<bool>(true, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(955f, 1493f, 1000f, -1132f) - vec4<f32>(538f, 650f, 126f, 1456f))), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-2147483647i, u_input.b, 0i, 5302i)), -vec4<i32>(2147483647i, -21578i, u_input.b, -1i)), _wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.a.x, select(6894u, var_1.e.x, false), 2461u), vec3<u32>(~1u, select(var_1.b, 26498u, true), 1u << (u_input.a % 32u))), max(~(-u_input.b), abs(2147483647i) >> (abs(u_input.a) % 32u))).x, select(false, true, !(!any(vec2<bool>(false, true)))), true);
    var var_3 = 0u | var_1.b;
    var_2 = select(vec4<bool>(all(vec4<bool>(var_2.x, false, true, var_2.x)), u_input.b == u_input.b, true, true), !vec4<bool>(var_2.x, true, false, all(var_2.zz)), select(!vec4<bool>(var_2.x, all(vec4<bool>(false, var_2.x, var_2.x, var_2.x)), var_2.x, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), true), !select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true), false), all(!vec4<bool>(false, true, var_2.x, var_2.x))), select(vec4<bool>(true, var_2.x, !var_2.x, 1u == u_input.a), vec4<bool>(all(vec4<bool>(false, var_2.x, false, true)), 59001i == u_input.b, var_2.x, var_2.x), true)));
    var_1 = func_6(func_6(func_6(Struct_1(_wgslsmith_mod_vec3_u32(var_1.a, vec3<u32>(var_1.c.x, 1u, 1u)), func_6(Struct_1(var_1.a, 1u, var_1.c, var_1.d, vec3<u32>(4294967295u, 68292u, 135493u)), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], 1u, u_input.a), 52494u, var_1.c, 18060i, var_1.a), vec4<i32>(0i, var_1.d, -11931i, -24869i)).a.x, var_1.c ^ var_1.c, u_input.b, _wgslsmith_mod_vec3_u32(var_1.c.wyz, var_1.a)), func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -31963i), vec2<i32>(u_input.b, var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -2087f), select(var_2.xzw, var_2.xxw, var_2.x)), ~(vec4<i32>(-14608i, 9543i, u_input.b, -7527i) & vec4<i32>(-61079i, u_input.b, u_input.b, -5451i))), func_6(func_3(_wgslsmith_f_op_f32(f32(-1f) * -178f), ~23541u, func_3(-1000f, 1u, Struct_5(Struct_1(var_1.c.yww, 43748u, var_1.c, u_input.b, vec3<u32>(8229u, 43883u, global0[_wgslsmith_index_u32(1u, 8u)])), 14197u))).a, func_5(-1i, _wgslsmith_div_f32(-334f, -719f), vec3<bool>(true, true, false)), reverseBits(min(vec4<i32>(-2147483647i, -21254i, var_1.d, 48846i), vec4<i32>(2147483647i, 1i, var_1.d, 1i)))), abs(vec4<i32>(u_input.b, _wgslsmith_mult_i32(1i, -15326i), min(-12207i, var_1.d), 1i))), Struct_1(var_1.a, ~(~62761u), max(vec4<u32>(66349u, 0u << (u_input.a % 32u), ~4294967295u, 0u >> (var_1.b % 32u)), ~vec4<u32>(8157u, 71305u, 46583u, 9529u)), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.d, -2147483647i, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -1i, 0i), vec3<i32>(-2147483647i, 0i, var_1.d)))), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 0u, 96506u), vec3<u32>(var_1.b, min(13046u, 1u), var_1.a.x >> (global0[_wgslsmith_index_u32(var_1.a.x, 8u)] % 32u)))), abs(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.b, -24283i, u_input.b, u_input.b))) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-3160i, u_input.b), vec2<i32>(-1i, -1i)), 38967i, ~u_input.b, -22508i)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, ~(~(~13882u & ~var_1.a.x)), vec4<f32>(-1595f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2894f, -1294f))), _wgslsmith_f_op_f32(-764f + _wgslsmith_f_op_f32(f32(-1f) * -1417f))), abs(~func_2(func_3(254f, 4294967295u, Struct_5(Struct_1(var_1.e, 1u, var_1.c, var_1.d, vec3<u32>(1u, 20405u, 25570u)), 4294967295u)).a.c, _wgslsmith_f_op_f32(177f - -347f), 17838i)), var_1.e.zy | var_1.c.xz);
}

