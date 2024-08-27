struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<i32>(885i, 1i, 20306i), true, vec4<u32>(93386u, 1u, 0u, 18429u), 1u, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -286i, 1i), true, vec4<u32>(34477u, 0u, 0u, 4294967295u), 1u, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global2: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool) -> bool {
    let var_0 = global0.a.a.x;
    let var_1 = select(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0.a.c.yw, global1.a.c.wx & global0.a.c.xz), vec2<u32>(~4294967295u, u_input.b)), 4294967295u, 73143u, max(0u, _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(1u, global1.a.d), ~global0.a.d))), vec4<u32>(_wgslsmith_sub_u32(~select(u_input.b, 4294967295u, arg_2), _wgslsmith_div_u32(global1.a.c.x, ~u_input.b)), global1.a.c.x, firstTrailingBit(u_input.b), reverseBits(u_input.b >> (_wgslsmith_dot_vec3_u32(global1.a.c.yxx, vec3<u32>(1646u, global1.a.c.x, u_input.b)) % 32u))), true);
    var var_2 = Struct_4(Struct_3(Struct_1(-global1.a.a, true, ~(~global0.a.c), ~28729u ^ u_input.b, global1.b.x), !global1.b, select(!global0.c, global1.b, global0.c)), global1.a.d, ~vec3<u32>(u_input.b, ~_wgslsmith_add_u32(9697u, 111328u), ~select(0u, 22048u, true)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(24954u, global0.a.c.x), ~var_1.wy));
    global0 = Struct_3(global1.a, select(!global1.c, !global1.b, false), var_2.a.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, true))), arg_1, _wgslsmith_f_op_f32(-arg_1))));
    return -540f >= arg_1;
}

