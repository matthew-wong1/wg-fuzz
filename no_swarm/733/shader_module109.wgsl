struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    var var_0 = ~u_input.b.zy;
    var var_1 = vec2<f32>(1697f, 488f);
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, ~u_input.a.x, ~0u), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(17692u, 1u, 30282u), u_input.a))), u_input.a), select(~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 55696u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 76796u), u_input.a) | ~u_input.a, ~vec3<u32>(u_input.a.x, 5569u, 1u) & vec3<u32>(u_input.a.x, 4294967295u, 1u)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false)))));
    var var_3 = firstLeadingBit(-1234i);
    var var_4 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(false, true, u_input.a.x <= var_2.b.x, any(vec4<bool>(true, true, true, false))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), select(var_2.a != var_2.a, true, false)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, var_1.x < -1148f), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true))), vec4<bool>(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), true, !any(vec3<bool>(true, false, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))) & true));
    return vec2<u32>(_wgslsmith_add_u32(~min(u_input.a.x, 51021u), firstTrailingBit(~var_2.a)) >> (1695u % 32u), select(u_input.a.x, abs(_wgslsmith_mod_u32(91762u, var_2.b.x)), var_4.x) << (5026u % 32u));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = Struct_3(true, arg_0.a.b, 30441i, ~0u);
    var_0 = arg_0.a;
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.a.xx, firstTrailingBit(u_input.a.zz));
    var_1 = func_3();
    var var_2 = countOneBits(~arg_1.a.x);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1411f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(339f * 1686f), _wgslsmith_f_op_f32(select(-2941f, 1016f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1012f)), _wgslsmith_f_op_f32(2137f - -559f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1000f)), -351f, !var_0.a)))), -622f);
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = !arg_0.a.zxw;
    var var_1 = (0u | (u_input.a.x << (~(arg_0.d >> (arg_0.b % 32u)) % 32u))) << (4294967295u % 32u);
    var var_2 = vec2<f32>(740f, _wgslsmith_f_op_f32(func_2(Struct_5(Struct_3(arg_0.a.x, Struct_2(u_input.a.x, u_input.a), -u_input.b.x, 0u), Struct_2(4294967295u, vec3<u32>(arg_0.b, 0u, u_input.a.x)), u_input.b.x, arg_0.a, Struct_2(u_input.a.x >> (arg_0.b % 32u), max(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, arg_0.d, u_input.a.x)))), Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(12163u, u_input.a.x), ~u_input.a.xx)), -(u_input.b.x ^ (u_input.b.x | u_input.b.x)), vec4<bool>(var_0.x, !(!arg_0.a.x), !(!arg_0.a.x), true))));
    let var_3 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), var_2.x);
    var var_4 = var_0.x;
    return Struct_4(~min(vec2<u32>(arg_0.b | 0u, 43749u | arg_0.d), u_input.a.zx));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = abs(u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1399f) + -415f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f * 1117f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -473f))) - _wgslsmith_f_op_f32(func_2(Struct_5(Struct_3(false, Struct_2(u_input.a.x, u_input.a), u_input.b.x, arg_0.a.x), Struct_2(arg_0.a.x, u_input.a), u_input.b.x, vec4<bool>(false, true, true, false), Struct_2(4294967295u, vec3<u32>(u_input.a.x, 4294967295u, 84258u))), func_1(Struct_1(vec4<bool>(false, false, true, false), 1u, var_0, u_input.a.x)), 12237i, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f + 1744f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f - -1666f)), false))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-905f, -1000f) + -1056f), _wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(floor(-756f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f + 1151f)))))));
    var var_2 = vec3<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, any(vec3<bool>(u_input.a.x > _wgslsmith_mult_u32(4294967295u, arg_0.a.x), false, true)));
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-311f, var_1.x, var_1.x, 303f), vec4<f32>(1210f, 1011f, 808f, -250f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, -1141f, 627f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-454f, var_1.x, -546f, var_1.x))), vec4<bool>(var_2.x, var_2.x, false, false))), any(select(vec3<bool>(false, true, false), vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, false, var_2.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x)), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(3263f, var_1.x, var_1.x, var_1.x), vec4<f32>(-583f, var_1.x, 1449f, 1470f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, -473f, 1244f, 764f)))))));
    var var_3 = -884f;
    return Struct_2(~_wgslsmith_sub_u32(~u_input.a.x, 0u >> (reverseBits(u_input.a.x) % 32u)), vec3<u32>(arg_0.a.x, 1u, firstLeadingBit(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_1(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), true), u_input.a.x, select(_wgslsmith_mod_i32(20060i, u_input.b.x), -15984i, true), _wgslsmith_add_u32(firstTrailingBit(42275u), reverseBits(u_input.a.x)))));
    let var_1 = select(vec3<bool>(true || !all(vec3<bool>(true, false, true)), true | ((0i < u_input.b.x) && true), !(~(-21729i) >= ~u_input.b.x)), vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, true), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), ~u_input.a.x > ~0u, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), any(vec3<bool>(true, true, true))));
    let var_2 = ~countOneBits(firstTrailingBit(-vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, -2147483647i) >> (~vec4<u32>(u_input.a.x, 36489u, var_0.a, 1u) % vec4<u32>(32u))));
    var var_3 = func_4(Struct_4(vec2<u32>(var_0.b.x, ~var_0.a) >> (u_input.a.xz % vec2<u32>(32u)))).a;
    var_3 = _wgslsmith_dot_vec3_u32(u_input.a, ~var_0.b);
    let var_4 = Struct_1(select(vec4<bool>(any(vec2<bool>(var_1.x, true)), false, true, true), select(!(!vec4<bool>(var_1.x, false, true, true)), select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, true, var_1.x, var_1.x), all(var_1.yz)), select(vec4<bool>(false, var_1.x, var_1.x, true), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, var_1.x, false, true), var_1.x), !vec4<bool>(var_1.x, var_1.x, false, false))), false | var_1.x), min(~8446u, 44413u), abs(u_input.b.x | ((37030i ^ var_2.x) << (~u_input.a.x % 32u))), u_input.a.x);
    var var_5 = ~(var_0.b.x & 1u);
    var var_6 = select(!var_1.zz, vec2<bool>(true, var_4.a.x), !select(var_1.yz, var_4.a.yy, var_1.zx));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-224f, _wgslsmith_f_op_f32(f32(-1f) * -570f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-536f + 169f)))), var_0.b.x, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, ~var_0.b.x), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~var_4.b)) & select(u_input.a.yy, ~vec2<u32>(var_4.d, var_4.d), var_1.zx), ~50601u, u_input.b.yz);
}

