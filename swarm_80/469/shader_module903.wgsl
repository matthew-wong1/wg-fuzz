struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5 = Struct_5(false, vec3<f32>(-674f, -334f, 511f), Struct_2(Struct_1(42828u, 333f), Struct_1(20955u, -180f)), Struct_4(Struct_2(Struct_1(80933u, 587f), Struct_1(23217u, -988f)), vec4<u32>(26596u, 4294967295u, 30026u, 0u), Struct_1(4294967295u, -1087f), vec2<i32>(-13472i, i32(-2147483648)), vec4<bool>(true, true, false, true)), 1u);

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-1320f, -637f), vec2<f32>(712f, 1000f), vec2<f32>(1000f, 731f), vec2<f32>(-625f, -1000f), vec2<f32>(-963f, 568f), vec2<f32>(-305f, 1251f));

var<private> global3: Struct_3;

var<private> global4: vec4<i32> = vec4<i32>(-1i, 2147483647i, 2147483647i, 4623i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = global3.c.xzz;
    var var_1 = Struct_3(~(vec2<i32>(_wgslsmith_add_i32(2147483647i, global1.d.d.x), abs(9906i)) >> (~_wgslsmith_mod_vec2_u32(global1.d.b.wy, vec2<u32>(1u, global3.e.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-318f, -1000f, 1000f, -1749f)) - _wgslsmith_f_op_vec4_f32(-global3.b))), _wgslsmith_f_op_vec4_f32(-global3.b))), reverseBits(select(vec4<i32>(-1i) * -vec4<i32>(global4.x, 13726i, -1i, 15783i), vec4<i32>(var_0.x, i32(-1i) * -15372i, -global1.d.d.x, 1i), select(!global0.d.e, vec4<bool>(global3.d.x, global1.a, global1.a, true), vec4<bool>(global1.d.e.x, global1.d.e.x, false, global0.a)))), select(vec3<bool>(global1.a, !(global1.a || global1.d.e.x), false), !global1.d.e.yxx, vec3<bool>(!global3.d.x, !(!global0.d.e.x), global1.a)), vec4<u32>(10551u, global0.d.a.b.a, _wgslsmith_mult_u32(countOneBits(_wgslsmith_mod_u32(global1.c.a.a, 4294967295u)), ~1u), select(_wgslsmith_mult_u32(u_input.a, firstLeadingBit(12544u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.d.b.x, u_input.a), ~1u, 25579u), true)));
    var var_2 = max(vec3<i32>(~2147483647i, i32(-1i) * -72238i, 16576i), -_wgslsmith_clamp_vec3_i32(max(vec3<i32>(global1.d.d.x, -2147483647i, global1.d.d.x), vec3<i32>(global1.d.d.x, global3.a.x, global0.d.d.x)), vec3<i32>(var_1.a.x, 2147483647i, global1.d.d.x) & global3.c.xxx, ~global3.c.zyy) ^ vec3<i32>(global1.d.d.x, -(~global0.d.d.x), -14223i));
    global4 = _wgslsmith_add_vec4_i32(var_1.c, ~(~(-var_1.c & _wgslsmith_mod_vec4_i32(vec4<i32>(-1592i, -2147483647i, var_1.a.x, var_1.a.x), var_1.c))));
    global1 = Struct_5(-483f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.b.b - 548f), -755f)), vec3<f32>(_wgslsmith_f_op_f32(global1.d.c.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f))), -931f, _wgslsmith_f_op_f32(abs(2532f))), Struct_2(global1.d.a.b, global1.d.c), global1.d, u_input.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.a.b + 461f), _wgslsmith_f_op_f32(-global3.b.x))), -1020f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.b.x, arg_0)), -968f), -561f))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    global3 = Struct_3(~(~(~abs(vec2<i32>(global4.x, global4.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(global0.c.b.b * _wgslsmith_f_op_f32(f32(-1f) * -420f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(1840f + arg_2.b), arg_2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-558f, global0.b.x, -974f, global3.b.x) + vec4<f32>(arg_2.b, -2448f, global3.b.x, arg_2.b)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, 580f, -294f)))))), vec4<i32>(global1.d.d.x, _wgslsmith_mod_i32(0i, global4.x), _wgslsmith_dot_vec3_i32(abs(abs(global3.c.yzy)), countOneBits(~global4.zzw)), _wgslsmith_dot_vec3_i32(abs(-arg_0.zww), arg_0.xyy)), vec3<bool>(true, global0.d.e.x, !global3.d.x), global0.d.b);
    let var_0 = _wgslsmith_mod_vec2_u32(~global1.d.b.zy, _wgslsmith_div_vec2_u32(~(min(vec2<u32>(u_input.a, global0.e), global3.e.zy) >> (vec2<u32>(19941u, 1u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 26180u), global3.e.ww), 1u)));
    var var_1 = global1.d;
    let var_2 = !(!select(select(select(var_1.e.yyy, vec3<bool>(global3.d.x, var_1.e.x, global3.d.x), global0.d.e.zxw), vec3<bool>(global3.d.x, false, true), select(vec3<bool>(true, global1.d.e.x, global3.d.x), global3.d, global1.d.e.x)), global1.d.e.zyy, vec3<bool>(true, all(global0.d.e), true)));
    global0 = Struct_5(!global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, 292f, -1895f)))))), global1.c, Struct_4(Struct_2(global1.d.c, Struct_1(~37110u, _wgslsmith_f_op_f32(floor(arg_1)))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.b.xw, global0.d.b.wy), countOneBits(4294967295u)), firstLeadingBit(~var_0.x), global1.e, ~1u), global0.c.b, ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.d.d.x, 2147483647i), vec2<i32>(26751i, -1i)), min(global4.xy, global3.c.xy)), global0.d.e), ~4294967295u);
    return global3.a;
}

