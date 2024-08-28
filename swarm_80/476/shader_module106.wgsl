struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>) -> bool {
    global0 = true;
    var var_0 = u_input.a.x >> (41152u % 32u);
    var var_1 = Struct_2(Struct_1(~(select(u_input.a.yy, vec2<u32>(14318u, arg_0.x), arg_1.x) << (u_input.a.xz % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(6111i, 2147483647i) << (vec2<u32>(arg_0.x, 1u) % vec2<u32>(32u)), vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-38232i, 1i), vec2<i32>(-36707i, -36998i))), vec2<i32>(1i, 1i)), arg_0.x, ~max(u_input.a.x ^ 0u, ~69698u)), !(!vec2<bool>(false, all(arg_1.yx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(592f))))), Struct_1(reverseBits(_wgslsmith_sub_vec2_u32(arg_0.zy, vec2<u32>(34594u, u_input.a.x))), max(_wgslsmith_add_vec2_i32(~vec2<i32>(-1i, -11624i), select(vec2<i32>(0i, 1i), vec2<i32>(-25553i, 2147483647i), false)), ~(-vec2<i32>(2147483647i, 0i))), u_input.a.x, 4294967295u << (_wgslsmith_mult_u32(abs(u_input.a.x), 1154u) % 32u)));
    global0 = arg_0.x <= _wgslsmith_dot_vec3_u32(u_input.a, u_input.a);
    let var_2 = vec2<bool>(~countOneBits(_wgslsmith_dot_vec2_i32(var_1.a.b, vec2<i32>(-1397i, -2147483647i))) > var_1.d.b.x, -2147483647i < var_1.d.b.x);
    return true | var_2.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = select(vec3<u32>(~select(u_input.a.x, ~89827u, all(vec2<bool>(false, true))), arg_3, ~75287u), _wgslsmith_add_vec3_u32(u_input.a, reverseBits(_wgslsmith_add_vec3_u32(~u_input.a, abs(u_input.a)))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), arg_1.b.x > 0i), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))));
    global0 = any(!select(vec4<bool>(false, any(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, func_3(vec3<u32>(16919u, var_0.x, 6475u), vec3<bool>(true, false, false))), true));
    var var_1 = arg_1;
    global0 = !(!(false | (arg_3 >= arg_1.a.x)) & (true && all(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0)), -1021f))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-2221f, -877f)), _wgslsmith_f_op_f32(-arg_0), all(vec2<bool>(true, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_0)));
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = 857f;
    global0 = select(false, false, !(!func_3(arg_2.zxy, vec3<bool>(true, arg_0, arg_0)))) & all(select(vec3<bool>(any(vec2<bool>(arg_0, arg_0)), func_3(arg_2.xzx, vec3<bool>(false, arg_0, true)), arg_0 || false), vec3<bool>(42566u > arg_2.x, true, true), !(!vec3<bool>(arg_0, false, arg_0))));
    global0 = false;
    global0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~4294967295u), u_input.a.x), ~(~arg_2.x)) > arg_2.x;
    var var_1 = Struct_2(func_2(-782f, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(804f + -424f) + -795f), Struct_1(~arg_1.a, ~vec2<i32>(arg_1.b.x, -2147483647i), arg_2.x, 58640u), arg_1, _wgslsmith_dot_vec4_u32(arg_2, arg_2)), arg_1, arg_1.a.x), vec2<bool>(arg_0, false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(302f * _wgslsmith_f_op_f32(-var_0)))), Struct_1(arg_2.xw, vec2<i32>(-19954i, -arg_1.b.x ^ 2147483647i), ~arg_2.x, _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(~0u, ~arg_2.x, u_input.a.x, 1u))));
    return _wgslsmith_mod_u32(4294967295u, arg_2.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(~u_input.a.yy ^ u_input.a.zx, firstLeadingBit(firstTrailingBit(~arg_0.a.b)) << (vec2<u32>(firstLeadingBit(arg_0.a.a.x), ~arg_0.d.d) % vec2<u32>(32u)), ~(~func_4(false, func_2(1360f, Struct_1(vec2<u32>(52783u, 9882u), arg_0.a.b, u_input.a.x, 4294967295u), arg_0.d, 42189u), ~vec4<u32>(1u, 75191u, 4294967295u, arg_0.d.c))), 0u);
    var var_1 = max((vec4<i32>(select(-14419i, var_0.b.x, arg_0.b.x), _wgslsmith_mult_i32(arg_0.a.b.x, 1i), arg_0.a.b.x, _wgslsmith_dot_vec2_i32(arg_0.a.b, var_0.b)) ^ vec4<i32>(countOneBits(76963i), firstLeadingBit(var_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -66707i, -4423i), vec3<i32>(2147483647i, var_0.b.x, 39701i)), ~var_0.b.x)) ^ (~select(vec4<i32>(18769i, -9877i, var_0.b.x, arg_0.a.b.x), vec4<i32>(0i, -1i, var_0.b.x, arg_0.a.b.x), arg_0.b.x) & vec4<i32>(arg_0.a.b.x, -var_0.b.x, ~arg_0.d.b.x, arg_0.a.b.x ^ 2147483647i)), vec4<i32>(~select(-27321i, -46674i, arg_0.b.x), arg_0.a.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<i32>(1i, arg_0.d.b.x, arg_0.d.b.x, arg_0.a.b.x)), 1i) ^ (~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.b.x, 5571i, -175i, 0i), vec4<i32>(-1i, -1i, var_0.b.x, 1i), vec4<i32>(1i, arg_0.d.b.x, 2147483647i, arg_0.a.b.x)) & _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.b.x, arg_0.d.b.x, 2147483647i, -2147483647i), vec4<i32>(var_0.b.x, 2601i, -48527i, 2147483647i)), -vec4<i32>(-2147483647i, var_0.b.x, 15431i, 13347i))));
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.d.c, var_2), ~vec2<u32>(0u, 0u))), var_1.yz, 4294967295u, 4294967295u);
    var var_4 = arg_0;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(func_1(Struct_2(Struct_1(u_input.a.xz, vec2<i32>(2147483647i, -2147483647i), 30589u, u_input.a.x), vec2<bool>(false, true), 1294f, Struct_1(u_input.a.yx, vec2<i32>(1i, 0i), u_input.a.x, u_input.a.x))), ~56553u) | firstLeadingBit(~firstLeadingBit(vec2<u32>(u_input.a.x, 30280u))), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(17753i, 12809i))), _wgslsmith_add_vec2_i32(select(vec2<i32>(17408i, 11459i), vec2<i32>(1i, 1i), vec2<bool>(true, false)), vec2<i32>(-1248i, 40134i))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, firstTrailingBit(4294967295u), u_input.a.x, 0u), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), func_4(!func_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(24335u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), max(~vec2<i32>(11955i, -9466i), ~vec2<i32>(56702i, -14449i)), 0u, u_input.a.x), vec4<u32>(~func_1(Struct_2(Struct_1(u_input.a.xx, vec2<i32>(14625i, -1i), 4294967295u, u_input.a.x), vec2<bool>(false, true), 542f, Struct_1(vec2<u32>(45744u, 26394u), vec2<i32>(13227i, 1i), u_input.a.x, 4294967295u))), ~11548u, 26607u, firstLeadingBit(u_input.a.x))));
    var var_1 = Struct_1(var_0.a, vec2<i32>(var_0.b.x, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.b.x, -var_0.b.x), min(-1719i, var_0.b.x))), u_input.a.x & 1340u, ~u_input.a.x);
    var_1 = Struct_1(vec2<u32>(7370u, 0u) & vec2<u32>(~var_1.c, max(~u_input.a.x, ~var_1.d)), var_0.b, var_1.d, ~17266u);
    var var_2 = Struct_1(~var_0.a, ~select(var_1.b, -var_0.b, !select(vec2<bool>(false, false), vec2<bool>(true, true), false)), var_0.d, u_input.a.x);
    var var_3 = Struct_1(var_1.a, abs(abs(~(~vec2<i32>(var_0.b.x, var_2.b.x)))), 66234u, _wgslsmith_div_u32(max(var_2.a.x, ~4294967295u), _wgslsmith_add_u32(var_0.d, u_input.a.x)));
    var_1 = Struct_1(vec2<u32>(select(0u, abs(var_2.a.x) & _wgslsmith_div_u32(var_1.a.x, var_3.d), true), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 74287u, 1406u, var_3.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(16104u, 0u, 18029u, var_1.d)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, var_2.c, 39119u), ~vec4<u32>(67287u, var_3.d, var_2.d, var_3.d), min(vec4<u32>(1u, 26307u, var_0.a.x, 47261u), vec4<u32>(40799u, 11728u, 0u, 15830u))))), ~vec2<i32>(-var_2.b.x, 2147483647i) | var_3.b, abs(var_1.c), func_4(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-854f)) - _wgslsmith_f_op_f32(abs(1452f))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -319f), func_2(-2087f, Struct_1(u_input.a.yx, var_1.b, 4294967295u, u_input.a.x), Struct_1(var_2.a, vec2<i32>(var_3.b.x, -7260i), 13118u, 44141u), var_0.c), func_2(-481f, Struct_1(var_3.a, var_3.b, var_1.c, 21832u), Struct_1(vec2<u32>(0u, var_1.c), vec2<i32>(var_2.b.x, var_2.b.x), 4294967295u, 8157u), var_0.c), _wgslsmith_sub_u32(0u, var_2.d)), Struct_1(~var_3.a, var_0.b, 35164u >> (var_3.a.x % 32u), 1u), var_3.a.x | (u_input.a.x ^ 0u)), ~(vec4<u32>(var_0.a.x, var_0.a.x, var_2.a.x, var_0.d) >> (vec4<u32>(4294967295u, 0u, 0u, 34971u) % vec4<u32>(32u)))));
    let var_4 = vec3<i32>(var_2.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(~1i, -var_0.b.x, -var_0.b.x), -(~(~vec3<i32>(var_1.b.x, var_0.b.x, -2147483647i)))), -1i);
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(var_5.x >> (_wgslsmith_mult_u32(0u, 79638u) % 32u), ~var_5.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, var_3.b.x), _wgslsmith_add_vec2_i32(var_4.yz, vec2<i32>(var_3.b.x, -30328i))), firstTrailingBit(var_4.x)), -43808i), vec4<u32>(reverseBits(u_input.a.x), min(~40058u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 1u, var_0.d, var_2.d), vec4<u32>(65688u, var_0.c, 27336u, 2826u)) >> (func_1(Struct_2(Struct_1(u_input.a.xz, vec2<i32>(var_2.b.x, var_4.x), var_3.d, 1u), vec2<bool>(true, true), -652f, Struct_1(var_1.a, vec2<i32>(2147483647i, var_5.x), 4294967295u, var_1.c))) % 32u)), reverseBits(_wgslsmith_add_u32(4294967295u, ~var_0.a.x)), _wgslsmith_div_u32(~var_1.d, var_3.d)), 13669u);
}

