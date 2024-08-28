struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_mult_vec3_u32(~vec3<u32>(~arg_1.x, _wgslsmith_mod_u32(u_input.c.x, arg_1.x), 1u), reverseBits(u_input.c.zwx)), firstTrailingBit(firstLeadingBit(~u_input.c.xx)), vec4<f32>(arg_0.x, arg_0.x, -752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)))), Struct_2(Struct_1(711f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1289f, arg_0.x)), _wgslsmith_div_f32(126f, arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x))))) < _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(725f)) - arg_0.x)));
    let var_1 = i32(-1i) * -u_input.e.x;
    var_0 = Struct_3(_wgslsmith_add_vec3_u32(var_0.a, min(vec3<u32>(var_0.b.x, 4294967295u, _wgslsmith_sub_u32(u_input.c.x, var_0.a.x)), var_0.a)), _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(u_input.c.x, 35076u), countOneBits(var_0.b.x)), firstLeadingBit(min(u_input.c.xy, vec2<u32>(var_0.b.x, 0u) & arg_1))), vec4<f32>(-685f, var_0.c.x, _wgslsmith_f_op_f32(arg_0.x - 1000f), -692f), var_0.d, !(var_0.c.x <= 610f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 1473f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-128f)))), -592f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-var_0.d.a.a)) * -1298f)));
    var_0 = Struct_3(var_0.a, vec2<u32>(u_input.c.x, var_0.a.x) >> ((vec2<u32>(21565u, _wgslsmith_add_u32(0u, u_input.c.x)) & var_0.a.zz) % vec2<u32>(32u)), var_0.c, var_0.d, false);
    return ~(~arg_1);
}

fn func_2() -> bool {
    let var_0 = Struct_3(~countOneBits(_wgslsmith_mod_vec3_u32(u_input.c.xzx, vec3<u32>(u_input.c.x, 0u, u_input.b) << (u_input.c.zyw % vec3<u32>(32u)))), _wgslsmith_clamp_vec2_u32(countOneBits(func_3(vec2<f32>(-794f, -526f), u_input.c.ww)), select(u_input.c.xz, u_input.c.zx, false) | vec2<u32>(u_input.b, 1u), min(vec2<u32>(4294967295u, u_input.b), ~u_input.c.yy)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.b, u_input.c.x), u_input.c.xz), u_input.c.wz & vec2<u32>(0u, u_input.b)), u_input.c.wy) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1464f, -1774f, -2351f, -260f) + vec4<f32>(-285f, -176f, -749f, -330f)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f - -1000f)))), any(!vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true)));
    let var_1 = select(vec2<u32>(32264u, u_input.c.x), max(~min(~vec2<u32>(0u, var_0.b.x), select(var_0.b, var_0.a.yx, var_0.e)), _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.c.zw), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(2352u, u_input.b))) ^ ((vec2<u32>(0u, 79342u) >> (var_0.b % vec2<u32>(32u))) | vec2<u32>(u_input.c.x, 4294967295u))), any(vec2<bool>(var_0.e, false)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_div_f32(var_0.d.a.a, var_0.c.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(var_0.c.yw)), vec2<f32>(var_0.c.x, 672f)))))));
    var var_3 = Struct_1(var_2.x);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-177f * 496f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(ceil(var_3.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(356f - var_3.a))))));
    return !(!select(true, false, true));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = !arg_3.e;
    var var_1 = !vec3<bool>(!(!(!arg_3.e)), u_input.a == ((-17919i | u_input.e.x) << (select(u_input.b, 4294967295u, arg_0.e) % 32u)), all(vec4<bool>(all(vec4<bool>(arg_0.e, false, false, arg_3.e)), false, func_2(), !arg_0.e)));
    var var_2 = arg_0.d;
    var var_3 = ~min(arg_0.a, vec3<u32>(~(0u | arg_0.b.x), ~abs(28931u), ~_wgslsmith_div_u32(0u, 1u)));
    let var_4 = arg_1;
    return 109737u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~firstLeadingBit(1u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u >> (0u % 32u), u_input.c.x, func_1(Struct_3(vec3<u32>(u_input.c.x, 7102u, u_input.c.x), u_input.c.ww, vec4<f32>(290f, 808f, -1000f, -1581f), Struct_2(Struct_1(-892f)), false), Struct_1(606f), Struct_1(685f), Struct_3(vec3<u32>(1u, u_input.b, u_input.c.x), u_input.c.yz, vec4<f32>(348f, 271f, -1237f, 1020f), Struct_2(Struct_1(568f)), true))), ~vec3<u32>(u_input.b, 1u, 24801u) >> (u_input.c.wwy % vec3<u32>(32u)))), 1u);
    var var_1 = -(~vec2<i32>(-4529i, ~1i));
    let var_2 = vec3<i32>(48111i, ~(-1i), var_1.x);
    let var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(abs(27386i), ~var_2.x, u_input.e.x), _wgslsmith_mult_vec3_i32(vec3<i32>(~var_2.x, u_input.e.x, 16066i), ~(-var_2))) != _wgslsmith_clamp_i32(var_1.x, -abs(0i), 1i);
    var_1 = firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.e, vec2<i32>(countOneBits(-var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.d, u_input.a), ~vec3<i32>(0i, -1i, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(474f)))))));
}