fn func_4(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = ~((global0.d.b << (_wgslsmith_sub_vec4_u32(vec4<u32>(1839u, 4294967295u, 4294967295u, global1.c.b.a), global0.d.b) % vec4<u32>(32u))) & ~vec4<u32>(u_input.a, 0u, u_input.a, 30308u)) << (vec4<u32>(~abs(1u) << (_wgslsmith_sub_u32(global1.c.a.a, global3.e.x) % 32u), min(1u, 0u) | firstLeadingBit(global3.e.x), ~28823u, u_input.a) % vec4<u32>(32u));
    var var_1 = global4.x;
    let var_2 = all(!(!vec3<bool>(53012u <= global3.e.x, global3.d.x, global0.d.e.x)));
    global4 = vec4<i32>(~arg_0.x, global4.x, firstLeadingBit(-98742i), select(_wgslsmith_add_i32(_wgslsmith_add_i32(3456i, 1i), _wgslsmith_clamp_i32(global1.d.d.x, -70418i, 2147483647i)) & global3.c.x, -4382i, false));
    global0 = Struct_5(true, _wgslsmith_f_op_vec3_f32(select(global3.b.yzy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-453f, -576f, 571f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1231f, global3.b.x, 686f))), all(select(global3.d.yx, vec2<bool>(false, global1.d.e.x), vec2<bool>(true, true))))), global3.d)), global1.d.a, global1.d, 0u);
    return Struct_3(global1.d.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global3.b)) * global3.b), _wgslsmith_div_vec4_i32(select(firstLeadingBit(vec4<i32>(-4609i, 1i, global0.d.d.x, -19497i) ^ global3.c), global3.c | global3.c, all(global3.d) && any(vec3<bool>(global1.d.e.x, global1.a, global3.d.x))), vec4<i32>(abs(func_2(global3.c, global0.c.a.b, Struct_1(14909u, global1.b.x)).x), abs(1i << (0u % 32u)), select(1i, ~(-26626i), true), _wgslsmith_add_i32(select(29006i, -24387i, global3.d.x), global3.a.x))), !vec3<bool>(var_2, (arg_0.x <= global3.c.x) & select(false, true, true), global3.d.x), ~vec4<u32>(min(1u, ~60622u), ~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.d.b.x, global0.d.b.x, 1u), global3.e), var_0.x, 0u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(firstLeadingBit(-global0.d.d), select(vec2<i32>(-12864i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, 0i, 1i, global0.d.d.x), vec4<i32>(global3.c.x, -2147483647i, -1i, 20283i) >> (global1.d.b % vec4<u32>(32u)))), -_wgslsmith_mod_vec2_i32(global3.c.xy, arg_3.yz) >> (vec2<u32>(firstTrailingBit(1u), ~38902u) % vec2<u32>(32u)), all(select(select(global3.d.zx, vec2<bool>(false, arg_2), false), vec2<bool>(true, global3.d.x), !vec2<bool>(global0.a, false)))));
    global0 = Struct_5(true, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(arg_0.b.x + arg_1.b.b), arg_0.b.x)), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a.b), 1f))).zwx)), global0.c, global1.d, arg_1.a.a);
    var var_1 = 2576u;
    var var_2 = Struct_5(global3.d.x, vec3<f32>(func_4(-func_4(vec2<i32>(arg_0.c.x, -29901i)).c.yy).b.x, global1.c.a.b, global1.c.b.b), arg_1, Struct_4(global1.d.a, vec4<u32>(global3.e.x, ~global0.c.a.a, ~69309u, reverseBits(global3.e.x) | firstLeadingBit(4294967295u)), arg_1.a, vec2<i32>(global4.x, ~(-global4.x)), select(select(!global1.d.e, !vec4<bool>(false, false, global3.d.x, false), global0.d.e), select(select(vec4<bool>(true, true, false, global0.a), global0.d.e, true), select(global0.d.e, global0.d.e, global0.d.e), !global1.d.e.x), global1.d.e.x)), arg_0.e.x);
    var_1 = ~(global3.e.x & reverseBits(~(~global3.e.x)));
    return Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(trunc(341f)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = global0.c;
    let var_1 = var_0.a.b;
    var var_2 = Struct_2(func_5(func_4(min(vec2<i32>(0i, global0.d.d.x), func_2(vec4<i32>(global4.x, 1i, 23247i, 0i), global3.b.x, global0.d.a.a))), global0.c, any(!(!global1.d.e.wx)), global4.xyx), func_5(Struct_3(global4.zw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.a.a.b, global0.b.x, global3.b.x, var_0.a.b)), vec4<i32>(-2147483647i, global3.a.x, -global4.x, _wgslsmith_mod_i32(-1i, -36072i)), global3.d, select(global1.d.b, vec4<u32>(81851u, 1u, 26361u, 39456u), global1.d.e.x) ^ global1.d.b), Struct_2(func_5(func_4(vec2<i32>(global0.d.d.x, global0.d.d.x)), global0.d.a, select(false, global1.a, false), global3.c.zxx), global0.d.a.a), (true || global1.a) | true, global4.zyz | vec3<i32>(countOneBits(-25176i), global3.a.x, -global1.d.d.x)));
    return global0.c.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_3 {
    global4 = vec4<i32>(_wgslsmith_mod_i32(-arg_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-21363i, global3.c.x), arg_1.zy & arg_1.xz, ~vec2<i32>(global1.d.d.x, 1i)), vec2<i32>(-22188i, -21502i))), _wgslsmith_mod_i32(reverseBits(~global4.x), 54045i), _wgslsmith_mod_i32(2147483647i, ~arg_2.x), reverseBits(-61796i));
    global0 = Struct_5(!((_wgslsmith_div_u32(4294967295u, u_input.a) & _wgslsmith_mod_u32(global0.d.a.a.a, 1u)) >= ~4294967295u), vec3<f32>(arg_0.b, global3.b.x, -1000f), global1.c, global1.d, _wgslsmith_mod_u32((global1.d.b.x >> (global3.e.x % 32u)) & arg_0.a, 4294967295u));
    var var_0 = func_1(global0.d.e.xzx);
    let var_1 = vec3<f32>(arg_0.b, -534f, _wgslsmith_f_op_f32(-var_0.b));
    var var_2 = Struct_1(arg_0.a, -508f);
    return Struct_3(vec2<i32>(max(global1.d.d.x, 0i), 0i), _wgslsmith_f_op_vec4_f32(vec4<f32>(381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-862f - 448f) * func_4(vec2<i32>(31220i, arg_1.x)).b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b - -1000f), func_4(vec2<i32>(-1i, arg_1.x)).b.x, !global1.d.e.x)), -614f) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-605f, -1306f, global1.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-121f, arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-680f * var_0.b) + -398f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)))), _wgslsmith_div_vec4_i32(select(global3.c, vec4<i32>(global0.d.d.x, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(19540i, global1.d.d.x), 24203i), global1.d.e), global3.c), !vec3<bool>(true, !(!global0.a), !func_4(vec2<i32>(global1.d.d.x, -32674i)).d.x), global3.e);
}

