struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<bool> {
    var var_0 = -1501f;
    var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * arg_0)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - arg_0)) + 902f)) * _wgslsmith_f_op_f32(-516f * _wgslsmith_f_op_f32(572f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1976f)) + arg_0))));
    return vec3<bool>(any(!select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), any(vec2<bool>(var_1, var_1)))), all(select(select(select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), var_1), vec2<bool>(true, var_1), vec2<bool>(true, true)), vec2<bool>(var_1, !var_1), any(!vec4<bool>(false, true, false, var_1)))), !select(true, 0u == u_input.a.x, true));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!select(vec4<bool>(false & arg_0.e.x, false & arg_0.e.x, true, !arg_0.b), select(vec4<bool>(true, arg_0.e.x, true, false), !arg_0.a, select(arg_0.e, arg_0.a, true)), arg_0.e), all(arg_0.a), ~u_input.a.x, !any(func_3(619f, arg_0.c)) && arg_0.b, vec4<bool>(!any(arg_0.a), any(!arg_0.a.zyx), all(arg_0.e.wyz), true));
    var var_1 = any(select(var_0.e.yzz, var_0.a.zyx, select(vec3<bool>(!arg_0.b, var_0.b, false != var_0.e.x), !vec3<bool>(false, false, arg_0.d), true || arg_0.b)));
    var var_2 = !(!select(!vec2<bool>(true, arg_0.e.x), arg_0.e.wz, true));
    var var_3 = Struct_1(var_0.a, all(vec4<bool>(!select(false, var_2.x, true), all(vec3<bool>(false, var_0.e.x, var_0.b)), false, true)), 0u, !var_0.d, var_0.a);
    var var_4 = Struct_1(vec4<bool>(all(select(func_3(343f, u_input.a.x).yz, func_3(-1766f, 36009u).xz, var_3.b)), var_0.b, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)), u_input.a.x).x, !var_0.e.x), any(!vec3<bool>(!var_0.d, all(vec2<bool>(var_3.d, false)), any(vec4<bool>(var_0.e.x, arg_0.e.x, false, var_3.e.x)))), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_div_u32(35384u, u_input.a.x)), 23196u, _wgslsmith_clamp_u32(1u << (max(38168u, arg_0.c) % 32u), 82679u, var_0.c)), var_2.x, vec4<bool>(var_3.d, true, var_0.b & true, true));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(!(!(!arg_1.a)), true, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.c, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), u_input.a.x, arg_0.c), arg_1.a.x, select(!vec4<bool>(!arg_0.e.x, true, all(arg_1.e), !arg_0.b), arg_0.a, false));
    var var_1 = func_2(var_0);
    let var_2 = u_input.a.yy;
    var_1 = Struct_1(select(func_2(Struct_1(var_1.e, false, 1u, true, vec4<bool>(true, var_1.e.x, var_0.b, var_0.d))).a, !select(select(arg_0.e, arg_1.a, vec4<bool>(false, true, false, false)), !vec4<bool>(var_1.b, false, arg_0.d, false), all(vec2<bool>(var_1.e.x, true))), !(!vec4<bool>(false, var_0.d, arg_1.a.x, true))), arg_0.e.x != false, reverseBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.c, 0u), 54487u ^ u_input.a.x), _wgslsmith_div_u32(abs(0u), abs(var_0.c)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-915f)))) == _wgslsmith_f_op_f32(trunc(890f)), !(!var_0.a));
    let var_3 = 15731u;
    return vec3<bool>(func_2(func_2(Struct_1(!arg_1.a, all(vec3<bool>(var_1.e.x, true, var_0.e.x)), ~var_3, false, func_2(Struct_1(arg_0.a, var_0.b, var_1.c, false, var_0.a)).a))).b, !arg_1.d, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~1716u, firstTrailingBit(1u)), countOneBits(arg_0.c | var_3)) < reverseBits(abs(6629u)));
}

