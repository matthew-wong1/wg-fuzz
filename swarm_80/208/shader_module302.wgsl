struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(-756f, -136f > arg_3.a), Struct_1(arg_3.a, !(!global0.a.b && true)), u_input.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(284f, _wgslsmith_f_op_f32(select(arg_1, -774f, arg_3.b)))), 581f), true));
    let var_1 = Struct_2(Struct_1(678f, any(vec2<bool>(var_0.b.b, var_0.b.b))), Struct_1(-1310f, all(!select(vec4<bool>(global0.b.b, false, global0.a.b, var_0.a.b), vec4<bool>(false, arg_3.b, arg_3.b, false), arg_0.x))), ~(-19497i), var_0.a);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -188f);
    var var_3 = !select(!vec3<bool>(var_1.d.b, false, !global0.a.b), vec3<bool>(true, arg_0.x || true, global0.c > 6079i), !vec3<bool>(var_0.d.b, false, true));
    let var_4 = var_1;
    return u_input.b >> (firstLeadingBit(_wgslsmith_mult_u32(u_input.b, 66109u)) % 32u);
}

fn func_3() -> i32 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.a, _wgslsmith_f_op_f32(-global0.d.a))), false), Struct_1(global0.b.a, !all(vec4<bool>(global0.b.b, false, true, false))), 2147483647i, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-388f)), _wgslsmith_f_op_f32(min(-652f, global0.b.a))), 579f)), any(!vec2<bool>(global0.a.b, global0.a.b))));
    var var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, 14296i)), vec2<i32>(global0.c, u_input.a)), firstTrailingBit(global0.c) & -58269i), vec2<i32>(48888i, global0.c), min(~(vec2<i32>(u_input.a, 19009i) | select(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, global0.c), vec2<bool>(global0.a.b, global0.a.b))), ~vec2<i32>(1i | u_input.a, i32(-1i) * -20259i)));
    var var_1 = 0i;
    var_1 = i32(-1i) * -_wgslsmith_clamp_i32(-2147483647i, ~max(u_input.a, -40185i), i32(-1i) * -27599i);
    var var_2 = Struct_2(Struct_1(1014f, all(select(select(vec2<bool>(true, false), vec2<bool>(global0.a.b, true), vec2<bool>(false, true)), !vec2<bool>(true, global0.b.b), !vec2<bool>(false, global0.a.b)))), Struct_1(global0.d.a, true && (_wgslsmith_sub_i32(-1i, var_0.x) != (global0.c | global0.c))), abs(-1i | _wgslsmith_mult_i32(var_0.x, -var_0.x)), Struct_1(_wgslsmith_f_op_f32(trunc(1014f)), global0.b.b));
    return var_0.x;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = ~(min(u_input.b, ~47863u | func_2(vec2<bool>(global0.a.b, global0.a.b), global0.a.a, vec4<i32>(-2147483647i, 2147483647i, global0.c, global0.c), Struct_1(1000f, global0.d.b))) ^ firstLeadingBit(1u));
    var var_1 = !(!global0.d.b);
    var var_2 = Struct_2(global0.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) * _wgslsmith_f_op_f32(max(517f, 795f)))), false && any(!vec3<bool>(true, false, global0.d.b))), global0.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2911f, -1500f))), global0.b.b));
    var_2 = Struct_2(var_2.a, Struct_1(_wgslsmith_f_op_f32(var_2.b.a * var_2.b.a), true), func_3(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1003f - 1007f) + _wgslsmith_f_op_f32(f32(-1f) * -1019f))), any(vec4<bool>(any(vec2<bool>(global0.d.b, global0.a.b)), false, any(vec3<bool>(false, global0.b.b, var_2.d.b)), u_input.b != u_input.b))));
    var_1 = false;
    return Struct_1(_wgslsmith_f_op_f32(-var_2.b.a), !all(select(vec3<bool>(global0.b.b, global0.d.b, true), vec3<bool>(true, false, global0.a.b), var_2.a.b)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0.x));
    var var_1 = select(!(!select(!vec3<bool>(global0.d.b, arg_3.b, global0.d.b), select(vec3<bool>(false, global0.b.b, true), vec3<bool>(true, true, false), vec3<bool>(arg_3.b, global0.d.b, arg_2)), select(vec3<bool>(true, global0.b.b, false), vec3<bool>(global0.a.b, global0.d.b, arg_3.b), vec3<bool>(true, true, false)))), !vec3<bool>(all(select(vec4<bool>(global0.a.b, false, arg_3.b, true), vec4<bool>(arg_3.b, arg_3.b, arg_2, true), arg_2)), any(vec3<bool>(arg_3.b, arg_2, false)), any(vec4<bool>(arg_3.b, false, false, false))), !select(select(!vec3<bool>(arg_3.b, true, true), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, arg_3.b, false), vec3<bool>(true, global0.a.b, true)), true), vec3<bool>(arg_2, true, arg_3.b || global0.b.b), !arg_2 && !arg_2));
    let var_2 = arg_3.a;
    var var_3 = Struct_2(func_1(vec3<i32>(global0.c, -2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, 0i, -1i, -1i), vec4<i32>(0i, u_input.a, u_input.a, global0.c)))), global0.a, _wgslsmith_sub_i32(u_input.a, u_input.a), func_1(vec3<i32>(u_input.a, -2262i, -40706i)));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.a.a)));
    return var_3.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(302f, global0.d.b);
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.a, var_0.a), vec2<f32>(var_0.a, -773f)), ~vec3<u32>(1u, 57425u, 1u), any(vec2<bool>(global0.d.b, false)), func_1(vec3<i32>(global0.c, 34370i, 49675i)))) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(391f, 133f) - vec2<f32>(global0.b.a, 196f)), vec3<u32>(35749u, 59834u, u_input.b), true, global0.b))) > -698f);
    let var_2 = _wgslsmith_f_op_f32(max(global0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.a, var_0.a)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-390f * 804f), 1832f))), var_0.a)));
    let var_3 = _wgslsmith_mod_i32(~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -9132i), vec2<i32>(0i, -56783i)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, 7170u, 0u), vec4<u32>(u_input.b, 4294967295u, 0u, 2619u)) % 32u)), firstTrailingBit(i32(-1i) * -global0.c));
    var var_4 = all(!vec2<bool>(var_0.b, false));
    var_1 = reverseBits(countOneBits(~(var_3 | 0i))) < ~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, global0.c);
    let var_5 = min(~(select(vec3<u32>(u_input.b, u_input.b, 70117u), vec3<u32>(84469u, u_input.b, u_input.b), vec3<bool>(false, var_0.b, global0.b.b)) ^ ~vec3<u32>(u_input.b, u_input.b, 36867u)), min(vec3<u32>(0u, ~u_input.b, u_input.b >> (u_input.b % 32u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, u_input.b)))) ^ vec3<u32>(u_input.b, ~(~62903u) >> ((_wgslsmith_mult_u32(u_input.b, 0u) << (u_input.b % 32u)) % 32u), ~_wgslsmith_sub_u32(~u_input.b, ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.a, var_0.a), vec2<f32>(-431f, -879f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.a, var_2) - vec2<f32>(var_0.a, 992f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -744f)) * _wgslsmith_div_vec2_f32(vec2<f32>(165f, -2986f), vec2<f32>(-551f, var_0.a))), any(vec2<bool>(all(vec2<bool>(var_0.b, true)), !var_0.b)))), ((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -28664i, var_3, 0i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 113i), vec4<i32>(1i, -21532i, var_3, u_input.a)) & reverseBits(vec4<i32>(-1i, -72855i, global0.c, 1i))) ^ vec4<i32>(var_3, -1i, -9470i << (u_input.b % 32u), 2147483647i)) << (~(~vec4<u32>(var_5.x, var_5.x, 1u, 1u)) % vec4<u32>(32u)), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f + 668f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -1670f)));
}

