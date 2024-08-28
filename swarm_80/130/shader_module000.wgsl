struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 13795i, -1i));

var<private> global1: Struct_4 = Struct_4(-1358f);

var<private> global2: array<vec4<bool>, 18>;

var<private> global3: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1333f, arg_0.x))) * arg_0));
    let var_2 = global2[_wgslsmith_index_u32(810u, 18u)];
    global2 = array<vec4<bool>, 18>();
    let var_3 = arg_0;
    return Struct_1(-global0.a, firstTrailingBit(vec4<i32>(-u_input.c | u_input.c, -31172i, ~u_input.d.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.c, global0.b.x, u_input.d.x), vec4<i32>(global0.a.x, -57875i, 1i, u_input.c)))));
}

fn func_3() -> vec2<f32> {
    global3 = array<vec3<bool>, 19>();
    global2 = array<vec4<bool>, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1388f, global1.a) + vec2<f32>(global1.a, global1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) - vec2<f32>(global1.a, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-global1.a))), 950f))));
    let var_1 = Struct_4(-263f);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_f_op_f32(var_1.a * var_0.x), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + global1.a))))), -755f, global1.a)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - global1.a))), vec2<f32>(1f, 1f)));
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = global1.a;
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(select(global1.a, -1126f, true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-143f, global1.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1175f, -328f) * vec2<f32>(global1.a, 1484f))))));
    global0 = Struct_1(arg_0.b.wz, arg_0.b);
    global0 = func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-983f, -860f)))))));
    let var_2 = vec3<i32>(-1i & global0.b.x, arg_0.b.x, 1i);
    return StorageBuffer(var_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1925f, global1.a, 1504f))) - vec3<f32>(_wgslsmith_f_op_f32(2792f + global1.a), _wgslsmith_f_op_f32(min(global1.a, var_1.a.x)), var_1.a.x))), 0i, arg_0.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-889f - global1.a), global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(396f)), _wgslsmith_f_op_f32(-global1.a), true))))));
    global2 = array<vec4<bool>, 18>();
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~reverseBits(0u), 0u), u_input.e), ~(~u_input.e), 21717u);
    global3 = array<vec3<bool>, 19>();
    var var_2 = ~(~vec2<u32>(~_wgslsmith_sub_u32(var_1.x, u_input.a), firstLeadingBit(_wgslsmith_mult_u32(var_1.x, u_input.e))));
    var var_3 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(21711u, ~4294967295u, _wgslsmith_sub_u32(0u, 0u), abs(21456u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 12049u, 33737u, var_2.x), vec4<u32>(var_1.x, var_2.x, 0u, 4294967295u)), vec4<u32>(var_2.x, u_input.e, 0u, 117126u))));
    global3 = array<vec3<bool>, 19>();
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i, i32(-1i) * -19533i, 1i, _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_mult_i32(-24378i, -1i << (var_3.x % 32u)), max(global0.b.x, countOneBits(global0.b.x)))), -reverseBits(vec4<i32>(u_input.d.x, -global0.b.x, i32(-1i) * -86420i, -u_input.d.x)));
    let x = u_input.a;
    s_output = func_2(func_1(var_0.yy));
}

