struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = ~((~(arg_0 >> (arg_0 % 32u)) >> (~_wgslsmith_clamp_u32(48302u, 0u, 57008u) % 32u)) >> (arg_0 % 32u));
    var_0 = ~4294967295u;
    return Struct_1(!select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
}

fn func_1() -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))), u_input.b.zx, func_2(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f * -554f)), _wgslsmith_f_op_f32(-866f - -2566f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-603f - -1249f), 1116f))), false, true);
    var_0 = Struct_3(var_0.a, vec2<i32>(~17010i, 1i) | ~vec2<i32>(u_input.b.x, ~16554i), Struct_1(vec2<bool>(true, true)), false, false);
    var var_1 = firstLeadingBit(u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1255f * 1f)));
    var var_3 = var_0.b;
    return u_input.a ^ ~u_input.d.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = ~arg_2;
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(_wgslsmith_mult_u32(arg_1 >> (0u % 32u), ~arg_1), 4294967295u, 41060u, ~(0u | arg_1))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -471f);
    var_1 = _wgslsmith_sub_u32(firstTrailingBit(0u), countOneBits(7066u) << (arg_3 % 32u));
    let var_3 = vec3<bool>(!(arg_3 != arg_0.x), !all(vec4<bool>(true, true, true, true)), true);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~min(u_input.a, ~0u), ~(~u_input.a), func_1() << (13221u % 32u), u_input.a);
    let var_1 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-111f - -1000f) != _wgslsmith_f_op_f32(trunc(-1213f)), true)));
    var var_2 = var_1.a.a;
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(~30034u, _wgslsmith_div_u32(0u, u_input.c.x), var_0.x, ~u_input.c.x), abs(vec4<u32>(~var_0.x, 33584u | var_0.x, _wgslsmith_div_u32(4294967295u, 4294967295u), u_input.a))), min(firstTrailingBit(abs(vec4<u32>(4294967295u, 0u, var_0.x, 4294967295u))) >> (vec4<u32>(4294967295u, var_0.x, func_3(vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.d.x), var_0.x, -7003i, 0u), _wgslsmith_clamp_u32(var_0.x, 70344u, var_0.x)) % vec4<u32>(32u)), max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9375u, u_input.d.x, u_input.a, var_0.x), vec4<u32>(66829u, u_input.a, 87052u, var_0.x)), _wgslsmith_mod_u32(29047u, var_0.x), ~1u, _wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(u_input.c.x, 0u))), ~(~vec4<u32>(var_0.x, var_0.x, 19060u, 0u)))));
    var_2 = !(!(!vec2<bool>(false, u_input.b.x >= u_input.b.x)));
    var_2 = var_1.a.a;
    var var_3 = 47086u;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b | u_input.b, -_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(48611i, u_input.b.x, u_input.b.x))) >> (_wgslsmith_div_vec3_u32(var_0.zzx, max(select(var_0.xwz, vec3<u32>(5554u, 37580u, u_input.a), var_2.x), vec3<u32>(1u, 12403u, 28946u))) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1071f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-528f)), -1945f)), !var_2.x)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -109f), -309f))), abs(-(~u_input.b.x)));
}

