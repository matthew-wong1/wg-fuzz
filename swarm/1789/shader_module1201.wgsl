struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, 0i, 1i), 1i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, 44196i, 2147483647i), _wgslsmith_add_vec3_i32(global0.a, vec3<i32>(-89399i, 48965i, arg_0.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), (_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.b), vec2<i32>(-6477i, -1i)) ^ max(arg_0.a.xz, global0.a.zz)) | vec2<i32>(_wgslsmith_mult_i32(1i, 0i), _wgslsmith_sub_i32(u_input.a, -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, -651f, -981f, 1220f)), _wgslsmith_div_vec4_f32(vec4<f32>(1171f, -176f, -333f, -513f), vec4<f32>(-2415f, -1000f, 629f, 210f)), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1009f, 749f, 1156f, -2110f), vec4<f32>(424f, 266f, 946f, 456f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-201f, var_1.x), _wgslsmith_f_op_f32(-var_1.x))) - var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1050f)))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - var_1.x))));
    let var_2 = _wgslsmith_sub_i32(var_0.a.x, var_0.b);
    var_0 = arg_0;
    return firstTrailingBit(-10289i);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    let var_0 = arg_1.b;
    let var_1 = Struct_1(firstTrailingBit(arg_2.a), select(_wgslsmith_clamp_i32(-12256i, 1i, reverseBits(-23928i)), u_input.a, -select(arg_1.b, arg_1.b, arg_3) >= _wgslsmith_dot_vec3_i32(arg_1.a, arg_2.a)));
    return !vec4<bool>(false, false, arg_3 || arg_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1926f)))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(-433f * 811f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    global0 = Struct_1(min(reverseBits(~arg_1.a), (vec3<i32>(-1i) * -arg_0.a) >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), arg_0.a.x);
    global0 = Struct_1(abs(reverseBits(~global0.a)), u_input.a);
    global0 = arg_0;
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(~(-global0.a), max(_wgslsmith_add_vec3_i32(arg_0.a, abs(arg_0.a)), ~vec3<i32>(arg_3, 24671i, 20195i)), reverseBits(vec3<i32>(arg_3 ^ -74401i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, 1i), vec2<i32>(arg_3, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.b, arg_1.b), vec3<i32>(arg_1.b, -1i, 10886i))))), arg_3);
    global0 = Struct_1(global0.a, arg_1.b);
    return Struct_1(min(vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, var_0.b, arg_3), vec3<i32>(-18958i, 2147483647i, var_0.a.x))), 1166i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, max(arg_3, arg_0.b), 1i), abs(~vec3<i32>(arg_0.a.x, arg_3, -2147483647i)))), _wgslsmith_clamp_i32(1i, arg_1.b ^ _wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(arg_1.a.x, arg_1.a.x, u_input.a)), 2147483647i));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = !select(vec4<bool>(all(vec4<bool>(true, true, false, false)), false, false, false), vec4<bool>(any(vec4<bool>(true, true, false, false)), true, false, true), true);
    var var_1 = arg_0;
    var var_2 = vec3<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -406f)))), -1205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    return func_4(Struct_1(global0.a, _wgslsmith_mod_i32(~func_2(Struct_1(vec3<i32>(global0.a.x, u_input.a, -63059i), global0.a.x)), u_input.a)), Struct_1(~global0.a, ~_wgslsmith_div_i32(max(-2147483647i, 15916i), global0.a.x)), select(func_3(-_wgslsmith_mult_vec3_i32(vec3<i32>(-17814i, -73838i, global0.b), global0.a), Struct_1(global0.a, u_input.a >> (0u % 32u)), Struct_1(-vec3<i32>(global0.a.x, u_input.a, 22687i), _wgslsmith_sub_i32(global0.b, u_input.a)), var_0.x), select(vec4<bool>(true, true, true & var_0.x, !var_0.x), vec4<bool>(false, true, true & var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, false), select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x), !vec4<bool>(false, var_0.x, true, false))), vec4<bool>(true, select(1000f != var_2.x, true, true), any(vec2<bool>(var_0.x, false)), select(any(var_0.yw), var_0.x, var_0.x))), 22088i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1761f))))), 536f), _wgslsmith_f_op_f32(-891f * _wgslsmith_f_op_f32(-106f + -1581f)));
    let var_0 = _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(0i, i32(-1i) * -global0.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_1.a.x, arg_1.b), arg_0.b, firstTrailingBit(u_input.a)))), arg_2.a);
    var var_1 = Struct_1(min(_wgslsmith_mod_vec3_i32(arg_0.a, select(global0.a, vec3<i32>(global0.a.x, arg_1.b, 2147483647i), arg_3)) | arg_1.a, abs(_wgslsmith_add_vec3_i32(var_0, arg_1.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), func_4(Struct_1(global0.a, -_wgslsmith_div_i32(-1i, global0.a.x)), Struct_1(~(arg_0.a << (vec3<u32>(4294967295u, 53996u, 6162u) % vec3<u32>(32u))), 0i), select(vec4<bool>(true, true, any(vec3<bool>(arg_3, false, arg_3)), false), vec4<bool>(false, -1i != u_input.a, !arg_3, select(arg_3, arg_3, arg_3)), vec4<bool>(true, true, -1i > var_0.x, arg_3)), arg_0.a.x >> (3692u % 32u)).a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(100f, 285f))), 795f)) * -1092f) - _wgslsmith_div_f32(-1040f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -229f), -215f, true))));
    var var_3 = Struct_1(vec3<i32>(i32(-1i) * -42900i, arg_2.b, -22034i), u_input.a);
    return Struct_1(vec3<i32>(max(_wgslsmith_mult_i32(reverseBits(0i), var_3.b), 2147483647i), -arg_2.b, arg_1.a.x), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(!vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true)), true);
    global0 = func_5(func_1(496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f - _wgslsmith_f_op_f32(step(-503f, -317f))) + _wgslsmith_f_op_f32(step(664f, _wgslsmith_f_op_f32(-737f * 527f))))), Struct_1(global0.a, -(~u_input.a ^ 2147483647i)), func_1(233f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1579f, -1000f)))))), var_0.x);
    global0 = func_1(_wgslsmith_div_f32(-1884f, _wgslsmith_f_op_f32(f32(-1f) * -417f)), 1055f);
    var var_1 = -vec3<i32>(_wgslsmith_add_i32(-func_2(Struct_1(global0.a, global0.a.x)), -(u_input.a << (13593u % 32u))), global0.b, countOneBits(func_2(func_5(Struct_1(vec3<i32>(global0.a.x, u_input.a, global0.a.x), u_input.a), Struct_1(global0.a, -2147483647i), Struct_1(global0.a, 48051i), false))));
    let var_2 = _wgslsmith_f_op_f32(-1351f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-924f * 967f))))) + 1000f));
    let var_3 = vec3<u32>(~select(16872u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 21127u, 42678u)), 33670u), var_0.x), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 11198u), 1u), firstLeadingBit(min(1u, 15808u)));
    var_1 = select(abs(min(~vec3<i32>(u_input.a, var_1.x, var_1.x), global0.a)) | ~vec3<i32>(abs(global0.b), ~global0.b, firstLeadingBit(1i)), func_1(var_2, var_2).a, func_3(select(vec3<i32>(u_input.a, ~11699i, _wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(2147483647i, u_input.a, u_input.a))), ~vec3<i32>(var_1.x, u_input.a, global0.b), vec3<bool>(all(vec4<bool>(var_0.x, true, false, false)), true, true)), Struct_1(_wgslsmith_sub_vec3_i32(global0.a, global0.a), -19784i | ~var_1.x), Struct_1(vec3<i32>(~(-11973i), _wgslsmith_mod_i32(global0.a.x, 1i), func_5(Struct_1(global0.a, var_1.x), Struct_1(global0.a, 2147483647i), Struct_1(vec3<i32>(var_1.x, -10546i, var_1.x), -12144i), false).a.x), var_1.x), !(1u >= var_3.x)).xwz);
    var_1 = max(vec3<i32>(-1318i, _wgslsmith_mult_i32(_wgslsmith_div_i32(~global0.a.x, func_5(Struct_1(global0.a, u_input.a), Struct_1(global0.a, 7687i), Struct_1(vec3<i32>(-2147483647i, 51846i, global0.b), global0.b), var_0.x).a.x), 1i), select(countOneBits(-2147483647i), ~(global0.b | global0.a.x), true)), -(~_wgslsmith_clamp_vec3_i32(global0.a, _wgslsmith_sub_vec3_i32(global0.a, global0.a), -vec3<i32>(54434i, u_input.a, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-var_2), false)), _wgslsmith_f_op_f32(step(-1200f, var_2)), 503f));
}

