struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = -1711f;
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(-434f - 206f);
    var var_3 = u_input.b.yyz;
    var_3 = ~_wgslsmith_sub_vec3_u32(abs(~u_input.b.xzz), select(u_input.b.xzx, ~(~vec3<u32>(4294967295u, var_3.x, 0u)), all(!vec4<bool>(arg_3.b, arg_3.b, var_1.b, arg_3.b))));
    return !var_1.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1198f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + -359f))))), _wgslsmith_f_op_f32(-arg_1.c), -272f, -904f);
    var var_1 = ~(~(~(~(~vec2<u32>(u_input.b.x, 106680u)))));
    let var_2 = 1470f;
    var var_3 = select(arg_1.b, any(select(vec3<bool>(all(vec2<bool>(arg_1.b, arg_1.b)), true, arg_1.b), select(!vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(true, arg_1.b, false), true), !select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(arg_1.b, arg_1.b, arg_1.b)))), all(!vec3<bool>(!arg_1.b, arg_1.b, !arg_1.b)));
    var var_4 = Struct_1(-vec3<i32>(u_input.c.x, -32328i, arg_1.a.x), !(!(any(vec2<bool>(true, arg_1.b)) || (arg_1.a.x < 55801i))), -274f);
    return u_input.c.yzx;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.a, arg_1, _wgslsmith_f_op_f32(-arg_0.c));
    var var_1 = u_input.c;
    let var_2 = arg_0.a.x;
    let var_3 = Struct_1(max(vec3<i32>(var_0.a.x, ~1i, -35335i), max(u_input.c.yxw >> (_wgslsmith_add_vec3_u32(u_input.b.zzw, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)) % vec3<u32>(32u)), -vec3<i32>(var_0.a.x, arg_0.a.x, 2147483647i))), !arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 1f)) * arg_0.c));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, -1929f, 184f, -614f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-104f, arg_0.c, arg_0.c, -475f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(130f, -1000f, -770f, arg_0.c))) * vec4<f32>(-1000f, 1236f, arg_0.c, 307f)))));
    return u_input.c.xwy;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), u_input.b.zzy), abs(u_input.b.zyz)), ~(~(~4294967295u)), 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.b.x, 0u)), ~u_input.b.x, 0u), select(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), ~u_input.b, !vec4<bool>(arg_2.b, arg_0, false, true))), min(_wgslsmith_mult_u32(min(u_input.a.x, 41224u), firstTrailingBit(4294967295u)), 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(45120u, 15270u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)), max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b.x, 0u, 1u)), vec3<u32>(u_input.a.x, 0u, u_input.a.x))), 57293u));
    var var_1 = arg_2;
    let var_2 = !(!((func_2(vec3<i32>(u_input.c.x, 0i, -1i), arg_2.c, arg_2, Struct_1(vec3<i32>(0i, 18878i, u_input.c.x), arg_2.b, 697f)) == var_1.b) & !any(vec3<bool>(arg_0, arg_0, arg_0))));
    var_1 = Struct_1(func_4(Struct_1(func_3(arg_3, arg_2, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x)), !(false & var_1.b), _wgslsmith_f_op_f32(step(377f, _wgslsmith_f_op_f32(f32(-1f) * -281f)))), true), !all(vec4<bool>(1u < var_0, select(true, arg_0, true), var_2, arg_0)), _wgslsmith_f_op_f32(396f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))));
    let var_3 = Struct_1(abs(firstTrailingBit(arg_2.a)), func_2(-vec3<i32>(-37755i, min(-31119i, 5267i), -25626i), arg_3, arg_2, arg_2), 732f);
    return !(_wgslsmith_div_u32(50737u ^ _wgslsmith_add_u32(var_0, 4294967295u), ~4294967295u) > min(1u, abs(u_input.a.x) ^ ~var_0));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = arg_2.c;
    var var_1 = 1835f;
    var var_2 = arg_2;
    var_1 = _wgslsmith_f_op_f32(max(arg_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1492f, _wgslsmith_f_op_f32(-var_2.c), true)) + var_2.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1252f + -137f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-673f, arg_2.c))))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1039f)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~u_input.b.x);
    var_0 = 33722u;
    var var_1 = func_5(true, vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)) || any(vec2<bool>(true, true)), true, func_1((u_input.c.x > u_input.c.x) && true, u_input.c, Struct_1(vec3<i32>(u_input.c.x, -6103i, -1i), true, _wgslsmith_f_op_f32(f32(-1f) * -1331f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1251f, -1535f, true))))), _wgslsmith_f_op_f32(ceil(-315f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(646f, 1783f)) + 1278f)), Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-33898i, -2147483647i, u_input.c.x) << (u_input.b.zzy % vec3<u32>(32u)), vec3<i32>(1310i, u_input.c.x, 2147483647i)), select(-u_input.c.wxz, countOneBits(vec3<i32>(2147483647i, -27559i, u_input.c.x)), func_1(true, u_input.c, Struct_1(vec3<i32>(1i, 1i, 1344i), false, 925f), 257f))), !(!(u_input.c.x == 2147483647i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1016f)), _wgslsmith_f_op_f32(138f * -866f), false))))), !vec2<bool>(true, any(vec3<bool>(true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(376f, var_1.c, var_1.c), vec3<f32>(var_1.c, 752f, -506f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, var_1.c, var_1.c)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c, 410f, -1176f)))))), _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_mult_u32(52667u, abs(0u)), u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, var_1.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) - _wgslsmith_f_op_f32(var_1.c + -980f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 681f, -1061f, 792f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, -1133f, 1476f, -210f), vec4<f32>(1607f, var_1.c, -1143f, -732f), var_1.b)))))), u_input.c.x);
}

