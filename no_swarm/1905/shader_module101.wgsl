struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_4,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> u32 {
    return ~(~_wgslsmith_clamp_u32(1u, 0u, 69741u));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_3(26622u, vec4<bool>(!arg_2.d.c.x, false, !arg_2.d.c.x & any(vec4<bool>(true, arg_2.d.c.x, arg_2.a.a.x, arg_2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0)) == arg_0), select(!arg_2.d.c, !arg_2.a.a.zz, select(arg_2.a.a.zy, !arg_2.d.c, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-639f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_5 {
    var var_0 = false;
    let var_1 = vec4<i32>(24533i, u_input.a.x, 12768i, abs(~u_input.a.x));
    return Struct_5(Struct_2(arg_1), u_input.b.yz, Struct_4(Struct_1(vec4<bool>(arg_1.x, !arg_0.c.x, !arg_0.c.x, any(arg_1)), vec2<i32>(u_input.b.x, var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-816f * -878f), -177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(194f)))), vec2<u32>(countOneBits(u_input.c), _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.a, arg_0.a), _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(arg_2.x, arg_0.a, u_input.c, u_input.c)))), Struct_3(4294967295u, vec4<bool>(true, arg_0.c.x, any(vec2<bool>(true, arg_1.x)), !arg_1.x), vec2<bool>(true, 1i > u_input.b.x))), !arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(1000f, -1000f)), 1i >> (u_input.c % 32u), Struct_4(Struct_1(arg_0.b, var_1.zw), vec3<f32>(-1120f, -661f, -1177f), arg_2.wz, arg_0))))), -706f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2236f, 642f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(107f, -356f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(768f))))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: f32) -> bool {
    let var_0 = true;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec2<u32>(u_input.c, min(~4294967295u, u_input.c)), u_input.c, true);
    let var_1 = Struct_2(vec2<bool>(520f < _wgslsmith_f_op_f32(-648f * _wgslsmith_f_op_f32(ceil(403f))), !func_4(30824i << (var_0 % 32u), vec2<u32>(4294967295u, 29140u), func_2(Struct_3(u_input.c, vec4<bool>(false, true, false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec4<u32>(u_input.c, 1u, 5544u, 0u)), _wgslsmith_f_op_f32(884f - -1000f))));
    var var_2 = Struct_1(vec4<bool>(true, true, true, !(select(-2147483647i, 28375i, var_1.a.x) <= 1i)), vec2<i32>(-31546i, u_input.a.x));
    let var_3 = abs(var_2.b);
    var_2 = Struct_1(!(!var_2.a), vec2<i32>(-43460i, var_2.b.x));
    var var_4 = func_2(func_2(func_2(func_2(Struct_3(var_0, var_2.a, var_2.a.zz), vec2<bool>(true, true), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0, 0u, u_input.c), vec4<u32>(var_0, 62296u, var_0, 4294967295u), vec4<u32>(var_0, u_input.c, u_input.c, var_0))).c.d, select(func_2(Struct_3(u_input.c, vec4<bool>(false, true, var_2.a.x, false), vec2<bool>(var_1.a.x, var_1.a.x)), vec2<bool>(var_1.a.x, false), vec4<u32>(var_0, var_0, 4294967295u, 4294967295u)).d.yy, !var_2.a.yw, var_1.a.x), vec4<u32>(abs(4294967295u), countOneBits(26818u), 15120u << (u_input.c % 32u), countOneBits(1u))).c.d, vec2<bool>(!(!var_2.a.x), true), vec4<u32>(~u_input.c, _wgslsmith_mult_u32(var_0, 4294967295u), min(27546u, var_0), u_input.c) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 16940u, var_0, 4294967295u), vec4<u32>(u_input.c, var_0, u_input.c, 103425u), vec4<u32>(4294967295u, var_0, 1u, u_input.c)) % vec4<u32>(32u))).c.d, select(var_2.a.yy, var_1.a, false), vec4<u32>(12870u, ~(~var_0 >> (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)), 1u, countOneBits(abs(~0u)))).c.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(var_0, ~(1041u ^ u_input.c)), u_input.c), abs(countOneBits(~abs(vec2<u32>(u_input.c, u_input.c)))));
}

