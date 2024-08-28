struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -405f);
    var_0 = -1321f;
    var var_1 = Struct_3(u_input.c.zzz);
    var_1 = Struct_3(var_1.a);
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(1u, abs(~arg_0)), 12901u);
    return _wgslsmith_f_op_f32(707f * _wgslsmith_f_op_f32(step(arg_1.b.x, -1130f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -220f)));
    let var_1 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_3(55357u, Struct_4(Struct_1(vec2<f32>(587f, -399f)), vec2<f32>(457f, var_0), u_input.c.zx, u_input.b.x))), true)), -198f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1948f, var_0)))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(3705i, -9240i), min(u_input.c.ww, vec2<i32>(u_input.c.x, u_input.c.x))), u_input.c.zw), vec2<i32>(1i, u_input.c.x)), u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_1.b.x * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u & u_input.b.x, Struct_4(Struct_1(vec2<f32>(var_1.a.a.x, var_1.a.a.x)), vec2<f32>(var_1.a.a.x, var_0), u_input.c.wy, 19422u)))), _wgslsmith_f_op_f32(f32(-1f) * -106f)));
    var var_3 = vec3<u32>(_wgslsmith_div_u32(~4970u, var_1.d), var_1.d, ~4294967295u);
    var var_4 = u_input.c.xxy;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(456u, var_1.d), Struct_4(var_1.a, var_1.b, u_input.c.yy, 36414u))), -2902f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~vec3<u32>(u_input.a.x ^ u_input.a.x, _wgslsmith_clamp_u32(31993u, 4294967295u, 4294967295u), max(3325u, 21634u))), vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x & firstTrailingBit(1u), ~u_input.b.x | reverseBits(0u)), _wgslsmith_add_u32(4294967295u, u_input.a.x)), vec3<bool>(true, all(vec3<bool>(true, true, true)), true));
    var var_1 = func_1(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)) && true, true), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec4<bool>(true, false, true, false))), vec2<bool>(true, u_input.c.x < u_input.c.x)), Struct_2(19265u));
    var var_2 = 4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~(~90308u), 1u, ~27569u), vec3<u32>(u_input.a.x, 36318u, 1u));
    let var_3 = 1156f;
    var var_4 = var_3;
    var var_5 = func_2();
    var_2 = var_1.a;
    var var_6 = reverseBits(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1.a, var_0.x), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(u_input.b.x, var_0.x)), u_input.a.x) & 4294967295u, firstLeadingBit(u_input.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3, _wgslsmith_f_op_f32(floor(-593f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-524f, 1135f))), var_5.a))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a.x, 1035f))))))), var_0.zz);
}

