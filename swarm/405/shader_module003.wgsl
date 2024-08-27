struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u);

var<private> global1: f32 = -930f;

var<private> global2: f32 = 625f;

var<private> global3: i32;

var<private> global4: array<bool, 8> = array<bool, 8>(false, true, true, true, true, false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(-284f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -343f)), -2585f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(854f, -219f)), _wgslsmith_f_op_f32(502f * -2219f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(829f, 1000f) + 976f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1211f * -950f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(131f, -375f))), any(vec2<bool>(global4[_wgslsmith_index_u32(~1u, 8u)], global4[_wgslsmith_index_u32(abs(22809u), 8u)])))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(abs(_wgslsmith_mod_u32(~global0.a, ~3217u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-928f, 936f, -428f), vec3<f32>(1286f, -1318f, 862f), global4[_wgslsmith_index_u32(53476u, 8u)])))) * vec3<f32>(_wgslsmith_f_op_f32(237f - 395f), 209f, -835f))), vec3<f32>(1f, 1f, 1f)));
    let var_2 = vec2<u32>(63557u, ~global0.a);
    global2 = var_1.x;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x))))));
    return _wgslsmith_mult_i32(abs(u_input.c.x), -1i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = func_2();
    var var_1 = reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.a, _wgslsmith_clamp_u32(arg_0.a, 12834u, 0u), max(global0.a, global0.a)), vec3<u32>(arg_0.a, ~arg_0.a, ~arg_0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, arg_0.a, _wgslsmith_add_u32(44877u, arg_0.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.a, global0.a, arg_0.a), vec3<u32>(arg_0.a, 47372u, 4294967295u)))));
    global4 = array<bool, 8>();
    let var_2 = global4[_wgslsmith_index_u32(global0.a, 8u)] | global4[_wgslsmith_index_u32(firstLeadingBit(~22438u), 8u)];
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1273f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 8>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1131f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, 1030f)))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1807f, -150f), _wgslsmith_f_op_f32(func_1(Struct_1(global0.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(116f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) + -1461f)))));
    let var_0 = global4[_wgslsmith_index_u32(16550u, 8u)];
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(565f)), 1000f)) - -420f)));
    let var_1 = ~(~global0.a);
    global0 = Struct_1(_wgslsmith_mod_u32(var_1, var_1));
    let var_2 = !(!select(!select(vec4<bool>(global4[_wgslsmith_index_u32(global0.a, 8u)], global4[_wgslsmith_index_u32(1u, 8u)], false, global4[_wgslsmith_index_u32(28175u, 8u)]), vec4<bool>(global4[_wgslsmith_index_u32(global0.a, 8u)], global4[_wgslsmith_index_u32(var_1, 8u)], true, true), true), vec4<bool>(global4[_wgslsmith_index_u32(~var_1, 8u)], true, any(vec4<bool>(global4[_wgslsmith_index_u32(535u, 8u)], global4[_wgslsmith_index_u32(var_1, 8u)], global4[_wgslsmith_index_u32(var_1, 8u)], true)), global4[_wgslsmith_index_u32(93909u, 8u)]), select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 8u)], false, true, global4[_wgslsmith_index_u32(var_1, 8u)]), vec4<bool>(global4[_wgslsmith_index_u32(global0.a, 8u)], global4[_wgslsmith_index_u32(1u, 8u)], true, global4[_wgslsmith_index_u32(global0.a, 8u)]), !vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 8u)], true, false))));
    var var_3 = u_input.c.xz ^ vec2<i32>(~(-15589i) << (1u % 32u), -2147483647i << (_wgslsmith_mult_u32(~60628u, global0.a | var_1) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~max(u_input.a, _wgslsmith_mod_i32(var_3.x, var_3.x))), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1000f)))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1332f - -135f)))), 27197u >> (abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1, global0.a), 0u)) % 32u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1317f, 2714f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1657f, -1731f)))))));
}

