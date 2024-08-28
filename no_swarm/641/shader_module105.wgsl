struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -238f);
}

fn func_2(arg_0: u32) -> i32 {
    global0 = array<vec2<f32>, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-208f, _wgslsmith_div_f32(1489f, -722f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-252f - -843f), _wgslsmith_f_op_f32(floor(1116f))))), _wgslsmith_f_op_f32(func_3(Struct_1(~u_input.a, min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(45438i, u_input.a)), ~(-26083i), vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.d))))), vec2<f32>(-199f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f - 1084f) * _wgslsmith_f_op_f32(min(-730f, 269f))), _wgslsmith_f_op_f32(1847f * _wgslsmith_f_op_f32(round(-1000f)))))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(false, true, false, false)), true), vec2<bool>(any(vec4<bool>(false, true, true, false)), 55190u == arg_0))));
    global2 = array<vec3<bool>, 10>();
    global1 = array<vec3<i32>, 30>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 203f, var_0.x)))), -132f);
    return -1i;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = -abs(arg_0);
    let var_1 = any(vec2<bool>(true, true));
    global1 = array<vec3<i32>, 30>();
    global2 = array<vec3<bool>, 10>();
    return Struct_2(~min(_wgslsmith_mod_i32(-arg_0, _wgslsmith_dot_vec2_i32(arg_2.b, arg_2.b)), 0i), 143f, select(firstTrailingBit(vec4<i32>(arg_0, var_0, -28793i, abs(-2147483647i))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, 0i, -2147483647i, 203i)) >> (~u_input.e % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -49533i, arg_2.a, u_input.c), vec4<i32>(var_0, arg_2.b.x, var_0, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0, 1i, arg_3), vec4<i32>(arg_2.a, 0i, u_input.c, u_input.a)))), arg_2.d.x < ~arg_2.d.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_5 {
    global0 = array<vec2<f32>, 19>();
    var var_0 = !(!select(vec3<bool>(true, any(vec2<bool>(true, false)), true), vec3<bool>(any(global2[_wgslsmith_index_u32(1u, 10u)]), true, true), arg_0.b > _wgslsmith_f_op_f32(arg_0.b + -1000f)));
    global2 = array<vec3<bool>, 10>();
    let var_1 = Struct_2(i32(-1i) * -46860i, _wgslsmith_f_op_f32(func_3(Struct_1(-1i, vec2<i32>(-arg_3.b.x, 0i), _wgslsmith_mod_i32(33644i, u_input.c << (u_input.d % 32u)), abs(arg_3.d)))), vec4<i32>(_wgslsmith_sub_i32(u_input.a, -49008i), 2147483647i ^ abs(firstTrailingBit(0i)), arg_1.c.x, i32(-1i) * -4804i));
    var var_2 = _wgslsmith_mult_u32(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_3.d.wz, vec2<u32>(u_input.d, u_input.b)), 74767u), 40646u, var_0.x), firstTrailingBit(arg_3.d.x));
    return Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 582f, 810f) + vec3<f32>(var_1.b, 302f, arg_1.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b, arg_0.b, -648f), vec3<f32>(246f, 307f, -1331f), true)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b, 363f, arg_1.b))), var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, var_1.b, var_1.b)) - vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1656f), -100f))), arg_1.b);
}

