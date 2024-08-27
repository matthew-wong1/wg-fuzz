struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(1u, 58102u, 0u, 4294967295u), 1383f, 0u), Struct_1(vec4<u32>(0u, 43353u, 9565u, 0u), -1339f, 0u), Struct_1(vec4<u32>(1u, 0u, 1u, 0u), -1599f, 1u), Struct_1(vec4<u32>(51929u, 41223u, 0u, 0u), 595f, 4294967295u), Struct_1(vec4<u32>(50928u, 119953u, 16604u, 0u), 1027f, 1u), Struct_1(vec4<u32>(42529u, 7075u, 4294967295u, 0u), -592f, 9228u), Struct_1(vec4<u32>(0u, 8883u, 46094u, 40447u), 249f, 12048u), Struct_1(vec4<u32>(15632u, 0u, 1u, 4294967295u), 488f, 0u), Struct_1(vec4<u32>(20882u, 29598u, 45719u, 4294967295u), 717f, 4294967295u), Struct_1(vec4<u32>(9677u, 4294967295u, 11446u, 24079u), 1624f, 1u), Struct_1(vec4<u32>(8360u, 4294967295u, 61205u, 4294967295u), 178f, 4294967295u), Struct_1(vec4<u32>(92294u, 8618u, 48711u, 0u), -142f, 4294967295u), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 30405u), 159f, 0u), Struct_1(vec4<u32>(31779u, 0u, 20927u, 0u), -917f, 4294967295u), Struct_1(vec4<u32>(1762u, 60224u, 0u, 22983u), -915f, 0u), Struct_1(vec4<u32>(0u, 29654u, 4294967295u, 49059u), -819f, 1u), Struct_1(vec4<u32>(36814u, 57670u, 4294967295u, 1u), 1355f, 10514u), Struct_1(vec4<u32>(0u, 4294967295u, 34829u, 9406u), 505f, 99845u), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4931u), -1073f, 62526u), Struct_1(vec4<u32>(53897u, 0u, 4294967295u, 1u), -1000f, 7068u), Struct_1(vec4<u32>(64680u, 65025u, 23375u, 1u), -202f, 12903u), Struct_1(vec4<u32>(0u, 37137u, 63374u, 63366u), -785f, 1u));

var<private> global1: vec3<u32> = vec3<u32>(18291u, 22777u, 0u);

var<private> global2: array<i32, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_0 = true;
    global1 = firstTrailingBit(~_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 1u, 4294967295u), vec3<u32>(u_input.e.x, 37396u, global1.x)), ~vec3<u32>(u_input.e.x, 19426u, 71765u) ^ ~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(63806u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 4294967295u, 4294967295u)) & max(vec3<u32>(global1.x, 4294967295u, global1.x), vec3<u32>(u_input.e.x, global1.x, 50670u)), firstLeadingBit(vec3<u32>(global1.x, global1.x, 4294967295u)))), 1u);
    return _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_1.x, 20u)], ~_wgslsmith_clamp_i32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 7915u), vec2<u32>(global1.x, 0u)), 20u)], global2[_wgslsmith_index_u32((u_input.e.x << (50164u % 32u)) | _wgslsmith_sub_u32(1u, global1.x), 20u)], -global2[_wgslsmith_index_u32(1u, 20u)] | ~0i));
}

