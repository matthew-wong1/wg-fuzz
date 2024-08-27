struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(32853i, 67859i, i32(-2147483648)), vec3<i32>(2147483647i, -11071i, 2147483647i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-1i, -1i, -11553i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(-7057i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -10258i, -38538i), vec3<i32>(1i, 32027i, 1i), vec3<i32>(18308i, -63354i, i32(-2147483648)), vec3<i32>(7707i, 23544i, -5146i), vec3<i32>(10227i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 0i, 733i), vec3<i32>(-23259i, -1i, -1i), vec3<i32>(-15409i, 2147483647i, 1i), vec3<i32>(1i, 58548i, -1i), vec3<i32>(-2142i, 0i, -1i), vec3<i32>(2147483647i, 30910i, 0i), vec3<i32>(20008i, 2147483647i, 54250i), vec3<i32>(30559i, i32(-2147483648), -13201i), vec3<i32>(-42885i, 49311i, 18251i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(8002i, -19729i, 0i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_4 {
    global0 = array<vec3<i32>, 22>();
    let var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_3.x, 1u), ~0u | arg_1.a.a), 0u, arg_1.b) << (arg_3 % vec3<u32>(32u));
    let var_1 = vec4<i32>(u_input.a.x, -1i, max(-4017i, ~arg_1.a.d.x), 1i);
    var var_2 = arg_1.c;
    var_2 = false;
    return Struct_4(Struct_3(~arg_2.a, arg_2.b, arg_2.a.x >> ((7397u << (~arg_3.x % 32u)) % 32u)), Struct_2(!(!arg_1.a.b.x), arg_1.a, arg_1.a, arg_1.a.b.x && true), -firstTrailingBit(countOneBits(_wgslsmith_clamp_i32(1i, arg_1.a.d.x, 1i))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = func_2(select(!vec2<bool>(!arg_0.b.c.c.x, true), vec2<bool>(all(arg_0.b.b.c), true), func_2(!func_2(vec2<bool>(false, false), Struct_5(Struct_1(0u, arg_0.b.c.b, arg_0.b.b.b.yy, arg_0.b.c.d, arg_0.b.b.e), 6744u, arg_0.b.b.b.x), Struct_3(vec4<u32>(arg_0.b.c.a, arg_0.a.c, 1u, arg_0.a.a.x), vec3<f32>(1556f, arg_0.b.c.e, arg_0.b.c.e), arg_0.b.b.a), arg_0.a.a.www).b.b.c, Struct_5(func_2(vec2<bool>(false, arg_0.b.d), Struct_5(Struct_1(arg_0.a.c, vec4<bool>(arg_0.b.b.b.x, arg_0.b.a, true, arg_0.b.d), vec2<bool>(false, arg_0.b.b.c.x), arg_0.b.c.d, arg_0.b.b.e), 41305u, true), arg_0.a, arg_0.a.a.zyx).b.b, _wgslsmith_mult_u32(arg_0.a.c, arg_0.b.c.a), arg_0.b.a), func_2(vec2<bool>(true, true), Struct_5(arg_0.b.c, arg_0.b.b.a, arg_0.b.a), func_2(vec2<bool>(arg_0.b.c.b.x, true), Struct_5(Struct_1(arg_0.b.c.a, vec4<bool>(arg_0.b.a, arg_0.b.c.c.x, false, arg_0.b.d), arg_0.b.b.b.zy, arg_0.b.b.d, 139f), 1u, arg_0.b.c.b.x), Struct_3(arg_0.a.a, arg_0.a.b, 26652u), arg_0.a.a.wxy).a, ~arg_0.a.a.zxx).a, _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.a.a.x, 4294967295u, 2474u), _wgslsmith_div_vec3_u32(arg_0.a.a.yxx, vec3<u32>(arg_0.a.c, 1u, arg_0.a.c)), func_2(vec2<bool>(false, true), Struct_5(Struct_1(1u, arg_0.b.b.b, arg_0.b.b.c, arg_0.b.b.d, -160f), 0u, arg_0.b.a), Struct_3(vec4<u32>(arg_0.b.c.a, arg_0.b.c.a, 46545u, 0u), vec3<f32>(arg_0.b.c.e, arg_0.a.b.x, arg_0.b.b.e), arg_0.b.c.a), arg_0.a.a.xyw).a.a.zxy)).b.c.c), Struct_5(func_2(!arg_0.b.b.c, Struct_5(arg_0.b.c, firstLeadingBit(arg_0.b.c.a), !arg_0.b.a), Struct_3(vec4<u32>(arg_0.a.c, 6262u, 4294967295u, 1u) >> (vec4<u32>(4172u, arg_0.b.c.a, 12377u, arg_0.b.c.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-arg_0.a.b), arg_0.a.a.x), min(vec3<u32>(4294967295u, 4294967295u, arg_0.a.a.x), vec3<u32>(1u, arg_0.b.b.a, 27413u))).b.b, 881u, true), Struct_3(vec4<u32>(~arg_0.a.a.x, _wgslsmith_dot_vec2_u32(func_2(vec2<bool>(arg_0.b.c.c.x, arg_0.b.c.c.x), Struct_5(arg_0.b.b, 55508u, true), arg_0.a, vec3<u32>(4294967295u, arg_0.b.b.a, arg_0.b.c.a)).a.a.zz, select(arg_0.a.a.zy, vec2<u32>(arg_0.a.c, arg_0.b.c.a), true)), ~arg_0.b.b.a, firstTrailingBit(arg_0.a.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-333f, 1265f, -534f), arg_0.a.b, !arg_0.b.c.b.x)), arg_0.a.b, abs(arg_0.b.c.a) < ~28350u)), ~_wgslsmith_dot_vec3_u32(arg_0.a.a.yzy, ~arg_0.a.a.xxy)), ~_wgslsmith_mod_vec3_u32(countOneBits(arg_0.a.a.yzz), max(min(vec3<u32>(arg_0.a.a.x, 0u, arg_0.b.b.a), vec3<u32>(92004u, 68123u, arg_0.a.a.x)), arg_0.a.a.zww))).b.c;
    let var_1 = !var_0.b.xw;
    var var_2 = arg_0;
    var_2 = arg_0;
    let var_3 = arg_0.b.b.d.x;
    return var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> f32 {
    var var_0 = abs(select(vec2<u32>(4294967295u, func_3(func_2(vec2<bool>(arg_0.b.b.x, true), Struct_5(arg_0.b, arg_0.c.a, arg_0.a), Struct_3(vec4<u32>(arg_0.c.a, arg_0.c.a, arg_0.b.a, 4294967295u), vec3<f32>(-327f, arg_0.b.e, -1724f), 30067u), vec3<u32>(arg_0.c.a, arg_0.b.a, 82634u)))), (abs(vec2<u32>(70403u, 1u)) & ~vec2<u32>(arg_0.b.a, 3570u)) >> (~(~vec2<u32>(73915u, arg_0.b.a)) % vec2<u32>(32u)), vec2<bool>((false && arg_0.a) || any(arg_0.b.c), all(arg_0.b.b.yzz))));
    return -439f;
}

