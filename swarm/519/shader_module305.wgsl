struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = !any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, arg_0 <= arg_0, true), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_div_u32(~1u, ~(~countOneBits(4294967295u)));
    let var_2 = select(select(select(select(!vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, false), select(vec3<bool>(true, false, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, true))), vec3<bool>(true, var_0, false), !vec3<bool>(false, var_0, var_0)), select(select(vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, true)), any(vec3<bool>(var_0, var_0, false))), !vec3<bool>(var_0, false, var_0), !(!vec3<bool>(true, var_0, false))), true), !select(vec3<bool>(var_0, arg_0 >= arg_0, true), select(vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, false))), vec3<bool>(false, var_0, u_input.a.x < (i32(-1i) * -31196i)));
    return _wgslsmith_add_i32(_wgslsmith_div_i32(-10072i, u_input.a.x), 0i);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(func_3(718f), vec3<bool>(true, any(vec2<bool>(all(vec4<bool>(false, arg_3.b.x, arg_0.x, true)), arg_0.x)), true), arg_3.c);
    var_0 = arg_3;
    var var_1 = arg_2;
    var var_2 = -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2.x), vec2<i32>(_wgslsmith_div_i32(arg_3.c.b.x, -11249i), var_0.a)));
    var_2 = var_0.c.b.x;
    return _wgslsmith_f_op_f32(-651f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f)) + -1000f));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    var var_0 = abs(vec3<i32>(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, u_input.a.x, arg_0.a), vec3<i32>(2147483647i, -50488i, u_input.a.x), false), vec3<i32>(arg_0.a, 10193i, arg_2.x)), 1i, -1i));
    var var_1 = vec3<u32>(arg_0.c.a.x, arg_0.c.a.x, _wgslsmith_div_u32(~48056u, 4294967295u));
    var_1 = abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16024u, var_1.x), vec3<u32>(arg_0.c.a.x, 4294967295u, 47610u)), 4294967295u, ~42765u), vec3<u32>(0u, 82988u, abs(0u))));
    var_1 = vec3<u32>(var_1.x, 17978u, ~arg_0.c.a.x);
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(687f - _wgslsmith_f_op_f32(func_2(vec4<bool>(750f <= _wgslsmith_f_op_f32(-arg_3), true, false, true), vec3<i32>(15339i, 15790i, abs(23943i)) | vec3<i32>(0i, 2147483647i, var_0.x), arg_2, arg_0)));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = 4294967295u;
    var var_1 = Struct_3(_wgslsmith_clamp_u32(arg_2.a.x, min(17991u, ~42395u), 4294967295u), Struct_1(~(~vec2<u32>(arg_2.a.x, 4294967295u) >> (~vec2<u32>(arg_2.a.x, 30288u) % vec2<u32>(32u))), vec2<i32>(arg_2.b.x, ~(~1i))), arg_2.a.x);
    let var_2 = -min(~(-14723i), _wgslsmith_add_i32(8033i, _wgslsmith_dot_vec4_i32(vec4<i32>(18814i, var_1.b.b.x, arg_2.b.x, -14320i) >> (vec4<u32>(27973u, 5373u, var_0, 4294967295u) % vec4<u32>(32u)), abs(vec4<i32>(var_1.b.b.x, -1i, var_1.b.b.x, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(arg_0.x * 758f), _wgslsmith_f_op_f32(f32(-1f) * -884f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, -384f, 683f), vec4<f32>(-2162f, 220f, arg_0.x, -616f), vec4<bool>(false, true, false, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, 549f, 733f, arg_0.x)))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(632f, -250f, -1378f, 1140f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 724f, 897f, arg_0.x))))));
    var var_4 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(min(firstTrailingBit(arg_1), _wgslsmith_div_u32(arg_2.a.x, var_1.c)), reverseBits(firstLeadingBit(arg_1)), 0u, var_1.a), vec4<u32>(~var_1.b.a.x, firstTrailingBit(arg_2.a.x) >> (0u % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, var_0, 1u), vec3<u32>(8250u, var_1.b.a.x, 22013u), vec3<bool>(false, false, false)), abs(vec3<u32>(28715u, 4294967295u, 0u))), arg_2.a.x)), _wgslsmith_div_vec4_u32(firstLeadingBit(select(vec4<u32>(0u, 12707u, arg_1, var_0), vec4<u32>(10007u, 11303u, arg_1, 35558u), vec4<bool>(true, true, true, false))) ^ ~vec4<u32>(arg_1, 4294967295u, var_0, arg_2.a.x), abs(~vec4<u32>(1u, var_0, 13164u, 94485u))));
    return StorageBuffer(var_1.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~0u));
    let var_1 = Struct_1(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(27638u, 21020u), vec2<u32>(var_0, 23178u)))), vec2<i32>(u_input.a.x, u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f + _wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -252f))))));
    var var_3 = !(!vec2<bool>(_wgslsmith_f_op_f32(sign(-369f)) <= -1000f, true));
    var var_4 = 4294967295u;
    var_3 = !vec2<bool>(false, var_3.x);
    let var_5 = Struct_3(1u, Struct_1(vec2<u32>(select(var_1.a.x, ~1u, !var_3.x), _wgslsmith_div_u32(firstLeadingBit(17041u), max(4294967295u, 49084u))), vec2<i32>(u_input.a.x, -u_input.a.x)), 4294967295u);
    let x = u_input.a;
    s_output = func_4(vec2<f32>(-347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(u_input.a.x, vec3<bool>(false, var_3.x, true), var_5.b), -1717f, vec3<i32>(0i, -16145i, -31916i), -847f))))), 1u | abs(max(var_0 & 0u, 1u >> (var_1.a.x % 32u))), Struct_1(vec2<u32>(var_1.a.x, 34402u), -vec2<i32>(_wgslsmith_div_i32(5802i, 39495i), func_3(255f))));
}

