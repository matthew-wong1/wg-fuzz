struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<f32>(345f, -751f, 1118f), vec4<bool>(true, false, true, true), vec4<f32>(-1022f, 847f, 1000f, 1578f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_add_i32(u_input.b, u_input.c & -2147483647i);
    let var_0 = Struct_1(select(vec2<bool>(!(global2.c.x & false), ~u_input.c >= u_input.c), vec2<bool>((global2.c.x == false) | select(global2.c.x, global2.c.x, true), (u_input.c | -1i) <= ~(-51208i)), select(!vec2<bool>(global2.a.x, global2.c.x), !select(vec2<bool>(true, global2.c.x), vec2<bool>(global2.c.x, global2.c.x), global2.c.zw), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -1416f, global2.d.x))), !vec4<bool>(true, !global2.a.x || (38095i > u_input.b), any(global2.c.wwy), !global2.c.x), global2.d);
    let var_1 = Struct_2(var_0.c, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.d.x, 961f, 158f), global2.d.zww)) - vec3<f32>(232f, _wgslsmith_f_op_f32(-global1.x), var_0.b.x)), var_0.c, global2.d));
    global0 = firstTrailingBit(0i);
    return -1i;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    global2 = Struct_1(!arg_1.yw, arg_3.b.b.b, !(!(!global2.c)), arg_3.b.b.d);
    let var_0 = vec4<i32>(~select(_wgslsmith_mod_i32(17348i | u_input.b, ~u_input.b), ~1i, !arg_1.x), ~u_input.b, func_3(), _wgslsmith_mult_i32(u_input.b & u_input.b, _wgslsmith_clamp_i32(select(1i, countOneBits(28773i), any(vec3<bool>(arg_0, arg_3.b.b.c.x, true))), firstLeadingBit(-17746i), u_input.c)));
    var var_1 = arg_3.b;
    var var_2 = func_3();
    global2 = Struct_1(select(var_1.a.yz, !arg_1.xz, var_0.x < firstLeadingBit(-1i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.d.x)))), 563f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !vec4<bool>(arg_1.x, arg_3.b.a.x, any(arg_3.b.b.c.xxw), arg_0 | !arg_1.x), vec4<f32>(global2.b.x, global2.d.x, -2556f, -754f));
    return Struct_1(arg_1.xw, vec3<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) + 1797f)), _wgslsmith_f_op_f32(var_1.b.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(224f))))), !vec4<bool>(1590f != _wgslsmith_f_op_f32(step(arg_2, 138f)), select(false && arg_3.b.a.x, true, true), !(!arg_3.b.b.a.x), true), vec4<f32>(-343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.b.d.x) - 229f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + var_1.b.b.x))), arg_3.b.b.b.x));
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    global2 = arg_0;
    var var_0 = global2.d.x;
    global1 = arg_0.b;
    global2 = arg_0;
    global2 = func_2(!(!global2.a.x & all(global2.c.yzw)), arg_0.c, -1123f, Struct_5(_wgslsmith_f_op_f32(sign(1000f)), Struct_2(func_2(true, !global2.c, _wgslsmith_f_op_f32(arg_0.d.x - global1.x), Struct_5(global2.b.x, Struct_2(vec4<bool>(arg_0.a.x, arg_0.a.x, global2.c.x, arg_0.a.x), arg_0))).c, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1699f, arg_0.b.x)), select(arg_0.c, vec4<bool>(arg_0.c.x, true, false, false), vec4<bool>(false, arg_0.c.x, arg_0.c.x, false)), _wgslsmith_f_op_vec4_f32(-arg_0.d)))));
    return Struct_5(1244f, Struct_2(arg_0.c, Struct_1(vec2<bool>(false, any(vec3<bool>(false, true, true))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(max(-814f, 467f))), arg_0.c, _wgslsmith_f_op_vec4_f32(-global2.d))));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_5) -> Struct_1 {
    global2 = Struct_1(func_4(func_2(global2.a.x, vec4<bool>(global2.c.x, arg_0.b.b.a.x, u_input.a.x < u_input.a.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(566f, global1.x, global2.c.x))), func_4(Struct_1(vec2<bool>(true, arg_3.b.b.a.x), vec3<f32>(arg_3.a, arg_3.b.b.b.x, 392f), global2.c, arg_3.b.b.d)))).b.a.zw, vec3<f32>(arg_3.b.b.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1564f)))), -782f), vec4<bool>(!arg_0.b.b.c.x, func_2(global1.x >= arg_3.a, select(global2.c, vec4<bool>(arg_0.b.a.x, global2.a.x, arg_3.b.a.x, true), false), _wgslsmith_f_op_f32(global2.d.x - global2.b.x), func_4(Struct_1(arg_0.b.b.a, arg_0.b.b.b, vec4<bool>(arg_0.b.b.a.x, false, false, true), arg_3.b.b.d))).c.x | !any(arg_3.b.b.c.zx), false, global2.c.x), vec4<f32>(708f, 490f, _wgslsmith_f_op_f32(max(arg_0.b.b.d.x, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.b.x, global1.x)) + _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x)), arg_3.b.b.c.x)))));
    let var_0 = ~_wgslsmith_mod_u32(54782u, u_input.a.x);
    let var_1 = Struct_3(func_2(func_4(func_4(arg_0.b.b).b.b).b.b.c.x & global2.c.x, global2.c, global1.x, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(622f - 384f)), arg_3.b)), Struct_1(vec2<bool>(all(!vec3<bool>(arg_3.b.a.x, arg_0.b.a.x, arg_3.b.a.x)), select(!arg_0.b.a.x, true, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(func_2(false, vec4<bool>(false, arg_0.b.b.c.x, true, false), -2071f, Struct_5(-601f, arg_3.b)).b))), !vec4<bool>(true, !arg_0.b.b.c.x, all(vec4<bool>(arg_0.b.b.a.x, arg_0.b.b.c.x, false, arg_3.b.b.c.x)), true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_3.b.b.d), arg_0.b.b.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(599f, 146f, arg_1, global2.b.x), vec4<f32>(410f, -1858f, -1413f, 1095f)))))), arg_0.b.a.yyz);
    let var_2 = u_input.a;
    let var_3 = -(reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c, 38125i, u_input.c, -1i), select(vec4<i32>(-2147483647i, arg_2.x, arg_2.x, -2147483647i), vec4<i32>(arg_2.x, 32538i, 0i, 2618i), vec4<bool>(false, false, true, arg_3.b.a.x)))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 2147483647i, 0i), -vec4<i32>(u_input.c, -2147483647i, arg_2.x, -24874i)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-28945i, u_input.b, 45801i, -2147483647i), vec4<i32>(u_input.b, u_input.c, -2147483647i, u_input.b)), ~vec4<i32>(u_input.b, arg_2.x, -1117i, arg_2.x))));
    return Struct_1(!func_4(arg_3.b.b).b.a.zx, _wgslsmith_f_op_vec3_f32(floor(arg_3.b.b.b)), func_4(Struct_1(global2.c.yx, vec3<f32>(-1000f, func_2(arg_3.b.b.a.x, var_1.b.c, var_1.a.d.x, arg_0).b.x, 1269f), arg_0.b.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.d + vec4<f32>(global2.b.x, arg_0.b.b.b.x, arg_1, arg_3.a))))).b.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.b.b.d))));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = Struct_3(func_5(func_4(func_2(global2.a.x, select(vec4<bool>(global2.c.x, global2.c.x, false, false), global2.c, global2.c), -683f, Struct_5(global1.x, Struct_2(global2.c, Struct_1(vec2<bool>(global2.c.x, global2.c.x), vec3<f32>(-432f, arg_0, global1.x), global2.c, vec4<f32>(378f, global2.b.x, global2.d.x, -611f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -627f)), -vec3<i32>(-u_input.b, -u_input.c, 7531i), Struct_5(_wgslsmith_f_op_f32(-962f + _wgslsmith_div_f32(-578f, 453f)), Struct_2(select(vec4<bool>(false, true, false, true), vec4<bool>(global2.c.x, global2.c.x, global2.a.x, global2.a.x), true), func_4(Struct_1(vec2<bool>(global2.a.x, false), vec3<f32>(arg_0, 594f, -813f), vec4<bool>(true, global2.a.x, false, global2.a.x), global2.d)).b.b))), func_5(Struct_5(_wgslsmith_f_op_f32(1074f * _wgslsmith_f_op_f32(-794f + global1.x)), func_4(Struct_1(vec2<bool>(global2.c.x, global2.a.x), vec3<f32>(-758f, -190f, global2.d.x), global2.c, global2.d)).b), _wgslsmith_f_op_f32(-1f), vec3<i32>(u_input.c, firstTrailingBit(u_input.b), u_input.c), Struct_5(global1.x, Struct_2(!vec4<bool>(true, true, global2.c.x, false), Struct_1(global2.a, global2.b, vec4<bool>(global2.a.x, global2.c.x, global2.a.x, false), global2.d)))), global2.c.xxw);
    let var_1 = var_0.b;
    let var_2 = ~0u;
    var var_3 = func_4(Struct_1(vec2<bool>(false | func_2(var_0.a.c.x, vec4<bool>(var_0.c.x, var_0.b.a.x, global2.a.x, global2.c.x), -724f, Struct_5(arg_0, Struct_2(vec4<bool>(false, true, false, var_0.b.a.x), Struct_1(var_1.a, vec3<f32>(global2.b.x, -2144f, -373f), var_0.a.c, vec4<f32>(global2.b.x, 1389f, -1077f, global2.d.x))))).c.x, false), _wgslsmith_f_op_vec3_f32(abs(global2.b)), vec4<bool>(any(var_1.a), var_1.b.x > var_1.d.x, var_1.a.x, global2.a.x), vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f * var_1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), -1183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x))))).b;
    var var_4 = firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x >> (var_2 % 32u)));
    return ~(~u_input.b) & (28325i >> (~var_2 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(func_1(2144f), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -40158i, 21238i) ^ ~vec3<i32>(u_input.b, u_input.c, u_input.b), select(vec3<i32>(u_input.b, 37771i, u_input.c) ^ vec3<i32>(2147483647i, u_input.c, u_input.c), -vec3<i32>(1i, u_input.c, 1i), func_2(false, global2.c, global1.x, Struct_5(-1454f, Struct_2(global2.c, Struct_1(vec2<bool>(global2.a.x, true), vec3<f32>(-1000f, -176f, 675f), global2.c, vec4<f32>(global1.x, global2.d.x, global2.d.x, global1.x))))).c.yxz)));
    let var_0 = func_4(Struct_1(select(!(!vec2<bool>(true, global2.a.x)), vec2<bool>(func_5(Struct_5(global1.x, Struct_2(vec4<bool>(false, false, global2.a.x, global2.c.x), Struct_1(global2.a, global2.b, global2.c, global2.d))), global1.x, vec3<i32>(-19784i, -1i, 52181i), Struct_5(global1.x, Struct_2(global2.c, Struct_1(global2.c.wy, global2.d.yzw, vec4<bool>(global2.c.x, false, false, global2.c.x), vec4<f32>(global1.x, 925f, global1.x, global1.x))))).c.x, u_input.b <= 17206i), global2.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), func_4(func_2(global2.c.x, global2.c, 177f, Struct_5(-2981f, Struct_2(global2.c, Struct_1(vec2<bool>(global2.c.x, global2.a.x), vec3<f32>(global1.x, -493f, global1.x), vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x), global2.d))))).b.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1924f) * _wgslsmith_f_op_f32(-520f * global2.b.x))), select(vec4<bool>(true, any(global2.c.ywz), !global2.c.x, func_2(global2.c.x, global2.c, global2.b.x, Struct_5(492f, Struct_2(vec4<bool>(false, global2.a.x, global2.a.x, true), Struct_1(global2.c.zx, vec3<f32>(-585f, global1.x, global2.d.x), vec4<bool>(global2.c.x, true, global2.a.x, global2.a.x), global2.d)))).c.x), vec4<bool>(global2.c.x, global2.a.x == true, true, false | global2.a.x), global2.c), global2.d)).b.b;
    let var_1 = ~vec2<u32>(abs(abs(u_input.a.x)), ~(~0u)) >> (_wgslsmith_div_vec2_u32(u_input.a.yy, ~_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy), ~u_input.a.xy)) % vec2<u32>(32u));
    var var_2 = func_4(func_5(func_4(func_2(false, select(var_0.c, global2.c, global2.c), global2.b.x, Struct_5(1205f, Struct_2(var_0.c, var_0)))), _wgslsmith_f_op_f32(select(-538f, var_0.d.x, true)), min(vec3<i32>(_wgslsmith_sub_i32(-6215i, 3418i), u_input.b >> (u_input.a.x % 32u), ~(-8642i)), vec3<i32>(firstLeadingBit(u_input.b), u_input.c, -2147483647i)), func_4(Struct_1(vec2<bool>(var_0.c.x, false), var_0.d.wwx, vec4<bool>(false, false, false, global2.c.x), _wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(285f, -445f, global1.x, global1.x)))))).b;
    let var_3 = Struct_3(var_0, func_5(func_4(Struct_1(vec2<bool>(var_2.a.x, var_0.a.x), var_2.b.b, select(vec4<bool>(false, var_2.b.a.x, var_2.b.a.x, false), var_0.c, vec4<bool>(var_2.b.c.x, var_2.b.c.x, false, global2.a.x)), vec4<f32>(2177f, global1.x, global1.x, -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f)))), vec3<i32>(max(u_input.c, countOneBits(u_input.c)), 3628i, u_input.b), func_4(func_4(func_2(var_0.c.x, var_2.b.c, global2.b.x, Struct_5(1279f, Struct_2(vec4<bool>(false, var_0.a.x, true, var_0.c.x), Struct_1(vec2<bool>(true, var_0.a.x), global2.b, vec4<bool>(var_2.a.x, false, false, false), global2.d))))).b.b)), !(!var_2.b.c.zzy));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, min(firstTrailingBit(countOneBits(vec4<u32>(u_input.a.x, var_1.x, 4294967295u, 87157u))) ^ reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, u_input.a.x), vec4<u32>(41994u, var_1.x, 1u, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(0u), ~u_input.a.x, 0u, countOneBits(0u)), ~select(vec4<u32>(var_1.x, 3560u, 1u, 1u), vec4<u32>(var_1.x, 4403u, 4294967295u, 1777u), false))), _wgslsmith_mult_vec2_i32(select(-vec2<i32>(u_input.c, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(u_input.c, u_input.b)), true), ~(vec2<i32>(u_input.b, -31842i) & vec2<i32>(6774i, 22013i))) | countOneBits(abs(vec2<i32>(u_input.b, 12175i) ^ vec2<i32>(-37372i, 88878i))));
}

