struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(526f, 1979f, 1297f, 1000f, -358f, 734f, 265f, -1026f, -1782f, 665f, -1745f, 1216f);

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 36973u, 39713u, 66418u), vec4<u32>(142305u, 1u, 4294967295u, 13845u), vec4<u32>(1u, 0u, 24588u, 12621u), vec4<u32>(4294967295u, 4294967295u, 0u, 35970u), vec4<u32>(136498u, 4294967295u, 4294967295u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = Struct_2(-930f);
    global0 = array<f32, 12>();
    global2 = array<vec4<u32>, 5>();
    global1 = _wgslsmith_f_op_f32(-1249f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(772f)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-230f)));
    return global2[_wgslsmith_index_u32(1u, 5u)];
}

fn func_4(arg_0: vec4<u32>) -> bool {
    global2 = array<vec4<u32>, 5>();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 12u)]);
    let var_1 = firstLeadingBit(_wgslsmith_mult_i32(-28985i, u_input.a.x));
    let var_2 = vec3<bool>(true, true, true);
    global0 = array<f32, 12>();
    return all(var_2);
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    global2 = array<vec4<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 12u)])), _wgslsmith_f_op_f32(676f + -1321f)));
    var var_1 = func_4(_wgslsmith_div_vec4_u32(min(_wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(32802u, 5u)], vec4<u32>(24284u, u_input.b, 58786u, u_input.b)) | func_3(vec3<f32>(global0[_wgslsmith_index_u32(28974u, 12u)], global0[_wgslsmith_index_u32(14072u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 40427u, 0u), global2[_wgslsmith_index_u32(1u, 5u)])), vec4<u32>(~(~24993u), reverseBits(reverseBits(u_input.b)), u_input.b, 28724u)));
    var var_2 = _wgslsmith_f_op_f32(trunc(var_0));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(95860u, 12u)]);
    return vec3<bool>(true, select(all(vec4<bool>(any(vec2<bool>(false, true)), true, true, true)), true, true), true);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = u_input.b << (_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1, 19370u, 0u), vec3<u32>(0u, arg_1, u_input.b), true), vec3<u32>(u_input.b, arg_1, 1u) ^ vec3<u32>(arg_1, u_input.b, u_input.b)) | firstLeadingBit(arg_1)) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], -403f, -260f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(209f, global0[_wgslsmith_index_u32(24782u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]) - vec3<f32>(-2427f, global0[_wgslsmith_index_u32(arg_1, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])), vec3<f32>(-1527f, global0[_wgslsmith_index_u32(0u, 12u)], 1610f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, -1000f, global0[_wgslsmith_index_u32(u_input.b, 12u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], 1617f, global0[_wgslsmith_index_u32(91596u, 12u)])), !vec3<bool>(arg_0, arg_0, false))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 777f, -1094f))))), true))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 12u)]), _wgslsmith_f_op_f32(-var_1.x)))), -895f, var_1.x)));
    let var_2 = !select(func_2(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-9518i, 3292i, -27003i), vec3<i32>(0i, u_input.a.x, u_input.a.x)))), !(!vec3<bool>(arg_0, arg_0, arg_0)), true);
    var_0 = 1u;
    return Struct_2(_wgslsmith_f_op_f32(round(-896f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = vec2<bool>(!(!func_4(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), func_4(vec4<u32>(u_input.b, abs(u_input.b), _wgslsmith_mult_u32(1u, 0u), u_input.b << (u_input.b % 32u))) & any(vec2<bool>(true, true)));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, min(91993u, u_input.b), 45489u), ~(~vec4<u32>(4294967295u, 39485u, 121204u, 0u)))), 12u)];
    global1 = arg_1.a;
    var_0 = !(!(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), var_0.x))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 12u)]) - 269f));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(func_5(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 63033u, u_input.b), vec4<u32>(38337u, 79540u, 46498u, 20527u)), 12u)]), func_1(true, u_input.b)), u_input.b & ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 96193u), abs(vec2<u32>(4294967295u, u_input.b))));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(var_0, 63451u)) & vec2<u32>(var_0, 14246u), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.b))), ~(~vec2<u32>(0u, var_0))), 68183u, u_input.b);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(89666u), 12u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(535f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 12u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-134f))) + global0[_wgslsmith_index_u32(~(~4294967295u), 12u)])));
    let var_3 = Struct_1(vec2<bool>(all(vec4<bool>(true, func_2(vec3<i32>(40774i, -44986i, u_input.a.x)).x, false, true)), true), -303f, func_2(-countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(3681i, u_input.a.x, u_input.a.x), vec3<i32>(33857i, 4064i, 2147483647i)))).yx, _wgslsmith_mult_i32(20455i, u_input.a.x), vec2<bool>(true, true));
    let var_4 = func_1(!(any(!vec4<bool>(var_3.a.x, false, false, var_3.e.x)) != (func_2(vec3<i32>(u_input.a.x, var_3.d, -1i)).x && (var_3.a.x || var_3.c.x))), 1u);
    var var_5 = func_2(select(select(~select(vec3<i32>(-27274i, u_input.a.x, 1i), vec3<i32>(11087i, -41499i, u_input.a.x), vec3<bool>(var_3.e.x, true, true)), vec3<i32>(var_3.d, u_input.a.x, var_3.d) | vec3<i32>(-34977i, var_3.d, var_3.d), !(false | var_3.c.x)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(var_3.d, -1i, var_3.d)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(var_3.d, u_input.a.x, 1i), vec3<i32>(-1i, var_3.d, u_input.a.x)), vec3<i32>(-1i, firstLeadingBit(u_input.a.x), -2147483647i)), !any(vec4<bool>(var_3.a.x, var_3.a.x, true, false))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1083f, global0[_wgslsmith_index_u32(var_1.x, 12u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], -1036f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-581f, _wgslsmith_f_op_f32(f32(-1f) * -120f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(49325i ^ reverseBits(-u_input.a.x >> (var_1.x % 32u)), -27276i, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(true, 4203u).a))), countOneBits(u_input.a.x), vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_1.x, var_1.x, u_input.b) << (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u))), (vec3<u32>(4294967295u, 755u, var_0) ^ vec3<u32>(68921u, 1u, var_0)) << (vec3<u32>(var_0, 17694u, 48147u) % vec3<u32>(32u))), var_0));
}

