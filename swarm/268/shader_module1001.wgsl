struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: f32 = 615f;

var<private> global2: array<bool, 23>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec2<u32> {
    global2 = array<bool, 23>();
    let var_0 = arg_0.x;
    let var_1 = Struct_1(15964i, vec3<u32>(arg_1, firstLeadingBit(0u), 1u >> (firstLeadingBit(77906u ^ global0[_wgslsmith_index_u32(4294967295u, 15u)]) % 32u)), 0u, -u_input.b, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 15u)], 15u)], arg_1, arg_1)), ~(~vec4<u32>(1u, 1u, arg_1, global0[_wgslsmith_index_u32(32705u, 15u)]))), vec4<u32>(1u, _wgslsmith_sub_u32(~2842u, ~global0[_wgslsmith_index_u32(0u, 15u)]), 0u, ~1u)));
    let var_2 = var_1.e.xyz;
    global1 = arg_0.x;
    return _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(select(~0u, _wgslsmith_add_u32(arg_1, 4294967295u), 1u == var_1.e.x), max(countOneBits(1u), _wgslsmith_add_u32(42622u, arg_1))), var_2.yz), ~_wgslsmith_mult_vec2_u32(~var_1.b.yy, select(_wgslsmith_mod_vec2_u32(var_1.b.xx, var_2.xy), vec2<u32>(var_1.b.x, 29313u) ^ var_2.xy, vec2<bool>(global2[_wgslsmith_index_u32(var_2.x, 23u)], true))));
}

fn func_1() -> vec4<i32> {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1358f)) - 1556f)), -1380f);
    global0 = array<u32, 15>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-917f)), 2222f);
    let var_0 = Struct_1(~_wgslsmith_mult_i32(33034i, -(2147483647i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)] % 32u))), ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15818u, 15u)], 15u)], 15u)], 15u)]), abs(vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 15u)], 9534u)))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(_wgslsmith_sub_u32(13588u, global0[_wgslsmith_index_u32(60718u, 15u)]), 53604u), vec2<u32>(4717u, 1u)), max(vec2<u32>(global0[_wgslsmith_index_u32(66749u, 15u)], global0[_wgslsmith_index_u32(~0u, 15u)]), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1338f, 1788f, -1000f), vec3<f32>(1000f, 1493f, -110f)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45891u, 15u)], 15u)])))), reverseBits(u_input.b ^ select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 20096i, 20279i, 26856i), u_input.b), -vec4<i32>(u_input.a.x, -1693i, 9746i, u_input.b.x), any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 23u)], false)))), vec4<u32>(~abs(global0[_wgslsmith_index_u32(64255u, 15u)]) | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-762f, -1065f, -904f) + vec3<f32>(-391f, 101f, -369f)), _wgslsmith_add_u32(12169u, global0[_wgslsmith_index_u32(4294967295u, 15u)])).x, 15u)], 15u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(734u, 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40998u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(1u, 15u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37976u, 15u)], 15u)], 31705u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86080u, 15u)], 15u)], 15u)], 15u)]) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71784u, 15u)], 15u)], 15u)]), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49567u, 15u)], 15u)], 15u)], 15u)], 15u)], ~global0[_wgslsmith_index_u32(0u, 15u)])), 15u)], 1u, countOneBits((87530u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98397u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)]) | _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 15u)], 1u, global0[_wgslsmith_index_u32(1u, 15u)]))));
    let var_1 = Struct_1(var_0.a, vec3<u32>(~(~abs(4294967295u)), firstTrailingBit(max(global0[_wgslsmith_index_u32(var_0.b.x, 15u)], 98895u) >> (28184u % 32u)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(465f, -736f, -1000f))), 41642u).x), 0u, var_0.d, max(var_0.e, vec4<u32>(global0[_wgslsmith_index_u32(var_0.e.x, 15u)], ~(global0[_wgslsmith_index_u32(0u, 15u)] | 28149u), ~(~var_0.c), _wgslsmith_mult_u32(32210u, 1u))));
    return vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -_wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(var_0.a, u_input.b.x, 28313i))), (-37980i & _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, 0i), firstLeadingBit(var_1.d.x))) << (70908u % 32u), 1i, 0i);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global2 = array<bool, 23>();
    global2 = array<bool, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-686f, arg_0.x), arg_0.zy))) * arg_0.yx);
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~(~firstTrailingBit(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 98701u, 104967u)))), 23u)];
    var var_2 = !any(select(vec4<bool>(false, all(vec4<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20686u, 15u)], 15u)], 23u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 23u)], false)), false, global2[_wgslsmith_index_u32(max(11477u, 108119u), 23u)]), select(!vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(944u, 15u)], 15u)], 23u)], true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 23u)], global2[_wgslsmith_index_u32(6476u, 23u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 23u)], true, false), !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 23u)]), !any(vec4<bool>(false, true, false, true))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1613f + -1077f), _wgslsmith_f_op_f32(floor(936f)), true))))))));
    let var_1 = func_1();
    global0 = array<u32, 15>();
    global2 = array<bool, 23>();
    global0 = array<u32, 15>();
    var var_2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-697f, -249f, _wgslsmith_f_op_f32(ceil(-1116f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(280f, 156f, 356f))))))));
    var var_3 = _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, _wgslsmith_mult_i32(46022i, _wgslsmith_clamp_i32(-2147483647i, ~(-25159i), ~(-29428i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(118109u, 15u)], 15u)] % 32u)))));
    let var_4 = var_1.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(591f, -1766f, -902f), vec3<f32>(102f, 348f, -740f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1149f, 779f, -372f) * vec3<f32>(-1000f, 668f, -1268f))))));
}

