struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 2147483647i, i32(-2147483648), 51851i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    global0 = ~countOneBits(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-1i, u_input.a.x, 2147483647i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.a.x, arg_0.a.a.x, 1i, -16013i), vec4<i32>(arg_0.a.a.x, global0.x, arg_0.a.a.x, 19646i))) | ~(vec4<i32>(global0.x, arg_0.a.a.x, -40652i, arg_0.a.a.x) >> (vec4<u32>(u_input.b, u_input.b, 10876u, 1u) % vec4<u32>(32u))));
    global0 = vec4<i32>(37403i, -20098i, u_input.a.x, 0i);
    global0 = firstLeadingBit(vec4<i32>(16442i, -2147483647i, u_input.a.x ^ _wgslsmith_add_i32(u_input.a.x, global0.x), global0.x));
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = Struct_3(arg_0);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1208f)), -1664f)), _wgslsmith_f_op_f32(-1448f + _wgslsmith_f_op_f32(914f * arg_1))))), arg_1);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    var var_1 = any(vec2<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f * 1221f))))));
    let var_3 = var_2.zz;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<i32>(-13275i, 0i, 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 385f), _wgslsmith_f_op_f32(abs(-1080f))))).x));
    return select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(select(false, true, true), false)), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, select(select(false, true, false), all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)))), vec2<bool>(true, true)), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    let var_0 = -115f;
    global0 = vec4<i32>(0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(1i, u_input.a.x), -34530i, arg_3.a.x), -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 16866i, arg_2.a.x), arg_1.a)), -26291i, firstLeadingBit(-1i));
    global0 = select(_wgslsmith_div_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-30571i, arg_1.a.x, 30622i, -5202i)), -(~vec4<i32>(arg_1.a.x, arg_2.a.x, -48582i, global0.x)) ^ min(vec4<i32>(2147483647i, arg_2.a.x, 0i, arg_1.a.x), -vec4<i32>(-10975i, 0i, -1099i, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.a.x, arg_1.a.x, arg_1.a.x), -vec3<i32>(2147483647i, 2147483647i, 17441i)), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -4389i), arg_3.a.zz) & -28826i), vec4<i32>(-1i) * -abs(vec4<i32>(-2840i, -18953i, -1i, 1i))), any(vec4<bool>(false, !arg_0.x && !arg_0.x, all(select(arg_0, arg_0, arg_0.x)), arg_0.x)));
    let var_1 = arg_1;
    let var_2 = min(2147483647i, -59182i);
    return Struct_3(Struct_2(arg_3));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = func_4(!(!select(vec2<bool>(false, false), func_2(vec2<i32>(1i, u_input.a.x), u_input.a.x, Struct_1(vec3<i32>(arg_0.a.a.x, u_input.a.x, arg_0.a.a.x))), func_2(global0.xy, global0.x, arg_0.a))), arg_0.a, Struct_1(global0.wzw), Struct_1(arg_0.a.a >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 72953u, 4294967295u), ~vec3<u32>(21513u, 36369u, u_input.b)) % vec3<u32>(32u))));
    let var_1 = select(func_2(countOneBits(vec2<i32>(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 56583i, u_input.a.x, -38538i), vec4<i32>(2147483647i, -1i, -2147483647i, var_0.a.a.a.x)))), select(min(var_0.a.a.a.x << (4294967295u % 32u), 5169i), arg_0.a.a.x, true), Struct_1(var_0.a.a.a)), vec2<bool>(~max(8833i, u_input.a.x) != ~global0.x, !all(func_2(vec2<i32>(-31750i, 6814i), var_0.a.a.a.x, arg_0.a))), vec2<bool>(true, true));
    let var_2 = vec2<u32>(59322u, reverseBits(11388u));
    var var_3 = _wgslsmith_div_f32(560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-219f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1060f)))))));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-994f, 1205f))) + _wgslsmith_f_op_f32(342f * -569f)))), _wgslsmith_f_op_f32(1421f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1533f * 154f) - _wgslsmith_f_op_f32(-2411f * 525f)))));
    return func_4(var_1, func_4(vec2<bool>(var_1.x, func_2(var_0.a.a.a.yy, u_input.a.x, var_0.a.a).x), func_4(select(var_1, vec2<bool>(false, arg_1), var_1), arg_0.a, func_4(!var_1, arg_0.a, Struct_1(vec3<i32>(22661i, -3991i, 0i)), Struct_1(global0.yxz)).a.a, arg_0.a).a.a, Struct_1(_wgslsmith_div_vec3_i32(global0.yzz ^ global0.xxy, abs(arg_0.a.a))), func_4(var_1, Struct_1(vec3<i32>(2147483647i, 2147483647i, 33805i)), func_4(select(vec2<bool>(arg_1, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false)), arg_0.a, func_4(var_1, Struct_1(var_0.a.a.a), var_0.a.a, arg_0.a).a.a, var_0.a.a).a.a, Struct_1(_wgslsmith_sub_vec3_i32(global0.ywx, vec3<i32>(45654i, arg_0.a.a.x, -51i)))).a.a).a.a, Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(global0.x, -2147483647i, 4384i), arg_0.a.a), -firstLeadingBit(vec3<i32>(0i, 2147483647i, arg_0.a.a.x)))), Struct_1(_wgslsmith_div_vec3_i32(func_4(vec2<bool>(true, var_1.x), Struct_1(vec3<i32>(9848i, arg_0.a.a.x, global0.x)), var_0.a.a, Struct_1(arg_0.a.a)).a.a.a, arg_0.a.a)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(16966i, u_input.a.x, -1i), ~global0.wxx), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1.a.a.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-14553i, -30325i, u_input.a.x), global0.xyw), abs(-10289i)), arg_1.a.a.a)), arg_1.a.a.a.x, func_1(arg_1.a, any(arg_3) | arg_2).a.a.a.x, 11446i);
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(6878i, _wgslsmith_mult_i32(-1i, u_input.a.x & -1i), 9078i), global0.zxz, vec3<i32>(-_wgslsmith_mult_i32(-20262i, global0.x), min(arg_1.a.a.a.x, 1i), 1i)));
    var_1 = func_1(func_1(Struct_2(Struct_1(var_1.a)), arg_3.x).a, true).a.a;
    let var_2 = arg_1.a;
    return func_4(!(!func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.a.x, -2147483647i), var_2.a.a.yz), var_2.a.a.x, var_2.a)), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(28420i, -8045i, var_1.a.x), vec3<i32>(2147483647i, var_0.a.a.a.x, 16660i)) | arg_1.a.a.a, vec3<i32>(var_0.a.a.a.x & 30391i, _wgslsmith_mult_i32(1i, -1i), _wgslsmith_sub_i32(global0.x, -2147483647i)))), Struct_1(vec3<i32>(1i, arg_1.a.a.a.x, min(-19451i, var_2.a.a.x))), var_0.a.a).a.a;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global0 = vec4<i32>(-31256i, -1i, ~(-11904i ^ (-1i >> (~u_input.b % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(func_4(vec2<bool>(false, false), arg_0, arg_0, Struct_1(global0.xyw)).a.a.a.yz, vec2<i32>(global0.x, 25883i)), global0.zw) << (4294967295u % 32u));
    var var_0 = select(!vec4<bool>(true, !any(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), func_2(global0.ww, -global0.x, arg_0).x), vec4<bool>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-14077i, -2147483647i, arg_0.a.x, u_input.a.x), vec4<i32>(240i, 2147483647i, 1i, -14428i)) > u_input.a.x, false, !(countOneBits(2147483647i) == arg_0.a.x), true), true);
    let var_1 = !var_0.yw;
    let var_2 = firstLeadingBit(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b, 112442u, 25819u) ^ _wgslsmith_clamp_u32(u_input.b, 4294967295u, 67776u), abs(~u_input.b)) >> (vec3<u32>(_wgslsmith_clamp_u32(u_input.b, ~55527u, reverseBits(u_input.b)), ~u_input.b, 4294967295u) % vec3<u32>(32u)));
    let var_3 = reverseBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(12528i, 19599i))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-arg_0.a.zy, global0.xx ^ vec2<i32>(arg_0.a.x, arg_0.a.x)), vec2<i32>(global0.x, u_input.a.x) << (~var_2.yx % vec2<u32>(32u)))));
    return Struct_2(Struct_1(vec3<i32>(0i, select(_wgslsmith_add_i32(56764i, -1i), -u_input.a.x, false), _wgslsmith_div_i32(abs(var_3), global0.x))));
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = max(~min(vec4<i32>(var_0.x, func_5(vec2<u32>(arg_1, 4294967295u), Struct_3(arg_0), true, vec2<bool>(false, false)).a.x, abs(1i), 2147483647i), vec4<i32>(countOneBits(var_0.x), -arg_0.a.a.x, u_input.a.x, _wgslsmith_clamp_i32(-1i, arg_0.a.a.x, arg_0.a.a.x))), vec4<i32>(1i, ~74909i, _wgslsmith_sub_i32(-u_input.a.x, global0.x & (0i | var_0.x)), ~var_0.x));
    global0 = -firstTrailingBit(-(~(-vec4<i32>(-2147483647i, -6908i, arg_0.a.a.x, 2147483647i))));
    global0 = min(vec4<i32>(1i << (~u_input.b % 32u), reverseBits(_wgslsmith_mod_i32(-2147483647i, 22817i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(global0.x, -1i, global0.x), reverseBits(1i)), arg_0.a.a.x | abs(-56054i)) & (~vec4<i32>(var_0.x, arg_0.a.a.x, global0.x, global0.x) ^ vec4<i32>(min(var_0.x, -25174i), min(var_0.x, var_0.x), arg_0.a.a.x, func_6(Struct_1(vec3<i32>(-7831i, 27651i, u_input.a.x))).a.a.x)), max(select(vec4<i32>(u_input.a.x, arg_0.a.a.x, global0.x, var_0.x), firstTrailingBit(~vec4<i32>(2147483647i, -55448i, 1i, var_0.x)), vec4<bool>(false, true, true, select(false, false, false))), vec4<i32>(-(-26363i << (1u % 32u)), ~(2147483647i << (arg_1 % 32u)), func_1(arg_0, false).a.a.a.x, 1i)));
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-func_5(vec2<u32>(arg_1, arg_1), Struct_3(Struct_2(Struct_1(vec3<i32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)))), false, vec2<bool>(false, false)).a.x, _wgslsmith_mod_i32(-1i, ~global0.x)), -(min(var_0.x, u_input.a.x) >> ((u_input.b ^ u_input.b) % 32u))), _wgslsmith_dot_vec2_i32(u_input.a, ~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, u_input.a.x), global0.wy) & global0.wy));
    return func_4(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(vec2<i32>(-12309i, 0i) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), ~var_1.x, func_5(vec2<u32>(arg_1, 4294967295u), Struct_3(Struct_2(arg_0.a)), false, vec2<bool>(true, false)))), func_1(arg_0, all(vec4<bool>(any(vec4<bool>(false, true, false, false)), true, any(vec3<bool>(true, false, false)), true))).a.a, func_6(func_6(Struct_1(~global0.ywy)).a).a, Struct_1(arg_0.a.a)).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var var_1 = Struct_2(func_7(func_6(func_5(vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), func_1(Struct_2(Struct_1(vec3<i32>(0i, global0.x, 2147483647i))), true), func_2(global0.zw, global0.x, Struct_1(vec3<i32>(4161i, global0.x, global0.x))).x, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), 21218u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2603f, 1498f, -1908f, 1098f))))));
    var var_2 = func_4(vec2<bool>(global0.x < -13147i, true), func_1(func_6(func_6(Struct_1(global0.zww)).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-3009f))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -891f)))).a.a, var_1.a, var_1.a);
    var_2 = func_1(var_2.a, true);
    var var_3 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, !func_2(var_1.a.a.xx, 63243i, Struct_1(var_1.a.a)).x, false, true), vec4<bool>(!any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, true, false, false)), true));
    var var_4 = Struct_2(func_1(var_2.a, !(false != (14760i != u_input.a.x))).a.a);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -980f), 842f))));
    var var_6 = func_1(Struct_2(Struct_1(-(var_2.a.a.a >> (vec3<u32>(1u, 34939u, 4294967295u) % vec3<u32>(32u))))), any(vec4<bool>(true, true, true, true)) | all(!select(var_3.www, var_3.wyz, vec3<bool>(var_3.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(u_input.b, firstTrailingBit(u_input.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)) % 32u)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_5.x)) * -1000f) * 139f)), vec2<u32>(countOneBits(u_input.b), firstTrailingBit(u_input.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1477f, var_5.x) * _wgslsmith_f_op_f32(sign(var_5.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_5.x, -1213f)) * _wgslsmith_f_op_f32(floor(1023f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_5.x + var_5.x))))));
}

