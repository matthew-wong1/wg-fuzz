struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = 40789u;
    let var_1 = 16765i;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_2.a, firstLeadingBit(u_input.a.x)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(35343u, u_input.a.x, 29413u), vec3<u32>(u_input.e, arg_2.a, 44043u)) >> (_wgslsmith_sub_u32(arg_2.a, arg_2.a) % 32u)), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 41593u, u_input.a.x, arg_3.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(14499u, 1u, 31510u, arg_2.a), vec4<u32>(arg_3.a, 67004u, arg_3.a, u_input.e)) | (vec4<u32>(4294967295u, 151511u, 4294967295u, arg_3.a) << (vec4<u32>(43132u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))))), 4294967295u);
    var_0 = u_input.a.x;
    let var_2 = select(~vec3<u32>(0u, _wgslsmith_sub_u32(u_input.a.x, select(1u, arg_2.a, arg_0.d.x)), abs(18018u)), _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(42748u, 1632u), ~66039u, _wgslsmith_clamp_u32(0u & arg_2.a, firstLeadingBit(4294967295u), arg_3.a)), vec3<u32>(u_input.a.x, arg_3.a, ~u_input.e & ~arg_2.a)), vec3<bool>(all(!arg_0.d.yz), arg_0.d.x, arg_0.b));
    return vec4<u32>((arg_3.a ^ firstTrailingBit(0u)) << (firstTrailingBit(reverseBits(4294967295u)) % 32u), arg_2.a, 43961u, var_2.x ^ arg_3.a) | vec4<u32>(_wgslsmith_div_u32(22416u, 16070u) >> (_wgslsmith_clamp_u32(arg_2.a, 0u, select(1u, 14201u, false)) % 32u), 12450u, countOneBits(min(u_input.a.x, arg_2.a << (arg_3.a % 32u))), max(_wgslsmith_clamp_u32(~var_2.x, 25058u, _wgslsmith_mod_u32(arg_3.a, 19498u)), u_input.a.x));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> f32 {
    let var_0 = abs(~reverseBits(func_3(Struct_3(0i, true, vec3<f32>(2444f, -1410f, 267f), vec3<bool>(arg_1.x, arg_1.x, true), arg_1), 10864i, Struct_4(43713u), Struct_4(u_input.e))) ^ min(~select(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0), vec4<u32>(u_input.e, arg_0, 1u, u_input.e), vec4<bool>(arg_1.x, true, false, true)), vec4<u32>(u_input.a.x, arg_0, ~arg_0, ~29650u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f * 876f)) + -672f);
    var var_2 = Struct_4(var_0.x);
    var var_3 = Struct_3(_wgslsmith_mod_i32(-36074i, (-u_input.d.x | u_input.c) >> (~arg_0 % 32u)), arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(ceil(-903f)), !arg_1.x)), var_1)), -610f), arg_1, select(select(arg_1, select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), (arg_1.x || arg_1.x) || true), arg_1, arg_1));
    var_2 = Struct_4(firstLeadingBit(u_input.a.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.c.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(true, true, false);
    var var_1 = vec2<bool>(var_0.x, false);
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(346f, -222f), vec2<f32>(-249f, 2166f), var_0.yx)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-133f, -791f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1419f, -1023f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1708f, 1120f))))), vec2<f32>(_wgslsmith_f_op_f32(func_2(abs(0u), vec3<bool>(true, var_1.x, var_1.x), vec3<i32>(1i, u_input.c, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f + -1000f))), vec2<bool>(all(vec3<bool>(true, var_1.x, false)) | any(vec4<bool>(var_1.x, var_0.x, var_1.x, true)), var_1.x))), Struct_4(~u_input.a.x), Struct_3(-min(u_input.d.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.c, 25897i)), var_1.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1390f, -510f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(426f, -778f, 984f) * vec3<f32>(-1000f, 155f, -229f)), var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1662f, 650f, 667f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(259f, -207f, 1264f)))), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_1.x, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_0.x, true), false)))), vec3<bool>(var_0.x, all(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x))), ~0i <= abs(u_input.d.x)), select(vec3<bool>(true, true, true), select(!vec3<bool>(var_0.x, var_1.x, var_0.x), select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, true), false), !vec3<bool>(true, var_1.x, true)), !vec3<bool>(var_1.x, true, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -1000f, any(vec4<bool>(true, select(var_0.x, true, true), var_0.x, var_0.x)))));
    var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(min(var_2.c.c.x, var_2.a.x)) >= var_2.a.x, var_2.c.c.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1371f + var_2.d) + _wgslsmith_div_f32(var_2.a.x, var_2.c.c.x)), true), vec3<bool>(!(!(var_2.c.a > -3243i)), true, var_2.c.b), select(select(!vec3<bool>(var_1.x, var_0.x, true), select(var_2.c.d, select(var_2.c.e, var_2.c.e, vec3<bool>(false, true, var_1.x)), true), var_2.c.d), select(!vec3<bool>(var_2.c.e.x, false, var_0.x), vec3<bool>(var_1.x, -17844i > var_2.c.a, true), any(!vec4<bool>(var_2.c.e.x, var_2.c.b, true, var_0.x))), var_0.x));
    let var_3 = Struct_3(_wgslsmith_div_i32(countOneBits(-(~(-2147483647i))), _wgslsmith_clamp_i32(firstTrailingBit(u_input.d.x), var_2.c.a | -23157i, countOneBits(var_2.c.a))), var_2.c.d.x, _wgslsmith_f_op_vec3_f32(select(var_2.c.c, vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)), _wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(min(584f, 942f)))), select(!vec3<bool>(var_0.x, true, var_2.c.b), var_2.c.d, vec3<bool>(all(vec4<bool>(var_1.x, var_2.c.e.x, false, var_1.x)), true, 36226i != u_input.b.x)))), select(select(var_2.c.d, var_2.c.d, var_0.x), select(vec3<bool>(var_2.c.b, true, false), var_2.c.d, var_2.c.d), true), !select(vec3<bool>(true, true, !var_2.c.d.x), vec3<bool>(!var_1.x, var_1.x, !var_0.x), vec3<bool>(select(var_1.x, var_0.x, true), true, select(false, var_0.x, var_0.x))));
    return Struct_1(-187f);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    let var_1 = vec4<bool>(arg_0.x, u_input.e == u_input.a.x, ((false & all(arg_1.d.zy)) && true) | false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_3.a)))), var_0.a, any(arg_1.e))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-173f)))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var_0 = reverseBits(u_input.b.yyz);
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-var_0.zz, vec2<i32>(_wgslsmith_mod_i32(u_input.d.x, var_0.x), ~var_0.x)), ~(-2147483647i), func_4(vec2<bool>(true, true), Struct_3(_wgslsmith_mult_i32(3688i, var_0.x), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, -479f)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true)), u_input.a.x, func_1())), _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(46737i, _wgslsmith_sub_i32(min(2147483647i, 0i), u_input.b.x >> (u_input.e % 32u)), _wgslsmith_sub_i32(var_0.x, 2147483647i) << (1u % 32u))));
    let var_1 = func_1();
    var var_2 = ~(~u_input.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))) * var_1.a));
    var var_4 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(205f, -649f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a, var_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1556f, var_1.a) + vec2<f32>(1951f, -1675f)))))), vec2<bool>(-2147483647i <= ~var_0.x, true))), Struct_4(~u_input.a.x), Struct_3(var_0.x, !any(vec4<bool>(true, true, true, false)) & all(vec4<bool>(true, true, true, true)), vec3<f32>(551f, var_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(703f))))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true), any(vec4<bool>(false, true, false, true))), select(true, true, all(vec3<bool>(true, false, true)))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(true, false, false, false)), false, any(vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_f32(-var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), u_input.a, ~((vec4<i32>(var_0.x, var_4.c.a, u_input.d.x, u_input.c) << (~vec4<u32>(var_4.b.a, var_4.b.a, 60609u, var_4.b.a) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_4.b.a, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(28381u, 1u, var_4.b.a, 4294967295u), vec4<u32>(var_4.b.a, 12674u, u_input.e, 4294967295u)), ~var_4.b.a, ~var_4.b.a) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.c.c)));
}

