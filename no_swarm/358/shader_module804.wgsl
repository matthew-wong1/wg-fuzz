struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(0u, 18147u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(277f - arg_0.x));
    return ~_wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, 0i, 14976i), -vec3<i32>(-6148i, -1i, 0i), -vec3<i32>(-15364i, 32115i, -57908i)), ~vec3<i32>(-7205i, _wgslsmith_dot_vec3_i32(vec3<i32>(-33764i, 2147483647i, -1i), vec3<i32>(1i, -2147483647i, -35563i)), -33134i));
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_0 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1021f, -1456f, 421f), vec3<f32>(535f, -1720f, -1000f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(864f, -1227f, -2080f) + vec3<f32>(532f, -1000f, -947f))))), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(true, true)), true, true)), ~vec3<u32>(~global0[_wgslsmith_index_u32(4294967295u, 2u)], ~u_input.a.x, 26286u), any(vec3<bool>(true, true, true)) | all(vec2<bool>(true, false)), reverseBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 6998u, 64516u), vec3<u32>(56135u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]) << (vec3<u32>(u_input.a.x, 3085u, global0[_wgslsmith_index_u32(20346u, 2u)]) % vec3<u32>(32u))))));
    global0 = array<u32, 2>();
    let var_1 = -(vec3<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), abs(vec4<i32>(-23648i, -2147483647i, 17409i, 31590i))), 2147483647i) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, countOneBits(20375u), u_input.a.x), ~vec3<u32>(28297u, 1u, 1u)) % vec3<u32>(32u)));
    return Struct_2(abs(~select(vec2<i32>(var_0.x, var_0.x), var_0.zy, false)) ^ vec2<i32>(var_1.x, 2147483647i), vec3<u32>(~(~0u), ~u_input.a.x, ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32561u, 2u)] & global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)] ^ 1u)), vec3<f32>(1f, 1f, 1f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_0.a.x;
    let var_1 = Struct_1(vec3<bool>(arg_3.c, any(vec2<bool>(arg_2, true)), true), _wgslsmith_sub_vec3_u32(~(firstTrailingBit(arg_1.b) ^ select(vec3<u32>(1u, 37722u, arg_0.b.x), vec3<u32>(0u, 1u, arg_0.b.x), arg_3.a)), ~vec3<u32>(arg_3.d.x, 69917u, 1u) << (~min(vec3<u32>(30614u, 1u, arg_1.d.x), vec3<u32>(1u, arg_3.b.x, 26823u)) % vec3<u32>(32u))), !(_wgslsmith_mod_u32(arg_3.b.x, 1u) != arg_3.d.x), arg_3.d);
    var var_2 = select(_wgslsmith_clamp_u32(1u, 62350u | ~var_1.d.x, firstTrailingBit(_wgslsmith_mod_u32(var_1.d.x, 9065u))), ~_wgslsmith_mult_u32(~arg_1.b.x, global0[_wgslsmith_index_u32(60918u, 2u)] & var_1.d.x), true) < arg_1.d.x;
    let var_3 = Struct_1(select(vec3<bool>(arg_1.c, true, any(vec2<bool>(var_1.c, arg_3.c)) && true), vec3<bool>(arg_1.a.x, var_1.a.x, var_1.c), false), arg_1.b, arg_3.c, vec3<u32>(u_input.a.x, 21748u, ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~4294967295u, 2u)], reverseBits(arg_3.b.x))));
    let var_4 = !(!(!(!(!vec4<bool>(false, arg_3.c, false, false)))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_0 = Struct_2(~(-select(arg_0.a, vec2<i32>(arg_1.x, arg_1.x) ^ arg_1, true)), ~reverseBits(arg_0.b) << (firstTrailingBit(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~16847u, 2u)], 2u)], 36195u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-arg_0.c));
    var var_1 = Struct_2(abs(vec2<i32>(var_0.a.x, -59561i)), arg_0.b | ~(~(~vec3<u32>(4294967295u, arg_0.b.x, 1u))), var_0.c);
    return Struct_2(var_0.a ^ (~(var_1.a & arg_1) & _wgslsmith_clamp_vec2_i32(var_0.a, ~vec2<i32>(arg_0.a.x, 1687i), vec2<i32>(arg_2, var_1.a.x))), ~vec3<u32>(68665u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_1.b.x, 2u)], 4294967295u), ~var_1.b.zy), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 29674u), vec2<u32>(arg_0.b.x, 1u)), ~1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(-409f + -535f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f - -662f) - 1f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(func_2().c, _wgslsmith_f_op_vec3_f32(trunc(var_1.c))), arg_0.c, any(vec3<bool>(true, true, true))))));
}

