struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(2147483647i, -28330i, -19994i, 1i), vec4<i32>(0i, -33333i, 0i, 1i), vec4<i32>(2147483647i, -33130i, 1244i, -23875i), vec4<i32>(0i, -39565i, 2147483647i, 6727i), vec4<i32>(i32(-2147483648), -9523i, 1i, 2147483647i), vec4<i32>(-14453i, 2147483647i, -10706i, 18908i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(19083i, i32(-2147483648), 0i, 0i), vec4<i32>(i32(-2147483648), -1i, -77051i, 18025i), vec4<i32>(-1i, -5147i, 7945i, 1i), vec4<i32>(2147483647i, -14765i, 10442i, 1i));

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: array<bool, 26> = array<bool, 26>(false, false, false, true, false, false, true, false, false, false, false, true, false, true, true, false, false, false, false, true, false, false, false, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = !(!vec3<bool>(true, true, select(select(arg_0.e.b.x, arg_3.c.b.x, arg_0.c.b.x), global3[_wgslsmith_index_u32(arg_3.b.x, 26u)], arg_3.d.x == arg_3.d.x)));
    var var_1 = !select(select(vec3<bool>(var_0.x | arg_3.c.b.x, !global3[_wgslsmith_index_u32(0u, 26u)], arg_0.e.b.x), var_0, vec3<bool>(!arg_0.e.b.x, all(arg_3.c.b), !var_0.x)), select(select(vec3<bool>(true, arg_3.c.b.x, false), select(var_0, vec3<bool>(true, arg_3.e.b.x, true), var_0), !vec3<bool>(false, arg_0.e.b.x, arg_0.c.b.x)), !select(vec3<bool>(arg_3.c.b.x, true, arg_3.c.b.x), vec3<bool>(false, true, arg_0.e.b.x), false), var_0), select(!select(var_0, vec3<bool>(true, false, false), var_0.x), !select(var_0, vec3<bool>(arg_3.e.b.x, var_0.x, var_0.x), false), var_0));
    let var_2 = Struct_1(reverseBits(abs(u_input.b)), var_0.zx, 4294967295u, arg_3.e.c);
    global0 = array<vec4<i32>, 11>();
    global0 = array<vec4<i32>, 11>();
    return _wgslsmith_div_i32(max(~(-46968i), arg_3.e.a.x), u_input.b.x);
}

