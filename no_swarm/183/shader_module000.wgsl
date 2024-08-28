struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -22924i, i32(-2147483648));

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: u32 = 1u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<f32>) -> bool {
    return select(all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(543f, arg_0.x)))) >= _wgslsmith_f_op_f32(f32(-1f) * -919f), !(!(global0.x < u_input.a)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    var var_0 = true;
    let var_1 = vec4<bool>(_wgslsmith_dot_vec2_u32(u_input.b.zy, _wgslsmith_mod_vec2_u32(select(arg_0, vec2<u32>(arg_0.x, 4734u), vec2<bool>(true, true)), ~vec2<u32>(u_input.b.x, arg_0.x))) >= abs(_wgslsmith_mod_u32(~45172u, _wgslsmith_mod_u32(arg_2.a.x, 40406u))), false, arg_3, true);
    let var_2 = -1000f;
    let var_3 = arg_2.a;
    var var_4 = u_input.b;
    return vec3<i32>(-2147483647i, -29850i, firstLeadingBit(_wgslsmith_mult_i32(~global0.x, global0.x) | abs(~36562i)));
}

fn func_3() -> u32 {
    return u_input.b.x >> (~u_input.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~u_input.b.x ^ _wgslsmith_mod_u32(1u, u_input.b.x), 78357u, 28684u)), ~u_input.b & u_input.b);
    var_0 = u_input.b.x;
    let var_1 = global0.zz;
    let var_2 = ~(~(~u_input.b));
    let var_3 = _wgslsmith_dot_vec3_i32(func_2(vec2<u32>(~var_2.x, ~1u), 21984u, Struct_2(vec2<u32>(1u, u_input.b.x)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1018f, -1994f)))), _wgslsmith_div_vec3_i32(~global1[_wgslsmith_index_u32(u_input.b.x, 24u)], vec3<i32>(global0.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(global0.x, 1i)), -u_input.a))) >> (abs(u_input.b.x) % 32u);
    var_0 = 0u;
    var var_4 = vec4<i32>(27004i, _wgslsmith_dot_vec2_i32(countOneBits(~firstTrailingBit(u_input.c)), ~(-select(vec2<i32>(-10118i, -2147483647i), global0.yx, vec2<bool>(false, true)))), 0i, _wgslsmith_clamp_i32(50012i, global0.x, firstLeadingBit(var_3) << (99524u % 32u)) | _wgslsmith_mult_i32(1i, var_1.x));
    var var_5 = true;
    global2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_u32(~(~var_2.x), 4294967295u, ~17871u), 56187u >> (abs(func_3()) % 32u), _wgslsmith_f_op_f32(151f * _wgslsmith_f_op_f32(trunc(-790f))) > -1673f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(324f, 1545f, 2206f), vec3<f32>(264f, -547f, 855f)))))))), i32(-1i) * -62271i, ~_wgslsmith_sub_i32(-global0.x, -(-1i ^ var_1.x)), 13277i << (var_2.x % 32u));
}

