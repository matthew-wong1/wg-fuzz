struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_3(vec2<u32>(49652u, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(115f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))))));
    return i32(-1i) * -7589i;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<u32>(u_input.a.x & 1u, abs(u_input.a.x));
    let var_1 = _wgslsmith_div_vec3_i32(~(~(~(~vec3<i32>(1i, 10970i, 1i)))), vec3<i32>(2147483647i, 2147483647i, -1i));
    let var_2 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(max(-324f, -2041f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-150f)) * _wgslsmith_f_op_f32(abs(arg_0)))))));
    var var_3 = select(var_1.yx, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 203i) >> (firstTrailingBit(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), vec2<i32>(var_1.x, -41496i), vec2<i32>(-1i, 1i)), vec2<bool>(true, true));
    var var_4 = -2147483647i;
    return Struct_1(vec2<i32>(-func_2(44160u >= u_input.a.x, vec3<bool>(true, true, true)), reverseBits(var_3.x)), arg_0);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(726f + _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-536f * -2036f)));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))));
    let var_2 = true;
    let var_3 = (arg_0.a.x ^ ~arg_0.a.x) & (_wgslsmith_clamp_i32(15391i, arg_0.a.x | -2461i, arg_0.a.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u | u_input.a.x, u_input.a.x, 1u), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.a.x, u_input.a.x), ~u_input.a)) % 32u));
    return Struct_1(func_1(arg_0.b).a, _wgslsmith_f_op_f32(f32(-1f) * -1113f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(1735f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, 1352f, _wgslsmith_div_f32(func_3(var_0).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    let var_2 = Struct_4(-var_0.a, Struct_2(~u_input.a, var_0, select(vec4<bool>(var_0.a.x != 39211i, true, all(vec3<bool>(false, true, true)), false), vec4<bool>(true, false, select(true, false, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false))), vec3<i32>(-23310i, var_0.a.x, var_0.a.x)));
    var var_3 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(19495i << (u_input.a.x % 32u), var_2.a.x), ~(-39161i), var_2.b.b.a.x & var_2.a.x), abs(_wgslsmith_clamp_vec3_i32(var_2.b.d, vec3<i32>(0i, 0i, var_0.a.x), _wgslsmith_add_vec3_i32(var_2.b.d, var_2.b.d))), vec3<i32>(var_2.a.x, ~var_0.a.x, -var_0.a.x)));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, var_1.ww, abs(firstLeadingBit(~var_4.b.a.x)) & var_4.b.a.x);
}

