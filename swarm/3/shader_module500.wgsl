struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_clamp_i32(~1i, -2147483647i, 1i), false);
    var var_1 = Struct_5(select(select(select(!vec4<bool>(false, arg_2.a.a.x, arg_1, true), select(vec4<bool>(false, true, arg_1, true), vec4<bool>(true, arg_1, true, arg_2.a.a.x), vec4<bool>(false, true, arg_1, arg_2.a.a.x)), arg_1 | true), vec4<bool>(arg_2.a.a.x, !arg_1, 8705u <= arg_2.b.x, var_0.b), true), vec4<bool>(var_0.b, !arg_2.a.a.x, true | var_0.b, arg_2.a.a.x), false), Struct_2(arg_2.a, vec3<u32>(~arg_2.b.x, arg_0.x, 1u) | vec3<u32>(min(42254u, u_input.c), 34162u << (1u % 32u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x))), arg_2, _wgslsmith_div_vec4_i32(~(~vec4<i32>(2147483647i, u_input.d.x, 0i, u_input.d.x)) & (vec4<i32>(-1i) * -vec4<i32>(var_0.a, 24116i, -6862i, var_0.a)), firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.a, var_0.a, -19197i, 16038i), min(vec4<i32>(-31992i, u_input.d.x, 0i, 65613i), vec4<i32>(-45317i, u_input.d.x, 1i, var_0.a))))));
    let var_2 = min(u_input.a.x, _wgslsmith_sub_i32(select(u_input.a.x, 11428i, any(var_1.b.a.a)), -(~u_input.a.x))) ^ u_input.d.x;
    var var_3 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_1.c.b.x, 0u), vec4<u32>(arg_0.x, var_1.c.b.x, 0u, u_input.c)), reverseBits(var_1.b.b.x)), arg_0.x, arg_2.b.x, 1u);
    var var_4 = var_1.b;
    return ~vec4<u32>(var_3.x, _wgslsmith_div_u32(firstTrailingBit(1u), abs(4294967295u)), 0u, 27143u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = Struct_4((_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.d.zy), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-49272i, 20415i))) & u_input.d.x) ^ -u_input.a.x, arg_1.a.x);
    let var_1 = 0i;
    var var_2 = select(select(select(select(select(vec2<bool>(var_0.b, false), arg_3.a.a.zz, arg_3.a.a.zz), select(vec2<bool>(false, false), vec2<bool>(arg_1.a.x, arg_3.a.a.x), arg_2.b), false), !vec2<bool>(arg_3.a.a.x, true), !vec2<bool>(true, arg_3.a.a.x)), select(arg_1.a.zy, arg_3.a.a.yz, vec2<bool>(true, true)), -27492i <= _wgslsmith_add_i32(countOneBits(-4669i), -arg_2.a)), vec2<bool>(true, true), true);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1297f, global0.x, -859f, 672f))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global0.x + -527f), -391f, 1227f, _wgslsmith_f_op_f32(abs(-272f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-953f, global0.x, -1146f, -2016f))))))));
    let var_3 = -_wgslsmith_mod_i32(-countOneBits(_wgslsmith_sub_i32(var_1, 1i)), arg_2.a);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f * global0.x)) * _wgslsmith_f_op_f32(max(global0.x, global0.x))), 1768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -651f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)), global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -551f, -407f, -499f) - vec4<f32>(global0.x, global0.x, -360f, global0.x))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x, 333f, -1207f))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-455f, arg_0, global0.x, -277f) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1109f, -1127f, 1243f), vec4<f32>(1000f, arg_0, 1055f, global0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(210f, global0.x, arg_0, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0.x, global0.x, -919f))))));
    var var_0 = Struct_4(1i, arg_1.x);
    global0 = _wgslsmith_f_op_vec4_f32(func_4(countOneBits(~func_3(vec2<u32>(u_input.b.x, 4294967295u), !var_0.b, Struct_2(Struct_1(vec3<bool>(var_0.b, false, true)), u_input.b), vec4<f32>(global0.x, arg_0, -1196f, 489f))), Struct_1(select(!select(vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, false, var_0.b), arg_1.x), vec3<bool>(all(vec2<bool>(false, var_0.b)), arg_1.x, u_input.b.x < 0u), arg_1)), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(0i, -32309i, arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(22180i, var_0.a, 52552i, arg_2.x), vec4<i32>(u_input.a.x, -2147483647i, arg_2.x, -2506i)), var_0.a, ~u_input.a.x), vec4<i32>(-1i) * -vec4<i32>(0i, 0i, 0i, arg_2.x)), false), Struct_3(Struct_1(arg_1), 0i)));
    var_0 = Struct_4(reverseBits(u_input.d.x), false);
    var var_1 = Struct_1(vec3<bool>(all(select(!arg_1.xz, vec2<bool>(var_0.b, true), true)), arg_1.x, 772f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))));
    return Struct_3(Struct_1(arg_1), i32(-1i) * -25535i);
}

