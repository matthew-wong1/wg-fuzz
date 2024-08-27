struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = vec3<bool>(all(!vec3<bool>(arg_1 || arg_1, arg_1 | arg_1, any(vec4<bool>(arg_1, false, false, arg_1)))), !all(select(vec3<bool>(arg_1, true, arg_1), !vec3<bool>(false, true, arg_1), select(vec3<bool>(true, false, true), vec3<bool>(arg_1, true, false), true))), any(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_1)), select(true, true, false), arg_1)));
    var_0 = select(!(!vec3<bool>(any(vec3<bool>(false, false, arg_1)), true, false)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, arg_1, true), true), false), vec3<bool>(true, false, !var_0.x), var_0.x), !vec3<bool>(var_0.x, true, true));
    let var_1 = Struct_3(select(!(!vec2<bool>(arg_1, true)), vec2<bool>(!arg_1, false), false), Struct_1(93047u, vec4<bool>(all(var_0.zy), arg_1, true, arg_1), 1f, arg_0, _wgslsmith_add_i32(u_input.a, -u_input.b.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c) * _wgslsmith_f_op_f32(abs(var_1.b.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(540f, _wgslsmith_f_op_f32(-var_1.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(498f, -493f)))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(29596u, 1u, arg_2.d, 53966u), ~vec4<u32>(73091u, 4243u, arg_2.d, 8569u), ~vec4<u32>(47064u, arg_2.d, arg_2.a, arg_2.a))), Struct_1(4294967295u, vec4<bool>(true, true, arg_2.b.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_2.d, arg_2.b.x)), arg_2.c, false)) * arg_2.c), reverseBits(_wgslsmith_add_u32(firstLeadingBit(arg_2.a), 30708u)), -_wgslsmith_clamp_i32(-arg_2.e, arg_1, reverseBits(arg_1))), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(11620u, arg_2.a) | vec2<u32>(arg_2.d, 52985u), ~vec2<u32>(48148u, arg_2.a))), (~vec2<u32>(arg_2.d, 14573u) << ((vec2<u32>(arg_2.a, 0u) | vec2<u32>(arg_2.a, arg_2.a)) % vec2<u32>(32u))) | abs(~vec2<u32>(4294967295u, 58754u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, arg_2.c))))) * _wgslsmith_div_vec2_f32(vec2<f32>(-481f, _wgslsmith_f_op_f32(round(arg_2.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, -413f) + vec2<f32>(544f, arg_2.c)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(634f, 1534f), vec2<f32>(arg_2.c, 297f))), arg_2.b.x)))));
    let var_1 = arg_2.b.x;
    var var_2 = Struct_3(vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1934f), _wgslsmith_f_op_f32(-arg_2.c)) >= _wgslsmith_f_op_f32(var_0.b.c - _wgslsmith_f_op_f32(-arg_2.c))), arg_2);
    var var_3 = vec4<i32>(1i, arg_0, countOneBits(arg_0), 2147483647i);
    var_2 = Struct_3(select(vec2<bool>(true, true), arg_2.b.zz, !select(vec2<bool>(true, true), !vec2<bool>(var_2.b.b.x, false), select(vec2<bool>(true, false), arg_2.b.xy, vec2<bool>(arg_2.b.x, true)))), Struct_1(select(24783u, var_2.b.a, var_2.b.b.x | !var_2.b.b.x), var_0.b.b, _wgslsmith_f_op_f32(var_2.b.c * _wgslsmith_div_f32(-2610f, var_0.b.c)), _wgslsmith_div_u32(0u, ~arg_2.a), select(_wgslsmith_dot_vec2_i32(var_3.xw, select(var_3.wy, var_3.yy, false)), arg_0, !(var_1 && false))));
    return Struct_2(var_0.a, Struct_1(_wgslsmith_add_u32((var_0.c >> (arg_2.d % 32u)) << (58914u % 32u), _wgslsmith_sub_u32(arg_2.d, abs(51144u))), vec4<bool>(any(vec2<bool>(var_1, false)), all(vec2<bool>(true, true)), true, any(var_0.b.b.xxz)), 480f, var_2.b.a, -(i32(-1i) * -23033i)), 1u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c) + -1000f), -1350f));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec4<f32> {
    var var_0 = -2147483647i;
    var_0 = 2147483647i;
    var_0 = _wgslsmith_add_i32(select(~arg_1, u_input.a, arg_2.b.c != _wgslsmith_f_op_f32(arg_2.d.x * _wgslsmith_div_f32(arg_2.d.x, arg_2.b.c))), -(-arg_0 & func_2(-13315i, arg_1 ^ arg_2.b.e, func_2(0i, u_input.b.x, Struct_1(arg_3, vec4<bool>(false, false, arg_2.b.b.x, arg_2.b.b.x), arg_2.d.x, 73873u, -2147483647i)).b).b.e));
    var var_1 = ~vec2<u32>(arg_3, ~_wgslsmith_add_u32(99903u ^ arg_2.a.x, ~arg_3));
    let var_2 = arg_2;
    return vec4<f32>(273f, -643f, arg_2.b.c, func_2(u_input.a, min(~_wgslsmith_mult_i32(48051i, -1i), ~(-2147483647i)), Struct_1(4294967295u, var_2.b.b, var_2.b.c, min(~var_2.b.d, _wgslsmith_mult_u32(25590u, 0u)), _wgslsmith_mod_i32(u_input.b.x >> (4294967295u % 32u), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)))).b.c);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = ~(1u | (arg_0.b.d << (~1u % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, arg_0.b.c, 235f, -449f))), vec4<f32>(arg_0.b.c, _wgslsmith_f_op_f32(ceil(arg_0.b.c)), _wgslsmith_f_op_f32(arg_0.b.c + 396f), arg_0.b.c), arg_0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(reverseBits(arg_0.b.e), -4220i, func_2(-17592i, arg_0.b.e & arg_0.b.e, arg_0.b), 15240u)), vec4<f32>(_wgslsmith_f_op_f32(-143f - 269f), -1294f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1316f, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -403f), var_1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(761f, -697f, 251f, arg_0.b.c), vec4<f32>(var_1.x, 1040f, -271f, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c, -1050f, -144f, var_1.x) + vec4<f32>(var_1.x, 1197f, -1195f, -338f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.c, arg_0.b.c, 226f, 397f), vec4<f32>(1145f, 301f, arg_0.b.c, 1976f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(131f, arg_0.b.c, arg_0.b.c, 900f) * vec4<f32>(var_1.x, 152f, var_1.x, arg_0.b.c))))));
    return func_2(31771i, arg_0.b.e, arg_0.b);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = true;
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(arg_2.a.yz, func_2(arg_2.b.e, arg_1.b.e, arg_1.b).a.yy), select(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.c, arg_2.c), arg_2.b.a), 37225u | _wgslsmith_add_u32(2785u, arg_2.b.d), arg_1.b.b.x), abs(arg_1.c)), _wgslsmith_add_vec4_u32(min(arg_2.a, select(vec4<u32>(4294967295u, arg_2.a.x, arg_2.b.a, arg_1.b.d), arg_2.a, arg_1.c >= arg_1.a.x)), vec4<u32>(arg_2.a.x, 91780u, 4294967295u, _wgslsmith_dot_vec2_u32(arg_2.a.yz >> (arg_1.a.wz % vec2<u32>(32u)), ~vec2<u32>(50637u, arg_2.a.x)))), arg_2.a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(arg_2 - arg_1.c), _wgslsmith_f_op_vec4_f32(func_4(arg_0.b.e, 0i, arg_0, ~43153u)).x, func_2(arg_1.e, -1i, func_1(Struct_3(select(arg_1.b.yy, arg_0.b.b.yy, false), func_2(u_input.b.x, -13356i, Struct_1(arg_0.c, vec4<bool>(arg_1.b.x, arg_1.b.x, arg_0.b.b.x, true), 1085f, 145613u, arg_1.e)).b)).b).d.x);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(var_0.x + arg_2)), -527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_2)), var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1949f, arg_2, arg_0.b.c, 1821f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, var_0.x, 1066f, arg_1.c)))) - vec4<f32>(arg_1.c, arg_1.c, -413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f)))));
    var var_1 = func_1(Struct_3(vec2<bool>((true | arg_0.b.b.x) && func_1(Struct_3(arg_1.b.zx, arg_1)).b.b.x, arg_1.b.x), arg_0.b)).b;
    return vec2<u32>(arg_1.a, _wgslsmith_add_u32(min(arg_1.a, _wgslsmith_sub_u32(min(20221u, arg_1.d), 1559u)), ~84403u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(func_5(-(vec3<i32>(u_input.a, -3970i, 2147483647i) & vec3<i32>(1i, -2147483647i, u_input.b.x)), func_1(Struct_3(vec2<bool>(false, true), Struct_1(21129u, vec4<bool>(false, false, true, true), 1240f, 140797u, u_input.a))), func_1(Struct_3(vec2<bool>(false, false), Struct_1(0u, vec4<bool>(true, false, true, false), 368f, 4294967295u, -5961i)))), func_2(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.a, -5857i)), min(i32(-1i) * -38399i, reverseBits(u_input.b.x)), func_1(Struct_3(vec2<bool>(true, false), Struct_1(1u, vec4<bool>(false, true, true, true), 989f, 65812u, u_input.b.x))).b).b, firstLeadingBit(firstLeadingBit(~90811u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1553f), -1000f) * vec2<f32>(-1231f, -1000f))), func_2(2147483647i, func_2(_wgslsmith_div_i32(u_input.b.x, ~u_input.a), -53353i, Struct_1(~4294967295u, vec4<bool>(true, true, false, false), _wgslsmith_f_op_f32(f32(-1f) * -677f), 4803u, u_input.a)).b.e, func_2(u_input.b.x, -abs(65075i), func_2(-1i, ~25420i, func_1(Struct_3(vec2<bool>(false, false), Struct_1(4294967295u, vec4<bool>(false, false, true, false), -1428f, 25925u, 0i))).b).b).b).b, _wgslsmith_div_f32(func_2(~u_input.a >> (func_2(-2147483647i, u_input.a, Struct_1(1u, vec4<bool>(false, true, true, true), -1000f, 53552u, 1i)).b.a % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), ~1i), func_1(Struct_3(vec2<bool>(false, true), Struct_1(4294967295u, vec4<bool>(false, false, false, true), 709f, 33107u, u_input.b.x))).b).b.c, _wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(226f + -1000f), 912f);
    let var_2 = -954f;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-559f - 295f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))) + -372f) + 682f));
    var var_4 = countOneBits(var_0.x);
    var var_5 = Struct_2(~vec4<u32>(~func_5(u_input.b, Struct_2(vec4<u32>(var_0.x, 34189u, var_0.x, var_0.x), Struct_1(4294967295u, vec4<bool>(false, true, true, false), -1776f, var_0.x, u_input.a), var_0.x, var_1), Struct_2(vec4<u32>(41977u, var_0.x, 1u, var_0.x), Struct_1(1u, vec4<bool>(true, false, false, false), -1255f, 39797u, 2147483647i), var_0.x, var_1)).x, var_0.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(82085u, 4294967295u), ~var_0.x), _wgslsmith_sub_u32(~54726u, var_0.x)), func_2(-29623i, u_input.a, Struct_1(33265u, select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(round(-2442f)), min(_wgslsmith_div_u32(var_0.x, 0u), 35461u), u_input.b.x)).b, 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1))), vec2<f32>(var_3, func_2(u_input.b.x, u_input.b.x, Struct_1(0u, vec4<bool>(false, false, true, true), -203f, var_0.x, u_input.a)).d.x))));
    var_4 = ~(~_wgslsmith_dot_vec3_u32(var_5.a.ywy, ~(var_5.a.xxy ^ vec3<u32>(1u, var_0.x, var_5.b.d))));
    let var_6 = all(var_5.b.b.xwz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1), 1949f);
}

