struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = -2301f;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(1i, 32398i)), firstTrailingBit(-22752i), ~u_input.b.x), vec4<i32>(-2147483647i, ~u_input.d, u_input.b.x, -2147483647i << (u_input.e % 32u))), vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.b.x, 1i), _wgslsmith_sub_i32(-22888i, u_input.b.x ^ -2147483647i), countOneBits(select(u_input.b.x, 2305i, arg_0.b)), 2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    global0 = array<vec4<bool>, 4>();
    global0 = array<vec4<bool>, 4>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_0));
}

fn func_3(arg_0: Struct_1) -> bool {
    return true;
}

fn func_2() -> bool {
    global0 = array<vec4<bool>, 4>();
    let var_0 = Struct_3(-1041f);
    global0 = array<vec4<bool>, 4>();
    let var_1 = vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), false, !func_3(Struct_1(max(u_input.b.x, u_input.d))), false);
    let var_2 = Struct_2(Struct_1(u_input.b.x), var_1.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(max(u_input.b, select(_wgslsmith_mult_vec2_i32(~u_input.b, select(u_input.b, u_input.b, false)), vec2<i32>(19152i, u_input.b.x), any(vec2<bool>(false, false)) || false)), vec2<i32>(u_input.b.x, ~(u_input.b.x >> ((58343u | u_input.c.x) % 32u))));
    var var_1 = ~vec3<u32>(u_input.a.x | u_input.c.x, 53u, u_input.a.x);
    global0 = array<vec4<bool>, 4>();
    let var_2 = 1863i;
    global0 = array<vec4<bool>, 4>();
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, -1574f, 115f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(u_input.d), true))), 266f, -786f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-842f, 127f, -1059f) + vec3<f32>(-1120f, -170f, 686f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, 2745f, 379f)))))), vec3<bool>(!func_2(), u_input.e != firstLeadingBit(~u_input.c.x), all(vec2<bool>(var_0.x <= -2147483647i, false)))));
    let var_4 = select(0u, var_1.x ^ ~34202u, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, -129f, 1153f, var_3.x))))))), 0i, i32(-1i) * -6658i, vec4<u32>(var_1.x, min(abs(25427u), 41473u), 19190u, ~var_1.x));
}

