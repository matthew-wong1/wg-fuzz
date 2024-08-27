struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.a))), arg_0.b, _wgslsmith_f_op_f32(sign(513f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2048f)) * _wgslsmith_f_op_f32(f32(-1f) * -762f)) + arg_0.c), arg_0.d.b));
    var var_1 = Struct_5(var_0.d, Struct_4(false && !var_0.b.b.b.x, ~vec3<u32>(~3816u, 1u, firstLeadingBit(0u)), arg_0.a.x, arg_0.a, vec3<i32>(abs(~u_input.a.x), ~1i, -59368i)), min(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 17755u), vec2<u32>(6949u, 62533u))), abs(~vec2<u32>(0u, 4294967295u))), ~reverseBits(1u)), 9276i);
    let var_2 = true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1702f, _wgslsmith_f_op_f32(var_0.a.x * -611f)))) == _wgslsmith_f_op_f32(-arg_0.a.x));
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_1.b.e.x), var_1.b.e), _wgslsmith_mod_vec3_i32(~u_input.a.wwy, u_input.a.zyy)), u_input.a.xxz), ~vec3<i32>(-u_input.a.x << ((var_1.b.b.x ^ var_1.c) % 32u), 2147483647i, u_input.a.x | min(0i, 43008i)));
    let var_4 = any(select(var_1.a.b.yzw, select(!select(var_1.a.b.xwy, vec3<bool>(false, false, var_1.a.b.x), arg_0.b.a.b.xyz), vec3<bool>(true, var_2, !var_2), !(-2147483647i <= var_3)), !arg_0.b.b.b.wzw));
    return firstLeadingBit(var_1.b.b.x);
}

fn func_2() -> Struct_4 {
    return Struct_4(true, vec3<u32>(~0u, func_3(Struct_3(vec2<f32>(-115f, 1220f), Struct_2(Struct_1(-1245f, vec4<bool>(true, true, true, true)), Struct_1(319f, vec4<bool>(true, true, true, false))), -262f, Struct_1(-498f, vec4<bool>(true, true, true, true)))) << (~(~4294967295u) % 32u), 1u), 468f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-615f * _wgslsmith_f_op_f32(1000f + 1000f)), _wgslsmith_f_op_f32(select(-959f, _wgslsmith_f_op_f32(floor(-2142f)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1889f, -1164f))))), any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))))), u_input.a.wwy);
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, 1f)), !vec4<bool>(false, all(vec2<bool>(true, true)), all(vec2<bool>(false, true)), false)));
    let var_1 = max(~var_0.b.x, ~53829u);
    let var_2 = Struct_1(var_0.d.x, select(!(!select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(var_0.a, true, var_0.a, var_0.a), true)), vec4<bool>(!(var_0.d.x != var_0.c), !all(vec3<bool>(true, true, true)), all(select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, var_0.a), var_0.a)), true), !(!var_0.a) || true));
    var var_3 = !(!any(!var_2.b));
    var var_4 = var_0;
    var_3 = !var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.x, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, var_4.b.x), ~vec4<u32>(var_1, 33936u, 0u, 20266u)), 79254u), abs(var_0.b.x)));
}

