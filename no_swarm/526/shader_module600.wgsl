struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: f32 = 615f;

var<private> global2: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b, 9u)];
    global0 = array<Struct_1, 9>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(20958u, 67274u, u_input.b), max(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.b, 75229u, u_input.b))), ~select(vec3<u32>(97015u, 1u, 71013u), vec3<u32>(16488u, 1u, u_input.b), vec3<bool>(true, false, true)), min(vec3<u32>(26332u, u_input.b, 0u), vec3<u32>(49746u, u_input.b, 1u)) | _wgslsmith_add_vec3_u32(vec3<u32>(59468u, u_input.b, 0u), vec3<u32>(24593u, 40523u, u_input.b))), vec3<u32>(u_input.b, 1u, u_input.b)), 9u)];
    global0 = array<Struct_1, 9>();
    let var_2 = Struct_1(var_1.a);
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-1043f, 1427f, var_1.a.x, var_2.a.x)))) + vec4<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(min(var_1.a.x, 126f)), var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a.x, 769f), _wgslsmith_f_op_f32(abs(arg_0.x)), 1417f, _wgslsmith_f_op_f32(floor(126f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(685f, -1639f, var_0.a.x, _wgslsmith_f_op_f32(var_1.a.x + var_2.a.x)) * _wgslsmith_f_op_vec4_f32(trunc(var_0.a))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x + 716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(exp2(var_2.a.x)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    var var_0 = u_input.e.x;
    let var_1 = _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(u_input.b, 1u));
    global0 = array<Struct_1, 9>();
    let var_2 = Struct_1(arg_0.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, -809f), vec2<f32>(var_2.a.x, -321f)), _wgslsmith_f_op_vec2_f32(arg_0.a.zz - vec2<f32>(arg_0.a.x, 245f)))), vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + 323f)))))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_u32(u_input.b, u_input.b);
    let var_1 = func_2(Struct_1(arg_0.a));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.a)) + _wgslsmith_f_op_vec4_f32(-var_1.a))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.a.x, arg_0.a.x, false)), _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-591f * 1509f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, var_1.a.x) + 308f))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(var_1.a.x, arg_0.a.x))).x, _wgslsmith_f_op_f32(307f * func_2(Struct_1(vec4<f32>(arg_0.a.x, var_2.a.x, arg_0.a.x, var_2.a.x))).a.x), -800f, var_2.a.x))));
    var var_4 = !vec3<bool>(firstLeadingBit(_wgslsmith_clamp_u32(24189u, 52649u, var_0)) <= ~u_input.b, true && select(u_input.b != 1u, any(vec3<bool>(true, false, false)), true), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, false), true)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(678f - _wgslsmith_f_op_f32(705f + -2057f))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1088f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3261f, 1745f))) - _wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_2.a.x, arg_0.a.x)))))), _wgslsmith_f_op_f32(ceil(802f)), arg_2.a.x);
    let var_1 = vec4<u32>(~(~(~43672u)), ~firstLeadingBit(~arg_1), u_input.b, 1u);
    var var_2 = var_1;
    let var_3 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) + _wgslsmith_f_op_vec4_f32(sign(arg_0.a))))));
    let var_4 = ~42776i;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-var_0.x))))), var_3.a));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), ~u_input.c.yxy), abs(_wgslsmith_clamp_i32(u_input.e.x, -31835i, u_input.e.x))), u_input.e.xy));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_1 = arg_0;
    return Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-295f, 309f, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(var_1.a.x, 234f))).x * 979f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(arg_0.a.x, 1033f, -221f, var_1.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-143f)), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(arg_0.a.x - var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x - -137f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(u_input.b, 9u)], _wgslsmith_mod_u32(u_input.b, firstLeadingBit(u_input.b)), global0[_wgslsmith_index_u32(u_input.b, 9u)]))));
    let var_1 = var_0;
    let var_2 = global0[_wgslsmith_index_u32(725u, 9u)];
    global0 = array<Struct_1, 9>();
    let var_3 = var_1.a.x;
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, ~0u, u_input.b);
}

