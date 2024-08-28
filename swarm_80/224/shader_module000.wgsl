struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 6>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32) -> bool {
    global1 = array<Struct_2, 6>();
    var var_0 = ~32510u;
    var var_1 = Struct_2(vec3<bool>(true, global0.x, true), true, -select(u_input.a, select(reverseBits(2147483647i), -1i & u_input.a, global0.x), all(vec3<bool>(false, false, false))), reverseBits(u_input.b.x));
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(min(min(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 93098u, 68509u), vec3<u32>(4294967295u, u_input.b.x, 30326u)), ~vec3<u32>(var_1.d, u_input.b.x, 0u))), countOneBits(global2.x ^ 0u))), 6u)];
    var_1 = global1[_wgslsmith_index_u32(~(~27792u), 6u)];
    return global0.x;
}

fn func_2() -> bool {
    global1 = array<Struct_2, 6>();
    var var_0 = Struct_1(u_input.b, select(abs(reverseBits(-vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), ~abs(abs(vec4<i32>(-51810i, 5282i, u_input.a, u_input.a))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1607f, -905f)), _wgslsmith_sub_u32(reverseBits(u_input.b.x), ~global2.x))), -vec4<i32>(~u_input.a, ~abs(-43745i), ~_wgslsmith_clamp_i32(u_input.a, 22833i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-10039i, 2147483647i, 27019i, -10242i) | vec4<i32>(u_input.a, 7360i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, 22364i, -28213i))));
    global2 = _wgslsmith_sub_vec2_u32(u_input.b, ~max(firstTrailingBit(vec2<u32>(u_input.b.x, global2.x) >> (u_input.b % vec2<u32>(32u))), countOneBits(select(u_input.b, vec2<u32>(34632u, u_input.b.x), true))));
    var var_1 = -841f;
    var var_2 = global1[_wgslsmith_index_u32(var_0.a.x, 6u)];
    return false;
}

