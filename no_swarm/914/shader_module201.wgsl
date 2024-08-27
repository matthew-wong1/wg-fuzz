struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = reverseBits(firstLeadingBit(~arg_2.c.b)) | firstLeadingBit((reverseBits(-9451i) >> ((69452u ^ arg_2.c.c.x) % 32u)) | -6032i);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, 1520f))), _wgslsmith_f_op_f32(trunc(arg_2.c.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(arg_2.b.x + 158f)))))));
    return arg_1.x;
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-878f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(310f + _wgslsmith_div_f32(-184f, _wgslsmith_f_op_f32(round(-577f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1558f, -107f, -1417f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(881f, 425f), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), vec2<f32>(568f, 487f), Struct_2(vec3<bool>(true, false, true), vec4<f32>(-467f, 172f, 487f, 471f), Struct_1(899f, 5264i, vec2<u32>(4294967295u, u_input.a))))), -339f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1934f, 1145f, -1934f))))))));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(~u_input.a, ~u_input.c, true), _wgslsmith_add_u32(countOneBits(15306u), u_input.b.x << (1u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 45470u, u_input.b.x), ~vec3<u32>(40091u, 4294967295u, 4294967295u)), 57233u), (vec4<u32>(u_input.b.x, 7384u, u_input.a, u_input.c) & ~u_input.b) ^ min(~u_input.b, u_input.b)) ^ (~u_input.c | ~4294967295u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(317f, var_0.x), _wgslsmith_f_op_vec2_f32(ceil(var_0.zz))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-428f, -162f), var_0.xy))))) + var_0.zy);
    return Struct_4(_wgslsmith_f_op_f32(sign(var_2.x)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = ~(-(firstTrailingBit(u_input.d.xx) << (~abs(u_input.b.yw) % vec2<u32>(32u))));
    var var_1 = 4329u;
    let var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(abs(min(vec2<i32>(u_input.d.x, var_0.x), u_input.d.ww)) & u_input.d.wx, ~vec2<i32>(_wgslsmith_add_i32(-11391i, 1i), -2147483647i)), reverseBits(u_input.d.yw));
    var_0 = var_2;
    let var_3 = func_2();
    return Struct_2(!vec3<bool>(all(!vec3<bool>(var_3.b, var_3.b, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_3.b, true, var_3.b), false)), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-129f, var_3.a, -1266f, 785f))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(-1837f + -1421f), _wgslsmith_div_f32(var_3.a, arg_0), _wgslsmith_f_op_f32(floor(-795f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1404f) + _wgslsmith_f_op_f32(f32(-1f) * -1944f))), ~abs(firstLeadingBit(-1i)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(66550u, arg_1), vec2<u32>(arg_1, u_input.c)), abs(vec2<u32>(0u, 14567u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = ((~firstLeadingBit(9567u) >> (arg_3.a.c.x % 32u)) ^ 4294967295u) ^ u_input.b.x;
    let var_1 = !arg_2;
    let var_2 = select(vec4<i32>(arg_3.a.b, min(1i, countOneBits(arg_1.c.b) << (arg_1.c.c.x % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.xx & vec2<i32>(1i, -56669i), max(vec2<i32>(arg_1.c.b, 0i), vec2<i32>(23233i, 41698i))), u_input.d.wx), _wgslsmith_add_i32(~(-43727i), -arg_1.c.b)), _wgslsmith_add_vec4_i32(vec4<i32>(~arg_3.a.b, arg_3.a.b, max(arg_1.c.b, _wgslsmith_sub_i32(u_input.d.x, -2315i)), arg_1.c.b), u_input.d), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(select(vec4<bool>(var_1.x, arg_1.a.x, arg_2.x, false), vec4<bool>(arg_1.a.x, arg_3.b, false, true), vec4<bool>(arg_3.b, var_1.x, false, arg_1.a.x)), vec4<bool>(true, false, true, true), true)), !(-1i < -arg_3.a.b), var_1.x));
    let var_3 = 1i;
    let var_4 = _wgslsmith_f_op_vec4_f32(-arg_1.b);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482f - -1020f))), ~_wgslsmith_add_i32(-6860i, ~(-arg_3.c)), _wgslsmith_sub_vec2_u32(u_input.b.zx >> (vec2<u32>(arg_0.x ^ 9446u, 1u) % vec2<u32>(32u)), arg_1.c.c));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = true;
    let var_1 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(f32(-1f) * -477f)), _wgslsmith_f_op_f32(max(arg_2.a, -1541f)))))), ~_wgslsmith_dot_vec4_u32(~max(u_input.b, u_input.b), ~reverseBits(vec4<u32>(0u, arg_1.x, arg_1.x, u_input.b.x))));
    var var_2 = -408f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -440f);
    var var_3 = u_input.d.x;
    return Struct_4(1000f, func_1(1066f, ~9534u).a.x);
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: vec3<i32>) -> u32 {
    var var_0 = func_4(~vec4<u32>(83496u, 1u, ~35057u, u_input.c), func_1(_wgslsmith_f_op_f32(1223f * -926f), _wgslsmith_add_u32(1u, u_input.c)), !select(!func_1(-1545f, 1u).a.yx, func_1(arg_2.a, u_input.b.x).a.xz, !func_1(510f, 0u).a.xz), Struct_3(func_4(~reverseBits(vec4<u32>(u_input.c, 24931u, 4294967295u, u_input.c)), Struct_2(!vec3<bool>(arg_2.b, true, true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(177f, 1000f, -1000f, arg_0.a))), Struct_1(1166f, 9336i, u_input.b.wx)), vec2<bool>(u_input.d.x != u_input.d.x, arg_1 > 1000f), Struct_3(Struct_1(-1095f, -30727i, vec2<u32>(0u, u_input.b.x)), -22097i < u_input.d.x, ~(-30873i))), arg_2.b, u_input.d.x));
    var_0 = func_4(~u_input.b, func_1(_wgslsmith_f_op_f32(ceil(-1265f)), 1u), vec2<bool>(!all(func_1(-1000f, 4294967295u).a.zx), !arg_0.b), Struct_3(Struct_1(arg_0.a, 44533i, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, var_0.c.x), u_input.b.yz)), !(!arg_0.b), u_input.d.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a - 839f), 136f))), _wgslsmith_dot_vec3_i32(select(firstTrailingBit(arg_3), vec3<i32>(_wgslsmith_sub_i32(-22605i, u_input.d.x), -24035i, arg_3.x), !select(vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(arg_2.b, arg_0.b, arg_2.b), vec3<bool>(true, false, false))), -_wgslsmith_mult_vec3_i32(arg_3 >> (vec3<u32>(4294967295u, u_input.b.x, var_0.c.x) % vec3<u32>(32u)), abs(vec3<i32>(-3053i, u_input.d.x, u_input.d.x)))), vec2<u32>(~0u, 48079u));
    var var_1 = u_input.b;
    let var_2 = all(!select(!select(vec4<bool>(arg_0.b, arg_2.b, true, false), vec4<bool>(true, false, true, arg_2.b), vec4<bool>(true, arg_0.b, true, true)), select(select(vec4<bool>(arg_2.b, true, arg_2.b, arg_0.b), vec4<bool>(false, arg_2.b, false, false), arg_2.b), select(vec4<bool>(false, true, arg_2.b, false), vec4<bool>(false, arg_0.b, true, false), vec4<bool>(false, true, arg_2.b, false)), true), !select(vec4<bool>(arg_2.b, arg_2.b, false, arg_2.b), vec4<bool>(arg_2.b, true, arg_2.b, false), vec4<bool>(true, arg_0.b, arg_2.b, true))));
    return ~(~10872u);
}

