struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec3<u32> {
    let var_0 = -1i;
    var var_1 = 13687u;
    var var_2 = -1879f;
    return ~(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(32227u, u_input.d.x, 15114u), vec3<u32>(arg_1.d.x, u_input.d.x, u_input.d.x)), vec3<u32>(11378u, u_input.d.x, 0u) >> (vec3<u32>(4294967295u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, arg_1.d.x, 26186u), vec3<u32>(arg_1.d.x, 4294967295u, u_input.d.x), vec3<u32>(47680u, arg_1.d.x, 37915u))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    var var_0 = u_input.d;
    let var_1 = func_3(-arg_1, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-260f)) - _wgslsmith_f_op_f32(f32(-1f) * -1119f)) < 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1448f, 551f, 243f)))), -u_input.e, firstTrailingBit(u_input.d), vec3<i32>(arg_1.x, ~(-arg_1.x), -1i)), false, false);
    var var_2 = vec3<f32>(366f, 264f, _wgslsmith_f_op_f32(f32(-1f) * -578f));
    var_0 = ~u_input.d;
    let var_3 = !vec4<bool>(_wgslsmith_mod_i32(arg_1.x, _wgslsmith_dot_vec2_i32(u_input.e.yx, u_input.e.zx)) == -firstLeadingBit(0i), _wgslsmith_f_op_f32(select(-428f, _wgslsmith_f_op_f32(select(var_2.x, 547f, true)), true)) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1046f), 733f, false)), true, all(vec3<bool>(true, true, true)));
    return max(~(-23452i), ~u_input.c);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(arg_0.d.x, _wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(arg_0.d, max(vec2<u32>(6754u, arg_0.d.x), vec2<u32>(u_input.d.x, 4294967295u))))) & _wgslsmith_sub_u32(36841u, _wgslsmith_add_u32(~arg_0.d.x, reverseBits(arg_0.d.x)));
    var var_1 = Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(187f, -629f)) * arg_0.b.x))), select(firstTrailingBit(arg_0.c), -vec4<i32>(u_input.c, arg_0.c.x | u_input.a, select(-2147483647i, arg_0.e.x, false), ~u_input.b.x), vec4<bool>(4294967295u > arg_0.d.x, false, 0i > arg_0.e.x, true)), vec2<u32>(_wgslsmith_mult_u32(~(~arg_0.d.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27654u, u_input.d.x, 4294967295u, 17445u), vec4<u32>(64155u, arg_0.d.x, u_input.d.x, 27020u)), _wgslsmith_div_vec4_u32(vec4<u32>(5119u, 28921u, u_input.d.x, 80782u), vec4<u32>(0u, 12070u, 40891u, 4294967295u)))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0, arg_0.d.x, var_0) | vec3<u32>(arg_0.d.x, 4294967295u, 0u), vec3<u32>(1u, u_input.d.x, u_input.d.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0, 26473u, 10162u), vec3<u32>(u_input.d.x, 3361u, 10485u) << (vec3<u32>(var_0, 0u, 0u) % vec3<u32>(32u)), abs(vec3<u32>(arg_0.d.x, 12963u, u_input.d.x))))), u_input.e.xzx | max(select(firstTrailingBit(vec3<i32>(1i, -2147483647i, 22467i)), vec3<i32>(5874i, u_input.b.x, -68537i), vec3<bool>(arg_0.a, true, true)), vec3<i32>(arg_0.c.x, countOneBits(arg_0.e.x), 0i)));
    var var_2 = arg_0;
    let var_3 = !vec4<bool>(arg_0.a, var_2.a, false, var_1.a);
    var_1 = Struct_1(arg_0.c.x <= _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -var_1.c, vec4<i32>(var_2.e.x, -2147483647i, var_2.c.x, 2147483647i) >> (vec4<u32>(39894u, 50738u, var_0, u_input.d.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.b, vec3<f32>(arg_0.b.x, -891f, 556f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, -290f, var_2.b.x))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b.x, arg_0.b.x, 1032f))))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-(~arg_0.c), abs(vec4<i32>(u_input.c, arg_0.c.x, u_input.b.x, -1i) | vec4<i32>(u_input.a, 47023i, arg_0.c.x, var_2.c.x))), var_1.c), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 67894u), vec3<u32>(var_0, u_input.d.x, u_input.d.x)) | 0u), vec2<u32>(25714u, 1u)), arg_0.c.wxw);
    return arg_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    let var_0 = func_4(Struct_1(all(vec2<bool>(all(vec2<bool>(arg_1, false)), arg_1 | arg_1)), vec3<f32>(284f, -271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1756f * -1666f))), vec4<i32>(func_2(0u, _wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(2147483647i, 1i, 1i, -37491i)), select(28605u, 1u, true)), -(i32(-1i) * -2147483647i), _wgslsmith_add_i32(~7896i, 1i >> (u_input.d.x % 32u)), countOneBits(i32(-1i) * -7779i)), u_input.d, vec3<i32>(arg_0.x ^ arg_0.x, -(~(-30961i)), abs(u_input.a))));
    var var_1 = func_4(Struct_1(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2208f, 992f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(sign(var_0.b))), vec3<bool>(arg_1, !arg_1, true))), vec4<i32>(-(~(-71041i)), var_0.c.x, -_wgslsmith_div_i32(arg_0.x, -2147483647i), _wgslsmith_mult_i32(var_0.e.x, 0i)), ~vec2<u32>(_wgslsmith_add_u32(var_0.d.x, 0u), u_input.d.x | u_input.d.x), var_0.e));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(select(_wgslsmith_add_vec4_i32(arg_0, vec4<i32>(var_0.c.x, var_1.c.x, var_0.e.x, -33765i)), var_1.c, arg_1), var_0.c), _wgslsmith_add_vec4_i32(arg_0, -vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(0i, arg_0.x, arg_0.x), 1i, 31235i)));
    var var_3 = var_0;
    let var_4 = func_4(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, -432f, 209f))), -vec4<i32>(_wgslsmith_sub_i32(-70113i, -16224i), -23139i, -6556i, min(-2147483647i, 12100i)), reverseBits(~u_input.d), ~var_0.e));
    return var_4.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.b.x, -4706i, 2147483647i, u_input.b.x), true)), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-209f, 863f, 406f)))))), vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-34511i), _wgslsmith_div_i32(-1609i, u_input.b.x)), u_input.b.yz | -u_input.b.zz), u_input.c, u_input.a), ~firstTrailingBit(vec2<u32>(129707u, u_input.d.x) << (u_input.d % vec2<u32>(32u))), select(~u_input.e.ywx, min(vec3<i32>(1i, u_input.b.x, 0i) << (~vec3<u32>(4294967295u, 19189u, 28742u) % vec3<u32>(32u)), u_input.e.xzz), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    var var_1 = func_4(Struct_1(true, vec3<f32>(-904f, 832f, -1010f), var_0.c, vec2<u32>(_wgslsmith_mod_u32(1u, abs(4294967295u)), abs(u_input.d.x)), vec3<i32>(abs(firstLeadingBit(39292i)), _wgslsmith_mult_i32(~2147483647i, select(var_0.c.x, 2147483647i, true)), abs(-14684i))));
    var var_2 = func_4(Struct_1(select(var_1.a, var_0.a, var_0.a), vec3<f32>(894f, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -272f))), min(vec4<i32>(var_1.c.x, var_0.e.x, -45248i, 2147483647i) | (vec4<i32>(17072i, 2147483647i, 2147483647i, var_0.e.x) | var_1.c), -(~var_0.c)), ~firstTrailingBit(u_input.d), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(var_1.e, vec3<i32>(1i, -2147483647i, var_1.c.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 344f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b.x, 478f)))))), vec2<f32>(-741f, _wgslsmith_f_op_f32(-var_2.b.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, func_4(func_4(Struct_1(var_1.a, vec3<f32>(var_2.b.x, 458f, 208f), vec4<i32>(u_input.a, 1i, var_0.e.x, var_0.c.x), vec2<u32>(u_input.d.x, 0u), vec3<i32>(var_2.c.x, 37373i, var_0.c.x)))).b.x)));
    var var_4 = var_1.a;
    var var_5 = all(select(!(!vec4<bool>(var_0.a, var_2.a, var_1.a, var_2.a)), select(!vec4<bool>(var_2.a, true, false, var_1.a), vec4<bool>(true, true, var_2.a, var_2.a), _wgslsmith_f_op_f32(sign(var_3.x)) > _wgslsmith_f_op_f32(f32(-1f) * -1228f)), !any(!vec4<bool>(false, var_2.a, var_2.a, false))));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(vec3<i32>(0i, var_1.e.x, -2147483647i), ~vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), var_0.a), ~vec3<i32>(var_0.c.x, 12392i, -32468i) | u_input.e.yzw) >> (vec3<u32>(max(var_0.d.x, _wgslsmith_clamp_u32(var_1.d.x, var_2.d.x, var_2.d.x)), var_1.d.x, var_0.d.x) % vec3<u32>(32u)), func_4(func_4(Struct_1(func_4(Struct_1(var_0.a, vec3<f32>(1000f, 1131f, 167f), vec4<i32>(-2147483647i, -2147483647i, u_input.a, u_input.b.x), vec2<u32>(35963u, var_2.d.x), vec3<i32>(var_1.c.x, var_1.c.x, 37788i))).a, _wgslsmith_f_op_vec3_f32(sign(var_2.b)), min(var_2.c, u_input.e), u_input.d << (var_1.d % vec2<u32>(32u)), vec3<i32>(u_input.c, u_input.c, var_2.c.x)))).e.x);
}

