struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_4) -> i32 {
    let var_0 = !select(vec4<bool>(!(4294967295u == u_input.b), any(arg_1) == arg_0.b.b.x, true, !(arg_1.x || true)), arg_1, arg_1);
    var var_1 = arg_0;
    var var_2 = ~_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(arg_2.c.x, arg_2.b, 10928u, 4294967295u))), ~vec4<u32>(arg_2.c.x, max(58923u, 636u), ~u_input.b, 7926u));
    let var_3 = Struct_1(select(arg_0.b.a, -2147483647i, true), !var_0.xzx);
    let var_4 = select(-2147483647i, _wgslsmith_mult_i32(abs(abs(var_1.b.a)), -9075i), var_1.b.b.x);
    return _wgslsmith_sub_i32(-1i, firstTrailingBit(arg_2.d.a.a));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.x)))), true)) * _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + arg_1.x)))), 1u, reverseBits(~(~vec3<u32>(u_input.b, u_input.b, 4294967295u))), Struct_2(Struct_1(55i, vec3<bool>(arg_2.a.b.x & arg_2.a.b.x, all(arg_2.a.b.yz), arg_2.a.b.x)), Struct_1(-11032i, select(select(vec3<bool>(arg_2.a.b.x, true, true), arg_2.a.b, vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, false)), vec3<bool>(true, arg_2.a.b.x, arg_2.a.b.x), any(vec4<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x, false)))), u_input.a ^ _wgslsmith_div_i32(firstTrailingBit(-33001i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(arg_2.a.a, u_input.c)))), Struct_2(arg_2.a, Struct_1(2147483647i, arg_2.a.b), arg_0));
    var_0 = Struct_4(945f, min(~var_0.b, ~var_0.c.x), vec3<u32>(~_wgslsmith_sub_u32(u_input.b, 0u), ~var_0.c.x, _wgslsmith_div_u32(~71136u, _wgslsmith_mult_u32(u_input.b, 4294967295u))) & vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.c.xz, vec2<u32>(u_input.b, var_0.b)) | u_input.b, select(var_0.b ^ 56103u, countOneBits(u_input.b), true), 25258u), var_0.d, var_0.d);
    var var_1 = ~var_0.d.a.a;
    var_0 = Struct_4(_wgslsmith_f_op_f32(-var_0.a), var_0.b, var_0.c, Struct_2(Struct_1(~u_input.a, select(!var_0.d.a.b, vec3<bool>(arg_2.a.b.x, true, var_0.e.a.b.x), select(vec3<bool>(arg_2.a.b.x, var_0.d.b.b.x, true), vec3<bool>(false, true, false), var_0.e.a.b))), var_0.d.a, -(~(-1i))), var_0.d);
    var var_2 = Struct_4(-1543f, firstLeadingBit(abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.b, var_0.b), _wgslsmith_sub_u32(var_0.b, 1u)))), select(_wgslsmith_sub_vec3_u32(var_0.c, select(vec3<u32>(4294967295u, 1674u, 4294967295u), var_0.c, vec3<bool>(true, false, arg_2.a.b.x))) | vec3<u32>(~5091u, _wgslsmith_mod_u32(var_0.c.x, 16858u), var_0.b), ~_wgslsmith_mult_vec3_u32(var_0.c << (var_0.c % vec3<u32>(32u)), ~vec3<u32>(1u, 36882u, 1u)), false | arg_2.a.b.x), Struct_2(var_0.e.a, Struct_1(1i, arg_2.a.b), 1i), Struct_2(arg_2.a, Struct_1(5365i, vec3<bool>(any(vec4<bool>(var_0.e.a.b.x, var_0.d.b.b.x, var_0.d.b.b.x, true)), true & arg_2.a.b.x, arg_2.a.b.x & false)), arg_0));
    return min(45644u, _wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.c.zx), vec2<u32>(4294967295u, ~7678u)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = arg_2.a.b.yz;
    var_0 = select(vec2<bool>(!(!any(arg_2.a.b.yy)), true), arg_2.a.b.zy, arg_2.a.b.zy);
    var var_1 = -17613i;
    var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, ~arg_2.a.a), 0i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.b * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1177f, arg_2.b)))))), -126f);
    return _wgslsmith_add_vec3_u32(~vec3<u32>(func_4(func_3(Struct_2(Struct_1(-46382i, vec3<bool>(false, false, false)), arg_2.a, -1i), vec4<bool>(true, true, false, arg_2.a.b.x), Struct_4(-1154f, arg_1, vec3<u32>(1u, u_input.b, 4294967295u), Struct_2(Struct_1(2147483647i, vec3<bool>(var_0.x, var_0.x, false)), arg_2.a, 14126i), Struct_2(arg_2.a, arg_2.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1390f, 244f, arg_0)), arg_2), ~1u, arg_1), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, arg_1, 0u), vec3<u32>(arg_1, ~arg_1, 4294967295u)), select(abs(vec3<u32>(u_input.b, 4294967295u, 4294967295u)), select(~vec3<u32>(u_input.b, arg_1, u_input.b), vec3<u32>(4294967295u, 0u, arg_1), select(vec3<bool>(false, arg_2.a.b.x, arg_2.a.b.x), vec3<bool>(true, arg_2.a.b.x, var_0.x), var_0.x)), all(arg_2.a.b))));
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec3_u32(~reverseBits(countOneBits(select(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 30347u, u_input.b), true))), vec3<u32>(u_input.b, _wgslsmith_div_u32(~u_input.b, 57933u), u_input.b) ^ ~func_2(_wgslsmith_f_op_f32(-arg_0), firstLeadingBit(u_input.b), Struct_3(Struct_1(-19935i, vec3<bool>(true, true, false)), arg_0)));
    var_0 = ~(abs(vec3<u32>(var_0.x, u_input.b, var_0.x)) >> (~firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, u_input.b)) % vec3<u32>(32u))) >> (select(~vec3<u32>(4378u << (u_input.b % 32u), 1u, var_0.x), vec3<u32>(min(u_input.b, u_input.b), u_input.b, func_4(u_input.a, vec3<f32>(-1074f, arg_0, 1000f), Struct_3(Struct_1(25967i, vec3<bool>(false, true, true)), arg_0)) ^ (32700u ^ var_0.x)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))) % vec3<u32>(32u));
    let var_1 = !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false), !vec3<bool>(37157u > u_input.b, var_0.x < var_0.x, -1000f == arg_0), vec3<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), true, false));
    var var_2 = Struct_3(Struct_1(~_wgslsmith_mult_i32(u_input.c, ~u_input.a), !(!vec3<bool>(true, false, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -539f))) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-835f - arg_0))));
    var var_3 = ~((vec4<u32>(~u_input.b, select(8555u, 14413u, true), 35083u, 4294967295u) ^ (~vec4<u32>(82330u, 0u, 0u, 2434u) << (~vec4<u32>(4294967295u, u_input.b, var_0.x, u_input.b) % vec4<u32>(32u)))) << (((vec4<u32>(var_0.x, u_input.b, 80077u, 20384u) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 33754u, 41475u, 9532u), vec4<u32>(11352u, 6074u, 15733u, 31908u)) % vec4<u32>(32u))) ^ vec4<u32>(0u, 1u, var_0.x, u_input.b)) % vec4<u32>(32u)));
    return Struct_4(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1583f)))), u_input.b, var_3.yxz, Struct_2(Struct_1(abs(_wgslsmith_sub_i32(var_2.a.a, u_input.c)), var_1), var_2.a, _wgslsmith_sub_i32(abs(-var_2.a.a), -2147483647i)), Struct_2(var_2.a, var_2.a, ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-827f);
    let var_1 = ~select(vec2<u32>(u_input.b ^ u_input.b, 1u) << (select(~var_0.c.zz, vec2<u32>(4294967295u, 4294967295u) & var_0.c.zy, true) % vec2<u32>(32u)), firstLeadingBit(~var_0.c.yy << (~var_0.c.yz % vec2<u32>(32u))), true);
    let var_2 = func_1(var_0.a);
    var var_3 = true;
    var_3 = !(!any(!(!var_0.d.a.b)));
    var var_4 = var_0.d.b.b.x;
    var_4 = true;
    var var_5 = var_2.d;
    var var_6 = Struct_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-518f + var_2.a), _wgslsmith_f_op_f32(-var_0.a)))).d.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(~(~var_0.b)), 1u, !var_5.a.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(step(1742f, var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_6.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), -1i, -(var_5.c >> (_wgslsmith_mod_u32(~1u, 36805u) % 32u)));
}

