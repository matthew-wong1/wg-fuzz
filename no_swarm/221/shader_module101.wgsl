struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, true, true, true, true, false);

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    global1 = array<Struct_1, 7>();
    global0 = array<bool, 8>();
    global1 = array<Struct_1, 7>();
    var var_0 = ~u_input.a;
    global0 = array<bool, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-628f, 658f, 787f, 1016f), vec4<f32>(-1798f, 1188f, 512f, 1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-901f, 310f, -638f, 285f))))));
    global1 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + _wgslsmith_f_op_f32(func_3(Struct_2(~vec2<u32>(64475u, arg_0), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, 15640u), 7u)], _wgslsmith_f_op_f32(trunc(var_0.x)), global1[_wgslsmith_index_u32(arg_0 & u_input.c.x, 7u)]), var_0.x, var_0.xyy, _wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_f_op_f32(sign(130f)), !(!global0[_wgslsmith_index_u32(arg_0 << (36689u % 32u), 8u)])));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1113f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x))), -779f)), -526f, _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f - var_0.x) - _wgslsmith_f_op_f32(-383f + -607f)));
    let var_2 = ~firstTrailingBit(~vec4<i32>(u_input.a, u_input.a, 11335i, 39959i)) >> (abs(~vec4<u32>(_wgslsmith_div_u32(4294967295u, 4973u), u_input.c.x, u_input.c.x, 4294967295u)) % vec4<u32>(32u));
    return global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(5769u, ~_wgslsmith_add_u32(u_input.c.x, firstTrailingBit(4294967295u))), 7u)];
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = func_2(_wgslsmith_mod_u32(4294967295u, 34887u));
    var var_1 = vec2<i32>(u_input.a, firstTrailingBit(i32(-1i) * -44477i));
    global0 = array<bool, 8>();
    let var_2 = global1[_wgslsmith_index_u32(arg_0.a, 7u)];
    global1 = array<Struct_1, 7>();
    return select(any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(19346u, 8u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a, 8u)], false)), select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.a, 8u)]), vec2<bool>(false, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(21294u, 8u)], true)), vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(55319u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(arg_0.a, 8u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))), vec2<bool>(true, false))), true, global0[_wgslsmith_index_u32(~arg_0.a, 8u)] | true);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3;
    global1 = array<Struct_1, 7>();
    let var_1 = true;
    let var_2 = vec4<bool>(~u_input.a > 1i, true, !func_4(func_2(32767u)), -firstTrailingBit(-u_input.b) <= -31727i);
    global0 = array<bool, 8>();
    return _wgslsmith_add_i32(i32(-1i) * -arg_2, _wgslsmith_add_i32(abs(u_input.b), ~arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) - 1598f), _wgslsmith_f_op_f32(604f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -676f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -402f))))));
    var var_1 = ~func_1(var_0, u_input.a, countOneBits(select(u_input.a, -1i, !global0[_wgslsmith_index_u32(u_input.c.x, 8u)])), Struct_2(~vec2<u32>(u_input.c.x, 0u), Struct_1(select(4294967295u, 0u, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - var_0.x))), global1[_wgslsmith_index_u32(1898u, 7u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(abs(~23144u), ~(20284u >> (u_input.c.x % 32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 984f, var_0.x, -1000f) - vec4<f32>(var_0.x, var_0.x, var_0.x, -402f)))))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, _wgslsmith_div_u32(60573u, u_input.c.x), u_input.c.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 13294u) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 31331u) % vec4<u32>(32u)), ~vec4<u32>(2772u, u_input.c.x, 30668u, u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 18840u))), countOneBits(-_wgslsmith_div_i32(func_1(var_0, u_input.b, 0i, Struct_2(u_input.c.zx, Struct_1(60201u), var_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), u_input.a)));
}

