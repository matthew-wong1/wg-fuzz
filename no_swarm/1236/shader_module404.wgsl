struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = arg_3;
    return arg_3.yzy;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = !vec2<bool>(all(select(func_3(arg_0.a.c.yw, vec2<f32>(-1801f, 529f), vec2<i32>(-2147483647i, arg_0.b), arg_0.a.c), vec3<bool>(false, true, true), true)), !all(!arg_0.a.c.wx));
    var_0 = select(select(arg_0.a.c.xz, arg_0.a.c.zx, vec2<bool>(all(select(vec3<bool>(var_0.x, arg_0.a.c.x, false), arg_0.a.c.yyw, var_0.x)), var_0.x)), !vec2<bool>(false || !var_0.x, true), !var_0.x);
    var_0 = arg_0.a.c.xz;
    var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(var_0.x, false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2100f, _wgslsmith_f_op_f32(abs(-418f)), ~arg_0.d <= (arg_1.x ^ 42222u))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -693f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1515f)))))) + 1f);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = reverseBits(~u_input.b.wxx);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(345f, _wgslsmith_f_op_f32(func_2(arg_0, arg_3.wy, 52165u, ~88440u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(-369f + arg_1.x)))))));
    var var_2 = arg_0;
    var_0 = vec3<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(-arg_0.b, 1i), 1i), u_input.a | _wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(u_input.a, select(u_input.a, var_0.x, false))));
    var var_3 = 0u;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(func_1(Struct_2(arg_0, -23728i, firstTrailingBit(reverseBits(-1i)), 55463u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(147f, -2995f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(194f, -1315f)))))), func_1(Struct_2(func_1(Struct_2(Struct_1(48392u, arg_2.x, arg_0.c), 54286i, u_input.b.x, 96007u), vec2<f32>(-1230f, -1839f), Struct_1(arg_0.a, arg_2.x, arg_0.c), vec4<u32>(arg_2.x, 0u, 71209u, arg_0.a)), ~arg_1, 750i, arg_0.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -295f) * vec2<f32>(1271f, -188f)))), func_1(Struct_2(Struct_1(1u, arg_0.a, arg_0.c), u_input.a, -1i, 0u), vec2<f32>(1328f, -194f), arg_0, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, arg_2.x, arg_2.x, 4294967295u), vec4<u32>(81225u, 36502u, arg_2.x, 1u))), arg_2), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~arg_2, abs(arg_2)), vec4<u32>(4294967295u, 1u, arg_0.b, arg_2.x))), arg_1, u_input.a, ~abs(1u));
    let var_1 = _wgslsmith_add_vec3_u32(arg_2.xww, _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(67725u, 0u, 49976u)), _wgslsmith_add_vec3_u32(select(vec3<u32>(arg_0.a, 4294967295u, arg_2.x), vec3<u32>(55995u, var_0.a.b, var_0.d), var_0.a.c.zwz), _wgslsmith_clamp_vec3_u32(arg_2.zzz, vec3<u32>(arg_2.x, 0u, 12865u), arg_2.xyw)))) >> (vec3<u32>(min(14673u, abs(_wgslsmith_mult_u32(arg_2.x, 53334u))), arg_0.a, arg_0.a) % vec3<u32>(32u));
    var var_2 = Struct_1(~((~0u ^ arg_2.x) ^ 4294967295u), arg_0.a, arg_0.c);
    let var_3 = arg_3;
    var var_4 = vec4<bool>(false, !func_3(var_2.c.xy, vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -505f)), _wgslsmith_f_op_f32(178f * 275f)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zy, u_input.b.yx), vec2<i32>(arg_1, var_0.c), vec2<i32>(-1i, u_input.a)), var_2.c).x, !(!all(var_2.c.zx)), var_3);
    return ~_wgslsmith_dot_vec2_u32(arg_2.zz, countOneBits(firstLeadingBit(vec2<u32>(10911u, arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(~(_wgslsmith_dot_vec2_u32(vec2<u32>(25576u, 2939u), vec2<u32>(1u, 33610u)) << (1u % 32u)), ~func_4(func_1(Struct_2(Struct_1(68747u, 58044u, vec4<bool>(false, true, false, true)), -1i, u_input.a, 1u), vec2<f32>(272f, -136f), Struct_1(6387u, 76274u, vec4<bool>(false, false, false, false)), vec4<u32>(73200u, 0u, 0u, 4294967295u)), ~29739i, vec4<u32>(1u, 1u, 1u, 1u), all(vec2<bool>(false, true)))), ~33163u, vec4<bool>(true, true, false, !(firstLeadingBit(u_input.a) > -2147483647i)));
    var_0 = Struct_1(var_0.b, ~select(var_0.a, ~var_0.a, func_1(Struct_2(Struct_1(var_0.b, var_0.a, var_0.c), u_input.b.x, u_input.a, var_0.b), vec2<f32>(1886f, 1551f), Struct_1(var_0.b, 1u, vec4<bool>(var_0.c.x, var_0.c.x, true, false)), vec4<u32>(var_0.a, var_0.b, var_0.b, 69585u)).b >= _wgslsmith_mod_u32(var_0.a, 14972u)), var_0.c);
    let var_1 = Struct_1(1u, var_0.b << (0u % 32u), select(!select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), var_0.c, vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true)), !vec4<bool>(var_0.c.x, var_0.c.x, true, true), var_0.c.x));
    let var_2 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 54004u), abs(vec2<u32>(var_1.b, 3923u))), _wgslsmith_sub_u32(var_1.a, 55203u) & var_0.a, var_0.a), 4294967295u, var_1.c);
    var_0 = Struct_1(106764u, 1u, select(!var_2.c, vec4<bool>(true, !(!var_1.c.x), true, var_0.c.x), func_1(Struct_2(Struct_1(61708u, 114028u, vec4<bool>(false, true, false, var_2.c.x)), -5890i, -u_input.a, 4294967295u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1237f, 407f))))), var_2, _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a, var_1.a, var_1.b, var_1.a), vec4<u32>(29164u, 4294967295u, var_1.b, var_0.b))).c));
    let var_3 = _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx, vec4<u32>(~func_1(Struct_2(var_2, var_3, 1211i, var_2.b), vec2<f32>(557f, 624f), func_1(Struct_2(var_1, u_input.a, 3267i, var_2.b), vec2<f32>(1141f, -230f), var_1, vec4<u32>(var_1.a, 21312u, 4294967295u, 0u)), vec4<u32>(4754u, 43071u, var_2.a, 8933u) & vec4<u32>(var_0.a, 38303u, var_2.a, var_0.b)).a, ~(~(~22467u)), 35009u, ~_wgslsmith_clamp_u32(41177u, 1u, var_0.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(u_input.b, u_input.b), vec4<i32>(firstLeadingBit(-42006i), 1i, u_input.a ^ -1i, 1i)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3, -1i, u_input.b.x, 43580i), vec4<i32>(2147483647i, -11758i, u_input.b.x, u_input.a)), u_input.b), -vec4<i32>(u_input.b.x, -65158i, 13902i, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-107f, 975f))) * -1000f)), firstTrailingBit(u_input.b.yzy));
}