fn func_4(arg_0: vec2<bool>) -> f32 {
    var var_0 = any(!(!vec3<bool>(!arg_0.x, global1.a.a.x >= u_input.a, any(global1.c))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(-(~global0.a.a), global0.a.a), !global0.a.b, vec4<u32>(firstTrailingBit(global1.a.d), u_input.b, global1.a.c.x, _wgslsmith_dot_vec2_u32(global0.a.c.zz, global1.a.c.yw)), ~u_input.b, true), vec3<bool>(select(any(global1.b), true, all(arg_0)) | !any(vec2<bool>(arg_0.x, global0.c.x)), func_3(global1.c.x, _wgslsmith_f_op_f32(371f - -2207f), true), false), vec3<bool>(true, global0.b.x, min(0i, 0i) != ~reverseBits(global1.a.a.x)));
    let var_2 = var_1.a.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(451f, 642f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-252f, -533f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, -1179f))))) - vec2<f32>(_wgslsmith_f_op_f32(-1074f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1844f))), _wgslsmith_f_op_f32(sign(-744f))));
    var var_4 = !vec4<bool>(!(true || var_1.b.x), !global1.c.x, global1.c.x, global0.b.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_3.x, -699f))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    global1 = Struct_3(Struct_1(-global0.a.a, true, _wgslsmith_sub_vec4_u32(vec4<u32>(abs(global0.a.d), 50049u, 1u, select(31374u, 0u, true)), ~global1.a.c), ~_wgslsmith_dot_vec2_u32(global1.a.c.yy, global1.a.c.yz) << (56871u % 32u), global0.b.x), global0.c, global0.c);
    global1 = Struct_3(global0.a, global0.b, select(!global1.c, global0.c, any(vec2<bool>(!arg_0, all(global0.c.yy)))));
    var var_0 = !vec3<bool>(true, arg_0, arg_1.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f))))) <= _wgslsmith_f_op_f32(func_4(vec2<bool>(!func_3(arg_0, -460f, true), any(vec4<bool>(true, var_0.x, true, global1.a.b)))));
    let var_2 = Struct_2(reverseBits(~u_input.b) & 4294967295u, u_input.a);
    return global0.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> Struct_3 {
    let var_0 = global1.a;
    var var_1 = arg_0;
    global1 = Struct_3(func_2(false, global0.b.zz), vec3<bool>(556f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(646f, arg_3)) - _wgslsmith_f_op_f32(f32(-1f) * -351f)), arg_1.c.x, global1.b.x), vec3<bool>(var_1.a.c.x, select(!arg_2.a.c.x, global0.c.x, arg_0.a.a.b) & !var_1.a.a.e, _wgslsmith_f_op_f32(-arg_3) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1429f))))));
    let var_2 = Struct_3(Struct_1(abs(~vec3<i32>(global0.a.a.x, -36440i, 2147483647i)), (var_1.a.c.x & (arg_0.a.a.c.x < arg_0.a.a.d)) == ((var_1.a.a.e & false) && arg_1.c.x), vec4<u32>(min(2765u, 28338u), abs(~11867u), global0.a.d, ~1u), global1.a.c.x ^ (reverseBits(47118u) << (global1.a.d % 32u)), true), arg_1.c, vec3<bool>(arg_2.a.a.e, arg_1.a.e, var_0.b));
    let var_3 = vec4<bool>(arg_0.a.c.x, any(global1.c), all(var_2.b.xy), false);
    return arg_0.a;
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec4<f32> {
    global1 = arg_3;
    global1 = arg_3;
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-1086f, 987f), 612f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(412f, -545f)))))))));
    global2 = global0.a.a.x != -global1.a.a.x;
    global1 = Struct_3(global1.a, select(select(func_5(Struct_4(arg_3, u_input.b, vec3<u32>(78475u, global1.a.c.x, arg_3.a.c.x), global0.a.c.yz), arg_3, Struct_4(Struct_3(Struct_1(vec3<i32>(3555i, arg_1, -2147483647i), true, arg_3.a.c, 4294967295u, false), vec3<bool>(true, arg_3.a.e, false), vec3<bool>(global1.a.e, false, global1.c.x)), 4294967295u, vec3<u32>(global1.a.d, 0u, 0u), arg_2), _wgslsmith_f_op_f32(f32(-1f) * -762f)).b, !(!vec3<bool>(false, false, global0.b.x)), !vec3<bool>(true, global1.c.x, global1.b.x)), global0.c, !vec3<bool>(true, global0.c.x, global1.a.e)), vec3<bool>(true, true, true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), 157f, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1174f), -307f, true))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * 408f))), var_0.x, var_0.x, 785f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1070f, _wgslsmith_f_op_f32(step(209f, var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x), 114f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-1364f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0, -318f)))));
    var var_1 = false;
    var var_2 = arg_1.a.a;
    global2 = var_2.e;
    var var_3 = arg_2.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(Struct_2((0u | var_3.c.x) | arg_2.a.c.x, var_3.a.x), ~global0.a.a.x, ~(~(~vec2<u32>(global1.a.c.x, var_2.d))), func_5(Struct_4(arg_1.a, ~2343u, reverseBits(vec3<u32>(4294967295u, global1.a.d, 4294967295u)), vec2<u32>(arg_2.a.d, 16996u)), Struct_3(func_2(false, vec2<bool>(global1.b.x, var_2.b)), !global0.c, arg_2.c), Struct_4(Struct_3(Struct_1(global0.a.a, true, vec4<u32>(4294967295u, var_2.d, global0.a.c.x, 65152u), global1.a.c.x, var_3.e), vec3<bool>(false, true, var_3.e), vec3<bool>(global1.b.x, false, false)), var_2.d, max(global0.a.c.yzy, arg_1.c), vec2<u32>(global0.a.d, var_2.d) & global1.a.c.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-272f)) - arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, arg_0, arg_0) * vec4<f32>(arg_0, var_0, -1677f, -560f)) + vec4<f32>(arg_0, 1174f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1357f, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1096f, 806f, arg_0, var_0))))))));
}

