struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: array<vec4<f32>, 30>;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(2147483647i, -22176i, 1i), vec3<i32>(2147483647i, -78593i, 2147483647i), vec3<i32>(i32(-2147483648), 20126i, -1i), vec3<i32>(-1i, -5833i, -1i), vec3<i32>(1i, -32981i, 17147i), vec3<i32>(0i, 14888i, 0i), vec3<i32>(-21480i, 1i, 1i), vec3<i32>(1i, -14514i, 0i), vec3<i32>(0i, -1i, 15678i), vec3<i32>(32717i, 27994i, 1i), vec3<i32>(24540i, -1i, -22007i), vec3<i32>(-54716i, 17305i, -13790i), vec3<i32>(-32510i, 1i, -43302i), vec3<i32>(6219i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, -15511i, 2147483647i), vec3<i32>(-7801i, i32(-2147483648), -26468i), vec3<i32>(0i, 2147483647i, -36413i), vec3<i32>(i32(-2147483648), -5021i, 46393i), vec3<i32>(24377i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(63679i, -7339i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i));

var<private> global3: array<f32, 3>;

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    global1 = array<vec4<f32>, 30>();
    global0 = array<vec4<u32>, 32>();
    global3 = array<f32, 3>();
    global1 = array<vec4<f32>, 30>();
    global4 = array<Struct_2, 23>();
    return firstTrailingBit(select(u_input.a.x, 21209u, !(1f < _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 3u)]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = ~select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a.x, 13698u, 1u, u_input.a.x), vec4<u32>(18385u, 49536u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 31959u, u_input.a.x)), ~(vec4<u32>(u_input.a.x, 50838u, u_input.a.x, 4294967295u) >> (global0[_wgslsmith_index_u32(0u, 32u)] % vec4<u32>(32u)))), max(select(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)], vec4<u32>(1u, u_input.a.x, 4294967295u, 38764u), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)), abs(abs(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(392f, -943f, global3[_wgslsmith_index_u32(69537u, 3u)]) - vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], -367f, -644f))))) + vec3<f32>(-1665f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-108f, 422f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) + -545f))));
    let var_2 = _wgslsmith_add_vec2_u32(var_0.xx, ~(~max(_wgslsmith_mod_vec2_u32(var_0.yy, u_input.a), ~u_input.a)));
    global2 = array<vec3<i32>, 22>();
    var var_3 = _wgslsmith_f_op_f32(max(-563f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.x, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-935f, var_1.x), _wgslsmith_f_op_f32(select(var_1.x, -663f, true))))))));
    return u_input.b.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<f32>(1f, 1f);
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2() ^ u_input.a.x, firstTrailingBit(~4294967295u), u_input.a.x), 23u)];
    var var_2 = Struct_1(i32(-1i) * -2147483647i);
    var var_3 = Struct_1(abs(~_wgslsmith_add_i32(-1i, 2147483647i >> (0u % 32u))));
    global4 = array<Struct_2, 23>();
    return StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a.x, 2459u), vec2<u32>(u_input.a.x, 4294967295u)) << (vec2<u32>(u_input.a.x, ~u_input.a.x) % vec2<u32>(32u)), func_3(44208i, var_1.a, global4[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(0u, 3u)], 479f), vec2<f32>(622f, 192f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -754f))), true))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 2257f))))))), global2[_wgslsmith_index_u32(firstLeadingBit(1u), 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 32>();
    global2 = array<vec3<i32>, 22>();
    let var_0 = ~u_input.a;
    let var_1 = ~0u;
    global2 = array<vec3<i32>, 22>();
    global4 = array<Struct_2, 23>();
    global1 = array<vec4<f32>, 30>();
    global3 = array<f32, 3>();
    global2 = array<vec3<i32>, 22>();
    let x = u_input.a;
    s_output = func_1();
}

