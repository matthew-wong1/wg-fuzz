struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec3<u32> {
    var var_0 = u_input.c;
    var var_1 = true;
    var_0 = u_input.c;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))) < _wgslsmith_f_op_f32(f32(-1f) * -176f);
    var var_2 = u_input.a.x;
    return u_input.c;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(304f, _wgslsmith_f_op_f32(-arg_1))));
    var var_1 = ~vec3<u32>(~(~(~arg_2.b.x)), _wgslsmith_dot_vec4_u32(arg_0.b.b, vec4<u32>(select(arg_0.b.b.x, 4294967295u, false), u_input.c.x, _wgslsmith_add_u32(u_input.c.x, 0u), ~0u)), abs(arg_2.b.x));
    var_1 = ~arg_2.b.xww;
    var_1 = vec3<u32>(func_2().x, var_1.x, firstLeadingBit(30740u)) >> (~vec3<u32>(~(4403u << (var_1.x % 32u)), var_1.x, ~(~46640u)) % vec3<u32>(32u));
    var_1 = abs(~vec3<u32>(arg_0.a.x, ~arg_0.a.x, arg_2.b.x >> (4294967295u % 32u)) << (vec3<u32>(~arg_2.b.x, ~arg_0.a.x << (77u % 32u), var_1.x) % vec3<u32>(32u)));
    return select(vec3<bool>(!any(vec4<bool>(true, true, true, true)), false, _wgslsmith_div_u32(~u_input.c.x, _wgslsmith_add_u32(arg_0.a.x, 0u)) >= ((arg_0.b.b.x >> (4294967295u % 32u)) ^ 85506u)), !vec3<bool>(any(vec2<bool>(true, true)), false, all(vec3<bool>(false, true, false))), vec3<bool>(true, true, true));
}

fn func_1(arg_0: u32, arg_1: f32) -> StorageBuffer {
    let var_0 = func_3(Struct_2(~func_2(), Struct_1(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a), min(vec4<u32>(4294967295u, 1u, u_input.c.x, 4294967295u), firstTrailingBit(vec4<u32>(4294967295u, 41178u, 55487u, 49003u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -416f)), u_input.b, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -775f, arg_1, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 578f, -171f, arg_1)))))), _wgslsmith_f_op_f32(arg_1 - arg_1), Struct_1(select(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -33229i), u_input.a) ^ vec2<i32>(65915i, 20113i), u_input.a, true), ~(~vec4<u32>(arg_0, 10947u, 75170u, u_input.c.x)), vec2<f32>(_wgslsmith_f_op_f32(min(arg_1, -2325f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(344f + 757f) * _wgslsmith_f_op_f32(358f - arg_1))), -82211i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, -1407f, 133f, -289f)))))));
    let var_1 = select(true, select(!((-1i | u_input.b) >= (u_input.b | u_input.a.x)), firstTrailingBit(~12051i) != (u_input.b << (84170u % 32u)), true), var_0.x);
    let var_2 = var_0;
    let var_3 = Struct_3(~firstTrailingBit(~vec4<i32>(36802i, u_input.a.x, u_input.b, u_input.b)) << (~vec4<u32>(7405u ^ u_input.c.x, 18133u, u_input.c.x, 72667u) % vec4<u32>(32u)), Struct_1(u_input.a, vec4<u32>(arg_0, 55017u >> (_wgslsmith_mod_u32(0u, arg_0) % 32u), ~abs(18997u), 1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), -738f), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(359f, arg_1), _wgslsmith_f_op_f32(trunc(117f)), arg_1, _wgslsmith_f_op_f32(max(1812f, arg_1))))));
    var var_4 = var_3.a.yzy;
    return StorageBuffer(select(abs(var_3.b.b.x), u_input.c.x, min(u_input.b, var_3.b.d) < -37621i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.c.x, -2333f);
}

