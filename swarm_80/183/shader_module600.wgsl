struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec4<bool>) -> i32 {
    return ~arg_0.x;
}

fn func_3(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), 478f, ~vec3<i32>(~u_input.a, 0i, -16173i), u_input.c, firstTrailingBit(vec3<u32>(max(u_input.b.x, 6399u), select(u_input.b.x, u_input.c, false), ~u_input.c))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), -472f), arg_0.x, firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, 2147483647i, -47813i))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzz, ~vec3<u32>(4294967295u, u_input.b.x, u_input.c)), _wgslsmith_div_u32(4294967295u, ~u_input.c)), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 0u), u_input.b)), ~abs(51140u))), Struct_1(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.x)))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.x, 628f), arg_0.x))), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(13038i, 2147483647i, 24293i)) ^ (vec3<i32>(-43537i, u_input.a, -2147483647i) << (u_input.b.xww % vec3<u32>(32u))), countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a) << (u_input.b.zww % vec3<u32>(32u)))), select(firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(52251u, u_input.b.x), all(vec2<bool>(false, false))), u_input.b.yzw), firstTrailingBit(countOneBits(0u)));
    let var_1 = vec4<bool>(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), -984f >= var_0.c.b)), all(vec4<bool>(arg_0.x == _wgslsmith_f_op_f32(sign(-1438f)), true, any(vec4<bool>(true, true, true, true)), true)), any(vec3<bool>(true, true, true)), !(true & all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.a.b, -775f, var_1.x)), _wgslsmith_f_op_f32(min(var_0.a.a, var_0.b.a)))), _wgslsmith_div_f32(-1094f, -1163f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.b)) * -288f) - -1000f), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.c.c.x, u_input.a, var_0.a.c.x), var_0.c.c), select(firstLeadingBit(u_input.a), 0i | u_input.a, 365f != arg_0.x), var_0.a.c.x & 1i), u_input.b.x, vec3<u32>(~(~1255u), 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.c.d, 1u), 4294967295u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.b.a, 791f)))) * -526f), arg_0.x, countOneBits(abs(var_0.b.c)) ^ -firstLeadingBit(var_0.b.c), _wgslsmith_mult_u32(1u, ~(~40090u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d, 1u, u_input.c) & _wgslsmith_div_vec3_u32(u_input.b.xxz, vec3<u32>(u_input.b.x, var_0.a.e.x, 49500u)), vec3<u32>(var_0.a.e.x, _wgslsmith_add_u32(1u, u_input.c), ~4294967295u))), Struct_1(var_0.a.a, arg_0.x, abs(min(vec3<i32>(-1i, u_input.a, u_input.a) & var_0.c.c, var_0.b.c)), _wgslsmith_div_u32(var_0.b.d, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), u_input.c ^ 4294967295u)), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(var_0.b.e, var_0.a.e), vec3<u32>(33329u, var_0.d, 0u))), ~abs(1u));
    return abs(vec2<i32>(~(i32(-1i) * -12779i), _wgslsmith_dot_vec3_i32(~vec3<i32>(31334i, var_0.b.c.x, -24898i), -vec3<i32>(-45322i, 0i, 54943i) >> ((vec3<u32>(var_0.d, var_0.b.d, var_0.b.e.x) | vec3<u32>(445u, var_0.b.d, u_input.b.x)) % vec3<u32>(32u)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    global0 = array<vec4<f32>, 7>();
    var var_0 = min(_wgslsmith_add_vec4_i32(-vec4<i32>(4880i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -4111i, 0i), vec3<i32>(34810i, -24085i, 27876i)), _wgslsmith_div_i32(u_input.a, -44080i), u_input.a), select(~abs(vec4<i32>(1i, 43765i, 0i, 16259i)), -(vec4<i32>(0i, 51106i, 12295i, 6788i) >> (u_input.b % vec4<u32>(32u))), all(!arg_1))), vec4<i32>(_wgslsmith_sub_i32(0i >> (_wgslsmith_mod_u32(0u, 1u) % 32u), -20111i << (u_input.b.x % 32u)), ~min(func_2(vec4<i32>(u_input.a, -53831i, 7969i, -12264i), arg_0, vec2<u32>(u_input.b.x, u_input.b.x), vec4<bool>(arg_1.x, false, false, false)), firstTrailingBit(u_input.a)), _wgslsmith_sub_i32(countOneBits(u_input.a) >> ((u_input.b.x & u_input.b.x) % 32u), countOneBits(u_input.a) & -u_input.a), -1i));
    var_0 = vec4<i32>(abs(_wgslsmith_dot_vec2_i32(select(func_3(arg_0.d.xx), func_3(arg_0.d.yy), !arg_1), _wgslsmith_sub_vec2_i32(-var_0.xx, -var_0.zy))), -1i >> (select(~u_input.b.x & _wgslsmith_mult_u32(46524u, 1125u), u_input.b.x, true) % 32u), _wgslsmith_clamp_i32(var_0.x, ~func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1000f) - arg_0.e.ww)).x, -1i), -countOneBits(u_input.a));
    var var_1 = !all(select(select(arg_1, arg_1, arg_1), select(vec2<bool>(false, arg_0.a), arg_1, arg_1), arg_1.x)) & arg_1.x;
    var_0 = max(abs(~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -19453i, -27198i), vec4<i32>(1910i, -1i, -28202i, -2147483647i)))), vec4<i32>(_wgslsmith_mult_i32(1i, u_input.a), var_0.x, firstTrailingBit(2147483647i), ~(i32(-1i) * -2147483647i)));
    return Struct_3(1160f < arg_0.b, arg_0.b, any(!vec4<bool>(arg_1.x, !arg_0.a, true, all(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(588f, 2035f, _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, arg_2, arg_2) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.e.x, arg_2) * arg_0.e.yzy)))), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c << (1u % 32u)), 7u)]);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> f32 {
    var var_0 = -6113i;
    global0 = array<vec4<f32>, 7>();
    var var_1 = arg_1.a;
    return arg_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_3(true | all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(floor(arg_0.x)), -_wgslsmith_sub_i32(~0i, _wgslsmith_add_i32(2147483647i, arg_2.x)) <= _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), vec2<i32>(arg_1.b.c.x, -4976i)), abs(arg_2)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.b - arg_1.a.b), _wgslsmith_div_f32(1748f, -1000f), _wgslsmith_f_op_f32(exp2(arg_0.x)))))), vec4<f32>(_wgslsmith_div_f32(arg_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a + arg_0.x)), arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(-1124f, Struct_3(true, arg_1.b.a, true, vec3<f32>(155f, arg_1.b.b, arg_1.c.a), vec4<f32>(-803f, arg_0.x, arg_1.c.b, arg_1.a.b)))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(1f, func_1(Struct_3(var_0.c, arg_1.a.b, var_0.c, vec3<f32>(arg_0.x, -645f, 297f), vec4<f32>(725f, var_0.b, arg_0.x, -890f)), vec2<bool>(var_0.c, var_0.c), 261f)))), arg_1.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.b * var_0.b), _wgslsmith_f_op_f32(-var_0.d.x))))), _wgslsmith_mult_vec3_i32(~(~_wgslsmith_mult_vec3_i32(arg_1.c.c, vec3<i32>(arg_1.c.c.x, u_input.a, -2147483647i))), arg_1.c.c), ~(~(u_input.b.x & arg_1.d)) | _wgslsmith_dot_vec3_u32(min(reverseBits(arg_1.c.e), ~arg_1.a.e), u_input.b.xzw), u_input.b.yxw);
    var var_2 = 1373f;
    let var_3 = u_input.c | reverseBits(countOneBits(arg_1.a.d));
    var_0 = func_1(func_1(Struct_3(select(all(vec3<bool>(var_0.c, var_0.c, true)), var_3 < arg_1.d, true), 1000f, true, vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-arg_1.a.a), arg_1.b.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(27374u, 7u)])))), select(!(!vec2<bool>(var_0.a, var_0.c)), select(!vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.c), vec2<bool>(var_0.a, var_0.c)), false), arg_0.x), select(vec2<bool>(var_0.c, !any(vec4<bool>(var_0.a, false, true, var_0.c))), select(!(!vec2<bool>(false, var_0.a)), select(select(vec2<bool>(var_0.c, var_0.a), vec2<bool>(false, true), vec2<bool>(var_0.a, true)), vec2<bool>(false, false), !vec2<bool>(var_0.a, true)), !select(vec2<bool>(var_0.c, var_0.a), vec2<bool>(var_0.a, false), true)), vec2<bool>(false, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, u_input.a, -2147483647i), vec3<i32>(-20154i, 1i, u_input.a)) >= 34660i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.a.a)), var_1.b) - -119f))));
    return Struct_3(var_0.a, arg_0.x, !(!(false && var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-912f, arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(var_1.a - -290f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a, 901f, var_0.b, arg_0.x))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.x, -1271f, arg_0.x, -1255f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1018f), 2187f))), Struct_2(Struct_1(1f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(round(-1341f)), func_1(Struct_3(true, 1019f, true, vec3<f32>(1654f, 2359f, 1000f), global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec2<bool>(false, true), -574f))), -_wgslsmith_div_vec3_i32(vec3<i32>(-6177i, 30323i, u_input.a), vec3<i32>(22554i, u_input.a, u_input.a)), ~(40041u ^ u_input.b.x), _wgslsmith_add_vec3_u32(u_input.b.xzz >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.c) % vec3<u32>(32u)), firstTrailingBit(u_input.b.wyy))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-164f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2142f * -429f) + _wgslsmith_f_op_f32(564f + -841f)), select(vec3<i32>(1i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 7145i, 2147483647i), abs(vec3<i32>(31868i, u_input.a, -39525i)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), ~1u, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c) << (vec3<u32>(4294967295u, u_input.c, 39868u) % vec3<u32>(32u)), vec3<u32>(u_input.c, u_input.b.x, 52092u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1011f * 668f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(188f * -132f), _wgslsmith_f_op_f32(1000f + -447f), true)), _wgslsmith_div_vec3_i32(-vec3<i32>(0i, u_input.a, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -9715i, 8204i), vec3<i32>(u_input.a, 0i, u_input.a))), u_input.c, select(abs(vec3<u32>(u_input.b.x, u_input.c, u_input.c)), _wgslsmith_mult_vec3_u32(u_input.b.wyx, vec3<u32>(0u, u_input.c, 0u)), func_1(Struct_3(false, 736f, false, vec3<f32>(629f, 877f, 2894f), global0[_wgslsmith_index_u32(68463u, 7u)]), vec2<bool>(false, true), 1383f).a)), max(_wgslsmith_add_u32(~1009u, max(23517u, u_input.b.x)), 24114u)), vec2<i32>(~_wgslsmith_div_i32(u_input.a, 1i), u_input.a << (u_input.c % 32u)));
    let var_1 = var_0.c;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b * -919f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, 1841f)))), vec3<i32>(u_input.a, 2147483647i, ~func_3(vec2<f32>(var_0.b, var_0.b)).x), ~(~u_input.c), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.c, 4294967295u, u_input.b.x) & vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), vec3<u32>(u_input.c, 1u, 32237u) << (vec3<u32>(20501u, 55273u, u_input.b.x) % vec3<u32>(32u)), var_0.c), vec3<u32>(0u, 1u, 0u))), Struct_1(784f, _wgslsmith_f_op_f32(var_0.d.x + -2195f), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(0i, u_input.a, 59430i)), -vec3<i32>(-1i, u_input.a, u_input.a)), ~(~u_input.b.x), u_input.b.yyw), Struct_1(_wgslsmith_f_op_f32(-var_0.d.x), var_0.b, ~(vec3<i32>(u_input.a, u_input.a, u_input.a) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -69618i, u_input.a), vec3<i32>(-40224i, 1i, 49775i))), reverseBits(u_input.b.x), ~(vec3<u32>(41804u, u_input.b.x, 1u) >> (vec3<u32>(u_input.b.x, u_input.c, 4294967295u) % vec3<u32>(32u)))), firstLeadingBit(min(u_input.c, max(u_input.c & u_input.c, firstLeadingBit(10319u)))));
    global0 = array<vec4<f32>, 7>();
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c.a)))));
    let var_4 = Struct_3(!(var_0.e.x != var_2.b.a), _wgslsmith_f_op_f32(var_3 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.c.b)), var_0.b)), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.e.xyx, var_0.e.wyz)), var_0.e);
    let var_5 = !(490f > _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a * var_0.e.x))));
    let var_6 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.b, ~(~vec4<u32>(var_6.d, u_input.c, 4988u, var_2.d))), _wgslsmith_f_op_f32(-var_2.b.a));
}

