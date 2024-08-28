struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(6898u, 40885u, 0u, 29611u, 1u, 1u, 8134u, 17364u, 62886u, 1u, 633u, 33328u, 57831u, 69020u, 0u, 14797u, 20330u, 55466u, 4294967295u, 35036u, 4779u, 24026u, 18892u, 14638u, 40821u, 0u, 4294967295u, 0u, 1u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(982f, -1117f, -453f))));
    var var_1 = global0[_wgslsmith_index_u32(46898u, 29u)];
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, -133f, -1583f), vec3<f32>(var_0.a.x, var_0.a.x, 453f)))), _wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, false)))));
    var var_2 = arg_0;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a));
    return true;
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    let var_0 = func_3(Struct_1(~0i, _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, 0i, -4093i, u_input.a), ~(~vec4<i32>(26981i, u_input.a, u_input.a, u_input.a))), -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 20927i), vec3<i32>(-1i, 4822i, 42337i)), vec3<i32>(u_input.a, -7620i, -2147483647i))));
    return vec4<bool>(var_0, all(select(!vec3<bool>(var_0, false, var_0), !vec3<bool>(var_0, var_0, var_0), vec3<bool>(!var_0, any(vec3<bool>(var_0, true, false)), true))), any(!(!(!vec2<bool>(var_0, var_0)))), true);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -434f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(round(-766f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) * _wgslsmith_f_op_f32(1556f + -296f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-578f)) * _wgslsmith_div_f32(-1002f, -628f)))));
    var var_1 = -162f;
    let var_2 = reverseBits(select(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 19304u, global0[_wgslsmith_index_u32(4294967295u, 29u)])), vec4<u32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 36826u, 12554u) | vec4<u32>(14476u, 51915u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)]), func_2(vec4<u32>(48656u, 1u, 4294967295u, 1u))) & ~countOneBits(vec4<u32>(4294967295u, 55553u, 1u, 5463u))) & select(~vec4<u32>(global0[_wgslsmith_index_u32(~0u, 29u)], global0[_wgslsmith_index_u32(26921u, 29u)] & 28956u, 0u, global0[_wgslsmith_index_u32(4294967295u & global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]), abs(vec4<u32>(1u << (1u % 32u), 60068u, global0[_wgslsmith_index_u32(0u & global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), any(func_2(~vec4<u32>(30137u, global0[_wgslsmith_index_u32(10339u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 1u))));
    global0 = array<u32, 29>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1150f - _wgslsmith_f_op_f32(step(759f, -924f))) - _wgslsmith_f_op_f32(-410f - -412f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-125f, -1056f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f * 940f)))), -318f);
    return Struct_1(_wgslsmith_clamp_i32(select(_wgslsmith_add_i32(0i, u_input.a) | u_input.a, -1i, any(func_2(vec4<u32>(var_2.x, 4294967295u, global0[_wgslsmith_index_u32(var_2.x, 29u)], 1u)).yyy)), arg_0.x, arg_0.x), arg_0, vec3<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -17112i), vec2<i32>(2895i, u_input.a)), arg_0.x) << (_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 29u)], 29u)], 0u, 41945u), var_2.zxw & var_2.wxw), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(51155u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 1u)), countOneBits(var_2.wzx))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<bool> {
    global0 = array<u32, 29>();
    var var_0 = select(select(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 28819i, -31272i, arg_0.a)) > 1i, !all(vec3<bool>(true, true, true)), true || any(vec2<bool>(false, true))), func_2(select(firstTrailingBit(vec4<u32>(4294967295u, arg_2, 12428u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, arg_2, 4294967295u, 4294967295u), vec4<u32>(98785u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(103667u, 29u)], 29u)], 49565u, arg_2)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true))).yxw, vec3<bool>(true, true, (0u != arg_2) || false)), vec3<bool>(true, !(any(vec3<bool>(true, true, true)) & true), true), select(vec3<bool>(arg_0.b.x <= _wgslsmith_sub_i32(arg_0.b.x, 5426i), true, arg_2 <= (1u >> (1u % 32u))), !vec3<bool>(func_2(vec4<u32>(arg_2, global0[_wgslsmith_index_u32(0u, 29u)], 1u, arg_2)).x, false, any(vec4<bool>(false, false, true, true))), true));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, arg_1, arg_1)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -857f, arg_1))) * vec3<f32>(arg_1, _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_1)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, 128f, 1104f))) - var_1.a)));
    global0 = array<u32, 29>();
    return vec3<bool>(var_0.x, func_3(arg_0), _wgslsmith_f_op_f32(sign(arg_1)) > var_1.a.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(638f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1))))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(1i, select(countOneBits(-7894i), -u_input.a, select(!arg_0.x, func_4(Struct_1(u_input.a, vec4<i32>(0i, u_input.a, -32026i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)), arg_1, 14315u).x, any(vec4<bool>(arg_0.x, false, false, false))))), vec4<i32>(_wgslsmith_dot_vec4_i32(-max(vec4<i32>(2147483647i, -34658i, 43812i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(20302i, -37801i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) & countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 8178i))), u_input.a, -18138i, ~u_input.a), firstTrailingBit(select(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, 51841i, u_input.a), -vec3<i32>(u_input.a, 24587i, u_input.a)), func_1(vec4<i32>(53711i, 18146i, 15411i, u_input.a)).b.wxy, vec3<bool>(true, true, !arg_0.x))));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(-742f * -978f))), arg_1));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -47499i;
    let var_1 = 261f;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-859f, _wgslsmith_f_op_f32(arg_0.a.x * var_1), false)))), _wgslsmith_f_op_f32(abs(1017f)), 1551f));
    var var_4 = arg_0;
    return Struct_1(-u_input.a, arg_1.b, vec3<i32>(u_input.a, -1i, -u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, max((vec4<i32>(u_input.a, u_input.a, u_input.a, 1i) << (min(vec4<u32>(global0[_wgslsmith_index_u32(1425u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69348u, 29u)], 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36654u, 29u)], 29u)], 46505u), vec4<u32>(31790u, 1u, 0u, global0[_wgslsmith_index_u32(41384u, 29u)])) % vec4<u32>(32u))) | -countOneBits(vec4<i32>(12462i, 0i, u_input.a, u_input.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_i32(2147483647i, u_input.a), ~29512i, -7142i) << (vec4<u32>(~global0[_wgslsmith_index_u32(1u, 29u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41782u, 29u)], 29u)], 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2568u, 29u)], 29u)], 29u)]), 29u)], 23940u) % vec4<u32>(32u))), min(vec3<i32>(_wgslsmith_div_i32(countOneBits(u_input.a), 1i), u_input.a, -2147483647i >> (abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18836u, 29u)], 29u)]) % 32u)), _wgslsmith_mult_vec3_i32(max(-vec3<i32>(0i, 53623i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(~u_input.a, -u_input.a, u_input.a))));
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    var var_1 = func_6(func_5(func_4(func_1(_wgslsmith_clamp_vec4_i32(var_0.b, var_0.b, var_0.b)), 172f, abs(1u)), -1445f), func_1(var_0.b), _wgslsmith_mult_vec4_i32(var_0.b, abs(_wgslsmith_add_vec4_i32(var_0.b, var_0.b))), Struct_1(1i, -(vec4<i32>(var_0.c.x, var_0.b.x, -22082i, 1i) >> (firstTrailingBit(vec4<u32>(4294967295u, 1u, 0u, 0u)) % vec4<u32>(32u))), vec3<i32>(-11231i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i) ^ var_0.b.zy, _wgslsmith_clamp_vec2_i32(var_0.b.xy, var_0.b.wz, vec2<i32>(-1i, var_0.c.x))), 41108i)));
    var var_2 = func_6(func_5(vec3<bool>(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1812f))))))), var_0, ~var_1.b, func_1(var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<u32>(26730u, 5908u, 70289u) >> (vec3<u32>(36425u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5493u, 29u)], 29u)], 29u)], 29u)]) % vec3<u32>(32u))) >> (abs(min(vec3<u32>(47779u, global0[_wgslsmith_index_u32(91569u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10065u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)]), vec3<u32>(41830u, global0[_wgslsmith_index_u32(34077u, 29u)], 35353u))) % vec3<u32>(32u))), -1000f, _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(1u, 29u)], firstTrailingBit(global0[_wgslsmith_index_u32(0u, 29u)]))), ~vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(31887u, 0u), 29u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], ~94944u), select(abs(min(vec3<u32>(37648u, 39575u, global0[_wgslsmith_index_u32(1u, 29u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(30664u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37978u, 29u)], 29u)]))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 29u)], 107743u, 18492u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43883u, 29u)], 29u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15108u, 29u)], 29u)])), vec3<u32>(50321u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)])), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(24726u, 29u)] & 0u, reverseBits(~682u)), 1u), u_input.a);
}

