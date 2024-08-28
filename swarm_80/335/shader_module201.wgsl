struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_4,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(253f - _wgslsmith_f_op_f32(step(940f, 1463f)))), max(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 40068u, 39087u, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 27847u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))), max(1u, ~max(u_input.b.x, 34905u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-968f * arg_0)), _wgslsmith_f_op_f32(select(-395f, _wgslsmith_f_op_f32(round(722f)), true)), all(vec3<bool>(true, true, true)))), -select(countOneBits(u_input.a.yy), vec2<i32>(65443i, -2147483647i), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), vec3<bool>(true, all(vec3<bool>(true, true, true)), false), any(vec3<bool>(true, true, true))), Struct_1(arg_0, (countOneBits(vec4<u32>(14782u, 24779u, 0u, 0u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(7395u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 32003u, u_input.b.x, 4294967295u)) % vec4<u32>(32u))) ^ vec4<u32>(0u, u_input.b.x, 51196u, ~u_input.b.x), ~1u, arg_0, -vec2<i32>(0i, -u_input.c.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d.x, -11948i, u_input.a.x)), vec3<i32>(-10479i, u_input.a.x, 2147483647i) << (u_input.b % vec3<u32>(32u))), 2147483647i));
    var var_1 = var_0.a;
    let var_2 = ~u_input.d.xz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d)));
    let var_4 = var_0.a.b.zw;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -370f), 143f, select(!(145f <= var_1.a), !select(var_0.b.x, var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(var_0.c.a - var_0.c.a) > -135f))) * 766f);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(361f - arg_0.a.x) * _wgslsmith_f_op_f32(step(arg_3.d, arg_0.a.x))), 1640f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1248f, vec4<i32>(arg_0.e, u_input.c.x, 0i, -74160i))) * arg_3.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) + _wgslsmith_f_op_f32(min(-944f, arg_3.d)))), _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, arg_3.a, -1858f, arg_3.d))) - vec4<f32>(174f, arg_0.a.x, -674f, 364f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(525f, -1067f, -1238f, arg_0.a.x) + vec4<f32>(arg_0.a.x, arg_3.a, 328f, arg_3.d)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.d))), arg_3.a))));
    let var_1 = !(!(!(!(!vec4<bool>(arg_0.b.x, false, false, arg_0.b.x)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -738f)) - -509f)) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(arg_3.a + arg_3.d))))));
    var var_3 = ~vec4<i32>(arg_3.e.x, arg_3.e.x, arg_3.e.x >> (min(~u_input.b.x, u_input.b.x) % 32u), arg_3.e.x);
    var var_4 = arg_0.a.x;
    return 59454u;
}

fn func_1(arg_0: f32, arg_1: bool) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1682f - 240f))) + arg_0), ~vec4<u32>(277u, abs(abs(u_input.b.x)), _wgslsmith_div_u32(u_input.b.x, 1u), _wgslsmith_sub_u32(~u_input.b.x, func_2(Struct_4(vec2<f32>(arg_0, arg_0), vec2<bool>(false, arg_1), vec2<u32>(u_input.b.x, 1u), 57614u, 2147483647i), u_input.a, u_input.c.x, Struct_1(-1000f, vec4<u32>(6504u, u_input.b.x, 91970u, 11736u), u_input.b.x, arg_0, vec2<i32>(u_input.c.x, u_input.d.x))))), _wgslsmith_clamp_u32(1u, ~58977u, 49866u) << (_wgslsmith_div_u32(~(~u_input.b.x), 7363u) % 32u), _wgslsmith_f_op_f32(sign(arg_0)), u_input.d.xx);
    var var_1 = 1f;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, -1296f, 1539f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -231f, -1091f) + vec3<f32>(499f, -435f, -730f)), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d, var_0.a, -1044f), vec3<f32>(arg_0, 1035f, arg_0), vec3<bool>(true, arg_1, arg_1))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-294f, 911f, -2910f) - vec3<f32>(arg_0, arg_0, var_0.d)))))));
    var var_3 = !(!(!select(!vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1)));
    var_1 = var_0.d;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, 1000f, -413f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(abs(vec3<i32>(reverseBits(u_input.c.x), 2147483647i, abs(0i & u_input.d.x))), ~u_input.a);
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(0i, -4074i ^ u_input.c.x)), var_0.zz), -u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, 1000f, 1161f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(126f, 1499f, -1000f), _wgslsmith_f_op_vec3_f32(func_1(-1698f, true))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2062f, -1000f, 1361f)) - vec3<f32>(1574f, -1478f, 1952f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(650f, 367f, -211f) + vec3<f32>(-715f, 150f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, 140f, -156f) - vec3<f32>(-1000f, 983f, 541f)))))));
}

