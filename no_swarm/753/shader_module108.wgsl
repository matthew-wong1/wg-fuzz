struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: Struct_1;

var<private> global2: bool = false;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = vec2<bool>(true, !(!all(global1.c.yw)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -758f), true)))));
    global1 = global0[_wgslsmith_index_u32(14926u, 11u)];
    let var_2 = global1.e.wzz;
    global0 = array<Struct_1, 11>();
    return firstLeadingBit(52413u | global1.e.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<f32> {
    let var_0 = Struct_4(~func_2(-188f, func_2(753f, ~0u)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))))), all(select(select(arg_1.c.xz, arg_0.c.yy, global1.c.x), select(vec2<bool>(false, true), vec2<bool>(true, true), true), any(arg_1.c.yxz))), vec4<bool>(arg_0.c.x, global1.b, any(global1.c), false), i32(-1i) * -2147483647i, arg_1.e), _wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.d, 2147483647i, arg_1.d), vec3<i32>(2147483647i, 2147483647i, arg_1.d)), abs(vec3<i32>(arg_1.d, 0i, arg_1.d))), -vec3<i32>(6493i, -arg_1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0.d), vec2<i32>(-1609i, arg_1.d)))), vec3<u32>(_wgslsmith_clamp_u32(arg_1.e.x, arg_1.e.x, min(~arg_1.e.x, reverseBits(0u))), countOneBits(~(~4294967295u)), ~(~_wgslsmith_mod_u32(20006u, 1u))), vec4<i32>(31050i, -13518i, 1i, 24861i ^ select(1i, global1.d, false)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1345f)), _wgslsmith_f_op_f32(-var_0.b.a), arg_0.a) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 1000f, var_0.b.a) * vec3<f32>(229f, -1718f, -643f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, arg_1.a, arg_0.a))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 1773f, global1.a) * vec3<f32>(1416f, -1379f, -1501f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(3771f, arg_1.a, global1.a), vec3<f32>(global1.a, var_0.b.a, -881f), arg_1.c.zyz))))))));
    global1 = Struct_1(650f, all(var_0.b.c), vec4<bool>(arg_0.b, false & all(select(vec3<bool>(true, arg_0.c.x, var_0.b.c.x), vec3<bool>(arg_0.b, false, true), vec3<bool>(var_0.b.b, arg_1.b, false))), true, true), abs(var_0.b.d), arg_0.e);
    let var_2 = arg_2 && ((arg_2 || any(select(vec3<bool>(global1.c.x, true, arg_1.c.x), vec3<bool>(arg_1.c.x, arg_1.c.x, arg_0.c.x), false))) != !(u_input.a >= u_input.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(219f, -625f, var_0.b.a, 1279f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.a, global1.a, 1000f, var_1.x))) * vec4<f32>(-1000f, -706f, 1000f, global1.a)))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(626f, -1000f)) - global1.a)))), !(global1.c.x || !any(global1.c.zz)), global1.c, global1.d, global1.e);
    var var_0 = abs(abs(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.e.x, global1.e.x) | vec2<u32>(global1.e.x, 1u), global1.e.yx))));
    global0 = array<Struct_1, 11>();
    var_0 = ~global1.e.xx;
    var var_1 = Struct_1(984f, (i32(-1i) * -(global1.d ^ global1.d)) <= (abs(~5640i) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global1.e.zww, vec3<u32>(47263u, 14111u, 37754u)), 43962u) % 32u)), vec4<bool>(global1.c.x, global1.b, all(!(!global1.c.wxy)), global1.c.x), -2147483647i, ~(~global1.e));
    return _wgslsmith_add_i32(-(~var_1.d), 0i);
}

