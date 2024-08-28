struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = vec4<u32>(22319u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(40756u, 1u), 0u), 4294967295u), 9692u, ~firstLeadingBit(max(4294967295u, 0u) >> (1u % 32u)));
    let var_1 = Struct_5(Struct_2(vec2<i32>(_wgslsmith_sub_i32(arg_0.x, 1i) >> ((var_0.x >> (var_0.x % 32u)) % 32u), _wgslsmith_add_i32(-arg_0.x, -2147483647i)), reverseBits(_wgslsmith_add_i32(-22252i, -1i)) != arg_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1222f), -2193f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1153f, 765f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1442f)) + _wgslsmith_f_op_f32(f32(-1f) * -501f)));
    let var_2 = 360f;
    let var_3 = var_0;
    let var_4 = ~25933i;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_2 - 892f)) * _wgslsmith_f_op_f32(round(-1141f))), var_2), var_1.a.c.x, 910f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(195f, _wgslsmith_f_op_f32(ceil(-1000f)), false | var_1.a.b))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: bool) -> vec2<i32> {
    return arg_1.xz;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = Struct_5(Struct_2(func_4(min(~vec3<u32>(1u, 1u, 4294967295u), firstTrailingBit(vec3<u32>(4294967295u, 0u, 1u))), vec4<i32>(1i, -31830i, u_input.b >> (63623u % 32u), firstLeadingBit(u_input.a)), Struct_4(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(1i, u_input.b, 19438i))), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), false), all(vec3<bool>(true, true, true))), !(!(u_input.a == u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1512f + 1064f), _wgslsmith_f_op_f32(574f * 299f)))), -813f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(828f))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1257f, 576f)), _wgslsmith_f_op_f32(-var_1.a.c.x)) - -394f)));
    var_1 = Struct_5(var_1.a, _wgslsmith_f_op_vec4_f32(func_3(-vec3<i32>(-27751i, ~u_input.b, var_1.a.a.x))).x);
    return Struct_2(var_1.a.a, !all(vec4<bool>(true, true, true, true)) & false, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1424f - -1000f) * var_1.b)), 1680f));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_5 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_1.b, 52805u, 1u, arg_1.b), vec4<u32>(arg_1.b, 4294967295u, arg_1.b, arg_1.b), vec4<bool>(true, true, arg_2.x, false)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(9038u, arg_1.b, 22921u, 28271u), vec4<u32>(arg_1.b, 0u, 55417u, 1u), vec4<u32>(arg_1.b, arg_1.b, 1u, arg_1.b)))), arg_1.b), false, -16470i, !arg_2);
    var var_1 = Struct_5(func_2(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(252f, _wgslsmith_f_op_f32(544f - 844f)) - arg_3.x));
    var_0 = Struct_1(countOneBits(-(~(arg_1.a & arg_0.b.yzy))), 37047u, arg_1.c, firstTrailingBit(u_input.b) << (((~var_0.b << (1u % 32u)) ^ (arg_1.b & 4294967295u)) % 32u), vec2<bool>(true, !(!(var_1.a.b & var_0.c))));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(min(abs(76017u), ~var_0.b), ~(arg_1.b | firstLeadingBit(var_0.b))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, 1u, 1u) << (vec4<u32>(31980u, arg_1.b, arg_1.b, 4294967295u) % vec4<u32>(32u)), vec4<u32>(0u, var_0.b, 4294967295u, 1u))));
    var var_3 = 3638f;
    return Struct_5(Struct_2(vec2<i32>(~(-2147483647i), _wgslsmith_mod_i32(1i, 2147483647i >> (1u % 32u))), all(var_0.e), vec2<f32>(_wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_div_f32(arg_3.x, 1098f)))), arg_3.x);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    var var_0 = arg_0.a.a;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.c, arg_0.a.c.x, true)))) * arg_0.a.c.x), vec4<i32>(-1i) * -arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1018f)));
}

fn func_6(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = arg_3.c;
    var var_1 = vec3<bool>(false, (-1i & select(_wgslsmith_mod_i32(arg_1.x, arg_3.b.x), 0i, true)) <= _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, 0i, -10542i), vec4<i32>(-937i, arg_0, u_input.a, u_input.a))), true);
    let var_2 = vec3<f32>(arg_3.c, _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(arg_3.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) - _wgslsmith_div_f32(1300f, -170f)))), -1760f);
    var_1 = arg_2;
    var_0 = arg_3.a;
    return StorageBuffer(max(arg_3.b, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(arg_3.b), select(arg_3.b, arg_3.b, vec4<bool>(var_1.x, false, false, arg_2.x))), countOneBits(arg_3.b))), min(select(arg_3.b << (vec4<u32>(41898u, 53306u, 4294967295u, 0u) % vec4<u32>(32u)), select(vec4<i32>(arg_0, arg_3.b.x, arg_0, arg_1.x), arg_3.b, vec4<bool>(var_1.x, var_1.x, true, true)), all(vec4<bool>(var_1.x, false, arg_2.x, false))), ~vec4<i32>(arg_1.x, arg_3.b.x, 0i, -19812i)) ^ func_5(func_1(func_5(Struct_5(Struct_2(arg_1, true, vec2<f32>(-1242f, var_2.x)), arg_3.a), Struct_4(vec4<f32>(arg_3.a, var_2.x, var_2.x, var_2.x), vec4<bool>(false, false, var_1.x, false), var_1.x), arg_3, false), Struct_1(arg_3.b.zwx, 4294967295u, arg_2.x, arg_3.b.x, vec2<bool>(arg_2.x, var_1.x)), vec2<bool>(arg_2.x, false), _wgslsmith_f_op_vec2_f32(var_2.xz * vec2<f32>(238f, 616f))), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-802f, -495f, -887f, 1265f)), vec4<bool>(false, arg_2.x, false, false), var_1.x), Struct_3(671f, vec4<i32>(-40567i, -4134i, u_input.b, 1598i), var_2.x), true).b, arg_3.b & vec4<i32>(u_input.b, -67817i, min(_wgslsmith_mult_i32(u_input.b, u_input.b), ~54319i), _wgslsmith_mod_i32(reverseBits(u_input.c), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(874f, _wgslsmith_f_op_f32(-var_2.x))) - -944f) * -1002f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(u_input.b, vec2<i32>(-2147483647i, 4022i << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7580u, 16377u), vec3<u32>(69417u, 21722u, 5173u)) % 32u)), !vec3<bool>(true, true, _wgslsmith_f_op_f32(min(820f, 834f)) >= _wgslsmith_f_op_f32(step(-1342f, 808f))), func_5(func_1(Struct_3(_wgslsmith_f_op_f32(step(-1216f, 1324f)), select(vec4<i32>(u_input.b, u_input.b, u_input.c, u_input.a), vec4<i32>(2147483647i, -10751i, u_input.c, u_input.c), vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(-1153f + 688f)), Struct_1(~vec3<i32>(-3711i, u_input.b, u_input.b), ~11394u, true, u_input.b & 46278i, select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(all(vec2<bool>(false, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(875f, 1581f)))), Struct_4(vec4<f32>(-1706f, 1120f, _wgslsmith_f_op_f32(569f - 1390f), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(u_input.c, u_input.c, u_input.b))).x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, true), all(vec3<bool>(false, true, true))), false), Struct_3(_wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(f32(-1f) * -393f)), _wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, u_input.b, -60466i, u_input.a), vec4<i32>(u_input.c, 1i, -60279i, u_input.a), true), ~vec4<i32>(37035i, u_input.c, u_input.c, 0i)), 1f), !((-2147483647i >> (0u % 32u)) != u_input.b)));
}

