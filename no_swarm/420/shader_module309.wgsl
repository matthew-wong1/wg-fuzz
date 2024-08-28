struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -858f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(467f))));
    let var_0 = Struct_1(true, arg_0.x, vec4<f32>(1f, 1806f, 800f, _wgslsmith_f_op_f32(f32(-1f) * -144f)), vec4<i32>(u_input.d, u_input.c, firstLeadingBit(-2147483647i), min(15702i, i32(-1i) * -u_input.c)));
    global0 = _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x))), 507f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2395f + _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = vec4<i32>(i32(-1i) * -1i, u_input.d, 5291i, abs(6325i));
    return vec4<u32>(0u, 4294967295u, _wgslsmith_dot_vec2_u32(~(u_input.a.zz & vec2<u32>(u_input.a.x, 49673u)), min(vec2<u32>(0u, u_input.b), min(vec2<u32>(u_input.b, 77516u), vec2<u32>(4294967295u, 1u)))) >> (u_input.a.x % 32u), ~(~(~u_input.b)));
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(~(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(216f, -1066f) - vec2<f32>(-716f, -1000f))) & ~(~vec4<u32>(u_input.b, 1u, 51377u, 79051u))));
    var var_1 = -438f;
    var var_2 = -1147f;
    let var_3 = vec2<bool>(!any(vec2<bool>(all(vec4<bool>(true, true, false, true)), false)), all(vec2<bool>(true, true)));
    var_2 = _wgslsmith_div_f32(-876f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(272f, 1179f) * 1789f))))));
    return Struct_1(false, 549f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-446f + _wgslsmith_f_op_f32(ceil(292f))), _wgslsmith_f_op_f32(f32(-1f) * -1581f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -748f), _wgslsmith_f_op_f32(ceil(333f)))), firstTrailingBit(-vec4<i32>(~1i, _wgslsmith_sub_i32(u_input.c, 1i), u_input.c, u_input.c)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = any(select(!(!select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(true, var_0.a, true, var_0.a))), vec4<bool>(var_0.a, !func_2().a, true, any(vec3<bool>(false, var_0.a, var_0.a))), ~(45514u ^ u_input.b) <= u_input.a.x));
    global0 = arg_0.x;
    var_1 = reverseBits(u_input.a.x >> (max(u_input.a.x, 27540u) % 32u)) != 4467u;
    let var_2 = u_input.c;
    return var_0;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(f32(-1f) * -1450f));
    var var_0 = arg_0;
    var var_1 = func_2().a;
    var_0 = func_2();
    var_0 = func_1(vec4<f32>(arg_0.b, arg_0.b, 1409f, var_0.b));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<i32>(~(-34753i), ~func_4(func_1(vec4<f32>(694f, -1135f, 255f, 1823f)))), ~(firstTrailingBit(vec4<i32>(31427i, -33742i, -2147483647i, -18350i) >> (vec4<u32>(37060u, 0u, 1u, u_input.b) % vec4<u32>(32u))) >> (~vec4<u32>(1u, u_input.a.x, u_input.a.x, 31998u) % vec4<u32>(32u))));
    var var_1 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(min(1u, ~u_input.a.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.b), u_input.a.x >> (u_input.b % 32u))), ~vec2<u32>(~0u, u_input.b)), u_input.a.x, false);
    var_1 = 0u;
    let var_2 = u_input.d | ((var_0.a.x >> (reverseBits(24349u) % 32u)) | -(~var_0.a.x ^ (var_0.b.x & -2147483647i)));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(12084u));
}

