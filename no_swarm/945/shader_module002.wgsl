struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 85268u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> bool {
    var var_0 = (min(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 38630i), arg_0.c.x, ~arg_1.c.x, ~(-2147483647i)), arg_0.c) ^ arg_0.c) << (((~vec4<u32>(u_input.a, arg_1.b.x, 1u, arg_2.x) >> (~vec4<u32>(arg_1.b.x, 1u, arg_2.x, arg_0.b.x) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(6664u, u_input.b, arg_0.b.x, arg_2.x), vec4<u32>(arg_2.x, arg_1.b.x, 61313u, arg_0.b.x)), reverseBits(vec4<u32>(arg_2.x, u_input.e.x, arg_1.b.x, 10273u)), true), _wgslsmith_sub_vec4_u32(select(vec4<u32>(65521u, arg_0.b.x, 60298u, arg_1.b.x), vec4<u32>(u_input.b, 37911u, arg_2.x, 0u), arg_3), ~vec4<u32>(135371u, u_input.e.x, u_input.e.x, 1u)), max(vec4<u32>(19408u, u_input.e.x, arg_1.b.x, 3746u) & vec4<u32>(1400u, arg_0.b.x, arg_0.b.x, 27206u), ~vec4<u32>(1u, 0u, 3252u, 22754u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = abs(u_input.e);
    let var_2 = 78563u;
    var var_3 = !select(!select(vec4<bool>(arg_0.a, false, false, false), vec4<bool>(true, true, arg_1.a, true), arg_0.a), vec4<bool>(select(true, any(vec2<bool>(arg_3, true)), true), all(!vec3<bool>(true, true, arg_0.a)), all(select(vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_3, arg_3, true), vec3<bool>(false, false, arg_0.a))), !(arg_0.a | arg_0.a)), arg_1.a);
    let var_4 = arg_0.d;
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec2<bool> {
    let var_0 = arg_0.c.d;
    let var_1 = select(arg_0.a, vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(470f)), _wgslsmith_f_op_f32(706f + arg_0.c.d)) <= _wgslsmith_f_op_f32(-arg_0.c.d), true, true, false), select(arg_0.a, select(!arg_0.a, !arg_0.a, false), !arg_0.a.x));
    global0 = u_input.e.x;
    var var_2 = !var_1;
    let var_3 = Struct_1(!(func_3(arg_0.c, arg_0.c, u_input.e.yy | vec2<u32>(arg_1, arg_1), select(var_1.x, true, false)) & select(func_3(arg_0.c, arg_0.c, vec2<u32>(arg_1, 4294967295u), true), !arg_0.a.x, !arg_0.a.x)), abs(firstTrailingBit(u_input.e.xz)), arg_0.c.c, 1582f, _wgslsmith_f_op_f32(f32(-1f) * -144f));
    return vec2<bool>(select(all(!select(vec2<bool>(arg_0.c.a, arg_0.c.a), var_1.wz, var_3.a)), true, true), false && arg_0.a.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = u_input.b;
    var var_0 = ~_wgslsmith_div_vec3_i32(~(~vec3<i32>(u_input.c.x, -44174i, -1i)), (u_input.c >> (~u_input.e % vec3<u32>(32u))) & _wgslsmith_div_vec3_i32(select(vec3<i32>(-2147483647i, 0i, 15093i), u_input.c, vec3<bool>(false, arg_0.x, false)), vec3<i32>(u_input.c.x, 0i, u_input.d)));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-324f)))))));
    return vec4<bool>(true && (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-527f, var_2)), -1000f, false)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-312f)) + -1277f)), any(arg_1) | any(select(arg_1.zz, select(vec2<bool>(true, true), arg_0, false), !vec2<bool>(arg_1.x, arg_1.x))), all(!select(!vec3<bool>(true, arg_1.x, arg_1.x), select(arg_1, arg_1, vec3<bool>(false, arg_1.x, true)), false)), any(!vec4<bool>(!arg_0.x, true, arg_0.x, func_3(Struct_1(arg_0.x, vec2<u32>(u_input.b, u_input.a), vec4<i32>(73580i, var_0.x, var_0.x, var_0.x), 133f, -929f), Struct_1(true, vec2<u32>(u_input.a, u_input.b), vec4<i32>(-2147483647i, var_0.x, var_0.x, -1i), var_2, -343f), vec2<u32>(u_input.b, 1u), false))));
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(716f - -1167f), _wgslsmith_f_op_f32(-252f * 345f), _wgslsmith_f_op_f32(abs(-300f)), _wgslsmith_div_f32(181f, 1281f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1391f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-424f, -410f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(f32(-1f) * -718f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-204f)), _wgslsmith_div_f32(-1000f, -1147f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-192f, 815f, -291f, -2623f), vec4<f32>(299f, -1196f, -230f, -275f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, -358f, -793f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2329f, var_0.x, var_0.x, var_0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1354f, var_0.x, var_0.x), vec4<f32>(-1186f, var_0.x, 452f, 625f)))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(-1002f, var_0.x)), -1480f), arg_0.x));
    var var_1 = Struct_2(arg_0, countOneBits(reverseBits(vec4<i32>(-u_input.c.x, reverseBits(u_input.d), -u_input.d, 2147483647i & u_input.d))), Struct_1(all(func_4(select(arg_0.yx, arg_0.yz, arg_0.x), arg_0.xzx).yzz), u_input.e.zy, -(~select(vec4<i32>(2147483647i, u_input.d, u_input.d, 0i), vec4<i32>(u_input.d, -8952i, u_input.d, -27025i), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(232f, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), !arg_0.x))), var_0.x));
    var var_2 = select(func_4(!(!(!vec2<bool>(var_1.c.a, false))), func_4(vec2<bool>(func_4(vec2<bool>(arg_0.x, false), arg_0.wyz).x, any(vec4<bool>(false, false, true, true))), vec3<bool>(70750i > u_input.d, !arg_0.x, any(vec2<bool>(var_1.c.a, false)))).xxy).xyy, vec3<bool>(!any(var_1.a.yw), arg_0.x, !(!arg_0.x)), !var_1.a.yww);
    var var_3 = -vec2<i32>(var_1.b.x, _wgslsmith_mult_i32(select(u_input.d, var_1.c.c.x, var_2.x), 0i)) >> (~(~(~countOneBits(vec2<u32>(19830u, var_1.c.b.x)))) % vec2<u32>(32u));
    return Struct_2(!select(!vec4<bool>(false, var_1.c.a, true, arg_0.x), select(vec4<bool>(false, false, var_1.a.x, arg_0.x), var_1.a, !arg_0.x), false), var_1.c.c, var_1.c);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_0.c.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.b.x, 7771u, u_input.b), vec3<u32>(u_input.a, 29559u, 4294967295u))), arg_0.c.b.x), 35691u, ~(~u_input.e.x));
    global0 = 4294967295u;
    let var_0 = Struct_2(!vec4<bool>(true, !(u_input.c.x <= 22833i), any(vec2<bool>(arg_0.a.x, true)), true), arg_0.c.c, Struct_1(true, reverseBits(abs(_wgslsmith_add_vec2_u32(u_input.e.yy, arg_0.c.b))), arg_0.c.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c.d * -776f))))), -1503f));
    let var_1 = !(arg_0.a.x != all(arg_0.a));
    global0 = u_input.b >> (_wgslsmith_dot_vec3_u32(u_input.e, _wgslsmith_sub_vec3_u32(select(u_input.e, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.b.x, var_0.c.b.x, u_input.e.x), u_input.e), !var_0.a.yzx), select(u_input.e, ~u_input.e, vec3<bool>(var_1, var_1, false)))) % 32u);
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = true;
    global0 = max(28563u, u_input.e.x);
    var var_1 = func_6(func_5(!func_4(func_2(Struct_2(vec4<bool>(var_0, true, var_0, false), vec4<i32>(-1i, 0i, u_input.d, u_input.d), Struct_1(var_0, u_input.e.xy, vec4<i32>(u_input.d, u_input.d, u_input.c.x, -2147483647i), -357f, 1809f)), u_input.e.x), select(vec3<bool>(false, var_0, false), vec3<bool>(true, false, true), vec3<bool>(var_0, true, var_0)))));
    let var_2 = u_input.d;
    global0 = u_input.a;
    return var_1.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    global0 = min(func_1(), u_input.b);
    global0 = func_5(select(func_5(vec4<bool>(true, true, u_input.a <= u_input.e.x, true)).a, func_5(vec4<bool>(true, true, true, true)).a, vec4<bool>(true, true, true, true))).c.b.x;
    global0 = u_input.a;
    var var_0 = func_6(func_6(func_5(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false))));
    var_0 = func_6(func_6(func_6(Struct_2(vec4<bool>(true, var_0.a.x, false, true), vec4<i32>(-2147483647i, var_0.b.x, u_input.d, u_input.d), func_6(Struct_2(vec4<bool>(var_0.c.a, var_0.a.x, true, true), var_0.b, var_0.c)).c))));
    var var_1 = _wgslsmith_f_op_f32(552f - _wgslsmith_div_f32(-754f, var_0.c.e));
    let var_2 = ~15087u;
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(~(u_input.e >> (u_input.e % vec3<u32>(32u)))), vec3<u32>(u_input.e.x, ~(~4294967295u), 60804u), false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.d + _wgslsmith_f_op_f32(f32(-1f) * -463f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.d, -164f))))), 1u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-266f + var_0.c.d))), _wgslsmith_f_op_f32(step(var_0.c.d, -1573f)), _wgslsmith_f_op_f32(-var_0.c.d)))));
}

