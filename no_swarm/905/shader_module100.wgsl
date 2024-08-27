struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> i32 {
    return firstTrailingBit(-21210i);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1275f);
    global0 = Struct_1(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a.x), vec4<u32>(u_input.b.x, 28815u, 1u, u_input.b.x)), u_input.a.x)) <= ~47238u);
    var var_1 = ~max(51840u, ~2428u);
    var var_2 = Struct_2(vec3<f32>(var_0, 498f, var_0), Struct_1(true));
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), var_0, _wgslsmith_f_op_f32(-1f)), var_2.b);
    return ~u_input.b.x;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    global0 = Struct_1(select(any(vec2<bool>(true, true)), global0.a, func_3(!arg_1.x) > reverseBits(u_input.a.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -526f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-110f)))), -666f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_1 = -select(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(7164i, -36681i), vec2<i32>(arg_0, arg_0)), -vec2<i32>(16826i, arg_0)), reverseBits(vec2<i32>(arg_0, 1i)), arg_1.x) << (u_input.b % vec2<u32>(32u));
    var var_2 = Struct_1(select(true, true, !arg_1.x));
    let var_3 = vec3<bool>(any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false))), true, any(vec4<bool>(all(select(arg_1.yz, vec2<bool>(global0.a, true), arg_1.yx)), true, true, false)));
    return abs(26657i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(ceil(-330f)), global0.a || global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-103f + -180f))) - 1507f))));
    var var_1 = _wgslsmith_sub_vec2_i32(~firstTrailingBit(firstLeadingBit(vec2<i32>(-2147483647i, -1i))), vec2<i32>(2147483647i, _wgslsmith_sub_i32(abs(0i), reverseBits(8317i)))) ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(1i, i32(-1i) * -2147483647i), vec2<i32>(-5527i, -2147483647i)) | vec2<i32>(func_1(abs(103i), vec3<bool>(global0.a, false, global0.a), Struct_1(global0.a), 2290f), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(1i, -42888i, 0i, 47711i), vec4<i32>(47015i, 1i, -48208i, -38627i), global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1107f - 465f), _wgslsmith_f_op_f32(trunc(-945f))))), select(~abs(firstLeadingBit(u_input.b)), _wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(56425u, 22649u)), _wgslsmith_div_vec2_u32(u_input.b, u_input.a.zz)), vec2<bool>(var_1.x > (var_1.x & var_1.x), true)), vec4<i32>(2147483647i, func_2(var_1.x, vec3<bool>(global0.a, global0.a, global0.a)) ^ ~(-52794i), var_1.x, -_wgslsmith_sub_i32(var_1.x, var_1.x)), _wgslsmith_mod_vec2_i32(abs(-_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, 17897i), vec2<i32>(34886i, -29509i))), abs(~abs(vec2<i32>(var_1.x, -63085i)))));
}