fn func_5(arg_0: Struct_3) -> vec2<i32> {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1892f, _wgslsmith_f_op_f32(abs(1021f)))), _wgslsmith_f_op_f32(trunc(288f)))), -906f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-689f, global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x, _wgslsmith_f_op_f32(step(global0.x, -941f)), global0.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global0.x - -1422f), _wgslsmith_f_op_f32(select(-171f, _wgslsmith_f_op_f32(round(global0.x)), arg_0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-499f + -982f))))))));
    global0 = vec4<f32>(270f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(146f, global0.x)), _wgslsmith_f_op_f32(-1112f * global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)), arg_0.a.a.x))), _wgslsmith_f_op_f32(-global0.x));
    let var_0 = ~vec2<i32>(i32(-1i) * -arg_0.b, arg_0.b);
    let var_1 = select(vec4<bool>(all(!vec2<bool>(arg_0.a.a.x, arg_0.a.a.x)), false, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4212u, 1u, 0u), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.c)) > ~0u, all(vec3<bool>(13247i < u_input.a.x, true, arg_0.a.a.x))), arg_0.a.a.x);
    return vec2<i32>(-(~countOneBits(_wgslsmith_mod_i32(39391i, 16721i))), min(1i ^ (arg_0.b & 0i), (u_input.d.x & 1i) ^ 1i));
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(arg_0, !(_wgslsmith_f_op_f32(-global0.x) > -357f));
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, var_0.a, -1i, -29060i) >> (vec4<u32>(u_input.b.x, 28568u, 22244u, u_input.c) % vec4<u32>(32u)), vec4<i32>(var_0.a, -9419i, 1i, -12378i))), vec4<i32>(~44577i, _wgslsmith_add_i32(-14687i, 2147483647i), u_input.a.x & _wgslsmith_div_i32(-20445i, arg_0), 1i)), -max(vec4<i32>(abs(-727i), 12150i, -1i, _wgslsmith_sub_i32(-34760i, var_0.a)), -vec4<i32>(arg_0, var_0.a, 2147483647i, var_0.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(global0.zxx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-555f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(267f, 1071f)))));
    var var_3 = Struct_4(_wgslsmith_mult_i32(u_input.d.x, 30567i), all(arg_1.a.xy));
    var_3 = Struct_4(var_3.a, false);
    return Struct_2(Struct_1(select(arg_1.a, !vec3<bool>(false, false, var_3.b), var_0.b)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 26932u, u_input.b.x, u_input.b.x) | vec4<u32>(65281u, 6072u, u_input.b.x, u_input.c), vec4<u32>(u_input.b.x, 42793u, 0u, u_input.c) << (vec4<u32>(u_input.b.x, 1u, 16254u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 78980u, 4353u)), vec4<u32>(18760u, u_input.b.x, u_input.c, u_input.b.x) & vec4<u32>(u_input.c, u_input.c, 29365u, 9766u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 0u, 5346u, 1u), vec4<u32>(35715u, u_input.c, 49196u, 82597u)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, u_input.b.x, 41205u, u_input.c)), ~abs(vec4<u32>(7787u, u_input.b.x, 22660u, u_input.c))), ~1u));
}

