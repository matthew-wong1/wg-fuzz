struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
    var_0 = select(min(max(_wgslsmith_div_u32(0u, 4294967295u), ~105014u), 1u), _wgslsmith_add_u32(41146u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(30472u, 4157u, 26969u), vec3<u32>(0u, 27192u, 4294967295u)))), 26253i > u_input.b.x) > 57943u;
    let var_1 = false;
    var_0 = !any(vec2<bool>(var_1 | true, all(select(vec2<bool>(false, false), vec2<bool>(var_1, false), true))));
    var var_2 = select(!var_1, all(select(select(!vec4<bool>(false, var_1, var_1, true), !vec4<bool>(var_1, true, true, true), false & var_1), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, var_1), var_1), vec4<bool>(all(vec3<bool>(false, var_1, var_1)), true, var_1, true))), any(!vec4<bool>(select(true, false, var_1), select(true, var_1, var_1), true, var_1)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-552f, -141f, 686f) * vec3<f32>(1049f, 1000f, -969f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, -910f, -818f))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(-1000f, arg_2.a, true));
    var var_1 = 332f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f));
    let var_2 = u_input.b;
    var_1 = arg_0.x;
    return ~_wgslsmith_mod_i32(~(-var_2.x), _wgslsmith_sub_i32(~u_input.a.x << (_wgslsmith_add_u32(arg_2.c, 51797u) % 32u), _wgslsmith_mod_i32(abs(1i), arg_1.d.x >> (arg_2.c % 32u))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-923f)) - -764f))) + _wgslsmith_f_op_f32(max(-1335f, _wgslsmith_f_op_f32(floor(-292f))))), Struct_2(false, all(vec4<bool>(true, true, true, true))), Struct_2(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), false), -vec3<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, -1i)), firstLeadingBit(-1i)), func_4(_wgslsmith_f_op_vec3_f32(func_3()), Struct_3(-166f, Struct_2(false, true), Struct_2(true, true), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.yx), Struct_1(894f, false, 62054u), Struct_4(1000f, 4294967295u, Struct_1(2070f, true, 0u)))), u_input.a.xy);
    let var_1 = vec2<bool>(var_0.c.b, true);
    let var_2 = vec4<u32>(_wgslsmith_div_u32(108927u, _wgslsmith_clamp_u32(abs(0u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(19666u, 4294967295u, 30685u, 0u)), vec4<u32>(1u, 0u, 1u, 4294967295u)), _wgslsmith_add_u32(max(68074u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(44098u, 17814u), vec2<u32>(0u, 4294967295u))))), 6890u, ~4294967295u, 0u);
    let var_3 = u_input.b.x;
    return Struct_3(var_0.a, var_0.c, Struct_2(all(!(!vec4<bool>(var_1.x, true, true, var_0.b.b))), var_0.b.b), (reverseBits(-vec3<i32>(1i, var_0.e.x, -30749i)) & var_0.d) & min(var_0.d, firstTrailingBit(vec3<i32>(-35234i, u_input.a.x, 2147483647i))), u_input.b.ww);
}

fn func_1() -> bool {
    var var_0 = func_2();
    var var_1 = firstLeadingBit(0i);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-731f + var_0.a), _wgslsmith_f_op_f32(-1000f + -523f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, var_0.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(sign(543f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(942f, -373f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-663f * var_0.a), var_0.a))))));
    let var_3 = !func_2().b.a;
    var_1 = -10835i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(i32(-1i) * -2147483647i);
    var var_1 = ~vec2<u32>(1u, 1u);
    var var_2 = vec4<bool>(func_1(), ((var_1.x ^ abs(var_1.x)) < ~var_1.x) || true, ~_wgslsmith_mult_u32(~22220u, var_1.x | var_1.x) == max(var_1.x, ~(~var_1.x)), select(true, any(vec3<bool>(true, true, true)), func_2().c.a) && ((_wgslsmith_f_op_vec3_f32(func_3()).x <= func_2().a) & true));
    let var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) * _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-378f, -2015f)) + _wgslsmith_f_op_f32(207f - -517f))), -2806f), var_1.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) * -184f), _wgslsmith_add_i32(0i, 1i) > (-var_0 >> (~var_1.x % 32u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_1.x), countOneBits(vec2<u32>(1u, 40651u))))));
    var var_4 = -var_0;
    let var_5 = Struct_4(-1122f, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b, 0u), ~vec2<u32>(var_1.x, 10885u)) | (~_wgslsmith_dot_vec2_u32(vec2<u32>(85101u, var_1.x), vec2<u32>(20394u, 0u)) | select(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_1.x), vec3<u32>(var_1.x, 29485u, 0u)), any(var_2.wy))), Struct_1(1330f, !(all(vec4<bool>(var_2.x, var_2.x, var_2.x, var_3.c.b)) && all(var_2.xzy)), _wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(var_3.b, var_1.x, var_3.b, var_3.c.c)), vec4<u32>(var_3.b, 4294967295u, var_3.c.c, var_3.c.c) >> (vec4<u32>(5751u, 0u, 62224u, 1u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(30154u, var_1.x, var_1.x, var_3.c.c)), abs(vec4<u32>(18916u, 28596u, var_3.b, var_3.b))))));
    var var_6 = var_2.yzy;
    let var_7 = ~(~min(1552i, -var_0)) & ~(-(~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-505f, -319f, 705f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_5.c.a, var_3.a, -482f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.c.a, var_5.c.a, 567f), vec3<f32>(var_3.a, 154f, var_3.a))), vec3<f32>(442f, var_5.a, var_5.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1109f, var_3.c.a, var_3.a)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(424f, var_3.c.a, var_5.c.a)))))), ~var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c.a))), _wgslsmith_f_op_f32(var_3.a - 1205f));
}

