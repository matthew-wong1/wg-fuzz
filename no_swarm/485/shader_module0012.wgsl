struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(!(!vec3<bool>(true, true, all(vec2<bool>(true, false)))), Struct_1(!vec2<bool>(true, u_input.a <= u_input.a), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), ~vec4<u32>(16168u, max(1u, 0u), ~0u, 0u), 73389u), Struct_1(vec2<bool>(true, true), select(vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, false), true), ~_wgslsmith_add_vec4_u32(~vec4<u32>(23187u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_u32(abs(1u), ~1u)), 6554u);
    let var_1 = var_0.b.b;
    var var_2 = var_1.x;
    var var_3 = var_0;
    var_2 = var_1.x;
    return Struct_3(vec4<i32>(-68581i, -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -2147483647i, -14946i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-29907i, -4354i, 15385i))), _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, 1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)))) >> (var_3.b.c % vec4<u32>(32u)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = min(-32326i, -abs(u_input.a)) ^ u_input.a;
    var var_1 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !vec2<bool>(true, -1i < var_0), true), vec3<bool>(true, true, true), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 8767u), vec4<u32>(1u, 2531u, 52710u, 35473u), vec4<u32>(4294967295u, 20971u, 0u, 0u)), vec4<u32>(1u, 0u, 0u, 13891u))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 4769u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), 1u);
    var_1 = Struct_1(var_1.a, !vec3<bool>(!(var_1.a.x & var_1.b.x), !(!var_1.b.x), any(select(var_1.b.xz, var_1.b.xz, true))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d, 4294967295u, ~var_1.c.x, var_1.d << (var_1.d % 32u)) & ~vec4<u32>(var_1.c.x, var_1.d, 0u, var_1.d), abs(var_1.c)), ~(_wgslsmith_mod_u32(~38650u, ~var_1.d) ^ _wgslsmith_add_u32(~var_1.d, var_1.c.x)));
    let var_2 = Struct_2(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), countOneBits(12985u), Struct_1(var_1.a, select(!select(var_1.b, vec3<bool>(var_1.b.x, true, false), var_1.b.x), vec3<bool>(!var_1.a.x, !var_1.a.x, false), select(select(vec3<bool>(var_1.b.x, true, true), vec3<bool>(var_1.a.x, var_1.b.x, var_1.a.x), var_1.b), !vec3<bool>(false, false, var_1.a.x), vec3<bool>(true, true, true))), var_1.c, firstLeadingBit(4294967295u)), func_2().a.yz, _wgslsmith_dot_vec4_u32(vec4<u32>(59949u, 1u, min(var_1.d, var_1.c.x) >> (max(var_1.c.x, 8171u) % 32u), var_1.d), countOneBits(var_1.c)));
    let var_3 = var_2.c.a.x;
    return arg_0.x;
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> f32 {
    let var_0 = vec4<bool>(!all(arg_1.a.c.b), arg_1.a.c.b.x, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1.a.d), vec2<i32>(0i, -1i) >> (arg_1.a.c.c.xx % vec2<u32>(32u))) >= -(~_wgslsmith_add_i32(18935i, -27094i)), all(arg_1.a.c.b));
    let var_1 = arg_1.a.c.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, -645f, -902f, -237f) - vec4<f32>(922f, 895f, 240f, 1892f))))));
    let var_3 = func_2();
    let var_4 = ~(-_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, 2147483647i), var_3.a.zyz), var_3.a.xyz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(step(-1756f, _wgslsmith_f_op_f32(f32(-1f) * -1189f))), var_2.x, -1000f, 375f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(-1135f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), false), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, false))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(31954u, 4294967295u, 0u, arg_1) | vec4<u32>(40758u, 4294967295u, 0u, arg_1), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_1, arg_1, 42098u), vec4<u32>(arg_1, arg_1, arg_1, arg_1))) ^ vec4<u32>(arg_1, 0u, _wgslsmith_div_u32(arg_1, arg_1), ~arg_1)), 1u);
    var var_1 = countOneBits(_wgslsmith_mod_u32(~(~abs(3783u)), ~firstLeadingBit(4294967295u)));
    var_1 = 26583u;
    var_1 = ~(~arg_1);
    var_1 = 4294967295u;
    return var_0;
}

fn func_5(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = 55u;
    var var_1 = abs(241i);
    var var_2 = ~vec4<u32>(25387u, _wgslsmith_div_u32(~arg_0.b, arg_0.e), 1u, arg_0.e);
    var var_3 = select(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(func_4(vec4<f32>(-724f, -448f, -330f, -1137f), arg_0.c.d).c, firstLeadingBit(vec4<u32>(17134u, var_2.x, 2220u, 0u)), arg_0.c.c), arg_0.c.c), ~21344u, all(vec4<bool>(select(any(vec3<bool>(arg_0.c.a.x, true, false)), true, all(vec2<bool>(arg_0.c.b.x, arg_0.c.b.x))), true, arg_0.c.b.x, arg_0.c.b.x && false)));
    var_1 = 55601i;
    return _wgslsmith_mult_vec2_i32(arg_0.d, -vec2<i32>(12744i, ~54297i)) ^ arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = func_5(Struct_2(vec3<i32>(u_input.a, 1i, u_input.a) >> (~(~var_0) % vec3<u32>(32u)), 1u, func_4(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, Struct_4(Struct_2(vec3<i32>(u_input.a, u_input.a, 0i), var_0.x, Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false), vec4<u32>(37945u, 0u, var_0.x, var_0.x), 4294967295u), vec2<i32>(-10826i, 2147483647i), var_0.x)))), 400f, 223f, 1115f), 0u), vec2<i32>(u_input.a, ~max(-2147483647i, u_input.a)), var_0.x));
    var var_2 = 89234u;
    var_2 = min(~_wgslsmith_add_u32(15137u, ~(var_0.x & var_0.x)), 88204u);
    let var_3 = Struct_2(abs(_wgslsmith_sub_vec3_i32(-(vec3<i32>(var_1.x, u_input.a, var_1.x) ^ vec3<i32>(var_1.x, u_input.a, var_1.x)), -vec3<i32>(-9682i, -1i, u_input.a))), var_0.x, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1619f, 508f, 244f, 548f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1433f, -1139f, -1353f), vec4<f32>(1495f, -621f, -288f, 478f), false)))), 0u), firstTrailingBit(func_2().a.yz), 1u);
    var_2 = 55459u;
    var_2 = _wgslsmith_mult_u32(var_3.c.c.x, var_3.c.c.x >> (~13258u % 32u));
    var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(6112u, var_3.b)), abs(~4294967295u), ~select(var_3.e, var_0.x, var_3.c.a.x), var_3.c.c.x), abs(~(var_3.c.c | var_3.c.c))) << (15345u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(47910u, 1u, 1840u))));
}

