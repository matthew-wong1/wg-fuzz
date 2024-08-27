struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    return abs(1i);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: f32) -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -391f))))), true));
    let var_1 = Struct_1(vec4<u32>(u_input.c.x, select(~u_input.a.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 100147u)), ~vec4<u32>(1u, u_input.b.x, 13751u, 1u)), all(vec2<bool>(true, true))), ~45002u, _wgslsmith_mult_u32(abs(u_input.b.x), _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(u_input.b.x, u_input.a.x, 10815u) | vec3<u32>(4294967295u, u_input.b.x, 0u)))), min(_wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, u_input.c.x) | u_input.c, vec2<u32>(0u, 0u) & u_input.b), u_input.a.zx), _wgslsmith_sub_vec2_u32(u_input.a.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 1u), ~u_input.c))), firstLeadingBit(u_input.a), ~(~vec3<u32>(1u, ~20368u, 4294967295u)), _wgslsmith_add_vec4_i32(~u_input.d, ~(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, arg_0.x, -2147483647i, arg_0.x), u_input.d) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, 390u, u_input.a.x), vec4<u32>(u_input.c.x, 1u, 11615u, u_input.a.x)) % vec4<u32>(32u)))));
    let var_2 = Struct_2(_wgslsmith_div_f32(-308f, _wgslsmith_f_op_f32(step(363f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1258f)) + _wgslsmith_f_op_f32(round(arg_2)))))), min(arg_0.x, var_1.e.x) < u_input.d.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, var_0.a.a) * vec3<f32>(arg_2, 1604f, 226f)))) + vec3<f32>(_wgslsmith_f_op_f32(var_2.a - var_0.a.a), _wgslsmith_f_op_f32(floor(1076f)), -1149f)), vec3<f32>(arg_2, _wgslsmith_f_op_f32(ceil(var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, -1270f)) + _wgslsmith_f_op_f32(arg_2 - -340f))))) + vec3<f32>(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f)), var_0.a.a)), -1048f));
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(612f + 1439f)))), true));
    return var_1.e.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = 6768i;
    var_0 = -31988i;
    let var_1 = vec4<i32>(~abs(u_input.d.x) | func_3(abs(-vec3<i32>(9666i, 1i, arg_3)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, arg_2)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(337f, arg_2) * vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_f32(arg_2 + 1f)), u_input.d.x, min(_wgslsmith_mult_i32(-u_input.d.x, -_wgslsmith_add_i32(u_input.d.x, u_input.d.x)), _wgslsmith_mod_i32(~u_input.d.x, _wgslsmith_add_i32(countOneBits(2147483647i), _wgslsmith_dot_vec3_i32(u_input.d.xwx, u_input.d.zxw)))), _wgslsmith_mod_i32(arg_3, ~(arg_3 ^ 5645i)));
    var_0 = u_input.d.x;
    var_0 = firstTrailingBit(~(~1i));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -259f), arg_1)))) + -398f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec4<i32>(0i, func_1(Struct_1(max(vec4<u32>(0u, u_input.b.x, 0u, u_input.a.x), vec4<u32>(u_input.b.x, u_input.a.x, 42498u, u_input.b.x)), _wgslsmith_sub_vec2_u32(u_input.b, u_input.b), ~u_input.a, u_input.a, firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x)))), -1113i, _wgslsmith_mult_i32(~(-36459i ^ u_input.d.x), -2147483647i)), vec4<i32>(18548i, ~(-25136i), u_input.d.x, reverseBits(-_wgslsmith_add_i32(u_input.d.x, u_input.d.x))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2(~vec2<u32>(1u, u_input.a.x), !(select(false, false, true) | all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 62311i)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(358f)), false));
    let var_3 = u_input.a.zz;
    var_2 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_3, false, var_1.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a - 207f))), true));
    var_2 = Struct_3(var_2.a);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 1925f, _wgslsmith_div_f32(-1000f, -211f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)), 346f, _wgslsmith_f_op_f32(f32(-1f) * -270f)))));
    var var_5 = _wgslsmith_div_u32(reverseBits(1u), ~u_input.c.x);
    var var_6 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_4.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - var_2.a.a)), var_2.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, firstTrailingBit(u_input.c.x ^ 0u)), ~abs(~u_input.a.x), var_3.x, 17087u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.a.a, _wgslsmith_f_op_f32(f32(-1f) * -570f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2151f, var_1.x) * vec2<f32>(-510f, var_1.x))))));
}