fn func_1() -> f32 {
    var var_0 = -vec2<i32>(0i, 35153i);
    let var_1 = !select(!func_4(func_2(Struct_1(vec4<bool>(false, true, false, false), false, u_input.a.x, true, vec4<bool>(false, true, false, true))), func_2(Struct_1(vec4<bool>(false, true, true, true), true, 50536u, false, vec4<bool>(true, false, false, false)))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), true);
    var_0 = vec2<i32>(-1i, abs(abs(u_input.d)));
    var var_2 = 45871i;
    var var_3 = func_2(Struct_1(!select(func_2(Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x, u_input.a.x, true, vec4<bool>(false, false, var_1.x, false))).a, select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true)), any(vec2<bool>(false, var_1.x))), true, ~4294967295u, false, func_2(func_2(Struct_1(vec4<bool>(false, true, true, false), var_1.x, 70161u, var_1.x, vec4<bool>(var_1.x, true, false, var_1.x)))).a));
    return _wgslsmith_f_op_f32(max(1375f, 829f));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, arg_0.a.x);
    let var_1 = _wgslsmith_div_u32(u_input.a.x, arg_0.c);
    let var_2 = func_2(Struct_1(vec4<bool>(true, false, all(vec4<bool>(false, var_0.x, var_0.x, false)), true), !(_wgslsmith_f_op_f32(step(-1141f, -510f)) >= _wgslsmith_f_op_f32(-1644f * 425f)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1, u_input.a.x, 3527u, 23864u)), firstLeadingBit(vec4<u32>(0u, 7726u, arg_0.c, 30854u)) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 14820u, 24866u, var_1), vec4<u32>(u_input.a.x, 8362u, 1u, arg_0.c))), select(arg_0.e.x, func_4(Struct_1(vec4<bool>(false, arg_0.a.x, var_0.x, arg_0.a.x), var_0.x, 0u, false, vec4<bool>(true, arg_0.e.x, false, arg_0.e.x)), Struct_1(vec4<bool>(true, arg_0.a.x, arg_0.b, arg_0.e.x), false, 20163u, true, arg_0.e)).x, var_0.x), arg_0.e));
    var var_3 = ~(~1u);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1138f, 1365f)), -1218f, _wgslsmith_f_op_f32(f32(-1f) * -462f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(311f, -1375f, -511f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(489f, 617f, -2500f), vec3<f32>(-1128f, -1281f, 130f), vec3<bool>(var_0.x, arg_0.d, arg_0.a.x))), arg_0.d)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(763f - 624f), -634f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1170f - _wgslsmith_f_op_f32(f32(-1f) * -309f))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(-311f, -1031f)));
    return func_2(Struct_1(arg_0.e, true, ~(~var_1) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xy), arg_0.c, ~var_1) % 32u), var_0.x, var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(vec4<bool>(u_input.c <= u_input.b, !all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, false)), 1601f <= _wgslsmith_f_op_f32(func_1())), false, u_input.a.x, false, vec4<bool>(true, true, true, all(func_2(Struct_1(vec4<bool>(true, true, true, true), true, 9504u, false, vec4<bool>(true, false, true, true))).e))), min(~(~vec4<i32>(21554i, u_input.c, 0i, 2147483647i) | ~vec4<i32>(1i, -19641i, u_input.c, 0i)), ~(vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.b) | vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.d)) << (((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 22269u)) & ~vec4<u32>(50649u, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))));
    let var_1 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(66968u, var_0.c), u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 19457u, u_input.a.x, u_input.a.x)));
    let var_2 = _wgslsmith_mult_u32(1u, var_0.c);
    let var_3 = ~vec4<u32>(1u, ~(~(~var_0.c)), _wgslsmith_clamp_u32(min(_wgslsmith_mod_u32(4294967295u, 26968u), ~85590u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(39659u, var_1.x), func_5(Struct_1(var_0.a, false, u_input.a.x, true, var_0.e), vec4<i32>(u_input.c, u_input.c, u_input.d, u_input.c)).c, firstLeadingBit(0u)), _wgslsmith_div_u32(1u, 9469u)), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(1u, var_2), ~var_2));
    let var_4 = Struct_1(select(!(!(!var_0.e)), !(!select(vec4<bool>(true, var_0.a.x, false, false), vec4<bool>(var_0.e.x, true, true, true), vec4<bool>(false, var_0.b, false, var_0.a.x))), vec4<bool>(var_0.a.x, func_5(Struct_1(var_0.e, var_0.e.x, 1u, false, var_0.a), vec4<i32>(u_input.c, u_input.d, u_input.c, u_input.b)).c > 3269u, var_0.b, true)), var_0.a.x, 11103u, true, vec4<bool>(var_0.b, var_0.e.x, false, false));
    var var_5 = func_2(func_5(Struct_1(select(select(var_0.a, vec4<bool>(true, false, false, var_4.a.x), false), var_0.a, !var_4.b), !func_4(var_0, var_0).x, var_3.x, true | var_4.d, func_2(Struct_1(var_4.a, false, 39157u, var_4.e.x, var_0.e)).e), vec4<i32>(~(~12224i), -(-25890i | u_input.c), -1i, abs(u_input.c) >> (0u % 32u))));
    var_5 = func_5(Struct_1(!var_5.a, true, ~48913u, 30735u < _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_2), _wgslsmith_mult_u32(var_0.c, 26036u)), !vec4<bool>(any(vec4<bool>(false, false, var_5.e.x, true)), true, false, var_4.d)), vec4<i32>(~u_input.c, -7914i, min(~(-1i), -59653i), ~select(u_input.b, u_input.d, true) >> (12856u % 32u)));
    var_5 = func_2(Struct_1(vec4<bool>(select(true, var_5.b, true), true, true, !any(var_4.a.xx)), true, _wgslsmith_mult_u32(7817u, 1u), !var_4.e.x, select(var_4.e, select(vec4<bool>(var_5.a.x, var_4.d, var_5.a.x, true), !var_4.e, var_0.d), !func_2(var_0).e)));
    var var_6 = var_5.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(firstTrailingBit(var_3.zyx), countOneBits(select(var_3.wwz, vec3<u32>(0u, var_0.c, 4294967295u), var_4.e.xyy)) >> ((abs(var_1.zyy) ^ countOneBits(u_input.a)) % vec3<u32>(32u)), vec3<u32>(69312u, ~_wgslsmith_clamp_u32(var_3.x, var_1.x, 0u), u_input.a.x)));
}

