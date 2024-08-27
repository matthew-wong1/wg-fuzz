struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 1>;

var<private> global2: array<i32, 6>;

var<private> global3: vec4<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = -(~abs(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 1u)] ^ global2[_wgslsmith_index_u32(arg_1.b, 6u)], select(-22637i, global1[_wgslsmith_index_u32(u_input.e, 1u)], true))));
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = arg_1;
    var var_3 = true;
    var var_4 = ~18826u;
    return (1u >> ((~arg_0.x | _wgslsmith_mult_u32(max(u_input.c.x, u_input.e), arg_1.b)) % 32u)) ^ u_input.d;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(-global3.zw, func_3(_wgslsmith_div_vec2_u32(~u_input.b, vec2<u32>(~46999u, global0.x)), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 6u)], 27666i, global1[_wgslsmith_index_u32(global0.x, 1u)], 7753i), vec4<i32>(global1[_wgslsmith_index_u32(81395u, 1u)], -32367i, global3.x, 0i)), global1[_wgslsmith_index_u32(~26087u, 1u)]), 2418u, ~(~global2[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1519f, -462f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(426f - 593f) * _wgslsmith_f_op_f32(select(1309f, -1155f, true))))), global2[_wgslsmith_index_u32(global0.x, 6u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1348f, 1393f), vec2<f32>(695f, 1109f)) * vec2<f32>(-710f, 740f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-798f, 1366f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1239f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(166f, 1117f)))), _wgslsmith_f_op_f32(f32(-1f) * -1009f));
    global2 = array<i32, 6>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, var_0.e, _wgslsmith_f_op_f32(var_0.e + var_0.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.d.x, 942f)) * vec3<f32>(250f, 390f, var_0.e)), vec3<f32>(_wgslsmith_f_op_f32(-860f + 186f), _wgslsmith_f_op_f32(var_0.d.x + -668f), _wgslsmith_f_op_f32(-var_0.d.x)))) - vec3<f32>(320f, _wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(step(var_0.e, var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x))))), select(vec3<bool>(!all(vec3<bool>(false, true, true)), true, true), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), 1u > global0.x)))));
    global2 = array<i32, 6>();
    var var_2 = Struct_1(max(var_0.a, vec2<i32>(global3.x, _wgslsmith_dot_vec3_i32(global3.xyy, vec3<i32>(var_0.a.x, 1i, global2[_wgslsmith_index_u32(17829u, 6u)]) & vec3<i32>(global2[_wgslsmith_index_u32(9542u, 6u)], -2147483647i, global3.x)))), func_3(~vec2<u32>(var_0.b, _wgslsmith_mod_u32(u_input.d, u_input.b.x)), Struct_1(-vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 1u)], 0i), reverseBits(1u), reverseBits(-1i), var_1.xy, _wgslsmith_f_op_f32(-316f * _wgslsmith_f_op_f32(-2237f + var_0.d.x)))), _wgslsmith_clamp_i32(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(36202u, 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)], -7310i), global3.ywz)), var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(27050u, 6u)], 0i, 1801i, -2147483647i), vec4<i32>(13089i, global2[_wgslsmith_index_u32(var_0.b, 6u)], 55166i, var_0.a.x)), -2147483647i, global2[_wgslsmith_index_u32(75667u, 6u)]), ~global3.zwy)), var_1.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1634f)) + _wgslsmith_f_op_f32(min(-1196f, var_1.x)))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-808f)))));
}

fn func_1() -> f32 {
    var var_0 = abs(vec4<i32>(_wgslsmith_dot_vec3_i32(global3.yzy, global3.yzz), 65226i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2419i, -50346i), global3.yw), 1i), global3.x)) & -firstTrailingBit(vec4<i32>(-13683i, global3.x, -71046i, 6747i ^ global1[_wgslsmith_index_u32(u_input.b.x, 1u)]));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(var_1, 159f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, -2710f))) - vec2<f32>(var_1, _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_div_f32(var_1, 730f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1, -783f)))))));
    var var_3 = select(all(vec3<bool>(true, true, true)) & true, true, true) & (true != all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))));
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, ~_wgslsmith_div_u32(global0.x, 42955u) & ~(~u_input.b.x)), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + 1108f), var_2.x, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) + var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    var var_0 = _wgslsmith_f_op_f32(-746f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1038f), -841f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-1789f - _wgslsmith_div_f32(787f, -974f))))));
    global0 = vec2<u32>(~0u, 19428u) & u_input.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(max(-838f, -734f))));
    global3 = -vec4<i32>(-(global3.x << (_wgslsmith_mod_u32(u_input.a, u_input.c.x) % 32u)), -1i, global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(u_input.c.x, 1u), ~global0.x) >> (~4294967295u % 32u), 1u)], max(_wgslsmith_mod_i32(2147483647i, 2147483647i) & global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.e), 1u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -20543i, global3.x, -1i), vec4<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)]))));
    let var_1 = Struct_1(~vec2<i32>(i32(-1i) * -11913i, 2147483647i), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, u_input.b), select(u_input.b, u_input.b, false)), ~0u >> ((global0.x ^ 84196u) % 32u))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(11066u, 4294967295u, 73900u, 0u)) & (vec4<u32>(0u, global0.x, global0.x, 0u) | vec4<u32>(4294967295u, global0.x, u_input.e, global0.x)), vec4<u32>(4962u | u_input.e, ~4294967295u, 1211u, _wgslsmith_mult_u32(u_input.d, 4294967295u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, global0.x, 99684u, 0u), vec4<u32>(0u, u_input.b.x, global0.x, 4294967295u) >> (vec4<u32>(global0.x, global0.x, 4294967295u, 0u) % vec4<u32>(32u))), ~firstLeadingBit(10107u), min(global0.x, 0u))), 1u)], vec2<f32>(738f, -1247f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)) + 861f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f * _wgslsmith_div_f32(-869f, 574f)) + _wgslsmith_f_op_f32(step(-230f, -171f))))));
    let var_2 = Struct_1(global3.yw, ~u_input.b.x, _wgslsmith_mult_i32(1i, -69806i), var_1.d, -868f);
    var var_3 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global0.x, u_input.c.x, var_1.b, u_input.b.x)), ~vec4<u32>(4294967295u, var_1.b, 1u, global0.x)));
    global1 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(971f, var_1.d.x), -262f) - var_1.d));
}