fn func_1(arg_0: i32) -> Struct_4 {
    global1 = global0[_wgslsmith_index_u32(select(global1.e.x, global1.e.x | func_2(-1111f, _wgslsmith_sub_u32(u_input.a, ~global1.e.x)), true), 11u)];
    let var_0 = global1.d;
    global2 = true;
    var var_1 = vec3<i32>(i32(-1i) * -(~global1.d), arg_0, -35750i) | (vec3<i32>(abs(1i), arg_0, func_4(_wgslsmith_f_op_f32(global1.a * 442f), _wgslsmith_div_f32(356f, 658f), _wgslsmith_f_op_f32(round(302f)), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(u_input.a, 11u)], Struct_1(1068f, global1.c.x, global1.c, 0i, global1.e), global1.b)))) ^ (vec3<i32>(-1i) * -select(vec3<i32>(0i, arg_0, 0i), vec3<i32>(arg_0, 0i, 32997i), vec3<bool>(global1.b, global1.c.x, true))));
    global2 = any(global1.c.wz);
    return Struct_4(4294967295u, global0[_wgslsmith_index_u32(1u, 11u)], ~vec3<i32>(-(global1.d | -8839i), (28113i << (0u % 32u)) >> (~global1.e.x % 32u), abs(-36938i)), ~global1.e.xzz, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, arg_0, arg_0), vec4<i32>(global1.d, -1i, global1.d, global1.d))) ^ ~(-select(vec4<i32>(-3722i, arg_0, 0i, arg_0), vec4<i32>(-1i, 34294i, var_1.x, -2147483647i), global1.c)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = all(!(!(!vec2<bool>(global1.c.x, arg_0.b.c.x)))) & true;
    var_0 = !(_wgslsmith_f_op_f32(min(arg_0.b.a, _wgslsmith_div_f32(arg_0.b.a, arg_0.b.a))) >= 197f);
    var var_1 = arg_0.b;
    global2 = !all(!(!vec4<bool>(arg_0.b.b, arg_0.b.b, true, arg_0.b.b))) != var_1.c.x;
    let var_2 = select(func_1(arg_0.c.x << (4294967295u % 32u)).b.c, var_1.c, vec4<bool>(true, true, !all(!global1.c.xyx), all(!func_1(global1.d).b.c.zy)));
    return Struct_4(global1.e.x << (~var_1.e.x % 32u), global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.e.www, vec3<u32>(arg_0.b.e.x, 15797u, 0u))), 11u)], -arg_0.e.wzx, abs(_wgslsmith_div_vec3_u32(arg_0.b.e.zww, var_1.e.xyy) ^ (vec3<u32>(0u, arg_0.d.x, 57135u) | global1.e.wxw)) ^ vec3<u32>(~(~8936u), 1u, 46334u), vec4<i32>(arg_0.e.x, global1.d, global1.d, 2147483647i));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: bool) -> Struct_3 {
    var var_0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.a, _wgslsmith_dot_vec2_u32(global1.e.wz, global1.e.zy)), reverseBits(0u), select(~4247u, max(global1.e.x, u_input.a), arg_2)));
    var var_1 = func_5(Struct_4(global1.e.x, global0[_wgslsmith_index_u32(arg_0.a, 11u)], func_5(arg_0, countOneBits(_wgslsmith_mod_vec2_i32(arg_0.c.zy, vec2<i32>(-1i, 11851i)))).c, vec3<u32>(global1.e.x, 82500u, func_2(_wgslsmith_f_op_f32(f32(-1f) * -268f), countOneBits(arg_0.d.x))), arg_0.e), -arg_0.e.wx).b;
    var_0 = ~arg_0.d.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 239f)), u_input.a <= global1.e.x, vec4<bool>(true, !(!global1.b), func_1(-1i).b.b, true), ~(-17836i), max(vec4<u32>(u_input.a, 2352u, _wgslsmith_sub_u32(var_1.e.x, var_1.e.x), u_input.a), arg_0.b.e) >> (global1.e % vec4<u32>(32u)));
    var var_3 = !arg_2;
    return Struct_3(var_1.a, vec3<u32>(2681u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_1.e, abs(vec4<u32>(0u, 4294967295u, var_1.e.x, 4294967295u))), arg_0.b.e), var_1.e.x), ~arg_0.b.e.xxx, all(vec3<bool>(all(arg_0.b.c.zy), arg_2 || var_2.c.x, any(vec3<bool>(false, var_1.c.x, var_2.c.x)))) & true, Struct_1(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(step(var_2.a, global1.a))), true, !select(!var_2.c, !vec4<bool>(var_2.c.x, true, global1.c.x, var_2.c.x), any(vec3<bool>(var_2.b, true, arg_0.b.c.x))), abs(var_2.d), vec4<u32>(~(~0u), u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 29661u), _wgslsmith_dot_vec2_u32(vec2<u32>(39805u, 12252u), var_2.e.wx)), ~firstTrailingBit(115240u))));
}

