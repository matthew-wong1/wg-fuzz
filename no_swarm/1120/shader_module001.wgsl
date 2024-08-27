struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_3(arg_3.a);
    var var_1 = arg_3.a;
    var_1 = var_0.a;
    var_1 = arg_3.a;
    var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(var_1.a, ~arg_3.a.a), arg_3.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.a.c)))), 229f), true));
    return 293f;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = ~19375u;
    let var_1 = vec4<bool>(false, select(false, 13409i < u_input.b, true), !all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, false), true)), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1806f, 297f)) - -1300f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1728f + 660f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(428f - -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -738f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)))));
    var var_3 = ~arg_0.x;
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(vec3<u32>(1u, arg_0.x, arg_0.x)), ~u_input.d.x, arg_0.x & 72052u, Struct_3(Struct_1(u_input.d, u_input.a, -173f, var_1.x))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_0.x), vec3<u32>(arg_0.x, 20325u, u_input.d.x), vec3<u32>(1u, arg_0.x, 7503u)), min(65818u, arg_0.x), min(u_input.d.x, 49921u), Struct_3(Struct_1(u_input.d, 0i, -1084f, true)))))))));
    return Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(arg_0, arg_0), abs(1i), _wgslsmith_f_op_f32(step(-431f, 1727f)), !all(vec2<bool>(var_1.x, false)) || true));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    let var_0 = func_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(51236u, arg_0.a.x), ~min(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.d.x, arg_0.a.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(58256u, 1u), arg_0.a))));
    let var_1 = Struct_4(Struct_3(arg_0), ~vec3<i32>(var_0.a.b, -79249i, var_0.a.b), firstTrailingBit(0i));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    return !arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(max(_wgslsmith_clamp_vec2_i32(u_input.c.yz, -abs(vec2<i32>(2147483647i, u_input.a)), vec2<i32>(1i ^ u_input.c.x, 47356i)), select(select(vec2<i32>(u_input.b, -5368i), u_input.c.zx, vec2<bool>(true, false)), select(u_input.c.xz, u_input.c.xx, true), func_1(Struct_1(u_input.d, 0i, -425f, true), vec4<f32>(-1169f, 707f, -435f, 125f))) >> (vec2<u32>(~u_input.d.x, ~22335u) % vec2<u32>(32u))), ~(~u_input.c.xx), !vec2<bool>(all(vec3<bool>(true, true, true)), false));
    var_0 = -u_input.c.zx;
    var_0 = ~(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(var_0.x, 24017i)) & var_0.x, -(var_0.x << (u_input.d.x % 32u))) ^ (firstTrailingBit(countOneBits(vec2<i32>(u_input.b, u_input.a))) ^ max(vec2<i32>(1i, u_input.b), -u_input.c.xy)));
    var var_1 = ~41197u;
    var_1 = min(4294967295u, 5628u);
    var_0 = abs(u_input.c.yz);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f + _wgslsmith_f_op_f32(sign(408f))) + -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(u_input.d.x, abs(min(2755u, u_input.d.x)), _wgslsmith_mod_u32(u_input.d.x, 46158u) | 1u), 32219u), 26522u, vec4<f32>(var_2, _wgslsmith_f_op_f32(func_3(vec3<u32>(~u_input.d.x, 1u, u_input.d.x), ~u_input.d.x, ~u_input.d.x, Struct_3(func_2(vec2<u32>(82124u, u_input.d.x)).a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(862f)))))), var_2));
}

