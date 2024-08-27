struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(min(u_input.b, ~u_input.d.x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), true)), !vec4<bool>(any(vec2<bool>(false, true)), 2147483647i > u_input.a, true, true), !vec4<bool>(any(vec4<bool>(true, true, false, false)), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true)), true)), _wgslsmith_f_op_f32(673f - _wgslsmith_f_op_f32(1110f - 696f)));
    let var_1 = Struct_4(1i, Struct_3(reverseBits(vec2<i32>(_wgslsmith_mod_i32(-22037i, u_input.a), countOneBits(u_input.a))), _wgslsmith_mult_vec2_u32(u_input.e, ~vec2<u32>(var_0.a, 1u) & vec2<u32>(16542u, 67656u)), Struct_2(0u, vec4<bool>(true, all(vec4<bool>(true, var_0.b.x, var_0.b.x, true)), true, true), _wgslsmith_f_op_f32(floor(-1320f))), Struct_2(min(~u_input.e.x, select(42113u, u_input.c.x, var_0.b.x)), vec4<bool>(select(var_0.b.x, true, var_0.b.x), any(var_0.b.yzx), all(vec4<bool>(true, var_0.b.x, true, true)), false), var_0.c)), countOneBits(~vec3<u32>(u_input.d.x, ~var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1646f, 1000f, 1000f)))) * vec3<f32>(388f, _wgslsmith_div_f32(-790f, var_0.c), _wgslsmith_f_op_f32(var_0.c - -279f)))), var_0.b.x);
    var_0 = Struct_2(59062u, vec4<bool>(any(var_1.b.d.b), any(vec4<bool>(!var_0.b.x, true, var_1.b.c.b.x, true)), !all(vec3<bool>(true, true, true)), !(!(!var_1.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1678f + 488f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(min(var_1.b.d.c, 450f))))));
    var var_2 = var_1.b;
    let var_3 = 50752i;
    return _wgslsmith_f_op_f32(trunc(201f));
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)) & true, _wgslsmith_f_op_f32(func_3()) <= _wgslsmith_f_op_f32(select(-843f, _wgslsmith_f_op_f32(-230f - -1865f), !(u_input.b <= 33408u))), true);
    var var_1 = Struct_3(-(select(vec2<i32>(u_input.a, 13419i) >> (vec2<u32>(74233u, u_input.d.x) % vec2<u32>(32u)), countOneBits(vec2<i32>(u_input.a, u_input.a)), var_0.x || var_0.x) ^ ~min(vec2<i32>(-77044i, 1i), vec2<i32>(u_input.a, u_input.a))), u_input.d, Struct_2(reverseBits(~u_input.e.x), !vec4<bool>(any(vec4<bool>(false, true, var_0.x, false)), var_0.x, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-547f * _wgslsmith_f_op_f32(f32(-1f) * -134f)))), Struct_2(u_input.d.x, select(vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x, any(vec4<bool>(false, false, var_0.x, true))), vec4<bool>(true, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1894f) + 1f))));
    var var_2 = var_1.c;
    return var_1.d;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_5(func_2(), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a | arg_1, 2147483647i, 1i), firstLeadingBit(vec3<i32>(arg_1, arg_1, u_input.a))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(arg_1, arg_1, 49661i)), firstLeadingBit(vec3<i32>(arg_1, 1i, arg_1)), select(vec3<i32>(u_input.a, -16904i, 1i), vec3<i32>(arg_1, 61601i, arg_1), vec3<bool>(false, true, true))))), Struct_3(-((vec2<i32>(0i, 2147483647i) & vec2<i32>(u_input.a, u_input.a)) << (u_input.c.yy % vec2<u32>(32u))), ~min(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e) >> (select(~vec2<u32>(4294967295u, 1u), u_input.c.wz, vec2<bool>(true, true)) % vec2<u32>(32u)), func_2(), Struct_2(~(~0u), func_2().b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_div_f32(503f, -180f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)) - _wgslsmith_f_op_f32(f32(-1f) * -996f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(-1405f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = Struct_1(select(~u_input.c, u_input.c, false) | (u_input.c << ((u_input.c & firstTrailingBit(vec4<u32>(44424u, 1u, u_input.d.x, 0u))) % vec4<u32>(32u))), false, _wgslsmith_f_op_f32(func_2().c + 503f), !var_0.a.b.x);
    global0 = array<vec4<f32>, 13>();
    var var_2 = Struct_5(Struct_2(1u, var_0.c.c.b, _wgslsmith_f_op_f32(1192f + _wgslsmith_f_op_f32(func_3()))), -firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.a.x, 1i, -2147483647i), var_0.b)) << (vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, u_input.c.x), ~54281u, 50611u), var_1.a.x, max(u_input.c.x, ~arg_0)) % vec3<u32>(32u)), var_0.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c - -1536f), _wgslsmith_f_op_f32(floor(-1915f))))), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, 1f) + _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-222f))))));
    var_2 = var_0;
    return var_2.a;
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = Struct_4(abs(u_input.a), Struct_3(max(select(vec2<i32>(-1i, 1i) ^ vec2<i32>(0i, u_input.a), vec2<i32>(-2147483647i, u_input.a), arg_0.b.zx), -vec2<i32>(u_input.a, -4688i)), _wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(arg_0.a, u_input.d.x)), arg_0, arg_0), u_input.c.yxy, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(round(arg_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1775f)), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c))), arg_0.c))), !any(arg_0.b.wwz));
    global0 = array<vec4<f32>, 13>();
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.d.a, u_input.c.x, reverseBits(_wgslsmith_dot_vec2_u32(var_0.c.yx, vec2<u32>(u_input.b, arg_0.a))), ~(~arg_0.a)), _wgslsmith_mult_vec4_u32(~(~u_input.c), ~vec4<u32>(0u, arg_0.a, 0u, u_input.e.x))), any(!arg_0.b), -805f, !var_0.e);
    global0 = array<vec4<f32>, 13>();
    return arg_0.c <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f + _wgslsmith_f_op_f32(sign(237f))) * _wgslsmith_f_op_f32(func_3())), -384f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<vec4<f32>, 13>();
    var var_1 = !(!vec4<bool>(var_0, var_0, func_4(func_1(u_input.b, u_input.a)), true));
    var var_2 = -((vec2<i32>(-1i) * -(~vec2<i32>(u_input.a, -60861i))) ^ -((vec2<i32>(2147483647i, 45526i) >> (u_input.d % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(u_input.c.wx, u_input.e) % vec2<u32>(32u))));
    var_2 = countOneBits(vec2<i32>(-34469i, _wgslsmith_sub_i32(u_input.a | var_2.x, ~u_input.a)) & vec2<i32>(-var_2.x, abs(var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(u_input.e.x), 5485u), ~(~28506u)), ~u_input.b), vec3<u32>(~4294967295u, u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), ~(~u_input.d))));
}

