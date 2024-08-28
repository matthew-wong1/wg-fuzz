struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = -8110i;

var<private> global2: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, false));

var<private> global3: vec4<f32> = vec4<f32>(582f, 1513f, 208f, -2290f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<i32> {
    let var_0 = -680f;
    global0 = arg_0;
    let var_1 = Struct_1(true, !(!(!select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, false, arg_1, false), false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-443f, 785f)), arg_0, global3.x));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1000f) - _wgslsmith_div_f32(1980f, var_2.x)))))));
    return ~vec4<i32>(2147483647i, u_input.a.x, countOneBits(1i), _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(-17685i, u_input.a.x), vec2<i32>(-1i, u_input.a.x), var_1.b.wz)), abs(vec2<i32>(0i, -2147483647i))));
}

fn func_1() -> StorageBuffer {
    var var_0 = ~u_input.b.x;
    var var_1 = Struct_3(Struct_1((u_input.d > u_input.b.x) && (~u_input.c == abs(21675i)), vec4<bool>(true, any(vec2<bool>(true, false)) & false, true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, -12438i), vec3<i32>(u_input.c, 0i, -2147483647i)) <= u_input.c)), global3.x);
    var var_2 = Struct_1(true, var_1.a.b);
    return StorageBuffer(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) - 170f)), -(~func_2(363f, true)), 4869i, _wgslsmith_div_i32(~u_input.a.x, ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.x;
    global0 = -501f;
    let var_0 = true;
    let var_1 = _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, 63003u, ~49755u), ~select(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), vec3<u32>(u_input.b.x, 18719u, 36648u), vec3<bool>(var_0, var_0, true))), firstLeadingBit(vec3<u32>(u_input.b.x, 163308u, min(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u), _wgslsmith_add_u32(23744u, u_input.d)))));
    let var_2 = ~reverseBits((~vec2<u32>(61974u, var_1.x) | abs(vec2<u32>(u_input.b.x, u_input.d))) << (vec2<u32>(_wgslsmith_clamp_u32(u_input.d, var_1.x, 0u), _wgslsmith_mod_u32(4294967295u, var_1.x)) % vec2<u32>(32u)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1000f, -1000f, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -1046f, global3.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 1449f, 1484f, global3.x), vec4<f32>(global3.x, global3.x, global3.x, 1000f), vec4<bool>(var_0, false, var_0, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 611f, 704f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 399f, 579f, 1128f) * vec4<f32>(783f, global3.x, -884f, 1182f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, global3.x, 1005f, 1019f)))))));
    var var_3 = var_1.xz;
    let x = u_input.a;
    s_output = func_1();
}

