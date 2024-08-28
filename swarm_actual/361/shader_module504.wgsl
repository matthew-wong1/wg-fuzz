struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = 0i;
    var var_1 = 21094u;
    var var_2 = Struct_4(Struct_2(arg_0.a.b, arg_0.a.b, ~u_input.c.x, true), Struct_3(Struct_2(Struct_1(~arg_0.a.b.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.b.x, arg_0.b) * arg_0.a.b.b), 0i, true, _wgslsmith_sub_vec3_i32(arg_0.a.a.e, arg_0.a.a.e)), arg_0.a.a, firstLeadingBit(_wgslsmith_clamp_u32(9051u, arg_0.a.a.a, u_input.a)), arg_0.c.x), arg_0.b, select(!(!arg_0.c), vec3<bool>(all(arg_0.c), true, arg_0.c.x), arg_0.c), arg_0.d), firstLeadingBit(-arg_0.a.b.c));
    var var_3 = Struct_4(Struct_2(Struct_1(~0u, vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.a.b.x)), var_2.b.d.x), ~(~arg_0.a.a.c), false & (arg_0.d.x <= -766f), _wgslsmith_add_vec3_i32(~var_2.a.b.e, vec3<i32>(35780i, var_2.b.a.a.e.x, u_input.b))), Struct_1(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.a.b.b, vec2<f32>(-103f, 1000f))) + _wgslsmith_f_op_vec2_f32(-arg_0.d.ww)), 28835i, !all(arg_0.c), ~arg_0.a.b.e & _wgslsmith_mult_vec3_i32(var_2.b.a.b.e, var_2.a.b.e)), reverseBits(select(4294967295u, ~57339u, arg_0.c.x)), true), Struct_3(Struct_2(Struct_1(u_input.a >> (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(-arg_0.a.a.b), -1i, var_2.b.a.b.d | true, select(var_2.a.b.e, vec3<i32>(-18261i, -2147483647i, -2147483647i), var_2.b.c.x)), var_2.a.a, ~(var_2.b.a.a.a & var_2.a.c), arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), arg_0.c, arg_0.d), _wgslsmith_dot_vec3_i32(var_2.b.a.a.e, vec3<i32>(~(-u_input.b), ~1i, _wgslsmith_mod_i32(0i, u_input.b) ^ _wgslsmith_dot_vec2_i32(var_2.b.a.a.e.yy, var_2.b.a.a.e.zx))));
    let var_4 = (~max(~var_3.a.b.a, 19086u) | ~firstLeadingBit(_wgslsmith_mod_u32(var_2.b.a.a.a, var_2.a.a.a))) <= abs(~(~firstTrailingBit(u_input.a)));
    return 0i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5) -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(arg_1.b.x, arg_0.b.b, ~(-1i), all(vec3<bool>(arg_0.d, true, arg_0.a.d)), firstTrailingBit(arg_0.b.e)), Struct_1(arg_0.b.a, vec2<f32>(arg_0.a.b.x, _wgslsmith_div_f32(arg_0.b.b.x, -917f)), _wgslsmith_mult_i32(func_3(Struct_3(Struct_2(Struct_1(arg_1.b.x, vec2<f32>(1000f, arg_0.a.b.x), -15542i, false, arg_0.a.e), Struct_1(14747u, arg_0.a.b, u_input.b, false, vec3<i32>(-16251i, u_input.b, -1i)), arg_1.b.x, arg_0.d), 682f, vec3<bool>(true, false, arg_0.a.d), vec4<f32>(arg_0.b.b.x, 967f, -1587f, -1430f))), u_input.b), true, -arg_0.a.e), _wgslsmith_div_u32(_wgslsmith_sub_u32(~arg_0.a.a, 17866u), ~(arg_0.c | u_input.c.x)), any(select(vec3<bool>(arg_0.a.d, arg_0.d, true), select(vec3<bool>(false, arg_0.d, true), vec3<bool>(arg_0.a.d, arg_0.a.d, true), vec3<bool>(false, false, false)), true))), arg_0.a.b.x, select(vec3<bool>(false, arg_0.b.b.x < _wgslsmith_f_op_f32(f32(-1f) * -1252f), all(!vec2<bool>(arg_0.a.d, false))), vec3<bool>(true, arg_0.a.d, any(vec4<bool>(arg_0.a.d, true, arg_0.a.d, true))), arg_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.b.x, arg_0.a.b.x, arg_0.a.b.x, 287f))))));
    let var_1 = arg_1.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b));
    var var_3 = var_0.a.b.e;
    var_0 = Struct_3(Struct_2(var_0.a.b, Struct_1(~var_1 ^ u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-786f, 484f), arg_0.a.b, true)) * vec2<f32>(var_0.b, arg_0.b.b.x)), min(var_0.a.a.e.x, _wgslsmith_mod_i32(arg_1.a, u_input.b)), true, vec3<i32>(u_input.b, abs(var_0.a.a.e.x), _wgslsmith_mult_i32(-2147483647i, 0i))), firstLeadingBit(~firstLeadingBit(103564u)), false), -537f, select(vec3<bool>(false, var_0.c.x, !(!var_0.c.x)), select(vec3<bool>(var_0.c.x, all(var_0.c.zy), any(vec2<bool>(false, arg_0.a.d))), vec3<bool>(var_0.c.x, select(false, true, arg_0.d), !arg_0.b.d), vec3<bool>(all(vec3<bool>(arg_0.b.d, var_0.c.x, false)), arg_0.a.d, var_0.a.a.d)), var_0.a.d), vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(182f + var_0.a.a.b.x) * 1393f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f * arg_0.b.b.x)) + -2239f), var_0.d.x, -570f));
    return var_0.a.d;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = !vec3<bool>(true, select(any(vec4<bool>(true, false, true, false)) | true, all(vec2<bool>(false, false)), select(all(vec2<bool>(true, false)), all(vec2<bool>(false, false)), func_2(Struct_2(Struct_1(4294967295u, vec2<f32>(-1499f, -207f), u_input.b, false, vec3<i32>(arg_0, arg_0, arg_0)), Struct_1(u_input.a, vec2<f32>(1214f, 741f), 12945i, false, vec3<i32>(arg_0, u_input.b, arg_0)), 0u, true), Struct_5(u_input.b, vec2<u32>(31075u, u_input.a))))), !(abs(u_input.c.x) <= u_input.a));
    let var_1 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(0i, 0i), arg_0), ~(~min(-vec2<i32>(u_input.b, arg_0), min(vec2<i32>(arg_0, u_input.b), vec2<i32>(-46376i, u_input.b)))), vec2<i32>(abs(1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, arg_0, 19723i), vec3<i32>(-2147483647i, u_input.b, arg_0) ^ vec3<i32>(arg_0, u_input.b, 1i))) << (u_input.c % vec2<u32>(32u)));
    var var_2 = Struct_3(Struct_2(Struct_1(38029u, vec2<f32>(-118f, _wgslsmith_div_f32(1228f, 1084f)), -2147483647i, var_0.x, -vec3<i32>(u_input.b, arg_0, 0i) & vec3<i32>(var_1.x, -32849i, -2147483647i)), Struct_1(114380u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -1000f))), -45693i, any(select(var_0.xx, var_0.xz, vec2<bool>(var_0.x, var_0.x))), select(vec3<i32>(17938i, arg_0, 55240i), vec3<i32>(u_input.b, arg_0, 25117i), true)), ~1u, true), 1000f, select(vec3<bool>(all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), var_0)), var_0.x, true), !select(!var_0, vec3<bool>(var_0.x, var_0.x, var_0.x), var_0), !((u_input.a < u_input.a) == true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1237f, 646f, 276f, -445f))))));
    let var_3 = var_2.a;
    let var_4 = max(-(~(select(vec4<i32>(u_input.b, var_2.a.a.c, 44478i, var_3.b.c), vec4<i32>(-70773i, var_3.a.c, 15170i, -19548i), vec4<bool>(true, var_2.c.x, false, var_0.x)) & -vec4<i32>(-32082i, -2881i, -204i, 10396i))), _wgslsmith_mult_vec4_i32(min(abs(vec4<i32>(var_3.b.e.x, 23072i, 33742i, -1i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, var_3.b.a, 1u), vec4<u32>(var_3.b.a, 0u, var_3.c, 20235u)) % vec4<u32>(32u)), -(vec4<i32>(var_2.a.b.e.x, var_3.b.c, var_3.a.c, u_input.b) | vec4<i32>(2951i, u_input.b, 1i, var_2.a.b.c))), vec4<i32>(var_1.x, -2147483647i, var_3.a.e.x, min(u_input.b, 1i) | u_input.b)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)));
    var var_1 = vec2<bool>(select(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), true, true), true);
    var_1 = !vec2<bool>(all(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x))), true);
    var_1 = vec2<bool>(all(select(select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<bool>(var_1.x, func_1(u_input.b), select(true, true, true)), false || select(true, var_1.x, var_1.x))), func_1(u_input.b));
    let var_2 = u_input.b > _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -u_input.b, u_input.b), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(30413i, u_input.b, 1i), vec3<i32>(u_input.b, -75070i, u_input.b)), vec3<i32>(2147483647i, 14688i, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, -2147483647i), select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, true, false)))), (~33904i >> (~u_input.c.x % 32u)) ^ abs(u_input.b));
    var_1 = vec2<bool>(!var_2, !func_1(~_wgslsmith_mod_i32(u_input.b, u_input.b)));
    var_1 = select(!vec2<bool>(var_2, all(vec2<bool>(var_1.x, var_1.x))), !select(select(vec2<bool>(true, true), !vec2<bool>(var_2, false), true), !vec2<bool>(var_1.x, false), true), !(true | (reverseBits(u_input.a) <= abs(31683u))));
    let var_3 = Struct_2(Struct_1(~(~u_input.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-351f, _wgslsmith_div_f32(var_0, 132f))), -(i32(-1i) * -1i) >> (u_input.a % 32u), true, vec3<i32>(max(2147483647i, -1i), ~(~u_input.b), 15377i)), Struct_1(~(~u_input.a) << (4294967295u % 32u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0, -1582f), _wgslsmith_f_op_f32(sign(-1333f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2178f, -1170f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, 1504f))), true))), 1i, 38324u < u_input.c.x, _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, 7433i, 1i), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1613i, -1i, u_input.b)), countOneBits(vec3<i32>(u_input.b, -2147483647i, -33575i))))), abs(countOneBits(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(u_input.c.x, u_input.a)))), false);
    var var_4 = abs(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.b.c, 1i, select(-3215i, u_input.b, (var_0 >= -1319f) && any(vec4<bool>(var_3.a.d, true, true, true))), ~_wgslsmith_div_i32(-2147483647i, -26018i) & u_input.b), _wgslsmith_f_op_f32(var_3.b.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1899f)))), vec3<f32>(1697f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-1205f - var_3.a.b.x)), _wgslsmith_f_op_f32(1108f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)))));
}

