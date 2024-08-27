struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = vec2<u32>(u_input.d, u_input.d);
    var var_1 = arg_0.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2109f)), _wgslsmith_f_op_f32(sign(-1506f))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(701f - 1000f))), ~((u_input.a & u_input.b.x) << ((80465u >> (arg_0.x % 32u)) % 32u)), -10293i >= u_input.a, abs(_wgslsmith_sub_u32(4294967295u, ~var_0.x))), ~0u, Struct_1(!(!all(vec4<bool>(true, true, false, false))), 62870i, true, arg_0.x));
    return vec3<bool>(var_2.a.c, false, var_2.c.a);
}

fn func_3(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-339f - 409f)))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1804f, -501f)));
    var_1 = _wgslsmith_f_op_f32(var_0 + var_0);
    var_1 = var_0;
    let var_2 = Struct_3(Struct_2(Struct_1(true, abs(_wgslsmith_div_i32(u_input.a, 1i)), select(select(true, true, arg_0), true, arg_0), u_input.d & 97871u), ~_wgslsmith_clamp_u32(u_input.d, u_input.e.x, 1u) >> (~u_input.e.x % 32u), Struct_1(arg_0, _wgslsmith_add_i32(~u_input.b.x, abs(u_input.b.x)), 1u != _wgslsmith_mod_u32(u_input.e.x, u_input.d), u_input.e.x)), u_input.a);
    return var_2.a.c;
}

fn func_1() -> Struct_3 {
    let var_0 = ~vec4<u32>(0u, _wgslsmith_sub_u32(0u & u_input.e.x, 0u) | _wgslsmith_add_u32(43844u >> (0u % 32u), abs(u_input.e.x)), 0u, u_input.e.x);
    var var_1 = Struct_2(func_3(any(!func_2(vec3<u32>(u_input.e.x, var_0.x, var_0.x)))), func_3(any(vec2<bool>(true, true))).d, Struct_1(!(true != (-2147483647i >= u_input.a)), _wgslsmith_dot_vec3_i32(u_input.b, ~_wgslsmith_div_vec3_i32(vec3<i32>(-25889i, -11799i, -40790i), vec3<i32>(2711i, -2147483647i, u_input.a))), true && (select(true, false, true) & false), ~firstLeadingBit(~67107u)));
    let var_2 = Struct_3(Struct_2(Struct_1(true & var_1.a.a, ~_wgslsmith_sub_i32(-1i, 41964i), false, var_1.b), ~1u, Struct_1(func_3(var_1.a.c).c, -u_input.a, var_1.c.a & true, var_1.b)), firstLeadingBit(func_3(u_input.b.x > select(u_input.a, var_1.c.b, true)).b));
    var var_3 = vec3<bool>(var_1.a.c | var_2.a.a.c, true, var_2.a.a.a);
    var_3 = !select(vec3<bool>(true, 46723u > u_input.c, true), vec3<bool>(any(select(var_3.yy, vec2<bool>(var_2.a.a.c, false), var_3.xz)), all(!vec3<bool>(var_1.a.c, true, true)), !func_3(var_3.x).a), true);
    return Struct_3(Struct_2(func_3(var_2.a.c.a), 51040u, var_1.c), var_2.a.c.b | func_3(!var_2.a.a.a == var_1.c.a).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a >> (u_input.c % 32u);
    var var_1 = u_input.b.zz;
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1462f, -299f), vec2<f32>(783f, -349f))) * vec2<f32>(1f, 1f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1690f, 587f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1316f, 1543f))))));
    var var_4 = ~select(vec2<i32>(-1i, -21694i), vec2<i32>(-25352i, _wgslsmith_add_i32(8365i, ~(-1i))), var_2.a.c.a);
    var var_5 = func_3(func_3(_wgslsmith_f_op_f32(round(1000f)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1897f - var_3.x)))).a);
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_3.x) + var_3.x), _wgslsmith_f_op_f32(floor(var_3.x)))) - vec2<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -523f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.x, var_3.x, var_6.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(532f, var_6.x, 1974f) - vec3<f32>(-647f, -745f, 1006f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(227f, 940f, -311f) - vec3<f32>(-158f, 877f, -949f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_6.x, var_3.x, 1359f), vec3<f32>(var_3.x, var_6.x, var_6.x), var_2.a.c.a)))))), vec4<u32>(~36463u, var_5.d, ~37320u, _wgslsmith_mult_u32(28990u, 5753u) & (countOneBits(var_5.d) | _wgslsmith_div_u32(45709u, 18120u))), var_2.b);
}

