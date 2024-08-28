struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(var_0.x, var_0.x);
    let var_1 = 17507i;
    var_0 = select(vec2<bool>(var_0.x, !(!(false != var_0.x))), !(!select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(false, false)), vec2<bool>(var_0.x, var_0.x), any(vec3<bool>(false, true, var_0.x)))), !vec2<bool>(any(select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(true, true))), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f * 207f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(var_0.x, var_0.x, var_0.x))))));
    return Struct_1(vec4<bool>((_wgslsmith_clamp_i32(22651i, -2147483647i, arg_0.x) & _wgslsmith_mod_i32(0i, var_1)) != (-var_1 << (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)), (-34181i & -var_1) < 6643i, var_0.x, (true && (var_2 > var_2)) & true), min(~51176u, u_input.a.x));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = -2147483647i;
    var var_1 = Struct_3(arg_1.a, abs(arg_1.b), arg_1.c);
    let var_2 = Struct_3(var_1.a, ~countOneBits((arg_1.b ^ vec3<i32>(0i, arg_1.b.x, 54371i)) ^ countOneBits(vec3<i32>(arg_1.b.x, -2147483647i, u_input.b.x))), Struct_2(arg_1.c.c, var_1.a, Struct_1(select(func_2(vec4<i32>(1i, 0i, var_1.b.x, 2147483647i)).a, !vec4<bool>(false, false, var_1.c.a.a.x, false), arg_1.c.b.a.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 14138u, arg_0), arg_0)), vec2<u32>(max(arg_0, ~46004u), arg_0), Struct_1(func_2(~vec4<i32>(2147483647i, -1i, arg_1.b.x, arg_1.b.x)).a, func_2(abs(vec4<i32>(-38819i, -8662i, var_0, 0i))).b)));
    var_1 = Struct_3(func_2(-(~vec4<i32>(var_2.b.x, var_2.b.x, var_1.b.x, -2147483647i)) | reverseBits(vec4<i32>(-48095i, var_0, -2147483647i, var_2.b.x) | vec4<i32>(arg_1.b.x, var_2.b.x, -1i, -2147483647i))), select(abs(arg_1.b ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_1.b.x, var_1.b.x), vec3<i32>(u_input.b.x, -20884i, -1i), vec3<i32>(arg_1.b.x, var_1.b.x, var_0))), vec3<i32>(var_0, _wgslsmith_mult_i32(var_0, var_2.b.x), select(var_0, var_2.b.x, false)) ^ -var_1.b, !arg_1.c.a.a.x), var_1.c);
    var var_3 = 8025u;
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1186f * 909f), _wgslsmith_f_op_f32(f32(-1f) * -990f), var_1.a.a.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_u32(1u, u_input.a.x | u_input.a.x), Struct_3(func_2(vec4<i32>(u_input.b.x, -24000i, u_input.b.x, 6768i)), vec3<i32>(u_input.b.x, 16527i, u_input.b.x), Struct_2(Struct_1(vec4<bool>(false, false, true, true), u_input.a.x), Struct_1(vec4<bool>(false, true, true, false), 0u), Struct_1(vec4<bool>(false, false, false, false), u_input.a.x), u_input.a, Struct_1(vec4<bool>(true, false, false, true), u_input.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1628f, -2143f, -547f) + vec3<f32>(-1889f, 816f, -240f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, -2288f, -493f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 347f, 1584f)) - vec3<f32>(925f, -1069f, -1000f))))));
    let var_1 = select(u_input.b.x, abs(u_input.b.x), false);
    let var_2 = max(vec4<i32>(_wgslsmith_mult_i32(var_1, var_1), countOneBits(var_1), -u_input.b.x, var_1), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, ~(-2147483647i), _wgslsmith_mult_i32(-38098i, 32602i), -8348i) | -vec4<i32>(37936i, 1i, -2147483647i, var_1), vec4<i32>(_wgslsmith_add_i32(20691i, abs(40786i)), u_input.b.x, -5215i, ~(-18630i))));
    var var_3 = Struct_2(func_2(var_2), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), (u_input.a.x >> ((u_input.a.x << (71944u % 32u)) % 32u)) << (_wgslsmith_sub_u32(u_input.a.x, 1u) % 32u)), func_2(vec4<i32>(var_2.x, var_2.x, 2147483647i, abs(_wgslsmith_div_i32(var_1, -17842i)))), ~(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, true) ^ u_input.a) ^ u_input.a, Struct_1(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), abs(_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(4294967295u, 4294967295u)))));
    var_3 = Struct_2(func_2(vec4<i32>(select(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), 0i, true), var_1, var_1, ~var_2.x)), func_2(min(vec4<i32>(_wgslsmith_clamp_i32(var_1, u_input.b.x, 54085i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), var_2.zy), ~var_1, 780i), vec4<i32>(_wgslsmith_mod_i32(var_2.x, -2147483647i), -var_1, _wgslsmith_div_i32(1i, -2147483647i), ~var_2.x))), func_2(var_2), vec2<u32>(u_input.a.x, ~u_input.a.x), func_2(abs(var_2)));
    return var_3.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(func_1(), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mod_i32(-30834i, arg_3.x), arg_2.x, 2147483647i), Struct_2(func_2(_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, arg_3.x, u_input.b.x, arg_3.x), _wgslsmith_add_vec4_i32(vec4<i32>(8015i, -62837i, u_input.b.x, 0i), vec4<i32>(-12795i, u_input.b.x, -1540i, 2147483647i)))), func_1(), Struct_1(select(arg_0.e.a, !vec4<bool>(false, arg_1.x, arg_0.e.a.x, true), select(arg_0.c.a.x, arg_0.e.a.x, arg_1.x)), arg_0.e.b), arg_0.d, arg_0.a));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.a.b, 1u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 48278u, 0u, _wgslsmith_mult_u32(arg_0.e.b, var_0.c.e.b)), ~vec4<u32>(arg_0.c.b, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.b.b, 1389u), 21828u), _wgslsmith_clamp_u32(~u_input.a.x, var_0.a.b, ~97668u), ~_wgslsmith_add_u32(1u, u_input.a.x)), vec4<u32>(var_0.a.b, 30450u, reverseBits(_wgslsmith_mod_u32(1u, u_input.a.x)) & abs(15625u), 0u & _wgslsmith_add_u32(~5952u, 38372u ^ u_input.a.x)));
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = 4294967295u >= _wgslsmith_div_u32(~u_input.a.x, 15951u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-374f, -1279f, -1302f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-907f, -263f, -1421f) + vec3<f32>(1308f, 2278f, 1000f))))));
    let var_3 = Struct_1(vec4<bool>(all(vec4<bool>(true, true, true, u_input.a.x == 53704u)), all(vec2<bool>(any(vec3<bool>(false, true, false)), true)), all(vec2<bool>(true, true)), ~0u != _wgslsmith_div_u32(~u_input.a.x, ~4294967295u)), 3299u);
    var var_4 = u_input.b.x;
    var_1 = var_3.a.x;
    let var_5 = Struct_2(func_4(Struct_2(func_1(), Struct_1(var_3.a, 0u), var_3, ~countOneBits(u_input.a), Struct_1(func_2(vec4<i32>(-1662i, u_input.b.x, u_input.b.x, 1955i)).a, 28657u)), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -54691i) | vec4<i32>(5495i, -12634i, u_input.b.x, -43367i), firstLeadingBit(vec4<i32>(u_input.b.x, 3411i, u_input.b.x, 17970i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))).a, vec2<i32>(select(countOneBits(u_input.b.x), u_input.b.x | u_input.b.x, true && var_3.a.x), -63751i & (-1i >> (var_3.b % 32u))), -abs(u_input.b.yz << (u_input.a % vec2<u32>(32u)))), Struct_1(func_4(Struct_2(var_3, func_4(Struct_2(var_3, var_3, var_3, u_input.a, var_3), var_3.a, vec2<i32>(-6967i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), func_1(), vec2<u32>(u_input.a.x, 69381u) & vec2<u32>(4684u, u_input.a.x), var_3), select(vec4<bool>(false, var_3.a.x, false, false), vec4<bool>(true, var_3.a.x, false, false), vec4<bool>(var_3.a.x, var_3.a.x, true, var_3.a.x)), u_input.b.yz, vec2<i32>(u_input.b.x, 25096i) ^ u_input.b.zx).a, min(~u_input.a.x, reverseBits(0u << (u_input.a.x % 32u)))), var_3, ~vec2<u32>(var_3.b, _wgslsmith_sub_u32(20070u, u_input.a.x) & 1u), var_3);
    var_0 = -18878i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(14923i), 1i, firstTrailingBit(u_input.b.x) ^ u_input.b.x, u_input.b.x));
}