fn func_2() -> Struct_3 {
    global2 = array<i32, 20>();
    let var_0 = vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -1i, -42583i), u_input.c) >> ((~u_input.e.x ^ u_input.e.x) % 32u), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1325f))));
    let var_1 = global0[_wgslsmith_index_u32(global1.x, 22u)];
    let var_2 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, any(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true))), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true));
    global2 = array<i32, 20>();
    return Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, var_1.b)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(var_1.a.x, var_1.a.x), firstLeadingBit(~u_input.e.x)), 22u)]), abs(_wgslsmith_dot_vec3_i32(countOneBits(u_input.c), vec3<i32>(33730i, u_input.b, -1i)) | (max(-1i, 33726i) ^ global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a.x, 0u), 20u)])), var_2.zz, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, _wgslsmith_f_op_f32(153f - var_1.b))), Struct_1(select(vec4<u32>(37u, u_input.e.x, var_1.c, 4294967295u), firstTrailingBit(vec4<u32>(global1.x, 0u, 21879u, u_input.e.x)), var_2), _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(-var_1.b))), 1u)), ~(~var_0.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a.x, -923f, arg_2.a.x, arg_0.b.b)))))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(1200f - _wgslsmith_f_op_f32(min(func_2().a.a.x, func_2().a.b.b)));
    var_0 = vec4<f32>(arg_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_1.a.a.x, all(vec3<bool>(var_1.c.x, true, var_1.c.x)))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1816f)))))), -405f, _wgslsmith_f_op_f32(-func_2().d.a.x));
    global1 = arg_2.b.a.zwy;
    return Struct_1(~abs(vec4<u32>(var_1.a.b.c, arg_1.b.a.x ^ 1u, ~0u, global1.x)), var_0.x, 1u);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3.a.b.a.zyz;
    var_0 = ~arg_3.d.b.a.zxy;
    let var_1 = arg_0;
    let var_2 = arg_3;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1214f)), !(!all(vec4<bool>(true, false, false, var_2.c.x))))), arg_3.d.b.b);
    return countOneBits(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 20>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(335f, -918f) - vec2<f32>(-1621f, 2036f)))), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -349f)), -620f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1164f, -1085f)))), vec2<bool>(true, any(vec2<bool>(true, true))))), !any(vec3<bool>(false, true, true)) & all(vec2<bool>(false, false)))), Struct_1(~(~(~vec4<u32>(u_input.e.x, global1.x, u_input.e.x, 62888u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-871f)))))), firstLeadingBit(global1.x)));
    global1 = vec3<u32>(1u, var_0.b.a.x, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-185f + 279f), _wgslsmith_f_op_f32(min(var_0.b.b, var_0.b.b)), _wgslsmith_f_op_f32(ceil(-1000f))) - vec3<f32>(1430f, var_0.a.x, _wgslsmith_f_op_f32(-1816f + -1012f))), _wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-202f, -1000f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1092f, -1029f)) * var_0.a.x)), Struct_3(Struct_2(vec2<f32>(1776f, 1000f), func_1(Struct_2(vec2<f32>(1802f, 280f), Struct_1(vec4<u32>(u_input.e.x, global1.x, global1.x, 0u), 102f, 59570u)), Struct_2(var_0.a, Struct_1(vec4<u32>(81524u, 5834u, global1.x, 36776u), -1524f, 1u)), Struct_2(vec2<f32>(-790f, var_0.b.b), global0[_wgslsmith_index_u32(var_0.b.a.x, 22u)]), vec2<bool>(false, false))), ~(-6178i), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a), func_1(Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.b.b, 55934u)), Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.b.b, 1u)), Struct_2(var_0.a, var_0.b), vec2<bool>(false, true))), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(global1.x, 20u)], global2[_wgslsmith_index_u32(u_input.e.x, 20u)])))));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_1 = -2115f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-_wgslsmith_mod_vec2_i32(-u_input.c.xy, vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.e.x, 20u)]))), u_input.e.x | global1.x, vec3<i32>(~func_3(_wgslsmith_f_op_f32(var_1 - -434f)), global2[_wgslsmith_index_u32(24995u, 20u)], _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-32698i, u_input.b, 1i, 0i), vec4<i32>(15657i, 1236i, u_input.d, global2[_wgslsmith_index_u32(global1.x, 20u)]))), -31982i)), var_0.b.a.yw & (vec2<u32>(u_input.e.x, 4294967295u) & vec2<u32>(var_0.b.a.x, ~u_input.e.x)));
}