fn func_4(arg_0: u32, arg_1: f32) -> StorageBuffer {
    let var_0 = !select(!vec3<bool>(all(vec3<bool>(true, true, true)), false, all(vec4<bool>(false, true, false, true))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), func_2(vec2<bool>(true, false), Struct_5(Struct_1(arg_0, vec4<bool>(true, false, true, false), vec2<bool>(true, false), vec4<i32>(26994i, u_input.a.x, u_input.a.x, u_input.a.x), arg_1), arg_0, false), Struct_3(vec4<u32>(arg_0, 1u, 59762u, arg_0), vec3<f32>(-1691f, 807f, 1000f), arg_0), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 24941u, arg_0), vec3<u32>(arg_0, arg_0, 56463u))).b.b.b.yyx), func_2(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_5(func_2(vec2<bool>(false, true), Struct_5(Struct_1(arg_0, vec4<bool>(true, true, false, false), vec2<bool>(true, false), vec4<i32>(1i, u_input.a.x, u_input.a.x, -20415i), arg_1), 1523u, true), Struct_3(vec4<u32>(32323u, 54544u, 4294967295u, 41321u), vec3<f32>(747f, arg_1, 689f), arg_0), vec3<u32>(4294967295u, 12100u, arg_0)).b.b, 1u, true), Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, arg_0), vec4<u32>(0u, 4294967295u, arg_0, 43851u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1332f, arg_1, arg_1) - vec3<f32>(arg_1, arg_1, -1094f)), 45172u), vec3<u32>(15167u, ~88906u, 12126u)).b.b.c.x);
    global0 = array<vec3<i32>, 22>();
    let var_1 = var_0.yz;
    var var_2 = u_input.a.x;
    var var_3 = select(all(select(select(vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(var_1.x, true, var_1.x, false), true), !vec4<bool>(var_1.x, true, true, false), !select(vec4<bool>(true, var_1.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_1.x), vec4<bool>(var_1.x, var_0.x, false, true)))), var_1.x, -_wgslsmith_div_i32(-2147483647i | u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 10646i)) > func_2(vec2<bool>(true, true), Struct_5(Struct_1(43747u, vec4<bool>(var_0.x, false, var_1.x, true), vec2<bool>(true, var_0.x), vec4<i32>(-2147483647i, 45059i, u_input.a.x, u_input.a.x), arg_1), arg_0, func_2(vec2<bool>(true, false), Struct_5(Struct_1(arg_0, vec4<bool>(var_0.x, var_0.x, false, false), var_0.xy, vec4<i32>(18902i, u_input.a.x, 2147483647i, u_input.a.x), arg_1), arg_0, var_0.x), Struct_3(vec4<u32>(arg_0, 26301u, arg_0, arg_0), vec3<f32>(-1551f, arg_1, 201f), arg_0), vec3<u32>(14124u, arg_0, arg_0)).b.a), func_2(vec2<bool>(false, var_1.x), Struct_5(Struct_1(arg_0, vec4<bool>(true, false, false, false), vec2<bool>(true, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_1), 38635u, var_1.x), func_2(vec2<bool>(var_0.x, true), Struct_5(Struct_1(0u, vec4<bool>(var_0.x, var_0.x, false, var_1.x), var_0.yy, vec4<i32>(u_input.a.x, 9635i, -16797i, 28160i), arg_1), arg_0, var_1.x), Struct_3(vec4<u32>(35625u, arg_0, 0u, 7238u), vec3<f32>(-1138f, -879f, arg_1), 45467u), vec3<u32>(0u, arg_0, 4294967295u)).a, ~vec3<u32>(arg_0, 8891u, arg_0)).a, min(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(23181u, arg_0, 4294967295u) ^ vec3<u32>(arg_0, 4294967295u, arg_0))).c);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1)), ~_wgslsmith_mod_vec3_i32(-global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_0) << (58042u % 32u), 22u)]), 796f, countOneBits(global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(arg_0, arg_0)), 22u)]), ~(~vec2<u32>(reverseBits(arg_0), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 22>();
    let x = u_input.a;
    s_output = func_4(max(abs(1u), abs(firstLeadingBit(1u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(430f)), _wgslsmith_f_op_f32(func_1(Struct_2(true, Struct_1(0u, vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), 749f), Struct_1(0u, vec4<bool>(false, false, false, true), vec2<bool>(true, true), vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.a.x), -740f), true), u_input.a.x)))), -359f, true)));
}