fn func_7(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> Struct_5 {
    var var_0 = global0.d.e;
    let var_1 = global1.d.e.x;
    let var_2 = global1.b.xx;
    var var_3 = _wgslsmith_f_op_f32(-global3.b.x);
    var var_4 = vec4<u32>(~(~arg_1), ~arg_2.e.x ^ global1.c.a.a, arg_1, max(34956u, ~(~(97762u | global0.d.c.a))));
    return Struct_5(global0.d.e.x, global3.b.wyx, Struct_2(func_5(Struct_3(global3.a, _wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_div_vec4_i32(global3.c, vec4<i32>(global4.x, global1.d.d.x, global0.d.d.x, -23002i)), var_0.ywz, _wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, global0.e, 4294967295u, arg_1), vec4<u32>(0u, 17563u, 4294967295u, 30074u))), global1.c, true && func_4(global0.d.d).d.x, global4.yyy), global0.c.a), global1.d, u_input.a);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_5, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(~global3.c.x, ~arg_1.d.d.x);
    let var_1 = Struct_4(func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + global1.c.a.b)), arg_0.a, Struct_3(reverseBits(global1.d.d), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.b.x, global1.b.x, global3.b.x, global3.b.x))), -vec4<i32>(global3.a.x, -2241i, -2147483647i, global4.x) ^ (global3.c >> (vec4<u32>(u_input.a, global0.d.a.b.a, u_input.a, arg_0.a) % vec4<u32>(32u))), global1.d.e.yxy, ~vec4<u32>(arg_2, u_input.a, 2780u, 32797u))).c, ~_wgslsmith_sub_vec4_u32(~select(vec4<u32>(0u, global0.d.c.a, 13292u, 4294967295u), vec4<u32>(45548u, 14523u, 1u, 4959u), arg_1.d.e), vec4<u32>(1u, arg_2, ~22759u, ~42830u)), func_7(-197f, global1.c.a.a, func_6(Struct_1(arg_2, arg_3.b.b), vec3<i32>(14888i, func_6(arg_0, global3.c.wzz, global4.xyw).c.x, _wgslsmith_sub_i32(-8061i, global1.d.d.x)), vec3<i32>(2147483647i, _wgslsmith_sub_i32(arg_1.d.d.x, 2050i), -22519i))).c.a, func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -11882i ^ global1.d.d.x, abs(10669i), -2147483647i), countOneBits(global3.c), func_4(vec2<i32>(global4.x, global1.d.d.x)).c), 1000f, func_1(!func_4(global0.d.d).d)), vec4<bool>(arg_1.a, any(vec3<bool>(global0.d.e.x, arg_1.d.e.x, true)) & func_4(_wgslsmith_sub_vec2_i32(arg_1.d.d, vec2<i32>(-1976i, arg_1.d.d.x))).d.x, false, true));
    var var_2 = var_1;
    let var_3 = max(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.d.d, global4.xx), -2650i, 6657i, var_1.d.x), abs(-global3.c)), arg_1.d.d.x);
    global1 = func_7(arg_0.b, 1u, func_6(var_2.a.b, vec3<i32>(-1i, -abs(6758i), _wgslsmith_mult_i32(-global0.d.d.x, i32(-1i) * -2147483647i)), -global4.yzy));
    return Struct_2(arg_1.c.b, Struct_1(~(~_wgslsmith_div_u32(global3.e.x, var_2.a.b.a)), _wgslsmith_f_op_f32(var_1.c.b * _wgslsmith_div_f32(global3.b.x, global0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(0u >> (_wgslsmith_mod_u32(abs(8609u), _wgslsmith_dot_vec4_u32(global3.e, global0.d.b)) % 32u)));
    var var_1 = func_8(Struct_1(29324u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1314f)), global3.b.x, _wgslsmith_f_op_f32(global1.b.x + global0.c.a.b) > global1.c.b.b))), func_7(global0.d.c.b, ~global0.d.b.x, func_6(func_1(!vec3<bool>(global3.d.x, global0.a, false)), global3.c.zwx, min(-vec3<i32>(global1.d.d.x, global4.x, -12555i), vec3<i32>(-1i, global4.x, global1.d.d.x)))), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~1u << (~global1.c.a.a % 32u)), var_0), global1.d.a);
    global0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f * _wgslsmith_div_f32(1000f, global0.c.b.b)) * global3.b.x)), global0.c.b.a, Struct_3(global3.c.zx, global3.b, global3.c, vec3<bool>(true, true, true), vec4<u32>((53906u << (global1.e % 32u)) << (u_input.a % 32u), ~(~0u), ~(~global3.e.x), _wgslsmith_sub_u32(global1.e, ~global0.e))));
    var var_2 = 1u;
    var var_3 = global3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(1u, 6u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(489f, 345f) * global1.b.yz)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3.b.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a.b * -332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b.b) * _wgslsmith_f_op_f32(round(global0.b.x))), var_1.b.b)));
}

