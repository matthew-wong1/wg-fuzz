struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 25>;

var<private> global3: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(-19338i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 15609i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(21729i, 0i), vec2<i32>(i32(-2147483648), -13123i), vec2<i32>(0i, 15444i), vec2<i32>(-62769i, 1i), vec2<i32>(-29222i, i32(-2147483648)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = reverseBits(490i);
    return 262f;
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(~u_input.a, u_input.a, 2147483647i), -u_input.c.x), u_input.c.x, -46679i);
    global3 = array<vec2<i32>, 9>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0, arg_0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-457f * global0.b) + global1.b)))));
    global2 = array<vec3<u32>, 25>();
    let var_2 = arg_0.b;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, arg_0.b.a, global0.a, arg_0.b.a) + vec4<f32>(-475f, arg_0.b.b, -103f, arg_0.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, arg_0.b.b, -823f, -770f)), !arg_0.d)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.b, -1677f, global1.a, 754f), vec4<f32>(global0.b, global1.a, 820f, -1000f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, global1.b, 997f, 572f) - vec4<f32>(-825f, global1.a, 792f, global0.a))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, -325f, 880f, global0.a), vec4<f32>(global0.b, -2837f, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, 830f, global0.b, arg_0.b.a)))))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = -1000f;
    var var_1 = vec4<i32>(12119i, u_input.a, arg_0, -37984i);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(arg_3.x, Struct_1(-123f, -600f), true, false)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.b)), global0.b, global0.b, global0.b) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, 483f, global0.b, -1698f)), vec4<f32>(438f, -1000f, global0.a, -1000f), false)))) + vec4<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b - -1246f), global1.b)), _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(1011f + 1798f)))))));
    let var_3 = Struct_3(Struct_2(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(22721u, u_input.d, 4294967295u), 4294967295u)), Struct_1(global1.b, _wgslsmith_f_op_f32(-global1.a)), true, all(vec4<bool>(true, true, true, true))));
    let var_4 = countOneBits(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(23318u, 4294967295u), arg_1));
    return var_3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-u_input.c.x, u_input.d, -_wgslsmith_div_vec3_i32(u_input.c.xzz, u_input.c.zyy), countOneBits(vec4<u32>(~u_input.d, u_input.d, 0u, ~(~4294967295u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(-658f)), _wgslsmith_f_op_f32(-global0.a));
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(max(~u_input.d, u_input.d), 1u, u_input.d), select(~vec3<u32>(40427u, u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.d)), global2[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 25u)], select(!vec3<bool>(var_0, false, var_0), select(!vec3<bool>(var_0, true, var_0), select(vec3<bool>(true, var_0, true), vec3<bool>(true, true, false), vec3<bool>(var_0, var_0, false)), 10301i < u_input.b), var_0)));
    let var_2 = ~select(vec3<u32>(~u_input.d ^ ~u_input.d, _wgslsmith_mod_u32(max(0u, 51111u), var_1), 68800u), vec3<u32>(_wgslsmith_mult_u32(var_1, 78907u), _wgslsmith_sub_u32(var_1, 1u), abs(58447u)) >> (((global2[_wgslsmith_index_u32(var_1, 25u)] ^ vec3<u32>(var_1, 36645u, u_input.d)) >> ((vec3<u32>(4294967295u, 49683u, var_1) & global2[_wgslsmith_index_u32(4699u, 25u)]) % vec3<u32>(32u))) % vec3<u32>(32u)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, var_0, false), !vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, false)), select(false, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(u_input.c.x ^ u_input.b, firstLeadingBit(-7323i), ~(-2147483647i)) | (_wgslsmith_sub_vec3_i32(u_input.c.zxx, u_input.c.xzw) >> (~global2[_wgslsmith_index_u32(15358u, 25u)] % vec3<u32>(32u)))) ^ vec3<i32>(46662i, 2147483647i, u_input.b));
}

