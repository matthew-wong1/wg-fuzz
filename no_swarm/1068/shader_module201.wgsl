struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = min(arg_0.a.b.xz, vec2<i32>(_wgslsmith_add_i32(-(~(-67773i)), ~(u_input.b.x | 2147483647i)), abs(1i)));
    let var_1 = arg_0.a;
    var_0 = -vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(firstTrailingBit(firstLeadingBit(-5225i)), ~2147483647i));
    var var_2 = arg_0;
    var var_3 = arg_0.e.b.x;
    return max(~vec4<u32>(_wgslsmith_add_u32(var_1.c.x, ~var_2.c), u_input.a.x, 1u, 4294967295u), vec4<u32>(arg_0.b.c.x, ~(~4294967295u), abs(_wgslsmith_clamp_u32(4294967295u, arg_0.b.c.x, 11132u)), ~(~u_input.a.x)) | u_input.a);
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec4<bool> {
    var var_0 = min((_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, arg_0.e.b.x, -27778i), select(vec4<i32>(-1i, u_input.b.x, -2147483647i, -5695i), vec4<i32>(u_input.b.x, -19974i, 40759i, -42575i), false)) << (func_3(arg_0) % vec4<u32>(32u))) << (firstLeadingBit(select(vec4<u32>(1u, arg_0.c, arg_0.a.c.x, 0u) | vec4<u32>(1u, 1021u, 0u, arg_0.a.c.x), u_input.a, select(vec4<bool>(arg_1, false, false, arg_0.b.b), vec4<bool>(true, false, arg_1, arg_0.b.b), arg_0.b.b))) % vec4<u32>(32u)), ~(~(max(vec4<i32>(1i, arg_0.a.b.x, arg_0.e.b.x, -37394i), vec4<i32>(-34012i, arg_0.b.e, -2147483647i, 0i)) >> (~vec4<u32>(u_input.a.x, 1u, arg_0.b.c.x, 4294967295u) % vec4<u32>(32u)))));
    var_0 = min(-_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-2147483647i, -2147483647i, -60736i, arg_0.a.b.x)), -(vec4<i32>(var_0.x, 0i, 1i, var_0.x) | vec4<i32>(var_0.x, -2147483647i, -1i, 25441i))), -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, var_0.x), ~1484i), u_input.b.x, u_input.b.x, arg_0.e.b.x));
    var_0 = countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.yz, -reverseBits(arg_0.b.d.yz)), max(firstTrailingBit(min(var_0.x, -2147483647i)), -arg_0.a.b.x << (~0u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~8455i, _wgslsmith_mult_i32(var_0.x, 8034i)), max(_wgslsmith_dot_vec2_i32(arg_0.b.d.zy, arg_0.e.b.yx), i32(-1i) * -1i), -28700i), 10643i));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-498f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(arg_0.b.a * arg_0.e.a))))));
    let var_2 = true;
    return !(!select(vec4<bool>(arg_1, select(var_2, false, arg_0.b.b), true, any(vec2<bool>(false, arg_0.b.b))), select(vec4<bool>(arg_1, arg_0.b.b, true, var_2), vec4<bool>(arg_0.b.b, true, false, false), true), vec4<bool>(var_2 & true, all(vec2<bool>(false, arg_1)), all(vec3<bool>(arg_1, arg_1, true)), any(vec3<bool>(var_2, true, true)))));
}

