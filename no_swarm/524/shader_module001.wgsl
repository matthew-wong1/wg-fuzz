struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 20561i), -18418i, -491f, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = Struct_1(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(arg_1.b, arg_2.b), arg_1.a)), -(~global1.a.x), 701f, all(select(select(vec2<bool>(arg_1.d, false), vec2<bool>(arg_2.d, arg_0.x), all(vec3<bool>(true, arg_0.x, false))), !arg_0, !vec2<bool>(global0.d, global0.d))));
    var var_0 = Struct_1(vec2<i32>(max(select(firstTrailingBit(-1i), max(1i, global1.a.x), arg_0.x), ~_wgslsmith_add_i32(global1.a.x, -61989i)), 0i), global1.a.x, -914f, true);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2330f + arg_2.c)));
    let var_2 = max(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.b, var_0.a.x, arg_1.a.x, 2147483647i), -(~vec4<i32>(-12904i, 4694i, var_0.b, var_0.a.x)), select(vec4<i32>(global0.b, global1.a.x, global1.b, arg_2.a.x), vec4<i32>(-1i, arg_2.b, -2147483647i, arg_2.a.x), global0.d) | -vec4<i32>(1i, 0i, global0.b, -8121i)), reverseBits(~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.b, 13095i, arg_1.b, arg_1.b), vec4<i32>(18075i, global0.b, 32410i, -1i)))));
    var var_3 = ~(~vec2<u32>(u_input.a | max(1u, 0u), _wgslsmith_sub_u32(u_input.a, u_input.a)));
    return _wgslsmith_f_op_f32(f32(-1f) * -772f);
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = Struct_1(vec2<i32>(global0.a.x, ~global1.a.x), ~(-1298i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(f32(-1f) * -1515f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<bool>(global1.d, global1.d), Struct_1(global1.a, 1378i, global0.c, global0.d), Struct_1(global1.a, 18579i, global1.c, false)))))) + -270f), !(!select(false, true, true) | !any(vec3<bool>(false, false, global0.d))));
    var var_1 = Struct_1(~vec2<i32>(33615i, 2147483647i), arg_0 << (_wgslsmith_div_u32(max(countOneBits(29482u), 51713u), 34620u) % 32u), _wgslsmith_f_op_f32(-817f + _wgslsmith_div_f32(-390f, _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(global0.c - global1.c)))), !(!select(true, false, !var_0.d)));
    var var_2 = _wgslsmith_f_op_f32(select(-385f, global0.c, all(select(select(vec4<bool>(false, global0.d, var_1.d, var_0.d), vec4<bool>(true, var_0.d, global1.d, false), select(vec4<bool>(global0.d, var_1.d, false, global0.d), vec4<bool>(var_1.d, true, false, true), false)), vec4<bool>(any(vec3<bool>(true, global0.d, var_0.d)), global0.d, all(vec2<bool>(global1.d, true)), true), !(global0.c > 564f)))));
    var var_3 = !vec3<bool>(all(vec4<bool>(global1.c >= 403f, all(vec3<bool>(global1.d, global1.d, var_1.d)), var_0.d, all(vec4<bool>(var_0.d, true, false, global1.d)))), var_0.d, true);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-333f, _wgslsmith_f_op_f32(771f - var_1.c))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2166f, _wgslsmith_f_op_f32(-var_0.c))) - var_1.c)) * _wgslsmith_f_op_f32(f32(-1f) * -532f));
    return !var_0.d;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = global0.d || select(!(_wgslsmith_add_u32(arg_1.x, arg_1.x) < 4294967295u), !((global1.d & global1.d) == global1.d), func_2(1i, arg_1.x) & ((global1.c <= 288f) & any(vec4<bool>(true, global1.d, arg_2.x, false))));
    let var_1 = Struct_1(vec2<i32>(~(-select(-12602i, 1955i, true)), global1.b), -22528i, global0.c, 0u > u_input.a);
    global1 = var_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * global1.c) + _wgslsmith_f_op_f32(-global1.c)), global1.c, -620f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2379f, 667f, 1818f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-650f - -1402f), _wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_f_op_f32(round(398f)), _wgslsmith_f_op_f32(round(global0.c)))))));
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-4349i, 16936i, 1i), abs(vec3<i32>(arg_2.b, -41212i, global1.b)), vec3<i32>(arg_2.a.x, arg_1.b, 1i) << (vec3<u32>(46337u, arg_0, 11937u) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(vec3<i32>(-48368i, -1i, global0.a.x), vec3<i32>(56902i, arg_2.b, -39490i))), -firstLeadingBit(~vec3<i32>(2147483647i, arg_2.a.x, global1.a.x))), vec3<i32>(1i, global1.a.x, _wgslsmith_div_i32(func_1(~arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(18342u, arg_0, 81742u, arg_0)), select(vec4<bool>(false, true, false, arg_1.d), vec4<bool>(true, false, false, false), true)).b, -arg_1.b)));
    global0 = arg_2;
    global1 = arg_2;
    global0 = func_1(1u, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a), firstTrailingBit(select(u_input.a, 35385u, global0.d))), ~firstLeadingBit(19982u & arg_0), arg_0, min(~(~arg_0), ~select(29887u, u_input.a, arg_2.d))), !vec4<bool>(!all(vec4<bool>(true, true, arg_1.d, true)), select(!global1.d, func_2(arg_1.a.x, arg_0), arg_2.d), !any(vec4<bool>(global0.d, arg_1.d, true, true)), !(arg_2.c <= -1000f)));
    var var_1 = -(vec4<i32>(min(-26007i, var_0.x), -41206i, ~global1.b, global0.b) << (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.a, arg_0), vec4<u32>(u_input.a, 35762u, u_input.a, 1u))) % vec4<u32>(32u))) >> (vec4<u32>(~firstLeadingBit(0u), firstLeadingBit(u_input.a), 26771u, 40173u) % vec4<u32>(32u));
    return _wgslsmith_mult_vec2_u32(min(~_wgslsmith_div_vec2_u32(max(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(54667u, 1u), vec2<u32>(arg_0, u_input.a))), abs(~vec2<u32>(79783u, 0u) ^ (vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 78997u)))), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, arg_0), 1u), 0u, 0u), arg_0));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> bool {
    global0 = func_1(abs(_wgslsmith_div_u32(~abs(1u), _wgslsmith_div_u32(firstTrailingBit(1u), 4294967295u))), ~_wgslsmith_mult_vec4_u32(max(firstTrailingBit(vec4<u32>(u_input.a, arg_0.x, 1u, 41709u)), abs(vec4<u32>(4294967295u, u_input.a, u_input.a, arg_0.x))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 10657u, 101941u, 54249u), vec4<u32>(1347u, arg_0.x, 1u, arg_0.x))), !select(!select(vec4<bool>(false, true, arg_3.x, global0.d), vec4<bool>(false, false, global0.d, true), false), arg_3, arg_3));
    var var_0 = Struct_1(-(~vec2<i32>(-2147483647i, -31385i) | ~_wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(arg_2.x, -2147483647i))), i32(-1i) * -3466i, -1367f, false);
    var var_1 = func_1(u_input.a, ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_0.x, 41045u, 29438u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 2218u)), vec4<u32>(arg_0.x, 1u, 10143u, u_input.a) & vec4<u32>(42896u, arg_0.x, arg_0.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 0u, u_input.a, 79671u) << (vec4<u32>(4294967295u, arg_0.x, u_input.a, 71441u) % vec4<u32>(32u)), vec4<u32>(arg_0.x, 4294967295u, u_input.a, 17857u))), !select(arg_3, !arg_3, var_0.d && arg_3.x));
    var var_2 = func_1(arg_0.x, _wgslsmith_clamp_vec4_u32(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 3493u, 22561u), vec4<u32>(u_input.a, 32518u, u_input.a, arg_0.x))), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a << (arg_0.x % 32u)), ~countOneBits(abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))), vec4<bool>(!func_1(reverseBits(0u), ~vec4<u32>(arg_0.x, 25652u, arg_0.x, 72731u), vec4<bool>(true, var_0.d, arg_3.x, false)).d, (_wgslsmith_add_i32(var_0.b, -31859i) | -global0.b) != 0i, (global1.a.x > countOneBits(global1.b)) || all(!arg_3.yy), global0.d));
    let var_3 = func_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(u_input.a, 4294967295u, 47716u))) >> ((vec3<u32>(arg_0.x, arg_0.x, 0u) ^ (vec3<u32>(24609u, u_input.a, 33742u) << (vec3<u32>(61294u, arg_0.x, arg_0.x) % vec3<u32>(32u)))) % vec3<u32>(32u)), vec3<u32>(countOneBits(arg_0.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(92034u, 0u, 27791u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u)), 0u)), vec4<u32>(46600u, _wgslsmith_sub_u32(arg_0.x, func_4(reverseBits(arg_0.x), Struct_1(vec2<i32>(global0.b, global0.b), 0i, global1.c, var_0.d), Struct_1(var_2.a, global1.b, 746f, arg_3.x)).x), ~arg_0.x, _wgslsmith_div_u32(u_input.a, func_4(0u, Struct_1(vec2<i32>(1i, var_1.b), -51217i, 245f, global0.d), Struct_1(vec2<i32>(var_2.a.x, arg_2.x), -1i, var_0.c, var_2.d)).x) | max(4294967295u, u_input.a)), vec4<bool>(all(select(vec2<bool>(true, true), arg_3.zy, true)), true, global0.c == 415f, arg_3.x));
    return !(global1.c < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(522f)))));
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = Struct_1(vec2<i32>(-1i) * -(~vec2<i32>(1i, global1.b)), global1.b, -1695f, false);
    var var_1 = var_0;
    let var_2 = Struct_1(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2425i, 1i), -countOneBits(vec2<i32>(17950i, global0.a.x)), var_0.a)), ~global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -312f), true);
    let var_3 = var_1.a;
    global1 = func_1(~8837u, vec4<u32>(~(~(~u_input.a)), 1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_1.x, arg_2.x), ~(~arg_1.x)), abs(1110u)), !(!vec4<bool>(all(vec3<bool>(false, false, true)), var_1.d != false, var_0.d, global0.d)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(func_3(vec2<bool>(var_0.d, var_1.d), var_0, Struct_1(vec2<i32>(var_1.b, var_1.b), -1i, var_0.c, global0.d)))), _wgslsmith_f_op_f32(-884f + -929f), _wgslsmith_f_op_f32(floor(1374f)) > 705f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<i32>(~global1.a.x, 1i), firstTrailingBit(-1i), 715f, true);
    let var_0 = _wgslsmith_f_op_f32(func_6(func_5(func_4(_wgslsmith_mod_u32(18439u, u_input.a) >> (_wgslsmith_clamp_u32(4294967295u, u_input.a, 1u) % 32u), func_1(_wgslsmith_add_u32(u_input.a, 13129u), reverseBits(vec4<u32>(27906u, 0u, u_input.a, u_input.a)), !vec4<bool>(true, global1.d, true, true)), Struct_1(global0.a, global1.a.x, _wgslsmith_f_op_f32(global0.c * global0.c), global0.d && global1.d)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c, global0.c, -1043f, -1639f), vec4<f32>(global0.c, global1.c, global1.c, global1.c), false)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c, -143f, global0.c, global0.c), vec4<f32>(496f, global1.c, -555f, -782f), global1.d))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, global0.c, global0.c)))), !(!vec4<bool>(true, global1.d, global0.d, false)))), select(select(vec3<i32>(global1.a.x, 37525i, 2147483647i), vec3<i32>(global1.b, -10453i, global1.b), vec3<bool>(true, global1.d, true)), firstTrailingBit(vec3<i32>(global1.a.x, 35583i, global0.a.x)), false) ^ ((vec3<i32>(-2147483647i, 29400i, -1783i) | vec3<i32>(global0.a.x, -19775i, 32821i)) << (max(vec3<u32>(47606u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u))), !(!vec4<bool>(false, global0.d, false, false))), vec2<u32>(~abs(u_input.a) ^ (1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(25901u, u_input.a, 37981u, 8501u), vec4<u32>(28898u, u_input.a, 1u, 1u))), ~(_wgslsmith_div_u32(49471u, u_input.a) ^ 29442u)), ~vec2<u32>(12720u, u_input.a)));
    let var_1 = func_1(1u, _wgslsmith_clamp_vec4_u32(min(~vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), abs(vec4<u32>(u_input.a, 26402u, 4895u, u_input.a))) ^ ~max(vec4<u32>(u_input.a, 27179u, 16481u, u_input.a), vec4<u32>(6172u, u_input.a, u_input.a, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(21213u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 109561u, u_input.a)), 32203u, u_input.a & 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 74743u, 82190u), vec4<u32>(0u, u_input.a, 67870u, 0u) & vec4<u32>(26035u, u_input.a, u_input.a, u_input.a))), vec4<u32>(firstTrailingBit(4294967295u), 1u, u_input.a, 42u)), vec4<bool>(true, global1.d, !(global1.a.x > -global1.b), any(vec4<bool>(global1.d, true, false, global1.d)) && !any(vec2<bool>(global0.d, true))));
    var var_2 = var_1;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a | u_input.a, 71335u), u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.c, var_2.c, var_3.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -239f, 1000f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.c)), _wgslsmith_f_op_f32(step(global1.c, 1244f)), 471f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.c, -1000f))))), select(vec4<u32>(u_input.a, 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(30778u, 0u, u_input.a), vec3<u32>(u_input.a, 22678u, 39458u) >> (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))), _wgslsmith_sub_u32(u_input.a, u_input.a)), vec4<u32>(abs(35456u), _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, u_input.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 2556u, u_input.a, 37884u), vec4<u32>(0u, 1u, 42632u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 4294967295u, 73843u)) % vec4<u32>(32u)), global1.d));
}

