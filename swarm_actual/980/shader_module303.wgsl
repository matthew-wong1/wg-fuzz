struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: vec3<u32>;

var<private> global1: bool = true;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global1 = true | !(!(!all(vec3<bool>(false, false, true))));
    var var_0 = vec4<i32>(u_input.e, -(~(-15621i)), ~_wgslsmith_clamp_i32(2147483647i, arg_1.c.x, _wgslsmith_clamp_i32(-67751i, u_input.d.x, arg_1.e) << (~37581u % 32u)), _wgslsmith_mult_i32(~1i, 58158i));
    var_0 = _wgslsmith_mult_vec4_i32(max(_wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, arg_1.e, -40030i, u_input.d.x), vec4<i32>(u_input.e, var_0.x, var_0.x, -2147483647i), vec4<i32>(-1i, -888i, 1775i, 71136i)), vec4<i32>(-163i, arg_1.c.x, var_0.x, var_0.x) << (arg_2 % vec4<u32>(32u))), max(vec4<i32>(_wgslsmith_mult_i32(arg_1.e, arg_1.e), var_0.x, var_0.x, 29942i), vec4<i32>(14883i, firstLeadingBit(var_0.x), arg_1.e, var_0.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(select(arg_1.c, vec3<i32>(var_0.x, -1i, arg_1.c.x), true)), vec3<i32>(-1i) * -vec3<i32>(arg_1.e, -10481i, arg_1.e)), _wgslsmith_div_i32((u_input.e >> (46303u % 32u)) & _wgslsmith_mult_i32(-19975i, 1i), var_0.x), -21497i, _wgslsmith_div_i32(-(i32(-1i) * -37158i), -1i)));
    var var_1 = reverseBits(abs(0i));
    let var_2 = _wgslsmith_dot_vec4_u32(countOneBits(arg_1.b), _wgslsmith_add_vec4_u32(firstLeadingBit(arg_1.b), ~vec4<u32>(arg_2.x << (arg_1.b.x % 32u), _wgslsmith_clamp_u32(0u, arg_2.x, 56284u), 4294967295u, 4294967295u)));
    return _wgslsmith_f_op_f32(-arg_1.d.x);
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f * 675f) - -1133f) * _wgslsmith_f_op_f32(func_3(vec2<f32>(611f, 125f), Struct_1(global0.x, vec4<u32>(4294967295u, global0.x, 1u, u_input.c), vec3<i32>(-1i, 8056i, -1i), vec3<f32>(1805f, -1572f, 1197f), 2147483647i), vec4<u32>(global0.x, 15147u, arg_0, 45502u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(800f))))));
    let var_1 = true;
    global1 = var_1;
    var var_2 = _wgslsmith_mod_u32(u_input.c, 0u);
    var var_3 = true;
    return i32(-1i) * -u_input.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = -1988f;
    let var_1 = ~vec2<i32>(arg_0.e, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(max(arg_2.e, arg_2.c.x), -u_input.d.x)));
    global1 = !(arg_0.d.x == arg_2.d.x) && arg_3;
    let var_2 = !select(vec3<bool>(true, any(select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(arg_3, arg_3, arg_3), arg_3)), arg_0.d.x <= 683f), select(select(vec3<bool>(arg_3, false, true), !vec3<bool>(arg_3, arg_3, arg_3), !vec3<bool>(true, arg_3, arg_3)), select(select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, arg_3), true), select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, false, true)), arg_3), select(!vec3<bool>(true, true, arg_3), select(vec3<bool>(false, false, true), vec3<bool>(arg_3, arg_3, false), arg_3), select(vec3<bool>(arg_3, true, true), vec3<bool>(arg_3, arg_3, false), arg_3))), select(!vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, select(arg_3, true, arg_3), true), arg_3));
    global0 = u_input.a.yzx;
    return arg_2;
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_1(global0.x, vec4<u32>(select(~u_input.a.x, 3707u, true), 0u, u_input.b.x ^ 7962u, 0u), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -12947i, u_input.e, -1i), ~vec4<i32>(-2147483647i, u_input.e, -1i, u_input.d.x)), _wgslsmith_div_i32(func_2(74908u), u_input.d.x), u_input.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, -3654f, -1723f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1184f, -1000f, -188f))), u_input.e), ~abs(min(u_input.a, vec4<u32>(0u, u_input.c, 0u, u_input.b.x))) ^ u_input.a, Struct_1(4294967295u, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, global0.x, 1u, 10961u)), ~vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.b.x), countOneBits(u_input.a)), u_input.a), firstLeadingBit(vec3<i32>(~5856i, u_input.e, select(u_input.d.x, -6887i, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1123f, -530f, 2716f))) + vec3<f32>(-474f, 1837f, 782f))), select(0i, abs(firstTrailingBit(u_input.d.x)), false)), false);
    global0 = firstTrailingBit(~vec3<u32>(95295u, 4294967295u, ~_wgslsmith_div_u32(28707u, global0.x)));
    let var_1 = func_4(Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, u_input.c, 4294967295u), u_input.a)), vec4<u32>(~(~global0.x), global0.x, global0.x, _wgslsmith_mult_u32(~u_input.a.x, u_input.c)), vec3<i32>(1i, -22727i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, -57661i, var_0.c.x), firstLeadingBit(vec4<i32>(0i, var_0.c.x, -4936i, 0i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, -102f, var_0.d.x) * var_0.d))), -34561i), min(~(~var_0.b), firstLeadingBit(vec4<u32>(countOneBits(1u), _wgslsmith_mult_u32(47161u, u_input.b.x), max(1u, 81293u), global0.x))), func_4(func_4(Struct_1(_wgslsmith_dot_vec3_u32(var_0.b.xyy, vec3<u32>(u_input.b.x, global0.x, var_0.b.x)), func_4(Struct_1(4810u, vec4<u32>(4294967295u, 0u, 4294967295u, u_input.c), vec3<i32>(var_0.c.x, var_0.e, -2147483647i), var_0.d, 67622i), u_input.a, Struct_1(99285u, u_input.a, vec3<i32>(var_0.c.x, u_input.e, var_0.e), var_0.d, 2147483647i), true).b, vec3<i32>(1i, var_0.c.x, 3625i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -195f, 1189f)), -1i), ~select(var_0.b, vec4<u32>(global0.x, var_0.b.x, 1u, 0u), true), func_4(Struct_1(u_input.b.x, var_0.b, vec3<i32>(var_0.c.x, u_input.e, var_0.e), vec3<f32>(var_0.d.x, var_0.d.x, 1732f), 50323i), var_0.b, Struct_1(u_input.c, vec4<u32>(u_input.b.x, 109131u, 4294967295u, 1u), var_0.c, var_0.d, var_0.e), true), true), ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), vec4<u32>(u_input.c, 4294967295u, 58577u, 21948u)), func_4(Struct_1(firstTrailingBit(global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 52760u, var_0.a, var_0.a), var_0.b), vec3<i32>(1i, 4654i, var_0.c.x), vec3<f32>(var_0.d.x, var_0.d.x, -1373f), ~(-1i)), u_input.a, Struct_1(55488u, ~vec4<u32>(1u, var_0.a, 0u, 51744u), var_0.c | vec3<i32>(-27154i, u_input.d.x, u_input.d.x), vec3<f32>(-226f, -2244f, var_0.d.x), var_0.e), !select(true, false, true)), !any(vec3<bool>(true, false, false)) | !all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(trunc(-1085f)))))) != _wgslsmith_f_op_f32(var_0.d.x + 1f));
    let var_2 = ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.x, abs(0i)), vec2<i32>(var_1.c.x, 1i));
    global0 = vec3<u32>(6515u, ~firstLeadingBit(global0.x) << (var_1.a % 32u), _wgslsmith_clamp_u32(min(~_wgslsmith_dot_vec3_u32(var_1.b.wwx, u_input.b), _wgslsmith_add_u32(var_1.a, 0u)), u_input.b.x, select(9863u << (~var_0.b.x % 32u), 1u, true)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.xy), vec2<u32>(~_wgslsmith_add_u32(26424u, u_input.c), ~abs(global0.x))), abs(u_input.a), vec3<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 0i, -1i, -26441i), vec4<i32>(i32(-1i) * -2147483647i, u_input.d.x, ~(-24809i), -6644i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.e), vec3<i32>(u_input.e, 1i, u_input.d.x))) << (func_1() % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, 336f, -1412f)) * vec3<f32>(-758f, -194f, -382f)))), 0i);
    var var_1 = func_4(func_4(Struct_1(var_0.b.x, ~vec4<u32>(4294967295u, var_0.a, 2027u, 1u), reverseBits(var_0.c), var_0.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e, 10035i), var_0.c.yz)), min(vec4<u32>(64665u, var_0.a & 0u, _wgslsmith_add_u32(1u, var_0.a), 1u), var_0.b), Struct_1(1u, vec4<u32>(_wgslsmith_sub_u32(global0.x, 59231u), ~1u, ~61060u, global0.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, -13882i, u_input.d.x), vec3<i32>(44537i, -1i, -90157i), vec3<i32>(u_input.d.x, -9463i, var_0.e)), var_0.d, 46340i), false), countOneBits(~min(~u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 5110u, 4294967295u), vec4<u32>(u_input.b.x, var_0.a, 2170u, 0u)))), Struct_1(max(global0.x, _wgslsmith_sub_u32(67388u, _wgslsmith_clamp_u32(var_0.b.x, global0.x, 0u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(18731u, 1u, 4548u, u_input.a.x), var_0.b) << (u_input.a % vec4<u32>(32u)), var_0.c, _wgslsmith_f_op_vec3_f32(floor(func_4(Struct_1(u_input.b.x, vec4<u32>(0u, 88879u, u_input.b.x, 1u), vec3<i32>(var_0.c.x, 2147483647i, -2147483647i), vec3<f32>(var_0.d.x, var_0.d.x, 215f), -2979i), var_0.b, func_4(Struct_1(4294967295u, vec4<u32>(4294967295u, global0.x, 18660u, global0.x), var_0.c, vec3<f32>(153f, var_0.d.x, var_0.d.x), 2147483647i), u_input.a, Struct_1(112887u, var_0.b, vec3<i32>(23458i, 0i, -2147483647i), var_0.d, u_input.e), false), any(vec4<bool>(false, true, false, true))).d)), ~func_4(Struct_1(u_input.a.x, u_input.a, vec3<i32>(u_input.e, 40178i, var_0.c.x), vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), u_input.e), _wgslsmith_mult_vec4_u32(var_0.b, var_0.b), Struct_1(4294967295u, u_input.a, vec3<i32>(-34345i, -16201i, -80802i), var_0.d, u_input.d.x), false).e), !(!(var_0.a >= 52889u) & true));
    global0 = ~vec3<u32>(1u, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1.b.xw, var_0.b.wx)), ~reverseBits(1u));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(25078u, 30636u, ~var_0.a, ~(1u | global0.x)), ~vec4<u32>(~0u, _wgslsmith_clamp_u32(~var_1.a, global0.x, u_input.b.x), _wgslsmith_mult_u32(0u, global0.x) & u_input.a.x, ~abs(77163u)));
    let var_3 = Struct_1(27122u, vec4<u32>(u_input.c, func_1(), 144293u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, ~4294967295u, u_input.b.x), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(global0.x, u_input.a.x, var_1.a)), ~vec3<u32>(var_1.a, 1u, var_1.a)))), var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(-250f + var_1.d.x), -1732f) * var_1.d) - _wgslsmith_f_op_vec3_f32(select(var_1.d, _wgslsmith_f_op_vec3_f32(sign(var_0.d)), vec3<bool>(true, true, true)))), 34669i);
    global1 = any(select(vec2<bool>(select(true, true, any(vec3<bool>(true, true, true))), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), 69081u != global0.x), select(vec2<bool>(false, true), vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(all(vec3<bool>(false, false, false)), false))));
    let var_4 = func_4(var_3, var_3.b, var_3, false);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(8946i, var_1.e, u_input.d.x, -58078i)), -vec4<i32>(u_input.d.x, -11467i, var_5.e, var_5.e)), vec4<i32>(firstTrailingBit(1i), -2147483647i & var_3.e, _wgslsmith_sub_i32(var_3.e, -24273i), -6448i))));
}