fn func_1() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, -910f, -255f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 372f, 1610f, -690f), vec4<f32>(-166f, -1000f, -1021f, 1287f)))), vec4<f32>(-496f, global0.x, 1108f, _wgslsmith_f_op_f32(abs(137f))))));
    var var_0 = func_6(_wgslsmith_dot_vec2_i32(abs(func_5(func_2(global0.x, vec3<bool>(true, false, true), u_input.d))), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, 1i), -u_input.d.xx, vec2<i32>(-54301i, 0i) >> (vec2<u32>(u_input.c, 16031u) % vec2<u32>(32u))))), func_2(-1510f, !select(func_2(-895f, vec3<bool>(false, false, true), vec3<i32>(18418i, u_input.d.x, u_input.a.x)).a.a, vec3<bool>(true, true, true), vec3<bool>(false, false, true)), -vec3<i32>(~(-28873i), ~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d))).a);
    let var_1 = Struct_3(var_0.a, max(countOneBits(-2147483647i), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, -2147483647i, u_input.d.x, u_input.d.x), select(vec4<i32>(1i, -8166i, -2147483647i, -5317i), vec4<i32>(u_input.a.x, 31084i, u_input.a.x, -35924i), vec4<bool>(false, false, false, var_0.a.a.x)))));
    let var_2 = ~u_input.c;
    let var_3 = vec2<u32>(~(~1u), ~var_0.b.x & func_6(0i, var_1.a).b.x);
    return ~vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(abs(~var_0.b.x), var_0.b.x), var_2, abs(~_wgslsmith_mult_u32(u_input.c, 18477u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-267f, -1029f, 1076f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1012f, 1506f, global0.x, global0.x) * vec4<f32>(-1607f, -491f, global0.x, global0.x))))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, 394f, global0.x))) - vec4<f32>(1085f, _wgslsmith_f_op_f32(global0.x + -1003f), _wgslsmith_f_op_f32(955f * 1150f), global0.x)))));
    let var_0 = reverseBits(abs(_wgslsmith_div_u32(~u_input.b.x, 4294967295u)));
    let var_1 = countOneBits(~func_1());
    let var_2 = true;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1696f, 1536f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + _wgslsmith_f_op_f32(exp2(global0.x)))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1214f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 616f) * _wgslsmith_f_op_f32(-global0.x))), 439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(countOneBits(var_0), select(4294967295u, 1u, var_2), _wgslsmith_dot_vec2_u32(var_1.wz, var_1.zz), _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), Struct_1(vec3<bool>(true, var_2, var_2)), Struct_4(~(-1i), all(vec2<bool>(true, var_2))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1002f), vec3<bool>(false, false, true), u_input.d))).x));
    let var_3 = firstLeadingBit(_wgslsmith_mod_u32(countOneBits(~max(var_1.x, u_input.b.x)), select(max(var_0, 57788u) ^ _wgslsmith_mod_u32(89104u, var_1.x), 56221u, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(select(~vec3<i32>(u_input.d.x, -1i, 2147483647i), u_input.d, select(vec3<bool>(var_2, var_2, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))) | (~u_input.d ^ u_input.d), _wgslsmith_mod_vec3_i32(countOneBits(max(vec3<i32>(-93040i, u_input.d.x, -94425i), u_input.d)), u_input.d)), 1u, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_dot_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.d.x, u_input.d.x), vec4<i32>(0i, u_input.d.x, u_input.d.x, 0i), vec4<i32>(-20998i, u_input.d.x, u_input.d.x, 43533i)), vec4<i32>(2147483647i, 2147483647i, u_input.d.x, u_input.d.x) | vec4<i32>(-34699i, u_input.d.x, u_input.a.x, u_input.d.x)) >> (~vec4<u32>(u_input.b.x, 0u, 4691u, 25190u) % vec4<u32>(32u)), select(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.d.x, 47762i), vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.d.x)), max(vec4<i32>(u_input.d.x, u_input.d.x, -64987i, 8240i), vec4<i32>(u_input.d.x, u_input.a.x, 45533i, u_input.a.x)), !vec4<bool>(var_2, false, false, var_2))));
}