fn func_1() -> Struct_4 {
    var var_0 = func_5(func_4(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-4116i, u_input.c), 23500i), 25112i), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1113f - -1197f), -136f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -134f), -1156f)), 463f), Struct_1(func_2(u_input.d), select(vec2<i32>(u_input.a, u_input.c), vec2<i32>(0i, u_input.a), vec2<bool>(false, true)) | vec2<i32>(-23207i, u_input.a), firstLeadingBit(23328i), u_input.e & (vec4<u32>(u_input.e.x, 11657u, 34102u, 58984u) >> (u_input.e % vec4<u32>(32u)))), _wgslsmith_sub_i32(max(~u_input.c, abs(u_input.c)), -36554i)), Struct_2(_wgslsmith_div_i32(u_input.c, select(u_input.a ^ 2147483647i, u_input.c, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1655f + 971f))), ~(~firstLeadingBit(vec4<i32>(0i, u_input.a, 29569i, u_input.a)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(7352u, 1u), _wgslsmith_mult_u32(u_input.b | 45286u, _wgslsmith_mult_u32(u_input.d, 0u)) | u_input.b, 0u), 30u)], Struct_1(select(-2147483647i, -2147483647i, true), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(-1i, -1i), vec2<i32>(u_input.c, 3566i)), vec2<i32>(u_input.a, 0i) ^ vec2<i32>(0i, u_input.c)), min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(-5293i, u_input.a)), vec2<i32>(2106i, u_input.a))), _wgslsmith_add_i32(func_2(u_input.e.x), u_input.a | u_input.c) & -27614i, u_input.e));
    var var_1 = vec4<u32>(25979u, _wgslsmith_dot_vec4_u32(u_input.e, ~(vec4<u32>(0u, 17027u, u_input.e.x, 1u) | vec4<u32>(u_input.e.x, u_input.d, 0u, 94269u))), ~u_input.b, _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, 5017u), max(u_input.e.x, 0u)))) | _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, u_input.d, u_input.e.x, 50451u) & vec4<u32>(0u, 1u, u_input.d, 6585u), abs(vec4<u32>(u_input.d, 39774u, u_input.b, u_input.d)), true), _wgslsmith_mult_vec4_u32(min(vec4<u32>(35571u, 4294967295u, u_input.b, 10480u), u_input.e), vec4<u32>(27797u, u_input.b, 0u, 1u))), firstTrailingBit(u_input.e));
    var var_2 = Struct_1(abs(-1i) | u_input.c, firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.c, u_input.c))) << (u_input.e.yy % vec2<u32>(32u)), _wgslsmith_sub_i32(u_input.c, -u_input.a), max((firstLeadingBit(vec4<u32>(0u, 11283u, var_1.x, u_input.d)) << (u_input.e % vec4<u32>(32u))) & vec4<u32>(~1u, var_1.x, 0u >> (u_input.e.x % 32u), var_1.x), vec4<u32>(40349u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.e.xzz, var_1.wxw), var_1.x & u_input.b), u_input.d, ~_wgslsmith_div_u32(1u, u_input.b))));
    global1 = array<vec3<i32>, 30>();
    var var_3 = vec3<u32>(var_1.x, var_2.d.x, u_input.e.x);
    return Struct_4(~1u & var_2.d.x, -14361i, Struct_3(Struct_1(-45808i, var_2.b ^ vec2<i32>(-2147483647i, var_2.c), func_2(firstTrailingBit(u_input.e.x)), countOneBits(vec4<u32>(var_1.x, 4294967295u, 4294967295u, var_3.x)) & var_2.d), Struct_1(_wgslsmith_clamp_i32(countOneBits(0i), 1i, _wgslsmith_mod_i32(-1i, u_input.a)), var_2.b, _wgslsmith_mod_i32(u_input.c, firstLeadingBit(u_input.a)), vec4<u32>(~0u, 0u, 4294967295u, ~41021u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f - -699f)) * var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1625f))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(abs(~66373u), 30u)];
    var var_1 = 436f;
    let var_2 = ~4977u;
    var var_3 = true | !(!(arg_0.c.b.c == 0i));
    var_3 = select(true, any(!select(global2[_wgslsmith_index_u32(var_2, 10u)], vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true);
    return arg_0.c.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_6(func_1(), func_1().c.b, select(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.a), _wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(u_input.c, 27220i, 2147483647i, u_input.c)), max(countOneBits(vec4<i32>(u_input.c, 92124i, u_input.c, 2147483647i)), vec4<i32>(u_input.c, 11671i, u_input.c, -4555i) ^ vec4<i32>(u_input.c, -7976i, u_input.c, u_input.a))), ~u_input.d == _wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.e.wxx, u_input.e.zww)))), 19u)];
    let var_1 = func_5(Struct_2(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-558f - var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -458f) * _wgslsmith_f_op_f32(min(1558f, -1044f)))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 15334i), vec2<i32>(u_input.a, u_input.c)), -1i), ~vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a))), func_4(~reverseBits(~1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-963f, -897f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 333f, -1417f)))), Struct_1(-_wgslsmith_add_i32(u_input.c, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 52173i), vec2<i32>(u_input.c, u_input.a))), max(u_input.a, func_2(u_input.b)), _wgslsmith_mod_vec4_u32(~u_input.e, ~vec4<u32>(u_input.e.x, 36528u, 4294967295u, 1u))), 1i), global1[_wgslsmith_index_u32(~u_input.b, 30u)], Struct_1(-(~(-2147483647i)) >> (u_input.e.x % 32u), vec2<i32>(~2147483647i, select(~u_input.c, -2147483647i, false)), -_wgslsmith_mod_i32(2147483647i, u_input.c), ~vec4<u32>(_wgslsmith_div_u32(8395u, u_input.e.x), 21623u, u_input.e.x, u_input.d)));
    global2 = array<vec3<bool>, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1109f, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(var_1.a.x * 931f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(274f, var_0.x, var_1.b, -1000f)) - vec4<f32>(-690f, _wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(max(411f, var_1.b))))));
    let var_3 = 18123u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.b, var_0.x, -851f) + vec4<f32>(var_2.x, var_0.x, var_1.b, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(931f, var_0.x, var_0.x, -779f) + vec4<f32>(var_1.b, -1765f, -1000f, var_2.x))))));
}

