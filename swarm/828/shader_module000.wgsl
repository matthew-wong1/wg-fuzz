struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec3<u32>) -> vec3<bool> {
    var var_0 = ~(~abs(-(vec3<i32>(-1i, -1i, u_input.a.x) >> (arg_3 % vec3<u32>(32u)))));
    let var_1 = Struct_2(var_0.zy, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x << (arg_3.x % 32u), u_input.b.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.x, 32824u), arg_3.yz, vec2<u32>(64539u, 1u))), vec2<u32>(~44754u, ~(~0u))), true, _wgslsmith_div_u32(u_input.b.x, arg_1.x) >= arg_2.b.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.b - -134f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-329f, arg_2.d.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.d.b, -897f), vec2<f32>(236f, arg_2.d.b), var_1.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d.b, arg_2.d.b) + vec2<f32>(arg_2.d.b, arg_2.d.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1335f, 1000f)))), !var_1.d)));
    return select(arg_0.zzw, vec3<bool>(select(var_1.d, !(arg_2.d.c & false), all(vec2<bool>(var_1.d, arg_0.x))), var_1.d & (var_2.x > arg_2.d.b), all(arg_2.d.a.yx)), !(!(!arg_2.d.a.xzw)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = 33098i;
    let var_1 = Struct_3(arg_0, Struct_2(vec2<i32>(u_input.a.x, 1i), _wgslsmith_div_u32(~(~1u), select(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 55580u), arg_0.c)), false, true), select(!arg_0.a.yxz, func_3(select(vec4<bool>(false, arg_0.c, true, arg_0.d), vec4<bool>(arg_0.c, arg_0.d, false, true), vec4<bool>(true, true, true, true)), ~(~u_input.b.xy), Struct_4(all(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.d)), Struct_2(vec2<i32>(u_input.c, u_input.a.x), u_input.b.x, arg_0.c, false), select(vec3<bool>(arg_0.a.x, arg_0.c, false), arg_0.a.xzz, arg_0.c), Struct_1(arg_0.a, arg_0.b, false, arg_0.c)), vec3<u32>(u_input.b.x, 4294967295u, reverseBits(u_input.b.x))), !select(arg_0.a.zwy, !vec3<bool>(true, true, arg_0.d), vec3<bool>(arg_0.c, arg_0.a.x, arg_0.a.x))), arg_0);
    var var_2 = Struct_3(var_1.a, var_1.b, vec3<bool>(var_1.a.c, true, -720f <= arg_0.b), Struct_1(var_1.d.a, 466f, any(var_1.a.a.yyz), !(!var_1.c.x)));
    var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, u_input.a.x), ~(~(-67810i))) << (var_1.b.b % 32u), _wgslsmith_mult_i32(~var_1.b.a.x, 22524i));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1244f, -933f, var_1.c.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(round(var_1.d.b)))));
    return -1i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(!vec4<bool>(any(select(vec4<bool>(arg_1.d, true, arg_3.b.d, true), vec4<bool>(arg_2.d.a.x, false, false, true), vec4<bool>(true, true, true, arg_3.c.x))), arg_1.d, false, arg_1.a.x), _wgslsmith_div_f32(arg_2.d.b, arg_2.d.b), func_3(vec4<bool>(true, !all(arg_1.a), all(arg_1.a.zyw), any(vec2<bool>(arg_3.d.a.x, arg_3.c.x))), select(u_input.b.zy, u_input.b.xz, vec2<bool>(select(true, arg_1.a.x, arg_2.b.d), false)), Struct_4(arg_2.c.x, Struct_2(arg_2.b.a, ~arg_3.b.b, true, arg_1.d), select(arg_1.a.yyy, func_3(vec4<bool>(true, false, false, arg_3.a), u_input.b.xz, arg_2, vec3<u32>(arg_2.b.b, 4294967295u, 9368u)), arg_1.a.wyz), Struct_1(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1097f), any(vec2<bool>(arg_2.d.c, arg_1.a.x)), arg_1.d)), ~firstLeadingBit(vec3<u32>(86035u, 4294967295u, arg_3.b.b)) >> (u_input.b % vec3<u32>(32u))).x, !any(vec4<bool>(all(vec2<bool>(arg_2.a, true)), arg_1.a.x, arg_3.a, any(vec2<bool>(false, false)))));
    var var_1 = vec3<bool>(true, false, arg_2.a);
    var_1 = arg_3.c;
    var_1 = vec3<bool>(all(vec2<bool>(true, _wgslsmith_f_op_f32(-arg_2.d.b) != _wgslsmith_f_op_f32(arg_1.b - arg_2.d.b))), true, !all(vec2<bool>(arg_1.c, false)) || true);
    var var_2 = u_input.a;
    return Struct_1(select(!(!select(arg_1.a, vec4<bool>(true, true, arg_2.d.d, var_1.x), true)), vec4<bool>(true, true, all(vec2<bool>(arg_3.c.x, false)) | true, !(u_input.a.x <= 2147483647i)), all(!var_0.a) || select(!arg_2.d.d, select(var_0.d, var_0.d, arg_2.a), all(vec3<bool>(var_1.x, false, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f)), true, !(!func_3(vec4<bool>(false, true, true, arg_3.c.x), u_input.b.xz, arg_3, select(u_input.b, vec3<u32>(78724u, arg_3.b.b, arg_2.b.b), var_0.d)).x));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -(~(-u_input.a.x));
    let var_1 = !(!(!vec2<bool>(true, arg_0.c || true)));
    var var_2 = func_4(var_0, Struct_1(!vec4<bool>(any(vec2<bool>(arg_0.d, arg_0.c)), var_1.x, true, true), 1f, true, !(_wgslsmith_div_i32(u_input.a.x, u_input.c) > func_2(Struct_1(vec4<bool>(arg_0.d, arg_0.c, false, arg_0.d), -468f, true, arg_0.d)))), Struct_4(var_1.x, Struct_2(vec2<i32>(arg_0.a.x, _wgslsmith_mod_i32(u_input.a.x, arg_0.a.x)), countOneBits(u_input.b.x), arg_0.c, arg_0.d && any(vec2<bool>(var_1.x, true))), !vec3<bool>(arg_0.c, func_3(vec4<bool>(var_1.x, var_1.x, arg_0.d, false), vec2<u32>(9210u, 30708u), Struct_4(arg_0.d, Struct_2(vec2<i32>(var_0, -1i), u_input.b.x, arg_0.c, arg_0.d), vec3<bool>(false, var_1.x, arg_0.c), Struct_1(vec4<bool>(false, arg_0.c, arg_0.d, arg_0.d), -104f, true, var_1.x)), vec3<u32>(u_input.b.x, arg_0.b, u_input.b.x)).x, true), Struct_1(!vec4<bool>(false, arg_0.c, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)), false, any(select(vec4<bool>(var_1.x, var_1.x, true, arg_0.d), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(true, true, arg_0.c, var_1.x))))), Struct_4(select(true, true, true & arg_0.d) | any(vec4<bool>(false, false, false, false)), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, arg_0.a.x) >> (vec2<u32>(1u, arg_0.b) % vec2<u32>(32u)), arg_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(112119u, arg_0.b, u_input.b.x, 4294967295u), vec4<u32>(0u, u_input.b.x, arg_0.b, 99086u)) >> (10657u % 32u), !arg_0.d, var_1.x), vec3<bool>(var_1.x, all(vec2<bool>(false, true)), false), Struct_1(select(vec4<bool>(true, var_1.x, true, true), !vec4<bool>(false, true, var_1.x, false), u_input.b.x > 97287u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1185f)), _wgslsmith_f_op_f32(-434f * 1542f)), true, var_1.x)));
    return Struct_2(-u_input.a, max(~(~arg_0.b), 4294967295u) >> (~u_input.b.x % 32u), _wgslsmith_clamp_u32(2054u, ~_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xx), 39223u) != _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 12548u, 0u, 0u) & abs(vec4<u32>(arg_0.b, 0u, 1u, u_input.b.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, arg_0.b), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, arg_0.b, 0u), vec4<u32>(arg_0.b, arg_0.b, 0u, 0u)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(vec2<i32>(-1i, u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 21853u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u) % vec4<u32>(32u))), ~_wgslsmith_mult_u32(41525u, u_input.b.x), 20157u), true, true));
    var var_1 = 37330u;
    var var_2 = !(!(!(firstLeadingBit(var_0.a.x) <= ~5267i)));
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(reverseBits(u_input.b.x) << (0u % 32u), ~(~(~u_input.b.x))), 0u, var_0.b);
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1190f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-782f, 1647f)))), 705f)));
}

