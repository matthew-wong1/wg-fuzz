struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> vec3<bool> {
    var var_0 = 4294967295u;
    var_0 = min(0u, abs(~u_input.b));
    var_0 = ~68939u;
    var var_1 = arg_0;
    var var_2 = var_1.d.x;
    return select(!var_1.d, !select(!arg_0.d, !var_1.d, arg_0.d.x), !var_1.d.x);
}

fn func_2() -> vec2<f32> {
    var var_0 = -2147483647i;
    let var_1 = Struct_1(-27376i, ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2199f)))), select(func_3(Struct_1(u_input.a.x, ~107525u, _wgslsmith_f_op_f32(f32(-1f) * -1124f), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1057f, 547f), vec2<f32>(-1138f, 1097f))) + vec2<f32>(-120f, 952f)), 28257i), vec3<bool>(true, all(vec3<bool>(true, true, true)), true && all(vec2<bool>(true, true))), func_3(Struct_1(_wgslsmith_sub_i32(1i, u_input.a.x), u_input.c.x, 1f, vec3<bool>(false, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, -594f))), u_input.a.x ^ ~u_input.e)));
    var_0 = ~firstTrailingBit(29126i);
    let var_2 = Struct_1(u_input.e, 19243u, var_1.c, var_1.d);
    var var_3 = !vec4<bool>(!(select(false, false, var_1.d.x) && true), 966f == var_2.c, any(!vec4<bool>(var_1.d.x, var_2.d.x, false, true)), var_2.d.x);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1442f, -157f), vec2<f32>(-275f, var_2.c)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-308f, var_2.c))))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(-var_2.c)))), _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_div_i32(u_input.e, -54713i), select(u_input.b, ~(~firstLeadingBit(26596u)), true), _wgslsmith_f_op_f32(f32(-1f) * -246f), vec3<bool>(true, true, true));
    var var_1 = var_0.a;
    var_1 = max(-(~(-(i32(-1i) * -2147483647i))), u_input.e);
    let var_2 = vec4<f32>(1310f, -2161f, -2000f, 691f);
    let var_3 = _wgslsmith_f_op_vec2_f32(func_2());
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.x - var_0.c))), -672f, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b, 1u) | vec2<u32>(~u_input.b, abs(u_input.c.x)), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 3032u), ~vec2<u32>(u_input.c.x, u_input.d), u_input.c.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1053f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(524f)))))))));
    var_0 = 1104f;
    var_0 = -719f;
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, firstLeadingBit(0u), ~(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), 14677u), u_input.c);
    let var_2 = var_1.zy ^ (_wgslsmith_mult_vec2_u32(~u_input.c.wx, vec2<u32>(u_input.b, var_1.x)) & var_1.yy);
    let x = u_input.a;
    s_output = func_1();
}

