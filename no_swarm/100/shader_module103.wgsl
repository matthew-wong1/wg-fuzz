struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = ~firstLeadingBit(~reverseBits(vec4<i32>(arg_2.a.x, u_input.a, -1i, arg_2.a.x)) >> ((abs(vec4<u32>(u_input.b.x, arg_1, arg_1, 16181u)) ^ ~vec4<u32>(20717u, 29973u, 4294967295u, 0u)) % vec4<u32>(32u)));
    let var_1 = vec3<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), true, true);
    var_0 = ~vec4<i32>(arg_2.a.x, arg_2.a.x, 1i, 2147483647i);
    return var_0.zz;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(reverseBits(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, 37026i), u_input.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<i32>(u_input.a, -2147483647i, u_input.a))))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-(var_0.a.x << (u_input.b.x % 32u)), -2147483647i), func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1309f), Struct_1(vec2<i32>(var_0.a.x, -2147483647i))), ~_wgslsmith_add_u32(0u, 0u), Struct_1(~var_0.a))));
    var var_2 = _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 0u);
    var var_3 = ~vec2<u32>(0u, (0u & (1u >> (u_input.b.x % 32u))) >> (4294967295u % 32u));
    let var_4 = _wgslsmith_f_op_f32(ceil(1f));
    return countOneBits(56309i);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-22391i, _wgslsmith_dot_vec2_i32(var_0.a, reverseBits(vec2<i32>(-4757i, 2147483647i))), ~arg_1.a.x, func_2()), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_1.a.x, -34075i, var_0.a.x, 46390i)), ~vec4<i32>(u_input.a, 29066i, var_0.a.x, var_0.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, arg_1.a.x, arg_1.a.x), vec4<i32>(var_0.a.x, -8458i, -2147483647i, u_input.a), vec4<i32>(var_0.a.x, -8299i, -11271i, 65925i))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, 39621i, u_input.a, 0i)), vec4<i32>(u_input.a, 0i, -29939i, -7674i)))), (1i | min(u_input.a, -var_0.a.x)) | (u_input.a >> (~u_input.b.x % 32u)));
    var var_2 = Struct_1(vec2<i32>(var_1.x, 55661i));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1636f), _wgslsmith_f_op_f32(993f - arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1000f * arg_0)))), !all(vec2<bool>(true, true)) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - arg_0) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), u_input.b.x, Struct_2(arg_0, var_0));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(ceil(var_3.a.x)), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, var_3.d.b.a.x, arg_1.a.x), vec3<i32>(12036i, -13105i, -2147483647i)), ~vec3<i32>(-10714i, -8425i, var_3.d.b.a.x)), -1i)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -313f), 191f)), func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(206f, -1038f) - -700f))), Struct_1(abs(vec2<i32>(u_input.a, u_input.a)))));
    var_0 = Struct_2(var_0.a, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a)), var_0.b));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a, 1295f)), _wgslsmith_f_op_f32(floor(849f)), var_0.a, var_0.a))), true, u_input.b.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 1000f)) - _wgslsmith_f_op_f32(step(var_0.a, -2363f))), func_1(-644f, var_0.b)));
    var_0 = var_1.d;
    let var_2 = ~vec3<u32>(23677u, ~(~(~u_input.b.x)), ~_wgslsmith_add_u32(u_input.b.x, ~0u));
    var var_3 = Struct_1(var_0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(13884i, ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, var_2.x, u_input.b.x, u_input.b.x)), vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.b.x, var_1.c), var_1.c, ~52395u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(361f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, var_0.a)))), var_1.a.zwx), _wgslsmith_f_op_f32(ceil(-221f)));
}

