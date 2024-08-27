struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 28781i;

var<private> global1: array<bool, 6>;

var<private> global2: f32 = 221f;

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<f32>(1050f, 2396f, -695f)), vec4<bool>(false, true, true, true)), true, true), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<f32>(648f, 1000f, 1154f)), vec4<bool>(false, false, true, false)), true, true), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec3<f32>(-654f, 1000f, 165f)), vec4<bool>(true, false, false, true)), true, true), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(-863f, 1718f, -270f)), vec4<bool>(true, false, true, true)), false, true), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(-781f, 1369f, 354f)), vec4<bool>(true, true, true, false)), true, true), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(-356f, 812f, -1265f)), vec4<bool>(true, true, false, true)), true, true), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<f32>(413f, -541f, 267f)), vec4<bool>(true, true, false, true)), true, false), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<f32>(187f, 2572f, 541f)), vec4<bool>(false, true, false, false)), false, false), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(905f, 430f, 1505f)), vec4<bool>(true, true, false, true)), false, false), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec3<f32>(1000f, -1080f, 299f)), vec4<bool>(true, true, true, true)), false, true), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(892f, 769f, 483f)), vec4<bool>(true, true, true, true)), false, false), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(379f, 660f, 1624f)), vec4<bool>(false, true, false, true)), true, false), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec3<f32>(-580f, -489f, -1062f)), vec4<bool>(true, true, true, false)), true, true), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(-727f, -678f, 751f)), vec4<bool>(true, true, false, true)), false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.d.x, u_input.a.x) | u_input.d.x, 14u)];
    global2 = arg_2.a.x;
    global0 = countOneBits(~(u_input.c & _wgslsmith_mult_i32(_wgslsmith_add_i32(-31985i, u_input.c), 4111i)));
    let var_1 = -673f;
    global2 = var_1;
    return max(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, u_input.a.x), u_input.d.yy), u_input.a.x));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = arg_0.a.c.x;
    global0 = 1i;
    let var_1 = vec2<u32>(u_input.a.x, ~_wgslsmith_mod_u32(u_input.d.x, func_3(arg_0.a.b, vec2<bool>(false, true), arg_0.a.b, -416f)));
    let var_2 = vec2<u32>(~abs(_wgslsmith_mult_u32(u_input.a.x, ~64531u)), abs(var_1.x));
    var var_3 = var_2.x;
    return Struct_3(Struct_2(!(!arg_0.a.c.xx), Struct_1(arg_0.a.b.a), arg_0.a.c), global1[_wgslsmith_index_u32(countOneBits(94624u), 6u)], _wgslsmith_mult_u32(~78251u, func_3(arg_0.a.b, vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 6u)], arg_0.a.c.x), Struct_1(vec3<f32>(226f, arg_0.a.b.a.x, arg_0.a.b.a.x)), _wgslsmith_f_op_f32(-arg_0.a.b.a.x))) > min(var_2.x, _wgslsmith_sub_u32(1u, 0u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<bool>) -> vec4<u32> {
    global1 = array<bool, 6>();
    var var_0 = func_2(Struct_3(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1377f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), true), u_input.e).a;
    var var_1 = countOneBits(select(firstTrailingBit(max(min(vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<i32>(1i, 36370i, u_input.b)), vec3<i32>(1929i, u_input.e.x, u_input.b))), _wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(-2147483647i, u_input.c, u_input.c)), vec3<i32>(25584i, 1i, -1i), func_2(global3[_wgslsmith_index_u32(u_input.d.x, 14u)], vec2<i32>(-1i, u_input.b)).a.c.xxz), countOneBits(vec3<i32>(u_input.e.x, -2147483647i, -13836i))), !func_2(func_2(global3[_wgslsmith_index_u32(36126u, 14u)], u_input.e), vec2<i32>(1i, u_input.c)).a.c.wwx));
    global3 = array<Struct_3, 14>();
    var_0 = Struct_2(vec2<bool>(arg_0.a.c.x, all(arg_0.a.c)), func_2(global3[_wgslsmith_index_u32(1u & _wgslsmith_mult_u32(~arg_2, arg_2), 14u)], ((var_1.xx | vec2<i32>(-2147483647i, var_1.x)) << (u_input.a.zx % vec2<u32>(32u))) | vec2<i32>(~u_input.e.x, min(u_input.b, 1i))).a.b, !(!var_0.c));
    return u_input.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = ~reverseBits(~func_4(func_2(Struct_3(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false), Struct_1(vec3<f32>(arg_0.a.x, -1358f, -654f)), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, global1[_wgslsmith_index_u32(0u, 6u)])), false, true), u_input.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1092f, arg_0.a.x, -304f, arg_0.a.x)), u_input.d.x & 30030u, select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(31192u, 6u)], true), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.a.x)), _wgslsmith_f_op_f32(-115f * -1256f), _wgslsmith_f_op_f32(round(-1566f)), _wgslsmith_f_op_f32(max(810f, -122f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -371f, -1081f, arg_0.a.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, -876f, arg_0.a.x) + vec4<f32>(arg_0.a.x, -971f, arg_0.a.x, arg_0.a.x))))))));
    var var_3 = _wgslsmith_div_u32(1u, firstTrailingBit((~17110u >> (_wgslsmith_add_u32(71718u, u_input.a.x) % 32u)) ^ var_1.x));
    let var_4 = var_0;
    return func_2(func_2(Struct_3(func_2(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(var_2.ywy), vec4<bool>(var_4, true, true, true)), true, var_0), -u_input.e).a, var_0, any(vec2<bool>(var_0, true)) && !global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), abs(vec2<i32>(0i, -u_input.b))), -max(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.e, u_input.e), firstLeadingBit(u_input.e)), u_input.e)).a.b;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = -4877i;
    var var_1 = abs(u_input.c);
    global3 = array<Struct_3, 14>();
    var_1 = min(abs(-_wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, arg_2.x), arg_2.x)), 12109i);
    let var_2 = global3[_wgslsmith_index_u32(arg_0, 14u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(func_2(Struct_3(Struct_2(arg_1.a, Struct_1(arg_1.b.a), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], var_2.b, global1[_wgslsmith_index_u32(0u, 6u)], false)), true, true), vec2<i32>(u_input.c, 1i)).a.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.b.a.x, arg_1.b.a.x, var_2.a.b.a.x) * vec3<f32>(var_2.a.b.a.x, arg_1.b.a.x, var_2.a.b.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, arg_1.b.a.x, var_2.a.b.a.x)))))));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.d.x), vec4<u32>(u_input.a.x, u_input.a.x, 44689u, u_input.a.x)), u_input.d.x), 4294967295u), 6u)], true, _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(649f, 426f))))) >= func_2(global3[_wgslsmith_index_u32(firstLeadingBit(min(u_input.d.x, u_input.d.x)), 14u)], vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.c, u_input.b)), -u_input.c)).a.b.a.x, true);
    global0 = -u_input.c;
    global1 = array<bool, 6>();
    var var_1 = ~reverseBits(select(~abs(u_input.d), reverseBits(u_input.a.xxx >> (u_input.d % vec3<u32>(32u))), var_0.x));
    global1 = array<bool, 6>();
    return func_2(func_2(func_2(global3[_wgslsmith_index_u32(var_1.x, 14u)], abs(u_input.e)), _wgslsmith_clamp_vec2_i32(vec2<i32>(16095i, u_input.e.x << (var_1.x % 32u)), u_input.e, max(~vec2<i32>(u_input.e.x, 19589i), countOneBits(vec2<i32>(45442i, u_input.b))))), vec2<i32>(-2147483647i, -u_input.b)).a.b;
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(909f, 454f, 519f))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, -578f), vec3<f32>(arg_0.a.x, -1318f, 1153f))))), func_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(func_2(Struct_3(Struct_2(vec2<bool>(false, true), arg_0, vec4<bool>(global1[_wgslsmith_index_u32(150239u, 6u)], true, false, global1[_wgslsmith_index_u32(1u, 6u)])), global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false), u_input.e).a.b, !vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false), Struct_1(arg_0.a), _wgslsmith_f_op_f32(arg_3.x * 902f)), u_input.a.x, 31370u), 14u)], u_input.e).a.a, arg_0, 2194f), 14u)];
    var var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-arg_2, _wgslsmith_sub_i32(u_input.c, 2147483647i), reverseBits(-1i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, -2147483647i, -2147483647i), vec3<i32>(38083i, arg_2, 0i))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(28513i, -2147483647i, u_input.b), ~vec3<i32>(arg_2, -37821i, u_input.e.x)), reverseBits(vec3<i32>(2147483647i, u_input.c, u_input.e.x) << (u_input.a.yxz % vec3<u32>(32u))))) & firstLeadingBit(_wgslsmith_sub_vec3_i32((vec3<i32>(arg_2, 1i, 0i) << (vec3<u32>(u_input.a.x, 4294967295u, 30010u) % vec3<u32>(32u))) ^ vec3<i32>(arg_2, 0i, -2147483647i), countOneBits(-vec3<i32>(2147483647i, u_input.e.x, arg_2))));
    let var_2 = !(global1[_wgslsmith_index_u32(u_input.a.x, 6u)] & any(func_2(func_2(global3[_wgslsmith_index_u32(4294967295u, 14u)], var_1.zy), var_1.xx).a.c.yxx));
    global3 = array<Struct_3, 14>();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a.b.a, vec3<f32>(415f, var_0.a.b.a.x, 1050f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_3.x, -658f))) * vec3<f32>(586f, _wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_div_f32(arg_0.a.x, 1000f))) - var_0.a.b.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(722f, 203f)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_3.x - arg_1)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.a * var_0.a.b.a))))));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(true, func_5(60707u, Struct_2(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(31999u, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), global1[_wgslsmith_index_u32(0u, 6u)]), func_1(Struct_1(vec3<f32>(207f, -375f, 214f))), select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, false, true), global1[_wgslsmith_index_u32(23113u, 6u)])), reverseBits(vec2<i32>(-2147483647i, u_input.b) | vec2<i32>(18031i, 1i))), func_5(13806u, func_2(func_2(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<i32>(u_input.e.x, u_input.b)), -u_input.e).a, u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-434f + _wgslsmith_f_op_f32(f32(-1f) * -139f))), _wgslsmith_mult_i32(22582i, -(u_input.b ^ 2147483647i)) | (u_input.c & min(reverseBits(-34570i), i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, 189f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-858f, -675f), vec2<f32>(211f, -296f)) * vec2<f32>(681f, 1167f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, 362f)), vec2<f32>(func_2(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.e).a.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -972f))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -299f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -712f, var_0.a.x, 408f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(2935f, 511f, var_0.a.x, -178f) * vec4<f32>(var_0.a.x, -215f, -1272f, 333f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 1812f, -1400f, 1434f)))));
    var var_2 = abs(_wgslsmith_clamp_vec3_u32(u_input.d >> (u_input.d % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~(~u_input.a.yww), vec3<u32>(~u_input.a.x, 4294967295u, 4294967295u)), ~vec3<u32>(109547u, ~u_input.d.x, 1u)));
    var_2 = _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(abs(~var_2.x), func_4(func_2(global3[_wgslsmith_index_u32(u_input.d.x, 14u)], vec2<i32>(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2700f, var_1.x, 139f, var_0.a.x) - vec4<f32>(1811f, -1580f, var_0.a.x, -281f)), 1u, func_2(global3[_wgslsmith_index_u32(var_2.x, 14u)], vec2<i32>(40727i, 24652i)).a.a).x, u_input.a.x)), ~(firstTrailingBit(u_input.a.zww ^ u_input.d) & func_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 3773u), u_input.a.yzz), 14u)], vec4<f32>(1899f, 1498f, 1578f, var_1.x), firstLeadingBit(1u), !vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 6u)], false)).xxy));
    global1 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -520f), 1250f))) - var_0.a.x), ~34761u, 2147483647i, 784f, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(u_input.e >> (u_input.a.xy % vec2<u32>(32u))), u_input.e, vec2<i32>(1i << (0u % 32u), -13594i)), firstTrailingBit(select(vec2<i32>(-13674i, 8064i), _wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(u_input.e.x, -45607i)), select(true, false, true)))));
}

