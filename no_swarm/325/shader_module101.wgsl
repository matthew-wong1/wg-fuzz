struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec3<f32>(-622f, 933f, 536f), 576f), vec3<u32>(77694u, 0u, 11671u), vec3<bool>(true, false, true), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec3<f32>(-2382f, -1445f, 680f), 1169f), vec2<i32>(0i, -1i), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true), vec3<f32>(2026f, -459f, -2058f), -692f), vec2<u32>(4294967295u, 24108u)));

var<private> global1: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = global0.d.d;
    global0 = Struct_3(global0.a, ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.b.x, 4294967295u, global0.d.e.x), ~global0.b)), select(select(vec3<bool>(any(vec2<bool>(true, false)), var_0.a.x, true), var_0.a.wxy, true), global0.d.d.a.zyx, var_0.a.x), Struct_2(global0.a.b, global0.d.d, -(vec2<i32>(-1i) * -global0.d.c), Struct_1(!(!vec4<bool>(false, true, var_0.a.x, false)), vec2<bool>(true, var_0.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(1397f, var_0.c.x, -416f)))), var_0.c.x), countOneBits(vec2<u32>(0u, firstTrailingBit(global0.d.e.x)))));
    var var_1 = global0.d.e.x;
    var var_2 = Struct_3(Struct_1(var_0.a, global0.d.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-559f, 304f, -1130f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - global0.a.c), global0.a.c)), -149f), ~select(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(53752u, u_input.a.x), _wgslsmith_mod_u32(global0.d.e.x, u_input.a.x)), global0.b, var_0.a.xww), vec3<bool>(select(true, !var_0.b.x, true), global0.d.e.x >= 47616u, var_0.b.x && !all(vec4<bool>(true, true, true, true))), global0.d);
    global1 = any(select(select(var_0.b, var_0.b, !select(vec2<bool>(false, var_2.d.a.x), var_2.c.zz, var_0.a.x)), vec2<bool>(true, true), select(select(global0.d.b.a.xx, !var_2.c.yz, true), select(vec2<bool>(true, global0.a.a.x), select(global0.a.b, var_0.a.zy, true), !var_2.a.a.xx), var_2.a.b)));
    return !select(!(!var_2.a.a), var_2.d.d.a, !(!(!vec4<bool>(var_2.c.x, true, var_0.a.x, global0.d.a.x))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_0.d;
    var var_1 = !select(func_3(), !arg_0.d.a, !arg_0.d.a);
    let var_2 = _wgslsmith_sub_vec3_u32(global0.b, ~(~(~global0.b) | u_input.a.zww));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b.d, 1929f), _wgslsmith_f_op_f32(-arg_3.d.c.x))), _wgslsmith_f_op_f32(select(780f, _wgslsmith_f_op_f32(-var_0.d), all(arg_2))))));
    let var_4 = arg_0;
    return Struct_1(vec4<bool>(!(var_0.a.x && arg_3.a.x), any(!select(arg_0.d.a, var_0.a, arg_0.b.a.x)), false, !all(select(arg_0.b.a, arg_0.b.a, vec4<bool>(var_4.d.a.x, false, false, true)))), var_0.b, global0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(370f, _wgslsmith_f_op_f32(round(var_4.d.d))), var_0.c.x)) * arg_3.b.c.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_1) - 792f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.c.x)) - _wgslsmith_f_op_f32(-1f)))) * -157f);
    global0 = arg_2;
    var var_1 = Struct_2(select(arg_2.a.a.wy, arg_2.d.a, !vec2<bool>(u_input.a.x >= 1u, !arg_3.a.x)), Struct_1(!arg_3.b.a, vec2<bool>(true, any(arg_3.d.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1220f * arg_0.x)), 569f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -274f)))), _wgslsmith_div_f32(arg_3.b.d, -1118f)), _wgslsmith_add_vec2_i32(global0.d.c, arg_2.d.c), Struct_1(arg_3.d.a, select(func_3().xw, func_3().zw, !vec2<bool>(arg_3.d.b.x, false)), arg_0.wyw, func_2(global0.d, arg_2.d, !arg_3.a, arg_2.d).c.x), vec2<u32>(11669u, 48120u) ^ (select(_wgslsmith_div_vec2_u32(arg_3.e, vec2<u32>(arg_2.b.x, global0.d.e.x)), ~vec2<u32>(arg_3.e.x, u_input.b), arg_3.a) | ~arg_3.e));
    var var_2 = ~(_wgslsmith_mod_vec4_u32(u_input.a, ~(~u_input.a)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.e.x ^ global0.d.e.x, arg_2.d.e.x, var_1.e.x, 1u), u_input.a));
    global1 = true;
    return arg_2.a;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    global0 = Struct_3(Struct_1(arg_1.a, func_2(global0.d, arg_3.d, func_2(global0.d, global0.d, func_3().xy, Struct_2(global0.a.b, Struct_1(vec4<bool>(true, global0.d.a.x, global0.c.x, false), vec2<bool>(arg_1.b.x, false), arg_3.a.c, arg_1.c.x), vec2<i32>(arg_3.d.c.x, 0i), global0.d.d, vec2<u32>(17395u, arg_3.d.e.x))).b, global0.d).a.wz, vec3<f32>(func_2(global0.d, Struct_2(vec2<bool>(arg_3.c.x, arg_1.a.x), arg_1, arg_3.d.c, arg_1, global0.d.e), !arg_3.c.zy, Struct_2(vec2<bool>(true, false), Struct_1(arg_1.a, vec2<bool>(arg_3.c.x, global0.d.d.b.x), vec3<f32>(arg_3.d.b.c.x, 1000f, 298f), arg_3.d.d.c.x), global0.d.c, Struct_1(arg_1.a, global0.d.d.a.xw, arg_3.d.d.c, 1000f), vec2<u32>(arg_3.d.e.x, arg_3.b.x))).d, _wgslsmith_div_f32(arg_1.d, func_4(vec4<f32>(global0.a.d, -811f, -469f, arg_3.d.b.d), 924f, arg_3, global0.d).c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.d.b.d)), arg_1.d))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_3.d.b.d, global0.d.b.c.x)))), _wgslsmith_f_op_f32(ceil(arg_1.d))))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_3.b << (vec3<u32>(6935u, global0.d.e.x, u_input.b) % vec3<u32>(32u)), u_input.a.yyy, select(global0.b, vec3<u32>(21796u, 0u, 0u), global0.c)) >> (~u_input.a.yzz % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 37598u, 1u) << (firstLeadingBit(global0.b) % vec3<u32>(32u))), vec3<bool>(func_2(arg_3.d, arg_3.d, func_3().wz, arg_3.d).b.x, arg_0, arg_3.a.b.x), arg_3.d);
    var var_0 = global0.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(vec4<f32>(504f, arg_1.c.x, 1461f, global0.d.b.d), arg_3.d.d.c.x, arg_3, arg_3.d).d, -744f, func_2(Struct_2(vec2<bool>(true, true), arg_1, vec2<i32>(-44044i, 47095i), Struct_1(arg_1.a, arg_1.b, vec3<f32>(arg_3.d.b.d, arg_1.c.x, arg_1.d), arg_3.a.d), vec2<u32>(u_input.b, u_input.a.x)), arg_3.d, arg_1.a.zw, global0.d).d))));
    let var_2 = select(!var_0.xx, var_0.yx, arg_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-705f + -1453f), _wgslsmith_f_op_f32(f32(-1f) * -2345f), _wgslsmith_f_op_f32(f32(-1f) * -2125f), -550f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d.d.d, -511f, global0.d.b.c.x, var_1.x) - vec4<f32>(global0.d.d.c.x, -217f, 2041f, 584f)))), vec4<f32>(func_2(Struct_2(vec2<bool>(true, false), Struct_1(global0.a.a, arg_1.b, vec3<f32>(-1001f, var_1.x, arg_1.d), arg_1.c.x), vec2<i32>(u_input.d, -2147483647i), Struct_1(vec4<bool>(arg_3.a.b.x, arg_3.d.d.b.x, arg_3.c.x, false), var_2, arg_3.d.b.c, 895f), vec2<u32>(u_input.a.x, arg_3.b.x)), Struct_2(var_2, global0.a, vec2<i32>(arg_2, arg_2), Struct_1(vec4<bool>(arg_0, arg_0, arg_0, global0.d.d.b.x), vec2<bool>(false, global0.c.x), vec3<f32>(-408f, 1351f, 631f), 350f), vec2<u32>(42265u, 33286u)), !vec2<bool>(arg_0, arg_1.a.x), arg_3.d).c.x, global0.d.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1604f - 410f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(736f + var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b.d, 184f, global0.d.b.c.x, 1758f)))))));
    return Struct_3(Struct_1(vec4<bool>(!arg_3.c.x, all(!vec3<bool>(arg_1.a.x, var_2.x, true)), !arg_3.a.b.x, _wgslsmith_f_op_f32(select(global0.a.d, var_3.x, var_2.x)) == _wgslsmith_f_op_f32(round(-1072f))), !arg_3.a.b, _wgslsmith_f_op_vec3_f32(-func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1150f, -1391f, -160f)), _wgslsmith_f_op_f32(min(var_3.x, -158f)), Struct_3(arg_3.a, vec3<u32>(0u, 89335u, u_input.b), arg_3.d.b.a.zxx, global0.d), arg_3.d).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - global0.d.d.c.x) + func_2(arg_3.d, arg_3.d, arg_1.a.zx, Struct_2(global0.c.xz, Struct_1(vec4<bool>(true, true, true, true), global0.a.b, arg_3.d.b.c, 1595f), global0.d.c, Struct_1(arg_1.a, arg_1.b, arg_1.c, var_1.x), arg_3.d.e)).c.x) - _wgslsmith_f_op_f32(trunc(var_3.x)))), ~(~vec3<u32>(u_input.b, 62677u, ~42117u)), vec3<bool>(arg_1.a.x, u_input.b >= 1u, global0.c.x), Struct_2(select(vec2<bool>(all(global0.a.a.xzz), arg_3.d.a.x || true), arg_1.a.zy, !func_4(var_3, -1955f, Struct_3(arg_1, global0.b, global0.c, Struct_2(arg_1.a.zx, global0.d.b, vec2<i32>(global0.d.c.x, global0.d.c.x), Struct_1(arg_1.a, arg_3.a.a.yz, vec3<f32>(979f, global0.d.b.c.x, 376f), -2691f), vec2<u32>(4294967295u, global0.b.x))), global0.d).a.yx), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -1000f, 1000f, arg_3.a.c.x)), _wgslsmith_f_op_f32(max(-458f, _wgslsmith_f_op_f32(min(var_1.x, var_3.x)))), Struct_3(Struct_1(arg_3.a.a, arg_1.a.xz, vec3<f32>(-1780f, 1480f, var_3.x), var_1.x), ~vec3<u32>(u_input.b, arg_3.b.x, 40241u), func_3().xwy, Struct_2(vec2<bool>(false, arg_3.c.x), arg_1, global0.d.c, arg_1, vec2<u32>(global0.d.e.x, 22632u))), Struct_2(arg_1.b, global0.a, min(arg_3.d.c, arg_3.d.c), arg_1, vec2<u32>(arg_3.d.e.x, 26698u))), -global0.d.c, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-183f, arg_1.d, 695f, -744f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) * _wgslsmith_f_op_f32(max(arg_1.d, arg_1.c.x))), arg_3, Struct_2(func_3().zx, Struct_1(global0.d.b.a, var_0.xz, arg_1.c, arg_3.d.d.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.c), vec2<i32>(-43206i, 0i)), arg_1, ~vec2<u32>(30760u, arg_3.d.e.x))), ~min(u_input.a.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.b.x, global0.d.e.x), u_input.a.yw))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global1 = !global0.d.a.x;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(803f, 1999f)), 642f, true))), global0.d.d.c.x, global0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1652f, -255f, global0.d.a.x))));
    let var_1 = func_5(true, func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(abs(global0.a.d))), global0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 790f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(730f * 2011f))), var_0.x, Struct_3(func_2(global0.d, Struct_2(vec2<bool>(false, global0.a.a.x), Struct_1(vec4<bool>(true, true, global0.d.b.b.x, global0.c.x), global0.a.a.ww, vec3<f32>(-1000f, global0.a.c.x, -529f), global0.d.d.c.x), global0.d.c, Struct_1(global0.a.a, global0.c.zz, vec3<f32>(965f, -1278f, var_0.x), 221f), vec2<u32>(u_input.b, arg_0.x)), vec2<bool>(true, true), global0.d), vec3<u32>(u_input.a.x ^ global0.d.e.x, select(7038u, global0.d.e.x, false), 1u << (u_input.b % 32u)), vec3<bool>(true, global0.d.b.a.x, true), Struct_2(!global0.a.a.zz, global0.a, vec2<i32>(2147483647i, -28216i), Struct_1(vec4<bool>(global0.a.b.x, false, false, true), vec2<bool>(global0.c.x, false), global0.a.c, 348f), vec2<u32>(u_input.b, 52617u) ^ vec2<u32>(4294967295u, u_input.b))), Struct_2(vec2<bool>(true, true), global0.d.b, ~vec2<i32>(-28693i, 1i) >> (countOneBits(u_input.a.wz) % vec2<u32>(32u)), global0.d.b, vec2<u32>(40690u, ~4294967295u))), 1i, Struct_3(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1493f, var_0.x, global0.d.d.d, -182f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, var_0.x, -289f, -499f))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -549f, var_0.x, 994f)), func_4(vec4<f32>(global0.a.c.x, var_0.x, -527f, 291f), 112f, Struct_3(global0.d.b, u_input.a.zyy, global0.d.d.a.yzx, Struct_2(vec2<bool>(global0.d.d.a.x, true), Struct_1(vec4<bool>(global0.c.x, global0.c.x, false, true), global0.d.d.a.yy, vec3<f32>(global0.d.d.c.x, global0.d.d.c.x, 1000f), var_0.x), global0.d.c, Struct_1(vec4<bool>(global0.d.d.a.x, global0.c.x, false, true), vec2<bool>(false, true), var_0.xzz, var_0.x), arg_0)), global0.d).c.x, Struct_3(global0.a, global0.b, vec3<bool>(global0.a.b.x, true, global0.c.x), global0.d), Struct_2(vec2<bool>(global0.a.a.x, global0.a.a.x), global0.d.d, vec2<i32>(-1i, global0.d.c.x), global0.a, arg_0)).c.x, Struct_3(global0.d.d, global0.b, !vec3<bool>(false, global0.a.a.x, global0.c.x), Struct_2(global0.a.b, global0.a, global0.d.c, global0.a, arg_0)), global0.d), vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), global0.b.x ^ 1u), _wgslsmith_dot_vec3_u32(~u_input.a.wyw, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 45574u, arg_0.x), vec3<u32>(u_input.b, u_input.b, arg_0.x))), arg_0.x), vec3<bool>(true, global0.a.b.x, u_input.b > global0.b.x), Struct_2(vec2<bool>(global0.c.x, global0.c.x), Struct_1(vec4<bool>(global0.c.x, global0.d.d.a.x, global0.a.a.x, global0.d.b.a.x), func_3().ww, var_0.wyz, _wgslsmith_f_op_f32(select(-454f, 276f, global0.d.b.b.x))), vec2<i32>(_wgslsmith_mod_i32(global0.d.c.x, 2147483647i), countOneBits(-1i)), global0.a, ~vec2<u32>(1925u, global0.d.e.x))));
    var var_2 = reverseBits(~_wgslsmith_div_vec2_u32(func_5(false || var_1.c.x, Struct_1(vec4<bool>(global0.c.x, true, true, global0.d.d.b.x), vec2<bool>(global0.a.a.x, global0.c.x), vec3<f32>(1652f, -924f, var_0.x), var_1.a.c.x), var_1.d.c.x, Struct_3(global0.d.b, vec3<u32>(global0.d.e.x, u_input.a.x, 34407u), global0.d.b.a.xyz, var_1.d)).d.e, ~arg_0));
    var_2 = ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.d.e.x, 26016u), 9456u, var_1.d.e.x) >> (27341u % 32u), ~(~_wgslsmith_add_u32(global0.d.e.x, 4294967295u)));
    return global0.d;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c.x, 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f - global0.a.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.b.c.x + -625f)))) > 851f;
    global0 = func_5(!arg_1.b.b.x, func_4(vec4<f32>(_wgslsmith_f_op_f32(global0.a.c.x + -1115f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -521f))), global0.d.d.d, _wgslsmith_div_f32(1274f, _wgslsmith_f_op_f32(-2837f - -1697f))), _wgslsmith_f_op_f32(select(1f, func_2(Struct_2(vec2<bool>(arg_1.d.a.x, global0.a.a.x), Struct_1(arg_3, arg_1.a, vec3<f32>(arg_1.d.c.x, global0.a.d, global0.a.c.x), 416f), global0.d.c, arg_1.b, global0.d.e), Struct_2(vec2<bool>(false, arg_2), arg_1.b, vec2<i32>(u_input.c, arg_1.c.x), global0.a, vec2<u32>(16636u, 41414u)), vec2<bool>(arg_3.x, global0.c.x), Struct_2(arg_1.a, arg_1.b, vec2<i32>(u_input.c, -2147483647i), Struct_1(vec4<bool>(arg_1.d.b.x, true, true, arg_1.d.a.x), vec2<bool>(arg_3.x, true), global0.a.c, global0.a.c.x), u_input.a.zx)).c.x, any(func_5(false, Struct_1(global0.d.d.a, vec2<bool>(true, true), vec3<f32>(arg_1.b.d, arg_1.b.d, global0.d.b.d), 188f), -54667i, Struct_3(Struct_1(vec4<bool>(arg_2, arg_2, arg_2, arg_1.b.b.x), vec2<bool>(false, false), vec3<f32>(arg_1.b.d, global0.a.c.x, 227f), -801f), global0.b, vec3<bool>(arg_3.x, true, global0.c.x), Struct_2(global0.a.a.yw, Struct_1(vec4<bool>(false, true, arg_1.b.b.x, arg_3.x), arg_1.b.a.zw, arg_1.d.c, global0.d.d.d), vec2<i32>(arg_1.c.x, -42540i), arg_1.d, vec2<u32>(4294967295u, 54934u)))).d.a))), func_5(!(true & arg_1.a.x), global0.a, func_5(arg_2, Struct_1(arg_3, vec2<bool>(true, arg_2), global0.d.d.c, 273f), -51655i, Struct_3(Struct_1(vec4<bool>(true, false, arg_1.d.a.x, true), vec2<bool>(global0.d.d.b.x, arg_3.x), vec3<f32>(-1212f, global0.a.c.x, global0.a.c.x), 2436f), vec3<u32>(u_input.b, arg_1.e.x, 111942u), vec3<bool>(true, arg_2, global0.d.d.b.x), Struct_2(vec2<bool>(global0.d.a.x, arg_2), arg_1.d, global0.d.c, arg_1.d, arg_1.e))).d.c.x, Struct_3(arg_1.b, vec3<u32>(global0.d.e.x, 4294967295u, global0.b.x), select(arg_1.d.a.yxy, global0.d.b.a.wyw, arg_3.x), arg_1)), Struct_2(!(!arg_3.wz), arg_1.b, _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(1i, global0.d.c.x)), global0.d.c), arg_1.d, firstTrailingBit(abs(vec2<u32>(4294967295u, u_input.a.x))))), _wgslsmith_sub_i32(~(-27447i), u_input.c), func_5((global0.d.a.x == true) || any(arg_1.d.b), Struct_1(vec4<bool>(global0.c.x, true, all(global0.a.a), true), vec2<bool>(true, true), arg_1.d.c, arg_1.d.d), _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.c, u_input.d), -9696i), func_5(false, arg_1.d, -5968i, func_5(true, func_2(Struct_2(vec2<bool>(false, arg_3.x), arg_1.b, vec2<i32>(2789i, -53082i), Struct_1(global0.d.d.a, vec2<bool>(true, global0.d.a.x), arg_1.b.c, -659f), arg_1.e), global0.d, arg_3.yz, arg_1), global0.d.c.x, Struct_3(Struct_1(global0.d.d.a, global0.d.a, arg_1.d.c, arg_1.d.d), global0.b, arg_1.b.a.xzz, Struct_2(arg_1.a, Struct_1(arg_1.b.a, arg_3.zy, vec3<f32>(arg_1.d.c.x, arg_1.d.d, global0.a.d), global0.d.d.d), global0.d.c, arg_1.b, vec2<u32>(0u, u_input.b)))))));
    let var_0 = _wgslsmith_mod_vec4_i32(~(~vec4<i32>(-1i, _wgslsmith_add_i32(-25580i, -1i), ~global0.d.c.x, firstTrailingBit(global0.d.c.x))), vec4<i32>(-1i) * -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_1.c.x, global0.d.c.x, 50873i), vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, -10113i), vec4<i32>(-1i, -1i, arg_1.c.x, u_input.d))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.b.d, global0.d.b.d, -158f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(173f, global0.a.d, global0.a.d, arg_1.d.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.c.x, 1498f, 1000f, global0.d.b.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c.x, -156f, arg_1.d.d, arg_1.d.c.x) * vec4<f32>(arg_1.b.d, 200f, global0.d.b.c.x, 398f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1497f, arg_1.d.c.x, global0.a.d, -294f), vec4<f32>(-749f, global0.a.c.x, 1209f, 431f), arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, global0.d.d.d, arg_1.d.c.x, global0.a.c.x) + vec4<f32>(133f, -862f, 1000f, 1118f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.b.c.x, global0.d.b.c.x))), -859f, -184f, _wgslsmith_f_op_f32(ceil(global0.d.b.d)))));
    var var_2 = abs(~1u);
    return Struct_3(global0.d.d, func_5(false, func_5(true, Struct_1(vec4<bool>(true, arg_3.x, false, false), vec2<bool>(arg_2, arg_3.x), vec3<f32>(arg_1.b.c.x, -244f, 1451f), -1313f), -u_input.d, Struct_3(Struct_1(arg_1.d.a, global0.d.b.a.zw, vec3<f32>(global0.a.c.x, 911f, arg_1.d.c.x), global0.d.b.d), vec3<u32>(4294967295u, 80759u, 87189u), arg_1.d.a.xyy, Struct_2(arg_3.yw, Struct_1(arg_3, arg_3.ww, var_1.yxw, -1446f), var_0.wx, arg_1.b, vec2<u32>(17872u, global0.d.e.x)))).d.b, _wgslsmith_sub_i32(var_0.x, _wgslsmith_sub_i32(var_0.x, 0i)), func_5(!arg_3.x, func_2(global0.d, Struct_2(vec2<bool>(global0.d.a.x, false), Struct_1(vec4<bool>(arg_2, arg_1.d.a.x, true, arg_1.d.a.x), arg_1.a, vec3<f32>(-1659f, -148f, 168f), 211f), var_0.xx, Struct_1(vec4<bool>(true, true, arg_1.a.x, arg_1.b.b.x), global0.d.a, global0.a.c, 214f), u_input.a.yw), arg_1.a, Struct_2(vec2<bool>(arg_3.x, false), arg_1.d, var_0.xw, global0.d.d, global0.b.zy)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.c.x, 2147483647i, var_0.x, global0.d.c.x), var_0), func_5(true, global0.d.b, -2534i, Struct_3(Struct_1(vec4<bool>(true, arg_1.b.a.x, true, false), vec2<bool>(arg_1.a.x, global0.c.x), arg_1.b.c, var_1.x), vec3<u32>(66383u, 1u, u_input.a.x), vec3<bool>(arg_2, arg_2, false), arg_1)))).b | ~global0.b, !func_5(true, global0.a, _wgslsmith_clamp_i32(u_input.d, -1i, var_0.x), Struct_3(func_2(Struct_2(global0.a.a.yw, global0.a, vec2<i32>(7918i, -1i), Struct_1(global0.a.a, arg_1.a, vec3<f32>(1549f, global0.a.c.x, global0.d.b.d), -147f), global0.b.zy), Struct_2(arg_3.yw, arg_1.d, var_0.wz, global0.d.d, u_input.a.yy), arg_3.xy, Struct_2(vec2<bool>(true, true), Struct_1(global0.a.a, global0.a.a.zw, arg_1.d.c, var_1.x), global0.d.c, global0.d.d, vec2<u32>(20103u, 4726u))), ~global0.b, !global0.c, Struct_2(vec2<bool>(arg_2, arg_1.d.a.x), arg_1.d, vec2<i32>(global0.d.c.x, 43602i), global0.a, global0.d.e))).a.a.wzw, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 85590u, 0u, 16388u), vec4<u32>(4294967295u, global0.d.e.x, 3722u, 16659u)), u_input.b | (13050u ^ global0.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.yww, vec3<u32>(4294967295u, 4294967295u, u_input.a.x)), ~vec3<u32>(global0.b.x, 29383u, 1u))), select(97049u, u_input.a.x, global0.d.a.x)), func_1(~(~vec2<u32>(4294967295u, 13116u))), global0.d.b.b.x, global0.a.a);
    global0 = func_5(true, func_2(global0.d, Struct_2(!(!global0.a.a.xz), Struct_1(!global0.d.b.a, func_6(1u, global0.d, true, global0.d.d.a).c.xz, vec3<f32>(global0.a.d, 139f, 440f), global0.d.d.c.x), global0.d.c, Struct_1(vec4<bool>(global0.d.a.x, global0.a.a.x, true, true), global0.c.yx, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.d, -2310f, global0.a.d))), global0.a.d), countOneBits(countOneBits(vec2<u32>(global0.d.e.x, global0.d.e.x)))), !vec2<bool>(!global0.a.b.x, false), func_1(global0.d.e)), -2147483647i, Struct_3(global0.d.b, vec3<u32>(firstTrailingBit(~12492u), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 23804u), firstTrailingBit(global0.b.x)), (4294967295u ^ global0.b.x) & min(52525u, 16091u)), func_2(func_6(~1u, Struct_2(global0.a.b, Struct_1(vec4<bool>(true, true, global0.d.b.a.x, true), global0.d.a, vec3<f32>(global0.d.d.c.x, global0.d.b.d, global0.d.b.c.x), -246f), global0.d.c, Struct_1(global0.a.a, vec2<bool>(false, global0.c.x), vec3<f32>(1129f, -1757f, -193f), 1000f), vec2<u32>(global0.d.e.x, 0u)), !global0.a.b.x, func_6(global0.d.e.x, global0.d, false, vec4<bool>(false, true, global0.c.x, false)).a.a).d, global0.d, vec2<bool>(true, global0.c.x), global0.d).a.wyw, global0.d));
    global1 = 46427i > -global0.d.c.x;
    let var_0 = func_6((select(func_1(u_input.a.yz).e.x, firstLeadingBit(4294967295u), func_3().x) & global0.d.e.x) & select(21334u, 4294967295u, _wgslsmith_f_op_f32(-global0.d.d.c.x) > func_4(vec4<f32>(-883f, 813f, 312f, global0.a.c.x), global0.a.c.x, Struct_3(global0.d.b, u_input.a.xyw, global0.c, Struct_2(global0.d.b.b, global0.a, vec2<i32>(-20141i, -28001i), Struct_1(global0.a.a, vec2<bool>(false, global0.c.x), global0.a.c, 2867f), global0.b.zx)), Struct_2(vec2<bool>(false, global0.c.x), Struct_1(global0.a.a, vec2<bool>(global0.a.a.x, global0.c.x), global0.a.c, global0.d.b.d), vec2<i32>(global0.d.c.x, 301i), global0.a, global0.d.e)).c.x), Struct_2(func_3().xw, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.d, global0.d.b.d, global0.a.c.x, 856f) + vec4<f32>(global0.d.d.d, global0.d.b.d, global0.d.d.d, global0.a.c.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1276f, -1382f, global0.a.c.x, global0.a.d)))), _wgslsmith_f_op_f32(max(global0.a.c.x, _wgslsmith_f_op_f32(round(-217f)))), func_6(4294967295u, Struct_2(vec2<bool>(true, global0.c.x), global0.d.d, vec2<i32>(2147483647i, u_input.c), global0.a, vec2<u32>(0u, 1u)), global0.a.b.x, !global0.d.b.a), global0.d), _wgslsmith_add_vec2_i32(vec2<i32>(54652i, global0.d.c.x) & vec2<i32>(-43496i, 0i), global0.d.c), Struct_1(global0.d.b.a, global0.a.a.zx, global0.a.c, -461f), ~global0.b.xx), -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 85642i, -19186i), vec3<i32>(global0.d.c.x, -1i, 2147483647i)), ~vec3<i32>(u_input.d, -1i, -1i)) >= abs(-abs(u_input.d)), func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1364f, 431f, -991f, -2143f), vec4<f32>(global0.a.d, global0.d.b.c.x, global0.d.d.d, global0.d.d.c.x), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b.c.x, 1000f, -744f, global0.d.b.c.x))))), _wgslsmith_f_op_f32(-global0.a.c.x), Struct_3(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.d, global0.d.d.d, -1000f, -165f)), -912f, Struct_3(global0.a, vec3<u32>(global0.d.e.x, 12897u, global0.b.x), vec3<bool>(global0.c.x, true, false), global0.d), Struct_2(global0.c.xx, global0.d.b, global0.d.c, Struct_1(global0.d.b.a, global0.c.zx, vec3<f32>(-900f, global0.a.d, -1937f), global0.a.d), u_input.a.zy)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a.x, 568u, 1u), vec3<u32>(global0.b.x, 3136u, global0.b.x)), vec3<u32>(0u, global0.b.x, u_input.a.x)), vec3<bool>(select(global0.a.a.x, true, true), any(vec3<bool>(global0.d.b.b.x, global0.a.a.x, global0.d.b.a.x)), func_2(Struct_2(vec2<bool>(global0.d.b.b.x, true), Struct_1(global0.d.d.a, vec2<bool>(true, global0.a.b.x), global0.a.c, global0.d.b.d), global0.d.c, Struct_1(global0.d.d.a, global0.a.a.wx, vec3<f32>(-1000f, -484f, -723f), 344f), vec2<u32>(28663u, global0.d.e.x)), Struct_2(global0.d.d.a.yy, global0.a, vec2<i32>(-19600i, global0.d.c.x), Struct_1(vec4<bool>(false, global0.c.x, global0.a.a.x, global0.d.d.a.x), vec2<bool>(false, global0.c.x), vec3<f32>(-900f, -652f, -2566f), global0.a.c.x), global0.d.e), global0.a.b, global0.d).b.x), func_1(func_5(global0.c.x, Struct_1(vec4<bool>(global0.a.a.x, global0.c.x, false, true), global0.c.yz, global0.a.c, 913f), u_input.d, Struct_3(global0.d.d, vec3<u32>(u_input.b, 11050u, 13505u), global0.c, Struct_2(global0.a.a.wx, Struct_1(global0.d.b.a, global0.a.a.yx, vec3<f32>(468f, global0.a.d, global0.a.c.x), -325f), vec2<i32>(1i, 27326i), global0.a, global0.d.e))).d.e)), global0.d).a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.d.d, -1245f, global0.d.d.c.x, var_0.d.d.d), vec4<f32>(282f, var_0.d.d.c.x, global0.d.d.d, 191f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.d.d.c.x, -179f)), func_4(vec4<f32>(var_0.d.b.c.x, global0.a.d, var_0.d.b.c.x, 1043f), global0.d.b.c.x, var_0, Struct_2(vec2<bool>(var_0.c.x, true), Struct_1(vec4<bool>(false, var_0.d.d.b.x, global0.a.b.x, true), global0.c.xy, vec3<f32>(global0.a.d, 776f, -550f), var_0.a.d), vec2<i32>(u_input.c, -1i), Struct_1(vec4<bool>(true, global0.a.a.x, true, true), var_0.d.b.a.xx, var_0.d.d.c, var_0.d.d.c.x), var_0.d.e)).d, _wgslsmith_f_op_f32(var_0.a.d + -1555f), _wgslsmith_f_op_f32(1111f + var_0.d.b.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.b.d, -245f, global0.d.d.c.x, global0.a.d) + vec4<f32>(global0.a.d, global0.a.c.x, -438f, global0.a.d))), (global0.a.b.x & global0.a.a.x) | true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b.c.x, _wgslsmith_f_op_f32(1343f * _wgslsmith_f_op_f32(-158f - var_0.d.d.d)), 914f, -1541f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<u32>(~20430u, _wgslsmith_div_u32(global0.b.x, 23371u)), var_0.b.yy), ~var_0.d.e, vec4<u32>(max(global0.b.x, 0u), func_1(~(vec2<u32>(18853u, u_input.b) & vec2<u32>(global0.b.x, u_input.a.x))).e.x, _wgslsmith_add_u32(~u_input.b, u_input.a.x | global0.d.e.x) >> (firstTrailingBit(reverseBits(u_input.b)) % 32u), ~global0.b.x), vec3<u32>(global0.d.e.x, func_6(~var_0.d.e.x, func_1(u_input.a.yx), var_0.c.x && global0.d.a.x, func_1(~var_0.b.xy).b.a).d.e.x, 29037u), vec4<u32>(var_0.b.x, global0.b.x & u_input.a.x, global0.d.e.x, _wgslsmith_sub_u32(global0.b.x, 0u) | _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.yy, vec2<u32>(u_input.b, 15867u)), min(u_input.a.wx, vec2<u32>(0u, global0.b.x)))));
}