fn func_1(arg_0: vec4<u32>) -> vec3<i32> {
    global0 = array<u32, 2>();
    let var_0 = func_5(Struct_2(_wgslsmith_clamp_vec2_i32(func_4(func_2(), Struct_1(vec3<bool>(true, true, true), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.a.x), true, arg_0.wwz), false, Struct_1(vec3<bool>(true, false, true), arg_0.xwy, true, arg_0.xzw)), _wgslsmith_sub_vec2_i32(vec2<i32>(5350i, -97310i), vec2<i32>(14561i, 18185i)), -vec2<i32>(1i, -8037i)), vec3<u32>(_wgslsmith_sub_u32(min(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(37915u, 2u)]), 47250u >> (global0[_wgslsmith_index_u32(76913u, 2u)] % 32u)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19818u, 56248u, u_input.a.x, 63813u), vec4<u32>(18673u, u_input.a.x, u_input.a.x, 61461u)), 2u)], ~61805u), 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(765f, -1212f, 593f) + vec3<f32>(828f, -443f, 323f))))), vec2<i32>(-1i) * -vec2<i32>(0i, 1i), -2147483647i);
    var var_1 = 79625u;
    var var_2 = Struct_1(!select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), true), vec3<u32>(_wgslsmith_sub_u32(min(~0u, 1u), 1u), 24473u, ~0u), !((_wgslsmith_add_u32(var_0.b.x, u_input.a.x) != ~48568u) && true), _wgslsmith_sub_vec3_u32(((arg_0.yxw >> (var_0.b % vec3<u32>(32u))) & select(arg_0.yww, var_0.b, true)) << (~(~var_0.b) % vec3<u32>(32u)), var_0.b));
    var_1 = select(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(abs(4294967295u), 2u)], func_5(var_0, var_0.a, firstLeadingBit(var_0.a.x) & -var_0.a.x).b.x), u_input.a.x, !(!var_2.a.x));
    return ~(select(vec3<i32>(-var_0.a.x, 1i, ~var_0.a.x), ~vec3<i32>(2147483647i, var_0.a.x, -1i) >> ((var_2.d ^ arg_0.yzw) % vec3<u32>(32u)), var_2.a.x) ^ func_3(var_0.c, Struct_1(select(var_2.a, vec3<bool>(var_2.a.x, false, var_2.c), var_2.c), _wgslsmith_add_vec3_u32(var_0.b, vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(var_2.b.x, 2u)], u_input.a.x)), var_2.a.x & var_2.c, vec3<u32>(4294967295u, 4294967295u, var_0.b.x) >> (var_2.b % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(func_1(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 14481u, 1u)), -select(vec3<i32>(1i, 35043i, 0i), vec3<i32>(-2147483647i, 2147483647i, -2147483647i), false), countOneBits(vec3<i32>(0i, 57535i, -13422i)))), func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-151f, 238f, 300f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1251f, 563f, 959f))))), Struct_1(vec3<bool>(false, false, true), firstTrailingBit(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3051u, 2u)], 2u)], u_input.a.x)), true, max(vec3<u32>(u_input.a.x, 25414u, 1u), vec3<u32>(3310u, u_input.a.x, 46029u)))).x ^ 1i);
    global0 = array<u32, 2>();
    let var_1 = vec3<bool>(any(vec4<bool>(true, all(vec4<bool>(false, false, true, false)), true, true)) || true, true, any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1589f)) + -1112f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-819f, func_2().c.x)))));
    global0 = array<u32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(0u, 2u)], func_5(func_5(Struct_2(max(vec2<i32>(1i, 1628i), vec2<i32>(-15129i, 0i)), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)], u_input.a.x, u_input.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, var_2), vec3<f32>(var_2, var_2, -388f))), -func_5(Struct_2(vec2<i32>(1i, 0i), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(29285u, 2u)], 21807u), vec3<f32>(533f, var_2, 963f)), vec2<i32>(43391i, 1i), -19805i).a, func_5(func_5(Struct_2(vec2<i32>(-2147483647i, -22100i), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)], 36311u), vec3<f32>(var_2, 1051f, 112f)), vec2<i32>(8442i, -1i), -21548i), -vec2<i32>(19280i, 14826i), abs(-6718i)).a.x), vec2<i32>(1i, _wgslsmith_add_i32(func_2().a.x, i32(-1i) * -28411i)), select(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-14361i, 2147483647i), vec2<i32>(-1i, 0i) >> (u_input.a % vec2<u32>(32u))), true && any(vec4<bool>(true, true, false, var_1.x)))).c.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1147f), -929f), -vec4<i32>(36182i, 0i, _wgslsmith_mult_i32(1i, i32(-1i) * -1i), 2147483647i));
}

