struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_4(any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x && arg_1.x, true), !(!arg_1.x))), -arg_2, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_3.x)), _wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(floor(416f)), 624f))));
    var_0 = Struct_4(true, var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.c.a)))));
    var_0 = Struct_4(true, 8144i, Struct_1(var_0.c.a));
    var var_1 = false != arg_1.x;
    let var_2 = Struct_5(Struct_2(reverseBits(abs(min(u_input.e.zx, vec2<u32>(u_input.e.x, u_input.a)))), ~(abs(arg_0.wzy) >> ((vec3<u32>(u_input.a, 54040u, 4294967295u) >> (vec3<u32>(44310u, arg_0.x, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)))), Struct_1(vec4<f32>(-825f, 1000f, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(round(-1000f))), -275f)));
    return var_0.c.a;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1736f, 1000f, -1110f, -1084f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, 1212f, -1269f, -1875f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, 2049f, 1763f, 1437f) + vec4<f32>(162f, 155f, 280f, 2130f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, -434f, 476f, 455f) - vec4<f32>(-2344f, 957f, -832f, 376f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 63008u, u_input.e.x, 4294967295u), vec4<u32>(12305u, 1u, u_input.a, 48270u)), vec2<bool>(true, true), -1i, vec2<f32>(-274f, -224f))))));
    var var_1 = _wgslsmith_div_i32(2147483647i, min(-20542i, firstTrailingBit(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.c), vec3<i32>(u_input.d.x, u_input.b, 983i)), 1i))));
    var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-218f, var_0.x) * var_0.wz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.ww, var_0.wy)) * var_0.yy), true)) * var_0.ww), var_0.yx, vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), !select(true, all(vec3<bool>(true, false, false)), true))));
    let var_3 = Struct_4((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) <= -251f) | (1i >= u_input.d.x), 2147483647i, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-1000f * -692f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1000f)), 1445f)));
    return var_3.c;
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2();
    return vec3<i32>(1i, -6359i, _wgslsmith_div_i32(-42024i, -_wgslsmith_div_i32(i32(-1i) * -2147483647i, reverseBits(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1296f, _wgslsmith_f_op_f32(390f + 155f), -706f, -675f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, -925f, 723f, -1259f))))));
    let var_1 = func_1();
    var var_2 = any(!(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)));
    let var_3 = Struct_2(abs(_wgslsmith_div_vec2_u32(vec2<u32>(173208u, u_input.a) | u_input.e.zx, u_input.e.yx ^ u_input.e.xz)), reverseBits(vec3<u32>(_wgslsmith_clamp_u32(u_input.e.x & 20547u, countOneBits(u_input.e.x), u_input.e.x ^ u_input.e.x), _wgslsmith_dot_vec3_u32(u_input.e << (vec3<u32>(u_input.a, 4294967295u, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.a, u_input.e.x, u_input.e.x))), u_input.a)));
    var var_4 = !vec2<bool>(select(false, all(vec3<bool>(false, true, false)), true) && true, any(vec4<bool>(4568i != var_1.x, var_0.a.x <= -916f, false, any(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-288f)))) * var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1559f)), _wgslsmith_div_f32(var_0.a.x, 241f)))), -5056i);
}

