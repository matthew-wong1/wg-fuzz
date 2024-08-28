struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec3<bool>(true, true, true), vec4<u32>(46443u, 83763u, 5039u, 1u), vec3<f32>(1953f, -711f, -693f), vec3<bool>(false, true, false));

var<private> global1: array<u32, 10> = array<u32, 10>(1u, 1u, 15609u, 29096u, 0u, 1u, 1u, 42993u, 4294967295u, 0u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = ~(-1i);
    let var_1 = -arg_1;
    let var_2 = Struct_1(arg_2.a, !global0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(~arg_0.x, _wgslsmith_div_u32(0u, arg_0.x), arg_2.a, global1[_wgslsmith_index_u32(22020u, 10u)]) | (_wgslsmith_mult_vec4_u32(vec4<u32>(21794u, arg_0.x, 4294967295u, 1u), arg_0) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.x, u_input.a.x, 3714u, 41703u), vec4<u32>(7923u, arg_2.c.x, arg_0.x, 22267u), vec4<u32>(arg_2.c.x, arg_2.a, arg_0.x, 0u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(arg_2.c, global0.c, ~(~vec4<u32>(1u, 87284u, 73244u, global1[_wgslsmith_index_u32(arg_0.x, 10u)])))), global0.d, select(arg_2.e, arg_2.b, any(global0.b)));
    global1 = array<u32, 10>();
    let var_3 = Struct_1(1u, select(global0.e, select(select(vec3<bool>(global0.e.x, var_2.b.x, true), select(vec3<bool>(global0.b.x, global0.e.x, global0.b.x), vec3<bool>(false, false, global0.b.x), vec3<bool>(true, global0.b.x, var_2.e.x)), var_2.e.x & true), select(var_2.b, vec3<bool>(var_2.b.x, false, false), any(global0.b.yx)), vec3<bool>(arg_2.e.x, var_2.b.x, !global0.e.x)), select(vec3<bool>(true, true, !arg_2.b.x), !vec3<bool>(true, global0.e.x, var_2.e.x), !(!arg_2.b.x))), arg_0, global0.d, vec3<bool>(all(global0.b.zx), arg_2.d.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-618f, var_2.d.x))), arg_2.b.x == (all(vec2<bool>(false, global0.e.x)) && (false && arg_2.e.x))));
    return arg_0.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = global0.d;
    var var_1 = Struct_1(global0.a, !vec3<bool>(~(-1i) != u_input.b.x, false, true), vec4<u32>(abs(func_3(global0.c, _wgslsmith_clamp_i32(arg_1.x, arg_1.x, arg_1.x), Struct_1(0u, global0.b, vec4<u32>(u_input.e, global1[_wgslsmith_index_u32(u_input.e, 10u)], 25654u, global0.a), vec3<f32>(-1961f, var_0.x, var_0.x), global0.b))), abs(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 10u)], 39515u)), 45055u, 51411u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.d.x * global0.d.x), _wgslsmith_f_op_f32(var_0.x - global0.d.x), var_0.x))), !select(global0.b, global0.e, !(!global0.e)));
    let var_2 = Struct_1(~88445u, var_1.b, global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.d)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global0.d, vec3<f32>(222f, global0.d.x, global0.d.x))))) * global0.d)), select(vec3<bool>(!(var_1.d.x <= 1739f), false, var_1.d.x >= 1520f), select(select(!var_1.b, !var_1.e, !var_1.b), select(!vec3<bool>(var_1.e.x, false, var_1.e.x), !vec3<bool>(true, var_1.b.x, arg_0), any(vec3<bool>(var_1.e.x, var_1.b.x, arg_0))), !(!vec3<bool>(var_1.b.x, false, true))), !(any(vec2<bool>(global0.b.x, true)) && (1316f < global0.d.x))));
    let var_3 = ~var_2.c.yyz;
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-507f - -926f), var_0.x), var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1554f)), var_1.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, -476f, -775f, global0.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.d.x, var_2.d.x, -2323f, -1124f), vec4<f32>(997f, 1084f, -458f, -848f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1111f, var_2.d.x, -209f, 1908f) - vec4<f32>(492f, var_0.x, -595f, var_0.x))), vec4<bool>(all(vec3<bool>(false, true, arg_0)), false, select(true, var_1.e.x, true), var_1.b.x))))));
    return var_2.c;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_add_i32(1i, u_input.b.x);
    let var_2 = _wgslsmith_mult_i32(30888i, ~u_input.b.x);
    let var_3 = Struct_1(~arg_3.x, !select(select(!arg_2.b, vec3<bool>(true, false, arg_2.b.x), true), global0.b, vec3<bool>(select(true, arg_1.e.x, true), true, true & arg_2.b.x)), abs(vec4<u32>(_wgslsmith_sub_u32(select(15209u, arg_1.a, arg_1.b.x), var_0.a), global0.a, var_0.a, ~_wgslsmith_add_u32(41121u, 30309u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-152f, -2894f, arg_2.d.x))), _wgslsmith_f_op_vec3_f32(arg_2.d + vec3<f32>(arg_1.d.x, -1001f, arg_0)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.d.x, _wgslsmith_div_f32(arg_0, global0.d.x), 415f))))), select(!arg_1.b, !vec3<bool>(!arg_1.b.x, true, all(vec2<bool>(global0.e.x, false))), vec3<bool>(true, arg_2.e.x, any(!vec2<bool>(global0.e.x, var_0.b.x)))));
    global1 = array<u32, 10>();
    return arg_2;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    let var_0 = all(vec3<bool>(global0.b.x, false, any(vec4<bool>(all(global0.e.yx), any(vec4<bool>(false, arg_1.e.x, global0.b.x, false)), true, global0.e.x))));
    global0 = arg_1;
    let var_1 = Struct_1(~(~(0u ^ global0.a)) | arg_1.a, !vec3<bool>(!var_0 || !arg_1.b.x, true, true), ~arg_1.c, arg_1.d, vec3<bool>(arg_1.b.x, all(vec3<bool>(var_0, arg_0.x >= arg_0.x, true)), false));
    let var_2 = vec3<bool>(var_1.b.x, var_0, var_1.e.x);
    let var_3 = any(!func_4(var_1.d.x, func_4(-1376f, Struct_1(u_input.a.x, global0.b, arg_1.c, global0.d, vec3<bool>(var_0, false, var_0)), func_4(global0.d.x, arg_1, Struct_1(1u, vec3<bool>(var_0, false, true), global0.c, global0.d, vec3<bool>(false, var_2.x, var_2.x)), u_input.d.xy), vec2<u32>(4294967295u, 51767u)), Struct_1(reverseBits(48444u), vec3<bool>(arg_1.e.x, var_1.e.x, true), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, var_1.c.x, u_input.c, 41768u), arg_1.c), arg_1.d, vec3<bool>(var_1.b.x, true, false)), vec2<u32>(global0.c.x, global0.c.x)).b.xx);
    return (global1[_wgslsmith_index_u32(u_input.c, 10u)] > ~1u) && func_4(_wgslsmith_f_op_f32(sign(937f)), Struct_1(~u_input.a.x | _wgslsmith_mult_u32(0u, arg_1.a), vec3<bool>(true, 2147483647i <= u_input.b.x, var_2.x || true), ~global0.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-242f, -529f, arg_1.d.x))))), !vec3<bool>(true, var_2.x, var_2.x)), Struct_1(_wgslsmith_add_u32(107014u ^ u_input.c, 45699u), var_1.e, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.c.zyz, vec3<u32>(4294967295u, 4294967295u, 9930u)), 1u >> (1u % 32u), 7627u, ~9759u), global0.d, vec3<bool>(arg_0.x <= arg_0.x, func_4(-2851f, var_1, arg_1, arg_1.c.zx).b.x, 0i < u_input.b.x)), func_4(864f, arg_1, var_1, u_input.a.zz).c.zy).e.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(-(~2147483647i), u_input.b.x);
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    var var_1 = 49612i <= (u_input.b.x << (4294967295u % 32u));
    var var_2 = vec3<bool>(func_5(~(~(-vec2<i32>(5146i, var_0))), func_4(-192f, Struct_1(global0.c.x >> (0u % 32u), vec3<bool>(global0.e.x, global0.e.x, false), _wgslsmith_clamp_vec4_u32(global0.c, vec4<u32>(34888u, global0.c.x, 25447u, u_input.e), vec4<u32>(22874u, global1[_wgslsmith_index_u32(72975u, 10u)], global1[_wgslsmith_index_u32(global0.a, 10u)], global1[_wgslsmith_index_u32(u_input.e, 10u)])), global0.d, vec3<bool>(true, true, true)), Struct_1(~4294967295u, !global0.e, func_2(false, vec4<i32>(u_input.b.x, var_0, var_0, 5523i)), _wgslsmith_f_op_vec3_f32(trunc(global0.d)), global0.b), vec2<u32>(7683u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 103217u), vec2<u32>(global0.c.x, u_input.a.x))))), any(global0.e.zz), _wgslsmith_dot_vec2_i32(~u_input.b.xy | u_input.b.xy, ~_wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, 1i))) > reverseBits(_wgslsmith_mult_i32(1i, -2147483647i)));
    return func_4(182f, Struct_1(4294967295u, !func_4(global0.d.x, Struct_1(global1[_wgslsmith_index_u32(0u, 10u)], global0.b, global0.c, vec3<f32>(global0.d.x, 1690f, global0.d.x), vec3<bool>(var_2.x, var_2.x, var_2.x)), Struct_1(1u, global0.e, vec4<u32>(4294967295u, 35599u, 62066u, u_input.c), vec3<f32>(-563f, global0.d.x, global0.d.x), vec3<bool>(true, false, global0.e.x)), ~vec2<u32>(0u, 0u)).e, func_4(global0.d.x, func_4(-235f, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 10u)], global0.b, vec4<u32>(global0.a, global0.a, u_input.c, global1[_wgslsmith_index_u32(global0.c.x, 10u)]), vec3<f32>(-755f, global0.d.x, 1217f), global0.e), Struct_1(67331u, vec3<bool>(global0.e.x, true, global0.e.x), vec4<u32>(4294967295u, u_input.d.x, 44884u, 37117u), global0.d, global0.b), vec2<u32>(41425u, 27096u)), func_4(-215f, func_4(global0.d.x, Struct_1(u_input.e, vec3<bool>(false, global0.b.x, false), vec4<u32>(73499u, global1[_wgslsmith_index_u32(1u, 10u)], u_input.d.x, global0.a), vec3<f32>(global0.d.x, global0.d.x, global0.d.x), global0.e), Struct_1(0u, global0.b, global0.c, vec3<f32>(global0.d.x, global0.d.x, global0.d.x), global0.e), vec2<u32>(59964u, 4294967295u)), Struct_1(0u, vec3<bool>(global0.e.x, false, false), global0.c, vec3<f32>(global0.d.x, 390f, -384f), vec3<bool>(false, true, true)), vec2<u32>(global0.a, u_input.a.x) >> (global0.c.zw % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16328u, global1[_wgslsmith_index_u32(29777u, 10u)], global0.a, global0.c.x), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 6299u, global0.a, 4294967295u)), ~0u)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d * global0.d) - _wgslsmith_f_op_vec3_f32(ceil(global0.d)))), select(!func_4(244f, Struct_1(76845u, vec3<bool>(false, global0.e.x, var_2.x), vec4<u32>(424u, global1[_wgslsmith_index_u32(global0.a, 10u)], 1u, u_input.e), vec3<f32>(-1366f, global0.d.x, global0.d.x), global0.e), Struct_1(1u, global0.b, global0.c, global0.d, vec3<bool>(global0.b.x, var_2.x, true)), u_input.d.zz).b, vec3<bool>(true, !global0.e.x, global0.e.x), false)), func_4(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2621f, _wgslsmith_f_op_f32(f32(-1f) * -1340f)), _wgslsmith_f_op_f32(-420f - -233f))), Struct_1(_wgslsmith_clamp_u32(~u_input.e, global0.c.x, ~global0.a), !(!vec3<bool>(false, false, global0.b.x)), firstLeadingBit(~global0.c), global0.d, global0.e), func_4(global0.d.x, Struct_1(1u, global0.e, global0.c & vec4<u32>(u_input.a.x, 41805u, 1u, 64949u), _wgslsmith_f_op_vec3_f32(global0.d + global0.d), !vec3<bool>(global0.b.x, false, var_2.x)), Struct_1(_wgslsmith_dot_vec2_u32(global0.c.wz, vec2<u32>(0u, 0u)), vec3<bool>(true, var_2.x, true), vec4<u32>(1u, u_input.c, 1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.d.x, -1043f)), global0.e), vec2<u32>(4294967295u >> (global0.a % 32u), ~global1[_wgslsmith_index_u32(4294967295u, 10u)])), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global0.a, 43795u, 1u), global0.c), firstLeadingBit(global0.a))), _wgslsmith_sub_vec2_u32(~global0.c.wz, vec2<u32>(firstLeadingBit(global0.c.x), global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = func_1();
    let var_1 = func_1();
    let var_2 = var_0;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~4809i), reverseBits(var_0.c.x), 8130i, -398f);
}

