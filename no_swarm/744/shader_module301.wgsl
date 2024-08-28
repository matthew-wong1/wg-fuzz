struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: array<Struct_3, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(~select(vec4<i32>(abs(u_input.a.x), arg_0.c | global0.x, u_input.a.x, _wgslsmith_div_i32(u_input.b.x, 2147483647i)), countOneBits(vec4<i32>(-1494i, u_input.c, global0.x, global0.x)), !arg_0.b.x), _wgslsmith_f_op_vec4_f32(round(arg_0.d.b)));
    let var_1 = arg_0;
    let var_2 = abs(~vec3<u32>(1u, ~(~1u), abs(_wgslsmith_sub_u32(51622u, 0u))));
    let var_3 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(394f, arg_0.a.b.x, 821f, var_1.d.b.x))))), vec2<bool>(all(select(!vec3<bool>(arg_0.b.x, var_1.b.x, false), vec3<bool>(true, false, arg_0.b.x), vec3<bool>(true, true, true))), !var_1.b.x), -1i & (var_0.a.x << (var_2.x % 32u)), var_1.d);
    let var_4 = _wgslsmith_mod_vec4_i32(-((vec4<i32>(9182i, var_0.a.x, 0i, -18663i) & vec4<i32>(arg_0.a.a.x, u_input.b.x, -31822i, -1i)) & select(vec4<i32>(69766i, 1i, var_1.a.a.x, var_0.a.x), vec4<i32>(-9173i, 1i, -2147483647i, 0i), !vec4<bool>(false, false, arg_0.b.x, false))), vec4<i32>(~1i, select(~(-1i), var_3.c, var_2.x < var_2.x) >> (min(firstTrailingBit(4294967295u), 4294967295u) % 32u), var_1.d.a.x, ((var_3.a.a.x | arg_0.d.a.x) & _wgslsmith_sub_i32(1i, u_input.c)) | _wgslsmith_clamp_i32(u_input.b.x, -1i, countOneBits(11959i))));
    return var_3.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = _wgslsmith_add_vec3_i32(arg_0.a.a.wzw, u_input.b.xwx) | min(countOneBits(~_wgslsmith_clamp_vec3_i32(arg_0.d.a.xzz, arg_0.a.a.yyw, u_input.b.wxz)), arg_1.a.xzw);
    let var_0 = -170f;
    global2 = array<Struct_3, 7>();
    var var_1 = countOneBits(-_wgslsmith_mult_vec4_i32(arg_1.a, vec4<i32>(global0.x, arg_2.a.a.x, arg_0.c, global0.x) << (vec4<u32>(26462u, 0u, 22439u, 23305u) % vec4<u32>(32u)))) | arg_0.d.a;
    return -1534f;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global1 = array<vec2<u32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f + 1747f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<i32>(0i, global0.x, global0.x, global0.x), vec4<f32>(-1748f, 1935f, 732f, 1413f)), vec2<bool>(true, true), arg_0.x, Struct_1(vec4<i32>(-65796i, 18314i, -1087i, -2147483647i), vec4<f32>(-267f, 1612f, 1571f, 814f))), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, 1i, 20691i), u_input.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1967f, -163f, -1176f, 925f)))), Struct_2(Struct_1(vec4<i32>(u_input.b.x, -2147483647i, global0.x, arg_0.x), vec4<f32>(1443f, -1611f, -605f, 1609f)), func_3(Struct_2(Struct_1(vec4<i32>(global0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-1652f, -258f, 1546f, -365f)), vec2<bool>(true, false), arg_0.x, Struct_1(vec4<i32>(0i, 2147483647i, 20006i, u_input.c), vec4<f32>(-956f, -934f, -1000f, -584f)))), 20179i, Struct_1(vec4<i32>(u_input.a.x, 22043i, -2147483647i, u_input.a.x), vec4<f32>(1000f, 244f, -555f, 533f)))))));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 1u) | firstTrailingBit(select(countOneBits(_wgslsmith_add_u32(0u, 4294967295u)), 1u, true)), 7u)];
    let var_2 = Struct_1(vec4<i32>(global0.x, ~(~u_input.b.x), firstLeadingBit(-17128i), 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_1.c.b)), vec4<f32>(158f, var_1.c.b.x, _wgslsmith_f_op_f32(exp2(var_1.b.a.b.x)), var_1.c.b.x))));
    global1 = array<vec2<u32>, 12>();
    return Struct_1(vec4<i32>(-(~(-2147483647i)), ~(-18733i ^ var_2.a.x), -2147483647i, select(-var_1.b.a.a.x, ~2147483647i, !any(vec4<bool>(var_1.b.b.x, true, var_1.a, false)))), _wgslsmith_f_op_vec4_f32(-var_1.b.a.b));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-389f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.d.b.x, -716f)), -635f));
    let var_3 = vec2<i32>(~arg_1.c, -_wgslsmith_mult_i32(arg_0, arg_1.d.a.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1725f * -1071f) + _wgslsmith_f_op_f32(798f - var_0.d.b.x)))));
    return func_2(select(vec2<i32>(select(global0.x, -42668i, var_0.b.x) ^ arg_1.d.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.x, -2147483647i, u_input.a.x), u_input.b)), abs(abs(vec2<i32>(1i, -86354i))), vec2<bool>((var_0.b.x && var_1) || select(true, false, var_1), any(!vec4<bool>(true, true, var_1, var_0.b.x)))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = vec3<bool>(true, true, !all(vec4<bool>(true, true, true, true)) && !all(vec2<bool>(true, true)));
    let var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u >> (min(12673u, arg_0) % 32u), arg_0), 7u)];
    var_2 = Struct_3(!(!all(var_2.b.b)), Struct_2(var_2.b.a, !var_2.b.b, 22116i, Struct_1(vec4<i32>(1i, -u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(59724i, u_input.a.x, global0.x), vec3<i32>(28334i, global0.x, global0.x)), -15307i), var_2.c.b)), Struct_1(countOneBits(max(vec4<i32>(-1i, 1i, global0.x, -33770i), var_2.b.d.a)) << (vec4<u32>(var_2.d, 1u, ~var_2.d, _wgslsmith_mult_u32(1u, arg_0)) % vec4<u32>(32u)), var_2.c.b), 25928u, true);
    var_2 = Struct_3(false, Struct_2(func_5(-6182i, Struct_2(func_2(vec2<i32>(global0.x, -2147483647i)), !vec2<bool>(var_1, var_1), ~24706i, Struct_1(u_input.b, var_2.c.b))), !var_2.b.b, var_2.c.a.x, func_5(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.b.wy), var_2.b)), var_2.b.d, 0u, !any(vec4<bool>(var_0.x, !var_1, true, !var_2.e)));
    return global2[_wgslsmith_index_u32(~arg_0, 7u)];
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    global2 = array<Struct_3, 7>();
    var var_0 = arg_1.b.d.b.x;
    let var_1 = arg_2;
    global1 = array<vec2<u32>, 12>();
    global1 = array<vec2<u32>, 12>();
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(func_6(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 48124u), false), vec4<u32>(0u, 4294967295u, 69294u, 28346u)), vec4<u32>(1u, ~24338u, _wgslsmith_dot_vec4_u32(vec4<u32>(55015u, 1u, 1u, 1u), vec4<u32>(16474u, 37099u, 1u, 18526u)), ~0u)), func_1(~(~83421u)), vec4<bool>(select(all(vec2<bool>(false, true)), true, false), true, func_1(1u).a, any(vec3<bool>(false, false, true)) || true)), !(!func_3(Struct_2(Struct_1(u_input.b, vec4<f32>(724f, 159f, 756f, 1131f)), vec2<bool>(true, true), global0.x, Struct_1(vec4<i32>(u_input.b.x, global0.x, global0.x, 0i), vec4<f32>(761f, -140f, 2120f, 651f))))), global0.x, Struct_1(vec4<i32>(~4417i >> (_wgslsmith_clamp_u32(45276u, 32227u, 30042u) % 32u), 1i, 22644i, ~1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-818f, -2315f, -1345f, -422f) * vec4<f32>(144f, -792f, -330f, -621f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-882f, 1208f, -1000f, 1073f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2074f, 235f, 565f, 302f) - vec4<f32>(950f, 995f, 897f, -464f)) * func_1(0u).b.d.b))));
    let var_2 = _wgslsmith_f_op_f32(step(var_1.d.b.x, 561f));
    var var_3 = Struct_3(all(vec2<bool>(all(!var_1.b), !(var_1.b.x || false))), var_1, Struct_1(vec4<i32>(-29570i, var_1.c, -global0.x, func_6(vec4<u32>(4294967295u, 45326u, 75956u, 70767u), Struct_3(true, Struct_2(Struct_1(u_input.b, var_1.a.b), vec2<bool>(true, var_1.b.x), global0.x, Struct_1(vec4<i32>(-1i, global0.x, 41813i, 3603i), var_1.d.b)), Struct_1(var_1.a.a, vec4<f32>(-797f, var_2, var_1.a.b.x, var_1.d.b.x)), 5682u, true), !vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true)).a.x), func_1(_wgslsmith_mod_u32(~96249u, select(3380u, 23958u, var_1.b.x))).b.d.b), 1u, !(var_1.b.x & var_1.b.x));
    let var_4 = vec2<bool>(true, !(~(~4294967295u) == (~1u | ~var_3.d)));
    var_3 = global2[_wgslsmith_index_u32(~var_3.d, 7u)];
    var var_5 = vec4<f32>(1404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1318f - var_3.b.d.b.x)), _wgslsmith_div_f32(var_3.c.b.x, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1317f - -1433f)))))));
    let var_6 = Struct_2(var_3.c, var_1.b, ~(~func_1(var_3.d).b.a.a.x), Struct_1(max(func_5(_wgslsmith_sub_i32(var_3.c.a.x, var_3.b.a.a.x), var_3.b).a, min(vec4<i32>(-2147483647i, var_1.c, 12090i, 0i), -vec4<i32>(-21773i, -12758i, 1i, -2147483647i))), _wgslsmith_f_op_vec4_f32(round(func_6(vec4<u32>(var_3.d, 1429u, var_3.d, 4294967295u), Struct_3(true, var_3.b, var_3.c, 54728u, false), !vec4<bool>(false, var_4.x, false, var_1.b.x)).b))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(select(_wgslsmith_clamp_i32(func_2(u_input.a).a.x, var_1.a.a.x, var_3.b.c), var_1.a.a.x, var_3.b.b.x), var_1).a.x);
}

