struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = vec3<u32>(u_input.c, 1u, _wgslsmith_div_u32(0u, u_input.c));
    let var_1 = Struct_2(Struct_1(arg_1), u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-2770f * -1658f)))), select(~1u << (0u % 32u), min(u_input.c, 1u), true | arg_1));
    var var_2 = all(select(!(!vec2<bool>(arg_1, arg_0.a)), select(select(vec2<bool>(arg_0.a, false), vec2<bool>(false, var_1.a.a), true), select(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_1)), select(vec2<bool>(arg_1, var_1.a.a), vec2<bool>(true, true), vec2<bool>(var_1.a.a, false)), all(vec3<bool>(arg_1, false, true))), vec2<bool>(true, false)), select(vec2<bool>(true, var_1.d > 0u), select(select(vec2<bool>(true, false), vec2<bool>(var_1.a.a, arg_1), var_1.a.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_1), vec2<bool>(false, true)), vec2<bool>(true, true)), select(vec2<bool>(false, var_1.a.a), vec2<bool>(arg_0.a, var_1.a.a), false))));
    let var_3 = vec3<bool>(false, all(!select(select(vec3<bool>(arg_0.a, arg_1, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(true, true, arg_1)), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_1, false), true), false)), true);
    let var_4 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0, var_0), firstLeadingBit(var_0)) >> (~var_0.x % 32u), ~14842u);
    return var_1.c.x;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = true | !all(!(!vec2<bool>(false, var_0.a.a)));
    var_0 = Struct_2(var_0.a, -select(11903i, _wgslsmith_mult_i32(-u_input.d, _wgslsmith_mult_i32(u_input.d, 2147483647i)), any(vec4<bool>(var_0.a.a, arg_3, true, var_0.a.a))), vec2<f32>(arg_2.c.x, -290f), 4294967295u);
    var_0 = arg_2;
    var var_2 = Struct_2(Struct_1(var_1), var_0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2.a, false)) - 1000f), arg_2.c.x), 52621u >> (abs(_wgslsmith_mod_u32(u_input.b, arg_2.d) << (~var_0.d % 32u)) % 32u));
    return Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c.x, var_2.c.x), var_2.c, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.c))), var_2.c))), ~abs(_wgslsmith_div_u32(abs(var_0.d), 1u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = -26950i;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.x - 729f), arg_1.c.x), 680f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.c.x, -1217f)), -1267f, arg_1.a.a))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.c.x * 272f))), -1675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c.x)) * _wgslsmith_f_op_f32(ceil(arg_1.c.x))), -1009f)));
    var var_2 = _wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(u_input.c, 4294967295u, u_input.c, 44954u), vec4<u32>(92422u, 1u, 13832u, 1u))), ~((vec4<u32>(1u, 1u, 101372u, u_input.c) | vec4<u32>(arg_1.d, u_input.b, arg_1.d, 12874u)) ^ ~vec4<u32>(67248u, u_input.b, 17321u, arg_1.d))) ^ _wgslsmith_add_u32(u_input.b, ~arg_1.d);
    let var_3 = ~32655u;
    let var_4 = vec2<u32>(_wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(var_3, 1u), ~arg_1.d)), arg_1.d), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3, arg_1.d), firstTrailingBit(vec2<u32>(u_input.b, var_3))) ^ 1u);
    return Struct_1(true & select(select(u_input.b, arg_1.d, arg_1.a.a) == min(u_input.b, 26789u), any(vec4<bool>(arg_0.x, arg_0.x, false, false)), arg_0.x));
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_add_i32(48199i, -1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(245f + 693f) - _wgslsmith_f_op_f32(f32(-1f) * -492f))), _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.c.a), any(vec2<bool>(true, true))))));
    var_0 = -16957i;
    var_0 = arg_0.a;
    let var_2 = func_4(!vec2<bool>(arg_0.d, _wgslsmith_f_op_f32(var_1.x + 2626f) <= 358f), Struct_2(arg_0.b, _wgslsmith_add_i32(max(~arg_0.a, -1i), -2147483647i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(arg_0.b, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x))), var_1, all(vec3<bool>(arg_0.b.a, true, arg_0.d)))))), firstTrailingBit(~_wgslsmith_sub_u32(2330u, u_input.c))), 0i);
    return var_1.x;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = -abs(arg_0.a);
    var var_1 = _wgslsmith_f_op_f32(func_5(Struct_3(firstTrailingBit(u_input.e) ^ arg_0.a, func_4(vec2<bool>(true, false), func_2(978f, select(0u, u_input.c, arg_0.c.a), Struct_2(arg_0.c, -1i, vec2<f32>(185f, 326f), u_input.b), true), firstLeadingBit(var_0) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.c, u_input.b)) % 32u)), Struct_1(arg_1.a), false)));
    let var_2 = Struct_1(false);
    var var_3 = vec2<bool>(func_4(!select(select(vec2<bool>(var_2.a, arg_0.c.a), vec2<bool>(true, arg_0.c.a), vec2<bool>(arg_0.b.a, var_2.a)), vec2<bool>(arg_1.a, false), !arg_1.a), Struct_2(func_4(!vec2<bool>(false, arg_1.a), func_2(-354f, 0u, Struct_2(Struct_1(arg_1.a), var_0, vec2<f32>(-1000f, 402f), u_input.b), false), 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, -1513i), vec2<i32>(var_0, var_0)), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(495f, -1259f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1755f))), select(firstTrailingBit(u_input.c), u_input.c, false & var_2.a)), ~reverseBits(-4894i)).a, all(select(!vec4<bool>(false, false, arg_1.a, arg_0.b.a), vec4<bool>(false, arg_1.a, arg_1.a, var_2.a), !var_2.a)) || func_4(select(vec2<bool>(false, var_2.a), vec2<bool>(true, true), any(vec3<bool>(false, var_2.a, var_2.a))), Struct_2(func_4(vec2<bool>(arg_1.a, false), Struct_2(arg_0.c, arg_0.a, vec2<f32>(668f, 1493f), u_input.c), arg_0.a), 19352i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1351f, 1330f)), max(882u, 1u)), arg_0.a >> (u_input.c % 32u)).a);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-169f)) * _wgslsmith_f_op_f32(f32(-1f) * -167f)) - _wgslsmith_f_op_f32(-1000f + -1084f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1881f - 1599f), _wgslsmith_div_f32(-994f, -363f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + -493f) - _wgslsmith_div_f32(-274f, 1918f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)), 452f);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(189f, 241f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-636f, 620f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-345f, 1645f)), 207f, func_1(Struct_3(u_input.a.x, Struct_1(true), Struct_1(true), false), Struct_1(true)))), _wgslsmith_f_op_f32(373f - -546f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(811f, -479f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1001f, 1694f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-449f, -420f), vec2<f32>(945f, -642f))))));
    let var_1 = Struct_3((_wgslsmith_div_i32(_wgslsmith_mult_i32(816i, 38159i), max(0i, u_input.e)) | abs(_wgslsmith_mult_i32(u_input.d, -1156i))) << (min(52993u, u_input.c) % 32u), func_4(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_2(Struct_1(all(vec3<bool>(true, true, false))), u_input.a.x, _wgslsmith_f_op_vec2_f32(ceil(func_2(340f, u_input.b, Struct_2(Struct_1(true), u_input.e, vec2<f32>(1071f, var_0.x), 31882u), false).c)), 159u), 2147483647i), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) * _wgslsmith_f_op_f32(floor(385f))), _wgslsmith_add_u32(~select(u_input.b, u_input.c, false), ~1971u & u_input.c), func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(-1313f, var_0.x), _wgslsmith_div_f32(477f, var_0.x)), 0u, func_2(var_0.x, ~u_input.b, Struct_2(Struct_1(false), u_input.a.x, vec2<f32>(var_0.x, -1193f), u_input.b), true), true), true).a, false);
    let var_2 = vec3<u32>(~(~u_input.c), 0u, ~1u);
    let var_3 = vec3<u32>(46760u, 4294967295u, _wgslsmith_dot_vec3_u32(~var_2, var_2));
    let var_4 = func_2(_wgslsmith_f_op_f32(-var_0.x), ~8154u, Struct_2(Struct_1(all(select(vec3<bool>(var_1.c.a, var_1.b.a, false), vec3<bool>(var_1.b.a, false, var_1.c.a), var_1.c.a))), var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(242f)), -1625f)), 0u), !(false || all(!vec2<bool>(var_1.d, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_4.d, 1u, ~57949u), min(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -1i), _wgslsmith_add_i32(1i, var_1.a), max(-21430i, var_1.a), -2147483647i | var_1.a), countOneBits(~vec4<i32>(u_input.d, u_input.e, 78974i, -1i))) | ~vec4<i32>(~326i, -12377i, u_input.e, 0i >> (var_3.x % 32u)), var_3.x, 57479i);
}

