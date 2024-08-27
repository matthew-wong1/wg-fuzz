struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = vec3<i32>(abs(-arg_1.c.b.x), -(i32(-1i) * -1i), arg_1.c.b.x);
    var var_1 = vec2<bool>(true, any(select(!select(vec4<bool>(arg_2.c.c, true, arg_2.a.x, false), vec4<bool>(arg_1.c.c, arg_2.c.c, arg_1.c.c, arg_1.a.x), vec4<bool>(arg_1.c.c, arg_2.a.x, arg_1.c.c, arg_1.c.c)), !vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), !(!arg_2.a.x))));
    var var_2 = firstLeadingBit(0u);
    var var_3 = any(!(!vec4<bool>(all(vec4<bool>(false, var_1.x, var_1.x, arg_2.c.c)), true, var_1.x, var_1.x)));
    let var_4 = true;
    return (_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -115f)), _wgslsmith_f_op_f32(arg_2.c.d - arg_2.c.d)) - arg_2.c.d) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) + _wgslsmith_f_op_f32(-864f + _wgslsmith_f_op_f32(-arg_1.c.d)))) || !(_wgslsmith_mod_u32(4294967295u, ~1u) < ~_wgslsmith_mult_u32(u_input.a.x, 4294967295u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = select(_wgslsmith_f_op_f32(select(-301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(334f, -805f, arg_0.b.c))), arg_0.a.x)) != _wgslsmith_f_op_f32(round(arg_2)), arg_3.x, select(-740f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -340f)), arg_3.x & true, arg_0.a.x));
    var var_1 = !arg_0.a.x;
    return u_input.a;
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~(13429u & _wgslsmith_mod_u32(u_input.a.x, 1u)), ~(~u_input.a.x), 4989u), vec3<u32>(1u, _wgslsmith_sub_u32(0u, ~u_input.a.x), 6139u) >> (~u_input.a % vec3<u32>(32u)));
    var_0 = u_input.a;
    var_0 = ~vec3<u32>(u_input.a.x, 1u, select(~1u, ~u_input.a.x, any(vec2<bool>(true, false))));
    var_0 = func_4(Struct_3(!vec2<bool>(all(vec3<bool>(false, true, true)), func_3(vec3<i32>(-17126i, 45796i, -3442i), Struct_2(vec2<bool>(true, false), var_0.x, Struct_1(u_input.a.x, vec3<i32>(0i, -1i, -2147483647i), true, 1000f)), Struct_2(vec2<bool>(false, true), 51533u, Struct_1(var_0.x, vec3<i32>(42339i, 0i, 2147483647i), true, 145f)), u_input.a.x)), Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(24398u, u_input.a.x, 68458u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 0u, var_0.x))), countOneBits(vec3<i32>(2147483647i, 2147483647i, -13652i)), true, _wgslsmith_f_op_f32(max(691f, 226f))), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 133148u), u_input.a.yy)), _wgslsmith_add_vec2_u32(abs(var_0.xx), var_0.xy ^ select(vec2<u32>(u_input.a.x, 0u), abs(var_0.yy), true)), _wgslsmith_f_op_f32(f32(-1f) * -840f), select(vec3<bool>(true, true, !func_3(vec3<i32>(-2147483647i, 38964i, 5486i), Struct_2(vec2<bool>(true, true), u_input.a.x, Struct_1(7145u, vec3<i32>(-7560i, 1i, 2147483647i), true, -429f)), Struct_2(vec2<bool>(true, true), 4294967295u, Struct_1(5954u, vec3<i32>(-2147483647i, -13055i, -50143i), true, 739f)), u_input.a.x)), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)) || true));
    var_0 = u_input.a;
    return vec2<bool>(false, !(!all(vec2<bool>(false, true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_2(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(), all(vec4<bool>(false, false, false, true))), all(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 44577u, 15276u)) ^ vec3<u32>(~15403u, 4294967295u, u_input.a.x), ~select(firstLeadingBit(u_input.a), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 0u)), arg_1 > arg_1)), Struct_1(min(36500u, func_4(Struct_3(vec2<bool>(false, false), Struct_1(41825u, vec3<i32>(15813i, arg_0.x, 10123i), true, -269f), u_input.a.xx), vec2<u32>(0u, u_input.a.x), arg_1, vec3<bool>(false, true, false)).x << (abs(u_input.a.x) % 32u)), -vec3<i32>(arg_0.x | arg_0.x, 2147483647i, _wgslsmith_mult_i32(arg_2, arg_2)), true, -125f));
    var_0 = Struct_2(!(!(!(!var_0.a))), u_input.a.x, Struct_1(var_0.c.a, ~reverseBits(select(vec3<i32>(-1i, arg_0.x, var_0.c.b.x), var_0.c.b, false)), false, var_0.c.d));
    var var_1 = Struct_3(vec2<bool>(false, func_2().x), Struct_1(~min(firstLeadingBit(var_0.c.a), var_0.c.a), ~vec3<i32>(~31168i, ~(-2147483647i), -71695i), all(var_0.a), 2591f), u_input.a.xz | select(~countOneBits(vec2<u32>(0u, var_0.b)), select(u_input.a.zx, vec2<u32>(1u, u_input.a.x), !vec2<bool>(var_0.c.c, var_0.c.c)), vec2<bool>(any(vec3<bool>(false, false, false)), !var_0.a.x)));
    var_1 = Struct_3(var_1.a, var_1.b, ~vec2<u32>(var_0.c.a, u_input.a.x));
    var_1 = Struct_3(var_1.a, Struct_1(_wgslsmith_div_u32(var_0.b, ~0u) & var_1.b.a, max(var_0.c.b, var_1.b.b), true, var_0.c.d), vec2<u32>(28180u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 48828u), u_input.a.yy), 4294967295u, abs(u_input.a.x))));
    return Struct_2(func_2(), min(_wgslsmith_add_u32(0u, ~max(0u, var_1.c.x)), var_1.b.a), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(countOneBits(~vec2<i32>(1i, 1i)), 1018f, countOneBits(-_wgslsmith_mult_i32(-18671i, 45952i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.d), var_0.c.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(273f * var_0.c.d), _wgslsmith_f_op_f32(-var_0.c.d))))), _wgslsmith_div_f32(var_0.c.d, 344f)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~0u, select(var_0.c.a, 85765u, true)) | u_input.a.x, var_0.b), var_0.c.b.x, vec4<f32>(var_0.c.d, -877f, _wgslsmith_f_op_f32(select(var_0.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.d, var_0.c.d)) * _wgslsmith_f_op_f32(abs(var_0.c.d))), func_1(var_0.c.b.yz, var_0.c.d, 0i | var_0.c.b.x).a.x)), var_0.c.d), vec4<f32>(_wgslsmith_f_op_f32(var_0.c.d + 183f), _wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(835f * _wgslsmith_f_op_f32(step(494f, var_0.c.d))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f), var_0.c.d)), var_0.c.d));
}

