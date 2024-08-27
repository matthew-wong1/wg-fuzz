struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(-214f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(360f, arg_1.b)) + 705f), -375f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.b, _wgslsmith_f_op_f32(floor(958f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f * 1801f)))), arg_1.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(var_0.b + var_0.b)) + -945f))) - 290f);
    let var_3 = arg_1;
    var var_4 = Struct_2(arg_0.a.x);
    return ~(-13665i);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = any(select(vec4<bool>(true, arg_0.x <= arg_0.x, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), select(true, any(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, false)))), vec4<bool>(all(vec2<bool>(true, true)), 863f > _wgslsmith_f_op_f32(-arg_0.x), true, true), !(!(-205f >= arg_0.x))));
    return Struct_1(true, _wgslsmith_f_op_f32(-689f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1332f, 527f, 1480f) - vec3<f32>(-1106f, 977f, -952f))))) * vec3<f32>(1f, 1f, 1f)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.a.x), vec3<i32>(0i, -2147483647i, u_input.a.x)), -select(-1i, u_input.b ^ 2147483647i, true), countOneBits(~func_2(Struct_3(vec4<u32>(45554u, 0u, 0u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(false, 901f), Struct_1(true, 575f)))));
    var var_1 = var_0.b;
    var_1 = var_0.b;
    var_0 = func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1522f, var_0.b, -559f) + vec3<f32>(934f, 605f, var_0.b)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, var_0.b, var_0.b), vec3<f32>(658f, -361f, -1722f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 791f, var_0.b) * vec3<f32>(var_0.b, 394f, var_0.b)))))))), firstLeadingBit(u_input.a.xyw));
    var_1 = _wgslsmith_f_op_f32(-var_0.b);
    return Struct_3(~countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(118179u, 0u, 23137u, 23918u), vec4<u32>(1u, 1u, 1u, 1u))), select(select(vec3<bool>(541f != var_0.b, var_0.a, false), !(!vec3<bool>(false, true, var_0.a)), vec3<bool>(var_0.a, true, true)), vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -51344i), vec3<i32>(u_input.b, u_input.a.x, u_input.b)) <= ~1i, !select(var_0.a, var_0.a, false), select(false, var_0.a, true)), !(!vec3<bool>(true, var_0.a, false))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = func_1();
    let var_1 = -1112f;
    let var_2 = 315u;
    var var_3 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(~10815u, arg_0.a)), ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.a, arg_2.a), _wgslsmith_div_u32(15036u, var_2))));
    var var_4 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, -741f), vec3<f32>(var_1, 459f, 2520f), var_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -2188f, -179f)), true)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_1, 115f))))), _wgslsmith_mod_vec3_i32(u_input.a.wyy, -u_input.a.yxw));
    return 47678u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1u << (~_wgslsmith_mod_u32(select(1u, 1u, false), countOneBits(26350u)) % 32u)) | ~func_4(Struct_2(0u), true, func_1(), ~u_input.a.x ^ (u_input.b | -1i));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-458f))), _wgslsmith_f_op_f32(-362f + _wgslsmith_f_op_f32(1482f + 1205f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f + -926f))));
    var var_2 = Struct_2(~2564u);
    var var_3 = func_3(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(select(-1248f, _wgslsmith_f_op_f32(f32(-1f) * -704f), all(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, var_1.a, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))), -345f)), ~u_input.a.zzy);
    var var_4 = func_1();
    let var_5 = Struct_2(~(~min(5398u, ~var_4.a.x)));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b + var_1.b) - _wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(1091f - -601f), 1f, var_3.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_3.b, 918f, 1283f) - vec4<f32>(-690f, var_1.b, var_3.b, var_1.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, -792f, -250f, 550f)))))), ~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 6260u), vec2<u32>(var_0, 42646u))), _wgslsmith_add_vec3_i32(vec3<i32>(67226i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 14178i, 1i), u_input.a.wzy), 2147483647i), -(~max(u_input.a.zww, u_input.a.wwz))), -_wgslsmith_dot_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(true, var_3.a, var_1.a, var_4.b.x)) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 24624i, u_input.b, u_input.b), vec4<i32>(-1i, -1i, 24049i, -749i)), _wgslsmith_add_vec4_i32(vec4<i32>(-23096i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a) & _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(u_input.b, -1i, u_input.a.x, u_input.b))));
}

