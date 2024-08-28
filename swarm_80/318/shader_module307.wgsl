struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(trunc(arg_0))), arg_1))), 1000f, true, select(_wgslsmith_clamp_i32(2147483647i, 1i, select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(51249i, 7708i, -1i)), arg_0 == arg_0)), min(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -1i)) | (30871i << (1u % 32u))), any(!vec3<bool>(arg_1, true, arg_1))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(countOneBits(0i), firstTrailingBit(-2147483647i), _wgslsmith_sub_i32(-2147483647i, 1i))), vec3<i32>(-abs(-19820i), ~10996i, -abs(-1i))));
    var var_1 = firstLeadingBit(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 27613u), abs(u_input.a)), u_input.d << (~u_input.a.x % 32u), ~u_input.d, ~(u_input.a.x | 35419u))));
    var_1 = ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.xzz, vec3<u32>(u_input.b, 4830u, 41011u)), abs(var_1.xwx)), 0u, min(~4294967295u, 4294967295u), select(u_input.c, var_1.x, var_0.c) ^ 35014u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(-457f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(376f, -849f))))))), !(!(false && !arg_1)), firstLeadingBit(var_0.e.x), reverseBits(~var_0.e) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, 28602i, var_0.d, -21882i), vec4<i32>(var_0.d, var_0.e.x, var_0.e.x, -29825i)), var_0.e.x, -var_0.e.x));
    let var_3 = var_0;
    return ~firstLeadingBit(0u);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = 0u;
    var_0 = firstTrailingBit(reverseBits(func_3(arg_0.a, 0u == u_input.c)) >> (_wgslsmith_mod_u32(u_input.b, ~4294967295u) % 32u));
    var_0 = u_input.b;
    let var_1 = !vec3<bool>(arg_0.c, false | all(!vec3<bool>(arg_0.c, false, true)), false);
    let var_2 = ~4294967295u;
    return -386f;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-364f, _wgslsmith_f_op_f32(step(arg_1, 123f)))));
    let var_1 = arg_2;
    let var_2 = var_1;
    let var_3 = var_2.a;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_2))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-753f)))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1478f, -326f, 1043f)) - vec3<f32>(311f, var_3, arg_2.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 318f, arg_1)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -245f, 1144f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1681f, 1315f, true)), _wgslsmith_f_op_f32(-888f - 465f), _wgslsmith_div_f32(arg_1, -1548f)) + vec3<f32>(_wgslsmith_f_op_f32(max(-2004f, -932f)), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(sign(var_3))))), !arg_0.yzy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-39644i, ~(~64043u), 35622i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-944f - -544f), _wgslsmith_f_op_f32(f32(-1f) * -1334f), -173f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(false, false, false, true), -1601f, Struct_1(2022f, 1000f, false, 2147483647i, vec3<i32>(4682i, -2147483647i, 9336i)))), _wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(true, true, false, true), 239f, Struct_1(-341f, -674f, false, 0i, vec3<i32>(1i, 2147483647i, -7308i)))))))));
}

