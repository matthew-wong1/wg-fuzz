struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> Struct_1 {
    return Struct_1(-_wgslsmith_clamp_i32(-2147483647i, select(-18343i, -27206i, true), ~u_input.d) ^ -(u_input.d << ((u_input.a ^ 0u) % 32u)));
}

fn func_2() -> vec2<f32> {
    let var_0 = 0u;
    var var_1 = u_input.b;
    var var_2 = vec2<u32>(var_0, ~_wgslsmith_mod_u32(var_0, select(4267u, 61616u, any(vec3<bool>(true, true, true)))));
    var_2 = vec2<u32>(~(~1u), 0u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(405f, 852f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-279f, 401f) * vec2<f32>(-189f, -1135f)))))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(290f, -284f), _wgslsmith_f_op_f32(f32(-1f) * -112f))), 2018f));
}

fn func_3() -> i32 {
    let var_0 = vec3<i32>(~(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, u_input.d, 1i, u_input.d), vec4<i32>(u_input.d, 0i, 2147483647i, 34569i), vec4<bool>(true, false, true, false)), ~vec4<i32>(-1i, u_input.d, 2147483647i, -53547i)) >> (u_input.c % 32u)), reverseBits(func_1().a), 37073i);
    var var_1 = false;
    let var_2 = vec2<bool>(all(vec3<bool>(true, true && select(false, true, true), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))))), false);
    let var_3 = 4294967295u;
    let var_4 = var_0;
    return _wgslsmith_add_i32(abs(var_4.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-16998i, u_input.d >> (58962u % 32u)) & -33518i, ~u_input.d, 31530i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(u_input.d, u_input.d)) | abs(vec2<i32>(u_input.d, u_input.d)), vec2<i32>(u_input.d, i32(-1i) * -64266i), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<i32>(_wgslsmith_sub_i32(u_input.d | u_input.d, -2147483647i), _wgslsmith_mult_i32(u_input.d, ~(-35350i)))));
    let var_1 = func_1();
    var_0 = var_1;
    var_0 = Struct_1(u_input.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1310f + 287f), _wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(408f, -728f) + vec2<f32>(278f, -426f)))))));
    var var_3 = ~u_input.a;
    var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2())));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(func_3() | var_1.a), (~countOneBits(var_4.a) | ~(i32(-1i) * -2147483647i)) | 0i, -abs(~5634i) & (var_0.a >> (u_input.a % 32u)), -reverseBits(vec4<i32>(var_0.a, ~(-2147483647i), -1i << (u_input.c % 32u), var_4.a)), var_1.a);
}

