struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>) -> u32 {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1288f)), _wgslsmith_f_op_f32(trunc(-2368f)), _wgslsmith_f_op_f32(-162f * -1127f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, -1000f, -1000f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-182f, 514f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -889f)))), select(!select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(true, true, arg_0.c), vec3<bool>(true, true, true)), !vec3<bool>(true, arg_0.c, true), vec3<bool>(arg_0.c, u_input.d <= 7375u, true)))));
    let var_2 = max(0u >> ((_wgslsmith_clamp_u32(~u_input.d, 30937u, ~18852u) | u_input.d) % 32u), u_input.d);
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(u_input.c.xx, u_input.c.xz, ~vec2<u32>(u_input.d, 1u)) << (_wgslsmith_mod_vec2_u32(~(~u_input.c.yx), _wgslsmith_add_vec2_u32(u_input.c.zx, u_input.c.xz) >> (firstLeadingBit(u_input.b.zx) % vec2<u32>(32u))) % vec2<u32>(32u)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(66693u, u_input.c.x, 1u, 51177u), u_input.c), u_input.c), var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1876u, 0u, 0u), u_input.c)), var_1.x);
    var_0 = min(_wgslsmith_add_u32(abs(1u), 2971u), ~u_input.b.x);
    return _wgslsmith_add_u32(var_2, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(37571u, 28791u), 7548u)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(u_input.c.wz, firstTrailingBit(24271u), _wgslsmith_f_op_f32(round(arg_2.a.c))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_2.b.a.b, vec2<f32>(arg_0, arg_0))))))), Struct_1(u_input.b.zx, ~func_3(Struct_5(vec4<i32>(u_input.a.x, arg_2.b.e, u_input.a.x, u_input.a.x), arg_1.zzz, arg_2.c), abs(u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.b.c), _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_div_f32(arg_2.a.c, _wgslsmith_f_op_f32(-arg_2.a.c)), true))), 1000f, ~(~(~vec4<u32>(0u, arg_2.a.a.x, arg_2.a.a.x, arg_2.b.b.a.x)) ^ _wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_2.b.b.b, 43123u, arg_2.a.b, 68621u), vec4<u32>(11480u, 74u, arg_3.x, 0u)), arg_2.b.d)), 0i);
    let var_1 = arg_2;
    let var_2 = 0i;
    let var_3 = reverseBits(abs(arg_1.xzw));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.c)), _wgslsmith_div_f32(arg_2.a.c, -720f), _wgslsmith_f_op_f32(-234f + _wgslsmith_f_op_f32(397f - arg_0)));
    return 9524u;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = !vec3<bool>(select(false, true, true), false | (func_2(-380f, vec4<i32>(22206i, u_input.a.x, u_input.a.x, u_input.a.x), Struct_4(Struct_1(u_input.b.xz, u_input.b.x, 790f), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, u_input.d), u_input.c.x, 1356f), arg_0), Struct_1(u_input.b.yx, 0u, arg_0.x), arg_2, vec4<u32>(0u, 1u, 8569u, 50466u), -44675i), false, u_input.a.x), u_input.b.zx) == u_input.b.x), u_input.a.x > (i32(-1i) * -u_input.a.x));
    var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, false)), select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true)), !vec3<bool>(var_0.x, false, false), !vec3<bool>(var_0.x, var_0.x, false)), u_input.a.x > u_input.a.x), vec3<bool>(var_0.x | var_0.x, any(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), false)) || false, false), vec3<bool>(all(select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), false), all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), true, !any(vec4<bool>(false, false, var_0.x, var_0.x))));
    return Struct_1(~u_input.c.yy, ~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_3.b, vec2<f32>(-875f, -1125f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1252f, -500f) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.c, -956f), arg_3.b))), 390f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, -763f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-693f, arg_3.a.c, false)) * _wgslsmith_f_op_f32(select(arg_3.a.c, arg_0.b.x, true))), any(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, false, true)))))), Struct_3(Struct_2(arg_3.a, _wgslsmith_f_op_vec2_f32(-arg_0.b)), Struct_1(u_input.c.yy, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -280f), vec4<u32>(u_input.d, 59586u, 0u, firstLeadingBit(1u) >> (1u % 32u)), -74469i), arg_1.x, -23381i);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2208f), _wgslsmith_f_op_f32(step(arg_2.b.x, -282f)), !var_0.c)), true))), var_0.b.c);
    var var_2 = _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_0.a.b, reverseBits(~u_input.c.x), arg_2.a.b)), select(u_input.c, u_input.c, false));
    let var_3 = Struct_5(abs(vec4<i32>(~u_input.a.x, u_input.a.x, countOneBits(var_0.d), ~var_0.d) & reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -43690i, 16951i, -2147483647i), vec4<i32>(-19769i, var_0.d, -6003i, -1i)))), ~(-(vec3<i32>(-1i) * -vec3<i32>(var_0.b.e, 24973i, u_input.a.x))), any(select(vec4<bool>(all(vec3<bool>(true, true, false)), true, !arg_1.x, all(vec4<bool>(arg_1.x, true, var_0.c, arg_1.x))), select(!vec4<bool>(arg_1.x, arg_1.x, var_0.c, true), !vec4<bool>(var_0.c, true, true, false), arg_1.x), !select(vec4<bool>(false, true, false, var_0.c), vec4<bool>(false, var_0.c, false, var_0.c), vec4<bool>(var_0.c, true, arg_1.x, arg_1.x)))));
    var var_4 = 835f;
    return Struct_3(Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_3.b)))), arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(1405f + arg_3.b.x)))) + 1f), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(~(~arg_2.a.a.x), arg_2.a.b, 1u, u_input.d), (abs(vec4<u32>(u_input.c.x, var_0.b.d.x, 1u, var_2.x)) << (max(vec4<u32>(1u, 4294967295u, arg_0.a.b, 0u), vec4<u32>(0u, var_2.x, 4294967295u, var_2.x)) % vec4<u32>(32u))) & u_input.c), 21148i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(663f, -200f))), 175f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1352f, -1135f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(819f + -114f)), 1623f)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), true)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), select(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), false)), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(987f, -947f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -769f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f + -1744f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-791f, -2846f), vec2<f32>(-1249f, 724f)))))), Struct_2(Struct_1(vec2<u32>(u_input.c.x, _wgslsmith_div_u32(u_input.b.x, u_input.d)), ~min(u_input.c.x, u_input.d), 1f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1350f)), _wgslsmith_f_op_f32(step(-672f, 674f)))));
    let var_1 = -(i32(-1i) * -(i32(-1i) * -1i));
    let var_2 = var_0.d.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0.a.b);
    var var_4 = _wgslsmith_f_op_f32(sign(-940f));
    let var_5 = max(abs(var_0.d.yyy), u_input.b) | vec3<u32>(u_input.b.x, ~u_input.b.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(var_1 & var_1), -2147483647i, 33963i), ~(firstTrailingBit(vec3<i32>(-1i, var_1, 15692i)) & (vec3<i32>(1i, u_input.a.x, u_input.a.x) & vec3<i32>(var_0.e, var_1, var_1)))));
}

