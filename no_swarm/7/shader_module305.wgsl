struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec3<u32> {
    let var_0 = ~u_input.b.x;
    let var_1 = -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.a.x, 68945i, -2147483647i)), _wgslsmith_div_vec3_i32(~vec3<i32>(6010i, 2147483647i, u_input.a.x), -vec3<i32>(u_input.a.x, 1i, u_input.a.x)) | vec3<i32>(u_input.a.x, u_input.a.x & 1i, u_input.a.x));
    var var_2 = !(!(false == (u_input.a.x > -1i))) || all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true), false));
    var_2 = true;
    return vec3<u32>(~4294967295u, 89663u, 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = arg_0.a.x;
    let var_1 = any(arg_1);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-694f - _wgslsmith_f_op_f32(-496f * 2055f)))), _wgslsmith_f_op_f32(-504f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(569f + 158f), 571f, true)))));
    var var_3 = arg_0.b.zxx;
    var var_4 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-227f - -1000f), 1090f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), -1000f)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1961f - _wgslsmith_f_op_f32(step(534f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)))));
    let var_1 = vec2<u32>(firstTrailingBit(u_input.b.x), countOneBits(_wgslsmith_add_u32(~(~u_input.b.x), ~u_input.b.x ^ (1u ^ u_input.b.x))));
    let var_2 = ~countOneBits(~u_input.b.yx & vec2<u32>(17455u, _wgslsmith_div_u32(3438u, var_1.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(599f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f + -683f) - -1476f) - _wgslsmith_f_op_f32(sign(-520f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 0i) | vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), u_input.b), vec4<bool>(true, true, true, true)))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -647f);
    return _wgslsmith_sub_u32(u_input.b.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, abs(u_input.a.x & u_input.a.x), u_input.a.x), min(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -3050i, 5719i) | vec3<i32>(60969i, u_input.a.x, u_input.a.x)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 16097u, u_input.b.x), func_1()) % vec3<u32>(32u))), vec4<u32>(select(59481u, func_2(-u_input.a.x), any(vec2<bool>(true, true))), u_input.b.x, 22660u, ~_wgslsmith_sub_u32(1u, ~u_input.b.x)));
    var var_1 = u_input.a.x;
    var var_2 = select(true, true, false);
    var var_3 = 4294967295u;
    var var_4 = Struct_2(reverseBits(min(abs(~48314u), var_0.b.x)), select(vec2<i32>(2147483647i, -u_input.a.x), u_input.a, false), Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(var_0.a), var_0.a), vec4<u32>(min(78287u, 4294967295u), firstTrailingBit(firstTrailingBit(18372u)), ~var_0.b.x, ~(~3764u))), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(~(var_0.b.yx & var_0.b.wy), abs(min(u_input.b.zz, vec2<u32>(4294967295u, var_0.b.x)))), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.x, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0.a, vec4<u32>(18038u, 120767u, var_4.a, 62524u)), vec4<bool>(true, true, true, true))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)))));
}

