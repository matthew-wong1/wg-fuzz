struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -24017i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = true || !(~(~0u) > arg_2.x);
    var var_1 = Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(arg_2, firstTrailingBit(~vec2<u32>(1u, 4294967295u)))), vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), ~u_input.b, abs(~(-1i))), Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(43285u, 20765u, arg_2.x, u_input.a), ~countOneBits(vec4<u32>(0u, 4294967295u, u_input.a, arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f + 149f) - _wgslsmith_f_op_f32(abs(-303f))) - _wgslsmith_f_op_f32(f32(-1f) * -320f)) - -1344f));
    global0 = countOneBits(-firstTrailingBit(_wgslsmith_mod_i32(u_input.b, firstLeadingBit(-10419i))));
    return abs(vec3<i32>(u_input.b | (_wgslsmith_sub_i32(var_1.b.x, var_1.b.x) >> (u_input.a % 32u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_add_i32(firstTrailingBit(0i), ~1i)), u_input.b));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = Struct_3(Struct_1(arg_0.wx), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-34795i, -33457i, u_input.b), -vec3<i32>(u_input.b, u_input.b, u_input.b)), func_3(u_input.b != -16799i, vec2<bool>(true, true), ~vec2<u32>(arg_0.x, arg_0.x))), select(vec3<i32>(~u_input.b, _wgslsmith_mod_i32(238i, u_input.b), u_input.b), vec3<i32>(u_input.b, 0i ^ u_input.b, 1i), all(vec4<bool>(true, true, true, true)))), Struct_2(~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-712f - -713f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1399f, -982f), -316f))));
    var var_1 = 40330u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * var_0.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) - var_0.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.d + 816f)) + -931f) + -191f));
    var_0 = Struct_3(Struct_1(~(firstTrailingBit(arg_0.xz) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_0.c.a), var_0.a.a))), vec3<i32>(-58520i, firstLeadingBit(~reverseBits(1i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b.x), vec2<i32>(-1i, 0i))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) + 862f) - -580f));
    var_1 = 1u;
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(-3567i, var_0.b.x), func_3(!all(vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, false, true)), false), arg_0.xx).x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    var var_0 = true;
    var var_1 = Struct_3(arg_0, vec3<i32>(_wgslsmith_sub_i32(abs(-1i), 17380i), 1i, func_2(select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 1u, 15514u, arg_0.a.x), vec4<u32>(22175u, 1u, u_input.a, 0u)), abs(vec4<u32>(45014u, u_input.a, 0u, arg_0.a.x)), vec4<bool>(true, true, true, true)))), arg_1, _wgslsmith_f_op_f32(-arg_2.x));
    var_1 = Struct_3(Struct_1(var_1.a.a), max(vec3<i32>(firstLeadingBit(func_3(true, vec2<bool>(true, false), var_1.a.a).x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.b.xy, var_1.b.zz), var_1.b.yx), _wgslsmith_dot_vec2_i32(~var_1.b.yz, -vec2<i32>(u_input.b, 17990i))), vec3<i32>(-1i, var_1.b.x, max(abs(var_1.b.x), ~(-2147483647i)))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1473f)))));
    var_1 = Struct_3(var_1.a, abs(countOneBits(-(~vec3<i32>(-2147483647i, -16225i, var_1.b.x)))), Struct_2(4294967295u), arg_2.x);
    global0 = 1i;
    return reverseBits(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(29971u, 62241u);
    var var_1 = ~(~u_input.b ^ (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14933i, 52692i, -1i, u_input.b), vec4<i32>(14319i, 74604i, 0i, -1i)), -1i) >> (0u % 32u)));
    var_0 = _wgslsmith_div_u32(firstLeadingBit(func_1(Struct_1(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 71129u))), Struct_2(abs(u_input.a)), vec3<f32>(1f, 1f, 1f))), reverseBits(4294967295u));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1462f, -779f)), vec2<f32>(1028f, 1529f))), vec2<f32>(-1444f, _wgslsmith_f_op_f32(1000f - -458f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), -1292f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-385f)), 775f)), vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true)))));
    let var_3 = _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.a, 57575u, 60479u)) >> (~vec3<u32>(6220u, ~4294967295u, u_input.a << (1738u % 32u)) % vec3<u32>(32u)), vec3<u32>(abs(reverseBits(~u_input.a)), ~u_input.a, ~u_input.a << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53071u, 29992u, u_input.a), vec3<u32>(45268u, u_input.a, u_input.a)), u_input.a) % 32u)));
    let var_4 = ~firstTrailingBit(vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 0u, 1u, 4294967295u) >> (vec4<u32>(var_3, var_3, 82396u, 0u) % vec4<u32>(32u)), vec4<u32>(var_3, var_3, u_input.a, u_input.a))));
    let var_5 = Struct_2(_wgslsmith_mult_u32(u_input.a, var_3));
    var var_6 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(var_4.x, var_4.x), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_dot_vec4_i32(reverseBits(firstLeadingBit(min(vec4<i32>(u_input.b, 23315i, u_input.b, -2147483647i), vec4<i32>(u_input.b, -2147483647i, u_input.b, -2147483647i)))), -vec4<i32>(u_input.b ^ u_input.b, u_input.b, 2147483647i, -u_input.b)), reverseBits(~(~var_4.x)) ^ select(6275u >> (~var_3 % 32u), 1u, false));
}