fn func_7(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    global2 = !(!func_5(Struct_4(Struct_3(Struct_1(global1.a.a, true, global1.a.c, 0u, false), global0.c, vec3<bool>(global1.a.b, global1.a.b, true)), u_input.b, global1.a.c.yzx, global1.a.c.ww), Struct_3(Struct_1(global1.a.a, global1.b.x, vec4<u32>(3231u, 44213u, global0.a.c.x, 8941u), global1.a.c.x, global0.b.x), global1.c, vec3<bool>(false, false, true)), Struct_4(func_5(Struct_4(Struct_3(Struct_1(global1.a.a, global0.a.e, vec4<u32>(7519u, global1.a.d, global0.a.d, global0.a.c.x), 85679u, true), global0.b, global1.b), global1.a.c.x, global0.a.c.wyz, vec2<u32>(u_input.b, 4294967295u)), Struct_3(Struct_1(global1.a.a, global1.b.x, global1.a.c, 564u, global1.a.b), vec3<bool>(global1.b.x, global0.c.x, global1.c.x), global0.b), Struct_4(Struct_3(Struct_1(global1.a.a, false, global0.a.c, 81311u, true), vec3<bool>(false, global0.a.e, true), global1.c), u_input.b, vec3<u32>(72286u, global0.a.d, u_input.b), vec2<u32>(global0.a.d, 26500u)), 1570f), 87277u, global1.a.c.xyx, max(global1.a.c.xz, vec2<u32>(0u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))).c.x);
    var var_0 = Struct_1(global1.a.a, any(vec2<bool>(true | (0u != global0.a.d), true)), global1.a.c & ~(~global0.a.c), abs(~4294967295u), global1.b.x);
    var var_1 = _wgslsmith_sub_u32(1u, firstTrailingBit(1u)) & ~u_input.b;
    global0 = func_5(Struct_4(Struct_3(global1.a, global0.c, func_5(Struct_4(Struct_3(global1.a, vec3<bool>(false, false, false), vec3<bool>(global0.b.x, true, var_0.b)), 28690u, global1.a.c.xwz, vec2<u32>(4294967295u, 78512u)), func_5(Struct_4(Struct_3(global1.a, global0.c, global0.b), u_input.b, global0.a.c.zxy, var_0.c.yw), Struct_3(global1.a, vec3<bool>(true, false, false), vec3<bool>(true, var_0.b, var_0.e)), Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.a, var_0.a.x, u_input.a), var_0.b, global1.a.c, 33229u, false), vec3<bool>(var_0.b, global1.b.x, var_0.b), global0.b), global1.a.d, global1.a.c.wyw, global1.a.c.wy), -409f), Struct_4(Struct_3(Struct_1(global1.a.a, false, vec4<u32>(global1.a.c.x, global0.a.c.x, var_0.d, u_input.b), global1.a.d, var_0.e), vec3<bool>(false, true, true), vec3<bool>(true, global0.a.b, global1.c.x)), global1.a.c.x, global1.a.c.yxx, var_0.c.yx), _wgslsmith_f_op_f32(-arg_0.x)).c), select(global1.a.c.x, global1.a.d, true), abs(vec3<u32>(global0.a.c.x, global0.a.c.x, 47148u) | _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.d, 36797u, u_input.b), vec3<u32>(global1.a.c.x, global0.a.d, global0.a.d))), vec2<u32>(u_input.b & (var_0.d & 0u), _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(62033u, global0.a.c.x)))), Struct_3(func_5(Struct_4(func_5(Struct_4(Struct_3(Struct_1(var_0.a, true, vec4<u32>(0u, 66958u, var_0.c.x, 5004u), global0.a.c.x, false), vec3<bool>(global1.c.x, var_0.e, var_0.b), global0.c), 1906u, vec3<u32>(u_input.b, var_0.c.x, 1u), vec2<u32>(global0.a.c.x, global0.a.c.x)), Struct_3(Struct_1(global1.a.a, var_0.e, vec4<u32>(85914u, global1.a.d, var_0.d, global1.a.d), 4294967295u, false), vec3<bool>(true, false, false), global1.c), Struct_4(Struct_3(Struct_1(vec3<i32>(13648i, 23323i, var_0.a.x), false, global0.a.c, global0.a.c.x, global1.b.x), vec3<bool>(var_0.b, false, false), vec3<bool>(true, true, true)), global1.a.c.x, var_0.c.wzx, global1.a.c.yx), 773f), ~global0.a.d, var_0.c.yxz, ~global0.a.c.wy), func_5(Struct_4(Struct_3(global0.a, vec3<bool>(false, global1.c.x, var_0.b), global1.c), 1u, vec3<u32>(4294967295u, var_0.c.x, u_input.b), global1.a.c.yz), Struct_3(global0.a, global0.c, vec3<bool>(true, global0.a.b, var_0.b)), Struct_4(Struct_3(Struct_1(global0.a.a, true, var_0.c, 1u, false), global0.b, global1.c), var_0.c.x, global0.a.c.yzz, vec2<u32>(global0.a.c.x, u_input.b)), _wgslsmith_f_op_f32(abs(arg_1))), Struct_4(Struct_3(Struct_1(var_0.a, false, global1.a.c, 1u, global0.c.x), global0.c, vec3<bool>(global1.b.x, true, var_0.e)), _wgslsmith_mult_u32(12779u, u_input.b), _wgslsmith_add_vec3_u32(var_0.c.zyx, vec3<u32>(4294967295u, 14010u, 4294967295u)), ~vec2<u32>(4525u, u_input.b)), arg_0.x).a, vec3<bool>(false, all(select(global0.b.yx, global1.c.zx, var_0.e)), true), !vec3<bool>(all(vec2<bool>(global1.b.x, global0.b.x)), false, true)), Struct_4(Struct_3(func_5(Struct_4(Struct_3(global0.a, vec3<bool>(var_0.e, false, true), vec3<bool>(global1.b.x, true, true)), global0.a.c.x, vec3<u32>(1u, 53003u, 1u), var_0.c.wz), func_5(Struct_4(Struct_3(global0.a, vec3<bool>(global1.a.e, global1.a.e, false), global0.c), u_input.b, vec3<u32>(global0.a.c.x, 4294967295u, var_0.d), vec2<u32>(var_0.d, u_input.b)), Struct_3(global1.a, global0.c, global1.b), Struct_4(Struct_3(Struct_1(vec3<i32>(0i, 59071i, 26868i), false, vec4<u32>(global0.a.c.x, 1u, 41415u, 1u), 0u, global1.b.x), vec3<bool>(global0.a.e, false, var_0.e), vec3<bool>(true, global0.b.x, global0.b.x)), global1.a.c.x, vec3<u32>(22353u, 4294967295u, 103240u), vec2<u32>(1u, 1u)), 201f), Struct_4(Struct_3(global0.a, vec3<bool>(var_0.b, global1.b.x, true), vec3<bool>(global1.a.e, global0.b.x, var_0.e)), 0u, vec3<u32>(global1.a.d, 85797u, 0u), global0.a.c.zx), -1444f).a, !global1.b, global1.c), ~var_0.c.x, global0.a.c.zxy, ~global1.a.c.xx), 410f);
    global0 = func_5(Struct_4(Struct_3(global1.a, vec3<bool>(true, false || global1.a.e, func_2(var_0.b, global1.c.zx).e), select(global0.b, select(global1.b, vec3<bool>(var_0.b, global0.c.x, true), vec3<bool>(var_0.e, true, false)), func_5(Struct_4(Struct_3(global1.a, global1.c, global1.c), 0u, vec3<u32>(0u, global1.a.c.x, 4294967295u), var_0.c.xx), Struct_3(Struct_1(vec3<i32>(-49221i, var_0.a.x, u_input.a), global1.c.x, vec4<u32>(u_input.b, 1u, global1.a.c.x, 4294967295u), global0.a.d, var_0.e), vec3<bool>(true, true, true), vec3<bool>(true, true, global1.b.x)), Struct_4(Struct_3(global1.a, global0.c, global1.b), 78723u, global0.a.c.xxy, var_0.c.yz), 500f).c)), ~0u, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, ~global1.a.c.x, ~4294967295u), ~_wgslsmith_mod_vec3_u32(global0.a.c.xxw, vec3<u32>(global0.a.d, 75132u, 7505u))), vec2<u32>(20961u, 4294967295u)), Struct_3(func_5(Struct_4(func_5(Struct_4(Struct_3(Struct_1(global1.a.a, var_0.b, vec4<u32>(u_input.b, 82421u, 4294967295u, global0.a.d), u_input.b, true), global1.b, global1.b), global0.a.c.x, vec3<u32>(4294967295u, 1u, u_input.b), var_0.c.yy), Struct_3(Struct_1(var_0.a, false, var_0.c, 54452u, var_0.e), vec3<bool>(true, true, global0.b.x), vec3<bool>(false, false, true)), Struct_4(Struct_3(global0.a, global0.b, global1.c), 52115u, global1.a.c.zwy, vec2<u32>(global0.a.d, 51623u)), arg_0.x), global1.a.d << (1u % 32u), global0.a.c.wyx, func_5(Struct_4(Struct_3(global0.a, vec3<bool>(true, var_0.e, global0.b.x), global1.c), 59916u, global1.a.c.zzw, global0.a.c.yz), Struct_3(global1.a, global0.b, global0.b), Struct_4(Struct_3(global0.a, global0.b, global0.c), 4294967295u, global1.a.c.xxy, vec2<u32>(19560u, 75408u)), 981f).a.c.zx), func_5(Struct_4(Struct_3(global0.a, global0.b, vec3<bool>(false, false, global1.a.e)), 4909u, global0.a.c.xwx, vec2<u32>(26581u, global0.a.c.x)), func_5(Struct_4(Struct_3(global0.a, vec3<bool>(true, true, true), global0.c), global0.a.d, vec3<u32>(global0.a.c.x, 0u, 1u), global0.a.c.yz), Struct_3(global0.a, global0.b, vec3<bool>(global0.a.e, false, true)), Struct_4(Struct_3(Struct_1(global0.a.a, var_0.e, var_0.c, global0.a.d, var_0.b), vec3<bool>(var_0.e, false, global0.a.e), vec3<bool>(true, global1.a.e, var_0.b)), 24747u, var_0.c.wwz, vec2<u32>(4294967295u, global0.a.d)), arg_1), Struct_4(Struct_3(Struct_1(global1.a.a, false, vec4<u32>(10588u, u_input.b, 1u, global0.a.c.x), 48410u, global0.a.b), vec3<bool>(global0.b.x, global0.c.x, true), vec3<bool>(true, true, true)), 0u, var_0.c.xzz, vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_f32(911f + arg_0.x)), Struct_4(func_5(Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.a, -11211i, global0.a.a.x), var_0.b, global0.a.c, global1.a.d, global1.b.x), vec3<bool>(false, global1.c.x, false), vec3<bool>(true, true, global0.a.e)), var_0.d, var_0.c.xzx, global1.a.c.zw), Struct_3(global0.a, vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, var_0.b, true)), Struct_4(Struct_3(global0.a, global1.b, global0.b), 0u, var_0.c.zzy, global1.a.c.yw), arg_0.x), _wgslsmith_mod_u32(0u, global1.a.d), global0.a.c.yww << (global0.a.c.zzy % vec3<u32>(32u)), ~vec2<u32>(4294967295u, u_input.b)), -686f).a, global0.c, vec3<bool>(true, !global1.b.x, !global0.c.x)), Struct_4(func_5(Struct_4(func_5(Struct_4(Struct_3(global1.a, vec3<bool>(true, var_0.e, global0.b.x), global0.c), global0.a.d, var_0.c.zwz, var_0.c.wx), Struct_3(Struct_1(global1.a.a, global1.c.x, vec4<u32>(u_input.b, 4294967295u, 4294967295u, global1.a.c.x), var_0.d, false), global0.b, global0.c), Struct_4(Struct_3(Struct_1(vec3<i32>(global1.a.a.x, var_0.a.x, global0.a.a.x), false, vec4<u32>(global0.a.c.x, 0u, u_input.b, 3657u), global0.a.c.x, true), global0.b, global0.b), 4294967295u, vec3<u32>(global0.a.d, 2784u, 80268u), var_0.c.zy), arg_0.x), 84877u, countOneBits(vec3<u32>(u_input.b, 64825u, var_0.c.x)), vec2<u32>(1u, u_input.b)), func_5(Struct_4(Struct_3(Struct_1(vec3<i32>(global1.a.a.x, u_input.a, u_input.a), var_0.e, vec4<u32>(u_input.b, 0u, 32493u, 63834u), global1.a.c.x, true), vec3<bool>(false, global0.b.x, true), global1.b), 15756u, global0.a.c.yzw, vec2<u32>(u_input.b, global0.a.c.x)), Struct_3(Struct_1(global1.a.a, var_0.e, vec4<u32>(u_input.b, var_0.c.x, 35157u, global0.a.d), 1u, global1.b.x), vec3<bool>(global1.c.x, global0.a.e, global0.b.x), vec3<bool>(global0.a.b, true, global1.a.b)), Struct_4(Struct_3(Struct_1(global1.a.a, true, global0.a.c, global1.a.d, global0.a.e), global1.c, vec3<bool>(true, global1.b.x, global1.b.x)), 4294967295u, var_0.c.xwx, global0.a.c.zx), arg_0.x), Struct_4(Struct_3(global1.a, global1.c, vec3<bool>(global0.c.x, false, global1.a.b)), _wgslsmith_sub_u32(34240u, global1.a.c.x), var_0.c.wxw, var_0.c.zy >> (var_0.c.wx % vec2<u32>(32u))), arg_0.x), firstLeadingBit(~_wgslsmith_add_u32(23501u, 17793u)), vec3<u32>(0u, var_0.c.x, abs(~global0.a.d)), ~min(abs(var_0.c.wy), _wgslsmith_div_vec2_u32(var_0.c.yy, var_0.c.zw))), -512f);
    return Struct_3(func_2(any(select(select(vec4<bool>(var_0.b, global0.a.b, global1.a.e, global1.c.x), vec4<bool>(true, global0.a.e, true, global1.a.b), global0.c.x), vec4<bool>(true, false, true, true), select(vec4<bool>(global0.a.b, false, var_0.e, global1.b.x), vec4<bool>(true, global1.b.x, var_0.b, true), vec4<bool>(false, var_0.b, global1.a.e, var_0.e)))), vec2<bool>(all(global1.b) & var_0.e, true)), func_5(Struct_4(func_5(Struct_4(Struct_3(global0.a, vec3<bool>(var_0.b, false, false), vec3<bool>(true, var_0.e, true)), global0.a.c.x, global0.a.c.xyz, vec2<u32>(global0.a.c.x, global1.a.c.x)), func_5(Struct_4(Struct_3(Struct_1(vec3<i32>(-32604i, var_0.a.x, u_input.a), var_0.b, vec4<u32>(var_0.c.x, 14563u, global0.a.c.x, u_input.b), 22097u, false), global0.b, global0.c), global1.a.c.x, vec3<u32>(global0.a.d, u_input.b, u_input.b), vec2<u32>(80095u, 0u)), Struct_3(Struct_1(var_0.a, true, vec4<u32>(1u, 24309u, 0u, u_input.b), var_0.d, global1.b.x), global0.c, vec3<bool>(false, false, false)), Struct_4(Struct_3(global0.a, vec3<bool>(true, var_0.e, global0.c.x), global0.c), global1.a.c.x, vec3<u32>(var_0.c.x, u_input.b, 29258u), global1.a.c.zw), 368f), Struct_4(Struct_3(Struct_1(var_0.a, false, global1.a.c, 4294967295u, global0.a.b), vec3<bool>(true, global0.b.x, global1.a.b), global0.c), u_input.b, vec3<u32>(global1.a.c.x, global1.a.d, 39663u), var_0.c.yw), _wgslsmith_f_op_f32(floor(arg_1))), ~1u, _wgslsmith_mod_vec3_u32(vec3<u32>(global0.a.d, 11751u, 21926u), reverseBits(vec3<u32>(26597u, global0.a.c.x, 61782u))), vec2<u32>(reverseBits(69238u), 1u)), func_5(Struct_4(func_5(Struct_4(Struct_3(Struct_1(vec3<i32>(-1i, global1.a.a.x, global0.a.a.x), var_0.b, var_0.c, var_0.c.x, global1.b.x), global1.c, vec3<bool>(var_0.e, global1.b.x, var_0.e)), 1u, global1.a.c.xxz, vec2<u32>(global1.a.d, var_0.c.x)), Struct_3(Struct_1(var_0.a, false, vec4<u32>(16330u, global1.a.d, u_input.b, 4294967295u), u_input.b, false), global0.c, global0.c), Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.a, global0.a.a.x, 2147483647i), global0.b.x, global1.a.c, 2781u, true), global0.c, vec3<bool>(global1.c.x, true, false)), 2064u, var_0.c.yyz, global0.a.c.ww), 1343f), var_0.d, var_0.c.zxw | var_0.c.zxw, ~var_0.c.yw), Struct_3(Struct_1(global0.a.a, global0.a.b, vec4<u32>(global1.a.c.x, 82758u, 32962u, u_input.b), 49982u, true), vec3<bool>(global1.c.x, false, true), global0.b), Struct_4(func_5(Struct_4(Struct_3(global0.a, vec3<bool>(global0.b.x, false, global0.b.x), global0.c), global1.a.d, vec3<u32>(33651u, global1.a.d, 1u), vec2<u32>(global1.a.d, global0.a.c.x)), Struct_3(global0.a, vec3<bool>(true, global0.c.x, true), vec3<bool>(global1.c.x, var_0.e, true)), Struct_4(Struct_3(global1.a, global0.b, vec3<bool>(false, false, true)), 1u, vec3<u32>(global0.a.c.x, u_input.b, 19726u), vec2<u32>(u_input.b, var_0.d)), arg_0.x), u_input.b, var_0.c.xyy, global0.a.c.yy), 1259f), Struct_4(func_5(Struct_4(Struct_3(global0.a, vec3<bool>(global1.c.x, true, global1.a.b), vec3<bool>(false, false, global1.a.b)), 1u, global0.a.c.yyx, vec2<u32>(u_input.b, var_0.d)), func_5(Struct_4(Struct_3(Struct_1(global1.a.a, global1.c.x, vec4<u32>(41599u, u_input.b, u_input.b, global1.a.c.x), u_input.b, global0.a.b), global1.c, global0.b), global1.a.c.x, vec3<u32>(global1.a.d, global0.a.d, 0u), vec2<u32>(var_0.c.x, 39233u)), Struct_3(Struct_1(global1.a.a, true, var_0.c, 0u, var_0.e), vec3<bool>(global1.c.x, false, false), vec3<bool>(var_0.b, false, true)), Struct_4(Struct_3(global0.a, vec3<bool>(global1.c.x, global0.c.x, true), vec3<bool>(global0.c.x, false, true)), var_0.c.x, global0.a.c.wyy, global1.a.c.xz), 415f), Struct_4(Struct_3(Struct_1(global1.a.a, false, vec4<u32>(0u, global0.a.c.x, u_input.b, var_0.d), 36355u, var_0.e), global0.c, global0.b), global1.a.c.x, vec3<u32>(4294967295u, 10196u, 29673u), vec2<u32>(0u, 15061u)), -1471f), abs(_wgslsmith_sub_u32(global1.a.c.x, 6704u)), vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(global1.a.c, vec4<u32>(1u, global1.a.c.x, 138817u, u_input.b)), select(global1.a.d, 5443u, var_0.b)), _wgslsmith_mult_vec2_u32(var_0.c.yz >> (global1.a.c.zz % vec2<u32>(32u)), vec2<u32>(u_input.b, 45753u))), arg_0.x).c, vec3<bool>(true, 1020f == arg_1, !(true || all(global1.b.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = any(global1.c);
    let var_0 = func_7(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(247f, Struct_4(Struct_3(global0.a, vec3<bool>(global0.b.x, global0.a.b, global1.a.b), vec3<bool>(true, global0.a.b, false)), 0u, global0.a.c.yzy, global0.a.c.zx), Struct_3(Struct_1(global1.a.a, true, vec4<u32>(global0.a.c.x, u_input.b, global0.a.c.x, global1.a.d), global0.a.c.x, global0.b.x), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))), vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(1497f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1310f, 711f)), _wgslsmith_f_op_f32(f32(-1f) * -1205f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-424f, -1402f)))))), _wgslsmith_f_op_vec4_f32(func_1(-290f, Struct_4(func_5(Struct_4(Struct_3(global1.a, global1.b, vec3<bool>(global1.c.x, true, global1.a.b)), u_input.b, vec3<u32>(u_input.b, u_input.b, 0u), vec2<u32>(1u, global1.a.c.x)), func_5(Struct_4(Struct_3(Struct_1(global0.a.a, global0.b.x, global1.a.c, 1u, false), global1.b, global1.b), 1u, global0.a.c.wxy, global0.a.c.zz), Struct_3(Struct_1(global1.a.a, global0.a.e, global1.a.c, 6602u, false), global1.b, vec3<bool>(false, global1.a.b, false)), Struct_4(Struct_3(global0.a, global0.b, global1.c), 9800u, vec3<u32>(u_input.b, 73391u, global0.a.c.x), global0.a.c.wz), 393f), Struct_4(Struct_3(global1.a, global0.b, vec3<bool>(false, false, false)), global1.a.c.x, global0.a.c.zwy, global1.a.c.wx), -856f), ~_wgslsmith_clamp_u32(global1.a.d, 13440u, 2537u), min(global1.a.c.xwz, select(global0.a.c.wxy, vec3<u32>(global0.a.d, u_input.b, 15600u), global1.b)), global1.a.c.xz), Struct_3(func_2(!global1.b.x, func_5(Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.a, -2147483647i, u_input.a), false, global1.a.c, 3608u, true), global0.b, global1.c), global1.a.d, vec3<u32>(u_input.b, 54846u, global1.a.d), global1.a.c.zw), Struct_3(Struct_1(vec3<i32>(global0.a.a.x, u_input.a, 2147483647i), false, global1.a.c, 54973u, global0.c.x), vec3<bool>(false, global1.c.x, true), vec3<bool>(global0.a.e, false, global0.c.x)), Struct_4(Struct_3(global1.a, global0.c, global0.b), 1u, global1.a.c.xzw, vec2<u32>(global0.a.d, global0.a.d)), -215f).b.yx), global0.b, !vec3<bool>(global0.c.x, false, false)))).x);
    global0 = func_5(Struct_4(Struct_3(var_0.a, var_0.c, func_5(Struct_4(Struct_3(Struct_1(vec3<i32>(global0.a.a.x, 0i, u_input.a), global1.b.x, vec4<u32>(global1.a.c.x, global0.a.c.x, global1.a.d, var_0.a.c.x), global0.a.c.x, true), var_0.c, global0.b), global1.a.c.x, global0.a.c.wxw, global1.a.c.yw), Struct_3(Struct_1(var_0.a.a, global0.c.x, vec4<u32>(4294967295u, 4294967295u, var_0.a.c.x, 28974u), 56784u, global0.c.x), vec3<bool>(false, true, false), vec3<bool>(global0.a.e, true, true)), Struct_4(var_0, global1.a.d, global1.a.c.yxz, vec2<u32>(1748u, global1.a.c.x)), _wgslsmith_div_f32(304f, -1425f)).b), ~(~22837u), global0.a.c.wyw, var_0.a.c.yx), var_0, Struct_4(Struct_3(func_5(Struct_4(var_0, 76442u, vec3<u32>(u_input.b, 10930u, global0.a.d), global0.a.c.xx), var_0, Struct_4(Struct_3(Struct_1(global0.a.a, var_0.a.b, global1.a.c, var_0.a.c.x, false), vec3<bool>(global0.b.x, false, true), var_0.b), var_0.a.c.x, var_0.a.c.zxx, global0.a.c.wz), _wgslsmith_f_op_f32(step(-234f, 137f))).a, vec3<bool>(!global0.a.b, global1.a.b, true), func_5(Struct_4(var_0, 19726u, global0.a.c.xxw, vec2<u32>(0u, var_0.a.c.x)), func_7(vec4<f32>(2340f, -1000f, 403f, 481f), -431f), Struct_4(var_0, 4294967295u, vec3<u32>(35766u, 4294967295u, 4294967295u), global1.a.c.xz), _wgslsmith_f_op_f32(func_4(vec2<bool>(global1.a.b, false)))).c), global0.a.d, ~(~vec3<u32>(u_input.b, 0u, global1.a.d)), var_0.a.c.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-332f, -937f, false))) - _wgslsmith_f_op_f32(-1028f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1479f) * _wgslsmith_f_op_f32(449f - -492f)))));
    global0 = Struct_3(global0.a, !global1.c, var_0.c);
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(312f)) - -236f), _wgslsmith_f_op_f32(-270f - _wgslsmith_f_op_f32(f32(-1f) * -1808f))), 243f, _wgslsmith_f_op_f32(func_4(!func_7(vec4<f32>(-2786f, 685f, -1168f, -299f), 923f).b.xy))));
}

