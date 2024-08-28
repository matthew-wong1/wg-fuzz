struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = ~vec2<i32>(0i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 39825i), vec2<i32>(1i, arg_0))) | (vec2<i32>(u_input.a.x, -72443i) << (firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(31075u, u_input.b.x), vec2<u32>(u_input.b.x, 0u), u_input.d.xz)) % vec2<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(79766u, u_input.d.x, 4294967295u, u_input.b.x) >> (vec4<u32>(89935u, 1u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(~20987u, 1u, min(4294967295u, 25735u), u_input.b.x), vec4<u32>(~u_input.b.x, u_input.b.x ^ u_input.b.x, abs(u_input.d.x), 4294967295u)), ~vec4<u32>(u_input.b.x, u_input.d.x >> (40651u % 32u), u_input.b.x & u_input.b.x, ~4294967295u)), vec2<u32>(44486u << (u_input.b.x % 32u), 11459u), vec3<f32>(_wgslsmith_f_op_f32(round(-832f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1032f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(663f)))), true);
    var_0 = vec2<i32>(-var_0.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-u_input.a, firstTrailingBit(u_input.a)), -25466i));
    let var_2 = vec2<i32>(-1i) * -vec2<i32>(-1i, 0i);
    var_0 = reverseBits(u_input.a);
    return ~max(var_1.a, reverseBits(_wgslsmith_mult_vec4_u32(reverseBits(var_1.a), var_1.a)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = !all(!(!(!vec4<bool>(arg_2.d, arg_2.d, arg_2.d, arg_2.d))));
    var var_1 = Struct_1(func_3(reverseBits(_wgslsmith_mod_i32(countOneBits(2147483647i), 15252i))), u_input.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2.c * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(535f, 532f, arg_2.c.x), vec3<f32>(arg_2.c.x, 661f, arg_2.c.x), false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c - vec3<f32>(-1395f, -1521f, arg_2.c.x)))), !select(select(vec3<bool>(false, true, var_0), vec3<bool>(true, var_0, true), vec3<bool>(false, true, var_0)), !vec3<bool>(true, arg_2.d, arg_2.d), all(vec4<bool>(true, true, false, false))))), !(!any(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, false, false, false), arg_2.d))));
    var var_2 = var_1.d;
    var_2 = var_1.d;
    var var_3 = vec3<bool>(true, all(!(!vec2<bool>(var_1.d, true))), var_1.d);
    return -953f;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(24643u, 54543u, 51178u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, 8668u), vec4<u32>(u_input.d.x, u_input.d.x, 29768u, 4294967295u))), u_input.d.yy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-149f, 815f, 1155f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(728f, -350f, -551f) + vec3<f32>(-323f, 224f, -1512f))) * vec3<f32>(_wgslsmith_f_op_f32(select(-993f, -1555f, false)), 345f, _wgslsmith_f_op_f32(func_2(27604u, vec3<i32>(2147483647i, u_input.a.x, u_input.c), Struct_1(vec4<u32>(6878u, 15144u, 62843u, 35572u), vec2<u32>(u_input.d.x, u_input.d.x), vec3<f32>(317f, -1534f, 1287f), false), u_input.d.x)))))), ((i32(-1i) * -35693i) <= u_input.c) & !all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)));
    var var_1 = -399f;
    var var_2 = ~u_input.d;
    let var_3 = !all(select(select(!vec3<bool>(var_0.d, true, var_0.d), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, true, false), vec3<bool>(true, var_0.d, true)), true), select(select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, false, true), var_0.d), vec3<bool>(false, true, var_0.d), vec3<bool>(true, false, false)), vec3<bool>(true, all(vec2<bool>(true, false)), any(vec4<bool>(true, var_0.d, var_0.d, var_0.d)))));
    let var_4 = Struct_1(~vec4<u32>(var_2.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(18003u, u_input.b.x), countOneBits(0u), reverseBits(var_2.x)), ~u_input.b.x, _wgslsmith_dot_vec4_u32(~var_0.a, vec4<u32>(u_input.b.x, var_0.b.x, 2356u, var_0.b.x))), var_2.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(929f, -399f, var_0.d)), _wgslsmith_f_op_f32(abs(-1339f)), -1183f), var_0.c))), var_0.d);
    return ~_wgslsmith_add_u32(60782u, ~(~var_4.b.x)) << (var_0.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.d.x), reverseBits(abs(vec4<u32>(18954u, 58414u, 10933u, 8189u)))), vec4<u32>(func_1(), _wgslsmith_mult_u32(1u, select(57833u, 50914u, false)), 4294967295u, 4294967295u)), ~(~vec2<u32>(abs(u_input.b.x), 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1926f, -1000f, 1938f) + vec3<f32>(486f, 1118f, 1171f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1310f, -323f, 1512f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-885f, -646f, 1719f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-453f, -439f, -742f), vec3<f32>(-220f, -1012f, -253f))))), _wgslsmith_dot_vec3_u32(select(u_input.d, vec3<u32>(u_input.b.x, 0u, u_input.d.x), true), u_input.d << (vec3<u32>(18158u, u_input.b.x, 1u) % vec3<u32>(32u))) > max(max(u_input.d.x, u_input.d.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, u_input.d.x), 20281u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))))));
    var var_2 = -(~(~vec3<i32>(u_input.a.x, -u_input.a.x, u_input.a.x)));
    var_2 = vec3<i32>(min(u_input.a.x, -2147483647i), var_2.x, 6615i);
    var_2 = select(max(vec3<i32>(10243i, 2147483647i, 2147483647i), firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, 3834i, 2147483647i) << (var_0.a.wxw % vec3<u32>(32u))))), vec3<i32>(3372i, ~(-72977i), abs(min(abs(u_input.c), ~(-1i)))), select(!select(vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(false, var_0.d, var_0.d), true), select(!select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, true, var_0.d)), !select(vec3<bool>(false, var_0.d, true), vec3<bool>(true, var_0.d, true), vec3<bool>(false, true, false)), select(!vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(var_0.d, false, var_0.d), select(true, var_0.d, var_0.d))), any(vec2<bool>(var_0.d, true))));
    var var_3 = var_0;
    var var_4 = vec2<f32>(var_3.c.x, -271f);
    let x = u_input.a;
    s_output = StorageBuffer(-507f, reverseBits(~1401i), vec4<i32>(_wgslsmith_mod_i32(59149i, firstLeadingBit(_wgslsmith_mult_i32(38473i, -29733i))), -2147483647i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -11576i), u_input.a)), -2147483647i), ~_wgslsmith_clamp_i32(firstTrailingBit(-4490i), _wgslsmith_clamp_i32(var_2.x, -35093i, -2147483647i), select(7409i, u_input.c, var_0.d))), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, ~_wgslsmith_clamp_u32(var_0.a.x, 4294967295u, var_3.b.x), firstTrailingBit(var_0.b.x)), var_3.a), ~select(-2147483647i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c, -1i, -1i, u_input.a.x)), ~vec4<i32>(u_input.c, u_input.a.x, 61867i, u_input.a.x)), var_2.x < ~var_2.x));
}

