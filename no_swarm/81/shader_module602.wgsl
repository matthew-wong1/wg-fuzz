struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = Struct_1(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), all(vec3<bool>(false, true, false))), vec2<bool>(_wgslsmith_div_u32(0u, u_input.a.x) >= u_input.a.x, true), true));
    let var_1 = Struct_2(Struct_1(var_0.a));
    let var_2 = var_1.a;
    var_0 = var_1.a;
    let var_3 = !select(!vec3<bool>(true, !var_0.a.x, any(vec2<bool>(var_0.a.x, false))), !select(select(vec3<bool>(var_2.a.x, var_2.a.x, true), vec3<bool>(true, var_1.a.a.x, true), var_0.a.x), select(vec3<bool>(false, false, var_1.a.a.x), vec3<bool>(var_1.a.a.x, var_2.a.x, var_1.a.a.x), vec3<bool>(false, var_1.a.a.x, false)), select(vec3<bool>(false, var_2.a.x, var_2.a.x), vec3<bool>(var_1.a.a.x, true, false), vec3<bool>(false, var_0.a.x, var_2.a.x))), vec3<bool>(true, false, any(!vec3<bool>(true, true, var_1.a.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -760f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_0);
    let var_1 = ~max((_wgslsmith_dot_vec3_u32(u_input.a.wxx, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ 0u) << (_wgslsmith_div_u32(u_input.a.x, 17469u & u_input.a.x) % 32u), ~min(u_input.a.x, countOneBits(4294967295u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-vec3<i32>(18782i, 0i, 22824i), 9627i << (u_input.a.x % 32u), firstLeadingBit(u_input.a.x)))), -1096f, _wgslsmith_div_f32(-1413f, 1633f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1241f), -1000f, 737f))));
    global0 = array<vec2<f32>, 29>();
    var var_3 = countOneBits(~(~_wgslsmith_clamp_vec3_u32(u_input.a.yzw ^ vec3<u32>(17785u, 28608u, var_1), u_input.a.wxw << (vec3<u32>(27952u, var_1, 45299u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.a.wzz, u_input.a.yzy))));
    return Struct_1(select(vec2<bool>(any(arg_0.a), select(var_0.a.a.x, true, arg_0.a.x)), vec2<bool>(var_0.a.a.x == !arg_0.a.x, var_0.a.a.x && (var_3.x < 12895u)), !(!var_0.a.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(710f)), -1625f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1458f, 131f)))) * global0[_wgslsmith_index_u32(65549u, 29u)])));
    global0 = array<vec2<f32>, 29>();
    let var_1 = arg_0.a.x;
    global0 = array<vec2<f32>, 29>();
    var var_2 = func_2(arg_0);
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = vec4<bool>(!any(!select(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(true, arg_1.a.x, false), arg_1.a.x)), arg_1.a.x, arg_1.a.x, all(!vec4<bool>(true, any(vec3<bool>(arg_1.a.x, false, arg_1.a.x)), true == arg_1.a.x, arg_1.a.x)));
    let var_1 = _wgslsmith_f_op_f32(step(-114f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2084f)), arg_0)))));
    let var_2 = -50725i << (_wgslsmith_sub_u32(select(1u, 0u, true), arg_2) % 32u);
    return -2147483647i;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    global0 = array<vec2<f32>, 29>();
    var var_0 = abs(-reverseBits(-arg_0.b.x) & func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-100f)) + 457f), func_4(func_2(Struct_1(vec2<bool>(true, false))), abs(arg_1), -vec3<i32>(-904i, arg_0.a.x, -2226i)), u_input.a.x));
    let var_1 = abs((~arg_1 | vec3<i32>(-2147483647i, arg_1.x, -2147483647i)) & -_wgslsmith_clamp_vec3_i32(min(vec3<i32>(18782i, arg_1.x, 2147483647i), vec3<i32>(arg_1.x, arg_1.x, 0i)), vec3<i32>(1i, arg_1.x, arg_1.x), arg_1));
    let var_2 = Struct_1(!func_4(func_4(Struct_1(vec2<bool>(true, true)), -vec3<i32>(2147483647i, 2147483647i, arg_0.b.x), vec3<i32>(arg_0.b.x, 9010i, 2147483647i)), var_1, _wgslsmith_add_vec3_i32(var_1, var_1)).a);
    var var_3 = Struct_2(func_2(var_2));
    return !var_3.a.a.x;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(40608u, 4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 17266u) ^ u_input.a, ~u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(39191u, u_input.a.x, 13012u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 18616u, u_input.a.x))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), u_input.a.x ^ u_input.a.x)));
    var_0 = countOneBits(u_input.a.x);
    var var_1 = Struct_2(arg_1);
    let var_2 = func_4(arg_1, vec3<i32>(firstTrailingBit(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-129i, 58225i, 14115i, 0i), vec4<i32>(2147483647i, 55383i, -62329i, -7012i)), firstLeadingBit(vec4<i32>(1i, 1i, -29216i, 1i))) ^ -(~22848i), 1i << (u_input.a.x % 32u)), abs(-(~(-vec3<i32>(1i, -30968i, 4034i)))));
    var var_3 = !select(func_4(var_1.a, ~vec3<i32>(1i, 1i, 1i), max(vec3<i32>(9034i, -7789i, -17063i), _wgslsmith_add_vec3_i32(vec3<i32>(32527i, 1i, -17316i), vec3<i32>(0i, 0i, -44163i)))).a, vec2<bool>(!var_1.a.a.x, true), vec2<bool>(arg_0.x, !arg_0.x));
    return Struct_2(func_2(var_1.a));
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -1614f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_0)), var_0);
    var var_2 = true;
    let var_3 = arg_0.a;
    let var_4 = Struct_3(-vec2<i32>(1i, 1i), firstLeadingBit(max(vec2<i32>(0i, 10491i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(77544i, 1i))) >> (~(u_input.a.xx << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_1(func_2(func_2(Struct_1(func_4(arg_0.a, vec3<i32>(var_4.a.x, -1i, -1i), vec3<i32>(var_4.a.x, -25979i, var_4.a.x)).a))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(vec4<bool>(true, any(vec3<bool>(false, false, true)) | false, true, true), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, false), func_1(Struct_3(vec2<i32>(-29526i, 32767i), vec2<i32>(0i, 953i)), vec3<i32>(2147483647i, 2147483647i, 18907i))))));
    var var_1 = var_0;
    var var_2 = ((u_input.a >> (u_input.a % vec4<u32>(32u))) | ~u_input.a) & ~min(u_input.a >> (u_input.a % vec4<u32>(32u)), vec4<u32>(~19901u, u_input.a.x, abs(24729u), ~20138u));
    let var_3 = _wgslsmith_div_u32(~_wgslsmith_add_u32(abs(1u), (u_input.a.x ^ u_input.a.x) ^ abs(1u)), ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(29802u, var_2.x, var_2.x), u_input.a.zxw), _wgslsmith_add_vec3_u32(u_input.a.yzy, vec3<u32>(u_input.a.x, var_2.x, 48065u)))));
    let var_4 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2583i, 37248i, -2147483647i, 23748i), vec4<i32>(32789i, -34340i, -14173i, -2147483647i)), _wgslsmith_sub_i32(2147483647i, 2147483647i)), min(firstLeadingBit(-1i), abs(-1i))), -(~(-countOneBits(vec2<i32>(5044i, 2147483647i)))));
    let var_5 = _wgslsmith_f_op_f32(round(746f));
    var_2 = select(vec4<u32>(~4294967295u, var_2.x, 22616u, firstTrailingBit(u_input.a.x)), abs(max(vec4<u32>(1u, u_input.a.x, var_3, _wgslsmith_div_u32(46061u, 37909u)), u_input.a)), !select(vec4<bool>(var_1.a.x, false, !var_1.a.x, any(vec3<bool>(true, true, var_0.a.x))), select(select(vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(true, var_0.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_0.a.x, var_1.a.x, var_1.a.x, true)), !vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, var_1.a.x), true), any(vec4<bool>(true, var_1.a.x, false, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, var_2.x, vec4<i32>(var_4, abs(-2147483647i), _wgslsmith_div_i32(_wgslsmith_div_i32(~var_4, _wgslsmith_clamp_i32(11122i, 2147483647i, 0i)), _wgslsmith_div_i32(var_4, func_5(var_5, var_0, var_3))), ~23831i), ~select(select(vec3<i32>(var_4, 19282i, -1i), firstLeadingBit(vec3<i32>(var_4, var_4, 1i)), all(vec4<bool>(var_0.a.x, var_0.a.x, true, true))), max(vec3<i32>(1i, 2147483647i, var_4) ^ vec3<i32>(31608i, var_4, 4147i), min(vec3<i32>(2965i, -2147483647i, var_4), vec3<i32>(-29859i, var_4, -1i))), var_1.a.x), vec3<i32>(-2147483647i, (i32(-1i) * -var_4) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, var_3), var_2.yy)) % 32u), var_4));
}

