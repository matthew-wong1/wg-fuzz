struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = 1i & _wgslsmith_dot_vec4_i32(arg_2, ~reverseBits(arg_2));
    var var_1 = Struct_5(min(select(~(~vec4<u32>(4294967295u, 79141u, 1u, 0u)), min(vec4<u32>(4294967295u, 4294967295u, 0u, 19212u), abs(vec4<u32>(25755u, 28501u, 4294967295u, 37135u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), abs(vec4<u32>(firstLeadingBit(76553u), 1u, ~0u, 1u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.xyw))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + -1863f), _wgslsmith_f_op_f32(ceil(-637f)), _wgslsmith_f_op_f32(f32(-1f) * -607f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) - _wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = any(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -500f), true));
    return _wgslsmith_dot_vec2_u32(~(~var_1.a.wz), countOneBits(reverseBits(select(vec2<u32>(1u, 60749u), var_1.a.yy, any(vec4<bool>(var_2, false, false, var_2))))));
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.a, -1542f, arg_0.a.a, -1493f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, arg_0.a.a) - vec4<f32>(-830f, arg_0.a.a, arg_0.a.a, 246f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(659f, -640f)), arg_0.a.a, arg_0.a.a))), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), -(~vec3<i32>(2147483647i, 2147483647i, -68256i))), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, -u_input.a), firstLeadingBit(u_input.a) >> (~arg_0.a.b % 32u)), ~(u_input.a ^ u_input.a) & (i32(-1i) * -48139i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2201f), _wgslsmith_f_op_f32(-949f - _wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a)), arg_0.a.a)), i32(-1i) * -1i, 62556u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1568f - -2535f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1003f))))), 0u);
    var var_2 = _wgslsmith_f_op_f32(trunc(-626f));
    var_0 = var_1.e;
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-178f - _wgslsmith_f_op_f32(sign(-182f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_1.d)), arg_0.a.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)), vec3<f32>(arg_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -983f), var_1.a.x)))), u_input.a, var_1.c >> (((arg_0.a.b << (~var_1.c % 32u)) << (~1u % 32u)) % 32u), -397f, ~(func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, 1000f, var_1.d, var_1.a.x))), _wgslsmith_f_op_vec3_f32(min(var_1.a, vec3<f32>(var_1.a.x, 1000f, 1196f))), ~vec4<i32>(2147483647i, u_input.a, var_1.b, 510i)) & ~_wgslsmith_div_u32(3341u, var_1.e)));
    return select(vec2<i32>(-1i) * -select(firstTrailingBit(vec2<i32>(var_1.b, 9755i)), ~vec2<i32>(u_input.a, var_3.b), vec2<bool>(true, true)), vec2<i32>(~reverseBits(~2147483647i), -2147483647i), vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, any(vec4<bool>(true, true, false, true))))));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> bool {
    let var_0 = func_2(Struct_4(Struct_3(776f, ~_wgslsmith_mult_u32(14505u, arg_1.a.b))));
    let var_1 = Struct_3(-999f, arg_1.a.b);
    let var_2 = Struct_4(Struct_3(var_1.a, ~(~28194u) & countOneBits(var_1.b)));
    var var_3 = !vec2<bool>(true, !select(true, true, true));
    let var_4 = var_2;
    return any(!vec4<bool>(arg_0, var_4.a.b < 4294967295u, !arg_0, all(!vec2<bool>(true, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(-_wgslsmith_add_i32(-61562i, u_input.a) << (4294967295u % 32u), (u_input.a & 12939i) & countOneBits(~(-23706i)), max(u_input.a, 0i) & u_input.a);
    var var_1 = func_1(false && (-reverseBits(u_input.a) <= ~1i), Struct_4(Struct_3(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1650f - -406f)), 1u)));
    var var_2 = Struct_5(vec4<u32>(~0u, func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1133f, 388f, -586f, -1023f), vec4<f32>(-284f, 1397f, -691f, 1374f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1063f, 1000f, 2024f)), ~vec4<i32>(22154i, u_input.a, var_0.x, 2147483647i)) >> (~1u % 32u), ~(~1u), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-746f, 527f, -273f), vec3<f32>(-1797f, 2151f, -388f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, -1285f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -400f, 1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -904f, -1393f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) + 1f));
    var_1 = true;
    let var_3 = vec4<bool>(!select(true, false, func_1(all(vec3<bool>(false, true, false)), Struct_4(Struct_3(var_2.c, 26690u)))), false, !func_1(-161f == _wgslsmith_f_op_f32(648f + var_2.b.x), Struct_4(Struct_3(var_2.b.x, 1u))), true);
    var var_4 = var_2.a.x;
    let var_5 = Struct_2(412f, Struct_1(_wgslsmith_f_op_vec3_f32(step(var_2.b, _wgslsmith_f_op_vec3_f32(-var_2.b))), _wgslsmith_sub_i32((35811i & u_input.a) | _wgslsmith_mult_i32(u_input.a, var_0.x), -68604i), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_2.a.x, var_2.a.x), var_2.a.zyy), select(vec3<u32>(1u, var_2.a.x, var_2.a.x), vec3<u32>(var_2.a.x, 4294967295u, 0u), vec3<bool>(var_3.x, false, var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(573f)), 967f))), 37977u));
    let var_6 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1323f)) - _wgslsmith_f_op_f32(sign(380f)))) + var_5.b.a.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(-759f, _wgslsmith_f_op_vec3_f32(-var_2.b), vec3<i32>(_wgslsmith_sub_i32(~1i, var_5.b.b), 25389i, ~35083i));
}

