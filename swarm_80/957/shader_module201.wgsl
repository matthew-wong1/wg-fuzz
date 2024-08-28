struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(arg_0.a.b, arg_0.a.b, arg_0.a.c, select(arg_0.a.d, select(vec3<bool>(true, arg_0.a.d.x, arg_0.a.d.x), select(vec3<bool>(false, arg_0.a.d.x, arg_0.a.d.x), arg_0.a.d, arg_0.a.d.x), vec3<bool>(arg_0.a.d.x, false, true)), !(!arg_0.a.d))));
    let var_1 = var_0.a.d;
    var var_2 = -u_input.b;
    var var_3 = var_0.a;
    let var_4 = arg_0.a.c;
    return vec3<bool>(true, var_1.x, !(_wgslsmith_f_op_f32(trunc(337f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) - _wgslsmith_f_op_f32(f32(-1f) * -1523f))));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(-176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -492f) - _wgslsmith_f_op_f32(ceil(-2009f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), 1000f, select(true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-155f)), arg_0, 783f, arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(604f, arg_0, 129f, 481f))), func_3(Struct_2(Struct_1(arg_0, arg_0, vec4<f32>(-1000f, arg_0, 1013f, arg_0), vec3<bool>(true, true, true))), abs(vec4<u32>(81942u, u_input.a, u_input.a, 78597u) << (u_input.c % vec4<u32>(32u))))));
    let var_1 = abs((vec4<i32>(_wgslsmith_add_i32(2158i, 0i), -12124i, 2147483647i, firstLeadingBit(1i)) | ~(vec4<i32>(-42814i, 2147483647i, 81085i, u_input.d) ^ vec4<i32>(u_input.d, u_input.d, u_input.b.x, u_input.d))) >> (~(~vec4<u32>(32731u, u_input.c.x, 4294967295u, u_input.a)) % vec4<u32>(32u)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 439f)), _wgslsmith_f_op_f32(select(-295f, _wgslsmith_div_f32(935f, -432f), true)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), arg_0, -687f, -1651f), select(func_3(Struct_2(Struct_1(var_0.a.c.x, var_0.a.c.x, var_0.a.c, vec3<bool>(var_0.a.d.x, true, false))), firstTrailingBit(u_input.c)), var_0.a.d, vec3<bool>(all(var_0.a.d), any(vec4<bool>(var_0.a.d.x, false, true, var_0.a.d.x)), arg_0 < var_0.a.a))));
    let var_2 = select(u_input.d, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.zxz, -var_1.wzz), ~_wgslsmith_mult_vec3_i32(var_1.wxy, var_1.wzx)), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(4709i, 8337i, var_1.x), vec3<i32>(u_input.b.x, u_input.b.x, -51508i)), _wgslsmith_mult_i32(0i, u_input.b.x)))), var_0.a.d.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(var_0.a.c * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.c + var_0.a.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-792f - 187f), _wgslsmith_f_op_f32(var_0.a.c.x + 632f), 678f)))));
    return Struct_4(var_0.a, Struct_2(var_0.a), vec3<bool>(select(var_0.a.d.x, func_3(Struct_2(var_0.a), vec4<u32>(4294967295u, 0u, 0u, 4294967295u) << (u_input.c % vec4<u32>(32u))).x, false), all(!select(vec4<bool>(false, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), vec4<bool>(var_0.a.d.x, false, true, var_0.a.d.x), var_0.a.d.x)), true));
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-309f)), _wgslsmith_f_op_f32(-750f - -2131f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1126f, 2275f)))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = vec4<bool>(!arg_3.c.x, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, 0u > u_input.a, true), select(vec4<bool>(true, true, arg_3.a.d.x, true), vec4<bool>(arg_2.c.x, arg_1, arg_3.b.a.d.x, arg_3.c.x), arg_3.a.d.x || arg_2.c.x))), arg_1, any(vec4<bool>(_wgslsmith_mod_u32(0u, arg_0) > _wgslsmith_add_u32(u_input.c.x, 5628u), u_input.b.x == (u_input.b.x & u_input.b.x), !any(arg_2.c.yz), !arg_3.c.x)));
    let var_2 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_f32(-arg_2.a.a);
    let var_4 = arg_2.b;
    return Struct_1(1131f, -1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a.c.x, 1091f, arg_2.b.a.a, var_4.a.b) * arg_2.a.c))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.a.a, -1082f, _wgslsmith_f_op_f32(-arg_2.a.a), arg_2.b.a.a)))), !(!(!func_2(219f).a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(2918u, !select(true, true, true), func_1(vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, true)), Struct_4(Struct_1(864f, _wgslsmith_f_op_f32(abs(-1189f)), vec4<f32>(1411f, -548f, -1287f, 604f), vec3<bool>(true, true, true)), func_1(vec4<bool>(true, true, true, true)).b, vec3<bool>(true, true, func_1(vec4<bool>(false, false, false, true)).a.d.x))), true);
    var var_1 = vec3<bool>(true, false, var_0.a.d.x);
    let var_2 = _wgslsmith_sub_i32(~firstTrailingBit(u_input.b.x << (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.a) % 32u)), firstTrailingBit(-18630i));
    var var_3 = Struct_1(1000f, 536f, _wgslsmith_f_op_vec4_f32(-var_0.a.c), func_4(~u_input.a, false, Struct_4(Struct_1(_wgslsmith_f_op_f32(2206f * -922f), _wgslsmith_div_f32(-1000f, var_0.a.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1215f, var_0.a.a, -1000f, var_0.a.b)), func_2(295f).b.a.d), Struct_2(func_2(1027f).b.a), var_0.a.d), Struct_4(func_4(~7777u, true, func_2(var_0.a.b), func_1(vec4<bool>(true, false, var_1.x, false))), func_2(_wgslsmith_f_op_f32(var_0.a.a - var_0.a.b)).b, !var_0.a.d)).d);
    var_1 = vec3<bool>(true, true, all(vec2<bool>(var_1.x, func_4(u_input.a, true, Struct_4(Struct_1(667f, var_3.a, var_3.c, vec3<bool>(true, var_1.x, true)), Struct_2(var_0.a), vec3<bool>(false, true, var_1.x)), func_1(vec4<bool>(false, var_3.d.x, var_1.x, var_3.d.x))).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.c.x, 58157u));
}

