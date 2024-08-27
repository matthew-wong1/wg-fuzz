struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_3, 10>;

var<private> global2: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: i32 = 15998i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = 0i;
    var var_1 = Struct_1(vec4<bool>(false, select(true, false, true), true && all(global2[_wgslsmith_index_u32(~487u, 24u)]), false));
    var var_2 = Struct_2(any(!(!var_1.a.xz)), vec2<i32>(-24656i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-6598i, u_input.a)));
    let var_3 = vec4<u32>((u_input.b | u_input.b) | _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, 46810u) | vec2<u32>(u_input.b, u_input.b)), reverseBits(vec2<u32>(4294967295u, 128193u))), u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(52289u, u_input.b, 108186u, u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(82801u, u_input.b, 16325u, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 1u)))), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) << (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, 65523u) << (vec3<u32>(21596u, 16916u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 33208u, 104037u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), vec3<u32>(u_input.b, _wgslsmith_div_u32(~0u, u_input.b), 0u)));
    return !var_2.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-u_input.a, _wgslsmith_div_i32(1i, 2147483647i)), -2147483647i), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), -2147483647i, -3264i), 1i, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(4826i, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, 15915i))), _wgslsmith_div_vec3_i32(~vec3<i32>(59593i, -35014i, 5404i), -vec3<i32>(u_input.a, 2147483647i, 33174i)))), ~(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 2147483647i, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 25714i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -61587i, 38066i))) ^ vec4<i32>(-1i, u_input.a >> (69357u % 32u), select(-2147483647i, u_input.a, arg_1), min(36474i, 1i))));
    let var_1 = Struct_1(!arg_0);
    let var_2 = Struct_4(Struct_3(!vec2<bool>(func_3(2147483647i), true), Struct_2(select(all(var_1.a.zxx), true, true), vec2<i32>(_wgslsmith_mod_i32(-3192i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-31465i, u_input.a, u_input.a, var_0.x), vec4<i32>(u_input.a, u_input.a, var_0.x, u_input.a))), select(vec2<i32>(var_0.x, 1i), vec2<i32>(-46756i, var_0.x), true)), var_1), abs(-2147483647i), Struct_2(any(vec2<bool>(true, true)), var_0.xy, var_0.zz));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), -270f));
    global2 = array<vec2<bool>, 24>();
    return !arg_0;
}

