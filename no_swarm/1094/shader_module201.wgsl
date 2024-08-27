struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1185f)), _wgslsmith_f_op_f32(-139f * 1307f), _wgslsmith_f_op_f32(ceil(801f)), _wgslsmith_f_op_f32(min(448f, 170f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-762f)), -2175f, -619f, _wgslsmith_f_op_f32(trunc(412f)))), countOneBits(_wgslsmith_mod_u32(~u_input.d, u_input.d)), true, _wgslsmith_f_op_f32(326f + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(322f - 656f))))), vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))), firstLeadingBit(countOneBits(vec4<i32>(-2147483647i, u_input.a, 25323i, u_input.a))) | _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -5926i | u_input.a, _wgslsmith_add_i32(u_input.b, -48334i), _wgslsmith_mod_i32(1i, u_input.b)), select(vec4<i32>(u_input.b, u_input.a, u_input.c, 2147483647i), ~vec4<i32>(u_input.a, u_input.c, u_input.a, -19504i), vec4<bool>(false, false, false, true))));
    var var_1 = var_0.a.b;
    var_1 = var_0.a.b;
    var var_2 = var_0.a.d;
    var_0 = Struct_2(var_0.a, var_0.b, ~vec4<i32>(-var_0.c.x, var_0.c.x, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, var_0.c.x), var_0.c.xz), var_0.c.x | 1i), ~_wgslsmith_sub_i32(0i, -2147483647i)));
    return var_0.a.d;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var_0 = arg_3.c.a.a.x;
    var_0 = -1656f;
    var var_1 = arg_3.c.c.zw;
    var var_2 = arg_3;
    return vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, ~min(u_input.e, 4294967295u)), ~(~(~vec3<u32>(var_2.e.a, var_2.c.a.b, 8534u)))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(28683u, arg_0.a), u_input.e) << (~8003u % 32u));
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = 18082u;
    var var_1 = ~firstTrailingBit(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, -61453i)) & (vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.c, u_input.b)), vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, -44013i)))));
    var var_2 = Struct_5(-35475i);
    var_1 = _wgslsmith_clamp_vec2_i32(~(~(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(19597i, -1i)) >> (func_2(arg_0, vec2<u32>(4294967295u, u_input.e), 2194f, Struct_4(vec2<bool>(true, false), true, Struct_2(Struct_1(vec4<f32>(1130f, 236f, 1057f, -595f), arg_0.a, true, -761f), vec3<bool>(false, false, false), vec4<i32>(u_input.a, u_input.a, 2147483647i, -10997i)), vec3<i32>(-8936i, u_input.b, var_2.a), arg_0)) % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~1i, -1i, select(u_input.b, var_2.a, true)), vec4<i32>(-2147483647i, u_input.a, var_2.a, var_1.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(51810u, var_0, 46386u, 36066u), vec4<u32>(arg_0.a, var_0, 23234u, u_input.d)) % vec4<u32>(32u))), u_input.c), select(_wgslsmith_div_vec2_i32(max(reverseBits(vec2<i32>(-21969i, var_2.a)), -vec2<i32>(var_2.a, var_2.a)), ~(-vec2<i32>(-4294i, var_1.x))), vec2<i32>(22231i, var_1.x), false));
    var_2 = Struct_5(5128i);
    return _wgslsmith_clamp_i32(u_input.a, countOneBits(-2147483647i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-57824i, _wgslsmith_mod_i32(func_1(Struct_3(5742u)), 29379i ^ u_input.a));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-161f, 1956f, 2103f, -1527f), vec4<f32>(872f, -1000f, -272f, 744f), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1146f, 124f, 1899f, -1079f)))))), u_input.e, any(vec3<bool>(1u > u_input.e, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-3168f, -780f), -351f)))), vec3<bool>(false, false, any(vec3<bool>(select(false, true, false), true, true))), firstTrailingBit(-_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, u_input.c, u_input.a, 3928i), vec4<i32>(-2147483647i, 16069i, 2147483647i, 53024i))));
    let var_2 = true & (_wgslsmith_f_op_f32(var_1.a.d + _wgslsmith_f_op_f32(-1559f - _wgslsmith_f_op_f32(f32(-1f) * -1405f))) <= var_1.a.d);
    var_0 = u_input.a;
    var_0 = var_1.c.x;
    var_0 = min(_wgslsmith_add_i32(u_input.b, u_input.c), var_1.c.x);
    var var_3 = Struct_4(!(!select(vec2<bool>(var_1.a.c, var_2), var_1.b.yy, vec2<bool>(true, false))), var_1.b.x, Struct_2(Struct_1(vec4<f32>(var_1.a.a.x, 604f, _wgslsmith_f_op_f32(-1000f - var_1.a.a.x), _wgslsmith_f_op_f32(var_1.a.a.x - 929f)), ~62474u, !any(vec4<bool>(var_2, var_1.a.c, var_2, true)), _wgslsmith_f_op_f32(step(-411f, _wgslsmith_f_op_f32(-var_1.a.a.x)))), vec3<bool>(any(select(var_1.b.yx, vec2<bool>(var_2, false), vec2<bool>(var_1.a.c, true))), ~u_input.d < (u_input.d & 25720u), var_2), max(-var_1.c, max(var_1.c, vec4<i32>(var_1.c.x, var_1.c.x, 2147483647i, u_input.a)) ^ countOneBits(vec4<i32>(-2147483647i, var_1.c.x, u_input.b, u_input.c)))), vec3<i32>(u_input.c, -u_input.b, u_input.c), Struct_3(13266u));
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, 403f, var_1.a.d, var_1.a.d) * vec4<f32>(var_3.c.a.d, -592f, -202f, var_3.c.a.d)) + _wgslsmith_f_op_vec4_f32(select(var_3.c.a.a, var_1.a.a, false)))))));
    var var_5 = -abs(~var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 533f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(740f)))))), _wgslsmith_f_op_vec3_f32(-var_3.c.a.a.ywz), ~((i32(-1i) * -72565i) ^ var_1.c.x));
}