fn func_4(arg_0: vec4<bool>) -> bool {
    var var_0 = 1i ^ -_wgslsmith_mod_i32(2147483647i, u_input.b.x);
    var_0 = abs(-17323i);
    var_0 = 20893i;
    let var_1 = 84007u;
    var_0 = abs(~(-abs(-25606i)));
    return arg_0.x;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_3(Struct_1(arg_0.a, max(abs(u_input.b), vec3<i32>(u_input.b.x, u_input.b.x, abs(u_input.b.x))), vec2<u32>(min(u_input.a.x, u_input.a.x) | u_input.a.x, 1u)), Struct_2(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2204f)), _wgslsmith_f_op_f32(-1284f + 199f)))), true, vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-27711i, -18278i, u_input.b.x), ~(-vec3<i32>(0i, 18562i, 28786i)), -(~vec3<i32>(2147483647i, u_input.b.x, -6562i))), -u_input.b.x), u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - arg_0.a), arg_0.a), Struct_1(arg_0.a, vec3<i32>(~u_input.b.x ^ min(2147483647i, u_input.b.x), 46948i, ~(u_input.b.x | 1i)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 31378u) ^ vec2<u32>(4294967295u, 4294967295u), u_input.a.xw))));
    var_0 = Struct_3(var_0.e, Struct_2(-1701f, false, _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 36849u) & vec2<u32>(11603u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x) ^ ~vec2<u32>(4294967295u, 65601u), u_input.a.yx), _wgslsmith_div_vec3_i32(vec3<i32>(~(-1i), i32(-1i) * -2147483647i, firstLeadingBit(var_0.a.b.x)), select(vec3<i32>(-1i, u_input.b.x, var_0.a.b.x) >> (vec3<u32>(0u, u_input.a.x, var_0.b.c.x) % vec3<u32>(32u)), -u_input.b, var_0.b.b)), var_0.e.b.x), 1u, vec2<f32>(-359f, arg_0.a), var_0.a);
    let var_1 = 10705u;
    let var_2 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(max(reverseBits(var_0.a.b.zx), _wgslsmith_mod_vec2_i32(vec2<i32>(36303i, u_input.b.x), vec2<i32>(-1i, u_input.b.x))), u_input.b.xz), -abs(2147483647i));
    var var_3 = vec2<i32>(select(u_input.b.x, _wgslsmith_mult_i32(firstTrailingBit(~1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-43109i, u_input.b.x), var_0.a.b.zx)), true), -35087i);
    return _wgslsmith_add_vec4_i32(~(-(~vec4<i32>(1i, -72882i, 1i, var_3.x))) ^ ~vec4<i32>(~u_input.b.x, 15756i, ~2147483647i, ~(-2147483647i)), reverseBits(max(abs(-vec4<i32>(0i, var_2, 0i, 2147483647i)), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_0.b.d.x, u_input.b.x, u_input.b.x, 37837i)), vec4<i32>(var_0.b.e, 1i, var_3.x, var_0.b.d.x) | vec4<i32>(-2147483647i, var_2, var_0.a.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2, -14712i, -29209i, 30836i), vec4<i32>(-1480i, var_2, u_input.b.x, var_3.x))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = -1619f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 756f)), -abs(u_input.b), reverseBits(u_input.a.yz));
    var var_2 = !(!all(vec3<bool>(true, true, true)));
    let var_3 = -func_5(Struct_4(-239f), (any(vec3<bool>(true, true, false)) != true) || false, vec3<bool>(28799u != ~arg_0.x, func_4(func_2(Struct_3(Struct_1(var_0, var_1.b, arg_0.zx), Struct_2(226f, false, vec2<u32>(var_1.c.x, 21477u), vec3<i32>(var_1.b.x, u_input.b.x, u_input.b.x), u_input.b.x), 10481u, vec2<f32>(var_1.a, -671f), Struct_1(924f, u_input.b, var_1.c)), true)), !all(vec2<bool>(false, true))));
    var_2 = 1i <= var_1.b.x;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, 347f, -1836f, 211f) + vec4<f32>(3395f, -1170f, -283f, -1000f))))), countOneBits(-vec3<i32>(-8528i, u_input.b.x, var_0.x)), firstTrailingBit(abs(vec2<u32>(u_input.a.x, 1u)))), Struct_2(844f, true, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, 13413u)), ~36405u), ~u_input.a.xy), u_input.b, u_input.b.x), 12153u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(949f, 242f), vec2<f32>(527f, 163f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -2115f), vec2<f32>(373f, -827f), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -879f), vec2<f32>(-1463f, 959f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(410f, -899f) + vec2<f32>(383f, 448f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(488f, 1216f) - _wgslsmith_f_op_f32(496f - 471f)), 335f))), Struct_1(-1250f, u_input.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(67159u, u_input.a.x), ~u_input.a.zy, vec2<u32>(u_input.a.x, 0u)), ~select(u_input.a.wy, u_input.a.zw, vec2<bool>(false, true)), select(vec2<u32>(24147u, 1u), vec2<u32>(1u, 1u), true))));
    let var_2 = var_1.e.b.x;
    var_0 = -var_1.e.b;
    var_1 = Struct_3(var_1.a, Struct_2(var_1.d.x, !var_1.b.b, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_1.e.c.x), u_input.a.ww), firstLeadingBit(abs(u_input.a.xy))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_1.e.b.x), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(-22798i, var_0.x, 46048i))), countOneBits(vec3<i32>(var_1.b.e, -2147483647i, -39055i)), func_5(Struct_4(-541f), func_4(vec4<bool>(false, var_1.b.b, var_1.b.b, false)), !vec3<bool>(false, true, var_1.b.b)).wzx), ~(-37226i)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u | var_1.b.c.x, ~abs(var_1.c), 4294967295u), ~(~(vec4<u32>(u_input.a.x, 65260u, 0u, 0u) >> (vec4<u32>(u_input.a.x, var_1.b.c.x, 17073u, 35675u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.d - _wgslsmith_f_op_vec2_f32(-var_1.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), -619f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(544f, 2042f))))))), var_1.e);
    var_0 = var_1.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yyy);
}

