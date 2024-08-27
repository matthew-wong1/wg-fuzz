struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1074f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1651f, 949f))) - 2872f), arg_1.c.a.x)), 1000f));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_4(Struct_3(arg_2.a.a, ~arg_1.a.b, Struct_1(vec3<bool>(true, arg_1.a.b.x <= 1u, arg_2.a.b.x >= arg_2.a.b.x)), Struct_1(select(vec3<bool>(arg_2.c.a.x, arg_1.c.a.x, false), arg_2.a.c.a, !arg_3.a.a)), !(true & any(arg_3.a.a))), !vec2<bool>(arg_1.a.a > -28442i, !all(vec2<bool>(true, arg_1.c.a.x))), arg_2.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + arg_0))));
    var var_2 = arg_2.a;
    let var_3 = !all(vec2<bool>(!var_0.a.c.a.x, var_2.d.a.x));
    var_2 = Struct_3(~firstLeadingBit(var_0.a.a), select(vec2<u32>(arg_1.a.b.x, firstTrailingBit(4294967295u)), ~_wgslsmith_sub_vec2_u32(var_0.a.b, var_2.b) << (vec2<u32>(_wgslsmith_add_u32(var_0.a.b.x, arg_2.a.b.x), arg_1.a.b.x) % vec2<u32>(32u)), arg_2.b), Struct_1(var_2.d.a), Struct_1(var_2.c.a), any(vec3<bool>(!(true & var_2.d.a.x), true, false)));
    return !(!vec3<bool>(!(var_1.x < -413f), any(select(vec2<bool>(false, true), arg_1.c.a.yz, vec2<bool>(arg_1.b.x, false))), any(vec2<bool>(true, true)) & true));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -1708f)))));
    let var_1 = -27902i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(-arg_0) >= -999f;
    return Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -1000f, var_0.x, -1330f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.x, -411f, 715f) + vec4<f32>(arg_0, var_0.x, -700f, 1238f)))), Struct_4(Struct_3(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(var_1, 0i)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(1u, 30090u)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, false))), vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, false))), Struct_4(Struct_3(2147483647i, ~arg_1, Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), true), vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, true))), Struct_2(Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), select(any(vec2<bool>(true, true)), var_1 >= 2147483647i, true), countOneBits(u_input.d | vec4<i32>(0i, -28600i, 0i, -1i)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    var var_0 = true;
    var_0 = arg_0.x;
    let var_1 = Struct_2(Struct_1(!arg_3.xxy), any(vec4<bool>(any(vec4<bool>(false, arg_2.a.a.x, true, arg_0.x)), select(arg_3.x, true, false), arg_2.a.a.x, _wgslsmith_mult_i32(arg_2.c.x, arg_1) == -arg_2.c.x)), abs(_wgslsmith_div_vec4_i32(arg_2.c, _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(arg_2.c.x, arg_2.c.x, arg_1, -1i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, 121f, -1120f)) + _wgslsmith_div_vec3_f32(vec3<f32>(723f, 401f, -1327f), vec3<f32>(1055f, -2922f, -1432f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(499f, 1344f, -1463f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-782f, 1104f, 129f) + vec3<f32>(1063f, -616f, 670f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, 553f, 1000f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1253f, -2041f, -1045f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(654f, 296f, 808f)))))))), select(select(vec3<bool>(any(arg_3.yzx), arg_3.x, var_1.b), select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_0.x, true), select(arg_3.xxz, vec3<bool>(false, true, arg_2.a.a.x), false)), !func_3(vec4<f32>(-540f, -439f, 1268f, 778f), Struct_4(Struct_3(-10987i, vec2<u32>(27006u, 0u), Struct_1(arg_3.wwz), Struct_1(vec3<bool>(arg_2.a.a.x, true, arg_3.x)), true), vec2<bool>(arg_2.b, var_1.b), var_1.a), Struct_4(Struct_3(var_1.c.x, vec2<u32>(48381u, 4294967295u), Struct_1(vec3<bool>(arg_2.b, arg_2.a.a.x, arg_3.x)), Struct_1(var_1.a.a), true), vec2<bool>(arg_3.x, arg_3.x), arg_2.a), arg_2).x), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(false, var_1.b, !arg_0.x), !all(vec2<bool>(arg_0.x, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0.x, true), arg_2.a.a, any(vec3<bool>(false, false, true))), arg_1 >= arg_1))));
    var_0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(var_2.x, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -385f), true)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_2(arg_2.a, true, vec4<i32>(arg_2.c.x, arg_2.c.x, arg_1, var_1.c.x)), Struct_3(var_1.c.x, ~vec2<u32>(13144u, 1u), Struct_1(vec3<bool>(true, false, true)), Struct_1(var_1.a.a), false), _wgslsmith_dot_vec2_i32(vec2<i32>(-2742i, arg_2.c.x) ^ vec2<i32>(var_1.c.x, -1i), max(vec2<i32>(var_1.c.x, u_input.e), var_1.c.wx)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-343f - -931f)) * _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<bool>(true, false, false)), true, vec4<i32>(-1i, u_input.d.x, 0i, u_input.c.x)), Struct_3(-21412i, vec2<u32>(1u, 48031u), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), false), ~(-2147483647i)))) - _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), 81254i, Struct_2(func_2(-1125f, vec2<u32>(53584u, 1u)), true, -vec4<i32>(u_input.e, u_input.d.x, u_input.b.x, u_input.c.x)), vec4<bool>(true, false, true, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<bool>(false, true, true)), true, vec4<i32>(-20145i, -54507i, 31025i, u_input.d.x)), Struct_3(-42902i, vec2<u32>(57955u, 16124u), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), true), -28379i)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f))));
    var var_1 = vec2<u32>(~_wgslsmith_mult_u32(reverseBits(25389u), _wgslsmith_clamp_u32(32003u, 1u, 0u)), 80110u) | countOneBits(~firstTrailingBit(vec2<u32>(0u, 4294967295u)));
    let var_2 = Struct_3(19043i, ~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(var_1.x, 7847u)), reverseBits(vec2<u32>(17823u, var_1.x))) & vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(56333u, 1u)), select(~var_1.x, 10856u, true)), func_2(-296f, ~countOneBits(vec2<u32>(var_1.x, var_1.x) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), Struct_1(vec3<bool>(any(func_2(-458f, vec2<u32>(60476u, 0u)).a), false, true)), select(false, true, var_1.x == 1u));
    var_0 = _wgslsmith_f_op_f32(903f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = Struct_2(Struct_1(!var_2.d.a), false, min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, var_2.a, ~var_2.a, abs(u_input.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -7493i), vec4<i32>(var_2.a, -14905i, var_2.a, var_2.a) ^ u_input.d, max(vec4<i32>(u_input.e, -45826i, u_input.a, -1i), vec4<i32>(4428i, -18887i, 1i, -15931i)))), vec4<i32>(-(0i & u_input.e), -(~u_input.a), _wgslsmith_add_i32(u_input.d.x, -25973i) | (u_input.d.x >> (var_1.x % 32u)), 12158i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.b.x & (_wgslsmith_dot_vec2_u32(var_2.b, var_2.b) << (~27547u % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(915f))), 475f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-934f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f + -134f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-623f, -187f)), _wgslsmith_f_op_f32(f32(-1f) * -1364f)))));
}

