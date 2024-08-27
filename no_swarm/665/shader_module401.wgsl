struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.xz), firstTrailingBit(vec2<u32>(14736u, u_input.a.x))), countOneBits(u_input.d >> (1u % 32u))) & ~vec2<u32>(arg_3, arg_3 & arg_3), vec2<u32>(arg_3, 1u));
    let var_2 = arg_0.c;
    var var_3 = Struct_3(vec4<f32>(810f, _wgslsmith_f_op_f32(-537f + -513f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -569f)), -2071f), select(vec4<bool>(!arg_1, any(arg_0.b.zzw), all(vec4<bool>(false, true, true, var_2.a)), any(select(arg_0.b.xw, vec2<bool>(true, false), arg_1))), vec4<bool>(all(vec2<bool>(true, arg_0.c.a)), !all(vec4<bool>(arg_1, arg_0.c.a, true, var_2.a)), true, true), (true && (false || var_2.a)) && arg_1), Struct_2(any(vec3<bool>(select(arg_0.c.a, arg_1, true), arg_0.b.x, true)), arg_0.a), arg_1);
    let var_4 = Struct_1(vec3<bool>(true, !(arg_0.b.x | false), false), !(!arg_0.b.xy), -(~_wgslsmith_sub_i32(1i, abs(2147483647i))));
    return select(vec2<bool>(false, arg_0.c.a), arg_0.b.xw, any(arg_0.b));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = all(!func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -123f, -659f, 154f)), vec4<bool>(true, true, true, true), Struct_2(false, vec4<f32>(348f, arg_0, 1485f, 518f)), false), false, vec3<f32>(-322f, _wgslsmith_f_op_f32(sign(arg_0)), 2125f), ~u_input.a.x));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(504f)), _wgslsmith_div_f32(arg_0, -1873f))))) < _wgslsmith_f_op_f32(select(arg_0, -502f, func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, arg_0, -1588f, 2401f)), vec4<bool>(false, false, true, true), Struct_2(false, vec4<f32>(1708f, -1426f, 222f, 1011f)), true), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -470f, arg_0))), ~1u).x));
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(160f, -2172f));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(round(arg_0)), u_input.a.x <= u_input.a.x)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1475f, 928f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> bool {
    let var_0 = ~(reverseBits(_wgslsmith_div_u32(~u_input.d, firstTrailingBit(u_input.b))) << (abs(countOneBits(u_input.a.x)) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-924f, -411f)), 929f, _wgslsmith_f_op_f32(func_2(-239f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-918f, 1302f, 107f))))));
    var var_2 = abs(-21461i);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1470f)), _wgslsmith_f_op_f32(var_1.x - -2676f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(min(1000f, var_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, 1384f, var_1.x), vec3<f32>(554f, -1000f, var_1.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(-295f * 1543f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(1000f, var_1.x)))), _wgslsmith_f_op_f32(-var_1.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 416f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -537f), vec3<f32>(-593f, var_1.x, -413f)))) + vec3<f32>(140f, var_1.x, _wgslsmith_f_op_f32(479f * _wgslsmith_f_op_f32(ceil(-1160f))))));
    return all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, false)), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(any(vec3<bool>(true, true, true)), false, !func_1(vec3<i32>(u_input.c.x, -2591i, 1i), vec2<i32>(u_input.c.x, u_input.c.x)), abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 65130u, u_input.a.x, 24952u))) <= 0u), !(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), func_1(vec3<i32>(-2147483647i, 0i, u_input.c.x), u_input.c))), select(!func_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -7396i), vec3<i32>(1i, u_input.c.x, -22581i)), abs(vec2<i32>(-33183i, -2147483647i))), func_3(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-544f, 1366f, -590f, -612f) * vec4<f32>(-1654f, 298f, -382f, -649f)), vec4<bool>(false, true, true, true), Struct_2(true, vec4<f32>(374f, -526f, 751f, -420f)), true), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(245f, 1419f, 1098f) * vec3<f32>(855f, 622f, -154f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-193f, 1262f, 906f), vec3<f32>(-202f, -1000f, -1165f)))), 10212u << (_wgslsmith_mult_u32(u_input.b, 1493u) % 32u)).x, true));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.zzz, select(~vec3<u32>(1u, u_input.d, u_input.a.x), ~vec3<u32>(u_input.b, u_input.b, 4294967295u), true), vec3<bool>(true, var_0.x || true, false)), _wgslsmith_div_vec3_i32(vec3<i32>(min(-6026i, u_input.c.x), u_input.c.x, -_wgslsmith_div_i32(u_input.c.x, u_input.c.x)), vec3<i32>(~u_input.c.x, abs(u_input.c.x), u_input.c.x)));
}

