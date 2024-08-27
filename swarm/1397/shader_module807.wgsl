struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: u32) -> vec4<i32> {
    let var_0 = Struct_2(global0.a);
    global0 = var_0;
    var var_1 = 1i;
    var var_2 = var_0;
    var var_3 = var_0.a;
    return countOneBits(u_input.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -arg_0.a.x, arg_0.a.x, _wgslsmith_clamp_i32(global0.a.a.x, 13029i, -2147483647i)) | (vec4<i32>(arg_0.a.x, u_input.e, arg_0.a.x, u_input.b.x) << (global0.a.b % vec4<u32>(32u))), -max(u_input.c, u_input.c & vec4<i32>(u_input.c.x, -2147483647i, arg_0.a.x, 20203i))), _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.a.x, ~u_input.b.x, reverseBits(53032i), arg_0.a.x), vec4<i32>(_wgslsmith_div_i32(-2147483647i, ~2147483647i), abs(u_input.b.x), _wgslsmith_sub_i32(reverseBits(global0.a.a.x), global0.a.a.x), abs(firstTrailingBit(arg_0.a.x)))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(func_3(arg_0.a.x, vec2<bool>(false, false), u_input.a, arg_0.b.x), u_input.c)), u_input.c, u_input.c));
    global0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(select(~vec3<i32>(arg_0.a.x, global0.a.a.x, 2147483647i), min(u_input.b, vec3<i32>(-72421i, u_input.e, u_input.e)), vec3<bool>(true, true, true)), vec3<i32>(var_0.x, global0.a.a.x, var_0.x)), ~vec4<u32>(~u_input.d.x, min(0u, 77686u), _wgslsmith_div_u32(39752u, u_input.d.x), 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.a.c.x, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1611f), global0.a.c.x, -446f))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = global0.a;
    let var_1 = ~vec2<u32>(4294967295u ^ ~min(var_0.b.x, 0u), arg_1.x);
    let var_2 = ~firstTrailingBit(0i);
    let var_3 = !vec4<bool>(all(select(arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x)), true, (arg_0.x && !arg_0.x) && true, arg_0.x & all(vec4<bool>(true, true, arg_0.x, true)));
    var_0 = arg_2.a;
    return Struct_2(global0.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    global0 = func_4(select(!vec3<bool>(true, any(vec4<bool>(arg_1, true, arg_1, arg_1)), true), vec3<bool>(func_2(Struct_1(vec3<i32>(u_input.b.x, -15058i, -26929i), vec4<u32>(84935u, 4294967295u, 0u, 42324u), vec4<f32>(global0.a.c.x, 133f, global0.a.c.x, 1338f)), vec4<f32>(arg_0.x, -724f, arg_0.x, -256f)), !arg_1 && !arg_1, arg_1), select(select(vec3<bool>(arg_1, true, arg_1), !vec3<bool>(true, arg_1, arg_1), true), !vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1 || false, func_2(Struct_1(u_input.c.ywz, vec4<u32>(0u, global0.a.b.x, u_input.a, 4294967295u), vec4<f32>(-1295f, arg_0.x, -1000f, global0.a.c.x)), global0.a.c)))), vec4<u32>(_wgslsmith_mod_u32(~4851u, 26034u), 0u, _wgslsmith_sub_u32(u_input.a, global0.a.b.x), 1u) & max(vec4<u32>(u_input.a, 57401u, u_input.a, u_input.a) ^ (global0.a.b << (vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.a) % vec4<u32>(32u))), global0.a.b), Struct_2(Struct_1(func_3(_wgslsmith_sub_i32(0i, 2812i), vec2<bool>(arg_1, false), 54515u, _wgslsmith_mult_u32(32056u, 82279u)).zyz, _wgslsmith_mod_vec4_u32(global0.a.b, vec4<u32>(0u, global0.a.b.x, global0.a.b.x, global0.a.b.x)) & global0.a.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1380f, arg_0.x, global0.a.c.x, 1450f), global0.a.c))))), ~(~(u_input.a << (abs(global0.a.b.x) % 32u))));
    var var_0 = global0.a.c.xzw;
    let var_1 = arg_1;
    global0 = Struct_2(func_4(select(!(!vec3<bool>(arg_1, arg_1, arg_1)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, arg_1), !vec3<bool>(var_1, var_1, true)), !(!vec3<bool>(arg_1, true, var_1))), vec4<u32>(32216u, 50157u, 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, u_input.a, 1u), global0.a.b), 1u)), func_4(!vec3<bool>(var_1, false, arg_1), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b.x, 4294967295u, u_input.a, global0.a.b.x), vec4<u32>(u_input.a, 1u, u_input.d.x, 4294967295u)), func_4(!vec3<bool>(true, var_1, false), ~global0.a.b, Struct_2(Struct_1(global0.a.a, vec4<u32>(1u, 46003u, 4294967295u, u_input.a), vec4<f32>(694f, var_0.x, -552f, -400f))), ~u_input.d.x), 1u), 8073u).a);
    let var_2 = arg_1;
    return func_4(select(!vec3<bool>(true, var_1, true), !vec3<bool>(true, func_2(global0.a, vec4<f32>(global0.a.c.x, 257f, var_0.x, 613f)), !var_2), select(select(!vec3<bool>(false, true, var_2), vec3<bool>(var_1, false, var_2), false || var_2), select(vec3<bool>(var_2, true, false), !vec3<bool>(false, true, var_2), false), vec3<bool>(all(vec4<bool>(false, false, var_2, true)), true, arg_1))), _wgslsmith_mod_vec4_u32(~vec4<u32>(func_4(vec3<bool>(false, false, var_1), vec4<u32>(6666u, global0.a.b.x, u_input.a, u_input.a), Struct_2(global0.a), u_input.d.x).a.b.x, global0.a.b.x, _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.xy), 1u), ~_wgslsmith_mult_vec4_u32(global0.a.b, vec4<u32>(u_input.a, 0u, global0.a.b.x, global0.a.b.x))), Struct_2(Struct_1(select(u_input.b ^ global0.a.a, ~global0.a.a, select(vec3<bool>(false, var_2, true), vec3<bool>(false, arg_1, false), arg_1)), ~reverseBits(vec4<u32>(u_input.a, 22563u, 117312u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c.x, -655f, 824f, 1188f))))), 69146u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.a.c.wz, true);
    let var_0 = global0.a;
    global0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c.x, _wgslsmith_f_op_f32(-var_0.c.x)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, 1053f)), _wgslsmith_f_op_f32(-1527f - 1381f)), _wgslsmith_f_op_vec2_f32(sign(global0.a.c.xx))))), any(vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-387f * -773f) <= _wgslsmith_f_op_f32(-var_0.c.x), true)));
    global0 = func_4(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, all(vec3<bool>(false, true, true))), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, any(vec3<bool>(true, true, true)))), global0.a.b, func_4(vec3<bool>(true, !any(vec4<bool>(true, true, false, false)), true), vec4<u32>(15820u, ~8856u, 4294967295u, 1u), Struct_2(Struct_1(vec3<i32>(17050i, var_0.a.x, -1i) | var_0.a, _wgslsmith_sub_vec4_u32(var_0.b, var_0.b), _wgslsmith_f_op_vec4_f32(-var_0.c))), _wgslsmith_dot_vec3_u32(~global0.a.b.xxz, ~var_0.b.yzx)), global0.a.b.x);
    var var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(-14844i, u_input.e) << (_wgslsmith_mod_u32(global0.a.b.x, u_input.d.x) % 32u), firstLeadingBit(_wgslsmith_add_i32(2147483647i, u_input.c.x)), 1i), ~(-(var_0.a & _wgslsmith_sub_vec3_i32(var_0.a, global0.a.a))));
    var var_2 = Struct_2(func_4(vec3<bool>(true, true, true), var_0.b, func_4(vec3<bool>(true, true, true), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(25998u, var_0.b.x, var_0.b.x), vec3<u32>(u_input.d.x, var_0.b.x, 4294967295u)), var_0.b.x, 27958u ^ global0.a.b.x, u_input.d.x), func_4(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 61753u, 1u), vec4<u32>(4294967295u, 29224u, 56022u, 44686u)), Struct_2(Struct_1(u_input.b, global0.a.b, global0.a.c)), u_input.d.x), global0.a.b.x), u_input.d.x).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1901f + global0.a.c.x) - -136f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1038f))), -1048f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1564f + var_2.a.c.x))))));
}

