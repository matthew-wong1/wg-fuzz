struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_2.d)) + arg_0.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) * arg_0.x));
    var var_1 = Struct_1(arg_3.a, arg_3.b, countOneBits(-arg_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f - _wgslsmith_div_f32(297f, _wgslsmith_f_op_f32(818f - -1906f)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3.d)), arg_0.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2034f))));
    return !select(select(select(!vec4<bool>(false, arg_2.a.x, false, arg_3.a.x), !var_1.a, var_1.a.x), arg_3.a, select(!arg_3.a, var_1.a, select(vec4<bool>(true, var_1.a.x, true, true), arg_2.a, arg_2.a))), select(arg_2.a, vec4<bool>(4294967295u <= u_input.d.x, true, true, false), !select(arg_2.a, vec4<bool>(false, false, var_1.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_3.a.x))), !select(true, all(arg_2.a.zwz), all(arg_2.a.xx)));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(select(func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, -1822f)), vec2<f32>(-1000f, -369f))), reverseBits(u_input.d >> (u_input.c % vec3<u32>(32u))), Struct_1(!vec4<bool>(arg_0, false, false, true), u_input.c.yx, -1756i, _wgslsmith_f_op_f32(select(-234f, -1911f, arg_0))), Struct_1(select(vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, arg_0, true, arg_0), false), ~u_input.b.xx, _wgslsmith_mult_i32(-2147483647i, 0i), -1639f)), func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(-1238f - 620f)), reverseBits(u_input.c) << (u_input.d % vec3<u32>(32u)), Struct_1(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), min(vec2<u32>(u_input.c.x, 16587u), vec2<u32>(4294967295u, u_input.b.x)), -1i, _wgslsmith_f_op_f32(trunc(1457f))), Struct_1(func_3(vec2<f32>(1168f, -210f), vec3<u32>(0u, 33337u, u_input.a), Struct_1(vec4<bool>(true, arg_0, arg_0, arg_0), vec2<u32>(0u, arg_1), 0i, 436f), Struct_1(vec4<bool>(true, arg_0, true, false), vec2<u32>(1u, 73240u), 0i, -322f)), _wgslsmith_mod_vec2_u32(u_input.d.yx, u_input.b.zx), _wgslsmith_mult_i32(1i, -47877i), -1729f)), vec4<bool>(true, !arg_0, any(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, false), arg_0)), arg_0)), ~u_input.c.yx, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1891f) - _wgslsmith_div_f32(-683f, -272f)))) - -2005f));
    var_0 = Struct_1(select(func_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-427f, -295f))))), u_input.d, Struct_1(select(vec4<bool>(var_0.a.x, var_0.a.x, false, arg_0), var_0.a, var_0.a), var_0.b, -var_0.c, var_0.d), Struct_1(select(var_0.a, vec4<bool>(var_0.a.x, arg_0, true, false), vec4<bool>(var_0.a.x, arg_0, var_0.a.x, arg_0)), vec2<u32>(arg_1, 4294967295u), -var_0.c, 1000f)), vec4<bool>(all(!vec3<bool>(true, arg_0, false)), all(vec2<bool>(true, true)), true, false), !(!vec4<bool>(true, arg_0, arg_0, var_0.a.x))), u_input.c.zx, reverseBits(_wgslsmith_add_i32(59133i, _wgslsmith_mod_i32(1i, 9369i)) | (abs(-1i) & var_0.c)), -924f);
    var_0 = Struct_1(var_0.a, vec2<u32>(arg_1, ~1u), _wgslsmith_mod_i32(1i, ~(var_0.c >> (47165u % 32u)) ^ var_0.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(273f, -177f))))));
    let var_1 = ~arg_1;
    return Struct_1(var_0.a, max(max(select(vec2<u32>(12927u, 0u), _wgslsmith_div_vec2_u32(var_0.b, u_input.c.yy), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(42658u, 7231u), ~u_input.b.zx, vec2<u32>(arg_1, 0u) ^ var_0.b)), ~abs(~vec2<u32>(arg_1, arg_1))), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(26621i, var_0.c, var_0.c) >> (vec3<u32>(var_1, 4294967295u, 0u) % vec3<u32>(32u)), abs(vec3<i32>(-60787i, -45727i, 1i)))), var_0.d);
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = 4294967295u >> (_wgslsmith_div_u32(1u, u_input.b.x | _wgslsmith_add_u32(u_input.d.x, 4294967295u)) % 32u);
    var var_1 = Struct_1(vec4<bool>(true, !(u_input.a != ~var_0), true && any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false), vec2<u32>(reverseBits(abs(_wgslsmith_mult_u32(u_input.a, var_0))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(18549u ^ var_0, 11254u), ~(1u ^ u_input.d.x))), -_wgslsmith_div_i32(i32(-1i) * -1i, 17940i), -630f);
    var var_2 = func_2(true, 4294967295u);
    let var_3 = Struct_1(!(!select(var_1.a, var_1.a, select(vec4<bool>(var_1.a.x, var_1.a.x, var_2.a.x, false), vec4<bool>(false, var_2.a.x, true, var_1.a.x), true))), vec2<u32>(max(~1u, var_0), max(4294967295u, 1u)), -18460i, 475f);
    var_2 = var_3;
    return select(select(var_2.a, !var_2.a, var_2.a.x), var_1.a, var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    let var_0 = 1u;
    var var_1 = select(arg_0.a, !func_2(arg_0.a.x, 1u).a, vec4<bool>(func_3(vec2<f32>(_wgslsmith_f_op_f32(1746f + arg_0.d), arg_0.d), vec3<u32>(~0u, 40615u, 75299u), Struct_1(arg_0.a, ~arg_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-58647i, arg_0.c), vec2<i32>(20130i, arg_0.c)), 1321f), Struct_1(arg_0.a, countOneBits(vec2<u32>(28866u, u_input.c.x)), _wgslsmith_add_i32(0i, arg_0.c), _wgslsmith_f_op_f32(round(arg_0.d)))).x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - arg_0.d))).x, arg_0.a.x, arg_0.c != ~1i));
    var var_2 = arg_0;
    var var_3 = Struct_1(!func_1(_wgslsmith_f_op_f32(round(var_2.d))), vec2<u32>(u_input.d.x, var_2.b.x), -24479i, func_2(true, var_0).d);
    var_3 = Struct_1(arg_0.a, ~_wgslsmith_mod_vec2_u32(~firstTrailingBit(var_2.b), ~var_2.b), 0i, var_3.d);
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1367f, var_2.d)) * -168f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(-294f * 896f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f))))), ~max(var_2.c, arg_0.c), func_2(false, max(1u, 1u)).c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(func_1(_wgslsmith_f_op_f32(abs(-1289f))), ~(select(vec2<u32>(u_input.c.x, 1u), u_input.b.yy, vec2<bool>(false, false)) | u_input.c.yx), select(_wgslsmith_mod_i32(-77559i >> (u_input.a % 32u), ~0i), ~1i, true), _wgslsmith_f_op_f32(1520f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2714f)) * _wgslsmith_f_op_f32(select(-1000f, -579f, false))))), ~(~firstTrailingBit(_wgslsmith_add_u32(4294967295u, u_input.c.x))));
}

