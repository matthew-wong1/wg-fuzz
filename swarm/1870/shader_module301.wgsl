struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(1i);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = vec3<u32>(min(~53139u, abs(abs(countOneBits(u_input.b)))), u_input.b, 0u);
    var var_1 = Struct_1(-1i);
    var var_2 = max(~(-1i), 1i);
    var var_3 = u_input.d;
    return func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, _wgslsmith_mult_i32(arg_2.x ^ 52888i, u_input.a.x & u_input.c)), firstLeadingBit(vec2<i32>(u_input.c << (u_input.d % 32u), func_2(arg_2.xx, Struct_1(-8711i), Struct_1(26594i)).a)), -_wgslsmith_mult_vec2_i32(vec2<i32>(-46694i, var_1.a), ~vec2<i32>(arg_2.x, 1085i))), func_2(abs(-(arg_2.yz | arg_2.zy)), func_2(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, -2147483647i), vec2<i32>(-8158i, 15894i)), func_2(abs(vec2<i32>(u_input.a.x, arg_1)), func_2(u_input.a.zx, Struct_1(0i), Struct_1(u_input.c)), Struct_1(-21263i)), Struct_1(arg_1)), Struct_1(var_1.a)), Struct_1(-abs(var_1.a) >> (reverseBits(~0u) % 32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(886f));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = abs(~(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, arg_1.a, arg_1.a), vec4<i32>(1i, -2147483647i, u_input.c, -2147483647i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 19623i, -37328i), ~vec4<i32>(u_input.a.x, var_1.a, -5544i, var_1.a))));
    global0 = vec3<u32>(global0.x, global0.x, ~_wgslsmith_add_u32(48988u, min(firstTrailingBit(global0.x), arg_0)));
    return var_2 ^ var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    global0 = ~vec3<u32>(global0.x, _wgslsmith_sub_u32(30934u, ~_wgslsmith_mult_u32(global0.x, u_input.b)), u_input.b | countOneBits(_wgslsmith_mult_u32(u_input.d, global0.x)));
    var var_0 = func_2(-abs(arg_0), Struct_1(arg_0.x), Struct_1(-(~0i)));
    var var_1 = reverseBits(func_4(~global0.x << ((4294967295u ^ select(u_input.b, u_input.b, false)) % 32u), func_2(arg_1.zz, func_2(arg_0, func_3(false, 1i, vec3<i32>(arg_0.x, arg_0.x, 41723i), vec4<f32>(-624f, -1578f, -464f, -828f)), func_3(false, -39274i, vec3<i32>(-18832i, 1i, var_0.a), vec4<f32>(-487f, 1046f, -1000f, 1022f))), Struct_1(5940i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), 0u));
    var_0 = func_3(all(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, false, true))), true & any(vec3<bool>(true, false, true)))), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_1, ~u_input.a), u_input.a.x)), -vec3<i32>(var_0.a | var_1.x, u_input.c, 44207i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1369f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-134f)) - 1f))));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec3_i32(~(-var_1.wxz), select(u_input.a, vec3<i32>(13884i, arg_1.x, 56359i), false) >> (~vec3<u32>(0u, u_input.d, u_input.b) % vec3<u32>(32u)))), arg_1.x);
    return ~(~max(~(~global0.x), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (vec3<u32>(_wgslsmith_sub_u32(global0.x, firstTrailingBit(u_input.d)), _wgslsmith_sub_u32(func_1(u_input.a.yx, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u), vec4<u32>(11738u, u_input.b, global0.x, 0u))), u_input.d) ^ vec3<u32>(u_input.b, ~_wgslsmith_add_u32(0u, 71984u), abs(u_input.d & 4294967295u))) | vec3<u32>(40555u, global0.x, global0.x);
    global0 = vec3<u32>(~global0.x, 80396u, firstLeadingBit(24961u));
    global0 = _wgslsmith_mult_vec3_u32((~(~vec3<u32>(6819u, global0.x, 4294967295u)) << (vec3<u32>(global0.x, abs(66988u), firstLeadingBit(u_input.b)) % vec3<u32>(32u))) | ~(select(vec3<u32>(126138u, global0.x, global0.x), vec3<u32>(u_input.b, 1u, global0.x), vec3<bool>(true, true, true)) << (abs(vec3<u32>(0u, u_input.d, u_input.b)) % vec3<u32>(32u))), ~vec3<u32>(abs(_wgslsmith_mult_u32(u_input.b, 1u)), 33160u, ~(global0.x | 31612u)));
    global0 = ~firstTrailingBit(vec3<u32>(select(0u, global0.x, false), ~37976u, 1u) ^ firstTrailingBit(~vec3<u32>(global0.x, u_input.b, u_input.d)));
    var var_0 = func_3(any(vec4<bool>(true, select(false, -20077i >= u_input.c, true), false, 17252i > (u_input.c | u_input.a.x))), select(u_input.c, firstLeadingBit(~firstLeadingBit(u_input.c)), _wgslsmith_add_i32(~(-2147483647i), u_input.a.x) >= -(59511i & u_input.c)), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-242f - -325f), _wgslsmith_f_op_f32(abs(-1258f))))), 271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1974f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(930f)), _wgslsmith_f_op_f32(518f * 1106f), true)))));
    var_0 = func_3(true, _wgslsmith_mult_i32(0i, -16024i), -u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(774f, -949f, 204f, -357f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-896f, -224f, -1000f, 1100f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(743f, -1000f, -627f, -1327f) * vec4<f32>(441f, 119f, 639f, -967f))))))));
    let var_1 = ~(~(~(~global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~firstLeadingBit(u_input.b), _wgslsmith_sub_u32(min(u_input.b, u_input.d), _wgslsmith_clamp_u32(countOneBits(19793u), var_1, select(var_1, 35044u, true)))), -_wgslsmith_sub_vec2_i32(u_input.a.zz, _wgslsmith_mult_vec2_i32(u_input.a.yx, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, 1i), vec2<i32>(-28977i, -9321i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(592f, 708f))))));
}

