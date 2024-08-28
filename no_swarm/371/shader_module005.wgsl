struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-900f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(644f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1000f - var_0), var_0, -479f, var_0);
    let var_2 = select(~_wgslsmith_mod_u32(firstLeadingBit(40499u), 73973u), _wgslsmith_mod_u32(34263u, 1u), any(select(vec2<bool>(arg_0 < arg_0, true), vec2<bool>(false, any(vec4<bool>(true, false, true, false))), true)));
    var var_3 = 4294967295u;
    var var_4 = Struct_1(true, abs(firstTrailingBit(~1u) & 1u), var_0);
    return Struct_1(select(false, var_4.a, any(!select(vec3<bool>(false, var_4.a, var_4.a), vec3<bool>(false, var_4.a, var_4.a), var_4.a))), 14569u, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(max(-278f, var_0))));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(select(-1825f, -1438f, true)), vec3<i32>(countOneBits(u_input.a), -1i, ~(34958i >> (1u % 32u))), func_1(_wgslsmith_sub_i32(0i >> (0u % 32u), u_input.a)), func_1(-24149i), reverseBits(~vec2<i32>(u_input.a, u_input.a))));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(Struct_2(var_0.a.c.c, -_wgslsmith_div_vec3_i32(~var_0.a.b, var_0.a.b << (vec3<u32>(0u, var_0.a.c.b, 4294967295u) % vec3<u32>(32u))), func_1(~1i), Struct_1(!all(vec3<bool>(var_0.a.d.a, var_0.a.c.a, true)), var_0.a.d.b, var_0.a.d.c), var_0.a.b.xx));
    var var_1 = true;
    let var_2 = any(!(!(!(!vec3<bool>(false, var_0.a.d.a, true)))));
    return select(select(!select(select(vec2<bool>(var_2, false), vec2<bool>(var_2, false), var_2), !vec2<bool>(var_2, var_2), !vec2<bool>(var_0.a.c.a, true)), !(!vec2<bool>(var_0.a.d.a, false)), false), select(!(!vec2<bool>(var_2, var_2)), vec2<bool>(false, var_0.a.c.c < var_0.a.c.c), !vec2<bool>(true, -174f < var_0.a.a)), select(select(vec2<bool>(false, true), vec2<bool>(false, !var_0.a.c.a), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(var_0.a.d.a, false, true)), all(select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, var_2, var_2, false), false))), vec2<bool>((0u < var_0.a.c.b) | select(var_2, false, false), _wgslsmith_sub_u32(3599u, var_0.a.d.b) <= ~39965u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = Struct_4(arg_0);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.c.c);
    let var_2 = !select(!(!select(vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(arg_0.c.a, arg_0.d.a, false, false), vec4<bool>(true, arg_1.x, var_0.a.c.a, arg_1.x))), select(vec4<bool>(select(arg_0.c.a, true, arg_0.c.a), arg_0.c.a, true, false), select(vec4<bool>(arg_0.d.a, var_0.a.d.a, arg_1.x, arg_1.x), select(vec4<bool>(arg_0.c.a, arg_0.d.a, arg_0.d.a, var_0.a.c.a), vec4<bool>(false, false, false, true), true), true), arg_0.c.a), !vec4<bool>(func_1(arg_0.e.x).a, arg_1.x || false, var_0.a.d.a & false, true));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-arg_2.x), vec3<i32>(-(0i << (0u % 32u)), var_0.a.e.x, -32432i), Struct_1(true, arg_0.c.b, _wgslsmith_f_op_f32(step(-741f, -499f))), Struct_1(false, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.b, var_0.a.c.b), vec2<u32>(60320u, 0u)) >> (var_0.a.d.b % 32u), _wgslsmith_f_op_f32(var_0.a.d.c - _wgslsmith_f_op_f32(abs(var_0.a.c.c)))), var_0.a.e));
    var_0 = Struct_4(arg_0);
    return vec3<u32>(arg_0.d.b, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.d.b, arg_0.c.b), 1u) & countOneBits(12380u), 57208u) >> (abs(vec3<u32>(4294967295u, 101321u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.a.d.b, 1u), 1u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = ~(~(-vec4<i32>(u_input.a, 1i, arg_0.x, 2147483647i) >> (~(vec4<u32>(arg_2.b, 76522u, arg_3.c.b, arg_3.c.b) & vec4<u32>(0u, arg_3.c.b, arg_2.b, 4294967295u)) % vec4<u32>(32u))));
    let var_1 = func_4(arg_3, select(vec2<bool>(all(!vec2<bool>(arg_2.a, false)), any(!vec2<bool>(arg_3.d.a, arg_2.a))), !(!vec2<bool>(arg_3.c.a, arg_2.a)), select(select(vec2<bool>(true, arg_2.a), !vec2<bool>(arg_3.d.a, false), vec2<bool>(arg_3.c.a, arg_3.d.a)), select(func_3(), !vec2<bool>(arg_2.a, arg_2.a), false), !(!arg_2.a))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(2513f)))), _wgslsmith_f_op_f32(arg_2.c * arg_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.c) - _wgslsmith_div_f32(arg_1, arg_1))))));
    return Struct_3(Struct_1(false, arg_3.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))))), !select(select(select(vec4<bool>(arg_2.a, false, false, true), vec4<bool>(arg_3.d.a, arg_3.d.a, true, true), true), select(vec4<bool>(arg_2.a, false, arg_3.d.a, arg_2.a), vec4<bool>(arg_2.a, arg_3.d.a, true, arg_3.c.a), vec4<bool>(false, arg_2.a, arg_2.a, arg_3.d.a)), !vec4<bool>(arg_2.a, arg_3.d.a, arg_2.a, true)), vec4<bool>(all(vec4<bool>(true, arg_3.c.a, arg_2.a, false)), false, true, true), any(vec2<bool>(false, arg_2.a))), arg_3);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(arg_1.x, (arg_3.c.b ^ select(arg_3.c.b, vec3<i32>(arg_3.c.e.x, -21334i, 1i), vec3<bool>(arg_3.b.x, arg_3.a.a, arg_0.a))) | (firstTrailingBit(arg_3.c.b) | vec3<i32>(23543i, 24941i, -7976i)), arg_0, arg_0, ~arg_3.c.e));
    let var_1 = 52852u << (arg_3.c.d.b % 32u);
    return var_0.a;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(719f - arg_2.a.c.c), arg_2.a.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~vec4<i32>(arg_2.a.e.x, -22450i, -5521i, -45471i), -1241f, func_5(arg_2.a.c, vec3<f32>(-926f, arg_2.a.a, -685f), arg_2.a.c.b, Struct_3(Struct_1(arg_0, arg_2.a.d.b, arg_2.a.a), vec4<bool>(arg_1, arg_1, arg_2.a.c.a, arg_0), arg_2.a)).c, func_2(vec4<i32>(u_input.a, arg_2.a.b.x, 2147483647i, -3737i), -536f, arg_2.a.d, Struct_2(653f, vec3<i32>(-1i, arg_2.a.e.x, arg_2.a.e.x), arg_2.a.c, Struct_1(arg_1, arg_2.a.c.b, -1000f), arg_2.a.b.xx)).c).c.d.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.d.c), _wgslsmith_div_f32(-613f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_2.a.d.c)), arg_2.a.a)) + -587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.d.c)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1365f, arg_2.a.a, arg_2.a.c.c, 385f)))) - vec4<f32>(858f, -554f, -982f, -2907f)) - vec4<f32>(_wgslsmith_f_op_f32(665f - 1249f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d.c + var_0.x)), 1f)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-239f - -939f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1915f))), _wgslsmith_f_op_f32(func_1(arg_2.a.e.x).c + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1615f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(323f, _wgslsmith_f_op_f32(-var_0.x)), arg_2.a.c.c, !any(vec3<bool>(arg_2.a.d.a, false, true)))), func_5(func_5(Struct_1(true, 0u, -1257f), _wgslsmith_f_op_vec3_f32(var_0.yxw + vec3<f32>(-208f, -1356f, -1215f)), ~17878u, Struct_3(Struct_1(true, arg_2.a.d.b, arg_2.a.c.c), vec4<bool>(false, arg_2.a.d.a, true, true), Struct_2(var_0.x, vec3<i32>(0i, -2147483647i, u_input.a), Struct_1(true, 51239u, 1610f), Struct_1(arg_0, 160066u, -1103f), arg_2.a.b.yx))).c, var_0.wzw, _wgslsmith_div_u32(~arg_2.a.d.b, 1u), Struct_3(Struct_1(false, arg_2.a.c.b, arg_2.a.a), vec4<bool>(false, arg_2.a.d.a, true, false), func_2(vec4<i32>(arg_2.a.b.x, arg_2.a.e.x, 30253i, 2147483647i), 132f, arg_2.a.d, Struct_2(var_0.x, vec3<i32>(0i, u_input.a, 0i), arg_2.a.c, arg_2.a.c, arg_2.a.e)).c)).d.c)));
    let var_1 = func_3().x;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, var_0.x, _wgslsmith_f_op_f32(-252f * _wgslsmith_f_op_f32(-1000f * var_0.x)), _wgslsmith_f_op_f32(step(var_0.x, arg_2.a.c.c))));
    return func_5(Struct_1(arg_2.a.c.b > 17166u, 1u & (~arg_2.a.d.b << (arg_2.a.c.b % 32u)), _wgslsmith_f_op_f32(func_2(countOneBits(vec4<i32>(64786i, 5862i, 0i, u_input.a)), _wgslsmith_f_op_f32(min(-1885f, var_0.x)), Struct_1(false, arg_2.a.d.b, var_0.x), arg_2.a).a.c + -1468f)), var_0.xxy, ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(34588u, arg_2.a.c.b, arg_2.a.c.b, arg_2.a.c.b), firstTrailingBit(vec4<u32>(1u, 0u, arg_2.a.d.b, arg_2.a.d.b))) >> ((101830u << ((31069u << (arg_2.a.c.b % 32u)) % 32u)) % 32u)), Struct_3(Struct_1(arg_2.a.d.a, firstLeadingBit(16846u), _wgslsmith_f_op_f32(floor(-1140f))), vec4<bool>(-1000f <= _wgslsmith_f_op_f32(-arg_2.a.a), true & all(vec2<bool>(false, true)), all(func_2(vec4<i32>(1i, -1i, 0i, -2147483647i), -1289f, arg_2.a.d, Struct_2(var_0.x, arg_2.a.b, arg_2.a.c, arg_2.a.c, arg_2.a.e)).b.zx), true && select(true, arg_1, arg_1)), func_2(_wgslsmith_sub_vec4_i32(~vec4<i32>(46548i, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(15199i, u_input.a, u_input.a, u_input.a), vec4<i32>(-24189i, -7081i, arg_2.a.e.x, arg_2.a.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.a + arg_2.a.d.c))), func_2(~vec4<i32>(-1737i, u_input.a, 0i, arg_2.a.b.x), _wgslsmith_div_f32(705f, -867f), func_1(u_input.a), func_2(vec4<i32>(u_input.a, 2147483647i, arg_2.a.b.x, -23652i), -898f, Struct_1(arg_1, 0u, arg_2.a.a), Struct_2(var_0.x, vec3<i32>(-2147483647i, 17663i, u_input.a), arg_2.a.c, arg_2.a.d, vec2<i32>(-2147483647i, arg_2.a.e.x))).c).c.c, Struct_2(-1000f, reverseBits(arg_2.a.b), Struct_1(var_1, arg_2.a.d.b, var_0.x), arg_2.a.d, arg_2.a.e << (vec2<u32>(arg_2.a.d.b, 4294967295u) % vec2<u32>(32u)))).c)).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(true, ~(-_wgslsmith_div_i32(u_input.a, -38517i)) >= -(u_input.a ^ u_input.a), Struct_4(func_5(func_1(16008i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1466f, 1371f, 2306f))), 1u, func_2(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 1866f, Struct_1(false, 1u, 959f), Struct_2(539f, vec3<i32>(u_input.a, -20400i, u_input.a), Struct_1(false, 0u, 846f), Struct_1(true, 0u, 1039f), vec2<i32>(u_input.a, u_input.a))))));
    var var_1 = Struct_5(!func_2(countOneBits(vec4<i32>(55477i, 1i, 825i, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1921f), Struct_1(func_6(var_0.a, var_0.a, Struct_4(Struct_2(var_0.c, vec3<i32>(u_input.a, 1i, 8974i), Struct_1(false, var_0.b, -1328f), Struct_1(false, var_0.b, var_0.c), vec2<i32>(u_input.a, -10414i)))).a, var_0.b >> (7113u % 32u), 970f), func_2(vec4<i32>(1i, 1i, -1i, u_input.a), _wgslsmith_f_op_f32(-546f + var_0.c), func_2(vec4<i32>(701i, 33103i, u_input.a, u_input.a), var_0.c, Struct_1(var_0.a, var_0.b, -141f), Struct_2(var_0.c, vec3<i32>(2147483647i, u_input.a, u_input.a), Struct_1(false, 1u, 2185f), Struct_1(var_0.a, var_0.b, var_0.c), vec2<i32>(u_input.a, u_input.a))).a, Struct_2(599f, vec3<i32>(37644i, u_input.a, u_input.a), Struct_1(false, var_0.b, var_0.c), Struct_1(true, 1u, 1000f), vec2<i32>(u_input.a, -24158i))).c).b, vec2<bool>(func_3().x, false), func_1(-2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<f32>(var_0.c, var_0.c, -1571f, var_0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, var_0.c, var_0.c, -276f))))), ~abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(3446u, 0u), 0u)));
    var_1 = Struct_5(!select(!vec4<bool>(var_1.a.x, false, true, var_0.a), var_1.a, true), !vec2<bool>(var_1.a.x, true), func_1(countOneBits(-u_input.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c, var_1.d.x, func_2(~vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), -1171f, var_1.c, func_5(var_1.c, var_1.d.yxy, var_1.e, Struct_3(Struct_1(true, var_1.e, -1000f), vec4<bool>(true, true, true, false), Struct_2(-2317f, vec3<i32>(1i, u_input.a, u_input.a), var_1.c, Struct_1(false, 0u, -621f), vec2<i32>(u_input.a, -1i))))).c.c.c, _wgslsmith_div_f32(func_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 67367i), -1654f, var_1.c, Struct_2(var_0.c, vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(false, 22941u, -1338f), var_1.c, vec2<i32>(u_input.a, u_input.a))).a.c, _wgslsmith_f_op_f32(var_1.d.x * var_0.c))))), var_0.b);
    var var_2 = u_input.a;
    var var_3 = -_wgslsmith_div_i32(u_input.a, _wgslsmith_div_i32(reverseBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(15520i, -2147483647i, 12068i, -53090i), -vec4<i32>(u_input.a, u_input.a, -2941i, u_input.a))));
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -64519i, -36308i, 0i), abs(max(vec4<i32>(firstLeadingBit(0i), u_input.a, 1i, u_input.a), -vec4<i32>(0i, 2415i, u_input.a, -2147483647i))));
}

