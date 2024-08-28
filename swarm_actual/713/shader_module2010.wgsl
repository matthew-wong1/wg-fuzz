struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 6>;

var<private> global2: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> vec2<f32> {
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f * 705f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(560f, 827f)) + _wgslsmith_f_op_f32(abs(104f)))))), all(!vec4<bool>(true, true, false, all(vec3<bool>(true, false, false))))));
    global1 = array<vec3<i32>, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-441f, -1259f, _wgslsmith_f_op_f32(round(-1000f))))));
    global1 = array<vec3<i32>, 6>();
    global0 = Struct_1(~60030u);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(157f - var_0.x), var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, var_0.x)))), var_0.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(global0.a, global0.a));
    var var_1 = Struct_1(~_wgslsmith_div_u32(var_0.a, ~(global0.a & var_0.a)));
    let var_2 = Struct_1(var_1.a);
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(firstLeadingBit(arg_0.a) | _wgslsmith_clamp_u32(global0.a << (~arg_0.a % 32u), 86383u, _wgslsmith_add_u32(0u, 92097u))), 6u)];
    var var_1 = func_3(~global1[_wgslsmith_index_u32(3649u & arg_0.a, 6u)], select(vec3<bool>(true, (59283u == u_input.a) && true, true), vec3<bool>(true, true, !all(vec2<bool>(false, true))), vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(418f + _wgslsmith_f_op_f32(max(2073f, 302f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -896f))), _wgslsmith_f_op_f32(1f + -1000f)));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~max(arg_0.a, _wgslsmith_mod_u32(4294967295u, 14034u)), max(21401u, ~arg_0.a), global0.a, 17563u), vec4<u32>(~(~_wgslsmith_add_u32(0u, var_1.a)), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(38728u, 9955u), 571u >> (arg_0.a % 32u)), ~(~34412u), ~3787u));
    let var_3 = 1i;
    var var_4 = _wgslsmith_clamp_vec2_i32(var_0.yy, var_0.xz & vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.yy & vec2<i32>(var_0.x, 0i), var_0.xz), 1i), _wgslsmith_add_vec2_i32(abs(vec2<i32>(19850i, -18505i)), select(max(reverseBits(vec2<i32>(-2147483647i, -1i)), var_0.zy), var_0.zy, true)));
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -75014i, 0i, 1i) << (_wgslsmith_div_vec4_u32(vec4<u32>(global0.a, 11285u, global0.a, u_input.a), vec4<u32>(0u, 1u, arg_1.a, 41926u)) % vec4<u32>(32u)), firstLeadingBit(-vec4<i32>(-6932i, -31460i, 2147483647i, 1i))), reverseBits(1i));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1693f, _wgslsmith_f_op_f32(1058f + arg_0)))))));
    var var_2 = func_4(func_4(func_4(Struct_1(33746u))));
    let var_3 = select(!vec3<bool>(true, false, !(!arg_3)), !(!select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(false, arg_3, false), true)), select(vec3<bool>(84583u < _wgslsmith_div_u32(var_2.a, 4294967295u), arg_3, arg_3), vec3<bool>(any(select(vec4<bool>(arg_3, arg_3, true, arg_3), vec4<bool>(false, arg_3, false, arg_3), true)), arg_3, (arg_3 & arg_3) == arg_3), !vec3<bool>(any(vec3<bool>(arg_3, true, arg_3)), arg_0 == -138f, arg_3)));
    var var_4 = Struct_1(~_wgslsmith_sub_u32(115995u, var_2.a << (abs(4294967295u) % 32u)));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(arg_0.a, abs(1u), arg_1.a)), vec3<u32>(~(arg_2.a | func_3(global1[_wgslsmith_index_u32(u_input.a, 6u)], vec3<bool>(false, true, true), vec2<f32>(-589f, -458f)).a), 1u, ~func_5(_wgslsmith_f_op_f32(526f + -107f), Struct_1(u_input.a), arg_2, false).a));
    let var_1 = func_3(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), ~global1[_wgslsmith_index_u32(func_3(vec3<i32>(-1i, 46413i, -32395i), vec3<bool>(true, true, false), vec2<f32>(782f, 704f)).a, 6u)]), vec3<i32>(-1i) * -(vec3<i32>(0i, -21815i, -11559i) | global1[_wgslsmith_index_u32(arg_2.a, 6u)])), vec3<bool>(true, select(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), true, true), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-365f, -155f), vec2<f32>(-797f, 1656f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, 2229f))))));
    global0 = var_1;
    var var_2 = false;
    var var_3 = arg_1;
    return arg_2;
}