fn func_7(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = false;
    global1 = arg_0.e;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_2);
    global0 = array<Struct_1, 11>();
    global1 = Struct_1(-1124f, !arg_0.e.b, !vec4<bool>(func_5(func_5(Struct_4(0u, Struct_1(arg_0.a, true, arg_0.e.c, -3633i, vec4<u32>(arg_0.e.e.x, u_input.a, 1u, 50868u)), vec3<i32>(global1.d, -1589i, arg_0.e.d), global1.e.xzx, vec4<i32>(46439i, arg_0.e.d, arg_0.e.d, arg_3.x)), arg_3.yz), vec2<i32>(arg_0.e.d, global1.d)).b.b, true, all(select(global1.c.zy, global1.c.xy, global1.c.ww)), !global1.c.x), func_4(265f, -1408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(726f)) + func_1(arg_0.e.d).b.a), arg_1) ^ ~(-75312i), func_1(_wgslsmith_add_i32(arg_3.x, -(i32(-1i) * -68109i))).b.e);
    return Struct_2(_wgslsmith_mod_vec3_u32(abs(arg_0.b), arg_0.b), global1.b & global1.c.x, select(!(!select(arg_0.e.c, arg_0.e.c, vec4<bool>(global1.c.x, true, arg_0.d, false))), func_1(global1.d).b.c, any(func_6(func_1(35255i), ~global1.d, true).e.c)), vec2<u32>(22395u, _wgslsmith_div_u32(global1.e.x, _wgslsmith_dot_vec4_u32(reverseBits(arg_0.e.e), vec4<u32>(arg_0.c.x, global1.e.x, global1.e.x, 45015u) | vec4<u32>(global1.e.x, 0u, arg_0.b.x, 1u)))), (i32(-1i) * -6293i) >> (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(func_1(global1.d), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(global1.d, 0i)), vec2<i32>(1i, global1.d))), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.d, global1.d, 1i, global1.d), vec4<i32>(-24774i, global1.d, global1.d, -2147483647i)), vec4<i32>(global1.d, 10868i, 31516i, global1.d))), true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1274f, -412f, global1.a, _wgslsmith_f_op_f32(530f * -1000f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, global1.a, -746f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1246f, global1.a, -301f, -221f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1437f, -965f, -336f, 898f), vec4<f32>(global1.a, 1102f, global1.a, -615f))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global1.a, global1.c.x, vec4<bool>(global1.c.x, true, global1.b, true), -68489i, vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)), func_1(1i).b, true)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-238f, 1000f), vec2<f32>(global1.a, -150f))) + vec2<f32>(178f, 207f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, 138f)))), all(vec2<bool>(global1.c.x, global1.c.x)))))), -(~vec3<i32>(1i, global1.d, global1.d) >> (~vec3<u32>(4294967295u, global1.e.x, u_input.a) % vec3<u32>(32u))) << (global1.e.xxw % vec3<u32>(32u)));
    global2 = all(select(func_6(func_1(func_5(Struct_4(32231u, global0[_wgslsmith_index_u32(u_input.a, 11u)], vec3<i32>(15371i, global1.d, global1.d), vec3<u32>(global1.e.x, 51825u, u_input.a), vec4<i32>(0i, global1.d, global1.d, -96568i)), vec2<i32>(global1.d, var_0.e)).b.d), var_0.e, false).e.c, global1.c, var_0.b));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global1 = func_6(Struct_4(select(global1.e.x, 98386u >> (_wgslsmith_clamp_u32(26376u, 1u, var_0.d.x) % 32u), !all(global1.c.zw)), global0[_wgslsmith_index_u32(func_1(~(~var_0.e)).d.x, 11u)], _wgslsmith_div_vec3_i32(vec3<i32>(-var_0.e, 1i, global1.d), ~abs(vec3<i32>(var_0.e, var_0.e, -14077i))), vec3<u32>(~19378u, var_0.a.x, ~global1.e.x | 19692u), firstLeadingBit(vec4<i32>(global1.d, reverseBits(global1.d), 21844i, 13730i))), ~var_0.e, (global1.b && (~global1.e.x != ~34248u)) & true).e;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(2147483647i).b.d, -2147483647i, var_0.e << (global1.e.x % 32u), 26453u);
}

