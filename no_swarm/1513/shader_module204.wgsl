struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 26034u, 62147u, 58108u);

var<private> global1: array<i32, 8>;

var<private> global2: array<f32, 5> = array<f32, 5>(755f, -2791f, -374f, 925f, -606f);

var<private> global3: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(34691u, 9009u), vec2<u32>(39454u, 26225u), vec2<u32>(85881u, 4294967295u), vec2<u32>(44999u, 4294967295u));

var<private> global4: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(1u >> (0u % 32u), 4u)] << (vec2<u32>(~(~38425u & global0.x), ~countOneBits(arg_3)) % vec2<u32>(32u));
    global2 = array<f32, 5>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(var_0.x, 5u)])) - 730f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 1796f) - var_1);
    let var_3 = _wgslsmith_div_vec2_i32(~u_input.a.ww, u_input.a.yz << (u_input.b.yz % vec2<u32>(32u)));
    return global0.x;
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_2(u_input.a.yyx);
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(85707u, 8u)], 44137i, 24938i), _wgslsmith_add_i32(-16672i, var_0.a.x), _wgslsmith_add_i32(-1i, u_input.a.x)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(25216i, 24720i, 34158i), ~var_0.a), vec3<i32>(~u_input.a.x, countOneBits(2147483647i), 0i)), vec3<i32>(var_0.a.x, global1[_wgslsmith_index_u32(abs(u_input.c), 8u)], reverseBits(-2147483647i))));
    let var_2 = var_0;
    var var_3 = 2180f;
    let var_4 = 2589f;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(70663u, 4294967295u, global0.x), vec3<u32>(global0.x, arg_1.x, 94657u))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(arg_0, 0u, 23830u)), u_input.b, ~u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, arg_0, 42980u), global0.xzx))), global0.wzx), 8u)];
}

fn func_1() -> Struct_2 {
    global0 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.b.x, 77336u, 4294967295u), min(vec4<u32>(30790u, u_input.b.x, 24002u, 8264u), vec4<u32>(37937u, 4294967295u, 4294967295u, 133187u))), vec4<u32>(global0.x, global0.x, u_input.c, 1u) & (vec4<u32>(u_input.c, global0.x, global0.x, 33341u) >> (vec4<u32>(0u, u_input.c, global0.x, u_input.c) % vec4<u32>(32u)))), firstTrailingBit(max(select(vec4<u32>(global0.x, u_input.c, 31687u, u_input.b.x), vec4<u32>(global0.x, 1u, 64564u, 49570u), vec4<bool>(true, false, true, false)), vec4<u32>(65307u, global0.x, 0u, 51221u) & vec4<u32>(u_input.c, 14756u, 4294967295u, u_input.b.x))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x ^ global0.x, 5u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-547f)) - _wgslsmith_f_op_f32(490f + global2[_wgslsmith_index_u32(global0.x, 5u)])))));
    global1 = array<i32, 8>();
    global4 = 2147483647i;
    var var_1 = Struct_1(vec2<bool>(true, true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-381f, global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 5u)] - global2[_wgslsmith_index_u32(global0.x, 5u)]))), global2[_wgslsmith_index_u32(u_input.c, 5u)]), ~vec4<u32>(func_2(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2780f), 1i, _wgslsmith_div_u32(u_input.c, 392u)), ~(4294967295u | global0.x), global0.x, ~(~u_input.b.x)), _wgslsmith_add_i32(~func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.b.x), vec2<u32>(global0.x, global0.x)), ~global0.xx), _wgslsmith_add_i32(abs(select(u_input.a.x, u_input.a.x, false)), firstLeadingBit(u_input.a.x & 47519i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 5u)] * 102f)), -733f, _wgslsmith_f_op_f32(f32(-1f) * -1208f), -1508f))));
    return Struct_2(u_input.a.xyw << (~select(~global0.xzx, ~vec3<u32>(1u, global0.x, 1u), vec3<bool>(true, false, var_1.a.x)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.b.zy, global3[_wgslsmith_index_u32(u_input.b.x, 4u)]);
    var var_2 = 1238f;
    var var_3 = var_0;
    var var_4 = ~vec2<u32>((~79780u << (func_2(var_0.a.x, 2553f, global1[_wgslsmith_index_u32(0u, 8u)], 73205u) % 32u)) & 1u, var_1.x);
    let var_5 = u_input.a.x >> (54122u % 32u);
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f * global2[_wgslsmith_index_u32(16701u, 5u)])), select(vec4<i32>(var_0.a.x, var_6.a.x, 9723i | ~var_5, ~(-22275i)), max(select(vec4<i32>(var_0.a.x, var_6.a.x, 32822i, var_5), u_input.a >> (vec4<u32>(global0.x, global0.x, 78604u, var_1.x) % vec4<u32>(32u)), any(vec4<bool>(false, false, false, true))), u_input.a), !(!all(vec2<bool>(true, false)))), vec4<u32>(var_1.x, 4294967295u, global0.x, 55124u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 5u)], global2[_wgslsmith_index_u32(global0.x, 5u)], global2[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-722f, 479f, global2[_wgslsmith_index_u32(1u, 5u)]))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2305f, -1696f, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.c, 5u)], global2[_wgslsmith_index_u32(var_4.x, 5u)])))))), global2[_wgslsmith_index_u32(~2132u, 5u)]);
}

