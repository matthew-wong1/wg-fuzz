struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 9>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = !(!(!any(arg_0.b.d)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * 672f));
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-277f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(196f + -243f)))) + _wgslsmith_f_op_f32(step(817f, 2520f))));
    return arg_0.d.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    global1 = array<Struct_3, 9>();
    let var_0 = arg_2;
    var var_1 = var_0;
    let var_2 = !arg_2.a;
    global1 = array<Struct_3, 9>();
    return arg_1.b.c.a.x;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> vec3<i32> {
    global0 = arg_1;
    global0 = select(arg_0.c.a.x, arg_1, arg_0.d.a.x);
    global0 = all(vec4<bool>(func_4(u_input.b.x, Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 1265f)), arg_0.b, arg_0.d, arg_0.d, 67220u), arg_0.d, vec2<bool>(func_3(Struct_3(vec2<f32>(arg_0.a.x, -1722f), arg_0.b, Struct_1(arg_0.c.a, -5389i), Struct_1(vec2<bool>(arg_0.c.a.x, arg_0.c.a.x), u_input.a), arg_0.e)), func_3(Struct_3(vec2<f32>(1571f, 358f), arg_0.b, Struct_1(vec2<bool>(arg_0.b.c.a.x, arg_0.c.a.x), arg_0.c.b), arg_0.b.c, 1u)))), arg_0.b.a, arg_0.a.x != arg_0.a.x, true));
    let var_0 = 4294967295u << (~arg_2.x % 32u);
    var var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x)) & abs(0u), 9u)];
    return vec3<i32>(_wgslsmith_add_i32(2147483647i, ~_wgslsmith_sub_i32(u_input.a, firstTrailingBit(1092i))), 40090i, var_1.d.b);
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> bool {
    global0 = all(!vec2<bool>((i32(-1i) * -2147483647i) <= (arg_1.x | 2147483647i), true));
    let var_0 = select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), firstLeadingBit(u_input.b)), vec2<u32>(4294967295u, ~(~select(107941u, 0u, arg_2))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(firstTrailingBit(arg_3.e), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), u_input.b.x, ~abs(u_input.b.x)) > ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24844u), u_input.b));
    global1 = array<Struct_3, 9>();
    let var_1 = abs(~vec4<u32>(38193u, ~arg_3.e >> (~var_0.x % 32u), ~38258u >> ((u_input.b.x << (9069u % 32u)) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 103905u), u_input.b))));
    global0 = false;
    return !arg_2;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false)), vec4<bool>(true, true, false, true), true);
    let var_1 = Struct_2(func_5(!var_0.x, func_2(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], !all(var_0.xy), ~reverseBits(vec2<u32>(19619u, arg_0.x))), !(!any(vec4<bool>(var_0.x, var_0.x, true, true))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~50086u, u_input.b.x, ~arg_0.x), 9u)]), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), select(var_0.zw, vec2<bool>(var_0.x, true), var_0.x)), vec2<bool>(all(vec3<bool>(var_0.x, false, false)), arg_0.x < 16417u), select(!var_0.wy, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), false), vec2<bool>(true, false))), -47787i), Struct_1(select(vec2<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), !var_0.x), select(vec2<bool>(false, var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), var_0.zx), true), select(var_0.wz, !vec2<bool>(var_0.x, false), all(var_0.wxx))), abs(-_wgslsmith_mod_i32(u_input.a, u_input.a))), vec4<bool>(any(vec3<bool>(true, var_0.x, !var_0.x)), var_0.x & any(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2371f + -1354f), _wgslsmith_f_op_f32(round(1551f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-725f))), ~(1u << (u_input.b.x % 32u)) < 0u), i32(-1i) * -32530i);
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    global0 = select(!(func_4(~0u, Struct_3(vec2<f32>(-300f, 489f), Struct_2(true, Struct_1(vec2<bool>(var_1.d.x, true), u_input.a), Struct_1(var_0.xz, -77591i), vec4<bool>(var_1.a, var_2.c.a.x, false, var_1.a), var_1.e), Struct_1(var_1.c.a, u_input.a), var_2.c, 5315u), var_2.c, select(var_0.yx, var_0.xz, var_2.d.a)) && any(!var_2.d.a)), var_2.d.a.x && true, false);
    var var_3 = -((-var_2.c.b | (reverseBits(u_input.a) ^ var_2.b.c.b)) & var_2.b.b.b);
    return Struct_1(var_0.wx, -41594i & var_2.b.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.b.x, 9u)];
    global0 = !any(vec4<bool>(var_0.d.a.x, true, ~var_0.e >= 2511u, !any(vec2<bool>(var_0.c.a.x, var_0.b.a))));
    var var_1 = func_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.e, 34857u), ~39141u), _wgslsmith_sub_u32(max(42258u, 51569u), 86898u | u_input.b.x), var_0.e) & ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(16955u, 6454u, var_0.e), vec3<u32>(var_0.e, 0u, u_input.b.x), vec3<u32>(var_0.e, var_0.e, var_0.e)));
    var_1 = func_1(vec3<u32>(~u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.e, 0u, 1u), select(vec3<u32>(48785u, var_0.e, 82621u), vec3<u32>(var_0.e, u_input.b.x, 0u), var_0.b.d.wzw)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.e, u_input.b.x, var_0.e), vec3<u32>(u_input.b.x, 1981u, 41583u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e, var_0.e, 84843u), vec3<u32>(20253u, u_input.b.x, u_input.b.x))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1106f, var_0.a.x), vec2<f32>(var_0.a.x, var_0.a.x)))))), Struct_2(true, func_1(vec3<u32>(min(21921u, u_input.b.x), 15350u, 11450u)), var_0.c, !var_0.b.d, _wgslsmith_div_i32(var_1.b, func_2(Struct_3(vec2<f32>(1234f, var_0.a.x), Struct_2(false, var_0.d, var_0.d, var_0.b.d, var_1.b), var_0.c, var_0.b.b, var_0.e), all(var_1.a), vec2<u32>(40917u, u_input.b.x)).x)), func_1(abs(vec3<u32>(4958u, firstLeadingBit(var_0.e), u_input.b.x))), Struct_1(var_0.b.d.yw, -43880i), 1u);
    var var_3 = global1[_wgslsmith_index_u32(~var_0.e, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a.x, -1705f, 1597f, var_0.a.x)))))), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_2.e), ~u_input.b)), ~var_0.e), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 0i)), firstTrailingBit(vec2<i32>(var_0.b.e, var_2.b.e))), _wgslsmith_div_vec2_i32(vec2<i32>(-29579i, var_0.b.c.b), vec2<i32>(-2147483647i, u_input.a))), -var_3.d.b, var_2.c.b), ~var_2.c.b);
}

