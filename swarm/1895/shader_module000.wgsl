struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27>;

var<private> global1: array<vec4<f32>, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    global0 = array<vec2<i32>, 27>();
    global1 = array<vec4<f32>, 32>();
    global1 = array<vec4<f32>, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(ceil(arg_1.a.b)), _wgslsmith_f_op_f32(floor(795f)), _wgslsmith_f_op_f32(min(1295f, arg_0.c))) * _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(arg_0.a << (4294967295u % 32u), 32u)] + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, arg_1.a.c, arg_1.a.c, 925f), vec4<f32>(1413f, arg_0.b, 267f, 1486f)))) * _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(select(reverseBits(1u), arg_0.a, arg_2), 32u)])) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, -1000f, arg_0.c, arg_1.a.b)) + global1[_wgslsmith_index_u32(countOneBits(arg_1.a.a), 32u)])), vec4<f32>(-1171f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.b, arg_0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1753f), _wgslsmith_f_op_f32(-arg_1.a.c), all(vec4<bool>(false, false, arg_2, arg_2)))), _wgslsmith_f_op_f32(-159f * arg_1.a.b))));
    var var_1 = Struct_1(0u, _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    return !vec4<bool>(any(!vec4<bool>(arg_2, true, arg_2, arg_2)), arg_0.a <= reverseBits(max(1u, 80313u)), u_input.b.x != -43060i, all(!(!vec2<bool>(arg_2, arg_2))));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = ~(~(~4294967295u >> (_wgslsmith_clamp_u32(u_input.a.x & 56059u, 0u, _wgslsmith_add_u32(u_input.c, u_input.a.x)) % 32u)));
    let var_1 = Struct_1(min(4294967295u, 0u), 1f, 1427f);
    global1 = array<vec4<f32>, 32>();
    let var_2 = Struct_2(var_1);
    return arg_3.xw;
}

fn func_2() -> Struct_1 {
    let var_0 = !select(select(func_4(vec2<i32>(595i, u_input.b.x), -283f, vec3<f32>(-579f, -1048f, 802f), func_3(Struct_1(u_input.d.x, -1690f, 206f), Struct_2(Struct_1(1u, -553f, 122f)), true)), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(false, true, false, false)), false), vec2<bool>(any(vec3<bool>(true, true, true)), select(4294967295u, u_input.a.x, false) > u_input.a.x));
    global0 = array<vec2<i32>, 27>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_u32(select(u_input.c, firstTrailingBit(u_input.d.x), true), countOneBits(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1720f, -159f), 402f, any(vec3<bool>(false, false, true))))), 427f));
    global0 = array<vec2<i32>, 27>();
    let var_2 = Struct_2(Struct_1(~1u, _wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(var_1.a.c + var_1.a.c)))));
    return var_2.a;
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    global0 = array<vec2<i32>, 27>();
    let var_0 = ~arg_0.xww;
    global1 = array<vec4<f32>, 32>();
    global0 = array<vec2<i32>, 27>();
    var var_1 = func_2();
    return StorageBuffer(u_input.b.x, vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b + var_1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f - -511f) + var_1.c) * var_1.b)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(floor(-259f))), 695f)), _wgslsmith_f_op_f32(-var_1.c), var_1.c), -422f, max(abs(u_input.d), ~var_0.xx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 27>();
    let x = u_input.a;
    s_output = func_1(vec4<u32>(min(u_input.a.x, ~u_input.c), 4294967295u, ~u_input.a.x << (~(~u_input.c) % 32u), _wgslsmith_clamp_u32(u_input.c, ~abs(0u), abs(~0u))));
}