fn func_7(arg_0: u32) -> Struct_2 {
    let var_0 = vec3<bool>(all(!vec4<bool>(false, any(vec2<bool>(false, false)), true, true)), false, !(_wgslsmith_f_op_f32(f32(-1f) * -1886f) > _wgslsmith_f_op_f32(round(164f))));
    let var_1 = false;
    var var_2 = func_2();
    var_2 = func_2();
    var var_3 = (-34049i << (1u % 32u)) | func_1(774f, ~0u).c.b;
    return func_1(func_4(u_input.b, func_1(_wgslsmith_f_op_f32(abs(-638f)), select(0u, 1u, false)), vec2<bool>(var_0.x, true), Struct_3(func_4(firstTrailingBit(u_input.b), func_1(301f, u_input.b.x), vec2<bool>(false, true), Struct_3(Struct_1(var_2.a, u_input.d.x, u_input.b.xw), var_1, 20558i)), true, u_input.d.x >> (firstTrailingBit(arg_0) % 32u))).a, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = func_7(func_6(func_5(!(!vec4<bool>(true, var_0.x, false, var_0.x)), u_input.b, func_4(u_input.b, func_1(-736f, 10581u), select(var_0.xz, vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x)), Struct_3(Struct_1(-607f, u_input.d.x, vec2<u32>(1u, 4294967295u)), var_0.x, -37664i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-274f)), _wgslsmith_f_op_f32(-420f - -894f)))), func_2(), firstLeadingBit(u_input.d.zzy)));
    var_1 = Struct_2(!(!vec3<bool>(var_1.a.x || false, var_0.x, false)), _wgslsmith_f_op_vec4_f32(-var_1.b), func_1(var_1.c.a, ~(~0u >> (min(u_input.b.x, u_input.a) % 32u))).c);
    var var_2 = func_5(select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, var_0.x, var_1.a.x, var_0.x), vec4<bool>(false, true, var_0.x, var_1.a.x))), vec4<bool>(true, true, func_7(1u).a.x, !(!var_0.x)), select(select(!vec4<bool>(var_1.a.x, var_0.x, false, var_0.x), vec4<bool>(var_1.a.x, var_1.a.x, var_0.x, false), select(vec4<bool>(true, var_1.a.x, false, var_0.x), vec4<bool>(false, true, true, var_1.a.x), var_1.a.x)), vec4<bool>(var_0.x, false, true, u_input.a != u_input.a), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), func_5(vec4<bool>(var_1.a.x, var_0.x, var_0.x, var_1.a.x), vec4<u32>(28601u, 1u, u_input.c, var_1.c.c.x), var_1.c).b))), u_input.b, var_1.c);
    let var_3 = func_1(577f, 4996u);
    let var_4 = var_3.c.b;
    var var_5 = max(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 18710u, 0u), ~u_input.b.wzx), var_1.c.c.x), var_3.c.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(0i, countOneBits(var_3.c.b), var_3.c.b)) | -select(vec3<i32>(-25142i, var_1.c.b, var_4), ~u_input.d.zww, vec3<bool>(false, false, var_0.x)));
}

