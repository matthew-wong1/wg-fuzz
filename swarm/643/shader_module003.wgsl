struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    global0 = vec3<bool>(global0.x, global0.x, arg_0.a.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-252f)));
    var var_1 = u_input.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -4005f)), _wgslsmith_f_op_f32(trunc(-812f)), var_0, _wgslsmith_f_op_f32(-var_0));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -758f, 1401f, -900f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -531f, -917f, -302f) + vec4<f32>(var_2.x, 1000f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1861f, 296f, -232f, var_2.x))))))), vec4<f32>(_wgslsmith_f_op_f32(round(-1860f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-191f, -607f)))), _wgslsmith_f_op_f32(var_2.x + var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f * 1070f)) - _wgslsmith_f_op_f32(step(-650f, var_2.x))), var_2.x), vec4<u32>((_wgslsmith_add_u32(4294967295u, u_input.b) | u_input.b) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), u_input.c, 0u, ~(~_wgslsmith_clamp_u32(u_input.c, 40558u, 0u))), select(!(!select(vec2<bool>(true, false), arg_0.a, true)), select(!select(vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(false, true)), vec2<bool>(true, !arg_0.a.x), !arg_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(18508i, u_input.a.x, -1i, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(44966i, var_1.x, u_input.a.x, -10285i), vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, 36499i))) >= u_input.a.x));
    return !vec3<bool>(true, global0.x, true);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    global0 = !select(func_3(Struct_2(vec2<bool>(global0.x, true))), !(!(!vec3<bool>(arg_3, false, global0.x))), select(!select(vec3<bool>(arg_3, global0.x, false), vec3<bool>(true, arg_3, global0.x), vec3<bool>(true, true, false)), vec3<bool>(!arg_3, any(vec4<bool>(true, true, global0.x, false)), select(false, arg_3, true)), select(vec3<bool>(global0.x, arg_3, arg_3), select(vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, arg_3, arg_3)), all(vec4<bool>(false, global0.x, arg_3, false)))));
    var var_0 = !vec4<bool>(true, (true && (arg_0.x >= arg_0.x)) | all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, arg_3, global0.x), true)), true, global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(304f, 470f, -1591f, -460f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1782f, -406f, -1449f, 1544f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(867f, 428f, 442f, -1000f) + vec4<f32>(-226f, 707f, 1085f, 986f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, -1000f, 978f, -839f))))), vec4<f32>(_wgslsmith_f_op_f32(step(-101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(159f)) - 776f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - -1306f)), _wgslsmith_f_op_f32(max(372f, _wgslsmith_f_op_f32(sign(-554f)))), -496f), ~arg_2, vec2<bool>(global0.x, any(!var_0.yzy)));
    var var_2 = vec2<bool>(all(vec3<bool>(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) >= var_1.a.x, any(!vec3<bool>(var_1.d.x, arg_3, true)), true)), arg_3);
    let var_3 = var_1;
    return Struct_1(var_3.b, _wgslsmith_f_op_vec4_f32(-var_1.a), vec4<u32>(5242u, u_input.b, ~(var_1.c.x | _wgslsmith_add_u32(1u, 27391u)), 4294967295u), !(!(!select(vec2<bool>(false, arg_3), vec2<bool>(false, arg_3), true))));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    global0 = vec3<bool>(!any(!vec3<bool>(arg_0.d.x, true, arg_0.d.x)), global0.x || global0.x, arg_0.d.x);
    global0 = !vec3<bool>(arg_0.d.x, u_input.a.x <= 1i, true);
    global0 = !select(vec3<bool>(any(vec4<bool>(true, global0.x, false, arg_0.d.x)), global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(-9063i, u_input.a.x, 37712i, u_input.a.x)) != ~2147483647i), select(!(!vec3<bool>(global0.x, arg_0.d.x, arg_0.d.x)), func_3(Struct_2(vec2<bool>(true, global0.x))), !(arg_0.b.x <= arg_0.a.x)), all(global0.zy));
    let var_0 = vec3<bool>(any(vec4<bool>(true, false, global0.x || true, all(vec4<bool>(false, global0.x, false, global0.x)))) || !func_3(Struct_2(vec2<bool>(true, true))).x, any(!vec3<bool>(arg_0.d.x, global0.x, all(vec4<bool>(false, true, false, true)))), !any(select(vec3<bool>(global0.x, arg_0.d.x, arg_0.d.x), !vec3<bool>(false, false, arg_0.d.x), vec3<bool>(global0.x, true, global0.x))));
    global0 = !(!var_0);
    return _wgslsmith_div_vec4_f32(vec4<f32>(func_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) ^ vec3<i32>(u_input.a.x, 0i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -58649i, u_input.a.x, 39415i), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), select(select(arg_0.c, vec4<u32>(1u, u_input.c, 54015u, 4294967295u), false), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c), !var_0.x), -u_input.a.x != 18200i).b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-117f)) - -235f))), 705f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1874f, 436f, arg_0.a.x) - arg_0.b)) * _wgslsmith_f_op_vec4_f32(sign(arg_0.a))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(arg_0.a.x, arg_0.a.x, -801f, 587f)))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = select(!select(select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, true))), select(!vec3<bool>(false, global0.x, false), !vec3<bool>(true, true, global0.x), !vec3<bool>(global0.x, true, false)), vec3<bool>(false, true, false)), !vec3<bool>(_wgslsmith_f_op_f32(sign(arg_0)) > arg_0, any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), false)), all(vec3<bool>(global0.x, global0.x, true))), true);
    global0 = vec3<bool>(false, true, false);
    let var_0 = -vec3<i32>(abs(firstTrailingBit(_wgslsmith_clamp_i32(-70519i, u_input.a.x, u_input.a.x))), firstLeadingBit(~444i), -u_input.a.x);
    var var_1 = arg_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)));
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, 1000f, 1022f, 2068f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 739f, 886f, arg_0)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(208f, 643f, arg_0, arg_0) + vec4<f32>(arg_0, -861f, -373f, 807f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(abs(vec3<i32>(u_input.a.x, 0i, -27575i)), _wgslsmith_div_i32(u_input.a.x, 0i), vec4<u32>(0u, 0u, u_input.c, u_input.c), global0.x)))), firstTrailingBit(select(~vec4<u32>(u_input.c, u_input.c, 39574u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(8592u, u_input.b, 4237u, 1u), select(vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b), vec4<u32>(1u, u_input.c, 4294967295u, u_input.b), global0.x)), (20132u << (u_input.b % 32u)) > _wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b))), vec2<bool>(any(select(select(vec3<bool>(false, false, global0.x), vec3<bool>(true, false, false), false), vec3<bool>(global0.x, true, false), global0.x == global0.x)), false));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = max(firstLeadingBit(vec2<u32>(u_input.b, (arg_1.c.x << (arg_1.c.x % 32u)) & 19097u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(57243u, 3100u), countOneBits(_wgslsmith_mult_vec2_u32(arg_1.c.zy, vec2<u32>(53426u, arg_1.c.x))), vec2<u32>(58776u, u_input.b)) >> (arg_1.c.yy % vec2<u32>(32u)));
    let var_1 = ~u_input.a.x;
    var var_2 = ~4294967295u;
    var var_3 = false | any(arg_1.d);
    var_3 = !any(vec4<bool>(true, all(vec3<bool>(global0.x, global0.x, false)) && (u_input.a.x <= -1i), arg_1.d.x, global0.x));
    return select(select(vec3<bool>(!(u_input.a.x < var_1), global0.x, any(vec4<bool>(false, true, arg_1.d.x, arg_1.d.x))), !(!vec3<bool>(true, true, arg_1.d.x)), func_3(Struct_2(vec2<bool>(true, false)))), select(!(!(!vec3<bool>(arg_1.d.x, false, arg_1.d.x))), select(vec3<bool>(all(vec4<bool>(arg_1.d.x, true, true, arg_1.d.x)), true, true), select(!vec3<bool>(arg_1.d.x, true, true), vec3<bool>(false, arg_1.d.x, true), any(global0.xx)), vec3<bool>(false, false, func_2(vec3<i32>(u_input.a.x, 42425i, var_1), -1i, vec4<u32>(arg_1.c.x, 95012u, 60155u, var_0.x), false).d.x)), u_input.a.x <= _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1, u_input.a.x, -5687i, u_input.a.x), vec4<i32>(2147483647i, 0i, -23277i, u_input.a.x), arg_1.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-3170i, -37512i, 19532i, 1i), vec4<i32>(-31319i, var_1, u_input.a.x, 42349i), vec4<i32>(u_input.a.x, 2147483647i, -5681i, var_1)))), !(!(!select(vec3<bool>(false, false, arg_1.d.x), vec3<bool>(global0.x, true, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!func_5(0u, func_1(-1127f))));
    global0 = func_3(Struct_2(!(!func_2(vec3<i32>(u_input.a.x, u_input.a.x, -2021i), 0i, vec4<u32>(u_input.c, u_input.c, 0u, u_input.b), global0.x).d)));
    global0 = vec3<bool>(true, global0.x, any(vec3<bool>(select(u_input.c >= 4294967295u, global0.x, true), func_3(Struct_2(vec2<bool>(true, false))).x, global0.x)));
    let var_0 = func_2(abs(vec3<i32>(-2147483647i, -2147483647i, -46021i)), u_input.a.x, (max(abs(vec4<u32>(4294967295u, 4294967295u, u_input.b, 68875u)), vec4<u32>(4294967295u, 80005u, u_input.c, u_input.b)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(56258u, u_input.b, u_input.c, u_input.b), vec4<u32>(0u, 4294967295u, u_input.b, 33979u)) % vec4<u32>(32u))) << (vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.b, 0u, u_input.b, u_input.c)), u_input.b, ~(~9134u), reverseBits(abs(0u))) % vec4<u32>(32u)), !(!(!all(vec3<bool>(global0.x, global0.x, false)))));
    global0 = select(select(select(select(!vec3<bool>(true, var_0.d.x, false), vec3<bool>(global0.x, false, global0.x), func_5(u_input.c, Struct_1(vec4<f32>(var_0.b.x, -590f, 535f, var_0.a.x), vec4<f32>(-472f, var_0.a.x, var_0.b.x, var_0.a.x), var_0.c, vec2<bool>(global0.x, global0.x)))), vec3<bool>(any(vec4<bool>(var_0.d.x, true, global0.x, var_0.d.x)), var_0.d.x, func_1(var_0.b.x).d.x), select(vec3<bool>(var_0.d.x, global0.x, true), func_5(u_input.c, var_0), vec3<bool>(global0.x, var_0.d.x, true))), vec3<bool>(any(!global0.yy), global0.x, !(2147483647i == u_input.a.x)), any(vec3<bool>(global0.x, all(vec4<bool>(global0.x, var_0.d.x, global0.x, false)), !global0.x))), vec3<bool>(select(false, !(u_input.b != u_input.c), !global0.x), !(!global0.x != true), !(all(vec4<bool>(true, false, global0.x, global0.x)) | true)), true);
    let var_1 = func_2(select(~(-vec3<i32>(5214i, u_input.a.x, 0i)) << (abs(min(vec3<u32>(1u, u_input.c, u_input.c), var_0.c.wxz)) % vec3<u32>(32u)), -max(-vec3<i32>(0i, 1i, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -19522i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -55043i))), func_2(_wgslsmith_div_vec3_i32(select(vec3<i32>(16321i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 30357i, 2904i), global0.x), vec3<i32>(-1i, 2147483647i, u_input.a.x)), -32317i, firstTrailingBit(vec4<u32>(var_0.c.x, u_input.b, var_0.c.x, var_0.c.x)), true).d.x), 14813i << (~(_wgslsmith_div_u32(85181u, u_input.b) << (13787u % 32u)) % 32u), vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(var_0.c.yx)), var_0.c.xx), firstLeadingBit(16325u), 10508u), min(select(reverseBits(-68743i), 0i, any(vec3<bool>(true, true, true))), u_input.a.x) <= 1i);
    global0 = !vec3<bool>(var_0.d.x, var_1.d.x, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-1i, 0i, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -vec3<i32>(u_input.a.x, 2147483647i, -1i), vec3<i32>(54520i, u_input.a.x, 46765i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-105829i, -27572i, -1i), vec3<i32>(-75107i, 1i, -1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(1236f + -822f)), _wgslsmith_f_op_f32(f32(-1f) * -1394f)) - var_1.b.xz), func_2(abs(vec3<i32>(_wgslsmith_mod_i32(-29473i, u_input.a.x), -13772i, 0i)), 2147483647i, var_1.c << (var_0.c % vec4<u32>(32u)), all(func_3(Struct_2(global0.xx)).yz)).c.x, firstTrailingBit(var_1.c.ywy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)));
}