fn func_2() -> Struct_1 {
    global3 = -55777i;
    global3 = u_input.a & -2147483647i;
    global1 = array<Struct_3, 10>();
    let var_0 = false;
    global0 = countOneBits(~select(81991u, ~max(38233u, 4294967295u), var_0));
    return Struct_1(func_4(vec4<bool>(var_0, var_0, func_3(_wgslsmith_mod_i32(-2147483647i, -1i)), !(true & var_0)), all(vec2<bool>(!var_0, false == var_0)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-843f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1002f * -964f), -2002f), 893f)));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = -1190f;
    let var_1 = _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(-1i, 0i >> (u_input.b % 32u), 41367i), u_input.a ^ u_input.a, u_input.a, -20309i), vec4<i32>(select(-2147483647i, -(i32(-1i) * -12981i), all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, true))), -32368i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-44920i, 8017i, u_input.a, u_input.a), vec4<i32>(u_input.a, -69354i, 2147483647i, 1i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-u_input.a, u_input.a | u_input.a), _wgslsmith_mod_i32(~72348i, u_input.a ^ u_input.a))));
    let var_2 = Struct_2(false, -vec2<i32>(var_1.x, _wgslsmith_div_i32(-11160i, u_input.a)), -vec2<i32>(var_1.x, _wgslsmith_sub_i32(i32(-1i) * -18067i, 22020i)));
    let var_3 = Struct_2(true, vec2<i32>(-var_2.c.x, _wgslsmith_mod_i32(~2147483647i, _wgslsmith_add_i32(var_2.c.x, 1i))), reverseBits(~var_2.c));
    let var_4 = vec3<u32>(u_input.b, u_input.b, 54782u);
    return Struct_3(vec2<bool>(arg_0.a.x & true, true), Struct_2(all(select(select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(45032u, 24u)], vec2<bool>(true, arg_0.a.x)), global2[_wgslsmith_index_u32(~u_input.b, 24u)], global2[_wgslsmith_index_u32(~var_4.x, 24u)])), firstLeadingBit(countOneBits(_wgslsmith_mod_vec2_i32(var_2.b, vec2<i32>(var_2.c.x, -4495i)))), firstLeadingBit(abs(var_1.ww))), arg_0);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(1912f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-698f * 237f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2172f, -1131f))))));
    var var_1 = vec4<i32>(u_input.a, 57121i, 0i, _wgslsmith_add_i32(arg_1.x ^ -2999i, ~2147483647i));
    let var_2 = Struct_4(func_5(func_2()), _wgslsmith_div_i32(var_1.x, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), arg_1))), func_5(func_5(func_5(func_2()).c).c).b);
    global0 = select(~(~(~(~arg_0))), 0u >> ((~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u)) ^ arg_0) % 32u), any(var_2.a.c.a.xww));
    let var_3 = max(_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(var_1.x, 0i, var_1.x) & var_1.wxx), -var_1.zyz), vec3<i32>(-((var_1.x | arg_1.x) << (arg_0 % 32u)), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_1.yyy, vec3<i32>(u_input.a, u_input.a, var_2.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_1.x, -1i, u_input.a), vec4<i32>(arg_1.x, 0i, u_input.a, 26879i)) >> (~arg_0 % 32u)), var_2.b));
    return ~arg_0;
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: bool) -> Struct_3 {
    var var_0 = func_5(Struct_1(!vec4<bool>(!arg_3, any(arg_1), func_5(Struct_1(vec4<bool>(arg_2, arg_3, false, true))).a.x, !arg_3))).c;
    global3 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 179f) - _wgslsmith_f_op_f32(f32(-1f) * -1170f)) + _wgslsmith_f_op_f32(382f - _wgslsmith_f_op_f32(ceil(656f)))) * -254f) - -1682f);
    var var_2 = countOneBits(_wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.a, u_input.a, -46172i, -14956i) | (vec4<i32>(14828i, u_input.a, u_input.a, -20128i) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u)))), select(countOneBits(vec4<i32>(28022i, u_input.a, u_input.a, -34881i) >> (vec4<u32>(64899u, u_input.b, u_input.b, arg_0) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(-38617i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, -2981i, 2147483647i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 9036i)), arg_1)));
    let var_3 = vec4<i32>(var_2.x, var_2.x << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, 18709u, u_input.b, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(311u, u_input.b, 20531u, u_input.b), vec4<u32>(u_input.b, u_input.b, 2416u, u_input.b)), arg_1), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 65367u) & ~vec4<u32>(0u, 0u, arg_0, 43869u)) % 32u), 1i, u_input.a);
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b, arg_0 ^ arg_0), 1u, arg_0), ~abs(~vec3<u32>(92726u, arg_0, u_input.b))), 1u), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 10>();
    let var_0 = Struct_5(func_6(func_1(~select(u_input.b, 45833u, true), -(~vec2<i32>(-26650i, u_input.a))), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), func_2().a.x, true), true, !any(func_5(Struct_1(vec4<bool>(true, true, false, true))).c.a.yy)), select(vec2<u32>(1u, _wgslsmith_mod_u32(~115u, ~u_input.b)), ~reverseBits(vec2<u32>(0u, 1u) ^ vec2<u32>(u_input.b, u_input.b)), func_2().a.ww));
    var var_1 = var_0;
    global3 = u_input.a;
    global1 = array<Struct_3, 10>();
    var var_2 = var_1.a.b;
    var_1 = var_0;
    global1 = array<Struct_3, 10>();
    var var_3 = Struct_4(Struct_3(select(!(!var_0.a.c.a.yy), vec2<bool>(true, true), false), Struct_2(true, _wgslsmith_add_vec2_i32(var_0.a.b.c, var_0.a.b.b) ^ (vec2<i32>(83124i, var_0.a.b.c.x) << (vec2<u32>(var_0.b.x, 4294967295u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(8712i, var_1.a.b.b.x), var_0.a.b.c), abs(var_0.a.b.c))), Struct_1(vec4<bool>(true, func_3(var_0.a.b.c.x), var_0.a.c.a.x, any(var_1.a.c.a.xy)))), var_2.b.x, var_1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_mod_i32(u_input.a ^ var_0.a.b.c.x, -2147483647i), _wgslsmith_sub_i32(-29705i, -var_3.b), func_5(Struct_1(vec4<bool>(true, var_2.a, var_3.a.a.x, true))).b.c.x, firstTrailingBit(-1i)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-626f, -1338f, _wgslsmith_f_op_f32(-956f * 1753f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1451f)), 1000f), -241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f + -692f))))));
}

