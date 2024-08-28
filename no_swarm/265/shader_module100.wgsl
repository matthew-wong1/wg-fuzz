struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: array<u32, 24>;

var<private> global2: array<i32, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1191f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2104f - -517f), -936f)), _wgslsmith_div_f32(-963f, _wgslsmith_f_op_f32(-1300f - -1084f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(503f * 1126f), 2534f, 1000f))));
    var var_1 = (vec2<u32>(global1[_wgslsmith_index_u32(0u, 24u)], max(_wgslsmith_dot_vec2_u32(vec2<u32>(20578u, 4294967295u), vec2<u32>(3974u, u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), u_input.b))) >> (firstLeadingBit(~vec2<u32>(u_input.b.x, u_input.b.x) | u_input.b.xy) % vec2<u32>(32u))) & vec2<u32>(countOneBits(~(~4294967295u)), global1[_wgslsmith_index_u32(~arg_2, 24u)]);
    return _wgslsmith_dot_vec3_u32(max(u_input.b, u_input.b), ~vec3<u32>(17407u, ~var_1.x, max(2383u, u_input.b.x)));
}

fn func_2() -> Struct_1 {
    global2 = array<i32, 24>();
    let var_0 = ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, func_3(true, true, 4294967295u), ~30839u, firstLeadingBit(4294967295u)), select(vec4<u32>(0u, u_input.b.x, 4294967295u, 69467u) | vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u), max(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(24714u, 24u)], 14428u, 4294967295u), vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5086u, 24u)], 24u)], u_input.b.x)), true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.b.x, 28163u, 1u), u_input.b), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(52781u, 24u)]))), 24u)]), 24u)];
    global0 = array<vec3<bool>, 15>();
    var var_1 = reverseBits(-max(u_input.c.x << (1u % 32u), ~global2[_wgslsmith_index_u32(70979u, 24u)])) != u_input.c.x;
    var var_2 = Struct_1(~((_wgslsmith_sub_i32(0i, 31993i) ^ select(global2[_wgslsmith_index_u32(4294967295u, 24u)], 2947i, true)) ^ -6273i), var_0, all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-115f, -1000f, 375f, -1293f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(465f, 1197f, -699f, 831f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-389f, -1040f, 482f, -1784f), vec4<f32>(682f, 613f, 1391f, -173f))))))));
    return Struct_1(~(-(~max(global2[_wgslsmith_index_u32(var_2.b, 24u)], var_2.a))), 4294967295u, var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1180f, -791f, 559f, _wgslsmith_f_op_f32(select(-1831f, -1079f, false))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1648f, 1000f, _wgslsmith_f_op_f32(step(var_2.d.x, var_2.d.x)), _wgslsmith_f_op_f32(var_2.d.x - var_2.d.x)))));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    let var_0 = 462f;
    var var_1 = func_2();
    let var_2 = 1380f;
    global2 = array<i32, 24>();
    var_1 = func_2();
    return -_wgslsmith_add_vec3_i32(select(~(-vec3<i32>(-21202i, u_input.c.x, -2147483647i)), min(select(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(15146i, u_input.a, 21842i), var_1.c), vec3<i32>(-1i, global2[_wgslsmith_index_u32(0u, 24u)], var_1.a)), (var_1.b << (u_input.b.x % 32u)) < _wgslsmith_mult_u32(80208u, 52001u)), select(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(29921u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], 2147483647i, u_input.a), vec4<i32>(global2[_wgslsmith_index_u32(var_1.b, 24u)], u_input.a, 8053i, -2147483647i)), abs(var_1.a)), ~(~vec3<i32>(1i, 308i, global2[_wgslsmith_index_u32(u_input.b.x, 24u)])), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true) ^ (vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(20302i, -27542i, -2147483647i, -2147483647i), vec4<i32>(-42002i, u_input.c.x, u_input.c.x, -12143i)), 0i ^ global2[_wgslsmith_index_u32(u_input.b.x, 24u)], ~1i) | _wgslsmith_add_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(29479u, 24u)], u_input.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)]), vec3<i32>(global2[_wgslsmith_index_u32(34189u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57421u, 24u)], 24u)]) << (u_input.b % vec3<u32>(32u)))), -_wgslsmith_div_vec3_i32(vec3<i32>(0i, firstLeadingBit(1i), -global2[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-7888i, u_input.c.x, global2[_wgslsmith_index_u32(48343u, 24u)]), -vec3<i32>(global2[_wgslsmith_index_u32(0u, 24u)], 0i, u_input.a), vec3<i32>(2147483647i, -59515i, 23559i) & vec3<i32>(0i, 36291i, u_input.c.x))), -vec4<i32>(_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59698u, 24u)], 24u)], u_input.a), 3629i, _wgslsmith_sub_i32(abs(u_input.a), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -2147483647i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(1u, 24u)], u_input.a, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<i32>(7244i, -33914i, -2147483647i))), abs(vec4<u32>(~7308u, ~max(global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.x), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 30757u), u_input.b.zz) | ~u_input.b.x)));
}

