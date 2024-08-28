struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(4294967295u, 25397u), false, vec4<bool>(true, true, false, false), false, vec2<f32>(1428f, 582f));

var<private> global1: array<f32, 5>;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = arg_0;
    global0 = Struct_2(arg_1.a, true, select(!select(!global0.c, vec4<bool>(false, false, arg_0.d, var_0.b), arg_1.c), select(select(vec4<bool>(arg_1.c.x, arg_0.c.x, true, arg_0.d), !arg_1.c, vec4<bool>(true, true, arg_3.c, arg_1.b)), vec4<bool>(arg_0.c.x, any(arg_0.c.xww), true && global0.c.x, !arg_0.b), vec4<bool>(select(false, true, arg_3.c), true, all(arg_1.c.zw), global0.c.x || true)), arg_0.c), false, _wgslsmith_f_op_vec2_f32(var_0.e - var_0.e));
    var var_1 = _wgslsmith_sub_i32(-_wgslsmith_div_i32(-(~arg_2), _wgslsmith_dot_vec4_i32(vec4<i32>(-35413i, 2147483647i, arg_2, arg_3.a), vec4<i32>(37416i, arg_2, arg_3.a, arg_3.a)) << (global0.a.x % 32u)), 14471i >> (1u % 32u));
    global2 = ~(-13901i) <= -u_input.b;
    global0 = arg_0;
    return !var_0.d;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_1(arg_0.x, _wgslsmith_add_vec3_u32(max(vec3<u32>(firstLeadingBit(1u), ~1u, arg_1.x), vec3<u32>(_wgslsmith_mod_u32(u_input.c, arg_1.x), arg_1.x & global0.a.x, ~25860u)), countOneBits(max(vec3<u32>(global0.a.x, arg_1.x, 0u) >> (u_input.e % vec3<u32>(32u)), countOneBits(vec3<u32>(u_input.c, global0.a.x, global0.a.x))))), select(global0.c.x, any(vec4<bool>(false, func_3(Struct_2(vec2<u32>(global0.a.x, global0.a.x), global0.c.x, vec4<bool>(true, true, global0.d, true), global0.d, vec2<f32>(-271f, 1087f)), Struct_2(arg_1, global0.b, global0.c, global0.b, vec2<f32>(-167f, global0.e.x)), 54006i, Struct_1(2147483647i, u_input.e, false, vec4<u32>(global0.a.x, u_input.c, u_input.c, 78894u))), global0.b & global0.c.x, global0.d)), !(!global0.c.x)), _wgslsmith_add_vec4_u32(select(~vec4<u32>(34183u, u_input.e.x, u_input.c, 1u), _wgslsmith_mult_vec4_u32(~vec4<u32>(21634u, u_input.e.x, arg_1.x, arg_1.x), vec4<u32>(global0.a.x, u_input.c, 0u, global0.a.x)), select(!vec4<bool>(true, false, global0.b, global0.c.x), vec4<bool>(true, true, true, true), vec4<bool>(true, global0.b, false, true))), ~(~vec4<u32>(1u, 19587u, 32764u, 53998u) | min(vec4<u32>(4294967295u, 1u, u_input.e.x, 8040u), vec4<u32>(10688u, arg_1.x, 4294967295u, 1u)))));
    let var_1 = true;
    var_0 = Struct_1(_wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), i32(-1i) * -10120i, 1i >> (u_input.c % 32u)), var_0.a, -38903i), u_input.e, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(var_0.b.x, 0u)), 5u)], -1000f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), var_0.d | abs(var_0.d));
    global2 = true || (all(!(!vec3<bool>(false, var_0.c, false))) | false);
    global2 = any(!global0.c.xw);
    return Struct_2(~var_0.b.xz, global0.b, global0.c, (true || global0.d) | !(_wgslsmith_f_op_f32(f32(-1f) * -124f) < _wgslsmith_f_op_f32(sign(-970f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(global0.e, arg_2.yy)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1793f, -1471f))), global0.e));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_1.c.zy;
    let var_1 = arg_1.d;
    global2 = -(select(arg_2.a, -9180i & arg_2.a, !global0.d) | arg_2.a) != min(arg_3.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(-13260i, -9432i), vec2<i32>(-1i, arg_3.a))));
    var var_2 = arg_2;
    global2 = arg_3.c;
    return Struct_2(arg_1.a, arg_2.a != _wgslsmith_mod_i32(arg_3.a, arg_2.a), vec4<bool>(arg_2.c, !any(vec2<bool>(global0.c.x, true)), false, any(global0.c.xzw)), var_1, global0.e);
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 5>();
    return func_4(~(~82094u), func_2(~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -33122i), vec2<i32>(u_input.b, 24882i)), ~vec2<i32>(u_input.a, u_input.a)), abs(vec2<u32>(u_input.c, _wgslsmith_sub_u32(global0.a.x, 0u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, -119f, global1[_wgslsmith_index_u32(12353u, 5u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, -244f, 652f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, -623f, global0.e.x))))), Struct_1(i32(-1i) * -_wgslsmith_mod_i32(2147483647i, u_input.d), ~abs(~u_input.e), true, firstTrailingBit(select(vec4<u32>(1u, 1u, u_input.e.x, global0.a.x), vec4<u32>(26249u, 53672u, 55431u, 0u) | vec4<u32>(u_input.c, 51093u, 1u, 1u), vec4<bool>(global0.c.x, false, true, global0.c.x)))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(59090i, u_input.a, 2147483647i) >> (vec3<u32>(25691u, 0u, u_input.c) % vec3<u32>(32u)), vec3<i32>(-19943i, u_input.d, u_input.d) & vec3<i32>(u_input.d, -1i, 34427i)), -select(u_input.b, u_input.d, false)), u_input.e, global0.d, vec4<u32>(18960u, u_input.e.x, _wgslsmith_add_u32(global0.a.x, ~u_input.e.x), countOneBits(global0.a.x))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = false;
    global1 = array<f32, 5>();
    global1 = array<f32, 5>();
    global0 = Struct_2(u_input.e.yz & u_input.e.yx, false, global0.c, var_0 | true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1546f, arg_0.e.x)) + _wgslsmith_f_op_vec2_f32(global0.e + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.e))))));
    global0 = Struct_2(~abs(global0.a | vec2<u32>(59927u, 4294967295u)), 1u < (global0.a.x << (1u % 32u)), !select(func_1().c, vec4<bool>(func_2(vec2<i32>(u_input.b, u_input.b), vec2<u32>(global0.a.x, arg_0.a.x), vec3<f32>(arg_0.e.x, global0.e.x, arg_0.e.x)).d, func_3(arg_0, arg_0, -31187i, Struct_1(-1i, vec3<u32>(0u, 0u, u_input.c), true, vec4<u32>(0u, 4294967295u, arg_0.a.x, u_input.e.x))), global0.d, true), !(!global0.c)), func_3(Struct_2(func_2(firstLeadingBit(vec2<i32>(-1i, u_input.d)), arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, global0.e.x, arg_0.e.x))).a, false, arg_0.c, !(!arg_0.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.e, vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 5u)], -1959f))), vec2<f32>(1000f, -637f))), Struct_2(vec2<u32>(_wgslsmith_clamp_u32(u_input.e.x, global0.a.x, 49802u), func_4(u_input.e.x, arg_0, Struct_1(-2147483647i, u_input.e, var_0, vec4<u32>(arg_0.a.x, arg_0.a.x, global0.a.x, global0.a.x)), Struct_1(1i, vec3<u32>(4294967295u, 50324u, 4294967295u), true, vec4<u32>(u_input.e.x, 4294967295u, u_input.c, 69103u))).a.x), true, !(!vec4<bool>(global0.c.x, false, var_0, true)), select(global0.b, 2147483647i <= u_input.a, !global0.d), vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.e.x, global0.e.x)), _wgslsmith_f_op_f32(ceil(705f)))), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.d, u_input.b, 20143i), vec4<i32>(1i, u_input.a, u_input.d, u_input.b)), ~vec4<i32>(u_input.d, u_input.d, -14865i, -32361i) >> (vec4<u32>(global0.a.x, u_input.c, global0.a.x, 0u) % vec4<u32>(32u))), Struct_1(abs(abs(u_input.d)), ~vec3<u32>(4294967295u, 1u, 0u), arg_0.b, ~vec4<u32>(2761u, global0.a.x, 1u, global0.a.x) & ~vec4<u32>(arg_0.a.x, 4294967295u, global0.a.x, arg_0.a.x))), vec2<f32>(-2139f, global1[_wgslsmith_index_u32(4294967295u, 5u)]));
    return Struct_1(-5304i, ~(u_input.e ^ ~(~vec3<u32>(30818u, arg_0.a.x, 25646u))), true, _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c), ~0u, max(global0.a.x, 21610u), 4294967295u), vec4<u32>(max(arg_0.a.x, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, u_input.e.x), vec4<u32>(u_input.c, u_input.e.x, arg_0.a.x, 39515u)), arg_0.a.x, u_input.c)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global0.a.x, arg_0.a.x), ~arg_0.a.x, _wgslsmith_mult_u32(23701u, 0u), abs(31553u)), ~(~vec4<u32>(global0.a.x, global0.a.x, u_input.c, u_input.e.x))) % vec4<u32>(32u)));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global2 = true;
    global0 = func_2(_wgslsmith_clamp_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-5321i, arg_0.a), vec2<i32>(arg_0.a, u_input.d)), vec2<i32>(arg_0.a, -9021i), global0.d & true), ~vec2<i32>(-1i, u_input.a) << (global0.a % vec2<u32>(32u)), select(-vec2<i32>(u_input.b, -1i), -vec2<i32>(u_input.b, arg_0.a), true)) << (~(~_wgslsmith_mult_vec2_u32(arg_0.d.wy, arg_0.b.xz)) % vec2<u32>(32u)), global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(~4294967295u, 5u)], _wgslsmith_f_op_f32(exp2(global0.e.x)), 1335f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 5u)], -1285f, -1772f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 5u)], 1000f, global0.e.x) - vec3<f32>(global0.e.x, 1349f, -292f))))));
    global0 = func_4(_wgslsmith_div_u32(arg_0.d.x, arg_0.d.x | _wgslsmith_add_u32(arg_0.d.x, global0.a.x)) & 33490u, Struct_2(func_5(Struct_2(global0.a & arg_0.b.yz, true, global0.c, select(true, global0.d, true), _wgslsmith_div_vec2_f32(vec2<f32>(-871f, global1[_wgslsmith_index_u32(arg_0.b.x, 5u)]), global0.e))).b.xy, 2452f <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-2460f)), global0.e.x)), !(!global0.c), any(func_4(countOneBits(35085u), Struct_2(global0.a, true, vec4<bool>(arg_0.c, true, false, arg_0.c), arg_0.c, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global0.e.x)), Struct_1(-2147483647i, arg_0.b, false, arg_0.d), Struct_1(-24625i, arg_0.d.xxz, arg_0.c, arg_0.d)).c), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_4(global0.a.x, Struct_2(global0.a, false, vec4<bool>(false, global0.b, false, false), arg_0.c, vec2<f32>(514f, 198f)), arg_0, arg_0).e, _wgslsmith_f_op_vec2_f32(-global0.e)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, global1[_wgslsmith_index_u32(u_input.c, 5u)])))))), Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(min(16067i, 0i), arg_0.a), u_input.a), ~(~vec3<u32>(4294967295u, global0.a.x, arg_0.d.x)), true, arg_0.d & firstTrailingBit(arg_0.d)), func_5(Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.x, u_input.e.x), u_input.e.yx), false, select(select(global0.c, vec4<bool>(false, arg_0.c, true, global0.d), global0.b), vec4<bool>(true, false, arg_0.c, arg_0.c), true), func_2(vec2<i32>(0i, 1i) & vec2<i32>(arg_0.a, -2147483647i), _wgslsmith_mod_vec2_u32(vec2<u32>(136126u, arg_0.d.x), u_input.e.xx), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(29554u, 5u)], 391f, global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<f32>(-157f, -999f, -642f))).b, vec2<f32>(-1430f, func_1().e.x))));
    var var_0 = arg_0;
    global1 = array<f32, 5>();
    return Struct_2(var_0.b.xz, var_0.c, vec4<bool>(true, !(!any(vec3<bool>(global0.c.x, global0.d, arg_0.c))), ~1i <= _wgslsmith_sub_i32(_wgslsmith_div_i32(-51519i, -1i), u_input.d), global0.d), var_0.c, func_2(-vec2<i32>(1i, 1i), global0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, global0.e.x, global0.e.x) - vec3<f32>(global1[_wgslsmith_index_u32(54404u, 5u)], -1000f, global0.e.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, global0.e.x, 624f)))))).e);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, 0i) | ~vec2<i32>(-17450i, -1i), firstLeadingBit(vec2<i32>(u_input.a, u_input.d)), vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.d)), (_wgslsmith_add_vec2_u32(~global0.a, u_input.e.yy) ^ vec2<u32>(abs(arg_0.a.x), global0.a.x)) << (vec2<u32>(countOneBits(~arg_1.a.x), global0.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.e.x - arg_1.e.x), global1[_wgslsmith_index_u32(arg_1.a.x, 5u)], _wgslsmith_f_op_f32(ceil(-1518f)))) * vec3<f32>(_wgslsmith_div_f32(-1146f, _wgslsmith_f_op_f32(-arg_0.e.x)), global0.e.x, _wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.a.x, 5u)] - global1[_wgslsmith_index_u32(45069u, 5u)])))));
    var var_1 = func_1().c;
    global1 = array<f32, 5>();
    var_1 = vec4<bool>(!(any(arg_0.c.yzy) | arg_1.c.x), all(arg_1.c), false, all(func_4(_wgslsmith_div_u32(~var_0.a.x, ~60495u), arg_0, func_5(Struct_2(u_input.e.zx, true, vec4<bool>(true, global0.b, arg_1.b, arg_1.b), arg_0.d, global0.e)), func_5(func_6(Struct_1(-1i, vec3<u32>(u_input.e.x, arg_1.a.x, arg_0.a.x), false, vec4<u32>(16097u, global0.a.x, var_0.a.x, 1u))))).c.wzy));
    global2 = var_0.c.x;
    return Struct_2((vec2<u32>(1u, firstTrailingBit(u_input.c)) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, 0u, 1u), vec4<u32>(arg_1.a.x, arg_1.a.x, 1u, arg_1.a.x)), ~global0.a.x)) | _wgslsmith_add_vec2_u32(u_input.e.yx, ~global0.a), global0.d, arg_1.c, min(func_1().a.x, abs(max(77439u, u_input.c))) > arg_0.a.x, func_1().e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(func_1())), func_1());
    let var_1 = var_0.a.x;
    var var_2 = select(global0.c.zx, vec2<bool>(!func_7(Struct_2(global0.a, global0.d, vec4<bool>(false, true, var_0.c.x, var_0.d), true, vec2<f32>(777f, var_0.e.x)), Struct_2(vec2<u32>(global0.a.x, 16561u), global0.c.x, vec4<bool>(false, global0.c.x, true, true), var_0.b, global0.e)).b && func_4(var_0.a.x, func_7(Struct_2(vec2<u32>(u_input.e.x, global0.a.x), global0.b, var_0.c, true, var_0.e), Struct_2(u_input.e.yy, var_0.b, var_0.c, true, vec2<f32>(global0.e.x, global0.e.x))), func_5(Struct_2(u_input.e.yy, true, vec4<bool>(false, var_0.b, var_0.c.x, global0.d), false, var_0.e)), Struct_1(u_input.b, vec3<u32>(0u, var_0.a.x, 4294967295u), false, vec4<u32>(var_0.a.x, 54570u, 1750u, 0u))).b, true), var_0.b);
    global1 = array<f32, 5>();
    global0 = Struct_2(~vec2<u32>(~4294967295u, var_0.a.x >> (85797u % 32u)) & global0.a, !(!var_2.x), var_0.c, any(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, var_2.x), false)), false, true)), _wgslsmith_f_op_vec2_f32(-var_0.e));
    let var_3 = i32(-1i) * -u_input.a;
    var var_4 = func_5(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 30013u & _wgslsmith_dot_vec4_u32(~vec4<u32>(22956u, 1u, global0.a.x, 1u), vec4<u32>(func_7(Struct_2(u_input.e.xx, true, vec4<bool>(true, false, global0.b, var_0.c.x), var_2.x, vec2<f32>(global0.e.x, 1420f)), Struct_2(var_4.b.xy, true, global0.c, true, vec2<f32>(global0.e.x, var_0.e.x))).a.x, func_1().a.x, 4294967295u, ~var_4.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1366f))));
}

