struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> f32 {
    return arg_0.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.c;
    var var_1 = Struct_1(~(reverseBits(var_0.a) & var_0.a), vec3<bool>(false, arg_2.b.d, false), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1844f, arg_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1732f, arg_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -713f)) + _wgslsmith_f_op_f32(func_3(arg_0.b, arg_0, Struct_2(1000f, arg_0.c.b, Struct_1(arg_1.a, vec3<bool>(arg_0.b.d, false, arg_1.d), vec2<f32>(arg_1.c.x, 1515f), false)), 183f)))), false);
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(10962u, arg_1.a, 0u) >> (reverseBits(vec3<u32>(43449u, arg_1.a, 0u)) % vec3<u32>(32u)), select(vec3<u32>(25826u, 1u, 50705u), ~vec3<u32>(12901u, 0u, arg_1.a), !arg_2.c.b.x)), countOneBits(vec3<u32>(1913u, 1u, 48912u) & (vec3<u32>(78083u, arg_1.a, 0u) >> (vec3<u32>(arg_2.b.a, 43723u, 4294967295u) % vec3<u32>(32u))))), vec3<bool>(any(vec2<bool>(true, var_1.b.x || arg_2.c.b.x)), all(!(!vec4<bool>(false, arg_2.b.b.x, true, true))), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c.x)))), arg_1.c.x), arg_2.b.d);
    var_0 = Struct_1(1u, !select(var_1.b, arg_1.b, var_0.b), vec2<f32>(_wgslsmith_f_op_f32(min(612f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c.x + arg_2.b.c.x))))), 801f), true);
    let var_3 = 64470i;
    return _wgslsmith_f_op_f32(func_3(Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(12956u, 0u, var_0.a), vec3<u32>(1u, arg_2.c.a, var_0.a) | vec3<u32>(var_2.a, 120543u, var_2.a)), vec3<bool>(any(!arg_2.b.b), all(!var_0.b.yx), arg_1.b.x), arg_2.c.c, any(vec3<bool>(false, false, 1648u > var_0.a))), arg_0, arg_0.c, -156f));
}

fn func_1() -> Struct_2 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1303f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<f32>(-756f, -424f, -1216f, -1000f), Struct_1(0u, vec3<bool>(false, false, true), vec2<f32>(2038f, 1006f), false), Struct_2(-2011f, Struct_1(25471u, vec3<bool>(false, false, true), vec2<f32>(218f, -912f), true), Struct_1(3458u, vec3<bool>(true, true, true), vec2<f32>(-1617f, 920f), false)), 9305u, -154f), Struct_1(28545u, vec3<bool>(false, true, true), vec2<f32>(-213f, -1285f), false), Struct_2(1030f, Struct_1(12857u, vec3<bool>(false, false, true), vec2<f32>(-620f, 209f), false), Struct_1(0u, vec3<bool>(true, false, false), vec2<f32>(902f, 1714f), true)))) + -189f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(-453f, 603f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, -251f, -611f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2017f, 488f, 233f))), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1172f, -2175f, -748f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1517f, 1000f, 1487f) + vec3<f32>(-1074f, -395f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, 201f, 1774f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, 1162f, -767f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, -1000f, var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-613f, 914f, var_1.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1806f, -1511f, var_1.x), vec3<f32>(var_1.x, 1589f, -349f))))));
    let var_3 = vec2<i32>(-74693i, abs(_wgslsmith_div_i32(~u_input.a.x, var_0 ^ ~var_0)));
    let var_4 = var_0;
    return Struct_2(_wgslsmith_f_op_f32(-745f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-881f * -945f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -495f, true))))), Struct_1(19330u, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(100f, _wgslsmith_div_f32(-682f, -802f)), _wgslsmith_f_op_vec2_f32(exp2(var_1.zx)))), true & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true))), Struct_1(~_wgslsmith_div_u32(~41428u, 4294967295u), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2645f, 1323f)))), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(423f, -1335f), _wgslsmith_f_op_f32(var_0.a * -736f), var_0.c.c.x, 1000f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.x, var_0.b.c.x, var_0.c.c.x, var_0.b.c.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c.x, -1143f, 259f, var_0.a) * vec4<f32>(var_0.b.c.x, -1000f, -794f, -3129f)))), -u_input.a.x == (1i >> (var_0.c.a % 32u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-900f, var_0.c.c.x, var_0.b.c.x, var_0.c.c.x) * vec4<f32>(var_0.c.c.x, var_0.b.c.x, var_0.b.c.x, var_0.a)) * vec4<f32>(var_0.a, -936f, var_0.a, -234f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(525f + 1000f), _wgslsmith_f_op_f32(-var_0.c.c.x), 1489f, _wgslsmith_f_op_f32(step(var_0.b.c.x, var_0.a))) + vec4<f32>(1440f, func_1().c.c.x, 1498f, var_0.b.c.x))), vec4<f32>(var_0.a, -428f, 540f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<f32>(var_0.a, -1630f, 1000f, var_0.b.c.x), var_0.b, Struct_2(-907f, var_0.b, Struct_1(var_0.c.a, vec3<bool>(false, true, var_0.c.b.x), var_0.c.c, var_0.c.d)), var_0.b.a, 366f), var_0.b, Struct_2(var_0.a, Struct_1(0u, vec3<bool>(var_0.c.d, var_0.c.b.x, false), var_0.c.c, true), Struct_1(var_0.c.a, var_0.b.b, vec2<f32>(var_0.b.c.x, 227f), false)))), 252f))));
}

