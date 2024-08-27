struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_3,
    d: vec3<u32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1092f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> i32 {
    return 1i;
}

fn func_3() -> i32 {
    var var_0 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(min(u_input.c.x, 17043i), 2147483647i), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.d, u_input.a.x), vec2<i32>(u_input.a.x, u_input.e.x))), _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, u_input.c.x) ^ u_input.c.xy, -vec2<i32>(u_input.d, -3638i))), select(vec2<i32>(reverseBits(-31905i >> (1u % 32u)), i32(-1i) * -2147483647i), -u_input.c.zy, !vec2<bool>(select(false, false, true), false)));
    var var_1 = true;
    var_1 = true;
    var_1 = (-49371i <= _wgslsmith_div_i32(u_input.c.x, -2347i)) != true;
    var var_2 = Struct_2(606f, vec4<u32>(0u, 51150u, countOneBits(u_input.b.x) | 41358u, (u_input.b.x << (1u % 32u)) >> (_wgslsmith_add_u32(~u_input.b.x, 10380u) % 32u)), u_input.b.x, Struct_1(max(_wgslsmith_clamp_vec2_i32(-u_input.e.zx, vec2<i32>(-22764i, 2147483647i) | vec2<i32>(var_0.x, u_input.d), _wgslsmith_mult_vec2_i32(u_input.e.yz, vec2<i32>(u_input.c.x, u_input.e.x))), ~(-vec2<i32>(u_input.e.x, u_input.d))), ~abs(4294967295u | u_input.b.x)), ~_wgslsmith_mod_u32(2477u, 1u));
    return _wgslsmith_dot_vec3_i32(min(firstLeadingBit(select(vec3<i32>(u_input.e.x, var_0.x, 25700i), vec3<i32>(32384i, 8147i, var_2.d.a.x), false) << (_wgslsmith_mod_vec3_u32(var_2.b.xxy, vec3<u32>(35607u, 1u, var_2.c)) % vec3<u32>(32u))), select(firstTrailingBit(-vec3<i32>(u_input.e.x, -15462i, -1i)), reverseBits(-u_input.c), vec3<bool>(true, true, true))), u_input.c);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(vec3<i32>(func_3(), ~select(-u_input.a.x, ~0i, false), 54591i), select(vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false)) | (u_input.d != u_input.d)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, true, false), u_input.c.x == u_input.e.x, all(vec4<bool>(true, true, false, true)), true), true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)))), Struct_3(true, ~u_input.a.x), min(reverseBits(~vec3<u32>(0u, 1653u, 34005u)), u_input.b), false);
    let var_1 = all(!select(select(vec3<bool>(var_0.c.a, var_0.e, var_0.b.x), var_0.b.yzy, false), select(vec3<bool>(false, true, true), select(vec3<bool>(var_0.e, false, false), var_0.b.www, var_0.c.a), true), true));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1752f) + _wgslsmith_f_op_f32(f32(-1f) * -1348f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1396f, _wgslsmith_f_op_f32(438f * -613f))))));
    global0 = -1646f;
    var var_2 = var_0;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<i32>(28915i, ~_wgslsmith_div_i32(1i, _wgslsmith_mult_i32(-18775i, 12101i)), -(~func_1(571f, true, Struct_1(u_input.c.zy, u_input.b.x)))), !vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true | (0i > u_input.a.x), false), func_2(), ~(~u_input.b & u_input.b), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false))));
    let var_1 = abs(vec3<u32>(abs(u_input.b.x), u_input.b.x, 4294967295u));
    var var_2 = true;
    var_0 = Struct_4(u_input.c, var_0.b, func_2(), firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(ceil(-123f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f) + -1237f)));
    let var_3 = Struct_2(-536f, vec4<u32>(~(~_wgslsmith_div_u32(var_0.d.x, u_input.b.x)), _wgslsmith_clamp_u32(1060u, ~13939u, ~max(var_1.x, 1u)), var_0.d.x, var_0.d.x >> (var_0.d.x % 32u)), 31402u, Struct_1(var_0.a.xz, _wgslsmith_sub_u32(~abs(30877u), var_0.d.x)), 0u);
    let var_4 = !any(select(select(var_0.b, select(var_0.b, vec4<bool>(var_0.e, false, var_0.e, false), var_0.b.x), true), !(!vec4<bool>(true, var_0.e, true, var_0.b.x)), !all(var_0.b.yw)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a))), var_3.a)));
    let var_5 = _wgslsmith_f_op_f32(ceil(var_3.a));
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_f32(max(-386f, var_5)), firstLeadingBit(~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, 69539i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a), -805f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_5)), _wgslsmith_f_op_f32(var_3.a + var_3.a)))) - _wgslsmith_f_op_f32(select(var_3.a, _wgslsmith_f_op_f32(-946f - _wgslsmith_div_f32(-839f, var_5)), all(select(var_0.b, vec4<bool>(var_0.e, var_0.e, false, var_4), var_4))))));
}

