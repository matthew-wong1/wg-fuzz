struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, 833f);

var<private> global1: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_5) -> vec2<u32> {
    let var_0 = true;
    var var_1 = arg_2.a.b;
    let var_2 = Struct_1(arg_0.c, max(7167i, u_input.a.x));
    let var_3 = var_2;
    var var_4 = max(~(~arg_0.e), firstTrailingBit(vec2<u32>(countOneBits(38200u | arg_0.e.x), ~arg_0.e.x & ~arg_0.e.x)));
    return arg_0.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 1776f, arg_0.a.x) - _wgslsmith_f_op_vec3_f32(-arg_0.a.wzx)), _wgslsmith_f_op_vec3_f32(arg_0.a.zxz + _wgslsmith_f_op_vec3_f32(max(arg_0.a.yyx, arg_0.a.zxw))))) * arg_0.a.xyw) * _wgslsmith_f_op_vec3_f32(-arg_0.a.xxw));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.x * -505f), arg_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(793f))), arg_0.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-901f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = ~vec4<u32>(1u, firstLeadingBit(_wgslsmith_sub_u32(51247u << (arg_2 % 32u), 9888u & arg_0.e.x)), _wgslsmith_dot_vec3_u32(max(select(vec3<u32>(arg_0.e.x, 8515u, arg_0.e.x), vec3<u32>(0u, 20616u, arg_2), vec3<bool>(false, false, true)), ~vec3<u32>(arg_0.e.x, arg_2, arg_0.e.x)), firstTrailingBit(countOneBits(vec3<u32>(101507u, arg_2, 4294967295u)))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), arg_0.e), _wgslsmith_dot_vec2_u32(arg_0.e, arg_0.e)));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(var_0.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.xy))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_1.zy, _wgslsmith_f_op_vec2_f32(-var_1.xy))), var_1.xx, select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1192f))), 389f));
}

fn func_2(arg_0: i32) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(733f))))) * 225f);
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-676f, global0.x) + vec2<f32>(1024f, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(381f, -1680f) - vec2<f32>(-541f, 555f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -573f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(3141f, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -900f, -1011f, -1187f) + vec4<f32>(566f, global0.x, -941f, 315f)), Struct_1(u_input.a.x, u_input.a.x), -2147483647i, u_input.a.zz & vec2<i32>(arg_0, u_input.a.x), func_3(Struct_2(vec4<f32>(global0.x, 859f, global0.x, -778f), Struct_1(u_input.a.x, arg_0), -615i, vec2<i32>(-75461i, arg_0), vec2<u32>(1u, 31002u)), vec4<i32>(arg_0, arg_0, -8165i, arg_0), Struct_5(Struct_1(-1i, -7383i), vec3<f32>(1416f, -902f, 483f)))), vec4<i32>(u_input.a.x, ~u_input.a.x, ~(-24409i), firstTrailingBit(-52794i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(56208u, 88531u, 12009u, 0u), vec4<u32>(1u, 1u, 1u, 1u)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1393f, global0.x), vec2<f32>(1676f, global0.x))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1763f, -128f), vec2<f32>(-408f, global0.x))))))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1498f - global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-1429f - global0.x))))), Struct_1(38937i, u_input.a.x), -72435i, firstTrailingBit(u_input.a.xz), _wgslsmith_sub_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(29320u, 0u), vec2<u32>(1u, 18262u)), vec2<u32>(17745u, 42750u), vec2<bool>(false, true)), ~firstLeadingBit(vec2<u32>(53602u, 52447u))) & abs(firstTrailingBit(vec2<u32>(4294967295u, 61677u)) ^ vec2<u32>(6536u, 17781u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a.zw - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(var_0.a.yx)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, -1172f)))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global0 = vec2<f32>(-312f, arg_0.x);
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(18827i))), Struct_3(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(752f, global0.x))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -273f, -925f, -238f) * vec4<f32>(global0.x, 1257f, arg_0.x, global0.x)), Struct_1(1i, u_input.a.x), abs(_wgslsmith_clamp_i32(u_input.a.x, -1763i, u_input.a.x)), u_input.a.xy, vec2<u32>(4294967295u, countOneBits(65195u))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 2561f, 159f, -235f))) * vec4<f32>(117f, -488f, 1012f, arg_0.x)), Struct_1(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 80640i)), countOneBits(u_input.a.x) & (-28797i & u_input.a.x), select(vec2<i32>(-34730i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x) >> (vec2<u32>(27196u, 4294967295u) % vec2<u32>(32u)), true), ~vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), 334f))), 27471i), arg_0.xy, !vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), any(vec4<bool>(false, true, true, true))), 1u);
    global0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0.b.c.a, Struct_1(1i, i32(-1i) * -1i), 2147483647i, reverseBits(-_wgslsmith_mult_vec2_i32(var_0.b.c.d, vec2<i32>(u_input.a.x, var_0.b.c.c))), vec2<u32>(var_0.b.c.e.x | abs(0u), _wgslsmith_mult_u32(var_0.b.b.e.x, 46673u) << (var_0.b.c.e.x % 32u))), min(abs(-vec4<i32>(-54063i, 0i, var_0.b.e, var_0.b.c.b.b)) >> (vec4<u32>(~1u, 14799u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 7177u, 48484u), vec3<u32>(44440u, 0u, 0u)), ~0u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, 0i), ~(~0i), countOneBits(u_input.a.x | 0i), 1i)), var_0.e));
    var var_1 = 0u;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz));
    return var_0.b.b.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_div_u32(max(func_1(vec3<f32>(global0.x, -692f, 1437f)), 4294967295u), 0u), 11850u, true) ^ 0u;
    var var_1 = u_input.a.x;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1267f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec4<f32>(global0.x, global0.x, global0.x, global0.x), Struct_1(-47427i, u_input.a.x), u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), vec2<u32>(115824u, 12764u)), vec4<i32>(-2147483647i, -1i, u_input.a.x, u_input.a.x), 0u)))));
    global1 = _wgslsmith_f_op_f32(floor(-339f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) + global0.x), ~(vec2<i32>(~u_input.a.x, -1i) << (vec2<u32>(min(31904u, 16513u), 27900u) % vec2<u32>(32u))));
}