fn func_1(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = true;
    var var_1 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1090f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f - -567f) * 372f)), func_4(func_3(vec3<i32>(12156i, 11347i, -7404i), !vec3<bool>(false, var_0, var_0), _wgslsmith_f_op_vec2_f32(func_2()))), Struct_1((global0.a >> (global0.a % 32u)) ^ 1u), !var_0), func_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(~60781u, 1u)), 6u)], select(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, true), true), select(!vec3<bool>(var_0, var_0, true), !vec3<bool>(true, var_0, var_0), true), !select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, false), false)), vec2<f32>(2518f, _wgslsmith_f_op_f32(select(-701f, -1000f, all(vec4<bool>(true, false, var_0, true)))))), Struct_1(4294967295u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1579f, 215f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1450f, -718f) + vec2<f32>(-555f, 785f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1971f, _wgslsmith_f_op_f32(f32(-1f) * -912f))), true)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(387f * -214f), _wgslsmith_f_op_f32(-213f + -890f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(497f, 278f) * -216f))));
    var var_3 = func_3(global1[_wgslsmith_index_u32(0u, 6u)], select(vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, var_0, false), !(!vec3<bool>(false, var_0, false)), vec3<bool>(true, var_0 & var_0, !var_0)), vec3<bool>(false, u_input.a >= select(arg_0.x, 27501u, false), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1235f)) * vec2<f32>(-138f, -1845f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(674f, var_2.x)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(749f, 1154f)))))));
    let var_4 = -711f;
    return vec2<i32>(firstTrailingBit(select(abs(~26330i), 18800i, firstTrailingBit(-31158i) > select(-7565i, -44217i, false))), -7167i);
}

fn func_7(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 - arg_0))), arg_0) >= arg_0);
    var var_1 = vec2<bool>(!select(true, true, select(all(vec3<bool>(true, true, false)), select(true, true, false), true)), false);
    let var_2 = func_5(arg_0, Struct_1(global0.a), func_5(-494f, func_4(func_6(func_4(Struct_1(79455u)), Struct_1(0u), func_6(Struct_1(50215u), Struct_1(u_input.a), Struct_1(global0.a)))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, 4294967295u, global0.a), vec4<u32>(u_input.a, global0.a, 24958u, 176931u))), func_4(func_6(Struct_1(u_input.a), Struct_1(global0.a), Struct_1(0u))), false), var_1.x != (_wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(739f - arg_0))), !select(false, var_1.x, ~(-2147483647i) < arg_1));
    var var_3 = var_2;
    var var_4 = func_4(Struct_1(~var_3.a));
    return Struct_1(~var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(648f, 2445f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1306f, 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f * 946f)))), -(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 23745i), func_1(vec2<u32>(3161u, u_input.a))) >> (1u % 32u)));
    let var_1 = true;
    global0 = func_3(~(global1[_wgslsmith_index_u32(~(~0u), 6u)] >> (abs(select(vec3<u32>(105478u, u_input.a, 34775u), vec3<u32>(global0.a, 2516u, var_0.a), vec3<bool>(false, false, false))) % vec3<u32>(32u))), !select(vec3<bool>(!var_1, var_1 || true, !var_1), vec3<bool>(var_1, var_1, var_1), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1547f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-361f, 849f))), _wgslsmith_f_op_f32(ceil(572f))));
    let var_2 = -max(countOneBits(-2147483647i), 0i);
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(global0.a >> (11315u % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 22284u, global0.a), ~vec3<u32>(1u, 66572u, 0u)), abs(vec3<u32>(global0.a, global0.a, 44055u)))), firstLeadingBit(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(4294967295u, 1u)), firstTrailingBit(reverseBits(vec2<u32>(43635u, 42890u))))));
    global1 = array<vec3<i32>, 6>();
    var_0 = Struct_1(_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(var_3, ~_wgslsmith_mod_u32(11261u, u_input.a))));
    let var_4 = all(vec4<bool>(~(~var_2) > 15193i, false, all(vec4<bool>(true, true, false | var_1, u_input.a >= var_3)), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_i32(0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -28318i), vec2<i32>(1i, 31707i)), min(_wgslsmith_div_i32(var_2, 8290i), var_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, -769f, 1396f, 2295f))), vec4<f32>(_wgslsmith_div_f32(756f, -1982f), -258f, _wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(281f - -1000f))))));
}

