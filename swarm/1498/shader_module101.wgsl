struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = ~(~(~22881u)) << (countOneBits(~(~_wgslsmith_clamp_u32(75589u, u_input.c, u_input.c))) % 32u);
    let var_1 = Struct_2(all(vec2<bool>(true, true)), vec3<u32>(~4294967295u, var_0, 29652u), vec2<bool>(true, true));
    var var_2 = _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_clamp_i32(0i, ~(~_wgslsmith_clamp_i32(0i, -6596i, 11946i)), 21810i), -2147483647i);
    var_2 = u_input.b.x;
    var_2 = ~u_input.a.x;
    return false;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(true, select(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.c, 1u, 0u)), vec3<u32>(29252u, 4294967295u, 55408u)) >> (vec3<u32>(~0u, _wgslsmith_add_u32(18761u, u_input.c), 3246u) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 86064u), vec2<u32>(1u, 26646u)), 0u, 3369u), func_3() != (_wgslsmith_f_op_f32(ceil(-439f)) < 623f)), !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)))));
    var_0 = Struct_2(true, ~select(vec3<u32>(79u, var_0.b.x, 78371u), ~vec3<u32>(var_0.b.x, 59628u, 26994u), false) & var_0.b, select(vec2<bool>(!var_0.a, true), select(var_0.c, select(vec2<bool>(false, false), !var_0.c, var_0.c), !var_0.c), var_0.c));
    var_0 = Struct_2(false, var_0.b, !vec2<bool>(var_0.c.x, func_3()));
    let var_1 = var_0.c;
    var_0 = Struct_2(false, ~_wgslsmith_mod_vec3_u32(var_0.b, min(~var_0.b, _wgslsmith_mult_vec3_u32(var_0.b, vec3<u32>(4294967295u, var_0.b.x, 0u)))), !select(var_0.c, var_0.c, true & all(vec3<bool>(var_1.x, var_1.x, var_1.x))));
    return Struct_2(!func_3(), _wgslsmith_div_vec3_u32(var_0.b, min(vec3<u32>(_wgslsmith_add_u32(0u, 1u), 0u, firstLeadingBit(var_0.b.x)), var_0.b)), var_0.c);
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.c;
    var var_1 = func_2(abs(~vec4<i32>(u_input.b.x, 2147483647i ^ u_input.b.x, u_input.a.x, ~u_input.b.x)), u_input.b.x);
    var var_2 = func_2(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), u_input.b), firstTrailingBit(vec4<i32>(1i, 10555i, 2147483647i, 1i)) | (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 11005i, 0i, u_input.a.x), u_input.b) >> (max(vec4<u32>(35078u, u_input.c, var_1.b.x, 49628u), vec4<u32>(10422u, u_input.c, u_input.c, var_1.b.x)) % vec4<u32>(32u))), func_2(~(~u_input.b), -10309i).a), countOneBits(u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(step(1f, 1232f));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1263f) + _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return Struct_2(true, var_2.b, vec2<bool>(!(!var_1.c.x), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~1u ^ var_0.b.x;
    let var_2 = !(!vec4<bool>(var_0.a, false, true, true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(538f, 261f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)))) * 322f);
    let var_4 = 5394u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1327f)), _wgslsmith_div_u32(select(~(~var_1), max(u_input.c << (var_4 % 32u), var_0.b.x | 1u), true), (var_0.b.x >> (_wgslsmith_mod_u32(u_input.c, var_4) % 32u)) | 1u), vec3<i32>(1i, ~(-68214i), 24512i), _wgslsmith_f_op_f32(-938f - var_3));
}

