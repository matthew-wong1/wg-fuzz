struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(arg_0.x, -366f), _wgslsmith_f_op_f32(arg_0.x - -349f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 705f))))));
    let var_1 = Struct_2(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), select(vec4<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(false, true, true)), false), vec4<bool>(false, true, true, true), any(vec4<bool>(false, true, false, true))), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true)))), _wgslsmith_mod_i32(-1i, 10448i), select(vec3<i32>(reverseBits(~(-1i)), abs(~(-46480i)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(79311i, -3872i, 4674i, 1i), vec4<i32>(u_input.b.x, 1i, 0i, u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-3848i, u_input.b.x, u_input.b.x, u_input.c), vec4<i32>(u_input.c, -34855i, u_input.c, 40586i), vec4<i32>(u_input.b.x, 2147483647i, u_input.c, u_input.c)))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.b.x), reverseBits(vec3<i32>(u_input.b.x, u_input.c, 1i))), firstTrailingBit(vec3<i32>(1i, u_input.b.x, -15295i))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true && all(vec2<bool>(false, false)))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, var_0.x))))));
    var var_2 = Struct_1(var_0.x, -10470i, true);
    let var_3 = Struct_3(!var_2.c, var_1);
    let var_4 = ~(~select(select(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.d, 4294967295u, 73686u, 1u), false), vec4<u32>(~u_input.d, abs(u_input.a), ~u_input.a, u_input.a), select(select(var_1.a, var_1.a, vec4<bool>(false, var_2.c, false, false)), var_1.a, vec4<bool>(false, var_3.b.a.x, false, var_1.d))));
    return _wgslsmith_dot_vec4_u32(var_4, select(~var_4, vec4<u32>(~var_4.x, 0u, ~4294967295u, 10485u) | firstTrailingBit(~var_4), select(vec4<bool>(all(var_1.a), all(var_1.a), any(vec3<bool>(true, true, var_2.c)), false), vec4<bool>(any(vec3<bool>(true, true, var_3.a)), select(var_2.c, var_3.b.d, true), 123223u == var_4.x, true), true)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec2<u32>(~(~func_3(vec2<f32>(arg_0.a, 345f))), ~u_input.d);
    var_0 = max(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 9338u) & ~vec2<u32>(24343u, u_input.a)), vec2<u32>(u_input.a, var_0.x) >> (~(~vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)), (vec2<u32>(0u, 2933u) ^ ~vec2<u32>(u_input.a, 43029u)) ^ ~(~vec2<u32>(u_input.d, u_input.d))), abs(min(~vec2<u32>(0u, var_0.x), vec2<u32>(var_0.x, _wgslsmith_mult_u32(var_0.x, var_0.x)))));
    var var_1 = Struct_3(!(!(!(!arg_0.c))), Struct_2(select(!select(vec4<bool>(true, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true), true), vec4<bool>(true, all(vec4<bool>(arg_0.c, arg_0.c, false, true)), arg_0.c, true), true), u_input.b.x, ~vec3<i32>(-43032i, 38860i, u_input.b.x), arg_0.c, arg_0.a));
    var var_2 = var_1.b.a;
    var_0 = vec2<u32>(var_0.x, ~0u);
    return Struct_2(!(!select(vec4<bool>(var_2.x, true, false, var_2.x), select(var_1.b.a, var_1.b.a, vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c)), var_0.x != 57189u)), min(-_wgslsmith_sub_i32(arg_0.b, _wgslsmith_mult_i32(-55223i, 23444i)), -2147483647i ^ select(arg_0.b, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), true)), vec3<i32>(u_input.c, -9113i, 360i), true, arg_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = vec3<u32>(u_input.d, firstLeadingBit(90031u), u_input.d) & ~select((vec3<u32>(u_input.a, 1u, u_input.d) >> (vec3<u32>(26855u, u_input.d, 1u) % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, u_input.d, 4294967295u), select(vec3<u32>(1u, u_input.a, 0u) | vec3<u32>(u_input.d, u_input.a, 8719u), reverseBits(vec3<u32>(4294967295u, u_input.d, 1u)), vec3<bool>(arg_0.a.x, true, true)), arg_1.a.zxw);
    let var_1 = ~(u_input.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_add_u32(u_input.a, var_0.x), u_input.d, ~1u), ~abs(vec4<u32>(1u, var_0.x, 4294967295u, 4294967295u))));
    let var_2 = vec4<i32>(countOneBits(-5737i), -1i, _wgslsmith_mult_i32(-2147483647i, u_input.b.x), u_input.c);
    var var_3 = arg_0.a.x != true;
    let var_4 = 24489u;
    return arg_1.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_4(1u, vec3<bool>(true, all(vec4<bool>(func_2(Struct_1(779f, arg_2, false)).d, true, func_2(Struct_1(1489f, -39265i, false)).a.x, true)), true), _wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1358f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 889f, 329f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1177f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1278f, -1459f, -2264f))), vec3<f32>(-436f, -128f, -1175f))), vec3<bool>(true, true, true))));
    var var_1 = Struct_5(func_2(Struct_1(arg_0.x, _wgslsmith_div_i32(u_input.c >> (43317u % 32u), ~2147483647i), !var_0.b.x)));
    var_1 = Struct_5(func_2(Struct_1(_wgslsmith_div_f32(-155f, _wgslsmith_f_op_f32(f32(-1f) * -950f)), _wgslsmith_div_i32(u_input.b.x, arg_2) ^ (i32(-1i) * -12979i), !any(var_0.b))));
    var var_2 = var_1.a.c;
    let var_3 = Struct_3(!(!var_0.b.x), var_1.a);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.e)) - arg_0.x)), abs(_wgslsmith_div_i32(abs(firstTrailingBit(u_input.b.x)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), var_3.b.c.zx)))), all(vec4<bool>(true, false, all(var_0.b.zz), (-1485f >= var_3.b.e) | true)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1811f - arg_0.e))) - _wgslsmith_f_op_f32(arg_0.e * 1012f)), -3773f), u_input.d, ~(_wgslsmith_div_i32(-4698i, arg_0.b) & max(2147483647i, -45489i)) & _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, 1i), -u_input.c), func_4(func_2(Struct_1(arg_0.e, arg_0.c.x, arg_0.a.x)), arg_0)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-638f + -1338f), arg_0.e);
    let var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(func_4(func_2(var_0), func_2(Struct_1(1382f, u_input.b.x, false))), -1i << (u_input.a % 32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, arg_0.c.x), u_input.b), arg_0.c.yz), -u_input.b | -arg_0.c.yz) | firstTrailingBit(~u_input.b));
    var var_3 = reverseBits(min(~_wgslsmith_mod_u32(4294967295u, u_input.d), min(u_input.a | u_input.a, u_input.d))) >= u_input.a;
    var var_4 = arg_0.c;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_5) -> u32 {
    let var_0 = arg_2;
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.xx, vec2<f32>(-275f, -405f))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.d | u_input.d, _wgslsmith_mod_u32(arg_2, 14470u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0, var_0), vec3<u32>(u_input.d, 59303u, u_input.d)), vec3<u32>(4294967295u, 12285u, 1u)), ~1u, _wgslsmith_clamp_u32(select(0u, 58156u, true), var_0 & 0u, 0u)), vec4<u32>(countOneBits(var_0 << (var_0 % 32u)), 1u, _wgslsmith_mult_u32(u_input.a, ~var_0), 41102u | u_input.a)), 2147483647i);
    let var_2 = !vec4<bool>(!(1u >= ~arg_2), all(arg_3.a.a.zzx), true, !(var_0 <= firstTrailingBit(var_0)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e + 1088f) - _wgslsmith_f_op_f32(arg_0.e + arg_1.x)))), arg_3.a.b, -2147483647i == ~(-(~var_1.b)));
    var var_3 = abs(~(~(~(~vec2<u32>(arg_2, var_0)))));
    return ~(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, 685f))) << (arg_2 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~func_6(func_1(Struct_2(vec4<bool>(true, true, false, false), u_input.c, vec3<i32>(u_input.c, u_input.b.x, u_input.c), true, -159f), 8112i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, 1000f, -523f)))), 874u, Struct_5(func_1(Struct_2(vec4<bool>(true, true, true, true), -11212i, vec3<i32>(u_input.b.x, u_input.c, 55368i), false, -582f), u_input.b.x))), 1u, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.a, 0u), select(vec4<u32>(88794u, u_input.d, 4294967295u, u_input.d), vec4<u32>(u_input.d, 1u, 49397u, u_input.a), vec4<bool>(true, true, false, false)))));
    var var_1 = Struct_5(Struct_2(vec4<bool>(false, select(false, false, true) && true, any(vec2<bool>(true, false)), false), select(53632i, -(-2147483647i << (var_0.x % 32u)), !func_1(Struct_2(vec4<bool>(true, true, false, true), 1i, vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), true, 380f), u_input.b.x).d), ~abs(-vec3<i32>(u_input.c, u_input.c, 67103i)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + -2151f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_1 = Struct_5(Struct_2(!var_1.a.a, 24573i, max(abs(vec3<i32>(0i, var_1.a.b, var_1.a.c.x)), vec3<i32>(-2147483647i << (var_0.x % 32u), -68915i >> (u_input.d % 32u), u_input.c)), var_1.a.a.x, 1000f));
    var var_2 = Struct_5(Struct_2(var_1.a.a, firstLeadingBit(~(-5507i)), ~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, var_1.a.b, 31625i), var_1.a.c), var_1.a.d, var_1.a.e));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.e), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(325f, var_1.a.e)), var_1.a.e))));
    let var_4 = 1457f;
    var var_5 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_3 + _wgslsmith_f_op_vec3_f32(-var_3)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(551f)), var_3.x, _wgslsmith_f_op_f32(trunc(var_3.x)))))));
    var_1 = Struct_5(var_2.a);
    var_2 = Struct_5(func_1(var_1.a, _wgslsmith_mod_i32(1i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(abs(var_2.a.c.yx | vec2<i32>(13940i, var_2.a.c.x))), var_2.a.e, u_input.d | ~u_input.d);
}

