struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1416f, 1158f)));
    let var_1 = _wgslsmith_sub_u32(u_input.c, _wgslsmith_sub_u32(firstTrailingBit(u_input.e.x), abs(1462u)));
    var var_2 = vec3<i32>(abs(u_input.d), 2147483647i, ~u_input.d);
    var var_3 = ~vec3<u32>(~reverseBits(_wgslsmith_mod_u32(var_1, u_input.b.x)), countOneBits(~var_1), min(var_1 >> (~u_input.c % 32u), u_input.b.x ^ u_input.e.x));
    var_0 = _wgslsmith_f_op_f32(round(292f));
    return ~firstTrailingBit(~(-arg_1) >> (abs(select(u_input.b, vec3<u32>(var_1, var_3.x, var_3.x), vec3<bool>(true, true, false))) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.d.x);
    let var_1 = u_input.b;
    let var_2 = true;
    var var_3 = Struct_2(arg_0.a, Struct_1(u_input.e.x, _wgslsmith_div_i32(-1i, u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, arg_0.a.b), func_3(_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, u_input.d), vec2<i32>(21424i, u_input.d)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 22216i, u_input.d), vec3<i32>(arg_0.b.b, -1i, u_input.d)), ~vec3<i32>(arg_0.c, 0i, -25541i), -vec3<i32>(2147483647i, u_input.d, arg_0.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(425f, -981f, 1212f, arg_0.d.x) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.d.x, -624f, _wgslsmith_f_op_f32(trunc(arg_0.d.x)), _wgslsmith_f_op_f32(1653f - arg_0.d.x))))));
    var_3 = Struct_2(Struct_1(1u, -39297i), var_3.a, ~u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d) - arg_0.d));
    return _wgslsmith_sub_u32(var_3.a.a, var_3.b.a);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> bool {
    var var_0 = countOneBits(vec2<u32>(_wgslsmith_add_u32(u_input.c << (func_2(Struct_2(Struct_1(0u, u_input.d), Struct_1(18884u, 2147483647i), u_input.d, vec4<f32>(arg_0, arg_0, -784f, arg_0))) % 32u), 10884u), u_input.e.x));
    let var_1 = Struct_2(Struct_1(countOneBits(1u), -12357i), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4647u, 1420u), ~vec3<u32>(6791u, u_input.e.x, 1u)), u_input.d), -firstTrailingBit(reverseBits(countOneBits(1i))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(791f + _wgslsmith_f_op_f32(-142f * -155f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -417f)))));
    let var_2 = var_1.b;
    var var_3 = Struct_1(_wgslsmith_add_u32(~22806u, 1u), 24417i);
    var var_4 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), any(vec2<bool>(true, false))), select(vec2<bool>(true, var_0.x >= u_input.b.x), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(false, true))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    return any(!(!vec4<bool>(var_1.d.x <= -195f, all(vec3<bool>(var_4.x, var_4.x, var_4.x)), select(false, var_4.x, var_4.x), any(vec4<bool>(true, true, true, var_4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(func_1(_wgslsmith_f_op_f32(step(539f, -1612f)), ~vec4<u32>(u_input.c, u_input.b.x, u_input.a, u_input.a)), !(12804i <= u_input.d), !any(vec2<bool>(false, false)), true), vec4<bool>(false, false, all(vec4<bool>(true, true, true, true)), true), any(vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, true)), true, true)));
    var var_1 = min(i32(-1i) * -1i, ~u_input.d >> (countOneBits(u_input.a) % 32u));
    var var_2 = u_input.d;
    var_0 = vec4<bool>(false, (max(~0i, -u_input.d) & u_input.d) >= u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(637f, -201f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f * -1138f) + _wgslsmith_f_op_f32(f32(-1f) * -517f))) <= -1382f, var_0.x);
    var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(25504i, u_input.d, 15373i, 0i)), vec4<i32>(firstTrailingBit(u_input.d), -2147483647i, abs(2992i), _wgslsmith_sub_i32(u_input.d, u_input.d)))), _wgslsmith_mod_vec3_i32(~((vec3<i32>(u_input.d, -2147483647i, u_input.d) & vec3<i32>(-20545i, u_input.d, -13004i)) >> (vec3<u32>(u_input.c, u_input.c, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(~18691i, firstLeadingBit(7144i), u_input.d), ~(vec3<i32>(2147483647i, u_input.d, u_input.d) >> (vec3<u32>(u_input.a, u_input.c, u_input.c) % vec3<u32>(32u))))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.e.x, 50861u), vec3<u32>(0u, u_input.b.x, u_input.a)), 5480u, 1u), countOneBits(u_input.b << (vec3<u32>(0u, 34190u, 20646u) % vec3<u32>(32u)))) >> (abs(u_input.c) % 32u), firstLeadingBit(~(~(vec4<u32>(1u, 73171u, 4294967295u, u_input.a) >> (vec4<u32>(u_input.e.x, 40206u, u_input.a, 50022u) % vec4<u32>(32u))))));
}

