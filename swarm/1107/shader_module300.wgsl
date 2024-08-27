struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 46927u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    global0 = 1u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(max(1u, 19389u), _wgslsmith_mult_u32(6283u, arg_1.c.x), ~1u, ~arg_2.c.x), ~countOneBits(vec4<u32>(arg_0.c.x, u_input.a.x, 22876u, arg_0.c.x))), vec4<u32>(u_input.a.x, 4294967295u, 21465u, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_2.c, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3, 16747u), u_input.a), ~u_input.a.x), abs(arg_3))), arg_1.c.x, 63319u);
    var var_0 = !arg_2.d.x;
    let var_1 = ~min(arg_0.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b ^ u_input.b), vec3<i32>(-1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-35819i, u_input.e), u_input.b.yy))));
    var_0 = true;
    return vec4<f32>(-244f, arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)), arg_2.a);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = u_input.a.yx & select(_wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(1u, 36121u)) >> (_wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 1u)) % vec2<u32>(32u)), vec2<u32>(arg_0, u_input.a.x), !(u_input.a.x < u_input.a.x));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-668f, _wgslsmith_f_op_f32(982f + -1000f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1964f))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f + var_2.a))), -5342i, reverseBits(vec2<u32>(firstTrailingBit(u_input.a.x), reverseBits(u_input.a.x))), !select(!vec2<bool>(true, var_1.x), vec2<bool>(false, true), var_1.x)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a + var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -467f)))), u_input.b.x, vec2<u32>(4294967295u, 1u), select(var_1.xx, select(select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), false), select(var_1.yy, vec2<bool>(true, false), var_1.x), true), var_1.x)), Struct_1(var_2.a, u_input.c, ~var_0, var_1.yx), var_0.x));
    global0 = abs(1532u);
    return Struct_2(-1012f);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(-1000f, ~u_input.e, abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a.x, u_input.a.x))) >> (abs(u_input.a.xy) % vec2<u32>(32u)), select(select(vec2<bool>(arg_0 & arg_0, true), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, arg_0)), true)), !select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false)), arg_0));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~1u, max(var_0.c.x, countOneBits(~31528u))), ~_wgslsmith_clamp_u32(countOneBits(u_input.a.x >> (var_0.c.x % 32u)), countOneBits(_wgslsmith_add_u32(u_input.a.x, 53561u)), u_input.a.x), u_input.a.x);
    let var_1 = u_input.b.yz;
    return Struct_2(arg_1.a);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec3<f32> {
    global0 = 1u;
    let var_0 = func_2(~(u_input.a.x | _wgslsmith_clamp_u32(arg_1, 12194u, ~64226u)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, -1134f, var_0.a), vec3<f32>(arg_2.a, -747f, 1143f))) + vec3<f32>(-2280f, func_4(false, var_0).a, -1089f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(848f, 797f, _wgslsmith_f_op_f32(-1796f * 419f)))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = false;
    var_0 = all(vec2<bool>(select(true, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true), false)) && true;
    var var_1 = Struct_1(394f, u_input.b.x, vec2<u32>(arg_0, 4626u) >> (select(u_input.a.zz, u_input.a.yx, true) % vec2<u32>(32u)), select(select(arg_1, vec2<bool>(false, false), !select(arg_1, vec2<bool>(arg_1.x, true), arg_1.x)), vec2<bool>(select(arg_1.x, !arg_1.x, arg_1.x), !arg_1.x), arg_1.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) + _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -794f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(863f, var_1.a))), 220f), _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(sign(var_1.a)), 38690u, func_4(var_1.d.x & false, func_2(19818u)), 0i))));
    var var_3 = func_2(u_input.a.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1187f, var_2.x)))) * _wgslsmith_f_op_f32(ceil(var_2.x))), var_1.b, vec2<u32>(_wgslsmith_clamp_u32(12968u, arg_0, var_1.c.x), ~min(arg_0, 1u)) | vec2<u32>(u_input.a.x, var_1.c.x), !(!arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~u_input.a.x >> (((_wgslsmith_sub_u32(u_input.a.x, 0u) | ~u_input.a.x) | u_input.a.x) % 32u), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true)));
    global0 = select(_wgslsmith_add_u32(~(~4294967295u), ~var_0.c.x & 1u), ~48349u, !(true & var_0.d.x));
    var var_1 = !(false & all(var_0.d));
    let var_2 = var_0;
    let var_3 = Struct_1(-1014f, ~(~(-var_0.b)), var_2.c, !(!func_1(u_input.a.x << (0u % 32u), var_2.d).d));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), ~(~(-46873i)), ~vec2<u32>(_wgslsmith_sub_u32(0u, var_0.c.x), var_3.c.x), !select(var_3.d, select(select(vec2<bool>(true, var_3.d.x), vec2<bool>(true, var_0.d.x), vec2<bool>(var_2.d.x, false)), vec2<bool>(true, false), !vec2<bool>(true, var_3.d.x)), var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec4<u32>(var_2.c.x, var_2.c.x, var_0.c.x, 34374u)) ^ select(vec4<u32>(0u, var_4.c.x, var_0.c.x, 14901u), vec4<u32>(var_2.c.x, var_3.c.x, var_4.c.x, 4294967295u) >> (vec4<u32>(0u, 4294967295u, 64967u, u_input.a.x) % vec4<u32>(32u)), select(vec4<bool>(var_3.d.x, true, var_2.d.x, var_2.d.x), vec4<bool>(true, false, false, var_2.d.x), vec4<bool>(false, true, var_4.d.x, var_3.d.x)))), ~(select(u_input.b.x, abs(45509i), !var_4.d.x) << ((select(var_4.c.x, 16081u, var_2.d.x) >> (4294967295u % 32u)) % 32u)), _wgslsmith_f_op_f32(-func_4(all(vec4<bool>(var_0.d.x, true, var_4.d.x, true)), func_4(!var_2.d.x, Struct_2(var_0.a))).a), select(vec3<u32>(43725u, ~1u, var_0.c.x), _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, var_0.c.x), vec3<u32>(1u, var_0.c.x, 17039u))), vec3<u32>(var_4.c.x ^ 1u, 11107u, ~0u)), vec3<bool>(true, false, false)), -1422f);
}