fn func_2() -> Struct_1 {
    global3 = array<bool, 26>();
    global1 = _wgslsmith_clamp_i32(u_input.b.x, (u_input.d & u_input.b.x) | u_input.d, _wgslsmith_sub_i32(0i, abs(1i)) ^ min(func_3(Struct_2(-1i, vec4<u32>(u_input.c, 0u, u_input.c, 90504u), Struct_1(vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.b.x), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 26u)]), 38563u, 1u), vec4<f32>(-876f, 1069f, 329f, 364f), Struct_1(vec4<i32>(-35009i, 0i, 2147483647i, 10692i), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 26u)]), u_input.c, u_input.c)), vec4<u32>(u_input.a, u_input.c, 18086u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c), Struct_2(u_input.d, vec4<u32>(9606u, 0u, u_input.a, u_input.c), Struct_1(u_input.b, vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 26u)], false), 0u, 4294967295u), vec4<f32>(739f, 567f, 141f, -374f), Struct_1(vec4<i32>(u_input.b.x, u_input.d, -1i, -1i), vec2<bool>(global3[_wgslsmith_index_u32(51511u, 26u)], global3[_wgslsmith_index_u32(75900u, 26u)]), 0u, u_input.a))) ^ -1i, -54852i));
    var var_0 = Struct_1(min(global0[_wgslsmith_index_u32(select((u_input.a & u_input.a) >> (1u % 32u), _wgslsmith_mod_u32(20595u, u_input.c), select(true, false, global3[_wgslsmith_index_u32(1u, 26u)])), 11u)], ~vec4<i32>(abs(-23634i), 1i, 0i, firstTrailingBit(0i))), select(!select(!vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 26u)], false), vec2<bool>(global3[_wgslsmith_index_u32(38306u, 26u)], false), true), u_input.a <= 0u), select(vec2<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(u_input.a, 26u)], global3[_wgslsmith_index_u32(0u, 26u)])), true), vec2<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 26u)], any(vec2<bool>(true, true))), vec2<bool>(true, false)), global3[_wgslsmith_index_u32(u_input.a, 26u)]), u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), select(u_input.c, 0u, false), ~18373u, max(u_input.a, u_input.c)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.c, 58673u, u_input.c), vec4<u32>(u_input.c, 38363u, u_input.c, 49335u))), vec4<u32>(4294967295u, min(4050u << (u_input.a % 32u), u_input.a), ~44552u, ~56797u)));
    global1 = 0i;
    let var_1 = any(select(!select(!global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.c, 30u)], any(global2[_wgslsmith_index_u32(u_input.c, 30u)])), !(!(!global2[_wgslsmith_index_u32(var_0.c, 30u)])), any(!(!vec3<bool>(global3[_wgslsmith_index_u32(94247u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], var_0.b.x)))));
    return Struct_1(select(~vec4<i32>(-15754i, u_input.b.x, abs(-2147483647i), ~u_input.b.x), _wgslsmith_sub_vec4_i32(~vec4<i32>(6930i, var_0.a.x, 34501i, var_0.a.x) >> (vec4<u32>(var_0.d, u_input.c, 4294967295u, 1u) % vec4<u32>(32u)), var_0.a), any(vec2<bool>(var_0.d != u_input.a, !var_1))), select(select(var_0.b, vec2<bool>(all(vec2<bool>(true, false)), var_1), true), !vec2<bool>(!var_1, false), all(var_0.b) & !(true || var_1)), ~(~28544u), 1u);
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0.b.c.a;
    global3 = array<bool, 26>();
    global1 = _wgslsmith_clamp_i32(27634i, arg_0.c.x, _wgslsmith_add_i32(var_0.x, u_input.b.x));
    global3 = array<bool, 26>();
    var var_1 = !any(vec3<bool>(_wgslsmith_f_op_f32(139f + arg_0.b.d.x) <= _wgslsmith_f_op_f32(floor(arg_2.x)), true, select(var_0.x, var_0.x, global3[_wgslsmith_index_u32(u_input.a, 26u)]) <= var_0.x));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> Struct_4 {
    global2 = array<vec4<bool>, 30>();
    var var_0 = 57291u & arg_1.x;
    var var_1 = Struct_4(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(27086u, u_input.c), 1u, max(59504u, arg_0.c)), ~min(26409u, 41838u)), Struct_2(u_input.b.x, vec4<u32>(arg_1.x, 1u, reverseBits(1u), ~arg_1.x), Struct_1(countOneBits(~vec4<i32>(arg_0.a.x, -2147483647i, 1i, u_input.d)), !arg_0.b, u_input.a >> (_wgslsmith_dot_vec4_u32(arg_1, arg_1) % 32u), 86806u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(132f, _wgslsmith_f_op_f32(arg_2 * 664f), _wgslsmith_f_op_f32(min(411f, arg_2)), _wgslsmith_f_op_f32(max(arg_2, arg_2))))), func_2()), u_input.b.xw, vec4<u32>(~(~1u), ~1u, 13177u, ~(~_wgslsmith_add_u32(33592u, arg_0.d))));
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(arg_1 >> (vec4<u32>(arg_1.x, arg_0.d, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(0u, 60623u, 1u, 1u)) ^ vec4<u32>(12361u >> (0u % 32u), arg_1.x, _wgslsmith_add_u32(firstTrailingBit(1u), 1u | var_1.b.e.d), firstTrailingBit(~var_1.d.x)), firstTrailingBit(~arg_1));
    let var_3 = func_2().b;
    return Struct_4(_wgslsmith_dot_vec4_u32(var_1.b.b, ~var_1.d), var_1.b, select(~vec2<i32>(25968i, firstLeadingBit(var_1.c.x)), var_1.b.e.a.xz, global3[_wgslsmith_index_u32(1433u, 26u)]), _wgslsmith_add_vec4_u32(abs(firstLeadingBit(vec4<u32>(1u, arg_1.x, 0u, arg_1.x))), arg_1));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = firstTrailingBit(-45574i);
    var var_1 = arg_2.a;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.d.yzx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, 365f, -145f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(-247f * -1907f), _wgslsmith_f_op_f32(-arg_0.b.d.x))))), arg_0.b.d.xxz);
    var var_3 = arg_0.b;
    global3 = array<bool, 26>();
    return arg_0.b.e;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec3<i32> {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(~arg_1.d, 1u) << ((arg_1.c & ~90667u) % 32u), 1u, ~countOneBits(min(u_input.a, 0u))) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, arg_1.c, func_4(Struct_1(vec4<i32>(u_input.b.x, -9795i, u_input.b.x, arg_0.a.x), vec2<bool>(false, arg_1.b.x), arg_0.d, 81425u), vec4<u32>(arg_0.c, 0u, arg_0.c, arg_1.d), arg_3).a), vec3<u32>(53962u, 1u, select(arg_1.c, _wgslsmith_add_u32(1u, 0u), true)), abs(~(vec3<u32>(0u, arg_1.d, u_input.c) & vec3<u32>(arg_2, 0u, 0u))));
    global0 = array<vec4<i32>, 11>();
    let var_1 = true;
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, -927f));
    return vec3<i32>(select(u_input.d, reverseBits(35683i << (~u_input.a % 32u)), !func_2().b.x), ~8326i, arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.wxy;
    let var_1 = func_6(func_5(func_4(func_1(Struct_4(u_input.c, Struct_2(43739i, vec4<u32>(127727u, u_input.a, 9316u, 1u), Struct_1(vec4<i32>(-2147483647i, 1i, u_input.b.x, u_input.d), vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)], false), u_input.a, 99410u), vec4<f32>(1121f, 315f, 449f, -319f), Struct_1(global0[_wgslsmith_index_u32(44049u, 11u)], vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 26u)]), 18222u, 1u)), u_input.b.ww, vec4<u32>(u_input.a, 1u, u_input.c, u_input.a)), false, vec4<f32>(2130f, -1619f, -477f, -498f)), ~vec4<u32>(1u, 4294967295u, 101452u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(113f, -1733f)))), Struct_3(func_2(), !func_1(Struct_4(0u, Struct_2(u_input.b.x, vec4<u32>(u_input.a, 0u, 93624u, u_input.a), Struct_1(vec4<i32>(-40257i, u_input.b.x, 0i, var_0.x), vec2<bool>(true, true), 2676u, 1u), vec4<f32>(1051f, -174f, -676f, -858f), Struct_1(global0[_wgslsmith_index_u32(1u, 11u)], vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 26u)]), u_input.c, u_input.a)), u_input.b.zx, vec4<u32>(0u, 59674u, 1u, u_input.c)), true, vec4<f32>(1254f, -2009f, 1000f, 1641f)).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 11u)], !vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 26u)], false), _wgslsmith_mult_u32(u_input.c, u_input.a), u_input.a), true, 1036f), vec3<bool>(all(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(37910u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 26u)], false, false), true)), global3[_wgslsmith_index_u32(u_input.a, 26u)], !select(global3[_wgslsmith_index_u32(4294967295u, 26u)], true, false))), func_5(func_4(func_4(func_4(Struct_1(u_input.b, vec2<bool>(global3[_wgslsmith_index_u32(1u, 26u)], false), u_input.c, u_input.a), vec4<u32>(78113u, 0u, u_input.c, u_input.c), -438f).b.e, abs(vec4<u32>(4294967295u, 1u, 1u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -245f)).b.c, ~vec4<u32>(15515u, u_input.a, 4294967295u, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f - 1256f))), Struct_3(func_2(), !func_5(Struct_4(u_input.a, Struct_2(var_0.x, vec4<u32>(u_input.c, u_input.a, 49861u, u_input.c), Struct_1(u_input.b, vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 26u)]), u_input.c, u_input.c), vec4<f32>(188f, -2274f, 1000f, 561f), Struct_1(vec4<i32>(u_input.b.x, -2147483647i, 46312i, 2147483647i), vec2<bool>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(u_input.c, 26u)]), 30661u, u_input.c)), vec2<i32>(var_0.x, -1i), vec4<u32>(179u, 0u, 26563u, u_input.c)), Struct_3(Struct_1(global0[_wgslsmith_index_u32(70255u, 11u)], vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 26u)], true), 106432u, 32389u), false, 471f), Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 11u)], vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)], true), u_input.c, 4294967295u), global3[_wgslsmith_index_u32(u_input.c, 26u)], 391f), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 26u)], false)).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(501f, -1683f)) * _wgslsmith_f_op_f32(round(103f)))), Struct_3(Struct_1(global0[_wgslsmith_index_u32(13405u, 11u)], vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 26u)]), 4294967295u, u_input.a), true, 1294f), vec3<bool>(global3[_wgslsmith_index_u32(abs(0u), 26u)], true, false)), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-375f)) + -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -103f)));
    let var_2 = Struct_4(u_input.c, func_4(func_1(Struct_4(~75084u, func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 11u)], vec2<bool>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(29995u, 26u)]), u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 10582u, 29245u), 1092f).b, vec2<i32>(var_0.x, -1i), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.a, u_input.c), vec4<u32>(u_input.a, u_input.c, 67843u, 23164u), vec4<u32>(u_input.c, u_input.c, 70321u, 57632u))), global3[_wgslsmith_index_u32(~1u, 26u)] & select(global3[_wgslsmith_index_u32(0u, 26u)], true, true), vec4<f32>(_wgslsmith_f_op_f32(trunc(213f)), -1521f, _wgslsmith_f_op_f32(step(-1000f, -1135f)), 472f)), select(vec4<u32>(u_input.c, u_input.a, 0u, u_input.a) | vec4<u32>(41654u, 87866u, 1u, 0u), reverseBits(~vec4<u32>(u_input.c, 1u, 41627u, 1u)), vec4<bool>(true, global3[_wgslsmith_index_u32(13145u, 26u)], false, global3[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(trunc(1f))).b, ~(~(~u_input.b.zw)), ~(countOneBits(vec4<u32>(u_input.c, u_input.a, 4294967295u, 51269u) & vec4<u32>(u_input.c, u_input.c, 1u, u_input.a)) & func_4(func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 11u)], vec2<bool>(global3[_wgslsmith_index_u32(59491u, 26u)], true), 1u, u_input.a), vec4<u32>(52570u, u_input.c, 4294967295u, 4294967295u), -347f).b.c, vec4<u32>(23535u, u_input.c, u_input.c, 1u), _wgslsmith_f_op_f32(937f * -1000f)).b.b));
    let var_3 = _wgslsmith_mod_u32(func_5(func_4(func_4(Struct_1(u_input.b, vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 26u)], var_2.b.e.b.x), 1u, u_input.a), vec4<u32>(u_input.c, u_input.a, 0u, u_input.c), 556f).b.c, vec4<u32>(u_input.c, firstTrailingBit(4294967295u), 1u, u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.b.d.x)), _wgslsmith_f_op_f32(var_2.b.d.x * -1770f))), Struct_3(var_2.b.e, _wgslsmith_clamp_i32(var_2.c.x, var_0.x, -12066i) < -var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.d.x))), Struct_3(Struct_1(vec4<i32>(u_input.d, var_0.x, u_input.b.x, 1i), var_2.b.e.b, 0u, u_input.a), !all(vec2<bool>(global3[_wgslsmith_index_u32(var_2.b.e.c, 26u)], global3[_wgslsmith_index_u32(u_input.c, 26u)])), 722f), vec3<bool>(var_2.b.c.b.x, true, true)).d, _wgslsmith_mult_u32(14187u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_2.b.b.zyw, countOneBits(vec3<u32>(var_2.b.c.c, u_input.a, u_input.c))), ~abs(var_2.b.b.wyx))));
    let var_4 = 16937u;
    let var_5 = 57309u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_2.b.e.a.zx, var_5, 24924i, u_input.b.x);
}

