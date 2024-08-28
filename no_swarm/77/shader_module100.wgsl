struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.d.x, u_input.c.x, 97699u, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 0u, u_input.d.x, u_input.d.x)), min(vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x), vec4<u32>(15273u, 102166u, u_input.c.x, 1u)) | vec4<u32>(1u, u_input.d.x, u_input.c.x, u_input.c.x), !any(vec4<bool>(false, true, true, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(~60575u, u_input.d.x, u_input.d.x, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(37567u, 4294967295u, u_input.d.x, 1u), vec4<u32>(u_input.d.x, 1u, u_input.d.x, 16299u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1133f, -1693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -174f))) - -954f))));
    var var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(176f * 867f), _wgslsmith_f_op_f32(-var_1.x), false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x) + var_1.x), var_1.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 635f)), 1829f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1414f * var_1.x) * -503f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 485f, var_1.x, -1902f) + vec4<f32>(-147f, var_3.x, var_3.x, -1000f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-209f))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec2_i32(~(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2265i), vec2<i32>(u_input.a.x, 1i))), u_input.a.zz)));
    let var_1 = !vec4<bool>((true & any(vec3<bool>(true, false, true))) && !any(vec2<bool>(true, false)), false, !((u_input.b >= u_input.a.x) & true), !(u_input.a.x != u_input.b));
    let var_2 = Struct_3(var_1.zyz);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2367f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(457f)) + -997f)), _wgslsmith_f_op_f32(-1976f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1392f - 419f), -948f, !var_2.a.x)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-763f, 528f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2501f) - 744f));
    return any(!var_1) == any(vec3<bool>(!all(vec4<bool>(true, true, false, true)), any(vec3<bool>(var_2.a.x, var_1.x, true)), false));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_add_u32(17018u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, 1u, ~(~47u)), 1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(27668u, 15348u, u_input.d.x), vec3<u32>(u_input.c.x, u_input.d.x, 1u))) % 32u)));
    var var_1 = Struct_2(!vec3<bool>(true, select(true, any(vec2<bool>(false, false)), true), func_2(~12246u)));
    var_1 = Struct_2(vec3<bool>(false, true, any(var_1.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-562f, -1258f, arg_1) - vec3<f32>(632f, arg_0, -777f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1485f, arg_1)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1106f)), 1240f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) + -146f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1072f, -258f)))));
    var_1 = Struct_2(select(var_1.a, var_1.a, (any(vec3<bool>(var_1.a.x, false, false)) != all(vec4<bool>(false, var_1.a.x, var_1.a.x, true))) | (arg_0 <= -996f)));
    return vec2<bool>(false, !var_1.a.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: bool) -> vec4<bool> {
    var var_0 = 923f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(-819f - -1399f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -606f)))), -1000f))));
    var var_1 = reverseBits(-vec4<i32>(~firstTrailingBit(u_input.a.x), countOneBits(-u_input.b), u_input.a.x, -2147483647i));
    var var_2 = Struct_2(select(vec3<bool>(func_1(-447f, -198f, vec2<i32>(-29201i, u_input.b)).x & (u_input.a.x > 2147483647i), !(arg_2 || arg_0.x), arg_0.x), select(select(!vec3<bool>(false, arg_0.x, true), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, arg_2, true)), false), !vec3<bool>(arg_2, false, arg_0.x), true), any(vec4<bool>(arg_2 != arg_2, false, select(true, true, arg_0.x), true))));
    var var_3 = vec4<bool>(arg_2, !all(vec4<bool>(arg_0.x, arg_2, false, arg_0.x)), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(78814u, arg_1, u_input.c.x), 71074u) <= (_wgslsmith_mod_u32(27080u & arg_1, u_input.d.x ^ u_input.d.x) >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u)), !all(select(func_1(-1077f, 382f, vec2<i32>(2147483647i, 1i)), !arg_0, false)));
    return select(select(vec4<bool>(!func_2(27432u), arg_2, (u_input.c.x << (arg_1 % 32u)) != countOneBits(27002u), all(select(vec2<bool>(var_2.a.x, true), var_3.xy, arg_2))), vec4<bool>(!(var_3.x && var_3.x), all(vec2<bool>(true, false)), !select(var_2.a.x, var_2.a.x, arg_0.x), arg_0.x), var_3.x), select(select(vec4<bool>(all(var_3.zz), all(vec3<bool>(arg_2, arg_2, var_2.a.x)), arg_2, !arg_0.x), select(!vec4<bool>(true, false, false, arg_0.x), vec4<bool>(true, arg_2, false, var_2.a.x), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(var_3.x, false, var_3.x, true))), !(!vec4<bool>(true, true, var_2.a.x, false))), vec4<bool>(all(vec2<bool>(true, true)), arg_0.x, func_2(min(u_input.c.x, 36653u)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_f_op_f32(f32(-1f) * -344f), u_input.a.zy).x), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), u_input.c.x, all(func_1(_wgslsmith_div_f32(-136f, 259f), -199f, vec2<i32>(-5611i, -68259i)))), !select(func_4(vec2<bool>(true, true), reverseBits(32805u), 0u > u_input.d.x), vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)), false);
    var var_1 = max(vec4<i32>(2147483647i, countOneBits(u_input.a.x), -1i, max(firstTrailingBit(u_input.a.x) & -1i, -u_input.b)), reverseBits(vec4<i32>(abs(u_input.a.x), u_input.b, u_input.a.x, 1i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 3066u >> (0u % 32u), u_input.c.x ^ 1u, u_input.d.x), ~(vec4<u32>(20672u, 80817u, u_input.d.x, 37194u) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, 4294967295u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(148f, 845f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1011f)) - -1537f) - 2206f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + -748f) + _wgslsmith_f_op_f32(1072f + -1092f)))));
}

