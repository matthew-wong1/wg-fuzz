struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    let var_0 = select(~(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(u_input.a, -11179i))), vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(6941i, u_input.a, 6490i), -1i)), u_input.a), select(vec2<bool>(true, any(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true))), vec2<bool>(arg_0, any(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, false)))), arg_0));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(round(-484f)))), 903f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-370f, _wgslsmith_f_op_f32(1029f * 1350f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1534f, -1613f)))))));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-301f, 1000f))))), -367f));
    return vec2<i32>(u_input.a, u_input.a);
}

fn func_2() -> StorageBuffer {
    let var_0 = ~_wgslsmith_sub_vec2_u32(~u_input.b.zw, ~u_input.b.yz);
    let var_1 = vec4<i32>(u_input.a, u_input.a, u_input.a, ~u_input.a);
    var var_2 = 0i;
    var_2 = -1i;
    var var_3 = ~_wgslsmith_clamp_vec2_i32(-_wgslsmith_add_vec2_i32(var_1.zw >> (vec2<u32>(u_input.b.x, u_input.d) % vec2<u32>(32u)), var_1.zy & var_1.yz), vec2<i32>(_wgslsmith_sub_i32(-u_input.a, -1635i), u_input.a), ~(func_3(false) << (~vec2<u32>(0u, var_0.x) % vec2<u32>(32u))));
    return StorageBuffer(vec2<f32>(-746f, 533f));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(1f, 1i, abs(u_input.d));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, abs(670u), u_input.c, u_input.b.x), vec4<u32>(1u, u_input.d, u_input.e.x ^ 0u, reverseBits(u_input.e.x)) | u_input.b), ((abs(0u) >> ((u_input.d ^ 4294967295u) % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(113044u, u_input.c, 51880u, u_input.c), u_input.b)) >> ((firstTrailingBit(u_input.b.x) ^ 17391u) % 32u));
    var var_1 = -2147483647i;
    let var_2 = 954f;
    let x = u_input.a;
    s_output = func_1();
}