fn func_1(arg_0: f32) -> Struct_3 {
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    var var_0 = Struct_1(select(~firstTrailingBit(u_input.b), u_input.b, any(vec4<bool>(true, any(vec3<bool>(false, global0.x, global0.x)), true, func_2()))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, -7644i, 20043i, 10322i) >> (~(vec4<u32>(u_input.b.x, 1u, u_input.b.x, global2.x) & vec4<u32>(u_input.b.x, 1u, u_input.b.x, global2.x)) % vec4<u32>(32u)), select(vec4<i32>(-11731i, u_input.a, u_input.a, 7525i) ^ vec4<i32>(-35732i, u_input.a, u_input.a, 24733i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(4146i, -33713i, u_input.a, u_input.a)), !vec4<bool>(true, global0.x, global0.x, false)) << (select(reverseBits(vec4<u32>(4294967295u, global2.x, 25693u, 4294967295u)), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 36886u)), true) % vec4<u32>(32u)), -vec4<i32>(-12317i, -u_input.a, -2147483647i, ~u_input.a)), ~vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, abs(u_input.a)), ~u_input.a, u_input.a));
    return Struct_3(Struct_2(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), false), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, global0.x))), vec3<bool>(!global0.x, select(global0.x, global0.x, true), select(true, false, false)), false), true, 1i, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(abs(var_0.a.x), _wgslsmith_mult_u32(12849u, u_input.b.x)))), 39317u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-568f, arg_0), _wgslsmith_div_f32(arg_0, 369f)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(-1000f, arg_0, true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 693f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1238f, -310f) - vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-818f, arg_0), vec2<f32>(arg_0, arg_0))))))), 10135i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_3 {
    global0 = arg_1.a.a;
    var var_0 = func_1(-453f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(386f)));
    var_0 = arg_1;
    return Struct_3(global1[_wgslsmith_index_u32(arg_1.a.d, 6u)], 25551u, vec2<f32>(1359f, arg_1.c.x), arg_2.x);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    let var_0 = vec4<u32>(max(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(31800u, 73442u))), reverseBits(firstLeadingBit(63891u) << (_wgslsmith_add_u32(global2.x, arg_0.a.d) % 32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, arg_0.a.d, u_input.b.x, 6801u) >> (~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 9178u)) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(global2.x, _wgslsmith_add_u32(arg_0.b, global2.x), global2.x, ~0u))), ~arg_0.b & ~0u, _wgslsmith_mod_u32(~global2.x, ~countOneBits(~1u)));
    global0 = !(!(!arg_0.a.a));
    let var_1 = 1i;
    return arg_0.a;
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = -1i;
    global0 = arg_0.a;
    var var_1 = func_4(_wgslsmith_sub_vec2_i32(abs(reverseBits(select(vec2<i32>(var_0, 0i), vec2<i32>(arg_0.c, arg_1), false))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_0, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(u_input.a, 1i))), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(1i, -74326i)), ~vec2<i32>(-15784i, arg_1)), vec2<i32>(-2147483647i, arg_1))), Struct_3(Struct_2(vec3<bool>(all(vec3<bool>(global0.x, false, global0.x)), false, all(vec2<bool>(arg_0.b, true))), global0.x & !global0.x, arg_1, arg_0.d), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(15151u, arg_0.d, 12209u), vec3<u32>(0u, arg_0.d, 105621u)) << (countOneBits(vec3<u32>(u_input.b.x, global2.x, global2.x)) % vec3<u32>(32u)), ~(vec3<u32>(global2.x, 0u, u_input.b.x) | vec3<u32>(76786u, 0u, global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1469f, -1472f), vec2<f32>(-1000f, -1053f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, 693f)))), 23222i), vec3<i32>(max(arg_0.c, 1i), _wgslsmith_dot_vec4_i32(min(select(vec4<i32>(2147483647i, u_input.a, var_0, arg_1), vec4<i32>(arg_1, 0i, arg_1, var_0), false), vec4<i32>(1i, var_0, 23192i, u_input.a)), -(~vec4<i32>(1i, arg_0.c, arg_1, -98393i))), -2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(2163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f * -1151f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1067f, 235f), -1217f))))).a;
    global1 = array<Struct_2, 6>();
    var var_2 = false;
    return Struct_3(func_5(Struct_3(arg_0, var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1372f, 191f)))), var_1.c), var_0, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, -284f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(436f, -358f) - vec2<f32>(269f, 1847f)))))), ~(~4294967295u), vec2<f32>(481f, _wgslsmith_f_op_f32(f32(-1f) * -2376f)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 6>();
    let var_0 = u_input.a;
    let var_1 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(113322u, u_input.b.x | 1u))), 6u)];
    var var_2 = global0.yy;
    let var_3 = func_6(func_5(func_4(~vec2<i32>(1i, var_1.c), func_1(_wgslsmith_div_f32(-145f, 525f)), reverseBits(countOneBits(vec3<i32>(2147483647i, -1749i, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(step(-2033f, -135f)), -1043f, _wgslsmith_f_op_f32(f32(-1f) * -1834f), -2009f)), abs(~(~var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-634f, 432f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-986f, -693f) - vec2<f32>(402f, -848f))))), _wgslsmith_div_i32(max(_wgslsmith_sub_i32(var_0, u_input.a), u_input.a), func_5(Struct_3(Struct_2(var_1.a, false, var_0, 0u), ~global2.x, vec2<f32>(1f, 1f), min(var_1.c, 26759i)), ~17975i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(209f, 141f), vec2<f32>(-962f, -270f))))).c));
    var var_4 = _wgslsmith_dot_vec2_i32(~(abs(vec2<i32>(u_input.a, var_0) >> (vec2<u32>(var_3.b, 23531u) % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u))), countOneBits(vec2<i32>(u_input.a, max(var_3.d >> (var_3.a.d % 32u), _wgslsmith_mult_i32(-1i, u_input.a)))));
    let var_5 = ~(-(~select(vec4<i32>(-1i, u_input.a, var_0, 12963i), ~vec4<i32>(-5156i, -5548i, 2147483647i, u_input.a), select(vec4<bool>(false, true, var_3.a.a.x, true), vec4<bool>(false, var_1.a.x, false, false), var_1.b))));
    var_4 = 11564i | -(-1i << (_wgslsmith_clamp_u32(var_1.d, u_input.b.x, var_1.d) % 32u));
    var var_6 = -508f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(min(28879u, u_input.b.x) | 8837u), u_input.b.x, 29749u, 4294967295u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(ceil(679f))).c.x), 1000f)), func_5(Struct_3(func_6(Struct_2(vec3<bool>(true, true, true), global0.x, -2147483647i, 4294967295u), var_0).a, countOneBits(var_1.d), var_3.c, -var_1.c << (_wgslsmith_div_u32(global2.x, 14484u) % 32u)), -(_wgslsmith_add_i32(var_0, var_0) << (1u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, var_3.c.x)) * _wgslsmith_f_op_vec2_f32(var_3.c - vec2<f32>(var_3.c.x, 1435f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1366f), 763f))).d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.c)), ~var_3.a.d);
}

